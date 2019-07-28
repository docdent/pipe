/*
 * menu.c
 *
 * Created: 07.02.2019 14:02:51
 *  Author: Anwender
 */

#include <avr/io.h>
#include <inttypes.h>
#include <stddef.h>

#include "lcd_u.h"
#include "message.h"
#include "hwtimer.h"
#include "utils.h"
#include "serial.h"
#include "menu.h"
#include "Midi.h"
#include "ee_prom.h"
#include "log.h"

//********************************************* C O N S T ******************************************

const char sw_version [] PROGMEM = "V0.36";

uint8_t menuOnExitTestModBit(uint8_t arg);
uint8_t menuOnEnterReadModBit(uint8_t arg);
uint8_t menuOnEnterWriteModBit(uint8_t arg);

const __flash Menu_t menu_TestMod[] =
	{{MENU_T_VARMODBIT | MENU_T_LEFTBOUND,0,"R/W",NULL,&(menuTestModuleBit),NULL,menuOnExitTestModBit},
	{MENU_T_MENU,0,"Read",NULL,NULL,menuOnEnterReadModBit,NULL},
	{MENU_T_VARBYTE  | MENU_T_RIGHTBOUND,0,"Write",NULL,&(menuTestData),NULL,menuOnEnterWriteModBit}};

uint8_t menuOnEnterTestManual(uint8_t arg);
uint8_t menuOnExitTestManualMan(uint8_t arg);

const __flash Menu_t menu_TestMan[] =
{{MENU_T_VARMANUAL | MENU_T_LEFTBOUND,0,"Manual",NULL,&(menuManual),NULL,menuOnExitTestManualMan},
{MENU_T_MENU | MENU_T_RIGHTBOUND,MENU_FLAG_FNHANDLEMESSAGE,"Note",NULL,NULL,menuOnEnterTestManual,NULL}};

const __flash Menu_t menu_Test[] =
{{MENU_T_MENU | MENU_T_LEFTBOUND,0,"Manual",menu_TestMan,NULL,NULL,NULL},
{MENU_T_MENU | MENU_T_RIGHTBOUND,0,"Module",menu_TestMod,NULL,NULL,NULL}};

uint8_t menuOnExitMidiChannelSection(uint8_t arg);
uint8_t menuOnExitManualSection(uint8_t arg);
uint8_t menuOnEnterStatusMidiOut(uint8_t arg);
uint8_t menuOnEnterStatusMidiIn(uint8_t arg);
uint8_t menuOnEnterLogDisp(uint8_t arg);

const __flash Menu_t menu_status[] =
	{{MENU_T_VARBYTE | MENU_T_LEFTBOUND,MENU_FLAG_CLEAREXTRA,"MIDI-In",NULL,NULL,menuOnEnterStatusMidiIn,NULL},
	{MENU_T_VARBYTE,MENU_FLAG_CLEAREXTRA,"MIDI-Out",NULL,NULL,menuOnEnterStatusMidiOut,NULL},
	{MENU_T_MENU,MENU_FLAG_FNHANDLEMESSAGE,"Log",NULL,NULL,menuOnEnterLogDisp,NULL},
	{MENU_T_VARBYTE | MENU_T_RIGHTBOUND,0,"Mod.Diag",NULL,&(pipe_ModuleUsable),NULL,NULL}};

uint8_t menuOnExitModules(uint8_t arg);

const __flash Menu_t menu_modAssign[] =
	{{MENU_T_VARMANUAL | MENU_T_LEFTBOUND,0,"Manual",NULL,&(menuManual),NULL,menuOnExitManualSection},
	{MENU_T_VARSECTION,0,"Section",NULL,&(menuSection),NULL,menuOnExitManualSection},
	{MENU_T_VARNOTE,MENU_FLAG_DATAOFFSET | MENU_FLAG_ALLOWINVALD,"NoteBeg",NULL,&(manualMap[0][0].startNote),NULL,NULL},
	{MENU_T_VARNOTE,MENU_FLAG_DATAOFFSET | MENU_FLAG_ALLOWINVALD,"NoteEnd",NULL,&(manualMap[0][0].endNote),NULL,NULL},
	{MENU_T_VARMODBIT | MENU_T_RIGHTBOUND,MENU_FLAG_DATAOFFSET,"Module/Bit",NULL,&(manualMap[0][0].bitStart),NULL,NULL}};

uint8_t menuOnEnterUSBprotokoll(uint8_t arg);
uint8_t menuOnExitUSBactive(uint8_t arg);
uint8_t menuOnEnterUSBsendHW(uint8_t arg);

const __flash Menu_t menu_USBser[] =
	{{MENU_T_VARONOFF | MENU_T_LEFTBOUND,0,"Active",NULL,(uint8_t *) &(serusb_Active),NULL,menuOnExitUSBactive},
	{MENU_T_MENU,0,"SendLog",NULL,NULL,menuOnEnterUSBprotokoll,NULL},
	{MENU_T_MENU | MENU_T_RIGHTBOUND,0,"SndHWCfg",NULL,NULL,menuOnEnterUSBsendHW,NULL}};

uint8_t menuOnExitManual(uint8_t arg);
uint8_t menuOnEnterEESave(uint8_t arg);

const __flash Menu_t menu_hwInit[] =
	{{MENU_T_VARBYTE | MENU_T_LEFTBOUND,0,"ModActive",NULL,&(pipe_ModuleAssigned),NULL,menuOnExitModules},
	{MENU_T_MENU ,0,"ModAssign",menu_modAssign,NULL,NULL,menuOnExitManual},
	{MENU_T_MENU | MENU_T_RIGHTBOUND,0,"EE Save",NULL,NULL,menuOnEnterEESave,NULL}};

const __flash Menu_t menu_midiIn[] =
	{{MENU_T_VARMIDICHAN | MENU_T_LEFTBOUND,0,"Channel",NULL,&(menuMidiChan),NULL,menuOnExitMidiChannelSection},
	{MENU_T_VARSECTION,0,"Sect.",NULL,&(menuSection),NULL,menuOnExitMidiChannelSection},
	{MENU_T_VARMANUAL,MENU_FLAG_DATAOFFSET | MENU_FLAG_ALLOWINVALD,"Manual",NULL,&(midiInMap[0][0].manual),NULL,NULL},
	{MENU_T_VARNOTE,MENU_FLAG_DATAOFFSET | MENU_FLAG_ALLOWINVALD,"MidNote",NULL,&(midiInMap[0][0].midiNote),NULL,NULL},
	{MENU_T_VARDEC,MENU_FLAG_DATAOFFSET,"Range",NULL,&(midiInMap[0][0].noteRange),NULL,NULL},
	{MENU_T_VARNOTE | MENU_T_RIGHTBOUND,MENU_FLAG_DATAOFFSET | MENU_FLAG_ALLOWINVALD,"ManNote",NULL,&(midiInMap[0][0].manualNote),NULL,NULL}};

