/* Midi.c
 *
 * Created: 31.01.2019 13:32:04
 *  Author: Anwender
 */

#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>

#include "lcd_u.h"
#include "initio.h"
#include "message.h"
#include "hwtimer.h"
#include "utils.h"
#include "serial.h"
#include "test.h"
#include "Midi.h"
#include "ee_prom.h"
#include "log.h"




//-------------------------------------------------- V A R S ---------------------------------------


uint8_t midi_Couplers[COUPLER_COUNT];
const __flash CplInfo_t cplInfo[COUPLER_COUNT] = {
	{MANUAL_II, MANUAL_III},
	{MANUAL_I, MANUAL_III},
	{MANUAL_I, MANUAL_II},
	{MANUAL_P, MANUAL_III},
	{MANUAL_P, MANUAL_II},
	{MANUAL_P, MANUAL_I},
	{MANUAL_III, MANUAL_II},
	{MANUAL_III, MANUAL_I},
	{MANUAL_II, MANUAL_I},
	{MANUAL_III, MANUAL_P},
	{MANUAL_II, MANUAL_P},
	{MANUAL_I, MANUAL_P}
};

ManualMap_t manualMap[MANUAL_COUNT][RANGE_COUNT];
ManualNoteRange_t ManualNoteRange[MANUAL_COUNT];
MidiInMap_t midiInMap[MIDI_CHANNEL_COUNT][MIDI_SPLIT_COUNT];
MidiOutMap_t midiOutMap[MANUAL_COUNT];
uint8_t midiRxActivceSensing = 0;
MidiSetting_t midi_Setting; // active sense, sendVelocity=0 instead of NoteOff
uint8_t midiEEPromLoadError = EE_LOAD_OK;
RegisterMap_t registerMap[REGISTER_SEC_COUNT]; // for each Register section contains regStart, regEnd, modulBit
uint8_t registerCount; // nr of valid registers
ProgramInfo_t programMap[PROGRAM_COUNT]; // for each register one bit
MidiThrough_t midiThrough;
uint8_t midi_RegisterChanged;

// ------------------------------------ M I D I   G E N E R A L --------------------------------------

void init_Midi(){
	midi_CouplerReset();
}

void midi_CouplerReset(){
	// turn off all 12 couplers
	uint8_t* pCoupler = midi_Couplers;
	for (uint8_t i = 0; i < COUPLER_COUNT; i++){
		*pCoupler++ = 0;
	}
}

// ------------------------------------ C O U P L E R   S E T T I N  G ---------------------------------

uint8_t set_Coupler(uint8_t cplNr){
	// returns MANUAL (!) if corrsponding inverse coupler had to be turned off, or FALSE if no manual should be turned off
	if (cplNr < COUPLER_COUNT){
		midi_Couplers[cplNr] = COUPLER_ON;
		// calculate inverse Coupler
		if (cplNr >= COUPLER_COUNT/2){
			// 6...11 -> 0...5
			cplNr = cplNr - COUPLER_COUNT/2;
		} else {
			// 0...5 -> 6...11
			cplNr = cplNr + COUPLER_COUNT/2;
		}
		if (midi_Couplers[cplNr] != 0){
			// reset inverse coupler and notify caller
			midi_Couplers[cplNr] = COUPLER_OFF;
			return cplInfo[cplNr].dest; // note to caller that this destination manual should be turned off
		}
	}
	return FALSE;
}

Word_t getAllCouplers(){
	Word_t result;
	result.wordval = 0;
	uint8_t cplNr = COUPLER_COUNT-1;
	do
	{
		result.wordval = result.wordval << 1;
		if (midi_Couplers[cplNr] == COUPLER_ON) {
			result.byteval[0] |= 1; // LSB -> 1
		}
	} while (cplNr-- > 0);
	return result;
}

void setAllCouplers(Word_t couplers){
	uint8_t cplNr = 0;
	do
	{
		if ((couplers.byteval[0] & 0x01) != 0){
			midi_Couplers[cplNr] = COUPLER_ON;
		} else {
			midi_Couplers[cplNr] = COUPLER_OFF;
		}
		couplers.wordval = couplers.wordval >> 1;
	} while (++cplNr < COUPLER_COUNT);
}
//------------------------------------- M I D I    P R O C E S S I N G ---------------------------------

uint8_t midiLastCommand;
uint8_t midiDataByte[MIDI_MAX_INTERESTING_BYTES]; // max processed data bytes
uint8_t midiDataByteCount;
uint8_t midiDataByteExpected = MIDI_IGNORE_DATA; // Trigger processing after n received bytes - only proccesed commands!

uint8_t midiLastOutNote = MIDI_NOTE_NONE;
uint8_t midiLastOutManual = MANUAL_NONE;
uint8_t midiLastInNote = MIDI_NOTE_NONE; // written by midi.c read by main for debugging/display
uint8_t midiLastInChannel = MANUAL_NONE;
uint8_t midiLastInManual = MANUAL_NONE; // written by midi.c read by main for debugging/display
uint8_t midiLastProgram = MIDI_PROGRAM_NONE;


void manual_NoteOnOff(uint8_t manual, uint8_t note, uint8_t onOff);

void midiAllReset(){
	pipeProcessing = PIPE_IO_DISABLE; // do not process pipe[] now
	init_Pipe(); // defines IO, resets pipe[], here pipeProcessing will be activated again
}

