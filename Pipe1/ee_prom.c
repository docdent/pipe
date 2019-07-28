/*
 * ee_prom.c
 *
 * Created: 10.02.2019 22:28:05
 *  Author: Anwender
 */

#include <avr/eeprom.h>
#include <util/crc16.h>
#include "hwtimer.h"
#include "utils.h"
#include "serial.h"
#include "Midi.h"
#include "menu.h"
#include "ee_prom.h"

//--------------------------------- E E P R O M ---------------------------------------

// ManualMap_t ee_manualMap[MANUAL_COUNT][RANGE_COUNT];
// uint16_t EEMEM ee_manualMap_crc;
// MidiInMap_t EEMEM ee_midiInMap[MIDI_CHANNEL_COUNT][MIDI_SPLIT_COUNT];
// uint16_t EEMEM ee_midiInMap_crc;
// MidiOutMap_t EEMEM ee_midiOutMap[MANUAL_COUNT];
// uint16_t EEMEM ee_midiOutMap_crc;
// uint8_t EEMEM ee_moduleInstalled;
// uint16_t EEMEM ee_moduleInstalled_crc;

// eeFile_T EEMEM ee_backup;
// uint16_t EEMEM ee_backup_crc;

EECompl_t EEMEM ee;

//--------------------------------------- V A R -------------------------------------

uint8_t ee_initError = EE_ERROR_NONE;

//--------------------------------- F U N C T I O N S -----------------------------

uint16_t crc16_ram(uint8_t* pRam, uint16_t count){
	uint16_t result = CRC_START;
	while (count-- > 0){
		result =  _crc16_update(result, *pRam++);
	}
	return (result);
}

uint16_t crc16_eeprom(const uint8_t* pEeprom, uint16_t count){
	uint16_t result = CRC_START;
	while (count-- > 0){
		result =  _crc16_update(result, eeprom_read_byte(pEeprom++));
	}
	return (result);
}

uint16_t crc16_ram_startVal(uint8_t* pRam, uint16_t count, uint16_t crcVal){
	uint16_t result = crcVal;
	while (count-- > 0){
		result =  _crc16_update(result, *pRam++);
	}
	return (result);
}

uint16_t crc16_eeprom_startVal(const uint8_t* pEeprom, uint16_t count, uint16_t crcVal){
	uint16_t result = crcVal;
	while (count-- > 0){
		result =  _crc16_update(result, eeprom_read_byte(pEeprom++));
	}
	return (result);
}


uint8_t eeprom_ReadManualMap(){
	if ((eeprom_read_word(&(ee.eeData.ee.manualMap_crc)) == crc16_eeprom((uint8_t*) &(ee.eeData.ee.manualMap), sizeof (ee.eeData.ee.manualMap))
		&& eeprom_read_byte(&(ee.eeData.ee.charManMap)) == EE_CHAR_MANUALMAP))  {
		// stored crc16 is ok
		eeprom_read_block((uint8_t*) manualMap, (uint8_t*) &ee.eeData.ee.manualMap, sizeof (ee.eeData.ee.manualMap));
		return (EE_LOAD_OK);
	} else {
		ee_initError |= EE_ERROR_MANUAL;
		return (EE_LOAD_ERROR);
	}
}

uint8_t eeprom_ReadMidiInMap(){
	if ((eeprom_read_word(&ee.eeData.ee.midiInMap_crc) == crc16_eeprom((uint8_t*) &ee.eeData.ee.midiInMap, sizeof (ee.eeData.ee.midiInMap)) 
		&& eeprom_read_byte(&ee.eeData.ee.charMidiInMap) == EE_CHAR_MIDIINMAP))  {
		// stored crc16 is ok
		eeprom_read_block((uint8_t*) midiInMap, (uint8_t*) &ee.eeData.ee.midiInMap, sizeof (ee.eeData.ee.midiInMap));
		return (EE_LOAD_OK);
	} else {
		ee_initError |= EE_EPROM_MIDIIN;
		return (EE_LOAD_ERROR);
	}
}

uint8_t eeprom_ReadMidiOutMap(){
	if ((eeprom_read_word(&ee.eeData.ee.midiOutMap_crc) == crc16_eeprom((uint8_t*) &ee.eeData.ee.midiOutMap, sizeof (ee.eeData.ee.midiOutMap)+sizeof(midi_TxActivceSense))  
		&& eeprom_read_byte(&ee.eeData.ee.charMidiOutMap) == EE_CHAR_MIDIOUTMAP))  {
		// stored crc16 is ok
		eeprom_read_block((uint8_t*) midiOutMap, (uint8_t*) &ee.eeData.ee.midiOutMap, sizeof (ee.eeData.ee.midiOutMap));
		midi_TxActivceSense = eeprom_read_byte(&ee.eeData.ee.midiTXActivSense);
		return (EE_LOAD_OK);
	} else {
		ee_initError |= EE_ERROR_MIDIOUT;
		return (EE_LOAD_ERROR);
	}
}

