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
#define EE_LOAD_ERROR_EE_STARTINVALID 0xFE
#define EE_LOAD_ERROR_EE_VERSONINVALID 0xFD
#define EE_LOAD_ERROR_EE_SIZEINVALID 0xFC
#define EE_LOAD_ERROR_EE_CRCINVALID 0xFB
#define EE_LOAD_ERROR_EE_LABELNOTFOUND 0xFA // but structure ended with EE_CHAR_END
#define EE_LOAD_ERROR_EE_ENDREACHED 0xF9 // structure did not end properly
#define EE_WRITE_ERROR_EE_OUTOFRANGE 0xF8 
#define EE_SIZE 4096

extern uint8_t eeprom_ReadManualMap();
extern uint8_t eeprom_ReadMidiInMap();
extern uint8_t eeprom_ReadMidiOutMap();
extern uint8_t eeprom_ReadModules();
extern uint8_t eeprom_ReadUSB();
extern uint8_t eeprom_ReadReg();
extern uint8_t eeprom_ReadRegOut();
extern uint8_t eeprom_ReadProg();
extern uint8_t eeprom_ReadSoftkeys();
extern uint8_t eeprom_ReadMidiThrough();

extern void eeprom_UpdateManualMap();
extern void eeprom_UpdateMidiInMap();
extern void eeprom_UpdateMidiOutMap();
extern void eeprom_UpdateModules();
extern void eeprom_UpdateUSB();
extern void eeprom_UpdateReg();
extern void eeprom_UpdateRegOut();
extern void eeprom_UpdateProg();
extern void eeprom_UpdateSoftkeys();
extern void eeprom_UpdateMidiThrough();

extern void eeprom_Backup();
extern void eeprom_Restore();
extern void eeprom_UpdateALL();

#define EE_CHAR_START 0
#define EE_CHAR_START2 2
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
#define EE_CHAR_MIDITHROUGH 'T'
#define EE_CHAR_REGOUT 'r'
#define EE_NR_MANUALMAP 0
#define EE_NR_MIDIINMAP 1
#define EE_NR_MIDIOUTMAP 2
#define EE_NR_MODULEINSTALLED 3
#define EE_NR_USB 4
#define EE_NR_REG 5
#define EE_NR_PROG 6
#define EE_NR_SOFTKEYS 7
#define EE_NR_MIDITHROUGH 8
#define EE_NR_MAX 8



// startcode; (label, version, size16(data), crc(data), data),  (label, version, size16(data), crc(data), data)... endcode
typedef struct{
	uint8_t label;
	uint8_t version;
	uint16_t sizeData;
	uint16_t crcData;
	uint8_t data; // [0...sizeData-1]
} ee_dataBlockBasic; // caution: struct is supposed as is and hard coded in functions!

typedef struct{
	uint8_t label;
	uint8_t version; 
	uint16_t size;
	uint8_t* pMemory;
} EeVarList_t;

extern const __flash EeVarList_t ee_VarList[];

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
	MidiSetting_t midiSettings;
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
	RegisterMap_t registerMap[REGISTER_SEC_COUNT];
	uint16_t reg_crc;
	uint8_t charProg;
	ProgramInfo_t programMap[PROGRAM_COUNT];
	uint16_t prog_crc;
	uint8_t charSoftkey;
	uint8_t softKeyMenuIndex[MENU_SOFTKEY_COUNT];
	uint16_t softKeys_crc;
	uint8_t charMidiThrough;
	MidiThrough_t midiThrough;
	uint16_t midiThrough_crc;
	uint8_t charRegOut;
	RegOut_t reg_Out[REGOUT_LEN];
	uint16_t regOut_crc;
	uint8_t charEnd; // only for debugging
} Ee_t;

#define EEPROM_DATABLOCK_SIZE 2048 // adapt to size of EE_t manually !

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