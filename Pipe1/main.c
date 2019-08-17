/*
 * Pipe1.c
 *
 * Created: 03.11.2018 00:05:19
 * Author : Anwender
 */

#ifndef F_CPU
#define F_CPU 16000000UL
#endif

#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <inttypes.h>

#include "lcd_u.h"
#include "initio.h"
#include "message.h"
#include "hwtimer.h"
#include "utils.h"
#include "serial.h"
#include "test.h"
#include "Midi.h"
#include "menu.h"
#include "ee_prom.h"
#include "log.h"

const char eprom_ok [] PROGMEM = "EE:";
const char module_string [] PROGMEM = " Mod.:";
const char prog_name [] PROGMEM = "MIDI-Interface";
const __flash char releaseKeyString[] = "Tasten/Reg. l" LCD_UMLAUTO "sen";
const __flash char panicString[] = "T" LCD_UMLAUTO "ne aus";
uint8_t menuNotActive;

int main(void)
{

	// INIT

	init_iopins (); // default only: all inputs with pullup
	init_log();
	init_Serial0SerUSB();
	init_message();
	init_HwTimer();
	init_Timers();
	init_ADC();
	init_Pipe();
	init_Serial1MIDI();
	init_PipeModules();
	init_Midi2Manual();
	init_Manual2Midi();
	init_Midi();
	init_Registers();
	init_Manual2Module();
	init_SoftKeys();
	eeprom_UpdateALL(); // save all current settings (eventually defaults) to eeprom
	INIT_MENU


	// BOOT MESSAGE

	lcd_init ();
	lcd_initCG();
	lcd_clrscr ();
	lcd_goto(LCD_LINE1+3);
	lcd_puts_P(prog_name);
	lcd_goto(LCD_LINE2+7);
	lcd_puts_P(sw_version);
	sei();
	_delay_ms(1200);
	lcd_clrscr ();

	// TURN ON POWER

	module_StartPowerOn();
	MESSAGE_PIPE_HANDLING_ON

	menuNotActive = TRUE;
	// menu_Init(NULL, NULL); // menu initaliszed but not displayed -> now alter when displayed
	uint8_t updateStatus = TRUE;
    while (1)
    {
		// ---------------------- KEYBOARD AND MENU ----------------------
		if MESSAGE_PENDING {
			uint8_t keyMessage = message_get();
			if (keyMessage == (MESSAGE_KEY_LONGPRESSED | MESSAGE_KEY_ESC)){
				// PANIC BUTTON
				midiSendAllNotesOff();
				midi_AllManualsOff();
				midi_resetRegisters();
				midi_CouplerReset();
				menu_DisplayMainMessage_P(panicString);
			}
			if (menuNotActive == TRUE) {
				// --- MESSAGE
				// not in menu; start page is displayed
				uint8_t keyMasked = keyMessage & MESSAGE_KEY_REMOVE_TYPE_MASK;
				if 	(keyMessage == MESSAGE_KEY_SEL) {
					// SELECT: Start menu
					// first call of menu after exit: init LCD
					menu_Init(NULL, NULL); // menu initaliszed but not displayed -> new reset each time
					menu_InitLCD(); //display menu
					menuNotActive = FALSE; // notify that menu is displayed
					softKey_WantLong(FALSE); // we are in menu now: Softkey should autoreturn
				} else if ((keyMasked == MESSAGE_KEY_1) || (keyMasked == MESSAGE_KEY_2) || (keyMasked == MESSAGE_KEY_3) || (keyMasked == MESSAGE_KEY_4)){
					// SOFTKEY pressed
					uint8_t softKey_Nr = softKey_MessageKey_ToSoftKeyNr(keyMasked);
					menuNotActive = softKey_Execute(softKey_Nr, keyMessage); // execute softkey; returns false if menu started
					softKeys_toLCD();
				}
			} else {
				// MENU IS ACTIVE: PROCESS MESSAGE
				if (menu_TestModulePattern == 0){
					// no pattern test running
					menuNotActive = menu_ProcessMessage(keyMessage); // process message, return true on menu exit, false of menu still active
				} else {
					// there is a pattern test running: abort
					menu_TestModuleBitCounter = MENU_TESTMODULE_ABORTFLAG;
					menu_ModuleTestExecute(); // start abort, on next timer finish
				}
			}
		}
		if (menuNotActive == TRUE) {
			// Startpage is or should be beeing displayed now
			if (updateStatus == TRUE) {
				// menu has been exit: clear display to have more room for status
				menu_ClearAllDisp();
				softKeys_toLCD();
				softKey_WantLong(TRUE);
				updateStatus = FALSE; // set when entering menu or from elsewhere if there is a update
			}
		} else {
			// Menu is beeing displayed
			updateStatus = TRUE; // show status eventiually after next menu exit
		}
		// ------------------------- TIMER_MENUDATA_LCDCLEAR ----------------
		if TIMER_ELAPSED(TIMER_MENUDATA_LCDCLEAR) {
			// if (! menuNotActive) {
				// currently: always check timer, not only when menu active menu
				uint8_t saveCursor = lcd_cursorPos;
				menu_deleteMessage();
				lcd_goto(saveCursor);
			 //}
			TIMER_DEACTIVATE(TIMER_MENUDATA_LCDCLEAR)
		}

		// ------------------------ TIMER TEST MODULE -----------------------
		if TIMER_ELAPSED(TIMER_TESTMODULE) {
			if (menu_TestModulePattern != 0){
				menu_ModuleTestExecute(); // usually Timer is restarted here, if not, menu_TestModulePattern will be set to 0
			} else {
				TIMER_DEACTIVATE(TIMER_TESTMODULE)
			}
		}

		// ----------------------------- TIMER POWER ------------------------

		if TIMER_ELAPSED(TIMER_POWER) {
			module_PowerControl();
			menu_showPowerState();
			if (menuNotActive == TRUE) {
				// start screeen showing, display message
				uint8_t saveCursor = lcd_cursorPos;
				lcd_goto(LCD_LINE2);
				if (pipe_PowerStatus == POWERSTATE_WAIT_FOR_KEY_REALEASE){
					// if this is status after module_PowerControl(), still waiting for key release!
					lcd_puts_P(releaseKeyString);
				} else if (pipe_PowerStatus == POWERSTATE_WAIT_FOR_POWERON) {
					lcd_blank(LCD_LINELEN);
				}
				lcd_goto(saveCursor);
			}
		}

		// ------------------------- ACTIVE SENSE ----------------------------
		midi_CheckTxActiveSense(); // out going active Sense?
		midi_CheckRxActiveSense(); // check for Error of incoming Active Sense

		// ------------------------ TOP STATUS LINE --------------------------
		uint8_t oldcursor = lcd_cursorPos;
		if (midiLastInNote != MIDI_NOTE_NONE){
			// there is a midi in note to be displayed in status
			lcd_goto(MENU_LCD_CURSOR_STAT_MIDIIN);
			if (midiLastInManual == MANUAL_NONE) {
				// there was no manual assigned to midi in note
				// cc?nnn
				lcd_ChannelOut(midiLastInChannel);
				lcd_putc('?');
				lcd_noteOut(midiLastInNote);
				lcd_putc(' ');
			} else {
				// midi input to assigned manual
				// nnn>m
				lcd_noteOut(midiLastInNote);
				lcd_putc(MENU_MIDI_IO_SIGN);
				lcd_ManualOutDec(midiLastInManual);
				lcd_putc(' ');
			}
			lcd_goto(oldcursor);
			midiLastInNote = MIDI_NOTE_NONE;
			TIMER_SET(TIMER_MIDIIN_DISP,TIMER_MIDIIN_DISP_MS)
		} else if (midiLastProgram != MIDI_PROGRAM_NONE) {
			// no midi not but a program change
			lcd_goto(MENU_LCD_CURSOR_STAT_MIDIIN);
			lcd_putc('p');
			lcd_dec2out(midiLastProgram); // here max 0..99 displayed, but Prog Change currently accepts only 0..63 anyway
			lcd_putc(LCDCHAR_ARROW_RIGHT);
			midiLastProgram = MIDI_PROGRAM_NONE; // we are done, don't display again
			TIMER_SET(TIMER_MIDIIN_DISP,TIMER_MIDIIN_DISP_MS)
		} else if (TIMER_ELAPSED(TIMER_MIDIIN_DISP) ) {
			// timer for showing note has elapsed
			// removed or about every 2.5 second just in case screen got scrambeled
			lcd_goto(MENU_LCD_CURSOR_STAT_MIDIIN);
			lcd_blank(6);
			lcd_goto(oldcursor);
			TIMER_DEACTIVATE(TIMER_MIDIIN_DISP);
		}
		if (midiLastOutNote != MIDI_NOTE_NONE){
			// there is a midi in note to be displayed in status
			// m>nnn
			lcd_goto(MENU_LCD_CURSOR_STAT_MIDIOUT);
			lcd_ManualOutDec(midiLastOutManual);
			lcd_putc(MENU_MIDI_IO_SIGN);
			lcd_noteOut(midiLastOutNote);
			lcd_goto(oldcursor);
			midiLastOutNote = MIDI_NOTE_NONE;
			TIMER_SET(TIMER_MIDIOUT_DISP,TIMER_MIDIOUT_DISP_MS)
		} else if (midi_RegisterChanged != REGISTER_NONE) {
			// register change has top priority in display so it is processed later (!) and will overwrite previos note display
			lcd_goto(MENU_LCD_CURSOR_STAT_MIDIOUT);
			lcd_putc('R');
			lcd_dec2out(midi_RegisterChanged & ~REGISTER_WAS_SET); // remove MSB
			lcd_putc((midi_RegisterChanged & REGISTER_WAS_SET) == 0 ?  LCDCHAR_ARROW_DOWN : LCDCHAR_ARROW_UP); // MSB = register was set
			lcd_putc(' ');
			lcd_goto(oldcursor);
			midi_RegisterChanged = REGISTER_NONE;
			TIMER_SET(TIMER_MIDIOUT_DISP,TIMER_MIDIOUT_DISP_MS)
		} else if (TIMER_ELAPSED(TIMER_MIDIOUT_DISP)) {
			// timer for showing note has elapsed
			// removed V0.59: or about every second just in case screen got scrambeled
			lcd_goto(MENU_LCD_CURSOR_STAT_MIDIOUT);
			lcd_blank(5);
			lcd_goto(oldcursor);
			TIMER_DEACTIVATE(TIMER_MIDIOUT_DISP);
		}

		//------------------------- every second ----------------------------
		if (time_UpTimeUpdated == TRUE) {
			time_UpTimeUpdated = FALSE;
			// --- clock ---
			uint8_t* pTime = (uint8_t*) &(time_Uptime[3]);
			uint8_t oldCursor = lcd_cursorPos;
			uint8_t oldBlink = lcd_cursorIsOn;
			if (oldBlink == TRUE) {
				lcd_cursoroff();
			}
			char separator;
			if (*pTime == 0) {
				// hour not present
				pTime--; // set pointer to minute
				separator = ':';
			} else if ((time_Uptime[1] & 0x01) == 0) {
				// when displaying hr:min blink ":"
				separator = ':';
			} else {
				separator = ' ';
			}
			lcd_goto(MENU_LCD_CURSOR_STAT_CENTRAL);
			lcd_dec2out(*(pTime--));
			lcd_putc(separator);
			lcd_dec2out(*pTime);
			// --- check serial overflow ---
			uint8_t ovflCount = midiRxOvflCount; // avoid change of value by interrupt during processing here
			if (ovflCount > 0){
				log_putError(LOG_CAT_SERIAL,LOG_CAT_SERIALMIDIINOVFL,ovflCount);
				midiRxOvflCount = 0;
			}
			ovflCount = midiTxOvflCount; // avoid change of value by interrupt during processing here
			if (ovflCount > 0){
				log_putError(LOG_CAT_SERIAL,LOG_CAT_SERIALMIDIOUTOVFL,ovflCount);
				midiTxOvflCount = 0;
			}
			// --- now check Error status ---
			lcd_putc(POWERSTAT_CHAR); // Makros resolves current state to character
			lcd_putc((log_unreadErrors == TRUE) ? 'E' : ' ');
			// --- restore cursor ---
			lcd_goto(oldCursor);
			if (oldBlink == TRUE) {
				lcd_cursosblink();
			}
			// finally start Timers to clear MIDI Status display if not already running,
			// just to clean up status line in case it had been scrambled
			if (TIMER_NOTSTARTED(TIMER_MIDIIN_DISP)) {
				TIMER_SET(TIMER_MIDIIN_DISP,TIMER_MIDDISP_CLEANUP_INTERVALL)
			}
			if (TIMER_NOTSTARTED(TIMER_MIDIOUT_DISP)) {
				TIMER_SET(TIMER_MIDIOUT_DISP,TIMER_MIDDISP_CLEANUP_INTERVALL)
			}
		}

		//------------------ CHEKC MESSAGE PIPIE OVFL ------------------
		if (msgPipeOverflow == MESSAGE_PIPE_OVERFLOW_YES){
			msgPipeOverflow = MESSAGE_PIPE_OVERFLOW_NO;
			log_putError(LOG_CAT_MESSAGE, LOG_CATMESSAGE_PIPEOVFL, 0);
		}

		//---------------------- MIDI IN --------------------------------
		if MIDI_RX_BUFFER_NONEMPTY {
			midiIn_Process(serial1MIDIReadRx());
		}
		//----------------------- MIDI OUT -----------------------------
		if MESSAGE_PIPE_PENDING	{
			midiKeyPress_Process(pipeMsgGet());
		}

    }
}

