/*
 * Pipe1.c
 *
 * Created: 03.11.2018 00:05:19
 * Author : Anwender
 */

#ifndef F_CPU
#define F_CPU 16000000UL
#endif

#define SHOW_INOUT_ON_LCD // show MIDI in and out on top status line left and rigth corner

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
#include "hw_defs.h"

const char eprom_ok [] PROGMEM = "EE:";
const char module_string [] PROGMEM = " Mod.:";
const char prog_name [] PROGMEM = "MIDI-Interface";
const __flash char releaseKeyString[] = "Tasten/Reg. l" LCD_STRING_UMLAUTO "sen";
const __flash char panicString[] = "T" LCD_STRING_UMLAUTO "ne aus";
uint8_t menuNotActive;
uint8_t messageFromESP;
uint8_t regShowHW = FALSE;

int main(void)
{

	// INIT

	init_iopins (); // default only: all inputs with pullup
	#ifdef DEBUG_ON_PINS
	DEBUG_OUT_MAIN
	#endif
	init_log();	// init error and event log
	init_Serial0SerUSB(); // serial port to PC
	init_message(); // init keyboard message handling
	init_HwTimer(); // init timer interrupts and ports for module IO
	init_Timers(); // init timers
	init_ADC(); // init ADC variable and ports (for keyboard polling)
	init_Pipe(); // init ports and vars for module IO
	init_Serial1MIDI(); // init serial IO for MIDI
	init_PipeModules(); // find out which modules are working
	init_Midi2Manual(); // init mapping midi in -> manuals
	init_Manual2Midi(); // init mapping manuals -> midi out
	init_Midi(); //  init midi handling
	init_Registers(); // init mapping registers - modules
	init_RegOut(); // init mapping registers - display of registers
	init_Manual2Module(); // init mapping manuals - modules
	init_SoftKeys(); // init softkeys
	eeprom_UpdateALL(); // save all current settings (eventually defaults) to eeprom
	INIT_MENU // reset menu


	// BOOT MESSAGE

	lcd_init (); // init lcd
	lcd_initCG(); // init Character generator RAM in LCD
	lcd_clrscr (); // display boot message
	lcd_goto(LCD_LINE1+3);
	lcd_puts_P(prog_name);
	lcd_goto(LCD_LINE2+7);
	lcd_puts_P(sw_version);
	sei(); // start timer, module handling, keyboard polling
	_delay_ms(1200); // time to show booot message
	init_Serial3SerESP(); // activate serial from esp8266 not to early to ignore it's scrambled boot messages
	lcd_clrscr ();

	// TURN ON POWER

	module_StartPowerOn(); // does not turn power on, but start power on cycle
	MESSAGE_PIPE_HANDLING_ON // from now handle events of modules (key press etc)

	menuNotActive = TRUE; // showing main screen
	uint8_t updateStatus = TRUE;
	messageFromESP = SER_ESP_SEND_LCD; // for first transfer
    while (1)
    {
		#ifdef DEBUG_ON_PINS
		DEBUG_OUT_MAIN
		#endif
		// V0.60 read message from usart3 (esp)
		// --------------------------- ESP MESSAGE HANDLING --------------------------------------
		if SER_ESP_RX_BUFFER_NONEMPTY {
			uint8_t esp_message = serial3SER_ESPReadRx();
			messageFromESP = esp_message; // save for later transfer of LCD
			serial0SER_USBSend(esp_message); // TODO ask if USB out is enabled
			if ((esp_message > SER_ESP_MSGOFFSET) && (esp_message <= SER_ESP_MSGOFFSET+MESSAGE_KEY_MAX)){
				// push key message from esp to queue
				message_push(esp_message-SER_ESP_MSGOFFSET);
			} else if (esp_message == SER_ESP_MSGMIDI) {
				// Not yet used in V 0.68
				// MIDI data from ESP
				if (serESPInBuffer[0] == SER_ESP_MSGMIDI) {
					// this should always be so
					int8_t i = 1; // start with byte received before command
					// find ascii start char '=' SER_ESP_PARAM_START
					do {
						if (serESPInBuffer[i] == SER_ESP_PARAM_START){
							break;
						}
						i++;
					} while (i < SER_ESP_INPUTBUFFER_SIZE);
					// i points to '0' or SER_ESP_INPUTBUFFER_SIZE if not found
					if (i < SER_ESP_INPUTBUFFER_SIZE) {
						// i points to '='
						uint8_t midiBytesTransferred = i >> 1; // 1->0, 2->1, 3-> 1, 4->2, 5->2, 6->3, 7->3
						// clear midi buffer
						for (uint8_t j = 0; j < SER_ESP_MIDTEMPBUFFER_SIZE; j++){
							serESPMidiTmp[j] = 0;
						}
						while (--i > 0) {
							// take next ascii byte for data, start with char after '='
							uint8_t asciiData = serESPInBuffer[i] - '0';
							if (asciiData > 9){
								asciiData = asciiData - (0x0A - 'A' + '0');
							}
							asciiData &= 0x0F;
							serESPMidiTmp[2] = (serESPMidiTmp[2] << 4) | (serESPMidiTmp[1] >> 4);
							serESPMidiTmp[1] = (serESPMidiTmp[1] << 4) | (serESPMidiTmp[0] >> 4);
							serESPMidiTmp[0] = (serESPMidiTmp[0] << 4) | asciiData;
						}
						// serESPMidiTmp[2] is first byte of midi transmition
						proc_ESPmidi(midiBytesTransferred); //  process midi bytes from ESP as received bytes here!
					} // else not found: do nothing
				}
			} // TODO further ESP message to handle
		}
		// ---------------------- KEYBOARD AND MENU HANDLING ----------------------
		if MESSAGE_PENDING {
			// key press has to be processed
			DEBUG_OUT_MENU
			if (lcd_displayingMessage == TRUE) {
				// if message is beeing displayed: first clear message
				lcd_message_clear();
			}
			uint8_t keyMessage = message_get();
			if (keyMessage == (MESSAGE_KEY_LONGPRESSED | MESSAGE_KEY_ESC)){
				// PANIC BUTTON
				midiSendAllNotesOff();
				midi_AllManualsOff();
				midi_resetRegisters();
				midi_CouplerReset();
				init_log(); // clear log V 0.70
				midiRxBuffUsage = 0; // max used lenght of Midi Rx Buffer
				midiTxBuffUsage = 0; // max used lenght of Midi Tx Buffer
				POWER_ON
				pipe_PowerStatus = POWERSTATE_FORCE_ON; // V0.70 power on
				lcd_message_P(panicString);
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
				prog_UpdDisplay = TRUE; // update program display
				updateStatus = FALSE; // set when entering menu or from elsewhere if there is a update
			}
		} else {
			// Menu is beeing displayed
			updateStatus = TRUE; // show status eventually after next menu exit
		}
		#ifdef DEBUG_ON_PINS
		DEBUG_OUT_MAIN
		#endif
		// ------------------------- TIMER_MESSAGE_LCDCLEAR ----------------
		if TIMER_ELAPSED(TIMER_MESSAGE_LCDCLEAR) {
			lcd_message_clear();
			TIMER_DEACTIVATE(TIMER_MESSAGE_LCDCLEAR)
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
			module_PowerControl(); //
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

		// ----------------------- DISPLAY TRANSFER TO ESP -----------------------
		if (((messageFromESP > SER_ESP_MSGOFFSET) && (messageFromESP <= SER_ESP_MSGOFFSET+MESSAGE_KEY_MAX))
			|| (messageFromESP == SER_ESP_SEND_LCD)) {
			// key press was sent from ESP, should be processed now - > Send LCD Content now!
			if (lcd_cursorIsOn == TRUE){
				serial3SER_ESPSend(getCursorFromLCDRAMcursor(lcd_cursorPos));
			} else {
				serial3SER_ESPSend(0x7F); // send invalid cursor so that no cursor is displayed
			}
			serial3SER_ESPSend(SER_ESP_OUTMSG_LCD_SETCURSOR); // set cursor
			uint8_t* pChar = &(lcd_buffer[0]); // LCD Content already sorted to lines and converted to ascii < 0x80 and some special chars < 0x20
			for (uint8_t i = 0; i < sizeof(lcd_buffer); i++){
				serial3SER_ESPSend(*pChar++);
			}
			serial3SER_ESPSend(SER_ESP_OUTMSG_LCD_TRANSFER);
		}
		messageFromESP = SER_ESP_MESSAGE_NONE;

		// ------------------------- ACTIVE SENSE ----------------------------
		midi_CheckTxActiveSense(); // must we send active Sense if midi out was inactive for some time?
		midi_CheckRxActiveSense(); // check for Error of missing incoming Active Sense

		// ------------------------ TOP STATUS LINE --------------------------
		#ifdef SHOW_INOUT_ON_LCD
		uint8_t oldcursor = lcd_cursorPos;
		// status line lin0 left corner: midi in display
		// V0.69 do not update midi in display while displaying last value
		if (TIMER_ELAPSED(TIMER_MIDIIN_DISP) || TIMER_NOTSTARTED(TIMER_MIDIIN_DISP)){
			if (prog_Display > PROGR_MAX) {
				// only if timer for midi in is not running at all (or just has elapsed)
				if (midiLastInNote != MIDI_NOTE_NONE) {
					// V0.72 only if no program is to be displayed
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
					// now start timer
					TIMER_SET(TIMER_MIDIIN_DISP,TIMER_MIDIIN_DISP_MS)
				} else if (midiLastProgram != MIDI_PROGRAM_NONE) {
					// no midi not but a program change to be displayed
					lcd_goto(MENU_LCD_CURSOR_STAT_MIDIIN);
					lcd_putc('p');
					lcd_dec2out(midiLastProgram); // here max 0..99 displayed, but Prog Change currently accepts only 0..63 anyway
					lcd_putc(LCD_CHAR_ARROW_RIGHT);
					midiLastProgram = MIDI_PROGRAM_NONE; // we are done, don't display again
					TIMER_SET(TIMER_MIDIIN_DISP,TIMER_MIDIIN_DISP_MS)
				} else if (TIMER_ELAPSED(TIMER_MIDIIN_DISP) ) {
					// timer for showing note has elapsed
					lcd_goto(MENU_LCD_CURSOR_STAT_MIDIIN);
					lcd_blank(6);
					lcd_goto(oldcursor);
					TIMER_DEACTIVATE(TIMER_MIDIIN_DISP);
				}
			}
		}
		// status line lin0 right corner: midi out display
		// V0.69 do not update midi in display while displaying last value
		if (TIMER_NOTSTARTED(TIMER_MIDIOUT_DISP) || TIMER_ELAPSED(TIMER_MIDIOUT_DISP)) {
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
				lcd_dec2out((midi_RegisterChanged & ~REGISTER_WAS_SET)+1); // remove MSB, add 1 for user register numbers
				// V 0.60 changed: down = Register ON!
				lcd_putc((midi_RegisterChanged & REGISTER_WAS_SET) == 0 ?  LCD_CHAR_REG_OFF : LCD_CHAR_REG_ON); // MSB = register was set
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
		}
		#endif
		//----------------------- program display line0 left corner------------------------
		if ((menuNotActive == TRUE) &&((prog_UpdDisplay == TRUE) || (TIMER_ELAPSED(TIMER_REGDISPLAY)))) {
			// 0.77: only if menu is not active!
			prog_UpdDisplay = FALSE;
			TIMER_SET(TIMER_REGDISPLAY,TIMER_REGDISPLAY_MS)
			lcd_goto(MENU_LCD_CURSOR_PROG);
			prog_toLcd();
			if (pipe_PowerStatus != POWERSTATE_WAIT_FOR_KEY_REALEASE) {
				// only if not displaying message to release keys
				if (prog_Display <= PROGR_MAX) {
					// show register settings
					reg_toLCD(regShowHW);
					regShowHW = ~regShowHW; // alternate between SW output and HW read registers
				} else {
					reg_ClearOnLCD();
				}
			}
		}
		//------------------------- every second clock update line0 center ----------------------------
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
		DEBUG_OUT_MIDI
		//---------------------- MIDI IN --------------------------------
		if MIDI_RX_BUFFER_NONEMPTY {
			midiIn_Process(serial1MIDIReadRx());
		}
		//----------------------- MIDI OUT -----------------------------
		if MESSAGE_PIPE_PENDING	{
			midiKeyPress_Process(pipeMsgGet()); // events from module read (->midi out, couplers)
		}

    }
}