const __flash Menu_t menu_midiOut[] =
	{{MENU_T_VARMIDICHAN | MENU_T_LEFTBOUND,MENU_FLAG_ALLOWINVALD,"III",NULL,&(midiOutMap[MANUAL_III].channel),NULL,NULL},
	{MENU_T_VARMIDICHAN,MENU_FLAG_ALLOWINVALD,"II",NULL,&(midiOutMap[MANUAL_II].channel),NULL,NULL},
	{MENU_T_VARMIDICHAN,MENU_FLAG_ALLOWINVALD,"I",NULL,&(midiOutMap[MANUAL_I].channel),NULL,NULL},
	{MENU_T_VARMIDICHAN  | MENU_T_RIGHTBOUND,MENU_FLAG_ALLOWINVALD,"P",NULL,&(midiOutMap[MANUAL_P].channel),NULL,NULL}};

uint8_t menuOnExitMidiIn(uint8_t arg);
uint8_t menuOnExitMidiOut(uint8_t arg);

const __flash Menu_t menu_main[] =
	{{MENU_T_MENU_L,0,"MIDIin",menu_midiIn,NULL,NULL,menuOnExitMidiIn},
	{MENU_T_MENU,0,"MIDIout",menu_midiOut,NULL,NULL,menuOnExitMidiOut},
	{MENU_T_MENU,0,"HWsetup",menu_hwInit,NULL,NULL,NULL},
	{MENU_T_MENU,0,"USB-Ser.",menu_USBser,NULL,NULL,NULL},
	{MENU_T_MENU,0,"Status",menu_status,NULL,NULL,NULL},
	{MENU_T_MENU_R,0,"Test",menu_Test,NULL,NULL,NULL}};

const __flash NibbleInfo_t nibbleInfo[MENU_T_COUNT] = {
	{0,{0,0,0,0,0,0,0,0}}, // MENU_T_MENU 1
	{2,{0,1,0,0,0,0,0,0}}, // MENU_T_VARBYTE 2
	{1,{3,0,0,0,0,0,0,0}}, // MENU_T_VARMIDICHAN 3
	{2,{0,2,0,0,0,0,0,0}}, // MENU_T_VARNOTE 4
	{3,{1,3,4,0,0,0,0,0}}, // MENU_T_MODBIT 5
	{3,{0,1,2,0,0,0,0,0}}, // MENU_T_VARDEC 6
	{1,{0,0,0,0,0,0,0,0}}, // MENU_T_VARMANUAL 7 // 0..3,- (0xFF)
	{1,{0,0,0,0,0,0,0,0}}, // MENU_T_VARSECTION 8 // 0..3
	{1,{0,0,0,0,0,0,0,0}}, // MENU_T_VARONOFF 9 // on 0xFF /off 0x00
	{8,{0,1,2,3,4,5,6,7}}, // MENU_T_VARBIN 10 // one byte as 8x 1/0
	{8,{0,1,2,3,4,5,6,7}}}; // MENU_T_VARLONG 9 // 32bit

const __flash char initMenuText[MENU_LCD_MENUTEXTLEN] = "Start";
const __flash char MenuMIDIInText[] = "In:";
const __flash char MenuMIDIOutText[] = "Out:";

// *************************************************** V A R ***************************************
const __flash Menu_t* currentMenu;
const __flash Menu_t* menuStack[MENU_MAX_STACK];  // last Menus
uint8_t menuStackIndex; // index points to free entry. index == 0 -> no parent menu

uint8_t nibbleIndex; // store nibblepos while data entry 0 = left, 0xFF = no nibble (not editing)
uint8_t nibbleCount; // current max nibbles
uint8_t nibble[MENU_MAX_NIBBLE];

uint16_t DataAdressOffset;
uint8_t dataEntry;
uint32_t dataEntry32;
uint8_t dataType;
uint8_t lcdData[MENU_LCD_DATALEN];
const __flash NibbleInfo_t* pNibbleInfo;

uint8_t menuNote;
uint8_t menuMidiChan;
uint8_t menuSection;
uint8_t menuManual;
uint8_t menuTestModuleBit;
uint8_t menuTestData;
uint8_t menuTopLevelExit; // FALSE if regular exit from processMenu, TRUE if Key Up in top level menu  is pressed


//***************************I N D I V I D U A L   M E N U   F U N C T I O N S ******************************

uint8_t menuOnEnterStatusMidiIn(uint8_t arg){
	uint8_t byteCount;
	uint8_t *pByte;
	menuCursorSetExtra();
	lcd_puts_P(MenuMIDIInText);
	lcd_wordout(midiRxBytesCount);
	lcd_putc('-');
	// 3 bytes out of in buffer
	if (midiRxBytesCount < 4) {
		byteCount = midiRxBytesCount;
		} else {
		byteCount = 4;
	}
	pByte = & (midiRxBuffer[midiRxInIndex]);
	pByte--;
	while (byteCount > 0){
		if (pByte < &(midiRxBuffer[0])){
			pByte = &(midiRxBuffer[MIDI_RX_BUFFER_SIZE-1]);
		}
		lcd_hexout(*pByte--);
		if (--byteCount != 0) {
			lcd_putc(' ');
		}
	}
	return 0;
}
uint8_t menuOnEnterStatusMidiOut(uint8_t arg){
	uint8_t byteCount;
	uint8_t *pByte;
	menuCursorSetExtra();
	lcd_puts_P(MenuMIDIOutText);
	lcd_wordout(midiTxBytesCount);
	lcd_putc('-');
	// 3 bytes out of in buffer
	if (midiTxBytesCount < 4) {
		byteCount = midiTxBytesCount;
		} else {
		byteCount = 4;
	}
	pByte = & (midiTxBuffer[midiTxInIndex]);
	pByte--;
	while (byteCount > 0){
		if (pByte < &(midiTxBuffer[0])){
			pByte = &(midiTxBuffer[MIDI_TX_BUFFER_SIZE-1]);
		}
		lcd_hexout(*pByte--);
		if (--byteCount != 0) {
			lcd_putc(' ');
		}
	}
	return 0;
}

uint8_t menuOnExitMidiChannelSection(uint8_t arg){
	menuCursorSetExtra();
	lcd_putc('C');
	lcd_putc('h');
	uint8_t myChannel = (menuMidiChan & 0x0F) + 1;
	if (myChannel > 9 ) {
		lcd_putc('1');
		lcd_putc(myChannel-10+'0');
	} else {
		lcd_putc('0');
		lcd_putc(myChannel+'0');
	}
	lcd_putc('s');
	lcd_putc('0' + (menuSection & 0x03));
	DataAdressOffset = (&(midiInMap[menuMidiChan & 0x0F][menuSection & 0x03]) - &(midiInMap[0][0])) * sizeof(MidiInMap_t);
	// pointer offset in memory bytes (!) for midiInMap[MIDI_CHANNEL_COUNT][MIDI_SPLIT_COUNT], so adress in (currentMenu->pVar) is index only!
	// sizeof() neccessary because adress calculation in menu function assumes uint8_t !
	return 0; // here no meaning
}

