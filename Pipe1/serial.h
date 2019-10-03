/*
 * serial.h
 *
 * Created: 15.12.2018 22:57:11
 *  Author: Anwender
 */


#ifndef SERIAL_H_
#define SERIAL_H_

//================================= S E R I A L _ E S P ===========================
//--------- INTERN DEFs ----------
#define SER_ESP_BAUD 115200
#define SER_ESP_BAUDRATE ((F_CPU+SER_ESP_BAUD*8)/(SER_ESP_BAUD*16)-1)

#define SER_ESP_RX_BUFFER_SIZE 128
#define SER_ESP_TX_BUFFER_SIZE 512
#define SER_ESP_MAX_STRINGLEN 255

#define SER_ESP_WAIT // if defined: sending waits for send buffer to be free

#define SER_ESP_OVFLOW (serESPOvflFlag == SER_OVFL_YES)

//------------ external defs ------------------
#define SER_ESP_RX_BUFFER_EMPTY (serESPRxInIndex == serESPRxOutIndex)
#define SER_ESP_TX_BUFFER_EMPTY (serESPTxInIndex == serESPTxOutIndex)
#define SER_ESP_RX_BUFFER_NONEMPTY (serESPRxInIndex != serESPRxOutIndex)
#define SER_ESP_TX_BUFFER_NONEMPTY (serESPTxInIndex != serESPTxOutIndex)
#define SER_ESP_UNDEFINED 0

extern void init_Serial3SerESP();
extern void serial3SER_ESPSend(uint8_t data);
extern void serial3SER_ESP_sendStringP(const char *progmem_s);
extern void serial3SER_ESP_sendString(char *s);
extern void serial3SER_ESP_sendCRLF();
extern uint8_t serial3SER_ESPReadRx();

extern volatile uint8_t* serESPRxInIndex;
extern volatile uint8_t* serESPRxOutIndex;
extern volatile uint8_t* serESPTxOutIndex;
extern volatile uint8_t* serESPTxInIndex;
extern volatile uint8_t serESPOvflFlag;
extern volatile uint8_t serESP_Active;

extern uint8_t serESPRxBuffer[SER_ESP_RX_BUFFER_SIZE];
extern uint8_t serESPTxBuffer[SER_ESP_TX_BUFFER_SIZE];

#define SER_ESP_MSGOFFSET 0x80 // message offset, so message from ESP is 0x81, 0x82...
// 0x81 ... 0x80+ MESSAGE_KEY_MAX are key messages from ESP to MEGAS

#define SER_ESP_OUTMSG_LCD_TRANSFER 0x80 // sent to ESP after 80 bytes LCD-Content (values < 0x80!) had been sent;
#define SER_ESP_OUTMSG_LCD_SETCURSOR 0x81 // sent to ESP before transfer of LCD content 0=line0,0 79=line3,19, 0x7F=invalid
#define SER_ESP_SEND_LCD 0xFE
#define SER_ESP_MESSAGE_NONE 0xFF


//================================= S E R I A L U S B ===========================
//--------- INTERN DEFs ----------
#define SER_USB_BAUD 115200
#define SER_USB_BAUDRATE ((F_CPU+SER_USB_BAUD*8)/(SER_USB_BAUD*16)-1)
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

#undef SER_USB_WAIT // = when sending wait for empty buffer instead of ovfl

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
#define MIDI_CLOCK 0xF8
#define MIDI_REALTIME_FIRST 0xF8
#define MIDI_REALTIME_LAST 0xFF
#define MIDI_UNDEFINED 0xFD
#define MIDI_ACTIVESENSING 0xFE
#define MIDI_RESET 0xFF
#define MIDI_ENDSYSEX 0xF7
// as default if byte from receiver is read but no data in buffer
#define MIDI_IGNORE_DATA 0xFF
#define MIDI_MAX_INTERESTING_BYTES 8 // V 0.59 2->8 for sysex receive
// receivable SysEx
#define MIDI_RX_SYSEX_HEADER0 0x7D
#define MIDI_MYSYSEX_REGISTER_ON 0x40
#define MIDI_MYSYSEX_REGISTER_OFF 0x00
#define MIDI_MYSYSEX_REGISTER_HEADER 0xA5 // arbitrary header  followed by regNr

#endif /* SERIAL_H_ */