void midiAllNotesOff(uint8_t channel){
	uint8_t splitRange = 0;
	while (splitRange < MIDI_SPLIT_COUNT){
		// for all split ranges
		if (midiInMap[channel][splitRange].manual < MANUAL_COUNT) {
			// splt range is set to a manual
			uint8_t note = midiInMap[channel][splitRange].manualNote; // start with this note
			// for all notes in split range
			for (uint8_t i = midiInMap[channel][splitRange].noteRange; i > 0; i--){
				manual_NoteOnOff(midiInMap[channel][splitRange].manual, note++, NOTE_OFF);
			}
		}
		splitRange++;
	}
}

void midi_ManualOff(uint8_t manual){
	// turn all notes off of this manual
	if ((manual < MANUAL_COUNT) && (ManualNoteRange[manual].startNote != MIDI_NOTE_NONE) && (ManualNoteRange[manual].endNote != MIDI_NOTE_NONE)){
		for (uint8_t note = ManualNoteRange[manual].startNote; note <= ManualNoteRange[manual].endNote; note++){
			manual_NoteOnOff(manual,note,NOTE_OFF);
		}
	}
}

void midi_AllManualsOff(){
	for (uint8_t manual = 0; manual < MANUAL_COUNT; manual++){
		midi_ManualOff(manual);
	}

// 	pipeProcessing = PIPE_IO_DISABLE; // do not process pipe[] now
// 	init_Pipe(); // defines IO, resets pipe[], here pipeProcessing will be activated again
}

void midi_CheckRxActiveSense(){
	if (midiRxActivceSensing != 0){
		// only when activated
		if (TIMER_ELAPSED(TIMER_ACTIVESENSE)) {
			// watchdog for active sense is elapsed: shut down outputs!
			midi_AllManualsOff();
			midiRxActivceSensing = 0; // turn off active Sense
		}
	}
}

void midi_CheckTxActiveSense(){
	if (midi_Setting.TxActivceSense) {
		if (!(TIMER_RUNNING(TIMER_TX_ACTIVESENSE))){
			// timer ended or not yet running
			TIMER_SET(TIMER_TX_ACTIVESENSE,TIMER_TX_ACTIVESENSE_MS)
			midi_SendActiveSense();
		}
	}
}

// **************************************** P R O C E S S   M I D I    I N *********************************************

void midiInSysEx(){
	// process Sysex after receiving ENDSYSEX
	if ((midiLastCommand == MIDI_SYSEX) && (midiDataByte[0] == MIDI_RX_SYSEX_HEADER0)){
		// SysEx Command for our device
		if (((midiDataByte[1] & 0xF0) == MIDI_MYSYSEX_REGISTER_ON) || ((midiDataByte[1] & 0xF0) == MIDI_MYSYSEX_REGISTER_OFF)){
			// ATTENTION: Midi Channel is ignored by & 0xF0
			// SysexCmd is register on off but first check follwoing data
			if ((midiDataByte[3] == MIDI_MYSYSEX_REGISTER_HEADER) && (midiDataByteCount == 4)) {
				// only if exactly 4 bytes and register MSB is our arbitrary trigger byte
				// ---> turn on/off register
				register_onOff(midiDataByte[3], ((midiDataByte[1] & 0xF0) == MIDI_MYSYSEX_REGISTER_ON) ? REGISTER_ON : REGISTER_OFF);
			}
		}
		// Append other SysEx commands here with "else if"
	}
}

