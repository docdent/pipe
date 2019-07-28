/*
 * ee_prom.h
 *
 * Created: 10.02.2019 22:28:21
 *  Author: Anwender
 */


#ifndef EE_PROM_H_
#define EE_PROM_H_
#include <util/crc16.h>
#include <avr/eeprom.h>
#include <inttypes.h>

#include "Midi.h"
#include "menu.h"

#define CRC_START 0xFFFF

#define EE_LOAD_OK 0x00
#define EE_LOAD_ERROR 0xFF

extern uint8_t eeprom_ReadManualMap();
extern uint8_t eeprom_ReadMidiInMap();
extern uint8_t eeprom_ReadMidiOutMap();
extern uint8_t eeprom_ReadModules();
extern uint8_t eeprom_ReadUSB();
extern uint8_t eeprom_ReadReg();
extern uint8_t eeprom_ReadProg();
extern uint8_t eeprom_ReadSoftkeys();
extern void eeprom_UpdateManualMap();
extern void eeprom_UpdateMidiInMap();
extern void eeprom_UpdateMidiOutMap();
extern void eeprom_UpdateModules();
extern void eeprom_UpdateUSB();
extern void eeprom_UpdateReg();
extern void eeprom_UpdateProg();
extern void eeprom_UpdateSoftkeys();
extern void eeprom_Backup();
extern void eeprom_Restore();
extern void eeprom_UpdateALL();

#define EE_CHAR_START 0
#define EE_CHAR_BACKUPSTART 1
#define EE_CHAR_MANUALMAP 'M'
#define EE_CHAR_MIDIINMAP 'I'
#define EE_CHAR_MIDIOUTMAP 'O'
#define EE_CHAR_MODULEINSTALLED 'i'
#define EE_CHAR_END 'e'
#define EE_CHAR_BACKUPEND 'f'
#define EE_CHAR_USB 'U'
#define EE_CHAR_REG 'R'
#define EE_CHAR_PROG 'P'
#define EE_CHAR_SOFTKEYS 'K'

typedef struct{
	uint8_t charStart;
	uint8_t charManMap;
	ManualMap_t manualMap[MANUAL_COUNT][RANGE_COUNT];
	uint16_t manualMap_crc;
	uint8_t charMidiInMap;
	MidiInMap_t midiInMap[MIDI_CHANNEL_COUNT][MIDI_SPLIT_COUNT];
	uint16_t midiInMap_crc;
	uint8_t charMidiOutMap;
	MidiOutMap_t midiOutMap[MANUAL_COUNT];
	uint8_t midiTXActivSense;
	uint16_t midiOutMap_crc;
	uint8_t charModInst;
	uint8_t moduleAssignRead;
	uint8_t moduleAssignWrite;
	uint16_t moduleInstalled_crc;
	uint8_t charUSB;
	uint8_t usbActive;
	uint16_t usb_crc;
	uint8_t charReg;
	uint8_t regCount;
	uint8_t registerMap[REGISTER_COUNT];
	uint16_t reg_crc;
	uint8_t charProg;
	uint8_t programMap[PROGRAM_COUNT] [REGISTER_COUNT / 8];
	uint16_t prog_crc;
	uint8_t charSoftkey;
	SoftKey_List_t softKeys[MENU_SOFTKEY_COUNT];
	uint16_t softKeys_crc;
	uint8_t charEnd;
} Ee_t;

#define EEPROM_DATABLOCK_SIZE 1024 // adapt to size of EE_t manually !

typedef union{
	Ee_t ee;
	uint8_t raw[EEPROM_DATABLOCK_SIZE];
} EEblock_t;

typedef struct{
	EEblock_t eeData;
	EEblock_t eeBackup;
} EECompl_t; // packed to struct to assure order of Data and Backup

extern EEMEM EECompl_t ee;

#define EE_ERROR_NONE 0x00
#define EE_ERROR_MANUAL 0x01
#define EE_EPROM_MIDIIN 0x02
#define EE_ERROR_MIDIOUT 0x04
#define EE_ERROR_MODULES 0x08;
#define EE_ERROR_USB 0x10;
#define EE_ERROR_REG 0x20;
#define EE_ERROR_PROG 0x40;
#define EE_ERROR_ELSE 0x80;

extern uint8_t ee_initError;

#endif /* EE_PROM_H_ */