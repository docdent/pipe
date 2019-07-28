/*
 * serial.h
 *
 * Created: 15.12.2018 22:57:11
 *  Author: Anwender
 */


#ifndef SERIAL_H_
#define SERIAL_H_

//================================= S E R I A L U S B ===========================
//--------- INTERN DEFs ----------
#define SER_USB_BAUD 19200
#define SER_USB_BAUDRATE ((F_CPU)/(SER_USB_BAUD*16UL)-1)
#define SER_USB_PORT PORTE
#define SER_USB_PINP PINE
#define SER_USB_DDR DDRE
#define SER_USB_TX_PIN 1
#define SER_USB_RX_PIN 0

#define SER_USB_UNDEFINED 0x00
#define SER_OVFL_YES 0xFF
#define SER_OVFL_NO 0x00

#define SER_USB_RX_BUFFER_SIZE 64
#define SER_USB_RX_BUFFER_MASK 0x3F
#define SER_USB_TX_BUFFER_SIZE 256
#define SER_USB_TX_BUFFER_MASK 0xFF

#define SER_USB_WAIT // = when sending wait for empty buffer instead of ovfl

//------------ external defs ------------------
extern void init_Serial0SerUSB();
extern void serial0SER_USBSend(uint8_t data);
extern void serial0SER_USB_sendStringP(const char *progmem_s);
extern void serial0SER_USB_sendString(char *s);
extern void serial0SER_USB_sendCRLF();
extern uint8_t serial0SER_USBReadRx();

extern volatile uint8_t serusbRxInIndex;
extern volatile uint8_t serusbRxOutIndex;
extern volatile uint8_t serusbTxOutIndex;
extern volatile uint8_t serusbTxInIndex;
extern volatile uint8_t serusbOvflFlag;
extern volatile uint8_t serusb_Active;

extern uint8_t serUsbRxBuffer[SER_USB_RX_BUFFER_SIZE];
extern uint8_t serUsbTxBuffer[SER_USB_TX_BUFFER_SIZE];
extern volatile uint16_t midiTxBytesCount; // total bytes sent
extern volatile uint16_t midiRxBytesCount; // total bytes received


#define SER_USB_RX_BUFFER_EMPTY (serusbRxInIndex == serusbRxOutIndex)
#define SER_USB_TX_BUFFER_EMPTY (serusbTxInIndex == serusbTxOutIndex)
#define SER_USB_RX_BUFFER_NONEMPTY (serusbRxInIndex != serusbRxOutIndex)
#define SER_USB_TX_BUFFER_NONEMPTY (serusbTxInIndex != serusbTxOutIndex)
#define SER_USB_OVFLOW (serusbOvflFlag == SER_OVFL_YES)
#define SER_USB_MAX_STRINGLEN 80

//========================== M I D I ======================================
//--------- INTERN DEFs ----------
#define MIDI_BAUD 31250
#define MIDI_BAUDRATE ((F_CPU)/(MIDI_BAUD*16UL)-1)
#define MIDI_SERIAL_PORT PORTD
#define MIDI_SERIAL_PIN PIND
#define MIDI_SERIAL_DDR DDRD
#define MIDI_SERIAL_TX_PIN 3
#define MIDI_SERIAL_RX_PIN 2

#define MIDI_RX_BUFFER_SIZE 32
#define MIDI_RX_BUFFER_MASK 0x1F
#define MIDI_TX_BUFFER_SIZE 32
#define MIDI_TX_BUFFER_MASK 0x1F

//----------- external defs -------------
extern void init_Serial1MIDI();
extern void serial1MIDISend(uint8_t data);
extern uint8_t serial1MIDIReadRx();

extern volatile uint8_t midiRxInIndex;
extern volatile uint8_t midiRxOutIndex;
extern volatile uint8_t midiTxOutIndex;
extern volatile uint8_t midiTxInIndex;
extern uint8_t midiRxBuffer[MIDI_RX_BUFFER_SIZE];
extern uint8_t midiTxBuffer[MIDI_TX_BUFFER_SIZE];
extern volatile uint16_t midiTxBytesCount;
extern volatile uint16_t midiRxBytesCount;
extern volatile uint8_t midiRxOvflCount;
extern volatile uint8_t midiTxOvflCount;

#define MIDI_RX_BUFFER_EMPTY (midiRxInIndex == midiRxOutIndex)
#define MIDI_TX_BUFFER_EMPTY (midiTxOutIndex == midiTxInIndex)
#define MIDI_RX_BUFFER_NONEMPTY (midiRxInIndex != midiRxOutIndex)
#define MIDI_TX_BUFFER_NONEMPTY (midiTxOutIndex != midiTxInIndex)

//--------- MIDI Defs -----------
// alle Commands excepo 0xF0..0x0FF include Channel in lower nibble
// 2 Data bytes following
#define MIDI_NOTEOFF 0x80 
#define MIDI_NOTEON 0x90 
#define MIDI_POLYAFTT 0xA0 
#define MIDI_CTRLCHG 0xB0 // 2 possible, but may be 1 for first data <120
#define MIDI_PITCHBEND 0xE0
#define MIDI_SONGPOS 0xF2
// 1 Datenbyte für folgende Midi-Befehle
#define MIDI_PRGCHG 0xC0
#define MIDI_CHANAFFT 0xD0
#define MIDI_TIMECODE 0xF1
#define MIDI_SONGSEL 0xF3
// unbestimmte Anzahl
#define MIDI_SYSEX 0xF0
// alle anderen von F0-FF: keine Datenbytes
#define MIDI_SENSE 0xFE
// wird beim Empfang ignoriert!
#define MIDI_CTRL_ALLNOTESOFF 0x7B
#define MIDI_SYSEX 0xF0
#define MIDI_UNDEFINED 0xFD
#define MIDI_ACTIVESENSING 0xFE
#define MIDI_RESET 0xFF
// as default if byte from receiver is read but no data in buffer
#define MIDI_IGNORE_DATA 0xFF
#define MIDI_MAX_INTERESTING_BYTES 2
#endif /* SERIAL_H_ */