void midiIn_Process(uint8_t midiByte){
	if (midiByte > 0x7f) {
		// command
		// define data bytes that are awaited (max. - less is possible)
		if ((midiByte <= MIDI_REALTIME_LAST) && (midiByte >= MIDI_REALTIME_FIRST)){
			 // this is a real time message F8-FF: don't interrupt current stream processing
			if (midiByte == MIDI_ACTIVESENSING) {
				midiRxActivceSensing = 1; // start active sense
				TIMER_SET(TIMER_ACTIVESENSE,TIMER_ACTIVESENSE_MS) // and start timer. main must check if it has elapsed
			} else if (midiByte == MIDI_RESET){
				midiAllReset();
			}
			// if not active sense or reset: ignore completely!
		} else {
			// only store if non real time message
			midiLastCommand = midiByte;
			midiDataByteCount = 0; // reset received data
			if ((midiByte >= MIDI_NOTEOFF) && (midiByte  <= (MIDI_CTRLCHG | 0x0F))) {
				// 80 - BF
				midiDataByteExpected = 2;
			} else if ((midiByte >= MIDI_PITCHBEND) && (midiByte  <= (MIDI_PITCHBEND | 0x0F))) {
				// E0 - EF
				midiDataByteExpected = 2;
			} else if (midiByte == MIDI_SONGPOS) {
				// F2
				midiDataByteExpected = 2;
			} else if (midiByte == MIDI_SYSEX) {
				// F0
				midiDataByteExpected = MIDI_IGNORE_DATA; // wait for next cmd, Data are stored but ignored in data processing
			} else if ((midiByte >= MIDI_PRGCHG) && (midiByte  <= (MIDI_CHANAFFT | 0x0F))) {
				// C0 - DF
				midiDataByteExpected = 1;
			} else if ((midiByte == MIDI_TIMECODE) || (midiByte == MIDI_SONGSEL)){
				// F1, F3
				midiDataByteExpected = 1;
			} else if (midiByte == MIDI_ENDSYSEX) {
				// F7 EndOfSysEx -> process Sysex HERE !
			} else {
				// F4, F5 undefined, F6 tune request,
				midiDataByteExpected = 0;
				// TODO process these 1 byte commands here if interesting
			}
		}
	} else {
		// data
		if (midiDataByteCount < MIDI_MAX_INTERESTING_BYTES)	{
			// store databyte if space in array
			midiDataByte[midiDataByteCount++] = midiByte;
		}
		if (midiDataByteExpected != MIDI_IGNORE_DATA) {
			// only if data shall be processed
			if (midiDataByteCount >= midiDataByteExpected) {
				// command complete ---> process Input
				if (midiLastCommand < MIDI_SYSEX) {
					// channel contained in command
					uint8_t channel = midiLastCommand & 0x0F;
					uint8_t noteOnOff;
					switch (midiLastCommand & 0xF0) {
					// remove channel from command
					case MIDI_NOTEOFF:
						noteOnOff = NOTE_OFF;
						midiNote_to_Manual(channel, midiDataByte[0], noteOnOff);
						break;
					case MIDI_NOTEON:
						if (midiDataByte[1] == 0) {
							// seldom, used midi spec: velocity = 0 -> note off
							noteOnOff = NOTE_OFF;
						} else {
							// regular: note on
							noteOnOff = NOTE_ON;
						}
						midiNote_to_Manual(channel, midiDataByte[0], noteOnOff);
						break;
					case MIDI_CTRLCHG:
						if (midiDataByte[0] == MIDI_CTRL_ALLNOTESOFF) {
							midiAllNotesOff(channel);
						}
						break;
					case MIDI_PRGCHG:
						midi_ProgramChange(channel,midiDataByte[0]);
						break;
					// TODO process commands with data bytes here
					}
					// no else beacuse from SYSEX there are not morebyte commands beeing processed
				}
				// command is processed
				midiDataByteCount = 0; // reset for further Data with same command
			}
		}
	}
}


//-------------------------------------- R E G I S T E R  ---------------------------------------------
// valid register are 0...63 !
// valid programs are 0...63

void registers_CalcCount(){
	uint8_t count = 0;
	for (uint8_t regSec = 0; regSec < REGISTER_SEC_COUNT; regSec++){
		if ((registerMap[regSec].endReg != REGISTER_NONE) && (registerMap[regSec].endReg >= count)){
			// endReg == 0xFF -> ignore, endReg == 0 -> count=1
			count = registerMap[regSec].endReg+1;
		}
	}
	registerCount = count;
}

void init_Registers(){
	// init programs to null
	// init registerMap to null
	midi_RegisterChanged = REGISTER_NONE;
	// try to get register map from eeprom
	for (uint8_t regSec = 0; regSec < REGISTER_SEC_COUNT; regSec++){
		registerMap[regSec].startReg = REGISTER_NONE; // CAUTION register == 0xFF -> no register
		registerMap[regSec].endReg = REGISTER_NONE;
		registerMap[regSec].bitStart = 0;
	}
	if (eeprom_ReadReg() == EE_LOAD_ERROR){
		registerCount = 0;
		log_putError(LOG_CAT_EE,LOG_CATEE_REGISTER,0);
	} else {
		registers_CalcCount(); // registers are loaded from init or eeprom, now get count
	}
	// try to get programs
	if (eeprom_ReadProg() == EE_LOAD_ERROR){
		// load error, reset programs
		for (uint8_t progNr = 0; progNr < PROGRAM_COUNT; progNr++){
			for (uint8_t regNr = 0; regNr < (REGISTER_COUNT / 8); regNr++) {
				programMap[progNr].registers[regNr] = 0;
			}
			programMap[progNr].couplers = 0;
		}
		log_putError(LOG_CAT_EE,LOG_CATEE_PROGRAM,0);
	}
}

ModulBitError_t regNr_to_moduleBit(uint8_t regNr){
	// returns module+bit_nr in lowByte or 0xFF in HiByte if Note ist not implemented
	ModulBitError_t result;
	if ((regNr < registerCount) && (regNr < REGISTER_COUNT)) {
		// valid regNr
		RegisterMap_t *pRange;
		pRange = &(registerMap[0]); // check all Ranges
		uint8_t i = REGISTER_SEC_COUNT;
		do {
			if ((regNr >= pRange->startReg) && (regNr <= pRange->endReg)) {
				// found in this range
				result.error = MODULE_NOERROR;
				result.moduleBit = pRange->bitStart + (regNr - pRange->startReg);
				return (result);
			}
			pRange++;
		} while (--i > 0);
	}
	// when we are here: none off the defined ranges contained register
	result.error = MODULE_ERROR;
	return (result);
}

uint8_t moduleBit_to_registerNr(uint8_t modulebit){
	RegisterMap_t * pSection = & (registerMap[0]);
	for (uint8_t section = 0; section < REGISTER_SEC_COUNT; section++){
		if ((modulebit >= pSection->bitStart) && (modulebit <= pSection->bitStart + pSection->endReg - pSection->startReg)) {
			// found
			return pSection->startReg + (modulebit - pSection->bitStart);
		}
	}
	return REGISTER_NONE;
}