uint8_t eeprom_ReadModules(){
	if ((eeprom_read_word(&ee.eeData.ee.moduleInstalled_crc) == crc16_eeprom((uint8_t*) &ee.eeData.ee.moduleAssignRead, sizeof (ee.eeData.ee.moduleAssignRead))  
		&& eeprom_read_byte(&ee.eeData.ee.charModInst) == EE_CHAR_MODULEINSTALLED))  {
		// stored crc16 is ok
		pipe_ModuleAssnRead = eeprom_read_byte(&ee.eeData.ee.moduleAssignRead);
		pipe_ModuleAssnWrite = eeprom_read_byte(&ee.eeData.ee.moduleAssignWrite);
		return (EE_LOAD_OK);
	} else {
		ee_initError |= EE_ERROR_MODULES;
		return (EE_LOAD_ERROR);
	}
}

uint8_t eeprom_ReadUSB(){
	if ((eeprom_read_word(&ee.eeData.ee.usb_crc) == crc16_eeprom((uint8_t*) &ee.eeData.ee.usbActive, sizeof (ee.eeData.ee.usbActive))
	&& eeprom_read_byte(&ee.eeData.ee.charUSB) == EE_CHAR_USB))  {
		// stored crc16 is ok
		serusb_Active = eeprom_read_byte(&ee.eeData.ee.usbActive);
		return (EE_LOAD_OK);
	} else {
		ee_initError |= EE_ERROR_MODULES;
		return (EE_LOAD_ERROR);
	}
}

uint8_t eeprom_ReadReg(){
	uint16_t crc;
	crc = crc16_eeprom((uint8_t*) &ee.eeData.ee.regCount, sizeof (registerCount));
	if ((eeprom_read_word(&ee.eeData.ee.reg_crc) == crc16_eeprom_startVal((uint8_t*) &ee.eeData.ee.registerMap, sizeof (ee.eeData.ee.registerMap), crc))){
		// stored crc is ok
		registerCount = eeprom_read_byte(&ee.eeData.ee.regCount);
		eeprom_read_block((uint8_t*) registerMap, (uint8_t*) &ee.eeData.ee.registerMap, sizeof (ee.eeData.ee.registerMap));
		return(EE_LOAD_OK);
	} else {
		ee_initError |= EE_ERROR_REG;
		return (EE_LOAD_ERROR);
	}
}

uint8_t eeprom_ReadProg(){
	if ((eeprom_read_word(&ee.eeData.ee.prog_crc) == crc16_eeprom((uint8_t*) &ee.eeData.ee.programMap, sizeof (ee.eeData.ee.programMap)))){
		// stored crc is ok
		eeprom_read_block((uint8_t*) programMap, (uint8_t*) &ee.eeData.ee.programMap, sizeof (ee.eeData.ee.programMap));
		return(EE_LOAD_OK);
	} else {
		ee_initError |= EE_ERROR_PROG;
		return (EE_LOAD_ERROR);
	}
}

uint8_t eeprom_ReadSoftkeys(){
	if ((eeprom_read_word(&ee.eeData.ee.softKeys_crc) == crc16_eeprom((uint8_t*) &ee.eeData.ee.softKeys, sizeof (ee.eeData.ee.softKeys)))){
		// stored crc is ok
		eeprom_read_block((uint8_t*) soft_Key, (uint8_t*) &ee.eeData.ee.softKeys, sizeof (ee.eeData.ee.softKeys));
		return(EE_LOAD_OK);
	} else {
		ee_initError |= EE_ERROR_ELSE;
		return (EE_LOAD_ERROR);
	}
}

void eepromWriteSignature(){
	eeprom_update_byte((uint8_t *) &(ee.eeData.ee.charStart),EE_CHAR_START);
	eeprom_update_byte((uint8_t *) &(ee.eeData.ee.charEnd),EE_CHAR_END);
}

void eeprom_UpdateManualMap(){
	uint16_t crc = crc16_ram((uint8_t*) manualMap, sizeof(manualMap));
	lcd_waitSymbolOn();
	eeprom_update_byte((uint8_t *) &(ee.eeData.ee.charManMap), EE_CHAR_MANUALMAP);
	eeprom_update_block((uint8_t*) &manualMap, (uint8_t*) &ee.eeData.ee.manualMap, sizeof(manualMap));
	eeprom_update_word(&ee.eeData.ee.manualMap_crc, crc);
	eepromWriteSignature();
	lcd_waitSymbolOff();
}

void eeprom_UpdateMidiInMap(){
	uint16_t crc = crc16_ram((uint8_t*) midiInMap, sizeof(midiInMap));
	lcd_waitSymbolOn();
	eeprom_update_byte((uint8_t *) &(ee.eeData.ee.charMidiInMap), EE_CHAR_MIDIINMAP);
	eeprom_update_block((uint8_t*) &midiInMap, (uint8_t*) &ee.eeData.ee.midiInMap, sizeof(midiInMap));
	eeprom_update_word(&ee.eeData.ee.midiInMap_crc, crc);
	eepromWriteSignature();
	lcd_waitSymbolOff();
}

