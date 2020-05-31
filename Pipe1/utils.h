/*
 * utils.h
 *
 * Created: 15.12.2018 12:42:51
 *  Author: Anwender
 */

#include <inttypes.h>
#include <avr/pgmspace.h>

#ifndef UTILS_H_
#define UTILS_H_

//************************************************ L C D ***************************

typedef union{
	uint32_t longval;
	uint8_t byteval[4];
	} Longint_t;

extern Longint_t editLong;
extern uint8_t editByte;

typedef union{
	uint16_t wordval;
	uint8_t byteval[2];
	} Word_t;

extern uint8_t nibbleToChr(uint8_t myNibble);

extern void lcd_wordout(uint16_t hexNumber);
extern void lcd_hexout(uint8_t hexNumber);
extern void lcd_ManualOut(uint8_t manual);
extern void lcd_ManualOutDec(uint8_t manual);
extern void lcd_ChannelOut(uint8_t channel);
extern void lcd_longout();
extern void lcd_blank(uint8_t count);
extern void lcd_dec2out(uint8_t val);
extern void lcd_clrEol();
extern void lcd_waitSymbolOn();
extern void lcd_waitSymbolOff();
extern uint8_t lcd_noteOut(uint8_t noteNr);

#define PUTSTRING_MAXLEN 20

extern char* putString_P(const __flash char* pSourceString, char* pOutput);
extern char* putChar_Dec2(uint8_t val, char* pOutput);
extern char* putChar_Dec(uint8_t val, char* pOutput);
extern char* putChar_hex(uint8_t val, char* pOutput);
extern char* putChar_word(uint16_t val, char* pOutput);
extern char* putChar_long(uint32_t val, char* pOutput);
extern char* putChar_Note(uint8_t note, char* pOutput);
extern char* putChar_Manual(uint8_t manual, char* pOutput);
extern char* putChar_MidiChan(uint8_t channel, char* pOutput);
extern char* putString_Prog(char* pOutput, uint8_t progNr);

extern uint8_t lcd_edit_longint(uint8_t cursor);
extern uint8_t lcd_edit_byte(uint8_t cursor);

//==================== K E Y  L A B E L   H E A D L I N E ===========================

#define KEYLABEL_COUNT 4
#define KEYLABEL_LEN 5
#define KEYLABEL_LCDLINE LCD_LINE3
#define KEYLABEL_STATEON_CHAR 0x2A
#define KEYLABEL_STATEOFF_CHAR 0x80 // and see lcd_u.h

extern const __flash char keylabel_plus []  ;
extern const __flash char keylabel_minus []  ;
extern const __flash char keylabel_up []  ;
extern const __flash char keylabel_down []  ;
extern const __flash char keylabel_right []  ;
extern const __flash char keylabel_left []  ;
extern const __flash char keylabel_onoff [] ;
extern const __flash char keylabel_exit [] ;
extern const __flash char keylabel_text [] ;
extern const __flash char keylabel_0 [] ;
extern const __flash char keylabel_1 [] ;
extern const __flash char keylabel_on [] ;
extern const __flash char keylabel_off [] ;


extern void keylabel_set(uint8_t keyNr, const __flash char* labelPStr);
extern void keylabel_toLCD();
extern void keylabel_clr(uint8_t keyNr);
extern uint8_t keylabel_statcheck(uint8_t keyNr, uint8_t status);

//************************************ P I P E *************************************

//****************************** G E N E R A L *************************************

#define TRUE 0xFF
#define FALSE 0x00

#define STRINGBUFLEN 64
extern char  string_Buf[STRINGBUFLEN];

extern const char cr_lf [] PROGMEM;
#define GET_STRLEN_MAXLEN 32
extern uint8_t get_StrLenP(const __flash char* pString);
extern uint8_t get_StrLen(const char* pString);
extern uint8_t reverse_Bits(uint8_t val);

#endif /* UTILS_H_ */