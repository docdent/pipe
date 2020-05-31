/*
 * lcd_u.c
 *
 * Created: 20.04.2019 18:51:55
 *  Author: Anwender
 */

#include "lcd_u.h"

/* ***************************************************************************
//    inspired by codew of 2013 Donald Weiman    (weimandn@alfredstate.edu)
// ******************************* Program Notes ******************************
            This program uses a 4-bit data interface but does not use the
              busy flag to determine when the LCD controller is ready.  The
              LCD RW line (pin 5) is not connected to the uP and it must be
              connected to GND for the program to function.

            All time delays are longer than those specified in most datasheets
              in order to accommodate slower than normal LCD modules.  This
              requirement is well documented but almost always ignored.  The
              information is in a note at the bottom of the right hand
              (Execution Time) column of the instruction set.
  ************************************************************************* */

#ifndef F_CPU
#define F_CPU 16000000UL
#endif

#include <avr/io.h>
#include <util/delay.h>
#include <avr/pgmspace.h>
#include <stddef.h>
#include "hw_defs.h"
#include "utils.h"
#include "menu.h"
#include "hwtimer.h"

uint8_t lcd_cursorPos; // save lcd cursor position as it can't be read vom hd44780 lcd
uint8_t lcd_buffer[LCD_LINE_COUNT*LCD_LINE_LEN]; // save written chars for output to other devices - does not match LCD RAM BUFFER!
// here: line0-0... line0-19, line1-0...line1-19 etc. LCD has different, weird RAM mapping !
uint8_t lcd_cursorIsOn;

/*============================== 4-bit LCD Functions ======================*/

void lcd_init(void)
{
	// V 0.69 debug pin
	uint8_t debugSave = DEBUG_GET_OUT;
	DEBUG_OUT_LCD
	lcd_displayingMessage = FALSE;
	// configure the microprocessor pins for the data lines
	LCD_D7_DDR |= (1<<LCD_D7_BIT);                  // 4 data lines - output
	LCD_D6_DDR |= (1<<LCD_D6_BIT);
	LCD_D5_DDR |= (1<<LCD_D5_BIT);
	LCD_D4_DDR |= (1<<LCD_D4_BIT);
	// configure the microprocessor pins for the control lines
	LCD_E_DDR |= (1<<LCD_E_BIT);                    // E line - output
	LCD_RS_DDR |= (1<<LCD_RS_BIT);                  // RS line - output
	// Power-up delay
    _delay_ms(LCD_WAIT_POWERUP);                                 // initial 40 mSec delay

	// IMPORTANT - At this point the LCD module is in the 8-bit mode and it is expecting to receive
	//   8 bits of data, one bit on each of its 8 data lines, each time the 'E' line is pulsed.
	//
	// Since the LCD module is wired for the 4-bit mode, only the upper four data lines are connected to
	//   the microprocessor and the lower four data lines are typically left open.  Therefore, when
	//   the 'E' line is pulsed, the LCD controller will read whatever data has been set up on the upper
	//   four data lines and the lower four data lines will be high (due to internal pull-up circuitry).
	//
	// Fortunately the 'FunctionReset' instruction does not care about what is on the lower four bits so
	//   this instruction can be sent on just the four available data lines and it will be interpreted
	//   properly by the LCD controller.  The 'lcd_write_4' subroutine will accomplish this if the
	//   control lines have previously been configured properly.

	// Set up the RS and E lines for the 'lcd_write_4' subroutine.
    LCD_RS_PORT &= ~(1<<LCD_RS_BIT);                // select the Instruction Register (RS low)
    LCD_E_PORT &= ~(1<<LCD_E_BIT);                  // make sure E is initially low

	// Reset the LCD controller
    lcd_write_nibble(LCD_FUNCTIONRESET);                 // first part of reset sequence
    _delay_us(LCD_WAIT_RESET0);                                  // 4.1 mS delay (min)
    lcd_write_nibble(LCD_FUNCTIONRESET);                 // second part of reset sequence
    _delay_us(LCD_WAIT_RESET1);                                 // 100uS delay (min)
    lcd_write_nibble(LCD_FUNCTIONRESET);                 // third part of reset sequence
    _delay_us(LCD_WAIT_RESET2);                                 // this delay is omitted in the data sheet
	// Preliminary Function Set instruction - used only to set the 4-bit mode.
	// The number of lines or the font cannot be set at this time since the controller is still in the
	//  8-bit mode, but the data transfer mode can be changed since this parameter is determined by one
	//  of the upper four bits of the instruction.
    lcd_write_nibble(LCD_FUNCTIONSET4BIT);               // set 4-bit mode
    _delay_us(LCD_WAIT_CMD);                                  // 40uS delay (min)
	// Function Set instruction
    lcd_write_command(LCD_FUNCTIONSET4BIT);   // set mode, lines, and font
	// The next three instructions are specified in the data sheet as part of the initialization routine,
	//  so it is a good idea (but probably not necessary) to do them just as specified and then redo them
	//  later if the application requires a different configuration.

	// Display On/Off Control instruction
    lcd_write_command(LCD_DISPLAYOFF);        // turn display OFF
	// Clear Display instruction
    lcd_write_command(LCD_CLEAR);             // clear display RAM
	// ; Entry Mode Set instruction
    lcd_write_command(LCD_ENTRYMODE);         // set desired shift characteristics
	// This is the end of the LCD controller initialization as specified in the data sheet, but the display
	//  has been left in the OFF condition.  This is a good time to turn the display back ON.
	// Display On/Off Control instruction
    lcd_write_command(LCD_DISPLAYON);         // turn the display ON
	DEBUG_SET_OUT(debugSave)
}