uint8_t menuOnExitManualSection(uint8_t arg){
	menuCursorSetExtra();
	lcd_putc('M');
	lcd_putc(':');
	lcd_ManualOut(menuManual);
	lcd_putc('s');
	lcd_putc('0' + (menuSection & 0x03));
	DataAdressOffset = (&(manualMap[menuMidiChan & 0x0F][menuSection & 0x03]) - &(manualMap[0][0])) * sizeof(ManualMap_t);
	// pointer offset in memory bytes (!) for manualMap[MANUAL_COUNT][RANGE_COUNT], so address in (currentMenu->pVar) is index only!
	// sizeof() neccessary because adress calculation in menu function assumes uint8_t !
	return 0; // here no meaning
}

uint8_t menuOnExitMidiIn(uint8_t arg){
	eeprom_UpdateMidiInMap();
	return 0;
}

uint8_t menuOnExitMidiOut(uint8_t arg){
	eeprom_UpdateMidiOutMap();
	return 0;
}

uint8_t menuOnExitManual(uint8_t arg){
	eeprom_UpdateManualMap();
	return 0;
}

uint8_t menuOnExitModules(uint8_t arg){
	eeprom_UpdateModules();
	return 0;
}


uint8_t menuOnExitTestModBit(uint8_t arg){
	menuCursorSetExtra();
	lcd_putc('M');
	lcd_putc('0'+(MODULE_BIT_TO_MODULE(menuTestModuleBit)));
	lcd_putc('B');
	uint8_t bitNr = MODULE_BIT_TO_BIT(menuTestModuleBit);
	uint8_t tens = 0;
	while (bitNr > 9){
		bitNr -= 10;
		tens++;
	}
	lcd_putc('0' + tens);
	lcd_putc('0' + bitNr);
	menuCursorSetMenu();
	return (0);
}

uint8_t menuOnEnterReadModBit(uint8_t arg){
	uint8_t input;
	lcd_goto(MENU_LCD_CURSOR_DATA);
	input = pipe[MODULE_BIT_TO_BIT(menuTestModuleBit)].pipeIn & (1 << MODULE_BIT_TO_MODULE(menuTestModuleBit));
	if (input == 0) {
		lcd_putc('L');
	} else {
		lcd_putc('H');
	}
	menuCursorSetMenu();
	return (0);
}

uint8_t menuOnEnterWriteModBit(uint8_t arg){
	if (menuTestData == 0){
		pipe[MODULE_BIT_TO_BIT(menuTestModuleBit)].pipeOut |= (1 << MODULE_BIT_TO_MODULE(menuTestModuleBit));
	} else {
		pipe[MODULE_BIT_TO_BIT(menuTestModuleBit)].pipeOut &= ~(1 << MODULE_BIT_TO_MODULE(menuTestModuleBit));
	}
	return 0;
}

const char logNone [] PROGMEM = "<none>";

uint8_t menuOnEnterLogDisp(uint8_t arg) {
	static uint8_t logEntryNr;
	uint8_t result = TRUE;
	// arg is message
	if (arg == MESSAGE_KEY_NONE){
		logEntryNr = log_count()-1; // may be invlaid, but checked later
	} else if (arg == MESSAGE_KEY_LEFT) {
		if (logEntryNr != 0) {
			logEntryNr--;
		}
	} else if (arg == MESSAGE_KEY_RIGHT) {
		if (logEntryNr+1 < log_count()) {
			logEntryNr++;
		}
	} else if (arg == MESSAGE_KEY_DOWN) {
		if (logEntryNr > 9) {
			logEntryNr = logEntryNr - 10;
		}
	} else if (arg == MESSAGE_KEY_UP) {
		logEntryNr = logEntryNr+10;
		if ((logEntryNr > log_count()-1) && (log_count() != 0)) {
			logEntryNr = log_count()-1;
		}
	} else {
		result = FALSE;
	}
	if (result == TRUE){
		// show LogDisp
		lcd_goto(MENU_LCD_CURSOR_EXTRA);
		if (log_count() == 0){
			lcd_puts_P(logNone);
			result = FALSE;
		} else {
			lcd_dec2out(logEntryNr+1);
			lcd_putc(':');
			lcd_puts(log_getShortTextFromIndex(logEntryNr,LOG_CHAR_READ));
			lcd_clrEol();
			menuCursorSetExtra();
		}
	}
	return result;
}

uint8_t menuOnExitTestManualMan(uint8_t arg){
	menuCursorSetExtra();
	lcd_putc('M');
	lcd_putc(':');
	lcd_ManualOut(menuManual);
	menuCursorSetMenu();
	return (0);
}

const char stringNotAssigen [] PROGMEM = "unassigned";

uint8_t menuOnEnterTestManual(uint8_t arg) {
	static uint8_t minManNote;
	static uint8_t maxManNote;
	static uint8_t notOnOff;
	uint8_t result = TRUE;
	// arg is message
	if (arg == MESSAGE_KEY_NONE){
		// start: edit manual, set key to 0 to indicate that
		minManNote = MIDI_NOTE_NONE; // set to 0xFF as start to find lowest note of manual
		maxManNote = 0;
		if (menuManual > MANUAL_P) {
			menuManual = MANUAL_III;
		}
		for (uint8_t i = 0; i < RANGE_COUNT; i++){
			if (manualMap[menuManual][i].startNote < minManNote){
				minManNote = manualMap[menuManual][i].startNote;
			}
			if (manualMap[menuManual][i].endNote > maxManNote){
				maxManNote = manualMap[menuManual][i].endNote;
			}
		}
		if (minManNote > MIDI_NOTE_MAX){
			// manual not assigned
			lcd_goto(MENU_LCD_CURSOR_DATA);
			lcd_puts_P(stringNotAssigen);
			menuNote = MIDI_NOTE_NONE; // wait till next message to exit
		} else {
			menuNote = minManNote;
			notOnOff = NOTE_OFF;
		}
		keylabel_set(0,keylabel_exit);
		keylabel_set(1,keylabel_onoff);
		keylabel_set(2,keylabel_minus);
		keylabel_set(3,keylabel_plus);
		keylabel_toLCD();
	} else if (menuNote == MIDI_NOTE_NONE) {
		result = FALSE;	// next message after manual not assigend, now exit
	} else if (arg == MESSAGE_KEY_RIGHT) {
		if (menuNote < maxManNote){
			manual_NoteOnOff(menuManual,menuNote,NOTE_OFF);
			menuNote++;
			if (notOnOff == NOTE_ON){
				manual_NoteOnOff(menuManual,menuNote,NOTE_ON);
			}
		}
	} else if (arg == MESSAGE_KEY_LEFT) {
		if (menuNote > minManNote){
			manual_NoteOnOff(menuManual,menuNote,NOTE_OFF);
			menuNote--;
			if (notOnOff == NOTE_ON){
				manual_NoteOnOff(menuManual,menuNote,NOTE_ON);
			}
		}
	} else if (arg == MESSAGE_KEY_DOWN) {
		if (notOnOff == NOTE_OFF){
			notOnOff = NOTE_ON;
		} else {
			notOnOff = NOTE_OFF;
		}
		manual_NoteOnOff(menuManual,menuNote,notOnOff);
	} else if ((arg == MESSAGE_KEY_UP) || (arg == MESSAGE_KEY_ESC)) {
		manual_NoteOnOff(menuManual,menuNote,NOTE_OFF);
		result = FALSE;
	} else if (arg == MESSAGE_KEY_SEL) {
		manual_NoteOnOff(menuManual,menuNote,NOTE_OFF);
		result = FALSE;
	}
	if (result == TRUE){
		// show status
		if (menuNote != MIDI_NOTE_NONE) {
			// not if "unassigend" is printed before
			lcd_goto(MENU_LCD_CURSOR_DATA);
			lcd_noteOut(menuNote);
			lcd_putc(' ');
			lcd_putc('o');
			if (notOnOff == NOTE_OFF){
				lcd_putc('f');
				lcd_putc('f');
			} else {
				lcd_putc('n');
				lcd_putc(' ');
			}
		}
		lcd_goto(MENU_LCD_CURSOR_DATA);
	}
	return result;
}

