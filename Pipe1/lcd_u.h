/*
 * lcd_u.h
 *
 * Created: 20.04.2019 18:52:54
 *  Author: Anwender
 */

#include <inttypes.h>

#ifndef LCD_U_H_
#define LCD_U_H_

// LCD interface (should agree with the diagram above)
//   make sure that the LCD RW pin is connected to GND

// ------> PPRT/DDR Definitions are in hw_defs.h !

// LCD module information
#define LCD_LINEONE     0x00                    // start of line 1
#define LCD_LINETWO     0x40                    // start of line 2
#define   LCD_LINETHREE   0x14                  // start of line 3 (20x4)
#define   LCD_LINEFOUR    0x54                  // start of line 4 (20x4)
//#define   lcd_LineThree   0x10                  // start of line 3 (16x4)
//#define   lcd_lineFour    0x50                  // start of line 4 (16x4)

// LCD instructions
#define LCD_CLEAR           0b00000001          // replace all characters with ASCII 'space'
#define LCD_HOME            0b00000010          // return cursor to first position on first line
#define LCD_ENTRYMODE       0b00000110          // shift cursor from left to right on read/write
#define LCD_DISPLAYOFF      0b00001000          // turn display off
#define LCD_DISPLAYON       0b00001100          // display on, cursor off, don't blink character
#define LCD_FUNCTIONRESET   0b00110000          // reset the LCD
#define LCD_FUNCTIONSET4BIT 0b00101000          // 4-bit data, 2-line display, 5 x 7 font
#define LCD_SETCURSOR       0b10000000          // set cursor position
#define LCD_SETCGRAMADR     0b01000000			// Set CG RAM address

#define LCD_ENTRY_MODE          2    // DB2: set entry mode
#define LCD_ENTRY_INC           1    // DB1: 1=increment, 0=decrement
#define LCD_ENTRY_SHIFT         0    // DB0: 1=display shift on

#define LCD_DISPLAYMODE         3    // DB3: turn lcd/cursor on
#define LCD_DISPLAYMODE_ON      2    // DB2: turn display on
#define LCD_DISPLAYMODE_CURSOR  1    // DB1: turn cursor on
#define LCD_DISPLAYMODE_BLINK   0    // DB0: blinking cursor

#define LCD_MOVE                4    // DB4: move cursor/display
#define LCD_MOVE_DISP           3    // DB3: move display (0-> cursor)
#define LCD_MOVE_RIGHT          2    // DB2: move right (0-> left)

#define LCD_FUNCTION            5    // DB5: function set
#define LCD_FUNCTION_8BIT       4    // DB4: set 8BIT mode (0->4BIT mode)
#define LCD_FUNCTION_2LINES     3    // DB3: two lines (0->one line)
#define LCD_FUNCTION_10DOTS     2    // DB2: 5x10 font (0->5x7 font)


#define LCD_LINE0	0
#define LCD_LINE1	0x40
#define LCD_LINE2	0+20
#define LCD_LINE3	0x40+20
#define LCD_EOLINE0				20	 // Adress for Line 0 last char
#define LCD_EOLINE1				0x40+20 // Adress for Line 1 last char
#define LCD_EOLINE2				20+20
#define LCD_EOLINE3				0x40+20+20

#define LCD_UMLAUTA "\341"
#define LCD_UMLAUTO "\357"
#define LCD_UMLAUTU "\365"
#define LCD_SZ "\342"
#define LCD_ARROWUP "\x08"
#define LCD_ARROWDOWN "\x09"
#define LCD_ARROWRIGHT "\x7E"
#define LCD_ARROWLEFT "\x7F"
#define LCD_STATEONOFF "\x80" // \x80 KEYLABEL_STATEOFF_CHAR -> see utils.h

#define LCD_WAIT_POWERUP 100 // ms
#define LCD_WAIT_RESET0 5000 // us
#define LCD_WAIT_RESET1 5000 // us
#define LCD_WAIT_RESET2 5000 // us
#define LCD_WAIT_CMD 64 // us
#define LCD_WAIT_CLRHOME 2500 // us

extern uint8_t lcd_cursorPos;

// Function Prototypes
extern void lcd_write_nibble(uint8_t data);
extern void lcd_write_command(uint8_t data);
extern void lcd_write_character(uint8_t data);

extern void lcd_init();
extern void lcd_clrscr();
extern void lcd_home();
extern void lcd_goto(uint8_t pos);
extern void lcd_putc(char c);
extern void lcd_puts(const char *s);
extern void lcd_puts_P(const char *progmem_s);

#endif /* LCD_U_H_ */