/*...........................................................................
  Name:     lcd_write_character
  Purpose:  send a byte of information to the LCD data register
  Entry:    (theData) is the information to be sent to the data register
  Exit:     no parameters
  Notes:    does not deal with RW (busy flag is not implemented)
*/

void lcd_write_character(uint8_t data)
{
	uint8_t debugSave = DEBUG_GET_OUT;
	DEBUG_OUT_LCD
    LCD_RS_PORT |= (1<<LCD_RS_BIT);                 // select the Data Register (RS high)
    LCD_E_PORT &= ~(1<<LCD_E_BIT);                  // make sure E is initially low
    lcd_write_nibble(data);                           // write the upper 4-bits of the data
    lcd_write_nibble(data << 4);                      // write the lower 4-bits of the data
	_delay_us(LCD_WAIT_CMD);
	DEBUG_SET_OUT(debugSave)
}

/*...........................................................................
  Name:     lcd_write_command
  Purpose:  send a byte of information to the LCD instruction register
  Entry:    (theInstruction) is the information to be sent to the instruction register
  Exit:     no parameters
  Notes:    does not deal with RW (busy flag is not implemented)
*/
void lcd_write_command(uint8_t data)
{
	uint8_t debugSave = DEBUG_GET_OUT;
	DEBUG_OUT_LCD
    LCD_RS_PORT &= ~(1<<LCD_RS_BIT);                // select the Instruction Register (RS low)
    LCD_E_PORT &= ~(1<<LCD_E_BIT);                  // make sure E is initially low
    lcd_write_nibble(data);                    // write the upper 4-bits of the data
    lcd_write_nibble(data << 4);               // write the lower 4-bits of the data
	if ((data == LCD_CLEAR) || (data == LCD_HOME)){
		_delay_us(LCD_WAIT_CLRHOME);
	} else {
		_delay_us(LCD_WAIT_CMD);
	}
	DEBUG_SET_OUT(debugSave)
}

/*...........................................................................
  Name:     lcd_write_nibble
  Purpose:  send a byte of information to the LCD module
  Entry:    (theByte) is the information to be sent to the desired LCD register
            RS is configured for the desired LCD register
            E is low
            RW is low
  Exit:     no parameters
  Notes:    use either time delays or the busy flag
*/
void lcd_write_nibble(uint8_t data)
{
    if (data & 1<<7) {
		LCD_D7_PORT |= (1<<LCD_D7_BIT);     // make data = '1' if necessary
	} else {
	    LCD_D7_PORT &= ~(1<<LCD_D7_BIT);                        // assume that data is '0'
	}
    if (data & 1<<6) {
		LCD_D6_PORT |= (1<<LCD_D6_BIT);
	} else {
		LCD_D6_PORT &= ~(1<<LCD_D6_BIT);                        // repeat for each data bit
	}
    if (data & 1<<5) {
		LCD_D5_PORT |= (1<<LCD_D5_BIT);
	} else {
		LCD_D5_PORT &= ~(1<<LCD_D5_BIT);
	}
    if (data & 1<<4) {
		LCD_D4_PORT |= (1<<LCD_D4_BIT);
	} else {
		LCD_D4_PORT &= ~(1<<LCD_D4_BIT);
	}
	// write the data
    LCD_E_PORT |= (1<<LCD_E_BIT);                   // Enable pin high
    _delay_us(1);                                   // implement 'Data set-up time' (80 nS) and 'Enable pulse width' (230 nS)
    LCD_E_PORT &= ~(1<<LCD_E_BIT);                  // Enable pin low
    _delay_us(1);                                   // implement 'Data hold time' (10 nS) and 'Enable cycle time' (500 nS)
}


