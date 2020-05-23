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
const __flash EeVarList_t ee_VarList[] = {
	{EE_CHAR_MANUALMAP,	0, sizeof(manualMap), (uint8_t*) manualMap},
	{EE_CHAR_MIDIINMAP,	0, sizeof(midiInMap), (uint8_t*) midiInMap},
	{EE_CHAR_MIDIOUTMAP, 0, sizeof(midiOutMap), (uint8_t*) midiOutMap},
	{EE_CHAR_MODULEINSTALLED, 0, sizeof(pipe_Module), (uint8_t*) &pipe_Module},
	{EE_CHAR_USB, 0, sizeof(serUSB_Active), (uint8_t*) &serUSB_Active},
	{EE_CHAR_REG, 0, sizeof(registerMap), (uint8_t*) registerMap},
	{EE_CHAR_PROG, 0, sizeof(programMap), (uint8_t*) programMap},
	{EE_CHAR_SOFTKEYS, 0, sizeof(soft_KeyMenuIndex), (uint8_t*) soft_KeyMenuIndex},
	{EE_CHAR_MIDITHROUGH, 0, sizeof(midiThrough), (uint8_t*) &midiThrough}
};
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

uint8_t eePromReadLabeledBlock(uint8_t label, uint8_t version, uint16_t blockSize, uint8_t* pMemory){
	// find block in EEPROM
	uint8_t* pEeBlock = (uint8_t*) &ee;
	// check start label
	if (eeprom_read_byte(pEeBlock) != EE_CHAR_START2){
		return EE_LOAD_ERROR_EE_STARTINVALID;
	}
	pEeBlock++; // skip start label
	while (pEeBlock < (uint8_t*) EE_SIZE){
		// find label
		if (eeprom_read_byte(pEeBlock) == label){
			// found label, check version
			pEeBlock++;
			if (eeprom_read_byte(pEeBlock) != version){
				return EE_LOAD_ERROR_EE_VERSONINVALID; // wrong version
			}
			pEeBlock++; // correct version, check size
			uint16_t dataSize = eeprom_read_word((uint16_t*) pEeBlock);
			if (dataSize != blockSize){
				return EE_LOAD_ERROR_EE_SIZEINVALID; // wrong size
			}
			// data size OK, check crc
			pEeBlock = pEeBlock+2;
			uint16_t crc = crc16_eeprom(pEeBlock, blockSize);
			if (eeprom_read_word((uint16_t*) pEeBlock) != crc) {
				return EE_LOAD_ERROR_EE_CRCINVALID; // wrong crc
			}
			pEeBlock = pEeBlock+2;
			eeprom_read_block(pMemory,pEeBlock,blockSize);
			return EE_LOAD_OK;
		} else if (eeprom_read_byte(pEeBlock) == EE_CHAR_END){
			return EE_LOAD_ERROR_EE_LABELNOTFOUND;
		}
		// errors were handled by return
		// label did not match until now
		pEeBlock += eeprom_read_word((uint16_t*) pEeBlock+2)+6; // skip this entry
	}
	return EE_LOAD_ERROR_EE_ENDREACHED;
}

void eeProm_FormatBlock(){
	uint8_t* pEEProm = (uint8_t*) &ee;
	eeprom_update_byte(pEEProm++,EE_CHAR_START2);
	for (uint8_t i = 0; i <= EE_NR_MAX; i++){
		eeprom_update_byte(pEEProm,ee_VarList[i].label); // write label
		pEEProm += 2; // skip version and point to sizeData
		eeprom_update_byte(pEEProm,ee_VarList[i].size); // write size
		pEEProm += 2+ee_VarList[i].size; // skip crc and data
	}
	eeprom_update_byte(pEEProm++,EE_CHAR_END);
}