uint8_t read_Register(uint8_t regNr, uint8_t mode){
	// mode: REGISTER_READ_HWIN, REGISTER_READ_SWOUT, REGISTER_READ_ALL
	// result: 0x01: REGISTER_ON, 0x00: REGISTER_OFF
	if (regNr < registerCount) {
		// valid register
		ModulBitError_t modBitComplette = regNr_to_moduleBit(regNr);
		if (modBitComplette.error == MODULE_NOERROR) {
			// register is assgined to module
			uint8_t modBit = modBitComplette.moduleBit;
			uint8_t bitNr = MODULE_BIT_TO_BIT(modBit);
			uint8_t modulNr = MODULE_BIT_TO_MODULE(modBit);
			uint8_t mask = 1 << modulNr;
			if (((pipe[bitNr].pipeOut & mask) == 0) && ((mode & REGISTER_READ_SWOUT) != 0)) {
				// read sw output and output is L (active)
				return REGISTER_ON;
			} else if (((pipe[bitNr].pipeIn & mask) != 0) && ((mode & REGISTER_READ_HWIN) != 0)) {
				// read hw input and Input is H (active)
				// result ON if output is H (works with disconnected HW or input is H
				return REGISTER_ON;
			} else if (((pipe[bitNr].pipeOut & mask) != 0) && ((pipe[bitNr].pipeIn & mask) != 0) && (mode == REGISTER_READ_HWIN_XOR_SWOUT)){
				return REGISTER_ON;
				// sw out off and hw input on -> additional register manually active
			} else  {
				return REGISTER_OFF;
			}
		}
	}
	return REGISTER_OFF; // default for unassigned/invalid register
}

uint8_t get_RegisterStatus(uint8_t regNr){
	// result: REGISTER_READ_HWIN 0x01, REGISTER_READ_SWOUT 0x02; 0x00: REGISTER_OFF
	if (regNr < registerCount) {
		// valid register
		ModulBitError_t modBitComplette = regNr_to_moduleBit(regNr);
		if (modBitComplette.error == MODULE_NOERROR) {
			// register is assgined to module
			uint8_t modBit = modBitComplette.moduleBit;
			uint8_t bitNr = MODULE_BIT_TO_BIT(modBit);
			uint8_t modulNr = MODULE_BIT_TO_MODULE(modBit);
			uint8_t mask = 1 << modulNr;
			if ((pipe[bitNr].pipeOut & mask) == 0) {
				// read sw output is L (active)
				return REGISTER_READ_SWOUT;
			} else if ((pipe[bitNr].pipeIn & mask) != 0) {
				// read hw input and Input is H (active)
				// result ON if output is H (works with disconnected HW or input is H
				return REGISTER_READ_HWIN;
			} else {
				return REGISTER_OFF;
			}
		}
	}
	return REGISTER_OFF; // default for unassigned/invalid register
}


uint8_t count_Registers(uint8_t mode){
	uint8_t result = 0;
	for (uint8_t regNr = 0; regNr < REGISTER_COUNT; regNr++){
		if (read_Register(regNr, mode) != REGISTER_OFF ){
			result++;
		}
	}
	return result;
}

uint8_t read_allRegister(uint8_t* resultPtr){
	uint8_t result = 0;
	// read all registers to memory (no matter if hw inp or sw out)
	uint8_t mask = 0;
	for (uint8_t regNr = 0; regNr < REGISTER_COUNT; regNr++){
		// always read all registers, even if unassigned
		// begin with first register, bit 0
		if ((regNr & 0x07) == 0) {
			// reset mask every 8 bits, bit 0, 8, 16, 24
			mask = 0;
		}
		mask = (mask >> 1 );
		if (read_Register(regNr, REGISTER_READ_ALL) != REGISTER_OFF ){
			mask |= 0x80;
			result++;
		}
		if ((regNr & 0x07) == 0x07) {
			// bit 7, 15, 23, 31
			if (resultPtr != NULL) {
				*resultPtr++ = mask;
			}
		}
	}
	return result;
}


void register_onOff(uint8_t regNr, uint8_t onOff){
	// onOff: LSB==1: on, LSB==0: off
	if (regNr < registerCount) {
		// valid register
		ModulBitError_t modBitComplette = regNr_to_moduleBit(regNr);
		if (modBitComplette.error == MODULE_NOERROR) {
			// register is assigned to module
			uint8_t modBit = modBitComplette.moduleBit;
			uint8_t bitNr = MODULE_BIT_TO_BIT(modBit);
			uint8_t modulNr = MODULE_BIT_TO_MODULE(modBit);
			if ((onOff & 0x01) != 0){
				// set register -> output L
				pipe[bitNr].pipeOut &= ~(1 << modulNr);
			} else {
				// reset register -> output H
				pipe[bitNr].pipeOut |= (1 << modulNr);
			}
		}
	}
	// TODO Error Logging invalid register
}

uint8_t program_toRegister(uint8_t program){
	// Program 0..63
	uint8_t result = 0; // return nr of registers that are turned on by program
	if (program < PROGRAM_COUNT){
		uint8_t regBits;
		uint8_t regNr = 0;
		uint8_t *regBytePtr = &(programMap[program].registers[0]);
		for (uint8_t byteNr = 0; byteNr < (REGISTER_COUNT / 8); byteNr++){
			// 8 bytes for 64 registers
			// TODO process only implemented registers instead of all possible registers here
			regBits = *(regBytePtr++); // get adress for next 8 registers
			for (uint8_t bitNr = 0; bitNr < 8; bitNr++){
				if ((regBits & 0x01) != 0) {
					result++;
				}
				register_onOff(regNr, ((regBits & 0x01) == 0 ? REGISTER_OFF : REGISTER_ON)); // turn this register on/off according to lsb
				// not implemented registers are ignored by register_onOff
				regBits = regBits >> 1;
				regNr++;
			}
		}
		Word_t couplers;
		couplers.wordval = programMap[program].couplers;
		setAllCouplers(couplers);
	}
	return result;
}