/*************************************************************************
Set cursor to specified position
Input:    pos position
Returns:  none
*************************************************************************/
void lcd_goto(uint8_t pos)
{
	lcd_cursorPos =  pos;
	lcd_write_command(LCD_SETCURSOR+pos);
}


/*************************************************************************
Clear screen
Input:    none
Returns:  none
*************************************************************************/
void lcd_clrscr()
{
	lcd_cursorPos =  0;
	lcd_write_command(LCD_CLEAR);
	uint8_t* pchar = &(lcd_buffer[0]);
	for (uint8_t i = 0; i < sizeof(lcd_buffer); i++){
		*pchar++ = ' ';
	}
}


/*************************************************************************
Return home
Input:    none
Returns:  none
*************************************************************************/
void lcd_home()
{
	lcd_cursorPos =  0;
	lcd_write_command(LCD_HOME);
}

uint8_t getCursorFromLCDRAMcursor(uint8_t lcd_cursor){
	// convert non linear LCD-Cursor to linear Cursor 0..19 = line 0, 20..39 = line 1... for buffer
	if ((lcd_cursor >= LCD_LINE0) && (lcd_cursor < LCD_EOLINE0)){
		// line 0
		return lcd_cursor-LCD_LINE0 + 0;
	} else if ((lcd_cursor >= LCD_LINE1) && (lcd_cursor < LCD_EOLINE1)){
		return lcd_cursor-LCD_LINE1 + 20;
	} else if ((lcd_cursor >= LCD_LINE2) && (lcd_cursor < LCD_EOLINE2)){
		return lcd_cursor-LCD_LINE2 +40;
	} else if ((lcd_cursor >= LCD_LINE3) && (lcd_cursor < LCD_EOLINE3)){
		return lcd_cursor-LCD_LINE3 + 60;
	}
	return 0xFF; // default should not occure

}

/*************************************************************************
Display character
Input:    character to be displayed
Returns:  none
*************************************************************************/

void lcd_putc(char c)
{
	// V 0.76 no output if displaying message
	if ((lcd_displayingMessage == FALSE) || (lcd_cursorPos < MENU_LCD_CURSOR_MAINMESSAGE)
		|| (lcd_cursorPos >= MENU_LCD_CURSOR_MAINMESSAGE+MENU_LCD_LEN_MAINMESSAGE)) {
		lcd_write_character(c);
	}
	// V 0.61: store char in lcd_buffer. convert values > 0x7F to special charactes < 0x20
	// so data transfer uses bytes below 0x80 only
	uint8_t cursor = getCursorFromLCDRAMcursor(lcd_cursorPos);
	if (cursor != 0xFF){
		uint8_t stored_char = c;
		if (stored_char == LCD_CHAR_WAIT_SYMBOL){
			stored_char = LCD_CHARREPL_WAIT_SYMBOL;
		} else if (stored_char == LCD_CHAR_STATEONOFF){
			stored_char = LCD_CHARREPL_STATEONOFF;
		} else if (stored_char == LCD_CHAR_NOTESTRAIGHT_SYM){
			stored_char = LCD_CHARREPL_NOTESTRAIGHT_SYM;
		} else if (stored_char == LCD_CHAR_STATEON){
			stored_char = LCD_CHARREPL_STATEON;
		} else if (stored_char == LCD_CHAR_SZ){
			stored_char = LCD_CHARREPL_SZ;
		} else if (stored_char == LCD_CHAR_UMLAUTU){
			stored_char = LCD_CHARREPL_UMLAUTU;
		} else if (stored_char == LCD_CHAR_UMLAUTO){
			stored_char = LCD_CHARREPL_UMLAUTO;
		} else if (stored_char == LCD_CHAR_UMLAUTA){
			stored_char = LCD_CHARREPL_UMLAUTA;
		}
		lcd_buffer[cursor] = stored_char;
	}
	lcd_cursorPos =  (lcd_cursorPos+1) &0x7F;
}