uint8_t menuOnEnterEESave(uint8_t arg){
	eeprom_Backup();
	return 0;
}

const char usbEmpty [] PROGMEM = "empty\r\n";
const char usbLog [] PROGMEM = "Log\r\n";

uint8_t menuOnEnterUSBprotokoll(uint8_t arg){
	serial0SER_USB_sendStringP(usbLog);
	uint8_t count = log_count();
	if (count == 0) {
			serial0SER_USB_sendStringP(usbEmpty);
	} else {
		while (count-- > 0){
			serial0SER_USB_sendString(log_getShortTextFromIndex(count,LOG_CHANGENOTIFYNO));
			serial0SER_USB_sendStringP(cr_lf);
		}
	}
	return 0;
}

const char HelloMsg [] PROGMEM = "\r\nMIDI-Organ-Interface\r\n";

uint8_t menuOnExitUSBactive(uint8_t arg){
	eeprom_UpdateUSB();
	if (serusb_Active == TRUE){
		serial0SER_USB_sendStringP(HelloMsg);
		serial0SER_USB_sendStringP(sw_version);
		serial0SER_USB_sendStringP(cr_lf);
	}
	return 0;
}

const char usbHWtitel [] PROGMEM = "Hardware Configuration\r\n";
const char usbHWmodulInst [] PROGMEM = "Modules assigned: ";
const char usbHWmodulCheck [] PROGMEM = "Modules checked: ";
const char usbHWManual [] PROGMEM = "Manual: ";
const char usbHWRange [] PROGMEM = "Range: ";
const char usbHWempty [] PROGMEM = "empty";
const char usbHWmodule [] PROGMEM = "Module:";
const char usbHWBits [] PROGMEM = ",Bits:";

uint8_t menuOnEnterUSBsendHW(uint8_t arg){
	char* buffer;
	serial0SER_USB_sendStringP(usbHWtitel);
	serial0SER_USB_sendStringP(usbHWmodulInst);
	putChar_hex(pipe_ModuleAssigned,string_Buf);
	serial0SER_USB_sendString(string_Buf);
	serial0SER_USB_sendCRLF();
	serial0SER_USB_sendStringP(usbHWmodulCheck);
	putChar_hex(pipe_ModuleUsable,string_Buf);
	serial0SER_USB_sendString(string_Buf);
	serial0SER_USB_sendCRLF();
	for (uint8_t manual = 0; manual < MANUAL_COUNT; manual++){
		// out manual
		serial0SER_USB_sendStringP(usbHWManual);
		putChar_Manual(manual, string_Buf);
		serial0SER_USB_sendString(string_Buf);
		serial0SER_USB_sendCRLF();
		for (uint8_t range = 0; range < RANGE_COUNT; range++){
			// out range
			serial0SER_USB_sendStringP(usbHWRange);
			serial0SER_USBSend('0'+range);
			serial0SER_USBSend('-');
			serial0SER_USBSend(' ');
			buffer = putChar_hex(manualMap[manual][range].startNote, string_Buf);
			*buffer++ = ' ';
			buffer = putChar_hex(manualMap[manual][range].endNote, buffer);
			*buffer++ = ' ';
			buffer = putChar_hex(manualMap[manual][range].bitStart, buffer);
			*buffer++ = '=';
			serial0SER_USB_sendString(string_Buf);
			if (manualMap[manual][range].startNote > 0x7F){
				serial0SER_USB_sendStringP(usbHWempty);
			} else {
				buffer = putChar_Note(manualMap[manual][range].startNote, string_Buf);
				*buffer++ = '-';
				buffer = putChar_Note(manualMap[manual][range].endNote, buffer);
				*buffer++ = ' ';
				serial0SER_USB_sendString(string_Buf);
				serial0SER_USB_sendStringP(usbHWmodule);
				serial0SER_USBSend('0'+(manualMap[manual][range].bitStart >> 5));
				serial0SER_USB_sendStringP(usbHWBits);
				buffer = putChar_Dec2(manualMap[manual][range].bitStart & 0x1F,string_Buf);
				*buffer++ = '-';
				buffer = putChar_Dec2((manualMap[manual][range].bitStart & 0x1F) + manualMap[manual][range].endNote - manualMap[manual][range].startNote,buffer);
				serial0SER_USB_sendString(string_Buf);
			}
			serial0SER_USB_sendCRLF();
		}
	}
	return 0;
}

//*********************************************** F U N C T I O N S ******************************
// Public

void menu_Init(){
	menuStackIndex = 0; // no parent
	currentMenu = &menu_main[0]; // Main Menu
	nibbleIndex = NIBBLE_NONE; // not editing
	pNibbleInfo = &(nibbleInfo[0]); // entry for MENU_T_MENU
}

void menu_InitLCD(){
	menuItemChanged(); // init pNibbleInfo, dataType, dataEntry and print Data or clear data space
	menuParentMenuToLCD(); // print name of parent menu
	menuCurrMenuToLCD();
	lcd_cursosblink(); // start blinking
}

//************************ I N T E R N A L    F U N C T I O N S ******************************

// --------------------Softkey Labels

void softkeyLeft(){
	keylabel_set(2,keylabel_left);
}

void softkeyRight(){
	keylabel_set(3,keylabel_right);
}

void softkeyDown(){
	keylabel_set(1,keylabel_down);
}

void softkeyUp(){
	keylabel_set(0,keylabel_up);
}

void softkeyPlus(){
	keylabel_set(0,keylabel_plus);
}

void softkeyMinus(){
	keylabel_set(1,keylabel_minus);
}