void midi_ProgramChange(uint8_t channel, uint8_t program){
	if (midi_Setting.AcceptProgChange != FALSE){
		// V 0.59 program change may be ignored
		uint8_t channelValid = FALSE;
		// V 0.58 check MIDI Channel. Accept PC only when channel is in in midiInMap[] !
		for (uint8_t splitCount = 0; splitCount < MIDI_SPLIT_COUNT; splitCount++){
			if (midiInMap[channel][splitCount].manual != MANUAL_NONE){
				// in this section of midi channel a manual is assigned
				channelValid = TRUE;
				break;
			}
		}
		if (channelValid == TRUE) {
			// only if input channel is assigned to any manual
			program_toRegister(program);
			midiLastProgram = program;
		}
	}
	// V 0.58 SW MIDI Through
	if (channel == midiThrough.InChannel){
		// if IN Channel is matched (through OFF -> midiThrough.InChannel = 0xFF)
		if (midiThrough.OutChannel != MIDI_CHANNEL_NONE) {
			// only if out channel is valid: do as in midiKeyPress_Process
			serial1MIDISend(MIDI_PRGCHG | midiThrough.OutChannel);
			// if note off: use note on an velocity = 0 to turn off note (less bytes !)
			serial1MIDISend(program);
		}
	}
}


void midi_resetRegisters(){
	for (uint8_t i = 0; i < registerCount; i++){
		register_onOff(i,REGISTER_OFF);
	}
}

uint8_t register_toProgram(uint8_t program, uint8_t SaveEEProm){
	// Program 0..63
	// saves current registers to program
	uint8_t result = 0;
	if (program < PROGRAM_COUNT){
		uint8_t *regBytePtr = &(programMap[program].registers[0]);
		result = read_allRegister(regBytePtr);
	}
	programMap[program].couplers = getAllCouplers().wordval;
	if (SaveEEProm) {
		eeprom_UpdateProg();
	}
	return result;
}

uint8_t midi_RegisterMatchProgram(uint8_t program){
	// if program registers completely match current output returns number of additionally (manually) activated registers 0..64
	// if program register dont' match: returns 0xFF
	uint8_t result = 0;
	uint8_t* progPtr = &(programMap[program].registers[0]);
	uint8_t tempReg = 0; // just to get rid off warnung unit. var
	uint8_t actualReg;
	for (uint8_t i = 0; i < registerCount; i++){
		if ((i & 0x07) == 0) {
			// first bit in byte
			tempReg = * progPtr++;
		}
		actualReg = get_RegisterStatus(i);
		if ((tempReg & 0x01) != 0) {
			// this register should be set
			if (actualReg != REGISTER_READ_SWOUT) {
				// output is not set by SW: return 0xFF
				return REG_DONT_MATCH_PROG;
			}
			// else: OK, register is set
		} else {
			// this register should not be set
			if (actualReg == REGISTER_READ_SWOUT) {
				// is set: return 0xFF
				return REG_DONT_MATCH_PROG;
			} else if (actualReg == REGISTER_READ_HWIN) {
				// is set by HW
				result++; // inc return val
			}
		}
		tempReg = tempReg >> 1;
	}
	return result;
}

//------------------------------------- M I D I C H A N N E L   T O   M A N U A L ---------------------------------

void init_Midi2Manual(){
	MidiInMap_t *pMidiInMap;
	pMidiInMap = &(midiInMap[0][0]);
	// reset all
	for (uint8_t i = MIDI_CHANNEL_COUNT * MIDI_SPLIT_COUNT; i > 0; i--){
		// each channel not assigned to any manual
		pMidiInMap->manual = MANUAL_NONE;
		pMidiInMap->midiNote = MIDI_NOTE_NONE;
		pMidiInMap->manualNote = MIDI_NOTE_NONE;
		pMidiInMap->noteRange = 0;
		pMidiInMap++;
	}
	// default entries one split range to each manual Ch1->III, Ch2->II, Ch3->I, Ch4->P
	if (eeprom_ReadMidiInMap() == EE_LOAD_ERROR){
		midiEEPromLoadError = EE_LOAD_ERROR;
		midiInMap[MIDI_CHANNEL_1][0].manual = MANUAL_III;
		midiInMap[MIDI_CHANNEL_1][0].midiNote = MIDI_NOTE_C2;
		midiInMap[MIDI_CHANNEL_1][0].manualNote = MIDI_NOTE_C2;
		midiInMap[MIDI_CHANNEL_1][0].noteRange = MIDI_NOTE_G6 - MIDI_NOTE_C2 + 1;
		midiInMap[MIDI_CHANNEL_2][0].manual = MANUAL_II;
		midiInMap[MIDI_CHANNEL_2][0].midiNote = MIDI_NOTE_C2;
		midiInMap[MIDI_CHANNEL_2][0].manualNote = MIDI_NOTE_C2;
		midiInMap[MIDI_CHANNEL_2][0].noteRange = MIDI_NOTE_G6 - MIDI_NOTE_C2 + 1;
		midiInMap[MIDI_CHANNEL_3][0].manual = MANUAL_I;
		midiInMap[MIDI_CHANNEL_3][0].midiNote = MIDI_NOTE_C2;
		midiInMap[MIDI_CHANNEL_3][0].manualNote = MIDI_NOTE_C2;
		midiInMap[MIDI_CHANNEL_3][0].noteRange = MIDI_NOTE_G6 - MIDI_NOTE_C2 + 1;
		midiInMap[MIDI_CHANNEL_4][0].manual = MANUAL_P;
		midiInMap[MIDI_CHANNEL_4][0].midiNote = MIDI_NOTE_C2;
		midiInMap[MIDI_CHANNEL_4][0].manualNote = MIDI_NOTE_C2;
		midiInMap[MIDI_CHANNEL_4][0].noteRange = MIDI_NOTE_F4 - MIDI_NOTE_C2 + 1;
		log_putError(LOG_CAT_EE,LOG_CATEE_MIDI2MAN,0);
	}
	if (eeprom_ReadMidiThrough() == EE_LOAD_ERROR){
		midiThrough.InChannel = MIDI_CHANNEL_NONE;
		midiThrough.OutChannel = MIDI_CHANNEL_NONE;
		log_putError(LOG_CAT_EE,LOG_CATEE_MIDI2MAN,0);
	}
}