/*************************************************************************
Display string
Input:    string to be displayed
Returns:  none
*************************************************************************/
void lcd_puts(const char *s)
{
	if (s != NULL){
		register char c;

		while ((c=*s++))
		lcd_putc(c);
	}
}


/*************************************************************************
Display string from flash
Input:    string to be displayed
Returns:  none
*************************************************************************/
void lcd_puts_P(const char *progmem_s)
{
	if (progmem_s != NULL){
		register char c;
		while ((c=pgm_read_byte(progmem_s++)))
		lcd_putc(c);
	}
}

//------------------------------ MESSAGE ------------------------------

uint8_t lcd_displayingMessage; // TRUE when a message is beeing displayed. Then all lcd outputs are wirten to buffer only
uint8_t lcd_saveCursorIsOn;

void lcd_message(const char *pMessage){
	// clear message area and display message, start timer
	uint8_t saveCursor = lcd_cursorPos;
	lcd_saveCursorIsOn = lcd_cursorIsOn;
	uint8_t textLen = get_StrLen(pMessage);
	lcd_goto(MENU_LCD_CURSOR_MAINMESSAGE);
	uint8_t pos = 0;
	while (pos < ((MENU_LCD_LEN_MAINMESSAGE - textLen) >> 1)) {
		lcd_write_character(' '); // blank but do not write to buffer
		pos++;
	}
	while (*pMessage != 0){
		lcd_write_character(*pMessage++);
		pos++;
	}
	while (pos++ < MENU_LCD_LEN_MAINMESSAGE){
		lcd_write_character(' ');
	}
	lcd_goto(saveCursor);
	lcd_displayingMessage = TRUE;
	TIMER_SET(TIMER_MESSAGE_LCDCLEAR,TIMER_MENUDATA_LCDCLEAR_MS);
}

void lcd_message_P(const char *pMessage_P){
	uint8_t saveCursor = lcd_cursorPos;
	lcd_saveCursorIsOn = lcd_cursorIsOn;
	uint8_t textLen = get_StrLenP(pMessage_P);
	lcd_goto(MENU_LCD_CURSOR_MAINMESSAGE);
	uint8_t pos = 0;
	while (pos < ((MENU_LCD_LEN_MAINMESSAGE - textLen) >> 1)) {
		lcd_write_character(' '); // blank but do not write to buffer
		pos++;
	}
	while (pgm_read_byte(pMessage_P) != 0){
		lcd_write_character(pgm_read_byte(pMessage_P++));
		pos++;
	}
	while (pos++ < MENU_LCD_LEN_MAINMESSAGE){
		lcd_write_character(' ');
	}
	lcd_goto(saveCursor);
	lcd_displayingMessage = TRUE;
	TIMER_SET(TIMER_MESSAGE_LCDCLEAR,TIMER_MENUDATA_LCDCLEAR_MS);
}


void lcd_message_clear(){
	// restores lcd content from buffer. Used after message has been displayed some time
	uint8_t saveCursor = lcd_cursorPos;
	uint8_t lcdBufferPos = getCursorFromLCDRAMcursor(MENU_LCD_CURSOR_MAINMESSAGE);
	lcd_goto(MENU_LCD_CURSOR_MAINMESSAGE);
	for (uint8_t i = 0; i < MENU_LCD_LEN_MAINMESSAGE; i++){
		uint8_t stored_char = lcd_buffer[lcdBufferPos++];
		if (stored_char == LCD_CHARREPL_NOTESTRAIGHT_SYM){
			stored_char = LCD_CHAR_NOTESTRAIGHT_SYM;
		} else if (stored_char == LCD_CHARREPL_STATEON){
			stored_char = LCD_CHAR_STATEON;
		} else if (stored_char == LCD_CHARREPL_SZ){
			stored_char = LCD_CHAR_SZ;
		} else if (stored_char == LCD_CHARREPL_UMLAUTU){
			stored_char = LCD_CHAR_UMLAUTU;
		} else if (stored_char == LCD_CHARREPL_UMLAUTO){
			stored_char = LCD_CHAR_UMLAUTO;
		} else if (stored_char == LCD_CHARREPL_UMLAUTA){
			stored_char = LCD_CHAR_UMLAUTA;
		} // other chars replaced by  ' ' are not translated back
		lcd_write_character(stored_char);
	}
	lcd_goto(saveCursor);
	if 	(lcd_saveCursorIsOn == TRUE){
		lcd_cursosblink();
	} else {
		lcd_cursoroff();
	}
	lcd_displayingMessage = FALSE;
}

