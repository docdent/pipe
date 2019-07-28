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

uint8_t lcd_cursorPos;

/*============================== 4-bit LCD Functions ======================*/

void lcd_init(void)
{
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
    LCD_RS_PORT |= (1<<LCD_RS_BIT);                 // select the Data Register (RS high)
    LCD_E_PORT &= ~(1<<LCD_E_BIT);                  // make sure E is initially low
    lcd_write_nibble(data);                           // write the upper 4-bits of the data
    lcd_write_nibble(data << 4);                      // write the lower 4-bits of the data
	_delay_us(LCD_WAIT_CMD);
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
    LCD_RS_PORT &= ~(1<<LCD_RS_BIT);                // select the Instruction Register (RS low)
    LCD_E_PORT &= ~(1<<LCD_E_BIT);                  // make sure E is initially low
    lcd_write_nibble(data);                    // write the upper 4-bits of the data
    lcd_write_nibble(data << 4);               // write the lower 4-bits of the data
	if ((data == LCD_CLEAR) || (data == LCD_HOME)){
		_delay_us(LCD_WAIT_CLRHOME);
	} else {
		_delay_us(LCD_WAIT_CMD);
	}
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


/*************************************************************************
Display character
Input:    character to be displayed
Returns:  none
*************************************************************************/
void lcd_putc(char c)
{
	lcd_cursorPos =  (lcd_cursorPos+1) &0x3F;
	lcd_write_character(c);
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