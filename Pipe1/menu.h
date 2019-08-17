/*
 * menu.h
 *
 * Created: 07.02.2019 14:03:08
 *  Author: Anwender
 */

#include "hw_defs.h"
#include "Midi.h"

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
#define MENU_T_VARPROG 12
#define MENU_T_VARREG 13
#define MENU_T_VARBINREG 14
#define MENU_T_COUNT 15

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
#define MENU_FLAG_MENU_SOFTKEY 0x10 // dual use: Menu ist Softkey; Do not enter submenu
#define MENU_FLAG_READONLY 0x08 // Variable cannot be edited
#define MENU_FLAG_ENTER_STORED_MENU 0x08 // Menu: if menuVMenuSoftKey != NULL: use this menu adress

typedef uint8_t (*MenuFunc_t) (uint8_t arg); // function called by menu; pointer in flash

typedef struct Menu {
	const uint8_t menuType;
	const uint8_t menuFlags;
	const char text [MENU_MENUTEXTLEN];
	const __flash struct Menu *pMenu; // pointer to next menu; if MENU_FLAG_MENU_SOFTKEY: menu to be called, do not enter now!
	union {
		uint8_t * pVar; // pointer to Var for display and edit handled by menu_ProcessMessage -> for type MENU_T_VAR... only
		uint16_t tag;// for MENU_T_MENU: universal uin16 tag or pointer to some var.
		const __flash char* pString;
	};
	MenuFunc_t pFunc; // pointer to function (for type MENU_T_MENU... only) if MENU_FLAG_MENU_SOFTKEY: menu to be called then, do not call now!
		// MENU_T_VAR... called before var is edited (after MESSAGE_KEY_DOWN/SEL) with message as parameter
	MenuFunc_t pOnExitFunc; // pointer to func that is called after editing (for type MENU_T_VAR... only)
		// MENU_T_VAR... called after var is edited (after MESSAGE_KEY_UP/ESC/DOWN/SEL) with message as parameter

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
	#define MENU_LCD_CURSOR_MAINMESSAGE LCD_LINE1
	#define MENU_LCD_LEN_MAINMESSAGE 16
	#define MENU_LCD_CURSOR_PARENT LCD_LINE0
	#define MENU_LCD_CURSOR_MENU (LCD_LINE0 + 8)
	#define MENU_LCD_CURSOR_STATUS LCD_LINE0
	#define MENU_LCD_CURSOR_STAT_MIDIIN (LCD_LINE0+0)
	#define MENU_LCD_CURSOR_STAT_MIDIOUT (LCD_LINE0+16-6)
	#define MENU_LCD_CURSOR_STAT_CENTRAL (LCD_LINE0+8-3)
	#define MENU_LCD_CURSOR_STAT_PWR (MENU_LCD_CURSOR_STAT_CENTRAL+5)
	#define LCD_LINELEN 16
#else
	#define MENU_LCD_MENUTEXTLEN 10 // 9 valid chars
	#define MENU_LCD_DATALEN 10
	#define MENU_LCD_EXTRALEN 10
	#define MENU_LCD_CURSOR_MAINMESSAGE LCD_LINE1
	#define MENU_LCD_LEN_MAINMESSAGE 20
	#define MENU_LCD_CURSOR_PARENT LCD_LINE1
	#define MENU_LCD_CURSOR_MENU (LCD_LINE1 + 10)
	#define MENU_LCD_CURSOR_DATA (LCD_LINE2 + 10)
	#define MENU_LCD_CURSOR_EXTRA LCD_LINE2
	#define MENU_LCD_CURSOR_STATUS LCD_LINE0
	#define MENU_LCD_CURSOR_STAT_MIDIIN (LCD_LINE0+0)
	#define MENU_LCD_CURSOR_STAT_MIDIOUT (LCD_LINE0+20-5)
	#define MENU_LCD_CURSOR_STAT_CENTRAL (LCD_LINE0+10-3)
	#define MENU_LCD_CURSOR_STAT_PWR (MENU_LCD_CURSOR_STAT_CENTRAL+5)
	#define LCD_LINELEN 20
#endif
//----------------------------------- MENU TEXT and VALUES--------------------------------------------

#define MENUTEXT_MAN1 "Man.1"
#define MENUTEXT_MAN2 "Man.2"
#define MENUTEXT_MAN3 "Man.3"
#define MENUTEXT_MANP "Pedal"
#define MENUTEXT_MANR "Register"
#define MENUTEXT_MCH1 "Ch.1"
#define MENUTEXT_MCH2 "Ch.2"
#define MENUTEXT_MCH3 "Ch.3"
#define MENUTEXT_MCH4 "Ch.4"
#define MENUTEXT_MCH5 "Ch.5"
#define MENUTEXT_MCH6 "Ch.6"
#define MENUTEXT_MCH7 "Ch.7"
#define MENUTEXT_MCH8 "Ch.8"
#define MENUTEXT_MCH9 "Ch.9"
#define MENUTEXT_MCH10 "Ch.10"
#define MENUTEXT_MCH11 "Ch.11"
#define MENUTEXT_MCH12 "Ch.12"
#define MENUTEXT_MCH13 "Ch.13"
#define MENUTEXT_MCH14 "Ch.14"
#define MENUTEXT_MCH15 "Ch.15"
#define MENUTEXT_MCH16 "Ch.16"
#define MENUTEXT_SEC1 "Sect.1"
#define MENUTEXT_SEC2 "Sect.2"
#define MENUTEXT_SEC3 "Sect.3"
#define MENUTEXT_SEC4 "Sect.4"
#define MENUTEXT_SEC5 "Sect.5"
#define MENUTEXT_SEC6 "Sect.6"
#define MENUTEXT_SEC7 "Sect.7"
#define MENUTEXT_SEC8 "Sect.8"
#define MENU_VAL_SEC1 0
#define MENU_VAL_SEC2 1
#define MENU_VAL_SEC3 2
#define MENU_VAL_SEC4 3
#define MENU_VAL_SEC5 4
#define MENU_VAL_SEC6 5
#define MENU_VAL_SEC7 6
#define MENU_VAL_SEC8 7
#define MENUTEXT_KEY1 "Taste1"
#define MENUTEXT_KEY2 "Taste2"
#define MENUTEXT_KEY3 "Taste3"
#define MENUTEXT_KEY4 "Taste4"
#define MENU_VAL_KEY1 0
#define MENU_VAL_KEY2 1
#define MENU_VAL_KEY3 2
#define MENU_VAL_KEY4 3
#define MENUTEXT_MOD0 "Mod.0"
#define MENUTEXT_MOD1 "Mod.1"
#define MENUTEXT_MOD2 "Mod.2"
#define MENUTEXT_MOD3 "Mod.3"
#define MENUTEXT_MOD4 "Mod.4"
#define MENUTEXT_MOD5 "Mod.5"
#define MENUTEXT_MOD6 "Mod.6"
#define MENUTEXT_MOD7 "Mod.7"

//---------------------------------- MENU AND VAR DISPLAY AND EDIT ---------------------------------------
#define MENU_MAX_STACK 16
extern const __flash Menu_t * menuStack[MENU_MAX_STACK];

uint8_t lcdData[MENU_LCD_DATALEN];
#define MENU_MAX_NIBBLE 8

#define NIBBLE_NONE 0xFF

#define MENU_DISPLAY_AREA_EXTRA 0
#define MENU_DISPLAY_AREA_DATA 1
#define MENU_DISPLAY_AREA_MAIN 2
#define MENU_DISPLAY_AREA_EXTRA_AND_DATA 3

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
extern uint8_t menuVmidiChan;
extern uint8_t menuVsection;
extern uint8_t menuVmanual;
extern uint8_t menuVkey;
extern uint8_t menuVmodule;
extern uint8_t menuVKombination;
extern uint8_t menuVRegisters[REGISTER_COUNT / 8];

extern uint32_t menuModVal;
extern const __flash char* pMenuTopTitle; // Title of TopMenu: usually "Menu" - may differ in Softkey menus
extern const __flash Menu_t* menuVMenuSoftKey; // points to menu selcted for softkey
extern uint8_t menuVSoftKey; // nr of softkey selcted 0..3

extern void menuCurrMenuToLCD();
extern void menuParentMenuToLCD();
extern void menuTextOut(const __flash char* pChar, char finalChar);
extern void menuItemChanged();
extern void menuCursorSetExtra();
extern void menuCursorSetMenu();
extern void menuResetVars();
extern void menuClearMenuDisp(); // menu and parent text
extern void menu_ClearDataDisp();
extern void menuClearExtraDisp();
extern void menuDisplayValue();
extern void menuTextOut(const __flash char* pChar, char finalChar);
extern void menuCursorSetDataNibble(); // sets cursors to position of current editing nibble

extern void nibbleToData();
extern void nibbleChange(uint8_t nibbleNr , int8_t addValue);
extern uint8_t nibbleCheckOvfl(int8_t myNibble);
extern void LCDStringOut();
extern void nibbleToLCDstring();
extern void dataToNibbles();

extern void menu_DisplayMainMessage_P(const __flash char* pMessage);
extern void menu_DisplayMainMessage(const char* pMessage);
extern void menu_deleteMessage();

//---------------------------------- SOFTKEYS -----------------------------------

#define MENU_SOFTKEY_COUNT 4 // 4 keys
#define MENU_SOFTKEY_FUNC_RETURN_NULL 0
#define MENU_SOFTKEY_FUNC_RETURN_STATUS_ON 0x81
#define MENU_SOFTKEY_FUNC_RETURN_STATUS_OFF 0x82

typedef struct{
	const __flash struct Menu *pSelMenu; // point to menu that was selected in assignement
} SoftKeyMenu_List_t;

#define SOFTKEYINDEX_NONE 0 // index 0 = <none>
extern uint8_t soft_KeyMenuIndex[MENU_SOFTKEY_COUNT];
extern SoftKeyMenu_List_t soft_KeyMenu[MENU_SOFTKEY_COUNT];

extern void init_SoftKeys();
extern void softKey_Set(const __flash Menu_t* pSoftKey, uint8_t nrSoftKey);
extern void softKeys_toLCD();
extern uint8_t softKey_MessageKey_ToSoftKeyNr(uint8_t messageKey);
extern uint8_t softKey_Execute(uint8_t nrSoftKey, uint8_t myMessage);

//******************************* external defs ***************************

#define MENU_MANUAL_ARAB // 1,2,3,P arabic I,II,III,P roman

extern const char sw_version [] PROGMEM;
extern const char HelloMsg [] PROGMEM;

extern uint8_t menu_TestModulePattern;
extern uint8_t menu_TestModuleBitCounter;
extern uint32_t menu_TestModuleErrorList;

extern void menu_showPowerState();

#define INIT_MENU menu_TestModulePattern = 0; // only reset var to show that no test is running
#define MENU_TESTMODULE_STARTFLAG 0xFF
#define MENU_TESTMODULE_ENDFLAG 0xFE
#define MENU_TESTMODULE_ABORTFLAG 0xFD

void menu_Init(const __flash Menu_t* newMenu, const __flash char* pTitle); // init_Vars
extern void menu_InitLCD(); // init LCD - after init_Menu()
extern uint8_t menu_ProcessMessage(uint8_t message); // process message, update LCD and variables, call functions and return to caller when next msg is awaited
extern void menu_ClearAllDisp(); // clears all LCD areas that are used by menu functions

extern void menu_ModuleTestExecute();
extern uint8_t menu_OnEnterMidiPanic(uint8_t arg);
#endif /* MENU_H_ */