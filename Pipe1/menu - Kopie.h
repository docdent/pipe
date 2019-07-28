/*
 * menu.h
 *
 * Created: 07.02.2019 14:03:08
 *  Author: Anwender
 */

#include "hw_defs.h"

#ifndef MENU_H_
#define MENU_H_

//******************************************* INTERNAL **************************************************
//---------------------------------------- MENU IN FLASH --------------------------------------------------
// menu in flash
#define MENU_MENUTEXTLEN 10

#define MENU_T_NUL 0
#define MENU_T_MENU 1
#define MENU_T_VARBYTE 2
#define MENU_T_VARMIDICHAN 3
#define MENU_T_VARNOTE 4
#define MENU_T_VARMODBIT 5
#define MENU_T_VARDEC 6
#define MENU_T_VARMANUAL 7
#define MENU_T_VARSECTION 8
#define MENU_T_VARONOFF 9
#define MENU_T_VARBIN 10
#define MENU_T_VARLONG 11
#define MENU_T_COUNT 12

#define MENU_T_LEFTBOUND 0x80 // Set bit 7 or 6 for first/last entry in menu-row
#define MENU_T_RIGHTBOUND 0xC0
#define MENU_LEFT_BOUND_CHAR ' '
#define MENU_RIGHT_BOUND_CHAR ' '
#define MENU_T_BOUNDARY_MASK 0xC0
#define MENU_T_REMOVEBOUND_MASK 0x3F
#define MENU_T_MENU_L (MENU_T_MENU | MENU_T_LEFTBOUND)
#define MENU_T_MENU_R (MENU_T_MENU | MENU_T_RIGHTBOUND)

#define MENU_FLAG_DATAOFFSET 0x80 // in Menu_t.menuFlags use DataAdressOffset as offset for var pointer
#define MENU_FLAG_CLEAREXTRA 0x40 // clear lcd_extra on exiting menu item
#define MENU_FLAG_FNHANDLEMESSAGE 0x20 // Menu_t.pFunc handles message when called with message; will return TRUE if further message handling is requested
#define MENU_FLAG_ALLOWINVALD 0x10 // Variables may have status invalid in editing

typedef uint8_t (*MenuFunc_t) (uint8_t arg); // function called by menu; pointer in flash

typedef struct Menu {
	const uint8_t menuType;
	const uint8_t menuFlags;
	const char text [MENU_MENUTEXTLEN];
	const __flash struct Menu *pMenu; // pointer to next menu
	uint8_t * pVar; // pointer to Var for display and edit handled by menu_ProcessMessage -> for type MENU_T_VAR... only
		// for MENU_T_MENU: universal uin16 tag or pointer to some var.
	MenuFunc_t pFunc; // pointer to function (for type MENU_T_MENU... only)
	MenuFunc_t pOnExitFunc; // pointer to func that is called after editing (for type MENU_T_VAR... only)
} Menu_t;

//--------------------------------------------- LCD ---------------------------------------------------------
#define MENU_MIDI_IO_SIGN 0x7E // right arrow
#define MENU_PARENTMENU_DELIM ':' // displayed after parent menu
#define MENU_LEFT_SEL 0x7F // left arrow
#define MENU_RIGHT_SEL 0x7E // right arrow

// cursor
#ifdef LCD_KBD_SHIELD
	#define MENU_LCD_MENUTEXTLEN 8 // 7 valid chars
	#define MENU_LCD_DATALEN 8
	#define MENU_LCD_CURSOR_DATA (LCD_LINE1 + 8)
	#define MENU_LCD_DATALEN 8
	#define MENU_LCD_CURSOR_EXTRA LCD_LINE1
	#define MENU_LCD_EXTRALEN 8
	#define MENU_LCD_CURSOR_PARENT LCD_LINE0
	#define MENU_LCD_CURSOR_MENU (LCD_LINE0 + 8)
	#define MENU_LCD_CURSOR_STATUS LCD_LINE0
	#define MENU_LCD_CURSOR_STAT_MIDIIN (LCD_LINE0+0)
	#define MENU_LCD_CURSOR_STAT_MIDIOUT (LCD_LINE0+16-4)
	#define MENU_LCD_CURSOR_STAT_CENTRAL (LCD_LINE0+8-3)
#else
	#define MENU_LCD_MENUTEXTLEN 10 // 9 valid chars
	#define MENU_LCD_DATALEN 10
	#define MENU_LCD_EXTRALEN 10
	#define MENU_LCD_CURSOR_PARENT LCD_LINE1
	#define MENU_LCD_CURSOR_MENU (LCD_LINE1 + 10)
	#define MENU_LCD_CURSOR_DATA (LCD_LINE2 + 10)
	#define MENU_LCD_CURSOR_EXTRA LCD_LINE2
	#define MENU_LCD_CURSOR_STATUS LCD_LINE0
	#define MENU_LCD_CURSOR_STAT_MIDIIN (LCD_LINE0+0)
	#define MENU_LCD_CURSOR_STAT_MIDIOUT (LCD_LINE0+20-4)
	#define MENU_LCD_CURSOR_STAT_CENTRAL (LCD_LINE0+10-3)
#endif

//---------------------------------- MENU AND VAR DISPLAY AND EDIT ---------------------------------------
#define MENU_MAX_STACK 16
extern const __flash Menu_t * menuStack[MENU_MAX_STACK];

uint8_t lcdData[MENU_LCD_DATALEN];
#define MENU_MAX_NIBBLE 8

#define NIBBLE_NONE 0xFF

typedef struct {
	uint8_t nibbleCount;
	uint8_t nibblePos[MENU_MAX_NIBBLE];
} NibbleInfo_t;

extern uint16_t DataAdressOffset; // should be manually set in menuOnExit... and used if MENU_FLAG_DATAOFFSET
extern uint8_t menuNote;
extern uint8_t menuMidiChan;
extern uint8_t menuSection;
extern uint8_t menuManual;
extern uint8_t menuTestModuleBit;
extern uint8_t menuTestData;
extern uint8_t menuTopLevelExit;
extern uint8_t menuVmidiChan;
extern uint8_t menuVsection;
extern uint8_t menuVmanual;
extern uint8_t menuVkey;
extern uint8_t menuVmodule;

extern void menuCurrMenuToLCD();
extern void menuParentMenuToLCD();
extern void menuTextOut(const __flash char* pChar, char finalChar);
extern void menuItemChanged();
extern void menuCursorSetExtra();
extern void menuCursorSetMenu();
extern void menuResetVars();
extern void menuClearMenuDisp(); // menu and parent text
extern void menuClearDataDisp();
extern void menuClearExtraDisp();
extern void menuDisplayValue();
extern void menuTextOut(const __flash char* pChar, char finalChar);
extern void menuCursorSetDataNibble(); // sets cursors to position of current editing nibble

extern void nibbleToData();
extern void nibbleChange(uint8_t nibbleNr , int8_t addValue);
uint8_t nibbleCheckOvfl(int8_t myNibble);
extern void LCDStringOut();
extern void nibbleToLCDstring();
extern void dataToNibbles();

//******************************* external defs ***************************

#define MENU_MANUAL_ARAB // 1,2,3,P arabic I,II,III,P roman

extern void menu_Init(); // init vars
extern void menu_InitLCD(); // init LCD - after init_Menu()
extern void menu_ProcessMessage(uint8_t message); // process message, update LCD and variables, call functions and return to caller when next msg is awaited
extern void menu_ClearAllDisp(); // clears all LCD areas that are used by menu functions

extern const char sw_version [] PROGMEM;
extern const char HelloMsg [] PROGMEM;

#endif /* MENU_H_ */