uint8_t eeProm_WriteBlock(uint8_t labelNr){
	uint8_t* pEeBlock = (uint8_t*) &ee;
	if (labelNr > EE_NR_MAX){
		return EE_WRITE_ERROR_EE_OUTOFRANGE;
	}
	if (eeprom_read_byte(pEeBlock) != EE_CHAR_START2){
		return EE_LOAD_ERROR_EE_STARTINVALID;
	}
	pEeBlock++; // skip start label
	while (pEeBlock < (uint8_t*) EE_SIZE){
		// find label
		if (eeprom_read_byte(pEeBlock) == ee_VarList[labelNr].label){
			// found label
			pEeBlock += 2; // skip version
			uint16_t dataSize = eeprom_read_word((uint16_t*) pEeBlock);
			if (dataSize != ee_VarList[labelNr].size){
				return EE_LOAD_ERROR_EE_SIZEINVALID; // wrong size
			}
			// found, size OK, write version, crc, data
			eeprom_update_byte(pEeBlock-1,ee_VarList[labelNr].version);
			eeprom_update_word((uint16_t*) pEeBlock+2,crc16_ram(ee_VarList[labelNr].pMemory,ee_VarList[labelNr].size));
			eeprom_update_block(ee_VarList[labelNr].pMemory,pEeBlock+4,ee_VarList[labelNr].size);
		} else if (eeprom_read_byte(pEeBlock) == EE_CHAR_END){
			return EE_LOAD_ERROR_EE_LABELNOTFOUND;
		}
	}
	return EE_LOAD_ERROR_EE_ENDREACHED;
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
	if ((eeprom_read_word(&ee.eeData.ee.midiOutMap_crc) == crc16_eeprom((uint8_t*) &ee.eeData.ee.midiOutMap, sizeof (ee.eeData.ee.midiOutMap)+sizeof(ee.eeData.ee.midiSettings))
		&& eeprom_read_byte(&ee.eeData.ee.charMidiOutMap) == EE_CHAR_MIDIOUTMAP))  {
		// stored crc16 is ok
		eeprom_read_block((uint8_t*)&midiOutMap, (uint8_t*) &ee.eeData.ee.midiOutMap, sizeof(ee.eeData.ee.midiOutMap));
		eeprom_read_block((uint8_t*)&midi_Setting, (uint8_t*) &ee.eeData.ee.midiSettings, sizeof(ee.eeData.ee.midiSettings));
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
		pipe_Module.AssnRead = eeprom_read_byte(&ee.eeData.ee.moduleAssignRead);
		pipe_Module.AssnWrite = eeprom_read_byte(&ee.eeData.ee.moduleAssignWrite);
		return (EE_LOAD_OK);
	} else {
		ee_initError |= EE_ERROR_MODULES;
		return (EE_LOAD_ERROR);
	}
}

uint8_t eeprom_ReadMidiThrough(){
	if ((eeprom_read_word(&ee.eeData.ee.midiThrough_crc) == crc16_eeprom((uint8_t*) &ee.eeData.ee.midiThrough, sizeof (ee.eeData.ee.midiThrough))
	&& eeprom_read_byte(&ee.eeData.ee.charMidiThrough) == EE_CHAR_MIDITHROUGH))  {
		// stored crc16 is ok
		eeprom_read_block((uint8_t*) &midiThrough, (uint8_t*) &ee.eeData.ee.midiThrough, sizeof(ee.eeData.ee.midiThrough));
		return (EE_LOAD_OK);
	} else {
		ee_initError |= EE_EPROM_MIDIIN;
		return (EE_LOAD_ERROR);
	}
}

uint8_t eeprom_ReadUSB(){
	if ((eeprom_read_word(&ee.eeData.ee.usb_crc) == crc16_eeprom((uint8_t*) &ee.eeData.ee.usbActive, sizeof (ee.eeData.ee.usbActive))
	&& eeprom_read_byte(&ee.eeData.ee.charUSB) == EE_CHAR_USB))  {
		// stored crc16 is ok
		serUSB_Active = eeprom_read_byte(&ee.eeData.ee.usbActive);
		return (EE_LOAD_OK);
	} else {
		ee_initError |= EE_ERROR_MODULES;
		return (EE_LOAD_ERROR);
	}
}

uint8_t eeprom_ReadReg(){
	uint16_t crc;
	crc = crc16_eeprom((uint8_t*) &ee.eeData.ee.regCount, sizeof (registerCount));
	crc = crc16_eeprom_startVal((uint8_t*) &ee.eeData.ee.registerMap, sizeof (ee.eeData.ee.registerMap), crc);
	if ((eeprom_read_word(&ee.eeData.ee.reg_crc) == crc) && (eeprom_read_byte(&ee.eeData.ee.charReg) == EE_CHAR_REG)){
		// stored crc is ok
		registerCount = eeprom_read_byte(&ee.eeData.ee.regCount); // actually ssems useless as registerCount is calculated from data in registerMap
		eeprom_read_block((uint8_t*) registerMap, (uint8_t*) &ee.eeData.ee.registerMap, sizeof (ee.eeData.ee.registerMap));
		return(EE_LOAD_OK);
	} else {
		ee_initError |= EE_ERROR_REG;
		return (EE_LOAD_ERROR);
	}
}

uint8_t eeprom_ReadProg(){
	if ((eeprom_read_word(&ee.eeData.ee.prog_crc) == crc16_eeprom((uint8_t*) &ee.eeData.ee.programMap, sizeof (ee.eeData.ee.programMap)))  && (eeprom_read_byte(&ee.eeData.ee.charProg) == EE_CHAR_PROG)){
		// stored crc is ok
		eeprom_read_block((uint8_t*) programMap, (uint8_t*) &ee.eeData.ee.programMap, sizeof (ee.eeData.ee.programMap));
		return(EE_LOAD_OK);
	} else {
		ee_initError |= EE_ERROR_PROG;
		return (EE_LOAD_ERROR);
	}
}