void init_Manual2Midi(){
	// reset all
	for (uint8_t i = 0; i << MANUAL_COUNT; i++){
		midiOutMap[i].channel = MIDI_CHANNEL_NONE;
	}
	if (eeprom_ReadMidiOutMap() == EE_LOAD_ERROR){
		midiEEPromLoadError = EE_LOAD_ERROR;
		// default entries
		midiOutMap[MANUAL_III].channel = MIDI_CHANNEL_1;
		midiOutMap[MANUAL_II].channel = MIDI_CHANNEL_2;
		midiOutMap[MANUAL_I].channel = MIDI_CHANNEL_3;
		midiOutMap[MANUAL_P].channel = MIDI_CHANNEL_4;
		midi_Setting.TxActivceSense = FALSE;
		midi_Setting.VelZero4Off = FALSE;
		midi_Setting.AcceptProgChange = TRUE;
		log_putError(LOG_CAT_EE,LOG_CATEE_MAN2MIDI,0);
	}
}

void midiNote_to_Manual(uint8_t channel, uint8_t note, uint8_t onOff){
	channel = channel & MIDI_CHANNEL_MASK; //  0..15 only
	uint8_t found = 0;
	for (uint8_t i = 0; i < MIDI_SPLIT_COUNT; i++){
		if (midiInMap[channel][i].manual < MANUAL_COUNT){
			// valid entry
			int8_t noteBase0 = note - midiInMap[channel][i].midiNote; // minus if invalid
			if ((noteBase0 >= 0) && (noteBase0 < midiInMap[channel][i].noteRange)) {
				// only if not is in range
				uint8_t manual = midiInMap[channel][i].manual;
				uint8_t manNote = noteBase0 + midiInMap[channel][i].manualNote;
				if (onOff == NOTE_ON) {
					midiLastInManual = manual; // for debugging/display status
					midiLastInNote = manNote; // for debugging/display status
				}
				manual_NoteOnOff(manual, manNote, onOff);
				found |= 0xFF;
			}
		}
	}
	if ((onOff == NOTE_ON) && (found == 0)){
		// not found, show Channel instead of manual
		midiLastInNote = note;
		midiLastInChannel = channel;
		midiLastInManual = MANUAL_NONE;
	}
	// V 0.58 When SW Midi Through: send Note
	if (channel == midiThrough.InChannel){
		// if IN Channel is matched (through OFF -> midiThrough.InChannel = 0xFF)
		if (midiThrough.OutChannel != MIDI_CHANNEL_NONE) {
			// only if out channel is valid: do as in midiKeyPress_Process
			serial1MIDISend(((onOff == NOTE_ON) || (midi_Setting.VelZero4Off) ? MIDI_NOTEON : MIDI_NOTEOFF) | midiThrough.OutChannel);
			// if note off: use note on an velocity = 0 to turn off note (less bytes !)
			serial1MIDISend(note);
			// if note off: use note on an velocity = 0 to turn off note (less bytes !):
			serial1MIDISend(((onOff == NOTE_OFF) && (midi_Setting.VelZero4Off)) ? 0 : MIDI_DEFAULT_VELOCITY);
		}
	}
}

ChannelNote_t Manual_to_MidiNote(uint8_t manual, uint8_t note){
	ChannelNote_t result = {MIDI_CHANNEL_NONE,MIDI_NOTE_NONE};
	if (manual < MANUAL_COUNT) {
		if (midiOutMap[manual].channel != MIDI_CHANNEL_NONE) {
			result.channel = midiOutMap[manual].channel;
			result.note = note; // currently no transpose, might be added later
		}
	}
	return(result);
}

//------------------------------------- M A N U A L   T O   P I P E - I O ---------------------------------