void eeprom_UpdateMidiOutMap(){
	uint16_t crc = crc16_ram((uint8_t*)midiOutMap, sizeof(midiOutMap));
	crc = crc16_ram_startVal(&midi_TxActivceSense,sizeof(midi_TxActivceSense),crc);
	lcd_waitSymbolOn();
	eeprom_update_byte((uint8_t *) &(ee.eeData.ee.charMidiOutMap), EE_CHAR_MIDIOUTMAP);
	eeprom_update_block((uint8_t*) &midiOutMap, (uint8_t*) &ee.eeData.ee.midiOutMap, sizeof(midiOutMap));
	eeprom_update_byte((uint8_t *) &(ee.eeData.ee.midiTXActivSense), midi_TxActivceSense);
	eeprom_update_word(&ee.eeData.ee.midiOutMap_crc, crc);
	eepromWriteSignature();
	lcd_waitSymbolOff();
}

void eeprom_UpdateModules(){
	uint16_t crc = crc16_ram(&pipe_ModuleAssnRead, sizeof(pipe_ModuleAssnRead));
	lcd_waitSymbolOn();
	eeprom_update_byte((uint8_t *) &(ee.eeData.ee.charModInst), EE_CHAR_MODULEINSTALLED);
	eeprom_update_byte(&(ee.eeData.ee.moduleAssignRead), pipe_ModuleAssnRead);
	eeprom_update_byte(&(ee.eeData.ee.moduleAssignWrite), pipe_ModuleAssnWrite);
	eeprom_update_word(&(ee.eeData.ee.moduleInstalled_crc), crc);
	eepromWriteSignature();
	lcd_waitSymbolOff();
}

void eeprom_UpdateUSB(){
	uint16_t crc = crc16_ram((uint8_t*) &serusb_Active, sizeof(serusb_Active));
	lcd_waitSymbolOn();
	eeprom_update_byte((uint8_t *) &(ee.eeData.ee.charUSB), EE_CHAR_USB);
	eeprom_update_byte(&(ee.eeData.ee.usbActive), serusb_Active);
	eeprom_update_word(&(ee.eeData.ee.usb_crc), crc);
	eepromWriteSignature();
	lcd_waitSymbolOff();
}

void eeprom_UpdateReg(){
	uint16_t crc = crc16_ram((uint8_t*) &registerCount, sizeof(registerCount));
	crc = crc16_ram_startVal((uint8_t*) &registerMap, sizeof(registerMap), crc);
	lcd_waitSymbolOn();
	eeprom_update_byte((uint8_t *) &(ee.eeData.ee.charReg), EE_CHAR_REG);
	eeprom_update_byte(&(ee.eeData.ee.regCount), registerCount);
	eeprom_update_block((uint8_t*) &registerMap, (uint8_t*) &ee.eeData.ee.registerMap, sizeof(registerMap));
	eeprom_update_word(&(ee.eeData.ee.reg_crc), crc);
	eepromWriteSignature();
	lcd_waitSymbolOff();
}

void eeprom_UpdateProg(){
	uint16_t crc = crc16_ram((uint8_t*) &programMap, sizeof(programMap));
	lcd_waitSymbolOn();
	eeprom_update_byte((uint8_t *) &(ee.eeData.ee.charProg), EE_CHAR_PROG);
	eeprom_update_block((uint8_t*) &programMap, (uint8_t*) &ee.eeData.ee.programMap, sizeof(programMap));
	eeprom_update_word(&(ee.eeData.ee.prog_crc), crc);
	eepromWriteSignature();
	lcd_waitSymbolOff();
}

void eeprom_UpdateSoftkeys(){
	uint16_t crc = crc16_ram((uint8_t*) soft_Key, sizeof(soft_Key));
	lcd_waitSymbolOn();
	eeprom_update_byte((uint8_t *) &(ee.eeData.ee.charSoftkey), EE_CHAR_SOFTKEYS);
	eeprom_update_block((uint8_t*) soft_Key, (uint8_t*) &ee.eeData.ee.softKeys, sizeof(soft_Key));
	eeprom_update_word(&(ee.eeData.ee.softKeys_crc), crc);
	eepromWriteSignature();
	lcd_waitSymbolOff();
}

void eeprom_UpdateALL(){
	eeprom_UpdateManualMap();
	eeprom_UpdateMidiInMap();
	eeprom_UpdateMidiOutMap();
	eeprom_UpdateModules();
	eeprom_UpdateUSB();
	eeprom_UpdateReg();
	eeprom_UpdateProg();
	eeprom_UpdateSoftkeys();
}


void eepromCopy(uint8_t* pSource, uint8_t* pDest, uint16_t count){
	while (count-- > 0){
		eeprom_update_byte(pDest++,eeprom_read_byte(pSource++));
	}
}

void eeprom_Backup(){
	lcd_waitSymbolOn();
	eepromCopy((uint8_t*) &(ee.eeData.raw[0]), (uint8_t *) &(ee.eeBackup.raw[0]), sizeof(EEblock_t));
	lcd_waitSymbolOff();
}

void eeprom_Restore(){
	lcd_waitSymbolOn();
	eepromCopy((uint8_t*) &(ee.eeBackup.raw[0]), (uint8_t *) &(ee.eeData.raw[0]), sizeof(EEblock_t));
	lcd_waitSymbolOff();
}