//------------------------------- CHARACTER GENENERATOR --------------------------------

const uint8_t cgPattern_Up [8] PROGMEM = {
	// arrow up
	0b00000100,
	0b00001110,
	0b00010101,
	0b00000100,
	0b00000100,
	0b00000100,
	0b00000100,
	0
};

const uint8_t cgPattern_Down [8] PROGMEM = {
	// arrow down
	0b00000100,
	0b00000100,
	0b00000100,
	0b00000100,
	0b00010101,
	0b00001110,
	0b00000100,
	0
};

const uint8_t cgPattern_Block [8] PROGMEM = {
	// block
	0b00000000,
	0b00000000,
	0b00001110,
	0b00001110,
	0b00001110,
	0b00001110,
	0b00000000,
	0
};

const uint8_t cgPattern_RegOff [8] PROGMEM = {
	// block
	0b00011000,
	0b00011000,
	0b00000000,
	0b00000000,
	0b00000000,
	0b00000000,
	0b00000000,
	0
};

const uint8_t cgPattern_RegOn [8] PROGMEM = {
	// block
	0b00011000,
	0b00011000,
	0b00011000,
	0b00011000,
	0b00011000,
	0b00011000,
	0b00011000,
	0
};

const uint8_t cgPattern_RegOffOff [8] PROGMEM = {
	// block
	0b00011011,
	0b00011011,
	0b00000000,
	0b00000000,
	0b00000000,
	0b00000000,
	0b00000000,
	0
};

const uint8_t cgPattern_RegOffOn [8] PROGMEM = {
	// block
	0b00011011,
	0b00011011,
	0b00000011,
	0b00000011,
	0b00000011,
	0b00000011,
	0b00000011,
	0
};

const uint8_t cgPattern_RegOnOff [8] PROGMEM = {
	// block
	0b00011011,
	0b00011011,
	0b00011000,
	0b00011000,
	0b00011000,
	0b00011000,
	0b00011000,
	0
};

const uint8_t cgPattern_RegOnOn [8] PROGMEM = {
	// block
	0b00011011,
	0b00011011,
	0b00011011,
	0b00011011,
	0b00011011,
	0b00011011,
	0b00011011,
	0
};

void lcd_setCG(uint8_t charNr, const uint8_t* patternPtr){
	lcd_write_command(LCD_SETCGRAMADR | (charNr << 3));
	for (uint8_t i = 0; i < 8; i++){
		lcd_write_character(pgm_read_byte(patternPtr++));
	}
}

void lcd_initCG(){
	lcd_setCG(0,cgPattern_Up); // 0x08 = Arrow Up
	lcd_setCG(1,cgPattern_Down); // 0x09 = Arrow Down
	// old: 0x0A = Block = State On
	lcd_setCG(2,cgPattern_RegOff); // 0x0A = Single Reg Off
	lcd_setCG(3,cgPattern_RegOn); // 0x0B = Single Reg Off
	lcd_setCG(4,cgPattern_RegOffOff); // 0x0C = 2 Reg Off Off
	lcd_setCG(5,cgPattern_RegOffOn); // 0x0D = 2 Reg Off On
	lcd_setCG(6,cgPattern_RegOnOff); // 0x0E = 2 Reg On Off
	lcd_setCG(7,cgPattern_RegOnOn); // 0x0F = 2 Reg On On

}

//----------------------------------- CURSOR -------------------------#

void lcd_cursosblink(){
	lcd_write_command((1 << LCD_DISPLAYMODE) | (1 << LCD_DISPLAYMODE_ON) | (1 << LCD_DISPLAYMODE_BLINK));
	lcd_cursorIsOn = TRUE;
}

void lcd_cursoroff(){
	lcd_write_command((1 << LCD_DISPLAYMODE) | (1 << LCD_DISPLAYMODE_ON));
	lcd_cursorIsOn = FALSE;
}