// ---------------------- Data Handling

void dataToNibbles(){

	switch(dataType){
	case MENU_T_VARBYTE:
		nibble[0] = dataEntry >> 4;
		nibble[1] = dataEntry & 0x0F;
		// nibbleCount = 2;
		break;
	case MENU_T_VARMIDICHAN:
		// nibbleCount = 2;
		if (dataEntry >= MIDI_CHANNEL_COUNT) {
			nibble[0] = 0xFF;
		} else {
			nibble[0] = dataEntry  + 1; // dataEntry: midi-channel 0x00..0x0F, nibbles: 01..16, channel: none= 0xFF
		}
		break;
	case MENU_T_VARNOTE:
		// nibbleCount = 2;
		if ((dataEntry & 0x80) != 0) {
			nibble[0] = 0x0;
			nibble[1] = 0xFF; // note "none" only in octave
		} else {
			nibble[1] = 0; // octave, 0=-1 "m", 1=0, 2=1
			while (dataEntry >= 12){
				nibble[1]++;
				dataEntry -= 12;
			}
			nibble[0] = dataEntry; // note, 0=c, 1=c#
		}
		break;
	case MENU_T_VARMODBIT:
		// nibbleCount = 3;
		nibble[0] = dataEntry >> 5; // module in Bit7-5
		dataEntry &= 0x1F;
		nibble[1] = 0;
		while (dataEntry >= 10){
			nibble[1]++;
			dataEntry -= 10;
		}
		nibble[2] = dataEntry;
		break;
	case MENU_T_VARDEC:
		// nibbleCount = 3;
		nibble[0] = 0;
		nibble[1] = 0;
		while (dataEntry >= 100){
			nibble[0]++;
			dataEntry -= 100;
		}
		while (dataEntry >= 10){
			nibble[1]++;
			dataEntry -= 10;
		}
		nibble[2] = dataEntry;
		break;
	case MENU_T_VARMANUAL:
		// III,II,I,P, - (=0xFF)
		if (dataEntry > MANUAL_P){
			nibble[0] = MANUAL_NONE;
		} else {
			nibble[0] = dataEntry;
		}
		break;
	case MENU_T_VARSECTION:
		// 0..3
		if (dataEntry > 3){
			nibble[0] = 3;
		} else {
			nibble[0] = dataEntry;
		}
		break;
	case MENU_T_VARONOFF:
		// on/off
		nibble[0] = dataEntry;
		break;
	case MENU_T_VARBIN:
		for (uint8_t i = 0; i<8; i++){
			nibble[i] = (dataEntry & 0x80) != 0 ? 1 : 0;
			dataEntry = dataEntry << 1;
		}
		break;
	case MENU_T_VARLONG:
		;
		uint8_t i = 8;
		uint8_t * pWordByte = (uint8_t *) & (dataEntry32);
		while (i-- != 0){
			nibble[i--] = *pWordByte & 0x0F;
			nibble[i] = *pWordByte++ >> 4;
		}
		break;
	}
}

void nibbleToLCDstring(){
	switch(dataType){
	case MENU_T_VARBYTE:
		lcdData[0] = nibbleToChr(nibble[0]);
		lcdData[1] = nibbleToChr(nibble[1]);
		lcdData[2] = 0;
		break;
	case MENU_T_VARMIDICHAN:
		lcdData[0] = 'C';
		lcdData[1] = 'h';
		if (nibble[0] == MIDI_CHANNEL_NONE) {
			lcdData[2] = '-';
			lcdData[3] = '-';
		} else {
			if (nibble[0] > 9) {
				lcdData[2] = '1';
				lcdData[3] = nibbleToChr(nibble[0]-10);
			} else {
				lcdData[2] = '0';
				lcdData[3] = nibbleToChr(nibble[0]);
			}
		}
		lcdData[4] = 0;
		break;
	case MENU_T_VARNOTE:
		if ((nibble[0] == 0xFF) || (nibble[1] == 0xFF)) {
			lcdData[0] = 'n';
			lcdData[1] = 'o';
			lcdData[2] = 'n';
			lcdData[3] = 'e';
			lcdData[4] = 0;
		} else {
			lcdData[1] = '_';
			if (nibble[0] == 11){
				lcdData[0] = 'H';
			} else if (nibble[0] < 5) {
				// C..E
				lcdData[0] = 'C' + (nibble[0] >> 1);
				if ((nibble[0] & 0x01) == 0x01) {
					lcdData[1] = '#';
				}
			} else {
				// F..A#
				lcdData[0] = 'F' + ((nibble[0]-5) >> 1);
				if ((nibble[0] & 0x01) == 0x00) {
					lcdData[1] = '#';
				}
				if (lcdData[0] == 'H'){
					lcdData[0] = 'A';
				}
			}
			if (nibble[1] == 0){
				lcdData[2] = 'm';
			} else if (nibble[1] < 12) {
				lcdData[2] = nibbleToChr(nibble[1]-1);
			} else {
				lcdData[2] = '-';
			}
			lcdData[3] = 0;
		}
		break;
	case MENU_T_VARMODBIT:
		lcdData[0] = 'M';
		lcdData[1] = nibbleToChr(nibble[0]);
		lcdData[2] = 'B';
		lcdData[3] = nibbleToChr(nibble[1]);
		lcdData[4] = nibbleToChr(nibble[2]);
		lcdData[5] = 0;
		break;
	case MENU_T_VARDEC:
		lcdData[0] = nibbleToChr(nibble[0]);
		lcdData[1] = nibbleToChr(nibble[1]);
		lcdData[2] = nibbleToChr(nibble[2]);
		lcdData[3] = 0;
		break;
	case MENU_T_VARMANUAL:
		#ifndef MENU_MANUAL_ARAB
			if (nibble[0] == MANUAL_NONE){
				lcdData[0] = '-';
				lcdData[1] = '-';
				lcdData[2] = '-';
				lcdData[3] = '\0';
			} else if (nibble[0] == MANUAL_P){
				lcdData[0] = 'P';
				lcdData[1] = '\0';
			} else {
				lcdData[0] = 'I';
				if (nibble[0] < MANUAL_I) {
					lcdData[1] = 'I';
					if (nibble[0] < MANUAL_II) {
						lcdData[2] = 'I';
						lcdData[3] = '\0';
					} else {
						lcdData[2] = '\0';
					}
				} else {
					lcdData[1] = '\0';
				}
			}
		#else
			if (nibble[0] <= MANUAL_I){
				lcdData[0] = '3'-nibble[0];
			} else if (nibble[0] == MANUAL_P){
				lcdData[0] = 'P';
			} else {
				lcdData[0] = '-';
			}
			lcdData[1] = '\0';
		#endif
		break;
	case MENU_T_VARSECTION:
		lcdData[0] = nibble[0] + '0';
		lcdData[1] = '\0';
		break;
	case MENU_T_VARONOFF:
		lcdData[0] = 'o';
		if (nibble[0] == FALSE) {
			lcdData[1] = 'f';
			lcdData[2] = 'f';
			lcdData[3] = '\0';
		} else {
			lcdData[1] = 'n';
			lcdData[2] = '\0';
		}
		break;
	case MENU_T_VARBIN:
	case MENU_T_VARLONG:
		;
		for (uint8_t i=0; i<8; i++){
			lcdData[i] = nibbleToChr(nibble[i]);
		}
		break;
	}
}

