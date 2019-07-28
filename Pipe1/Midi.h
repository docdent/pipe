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
#define MANUAL_NONE 0xFF

#define MIDI_NOTE_C2 36
#define MIDI_NOTE_G6 91
#define MIDI_NOTE_F4 65
#define MIDI_NOTE_NONE 0xFF
#define MIDI_NOTE_MAX 0x7F
#define RANGE_0 0
#define RANGE_COUNT 4 // Manual may be plsitted in ranges on io-boards
#define RANGE_NONE 0xFF // if in startNote: entry invalid

#define REGISTER_COUNT 64
#define PROGRAM_COUNT 64

typedef struct {
	uint8_t channel;
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

#define MIDI_CHANNEL_NONE 0xFF

#define MIDI_DEFAULT_VELOCITY 64

#define MIDI_SPLIT_COUNT 4

#define NOTE_ON 0x01
#define NOTE_OFF 0x00
#define REGISTER_ON 0x01
#define REGISTER_OFF 0x00
#define REGISTER_READ_HWIN 0x01
#define REGISTER_READ_SWOUT 0x02
#define REGISTER_READ_ALL 0x03


typedef  struct{
	uint8_t manual;
	uint8_t midiNote;
	uint8_t noteRange;
	uint8_t manualNote;
} MidiInMap_t;
// per channel one entry for each split range for Conversion of Note MIDI_IN -> Manual Note
extern MidiInMap_t midiInMap[MIDI_CHANNEL_COUNT][MIDI_SPLIT_COUNT];

typedef struct{
	uint8_t channel;
	} MidiOutMap_t;

extern MidiOutMap_t midiOutMap[MANUAL_COUNT];

extern uint8_t registerMap[REGISTER_COUNT]; // for each Register 0..63, contains modulBit
extern uint8_t registerCount; // nr of valid registers
extern uint8_t programMap[PROGRAM_COUNT] [REGISTER_COUNT / 8]; // for each register one bit

extern void init_Midi2Manual();
extern void init_Manual2Midi();
extern void init_Manual2Module();
extern void init_Registers();

extern void midiNote_to_Manual(uint8_t channel, uint8_t note, uint8_t onOff);
extern ChannelNote_t Manual_to_MidiNote(uint8_t manual, uint8_t note);

extern void midiSendAllNotesOff();

//------------------------------ Active Sense ----------------------

extern uint8_t midiRxActivceSensing; // 0 if no active sense, 1 if started
extern uint8_t midi_TxActivceSense; // 0 if no active sense, 0xFF if active sensing on output

extern uint8_t midiLastOutNote; // written by midi.c read by main for debugging/display
extern uint8_t midiLastOutManual;
extern uint8_t midiLastInNote; // written by midi.c read by main for debugging/display
extern uint8_t midiLastInChannel;
extern uint8_t midiLastInManual; // written by midi.c read by main for debugging/display

extern void midiKeyPress_Process(PipeMessage_t pipeMessage);
extern void midiIn_Process(uint8_t midiByte);
extern void manual_NoteOnOff(uint8_t manual, uint8_t note, uint8_t onOff);
extern void program_toRegister(uint8_t program); // sets regsiter according to programm
extern void midi_SendActiveSense();
extern void midi_CheckRxActiveSense(); // check for RxActiveSense Error
extern void midi_CheckTxActiveSense();
//------------------------------- Couplers --------------------------

extern void init_Midi();

extern  uint8_t midiCoupler_2from3; // set to zero in init_Manual2Module()
extern  uint8_t midiCoupler_1from3;
extern  uint8_t midiCoupler_1from2;
extern  uint8_t midiCoupler_Pfrom3;
extern  uint8_t midiCoupler_Pfrom2;
extern  uint8_t midiCoupler_Pfrom1;


#endif /* MIDI_H_ */