uint8_t eeprom_ReadSoftkeys(){
	if ((eeprom_read_word(&ee.eeData.ee.softKeys_crc) == crc16_eeprom((uint8_t*) &ee.eeData.ee.softKeyMenuIndex, sizeof (ee.eeData.ee.softKeyMenuIndex)))){
		// stored crc is ok
		eeprom_read_block((uint8_t*) soft_KeyMenuIndex, (uint8_t*) &ee.eeData.ee.softKeyMenuIndex, sizeof (ee.eeData.ee.softKeyMenuIndex));
		return(EE_LOAD_OK);
	} else {
		ee_initError |= EE_ERROR_ELSE;
		return (EE_LOAD_ERROR);
	}
}

uint8_t eeprom_ReadRegOut(){
	if ((eeprom_read_word(&ee.eeData.ee.regOut_crc) == crc16_eeprom((uint8_t*) &ee.eeData.ee.reg_Out, sizeof (reg_Out)))){
		// stored crc is ok
		eeprom_read_block((uint8_t*) reg_Out, (uint8_t*) &ee.eeData.ee.reg_Out, sizeof (ee.eeData.ee.reg_Out));
		return(EE_LOAD_OK);
	} else {
		ee_initError |= EE_ERROR_REG;
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
	crc = crc16_ram_startVal((uint8_t*)&midi_Setting,sizeof(midi_Setting),crc);
	lcd_waitSymbolOn();
	eeprom_update_byte((uint8_t *) &(ee.eeData.ee.charMidiOutMap), EE_CHAR_MIDIOUTMAP);
	eeprom_update_block((uint8_t*) &midiOutMap, (uint8_t*) &ee.eeData.ee.midiOutMap, sizeof(midiOutMap));
	eeprom_update_block((uint8_t*) &midi_Setting, (uint8_t*) &ee.eeData.ee.midiSettings, sizeof(midi_Setting));
	eeprom_update_word(&ee.eeData.ee.midiOutMap_crc, crc);
	eepromWriteSignature();
	lcd_waitSymbolOff();
}

void eeprom_UpdateModules(){
	uint16_t crc = crc16_ram(&pipe_Module.AssnRead, sizeof(pipe_Module.AssnRead));
	lcd_waitSymbolOn();
	eeprom_update_byte((uint8_t *) &(ee.eeData.ee.charModInst), EE_CHAR_MODULEINSTALLED);
	eeprom_update_byte(&(ee.eeData.ee.moduleAssignRead), pipe_Module.AssnRead);
	eeprom_update_byte(&(ee.eeData.ee.moduleAssignWrite), pipe_Module.AssnWrite);
	eeprom_update_word(&(ee.eeData.ee.moduleInstalled_crc), crc);
	eepromWriteSignature();
	lcd_waitSymbolOff();
}

void eeprom_UpdateUSB(){
	uint16_t crc = crc16_ram((uint8_t*) &serUSB_Active, sizeof(serUSB_Active));
	lcd_waitSymbolOn();
	eeprom_update_byte((uint8_t *) &(ee.eeData.ee.charUSB), EE_CHAR_USB);
	eeprom_update_byte(&(ee.eeData.ee.usbActive), serUSB_Active);
	eeprom_update_word(&(ee.eeData.ee.usb_crc), crc);
	eepromWriteSignature();
	lcd_waitSymbolOff();
}

void eeprom_UpdateMidiThrough(){
	uint16_t crc = crc16_ram((uint8_t*) &midiThrough, sizeof(midiThrough));
	lcd_waitSymbolOn();
	eeprom_update_byte((uint8_t *) &(ee.eeData.ee.charMidiThrough), EE_CHAR_MIDITHROUGH);
	eeprom_update_block((uint8_t*) &midiThrough, (uint8_t*) &ee.eeData.ee.midiThrough, sizeof(midiThrough));
	eeprom_update_word(&(ee.eeData.ee.midiThrough_crc), crc);
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
	uint16_t crc = crc16_ram((uint8_t*) soft_KeyMenuIndex, sizeof(soft_KeyMenuIndex));
	lcd_waitSymbolOn();
	eeprom_update_byte((uint8_t *) &(ee.eeData.ee.charSoftkey), EE_CHAR_SOFTKEYS);
	eeprom_update_block((uint8_t*) soft_KeyMenuIndex, (uint8_t*) &ee.eeData.ee.softKeyMenuIndex, sizeof(soft_KeyMenuIndex));
	eeprom_update_word(&(ee.eeData.ee.softKeys_crc), crc);
	eepromWriteSignature();
	lcd_waitSymbolOff();
}

void eeprom_UpdateRegOut(){
	uint16_t crc = crc16_ram((uint8_t*) reg_Out, sizeof(reg_Out));
	lcd_waitSymbolOn();
	eeprom_update_byte((uint8_t *) &(ee.eeData.ee.charRegOut), EE_CHAR_REGOUT);
	eeprom_update_block((uint8_t*) reg_Out, (uint8_t*) &ee.eeData.ee.reg_Out, sizeof(reg_Out));
	eeprom_update_word(&(ee.eeData.ee.regOut_crc), crc);
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
	eeprom_UpdateMidiThrough();
	eeprom_UpdateRegOut();
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