void Midi_updateManualRange(){
	for (uint8_t i = 0; i < MANUAL_COUNT; i++){
		uint8_t rangeEnd = 0;
		uint8_t rangeStart = 0xFF;
		for (uint8_t range = 0; range < RANGE_COUNT; range++){
			if ((manualMap[i][range].startNote != MIDI_NOTE_NONE) && (manualMap[i][range].endNote != MIDI_NOTE_NONE)){
				if (manualMap[i][range].startNote < rangeStart) {
					rangeStart = manualMap[i][range].startNote;
				}
				if (manualMap[i][range].endNote > rangeEnd) {
					rangeEnd = manualMap[i][range].endNote;
				}
			}
			if ((rangeEnd == 0) || (rangeStart == 0xFF)){
				ManualNoteRange[i].startNote = MIDI_NOTE_NONE;
				ManualNoteRange[i].endNote = MIDI_NOTE_NONE;
			} else {
				ManualNoteRange[i].startNote = rangeStart;
				ManualNoteRange[i].endNote = rangeEnd;
			}
		}
	}
}

void init_Manual2Module(){
	for (int8_t i = MANUAL_COUNT-1; i >= 0; i--){
		// make all entries invalid
		for (int8_t j = RANGE_COUNT-1; j >= 0; j--){
			manualMap[i][j].startNote = MIDI_NOTE_NONE;
			manualMap[i][j].endNote = MIDI_NOTE_NONE;
			manualMap[i][j].bitStart = 0;
		}
	}
	// default entries
	if (eeprom_ReadManualMap() == EE_LOAD_ERROR){
		// no default values for manual map!
		midiEEPromLoadError = EE_LOAD_ERROR;
		log_putError(LOG_CAT_EE,LOG_CATEE_MAN2MOD,0);
	}
	Midi_updateManualRange();
	// turn off couplers
}

ModulBitError_t manualNote_to_moduleBit(uint8_t manual, uint8_t note){
	// returns module+bit_nr in lowByte or 0xFF in HiByte if Note ist not implemented
	ModulBitError_t result;
	if (manual < MANUAL_COUNT) {
		// valid manual
		ManualMap_t *pRange;
		pRange = &(manualMap[manual][0]); // check all Ranges for this manual
		uint8_t i = RANGE_COUNT;
		do {
			if ((note >= pRange->startNote) && (note <= pRange->endNote)) {
				// found in this range
				result.error = MODULE_NOERROR;
				result.moduleBit = pRange->bitStart + (note - pRange->startNote);
				return (result);
			}
			pRange++;
		} while (--i > 0);
	}
	// when we are here: none ofd the defined ranges for this manual contained note
	result.error = MODULE_ERROR;
	return (result);
}

ManualNote_t moduleBit_to_manualNote(uint8_t moduleBit){
	// searches map of all manuals and their ranges for this module/bit combination
	// returns manual in hiByte and note in LowByte
	// if no note is found for that Bit, return is MODULE_BIT_NONEXISTENT
	ManualNote_t result;
	ManualMap_t *pRange;
	pRange = &(manualMap[MANUAL_0][RANGE_0]); // check all Ranges for all manuals
	uint8_t manual = 0;
	do {
		for (uint8_t i = RANGE_COUNT; i > 0; i--){
			if ((moduleBit >= pRange->bitStart) && (moduleBit <= pRange->bitStart + (pRange->endNote - pRange->startNote))) {
				// found
				result.manual = manual;
				result.note = pRange->startNote + (moduleBit - pRange->bitStart); // assuming no bit 5-7 in moduleBit and bitStart are the same
				return(result);
			}
			pRange++;
		}
		manual++;
	} while (manual <= MANUAL_COUNT);
	result.manual = MANUAL_NONE;
	// V 0.59 removed warning, moduleBiut may be register!
	// log_putWarning(LOG_CAT_MODULES,LOG_CATMODULES_UNKNOWNINP,moduleBit);
	return (result); // actually this should not hapen if manaulRange is setup up correctly according to HW
}

void manual_NoteOnOff(uint8_t manual, uint8_t note, uint8_t onOff){
	ModulBitError_t moduleInfo;
	moduleInfo = manualNote_to_moduleBit(manual, note);
	// returns mmmb bbbb in LowByte
	if (moduleInfo.error == MODULE_NOERROR) {
		uint8_t bitNr = MODULE_BIT_TO_BIT(moduleInfo.moduleBit);
		uint8_t modulNr = MODULE_BIT_TO_MODULE(moduleInfo.moduleBit);
		if (onOff == NOTE_OFF) {
			// note off -> write 1 to pipe
			pipe[bitNr].pipeOut |= (1 << modulNr);
		} else {
			// note on -> write 10 to pipe
			pipe[bitNr].pipeOut &= ~(1 << modulNr);
		}
	}
}

//********************************************* P R O C E S S   P I P E   M E S S A G E ->MIDI, COUPLER *******************************