void LCDStringOut(){
	lcd_goto(MENU_LCD_CURSOR_DATA);
	uint8_t* pData = lcdData;
	uint8_t outdata;
	for (uint8_t i = 0; i < MENU_LCD_DATALEN; i++){
		if ((outdata = *pData) == '\0'){
			outdata = ' ';
		} else {
			pData++;
		}
		lcd_putc(outdata);
	}
}

uint8_t nibbleCheckOvfl(int8_t myNibble){
	// check if signed nibble has underflow (-1 -> 9) or overflow (10 -> 0) and return corrected value
	if (myNibble > 9) {
		return (0);
	} else if (myNibble < 0) {
		return (9);
	}
	return myNibble;
}

void nibbleChange(uint8_t nibbleNr , int8_t addValue){
	// addValue only +1 and -1 to nibble;
	// checks for valid nibbles after change
	uint8_t allowInvalid = (currentMenu->menuFlags & MENU_FLAG_ALLOWINVALD);
	switch(dataType){
		case MENU_T_VARBYTE:
		case MENU_T_VARLONG:
			nibble[nibbleNr] = (nibble[nibbleNr] + addValue) & 0x0F;
			break;
		case MENU_T_VARMIDICHAN:
			if (allowInvalid == 0) {
				// 1 -> 2 -> ... -> 16 -> 1
				if ((addValue == 1)	 && (nibble[0] == 16)){
					nibble[0] = 1;
				} else if ((addValue == -1)	 && (nibble[0] == 1)){
					nibble[0] = 16;
				} else {
					nibble[0] = nibble[0] + addValue;
				}
			} else {
				// 1 -> 2 -> ... -> 16 -> 0xFF -> 1
				if ((addValue == 1)	 && (nibble[0] == 16)){
					nibble[0] = 0xFF;
				} else if ((addValue == 1)	 && (nibble[0] == 0xFF)){
					nibble[0] = 1;
				} else if ((addValue == -1)	 && (nibble[0] == 0xFF)){
					nibble[0] = 16;
				} else if ((addValue == -1)	 && (nibble[0] == 1)){
					nibble[0] = 0xFF;
				} else {
					nibble[0] = nibble[0] + addValue;
				}
			}
			break;
		case MENU_T_VARNOTE:
			if (nibble[1] == 0xFF) {
				// if note none allow editin octave only
				nibbleNr = 1;
			}
			if (nibbleNr == 0){
				// note
				uint8_t newNote = nibble[0];
				if (newNote >= 12){
					// should not happen here
					newNote = 0;
				} else if ((newNote == 11) && (addValue == 1)) {
					newNote = 0;
				} else if ((newNote == 0) && (addValue == -1)) {
					newNote = 11;
				} else  {
					newNote = newNote+addValue;
				}
				nibble[0] = newNote;
			} else {
				// octave
				uint8_t octave = nibble[1];
				if (allowInvalid == 0){
					if ((octave == 0) && (addValue == -1)){
						octave = 10;
					} else if ((octave == 10) && (addValue == 1)){
						octave = 0;
					} else {
						octave = octave + addValue;
					}
				} else {
					if ((octave == 0) && (addValue == -1)){
						octave = 0xFF;
					} else if ((octave == 10) && (addValue == 1)){
						octave = 0xFF;
					} else if ((octave == 0xFF) && (addValue == 1)){
						octave = 0;
					} else if ((octave == 0xFF) && (addValue == -1)){
						octave = 10;
					} else {
						octave = octave + addValue;
					}
				}
				nibble[1] = octave;
			}
			if ((nibble[0] != 0xFF) && (nibble[1] != 0xFF)) {
				uint8_t newOctNote;
				newOctNote = nibble[0] + 12 * nibble[1];
				if (newOctNote > 127){
					nibble[0] = 7;
					nibble[1] = 10; // 10*12+7 = 127 = max Note
				}
			}
			break;
		case MENU_T_VARMODBIT:
			if (nibbleNr == 0) {
				// modul Nr
				nibble[0] = (nibble[0] + addValue) & 0x07;
			} else {
				nibble[nibbleNr] = nibbleCheckOvfl(nibble[nibbleNr] + addValue);
				int8_t bitNr = 10 * nibble[1] + nibble[2];
				if (bitNr > 31){
					nibble[1] = 3;
					nibble[2] = 1;
				} else if (bitNr < 0){
					nibble[1] = 0;
					nibble[2] = 0;
				}
			}
			break;
		case MENU_T_VARDEC:
			nibble[nibbleNr] = nibbleCheckOvfl(nibble[nibbleNr] + addValue);
			int16_t newDec = 100 * nibble[0] + 10 * nibble[1] + nibble[2];
			if (newDec > 255){
				nibble[0] = 2;
				nibble[1] = 5;
				nibble[2] = 5;
			}
			break;
		case MENU_T_VARMANUAL:
			if (allowInvalid) {
				nibble[nibbleNr] = nibble[nibbleNr] + addValue;
				// only handle MANUAL_NONE - 1 and MANUAL_P + 1
				if (nibble[nibbleNr] == MANUAL_P+1) {
					// overflow from manual P +1
					nibble[nibbleNr] = MANUAL_NONE;
				} else if (nibble[nibbleNr] == MANUAL_NONE-1) {
					nibble[nibbleNr] = MANUAL_P;
				}
			} else {
				if ((nibble[nibbleNr] == MANUAL_III) && (addValue == -1)){
					nibble[nibbleNr] = MANUAL_P;
				} else if ((nibble[nibbleNr] == MANUAL_P) && (addValue == 1)){
					nibble[nibbleNr] = MANUAL_III;
				} else {
					nibble[nibbleNr] = nibble[nibbleNr] + addValue;
				}
			}
			break;
		case MENU_T_VARSECTION:
			nibble[nibbleNr] = (nibble[nibbleNr] + addValue) & 0x03;
			break;
		case MENU_T_VARONOFF:
			nibble[0] = ~nibble[0];
			break;
		case MENU_T_VARBIN:
			nibble[nibbleNr] = (nibble[nibbleNr] + addValue) & 0x01;
			break;
	}
}

