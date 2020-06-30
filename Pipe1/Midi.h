/*
 * Midi.h
 *
 * Created: 31.01.2019 13:32:18
 *  Author: Anwender
 */


#ifndef MIDI_H_
#define MIDI_H_

#include "message.h"

// --------------- Conversion Manual to PipeIO -------------------
// internal
#define MODULE_BIT(m,b) ((m << 5) | (b))
#define MODULE_BIT_NONEXISTENT 0xFF00
#define MODULE_BIT_TO_MODULE(mb) (mb >> 5)
#define MODULE_BIT_TO_BIT(mb) (mb & 0x1f)

// external
#define MANUAL_0 0
#define MANUAL_COUNT 4 // incl. Pedal
#define MANUAL_III 0
#define MANUAL_II 1
#define MANUAL_I 2
#define MANUAL_P 3
#define MANUAL_R 4 // only for menu setup module assign
#define MANUAL_NONE 0xFF

#define MIDI_NOTE_C2 36
#define MIDI_NOTE_G6 91
#define MIDI_NOTE_G4 67
#define MIDI_NOTE_GIS4 68
#define MIDI_NOTE_F4 65

#define MIDI_NOTE_NONE 0xFF
#define MIDI_NOTE_MAX 0x7F
#define RANGE_0 0
#define RANGE_COUNT 4 // Manual may be plsitted in ranges on io-boards
#define RANGE_NONE 0xFF // if in startNote: entry invalid

#define REGISTER_SEC_COUNT 8
#define REGISTER_COUNT 64
#define PROGRAM_COUNT 64

typedef struct {
	uint8_t hw_channel;
	uint8_t note;
} ChannelNote_t;

typedef struct {
	uint8_t manual;
	uint8_t note;
} ManualNote_t;

typedef struct {
	uint8_t moduleNr;
	uint8_t bitNr;
} ModuleBit_t;

#define MODULE_ERROR 0xFF
#define MODULE_NOERROR 0x00

typedef struct {
	uint8_t error;
	uint8_t moduleBit;
} ModulBitError_t;

typedef  struct{
	uint8_t startNote;
	uint8_t endNote;
	uint8_t bitStart;
} ManualMap_t;
extern ManualMap_t manualMap[MANUAL_COUNT][RANGE_COUNT];

typedef struct{
	uint8_t startNote;
	uint8_t endNote;
} ManualNoteRange_t;
extern ManualNoteRange_t ManualNoteRange[MANUAL_COUNT];

extern void midi_ProgramChange(uint8_t channel, uint8_t program);

// --------------- Conversion MIDI Channel to Manual ------------
#define MIDI_CHANNEL_COUNT 16
#define MIDI_CHANNEL_MASK 0x0F
#define MIDI_CHANNEL_1 0 // intern and midi-io number for first channel
#define MIDI_CHANNEL_2 1
#define MIDI_CHANNEL_3 2
#define MIDI_CHANNEL_4 3
#define MIDI_CHANNEL_5 4
#define MIDI_CHANNEL_6 5
#define MIDI_CHANNEL_7 6
#define MIDI_CHANNEL_8 7
#define MIDI_CHANNEL_9 8
#define MIDI_CHANNEL_10 9
#define MIDI_CHANNEL_11 10
#define MIDI_CHANNEL_12 11
#define MIDI_CHANNEL_13 12
#define MIDI_CHANNEL_14 13
#define MIDI_CHANNEL_15 14
#define MIDI_CHANNEL_16 15
#define MIDI_CHANNEL_MAX 15

#define MIDI_CHANNEL_NONE 0xFF

#define MIDI_PROGRAM_NONE 0xFF // for Status display

#define MIDI_DEFAULT_VELOCITY 64

#define MIDI_SPLIT_COUNT 4

#define NOTE_ON 0x01
#define NOTE_OFF 0x00
// V 0.69: set MSB if note shall not be redirected to midi output if module is not writeable
#define NOTE_NOREDIRECT 0x80

//--------------------- MIDIN IN OUT ASSIGN ------------------------
typedef  struct{
	uint8_t manual;
	uint8_t midiNote;
	uint8_t noteRange;
	uint8_t manualNote;
} MidiInMap_t;
// per channel one entry for each split range for Conversion of Note MIDI_IN -> Manual Note
extern MidiInMap_t midiInMap[MIDI_CHANNEL_COUNT][MIDI_SPLIT_COUNT];

typedef struct{
	uint8_t InChannel; // In Channel for SW MIDI Through 0...0x0F -> 1..16, 0xFF = off
	uint8_t OutChannel; // Out channel for SW MIDI Through
} MidiThrough_t;

extern MidiThrough_t midiThrough;


typedef struct{
	uint8_t hw_channel; // midi out channel for hardware key/pipe changes. If Output is present in HW, software key ebents are triggered here too
	uint8_t sw_channel; // midi out channel for software key events sent to hardware (even if no hw out implemented in module). Called "(int)" in Menu
	// sw_channel is to be used if no hardware for output is present in module/manual so that couplers etc must be sent to midi channel too
	} MidiOutMap_t;
extern MidiOutMap_t midiOutMap[MANUAL_COUNT];


// -------------- REGISTER --------------------
#define REGISTER_NONE 0xFF
typedef  struct{
	uint8_t startReg; // valid reg.nr: 1..64 ATTENTION! 0=invalid reg!
	uint8_t endReg;
	uint8_t bitStart; //  contains modulBit
} RegisterMap_t;
extern RegisterMap_t registerMap[REGISTER_SEC_COUNT]; // for each Register Section

