/*
 * Midi.c
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

uint8_t midiCoupler_2from3; // set to zero in init_Manual2Module()
uint8_t midiCoupler_1from3;
uint8_t midiCoupler_1from2;
uint8_t midiCoupler_Pfrom3;
uint8_t midiCoupler_Pfrom2;
uint8_t midiCoupler_Pfrom1;
ManualMap_t manualMap[MANUAL_COUNT][RANGE_COUNT];
MidiInMap_t midiInMap[MIDI_CHANNEL_COUNT][MIDI_SPLIT_COUNT];
MidiOutMap_t midiOutMap[MANUAL_COUNT];
uint8_t midiRxActivceSensing = 0;
uint8_t midi_TxActivceSense; // 0 if no active sense, 0xFF if active sensing on output
uint8_t midiEEPromLoadError = EE_LOAD_OK;
uint8_t registerMap[REGISTER_COUNT]; // for each Register 0..63, contains modulBit
uint8_t registerCount; // nr of valid registers
uint8_t programMap[PROGRAM_COUNT] [REGISTER_COUNT / 8]; // for each register one bit

// ------------------------------------ M I D I   G E N E R A L --------------------------------------

void init_Midi(){
	midiCoupler_2from3 = 0;
	midiCoupler_1from3 = 0;
	midiCoupler_1from2 = 0;
	midiCoupler_Pfrom3 = 0;
	midiCoupler_Pfrom2 = 0;
	midiCoupler_Pfrom1 = 0;
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

void midiAllManualsOff(){
	// TODO if not only notes but stops are set by HW, don't turn off stops?
	pipeProcessing = PIPE_IO_DISABLE; // do not process pipe[] now
	init_Pipe(); // defines IO, resets pipe[], here pipeProcessing will be activated again
}

void midi_CheckRxActiveSense(){
	if (midiRxActivceSensing != 0){
		// only when activated
		if (TIMER_ELAPSED(TIMER_ACTIVESENSE)) {
			// watchdog for active sense is elapsed: shut down outputs!
			midiAllManualsOff();
			midiRxActivceSensing = 0; // turn off active Sense
		}
	}
}

void midi_CheckTxActiveSense(){
	if (midi_TxActivceSense) {
		if (!(TIMER_RUNNING(TIMER_TX_ACTIVESENSE))){
			// timer ended or not yet running
			TIMER_SET(TIMER_TX_ACTIVESENSE,TIMER_TX_ACTIVESENSE_MS)
			midi_SendActiveSense();
		}
	}
}

// **************************************** P R O C E S S   M I D I    I N *********************************************

void midiIn_Process(uint8_t midiByte){
	if (midiByte > 0x7f) {
		// command
		midiLastCommand = midiByte;
		midiDataByteCount = 0; // reset received data
		// define data bytes that are awaited (max. - less is possible)
		if ((midiByte >= MIDI_NOTEOFF) && (midiByte  <= (MIDI_CTRLCHG | 0x0F))) {
			midiDataByteExpected = 2;
		} else if ((midiByte >= MIDI_PITCHBEND) && (midiByte  <= (MIDI_PITCHBEND | 0x0F))) {
			midiDataByteExpected = 2;
		} else if (midiByte == MIDI_SONGPOS) {
			midiDataByteExpected = 2;
		} else if (midiByte == MIDI_SYSEX) {
			midiDataByteExpected = MIDI_IGNORE_DATA; // wait for next cmd
		} else if ((midiByte >= MIDI_PRGCHG) && (midiByte  <= (MIDI_CHANAFFT | 0x0F))) {
			midiDataByteExpected = 1;
		} else if ((midiByte == MIDI_TIMECODE) || (midiByte == MIDI_SONGSEL)){
			midiDataByteExpected = 1;
		} else {
			midiDataByteExpected = 0;
			if (midiByte == MIDI_ACTIVESENSING) {
				midiRxActivceSensing = 1; // start active sense
				TIMER_SET(TIMER_ACTIVESENSE,TIMER_ACTIVESENSE_MS) // and start timer. main must check if it has elapsed
			} else if (midiByte == MIDI_RESET){
				midiAllReset();
			}
			// TODO process these 1 byte commands here if interesting
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
						program_toRegister(midiDataByte[0]);
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

void init_Registers(){
	// init programs to null
	// init registerMap to null
	// try to get register map from eeprom
	if (eeprom_ReadReg() == EE_LOAD_ERROR){
		registerCount = 0;
		log_putError(LOG_CAT_EE,LOG_CATEE_REGISTER,0);
	}
	// try to get programs
	if (eeprom_ReadProg() == EE_LOAD_ERROR){
		// load error, reset programs
		for (uint8_t progNr = 0; progNr < PROGRAM_COUNT; progNr++){
			for (uint8_t regNr = 0; regNr < (REGISTER_COUNT / 8); regNr++) {
				programMap[progNr][regNr] = 0;
			}
		}
		log_putError(LOG_CAT_EE,LOG_CATEE_PROGRAM,0);
	}
}

uint8_t read_Register(uint8_t regNr, uint8_t mode){
	// mode: REGISTER_READ_HWIN, REGISTER_READ_SWOUT, REGISTER_READ_ALL
	// result: 0x01: REGISTER_ON, 0x00: REGISTER_OFF
	if (regNr < registerCount) {
		// valid register
		uint8_t modBit = registerMap[regNr];
		uint8_t bitNr = MODULE_BIT_TO_BIT(modBit);
		uint8_t modulNr = MODULE_BIT_TO_MODULE(modBit);
		uint8_t mask = 1 << modulNr;
		if (((pipe[bitNr].pipeOut & mask) == 0) && ((mode & REGISTER_READ_SWOUT) != 0))
			// read sw output and output is L (active)
			return REGISTER_ON;
		else if (((pipe[bitNr].pipeIn & mask) != 0) && ((mode & REGISTER_READ_HWIN) != 0)) {
			// read hw input and Input is H (active)
			// result ON if output is H (works with disconnected HW or input is H
			return REGISTER_ON;
		} else  {
			return REGISTER_OFF;
		}
	}
	return REGISTER_OFF; // default
}

void read_allRegister(uint8_t* resultPtr){
	// read all registers to memory (hw inp or sw out!)
	uint8_t mask;
	for (uint8_t regNr = 0; regNr < registerCount; regNr++){
		if ((regNr & 0x07) == 0) {
			mask = 0;
		}
		mask = ((mask << 1 )  | read_Register(regNr, REGISTER_READ_ALL));
		if (((regNr & 0x07) == 0x07) || (regNr == registerCount-1)){
			*resultPtr++ = mask;
		}

	}
}

void register_onOff(uint8_t regNr, uint8_t onOff){
	// onOff: LSB==1: on, LSB==0: off
	if (regNr < registerCount) {
		// valid register
		uint8_t modBit = registerMap[regNr];
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
	// TODO Error Logging invalid register
}

void program_toRegister(uint8_t program){
	if (program < PROGRAM_COUNT){
		uint8_t regBits;
		uint8_t regNr;
		uint8_t *regBytePtr = &(programMap[program][0]);
		for (uint8_t byteNr = 0; byteNr < (REGISTER_COUNT / 8); byteNr++){
			regBits = *(regBytePtr++);
			for (uint8_t bitNr = 0; bitNr < 8; bitNr++){
				regNr = (byteNr << 3) || bitNr;
				register_onOff(regNr, regBits);
				regBits = regBits >> 1;
			}
		}
	}
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
		midi_TxActivceSense = FALSE;
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
}

ChannelNote_t Manual_to_MidiNote(uint8_t manual, uint8_t note){
	ChannelNote_t result;
	if (manual < MANUAL_COUNT) {
		if (midiOutMap[manual].channel != MIDI_CHANNEL_NONE) {
			result.channel = midiOutMap[manual].channel;
			result.note = note; // currently no transpose, might be addede later
		}
	}
	return(result);
}

//------------------------------------- M A N U A L   T O   P I P E - I O ---------------------------------

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
	log_putWarning(LOG_CAT_MODULES,LOG_CATMODULES_UNKNOWNINP,moduleBit);
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

//********************************************* P R O C E S S   M I D I   O U T *******************************

void midiKeyPress_Process(PipeMessage_t pipeMessage){
	 uint8_t command = pipeMessage.message8[MSG_BYTE_CMD_SHIFTBIT] & MESSAGE_PIPE_CMD_MASK_H;
	 uint8_t shiftBit = pipeMessage.message8[MSG_BYTE_CMD_SHIFTBIT] & MESSAGE_PIPE_SHIFTBIT_MASK_H;
	 uint8_t moduleBits = pipeMessage.message8[MSG_BYTE_MODULEBITS];
	 ManualNote_t manualNote;
	 ChannelNote_t chanNote;
	 if ((command == MESSAGE_PIPE_ON_HI) || (command == MESSAGE_PIPE_OFF_HI)){
		// Note on or off
		for (uint8_t i = 0; i < 8; i++){
			// check all 8 bits for 8 modules
			if ((moduleBits & 0x01) != 0) {
				// LSB==1 -> Module has message
				manualNote = moduleBit_to_manualNote(MODULE_BIT(i,shiftBit));
				// manual and note for that module/bit
				if (manualNote.manual != MANUAL_NONE){
					// manual is assigned
					if (command == MESSAGE_PIPE_ON_HI) {
						// note on -> save this info for status display
						midiLastOutManual = manualNote.manual;
						midiLastOutNote = manualNote.note;
					}
					// check midi assigneemnt for this manual/note
					chanNote = Manual_to_MidiNote(manualNote.manual, manualNote.note);
					if (chanNote.channel != MIDI_CHANNEL_NONE){
						// note on/off can be sent
						serial1MIDISend((command == MESSAGE_PIPE_ON_HI ? MIDI_NOTEON : MIDI_NOTEOFF) | chanNote.channel);
						serial1MIDISend(chanNote.note);
						serial1MIDISend(MIDI_DEFAULT_VELOCITY);
					}
					// check couplers
					uint8_t noteOnOff = (command == MESSAGE_PIPE_ON_HI ? NOTE_ON : NOTE_OFF);
					if (manualNote.manual == MANUAL_III){
						if (midiCoupler_2from3 == TRUE){
							manual_NoteOnOff(MANUAL_II, manualNote.note, noteOnOff);
						}
						if (midiCoupler_1from3 == TRUE){
							manual_NoteOnOff(MANUAL_I, manualNote.note, noteOnOff);
						}
						if (midiCoupler_Pfrom3 == TRUE){
							manual_NoteOnOff(MANUAL_P, manualNote.note, noteOnOff);
						}
					} else 	if (manualNote.manual == MANUAL_II) {
						if (midiCoupler_1from2 == TRUE){
							manual_NoteOnOff(MANUAL_I, manualNote.note, noteOnOff);
						}
						if (midiCoupler_Pfrom2 == TRUE){
							manual_NoteOnOff(MANUAL_P, manualNote.note, noteOnOff);
						}
					} else 	if (manualNote.manual == MANUAL_I) {
						if (midiCoupler_Pfrom1 == TRUE){
							manual_NoteOnOff(MANUAL_P, manualNote.note, noteOnOff);
						}
					}
				} // if
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