void nibbleToData(){
	// set dataEntry according to nibbles; checks valid range of dataEntry
	uint8_t tempb ;
	uint16_t temp;
	switch(dataType){
	case MENU_T_VARBYTE:
		dataEntry = (nibble[0] << 4) | (nibble[1] & 0x0F);
		break;
	case MENU_T_VARMIDICHAN:
		if (nibble[0] == 0xFF) {
			dataEntry = nibble[0];
		} else {
			dataEntry = nibble[0]-1;
		}
		break;
	case MENU_T_VARNOTE:
		if ((nibble[0] == 0xFF) || (nibble[1] == 0xFF)) {
			dataEntry = 0xFF;
		} else {
			dataEntry = 12 * nibble[1] + nibble[0];
		}
		break;
	case MENU_T_VARMODBIT:
		dataEntry = (nibble[0] << 5) & 0xE0;
		tempb = nibble[1] * 10 + nibble[2];
		if (tempb > 0x1F){
			dataEntry |= 0x1F;
		} else {
			dataEntry |= tempb;
		}
		break;
	case MENU_T_VARDEC:
		temp = nibble[0] * 100 + nibble[1] * 10 + nibble[2];
		if (temp > 255) {
			dataEntry = 255;
		} else {
			dataEntry = temp;
		}
		break;
	case MENU_T_VARMANUAL:
		dataEntry = nibble[0];
		if (dataEntry > MANUAL_P){
			dataEntry = MANUAL_NONE;
		}
		break;
	case MENU_T_VARSECTION:
		dataEntry = nibble[0] & 0x03;
		break;
	case MENU_T_VARONOFF:
		dataEntry = nibble[0];
		break;
	case MENU_T_VARBIN:
		dataEntry = 0;
		for (uint8_t i = 0; i<8; i++){
			dataEntry = dataEntry << 1;
			dataEntry = dataEntry + nibble[i];
		}
		break;
	case MENU_T_VARLONG:
		dataEntry32 = 0;
		uint8_t i = 8;
		uint8_t * pWordByte = (uint8_t *) & (dataEntry32);
		while (i-- != 0){
			*pWordByte++ = nibble[i--] + (nibble[i] << 4);
		}
		break;
	}
}


void menuTextOut(const __flash char* pChar, char finalChar){
	// output text and space up to MENU_TEXTLEN but first char after text is finalChar (for arrow)
	for (uint8_t i = 0; i < MENU_LCD_MENUTEXTLEN; i++){
		uint8_t outChar = *pChar;
		if (outChar == '\0'){
			outChar = finalChar; // text is finished, print finalChar
			finalChar = ' '; // after that clear with spaces
		} else {
			pChar++; // proceed to next char only if it was not \0
		}
		lcd_putc(outChar);
	}
}

void menuParentMenuToLCD(){
	lcd_goto(MENU_LCD_CURSOR_PARENT);
	if (menuStackIndex == 0) {
		// Topmenu
		menuTextOut(initMenuText, MENU_PARENTMENU_DELIM) ;
	} else {
		// Menu with parent
		const __flash Menu_t* pTopMenu = menuStack[menuStackIndex-1];
		menuTextOut(pTopMenu->text, MENU_PARENTMENU_DELIM ); // ':'
	}
}

void menuCurrMenuToLCD(){ // text out of current Menu Title to LCD and delimiters for left and right
	// set cursor to menu
	lcd_goto(MENU_LCD_CURSOR_MENU-1); // go 1 position before title
	uint8_t bound = currentMenu->menuType & MENU_T_BOUNDARY_MASK;
	// out arrow if you can navigate left
	if (bound == MENU_T_LEFTBOUND) {
		lcd_putc(MENU_LEFT_BOUND_CHAR);
		keylabel_clr(2);
	} else {
		lcd_putc(MENU_LEFT_SEL);
		softkeyLeft();
	}
	char rightDelimiter;
	// out arrow if you can navigate right
	if (bound == MENU_T_RIGHTBOUND) {
		rightDelimiter = MENU_RIGHT_BOUND_CHAR;
		keylabel_clr(3);
	} else {
		rightDelimiter = MENU_RIGHT_SEL;
		softkeyRight();
	}
	if (menuStackIndex == 0){
		keylabel_clr(0);
	} else {
		softkeyUp();
	}
	softkeyDown();
	menuTextOut(currentMenu->text, rightDelimiter); // prints Title and arrow to the right
	keylabel_toLCD();
	menuCursorSetMenu();
}

void menuDisplayValue(){
	// and set info from NibbleInfo
	if ((currentMenu->menuType  & MENU_T_REMOVEBOUND_MASK) > MENU_T_MENU){
		dataToNibbles();
		nibbleToLCDstring();
		LCDStringOut();
	}
}

inline void menuCursorSetDataNibble(){
	//if ((nibbleIndex != NIBBLE_NONE) && (nibbleIndex < MENU_MAX_NIBBLE)) {
		lcd_goto(MENU_LCD_CURSOR_DATA + pNibbleInfo->nibblePos[nibbleIndex]);
		if (nibbleIndex < pNibbleInfo->nibbleCount - 1) {
			softkeyRight();
		} else {
			keylabel_clr(3);
		}
		if (nibbleIndex > 0) {
			softkeyLeft();
		} else {
			keylabel_clr(2);
		}
		softkeyPlus();
		softkeyMinus();
		keylabel_toLCD();
	//}
}

inline void menuCursorSetData(){
	//if ((nibbleIndex != NIBBLE_NONE) && (nibbleIndex < MENU_MAX_NIBBLE)) {
	lcd_goto(MENU_LCD_CURSOR_DATA);
	//}
}

inline void menuCursorSetExtra(){
	// position for extra Data while editing Menu
	lcd_goto(MENU_LCD_CURSOR_EXTRA);
}

inline void menuCursorSetMenu(){
	// set blinking cursor to first char of menu title
	lcd_goto(MENU_LCD_CURSOR_MENU);
}

inline void menuCursorSetParent(){
	lcd_goto(MENU_LCD_CURSOR_PARENT);
}

void menuClearExtraDisp(){
	menuCursorSetExtra();
	lcd_blank(MENU_LCD_EXTRALEN);
}

void menuClearDataDisp(){
	menuCursorSetData();
	lcd_blank(MENU_LCD_DATALEN);
}

void menuClearMenuDisp(){
	menuCursorSetParent();
	lcd_blank(MENU_LCD_MENUTEXTLEN);
	menuCursorSetMenu();
	lcd_blank(MENU_LCD_MENUTEXTLEN);
}

void menu_ClearAllDisp(){
	menuClearMenuDisp();
	menuClearDataDisp();
	menuClearExtraDisp();
}