void midiKeyPress_Process(PipeMessage_t pipeMessage){
	 uint8_t command = pipeMessage.message8[MSG_BYTE_CMD_SHIFTBIT] & MESSAGE_PIPE_CMD_MASK_H; // upper 3 bit
	 uint8_t shiftBit = pipeMessage.message8[MSG_BYTE_CMD_SHIFTBIT] & MESSAGE_PIPE_SHIFTBIT_MASK_H; // lower 5 bits = BitNr of each module 0..31
	 uint8_t moduleBits = pipeMessage.message8[MSG_BYTE_MODULEBITS]; // one bit for each module, so one message can countain up to 8 messages for 8 modules
	 ManualNote_t manualNote;
	 ChannelNote_t chanNote;
	 if ((command == MESSAGE_PIPE_ON_HI) || (command == MESSAGE_PIPE_OFF_HI)){
		// Note on or off
		for (uint8_t i = 0; i < 8; i++){
			// check all 8 bits for 8 modules, so i is number of current Module
			if ((moduleBits & 0x01) != 0) {
				// LSB==1 -> Module "i" has message
				manualNote = moduleBit_to_manualNote(MODULE_BIT(i,shiftBit)); // modBit = mmmb bbbb, m = moduleNr, b = bitNr
				// manual and note for that module/bit
				if (manualNote.manual != MANUAL_NONE){
					// manual is assigned
					// check midi assigneemnt for this manual/note
					chanNote = Manual_to_MidiNote(manualNote.manual, manualNote.note);
					if (chanNote.channel != MIDI_CHANNEL_NONE){
						// note on/off can be sent
						serial1MIDISend(((command == MESSAGE_PIPE_ON_HI) || (midi_Setting.VelZero4Off) ? MIDI_NOTEON : MIDI_NOTEOFF) | chanNote.channel);
						// of note off: use note on an velocity = 0 to turn off note (less bytes !)
						serial1MIDISend(chanNote.note);
						// of note off: use note on an velocity = 0 to turn off note (less bytes !):
						serial1MIDISend(((command == MESSAGE_PIPE_OFF_HI) && (midi_Setting.VelZero4Off)) ? 0 : MIDI_DEFAULT_VELOCITY);
						// V0.56 Show MidiOut on Display only if Channel assigned
						if (command == MESSAGE_PIPE_ON_HI) {
							// note on -> save this info for status display
							midiLastOutManual = manualNote.manual;
							midiLastOutNote = manualNote.note;
						}
					}
					// check couplers
					uint8_t noteOnOff = (command == MESSAGE_PIPE_ON_HI ? NOTE_ON : NOTE_OFF);
					// TODO check if Pipe was activated my different event (MIDI, other coupler)
					if (manualNote.manual == MANUAL_III){
						if (midi_Couplers[COUPLER_2FROM3] == TRUE){
							manual_NoteOnOff(MANUAL_II, manualNote.note, noteOnOff);
						}
						if (midi_Couplers[COUPLER_1FROM3] == TRUE){
							manual_NoteOnOff(MANUAL_I, manualNote.note, noteOnOff);
						}
						if (midi_Couplers[COUPLER_PFROM3] == TRUE){
							manual_NoteOnOff(MANUAL_P, manualNote.note, noteOnOff);
						}
					} else 	if (manualNote.manual == MANUAL_II) {
						if (midi_Couplers[COUPLER_1FROM2] == TRUE){
							manual_NoteOnOff(MANUAL_I, manualNote.note, noteOnOff);
						}
						if (midi_Couplers[COUPLER_PFROM2] == TRUE){
							manual_NoteOnOff(MANUAL_P, manualNote.note, noteOnOff);
						}
						if (midi_Couplers[COUPLER_3FROM2] == TRUE){
							manual_NoteOnOff(MANUAL_III, manualNote.note, noteOnOff);
						}
					} else 	if (manualNote.manual == MANUAL_I) {
						if (midi_Couplers[COUPLER_PFROM1] == TRUE){
							manual_NoteOnOff(MANUAL_P, manualNote.note, noteOnOff);
						}
						if (midi_Couplers[COUPLER_3FROM1] == TRUE){
							manual_NoteOnOff(MANUAL_III, manualNote.note, noteOnOff);
						}
						if (midi_Couplers[COUPLER_2FROM1] == TRUE){
							manual_NoteOnOff(MANUAL_II, manualNote.note, noteOnOff);
						}
					} else if (manualNote.manual == MANUAL_P) {
						if (midi_Couplers[COUPLER_3FROMP] == TRUE){
							manual_NoteOnOff(MANUAL_III, manualNote.note, noteOnOff);
						}
						if (midi_Couplers[COUPLER_2FROMP] == TRUE){
							manual_NoteOnOff(MANUAL_II, manualNote.note, noteOnOff);
						}
						if (midi_Couplers[COUPLER_1FROMP] == TRUE){
							manual_NoteOnOff(MANUAL_I, manualNote.note, noteOnOff);
						}
					}
				} // if
				//Register change
				midi_RegisterChanged = moduleBit_to_registerNr(MODULE_BIT(i,shiftBit)) | (command == MESSAGE_PIPE_ON_HI ? REGISTER_WAS_SET : 0); // processed and reset in main
				// TODO process other key events here
			}
			moduleBits >>= 1; // next module
		} // for
	 }
}

//******************************************* S E N D   A L L N O T E S O F F ************************************

void midiSendAllNotesOff(){
	for (uint8_t i = 0; i < MANUAL_COUNT; i++){
		uint8_t chan = midiOutMap[i].channel;
		if (chan <= MIDI_CHANNEL_16) {
			serial1MIDISend(MIDI_CTRLCHG | chan);
			serial1MIDISend(MIDI_CTRL_ALLNOTESOFF);
			serial1MIDISend(0);
		}
	}
}

void midi_SendActiveSense(){
	serial1MIDISend(MIDI_ACTIVESENSING);
}