extern uint8_t registerCount; // nr of valid registers
typedef struct{
	uint8_t registers [REGISTER_COUNT / 8];
	uint16_t couplers;
	} ProgramInfo_t;
extern ProgramInfo_t programMap[PROGRAM_COUNT] ; // for each register one bit, 2 for couplers

extern uint8_t midi_RegisterChanged;
extern uint8_t midi_CountRegisterInProgram(uint8_t program);
extern uint8_t read_allRegister(uint8_t* resultPtr);

typedef struct {
	uint8_t cursor;
	uint8_t  manualChar;
	uint8_t regStart;
	uint8_t regEnd;
} RegOut_t;

#define REGOUT_LEN 8
extern RegOut_t reg_Out[REGOUT_LEN];
extern void init_RegOut();
extern void reg_ClearOnLCD();
extern void reg_toLCD(uint8_t readHWonly);

#define REGISTER_WAS_SET 0x80 // prefix bit 7 = 1
#define REGISTER_ON 0x01
#define REGISTER_OFF 0x00
extern void register_onOff(uint8_t regNr, uint8_t onOff);
extern void registers_CalcCount();
extern uint8_t register_toProgram(uint8_t program, uint8_t SaveEEProm);
extern uint8_t program_toRegister(uint8_t program);
extern void midi_resetRegisters(); // turn off all register outputs
#define REG_DONT_MATCH_PROG 0xFF
extern uint8_t midi_RegisterMatchProgram(uint8_t program);

#define REGISTER_READ_HWIN 0x01
#define REGISTER_READ_SWOUT 0x02
#define REGISTER_READ_ALL 0x03
#define REGISTER_READ_HWIN_XOR_SWOUT 0x04
extern uint8_t count_Registers(uint8_t mode);

#define REGISTER_GROUP_COUNT 8

typedef struct {
	uint8_t ccInRegOn;
	uint8_t ccInRegOff;
	uint8_t ccOutRegOn;
	uint8_t ccOutRegOff;
} MidiCCreg_t;

extern MidiCCreg_t midi_ccReg;

#define REGISTER_MAX_CC 0x7F // CC for register change are vaild 0...127

//----------------------- PROGRAM ---------------------
#define PROGR_NONE 0xFF
#define PROGR_MAX 63
extern uint8_t prog_Display; // Program value 0...63
extern uint8_t prog_UpdDisplay; // TRUE if PROGRAM has changed and should be updated
extern void prog_set(uint8_t prog);
extern void prog_toLcd(); // send 4 byte to LCD at current cursor pos: "P:1A" .. "P:8H"

//----------------------- FUNCTIONS -------------------
extern void init_Midi2Manual();
extern void init_Manual2Midi();
extern void init_Manual2Module();
extern void init_Registers();

extern void midiNote_to_Manual(uint8_t channel, uint8_t note, uint8_t onOff);
extern ChannelNote_t Manual_to_MidiNote(uint8_t manual, uint8_t note);
extern void Midi_updateManualRange();

extern void midiSendAllNotesOff();
extern void init_Midi();
extern void midi_ManualOff(uint8_t manual);
extern void midi_AllManualsOff();

extern void proc_ESPmidi(uint8_t midiBytesTransferred);
//------------------------------ Active Sense ----------------------

extern uint8_t midiRxActivceSensing; // 0 if no active sense, 1 if started
typedef struct {
	uint8_t TxActivceSense; // 0 if no active sense, 0xFF if active sensing on output
	uint8_t VelZero4Off;
	uint8_t AcceptProgChange;
} MidiSetting_t;
extern MidiSetting_t midi_Setting;

extern uint8_t midiLastOutNote; // written by midi.c read by main for debugging/display
extern uint8_t midiLastOutManual;
extern uint8_t midiLastInNote; // written by midi.c read by main for debugging/display
extern uint8_t midiLastInChannel;
extern uint8_t midiLastInManual; // written by midi.c read by main for debugging/display
extern uint8_t midiLastProgram; // written by midi.c read by main for debugging/display

extern void midiKeyPress_Process(PipeMessage_t pipeMessage);
extern void midiIn_Process(uint8_t midiByte);
extern void manual_NoteOnOff(uint8_t manual, uint8_t note, uint8_t onOff);
extern void midi_SendActiveSense();
extern void midi_CheckRxActiveSense(); // check for RxActiveSense Error
extern void midi_CheckTxActiveSense();

//------------------------------- Couplers --------------------------
extern void midi_CouplerReset();
extern Word_t getAllCouplers();
extern void setAllCouplers(Word_t couplers);

#define COUPLER_ON 0xFF
#define COUPLER_OFF 0
#define COUPLER_COUNT 12
#define COUPLER_2FROM3 0
#define COUPLER_1FROM3 1
#define COUPLER_1FROM2 2
#define COUPLER_PFROM3 3
#define COUPLER_PFROM2 4
#define COUPLER_PFROM1 5
#define COUPLER_3FROM2 6
#define COUPLER_3FROM1 7
#define COUPLER_2FROM1 8
#define COUPLER_3FROMP 9
#define COUPLER_2FROMP 10
#define COUPLER_1FROMP 11
extern uint8_t midi_Couplers[COUPLER_COUNT];

typedef struct{
	uint8_t dest;
	uint8_t source;
} CplInfo_t;
extern const __flash CplInfo_t cplInfo[COUPLER_COUNT];

extern uint8_t set_Coupler(uint8_t); // set must be done via function, reset ca be done directly,
//returns manual if inverse coupler had to be reset


#endif /* MIDI_H_ */