void menuItemChanged(){
	// called when currentMenu is updated within same menu to display meneu text and data if appropriate / clear data when none to display
	// init pNibbleInfo, dataType, dataEntry and print Data or clear data space
	if (((currentMenu->menuType & MENU_T_REMOVEBOUND_MASK) > MENU_T_MENU) && (currentMenu->pVar != NULL)) {
		// only if menu item is data and there is a pointer to data value
		pNibbleInfo = &(nibbleInfo[(currentMenu->menuType & MENU_T_REMOVEBOUND_MASK) - MENU_T_MENU]);
		nibbleCount = pNibbleInfo->nibbleCount;
		dataType = (currentMenu->menuType & MENU_T_REMOVEBOUND_MASK);
		uint8_t* pData = (uint8_t*) currentMenu->pVar + (((currentMenu->menuFlags & MENU_FLAG_DATAOFFSET) != 0) ? DataAdressOffset : 0); // get data from pointer and offset
		if ((currentMenu->menuType & MENU_T_REMOVEBOUND_MASK) == MENU_T_VARLONG) {
			dataEntry32 = * (uint32_t *) pData;
		} else {
			dataEntry = *pData;
		}
		menuDisplayValue();
	} else {
		menuClearDataDisp();
		pNibbleInfo = &(nibbleInfo[0]);
	}
	menuCursorSetMenu();
}

void menuResetVars(){
	// reset all vars that mihgt be used in this menu level
	menuMidiChan = 0;
	menuSection = 0;
	DataAdressOffset = 0;
}

void menu_ProcessMessage(uint8_t message){
	// called when there is a message to be processed. Exits when new message is awaited
	// status defined in
	menuTopLevelExit = FALSE;
	lcd_cursosblink();
	if (((currentMenu->menuType & MENU_T_REMOVEBOUND_MASK) == MENU_T_MENU) || (nibbleIndex == NIBBLE_NONE)){
		// menu item or data and showing value only
		if ((currentMenu->menuFlags & MENU_FLAG_CLEAREXTRA) != 0) {
			menuClearExtraDisp();
			menuCursorSetMenu();
		}
		if (((currentMenu->menuFlags & MENU_FLAG_FNHANDLEMESSAGE) != 0) && (currentMenu->pFunc != NULL) && (nibbleIndex != NIBBLE_NONE)) {
			// only of menu item wants message and function defined and function still wants messages
			// message handling by function
			if (currentMenu->pFunc (message) == TRUE) {
				// function still wants messages
				nibbleIndex = 0;
			} else {
				// function wants no more messages
				menuClearExtraDisp();
				menuClearDataDisp();
				menuCursorSetMenu();
				nibbleIndex = NIBBLE_NONE;
			}
		} else {
			// message handling is done here
			switch (message){
			case MESSAGE_KEY_RIGHT:
				// select right menu item
				if ((currentMenu->menuType & MENU_T_BOUNDARY_MASK) != MENU_T_RIGHTBOUND){
					// only if not at right border
					currentMenu++;
					menuItemChanged();
					menuCurrMenuToLCD();
				}
				break;
			case MESSAGE_KEY_LEFT:
				// select left menu item
				if ((currentMenu->menuType & MENU_T_BOUNDARY_MASK) != MENU_T_LEFTBOUND){
					// only if not at right border
					currentMenu--;
					menuItemChanged();
					menuCurrMenuToLCD();
				}
				break;
			case MESSAGE_KEY_UP:
			case MESSAGE_KEY_ESC:
				// goto parent menu
				if (menuStackIndex > 0){
					// only if there is a parent menu: back to parent
					currentMenu = menuStack[--menuStackIndex];
					if (currentMenu->pOnExitFunc != NULL){
						// exit function supplied in parent?
						currentMenu->pOnExitFunc (0);
					}
					menuClearExtraDisp();
					menuParentMenuToLCD();
					menuCurrMenuToLCD();
					menuResetVars();
					menuItemChanged();
				} else {
					menuTopLevelExit = TRUE;
					keylabel_clr(0);
					keylabel_clr(1);
					keylabel_clr(2);
					keylabel_clr(3);
					keylabel_toLCD();
					lcd_cursoroff();
				}
				break;
			case MESSAGE_KEY_DOWN:
			case MESSAGE_KEY_SEL:
				// enter child menu or edit value
				if (((currentMenu->menuType & MENU_T_REMOVEBOUND_MASK) > MENU_T_MENU) && (currentMenu->pVar) != NULL){
					// Data Item selected
					// only when there is a pointer to data
					nibbleIndex = 0; // indicates that data is to be edited
					menuCursorSetDataNibble();
				} else {
					// Menu selected
					nibbleIndex = NIBBLE_NONE; // indicates that we are not editing
					if (currentMenu->pFunc != NULL) {
						// call menu function if supplied
						if ((currentMenu->menuFlags & MENU_FLAG_FNHANDLEMESSAGE) != 0) {
							// this function wants message and return TRUE if further message is wanted (currently: no message)
							if (currentMenu->pFunc (MESSAGE_KEY_NONE) == TRUE) {
								nibbleIndex = 0; // function wants more messages
							} else {
								menuClearExtraDisp();
								menuClearDataDisp();
								menuCursorSetMenu();
								nibbleIndex = NIBBLE_NONE;
							}
							// we don't set cursor because function is supposed to do so
						} else {
							currentMenu->pFunc (0);
							menuCursorSetMenu();
						}
					}
					if (currentMenu->pMenu != NULL){
						// open submenu
						if (menuStackIndex < MENU_MAX_STACK) {
							menuStack[menuStackIndex++] = currentMenu;
							currentMenu = currentMenu->pMenu;
							menuClearExtraDisp();
							menuParentMenuToLCD();
							menuCurrMenuToLCD();
							menuResetVars();
							menuItemChanged();
						}
					}
				}
				break;
			} // switch
		} // else
	} else {
		// MENU_T_VAR and editing (nibbleIndex != NIBBLE_NONE)
		switch (message){
		case MESSAGE_KEY_RIGHT:
			// cursor right
			if (nibbleIndex < pNibbleInfo->nibbleCount - 1){
				nibbleIndex++;
				menuCursorSetDataNibble();
			}
			break;
		case MESSAGE_KEY_LEFT:
			// cursor left
			if (nibbleIndex > 0){
				nibbleIndex--;
				menuCursorSetDataNibble();
			}
			break;
		case MESSAGE_KEY_UP:
			// increment value
			nibbleChange(nibbleIndex,1);
			nibbleToData();
			menuDisplayValue();
			menuCursorSetDataNibble();
			break;
		case MESSAGE_KEY_DOWN:
			// decrement value
			nibbleChange(nibbleIndex,-1);
			nibbleToData();
			menuDisplayValue();
			menuCursorSetDataNibble();
			break;
		case MESSAGE_KEY_SEL:
			// update var, back to showing
			nibbleToData();
			if (currentMenu->pVar != NULL){
				uint8_t* pData = ((uint8_t *) currentMenu->pVar) + (((currentMenu->menuFlags & MENU_FLAG_DATAOFFSET) != 0) ? DataAdressOffset : 0);
				*pData = dataEntry;
			}
		case MESSAGE_KEY_ESC: // constinued from SEL -> but different to lines ahead: don't change var
			if (currentMenu->pOnExitFunc != NULL){
				currentMenu->pOnExitFunc (0);
			}
			nibbleIndex = NIBBLE_NONE;
			menuCurrMenuToLCD();
			menuItemChanged();
			break;
		}
	}
}

