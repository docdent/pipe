/*
 * utils.c
 *
 * Created: 15.12.2018 12:42:09
 *  Author: Anwender
 */

#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>

#include "utils.h"
#include "lcd_u.h"
#include "hwtimer.h"
#include "message.h"
#include "Midi.h"

const char cr_lf [] PROGMEM = "\r\n";
char string_Buf[STRINGBUFLEN]; // buffer for LCD output

Longint_t editLong;
uint8_t editByte;

uint8_t nibbleToChr(uint8_t myNibble){
	if (myNibble > 9){
		return ('A'+myNibble-10);
	} else {
		return ('0'+myNibble);
	}
}

// ----------------------------------------------- L C D ----------------------------------------
// write character directly to LCD

void lcd_decout(uint8_t decNumber){
	uint8_t nibble = 0;
	while (decNumber >= 100) {
		nibble++;
		decNumber -= 100;
	}
	lcd_putc('0'+nibble);
	nibble = 0;
	while (decNumber >= 10) {
		nibble++;
		decNumber -= 10;
	}
	lcd_putc('0'+nibble);
	nibble = decNumber;
	lcd_putc('0'+nibble);
}

void lcd_wordout(uint16_t hexNumber){
	uint8_t byteVal = hexNumber >> 8;
	lcd_hexout(byteVal);
	byteVal = hexNumber &0xFF;
	lcd_hexout(byteVal);
}

uint8_t lcd_noteOut(uint8_t noteNr){
	// returns number of chars that were send to lcd (actually always 3 now)
	uint8_t octave = 0;
	char char1 = ' '; // only to avoid warning
	char char2 = '#';
	char char3;
	if (noteNr > 127){
		// max midi note
		char1 = '-';
		char2 = '-';
		char3 = '-';
		} else {
		while (noteNr >= 12) {
			octave++;
			noteNr -= 12;
		}
		switch (noteNr){
			case 0:
			char2 = LCD_CHAR_NOTESTRAIGHT_SYM;
			case 1:
			char1 = 'C';
			break;
			case 2:
			char2 = LCD_CHAR_NOTESTRAIGHT_SYM;
			case 3:
			char1 = 'D';
			break;
			case 4:
			char1 = 'E';
			char2 = LCD_CHAR_NOTESTRAIGHT_SYM;
			break;
			case 5:
			char2 = LCD_CHAR_NOTESTRAIGHT_SYM;
			case 6:
			char1 = 'F';
			break;
			case 7:
			char2 = LCD_CHAR_NOTESTRAIGHT_SYM;
			case 8:
			char1 = 'G';
			break;
			case 9:
			char2 = LCD_CHAR_NOTESTRAIGHT_SYM;
			case 10:
			char1 = 'A';
			break;
			case 11:
			char1 = 'H';
			char2 = LCD_CHAR_NOTESTRAIGHT_SYM;
			break;
		}
		if (octave == 0) {
			char3 = '-';
			} else {
			char3 = '0'+octave-1;
		}
	}
	lcd_putc(char1);
	lcd_putc(char2);
	lcd_putc(char3);
	return(3); // number of chars is 3
}

void lcd_ModBitOut(uint8_t modBit){
	lcd_putc('M');
	lcd_putc('0'+MODULE_BIT_TO_MODULE(modBit));
	lcd_putc('B');
	modBit = MODULE_BIT_TO_BIT(modBit);
	uint8_t nibble = '0';
	while (modBit > 10){
		nibble++;
		modBit -= 10;
	}
	lcd_putc(nibble);
	lcd_putc('0'+modBit);
}

void lcd_ManualOut(uint8_t manual){
	// 0 = III, 1 = II, 2 = I, 3 = P
	if (manual > MANUAL_P) {
		lcd_putc('-');
		} else {
		if (manual == MANUAL_P){
			lcd_putc('P');
			} else {
			lcd_putc('I');
			if (manual < MANUAL_I) {
				lcd_putc('I');
				if (manual < MANUAL_II) {
					lcd_putc('I');
				}
			}
		}
	}
}

void lcd_ChannelOut(uint8_t channel){
	channel &= 0x0F;
	channel++;
	if (channel > 9) {
		lcd_putc('1');
		channel = channel-10;
	}
	lcd_putc('0'+channel);
}

void lcd_ManualOutDec(uint8_t manual){
	// 0 = "3", 1 = 2, 2 = "1", 3 = P
	if (manual > MANUAL_P) {
		lcd_putc('-');
		} else if (manual == MANUAL_P){
		lcd_putc('P');
		} else {
		lcd_putc('3'-manual);
	}
}

void lcd_blank(uint8_t count){
	while (count-- != 0){
		lcd_putc(' ');
	}
}

void lcd_clrEol(){
	uint8_t i = 0;
	// max 20 spaces till linend
	while ((lcd_cursorPos != LCD_EOLINE0) && (lcd_cursorPos != LCD_EOLINE1)
	&& (lcd_cursorPos != LCD_EOLINE2) && (lcd_cursorPos != LCD_EOLINE3) && (i++ < 20)){
		lcd_putc(' ');
	}
}


void lcd_hexout(uint8_t hexNumber){
	uint8_t nibble = hexNumber >> 4;
	lcd_putc( (nibble > 9 ) ? 'A'-10+nibble : '0'+nibble);
	nibble = hexNumber & 0x0F;
	lcd_putc( (nibble > 9 ) ? 'A'-10+nibble : '0'+nibble);
	}

void lcd_longout(){
	// editLong is to be displayed
	uint8_t hexNumber;
	for (int8_t i = 3; i >= 0; i--){
		hexNumber = editLong.byteval[i];
		uint8_t nibble = hexNumber >> 4;
		lcd_putc( (nibble > 9 ) ? 'A'-10+nibble : '0'+nibble);
		nibble = hexNumber & 0x0F;
		lcd_putc( (nibble > 9 ) ? 'A'-10+nibble : '0'+nibble);
	}
}

void lcd_dec2out(uint8_t val){
	if (val > 99) {
		lcd_putc('-');
		lcd_putc('-');
	} else {
		uint8_t tens = 0;
		while (val > 9) {
			val -= 10;
			tens++;
		}
		lcd_putc('0'+tens);
		lcd_putc('0'+val);
	}
}

// ------------------------- P U T x ---------------------
// write characters to buffer an return new buffer pointer

char* putChar_Dec2(uint8_t val, char* pOutput) {
	if (val > 99) {
		*(pOutput++) = '-';
		*(pOutput++) = '-';
	} else {
		uint8_t tens = 0;
		while (val > 9) {
			val -= 10;
			tens++;
		}
		*(pOutput++) = '0'+tens;
		*(pOutput++) = '0'+val;
	}
	*pOutput = 0;
	return pOutput;
}

char* putChar_Dec(uint8_t val, char* pOutput) {
	uint8_t hundreds = 0;
	uint8_t weHadHundreds = FALSE;
	while (val > 99) {
		val -= 100;
		hundreds++;
	}
	if (hundreds > 0){
		*(pOutput++) = '0'+hundreds;
		weHadHundreds = TRUE;
	}
	uint8_t tens = 0;
	while (val > 9) {
		val -= 10;
		tens++;
	}
	if ((tens > 0) || (weHadHundreds == TRUE)){
		*(pOutput++) = '0'+tens;
	}
	*(pOutput++) = '0'+val;
	*pOutput = 0;
	return pOutput;
}


char* putChar_hex(uint8_t val, char* pOutput){
	uint8_t nibble = val >> 4;
	*(pOutput++) =  (nibble > 9 ) ? 'A'-10+nibble : '0'+nibble;
	nibble = val & 0x0F;
	*(pOutput++) =  (nibble > 9 ) ? 'A'-10+nibble : '0'+nibble;
	*pOutput = 0;
	return pOutput;
}

char* putChar_MidiChan(uint8_t channel, char* pOutput){
	if (channel > MIDI_CHANNEL_MAX){
		*pOutput++ = 'n';
		*pOutput++ = 'o';
	} else {
		channel++;
		if (channel > 9){
			*pOutput++ = '1';
			channel -= 10;
		} else {
			*pOutput++ = ' ';
		}
		*pOutput++ = '0'+channel;
	}
	*pOutput = 0;
	return pOutput;
}

char* putChar_word(uint16_t val, char* pOutput){
	pOutput = pOutput + 4;
	*pOutput = 0;
	uint8_t nibble;
	for (uint8_t i = 0; i < 4; i++){
		nibble = val & 0x0F;
		*(--pOutput) =  (nibble > 9 ) ? 'A'-10+nibble : '0'+nibble;
		val = val >> 4;
	}
	return pOutput+4;
}

char* putChar_long(uint32_t val, char* pOutput){
	pOutput = pOutput + 8;
	*pOutput = 0;
	uint8_t nibble;
	for (uint8_t i = 0; i < 4; i++){
		nibble = val & 0x0F;
		*(--pOutput) =  (nibble > 9 ) ? 'A'-10+nibble : '0'+nibble;
		val = val >> 4;
	}
	return pOutput+4;
}


char* putChar_Note(uint8_t midiNote, char* pOutput){
	char prefix;
	uint8_t octave = 0;
	uint8_t note = midiNote;
	if (note > 0x7F) {
		*pOutput++ = '-';
		*pOutput++ = 'n';
		*pOutput++ = '-';
		*pOutput++ = 0;
	} else {
		prefix = '_';
		while(note >= 12){
			note = note-12;
			octave++;
		}
		if (note == 11){
			*pOutput++ = 'H';
		} else if (note < 5) {
			// C..E
			*pOutput++ = 'C' + (note >> 1);
			if ((note & 0x01) == 0x01) {
				prefix = '#';
			}
		} else {
			// F..A#
			if (note > 8) {
				// 9..10 = A/A#
				*pOutput++ = 'A';
			} else {
				// 5..8 = F..G#
				*pOutput++ = 'F' + ((note-5) >> 1);
			}
			if ((note & 0x01) == 0x00) {
				prefix = '#';
			}
		}
		*pOutput++ = prefix;
		if (octave == 0){
			*pOutput++ = 'm';
		} else if (octave < 12) {
			*pOutput++ = '0'+ octave-1;
		} else {
			*pOutput++ = '-'; // should not happen
		}
		}
	*pOutput = 0;
	return pOutput;
}

char* putChar_Manual(uint8_t manual, char* pOutput){
	if (manual < MANUAL_P){
		*pOutput++ = '3' - (manual - MANUAL_III);
	} else if (manual == MANUAL_P) {
		*pOutput++ = 'P';
	} else {
		*pOutput++ ='-';
	}
	*pOutput = 0;
	return pOutput;
}

extern char* putString_P(const __flash char* pSourceString, char* pOutput){
	uint8_t count = 0;
	do {
		if (*pSourceString == 0){
			return pOutput;
		}
		*pOutput++ = *pSourceString++;
	} while (count++ < PUTSTRING_MAXLEN);
	return pOutput;
}

char* putString_Prog(char* pOutput, uint8_t progNr){
	*pOutput++ = 'P';
	*pOutput++ = 'A'+ ((progNr >> 3) & 0x07);
	*pOutput++ = '1'+ (progNr & 0x07);
	return pOutput;
}

// -----------------------------------------------------------------------------

void lcd_waitSymbolOn(){
	uint8_t saveCursor = lcd_cursorPos;
	lcd_goto(LCD_CHAR_WAIT_CURSOR);
	lcd_putc(LCD_CHAR_WAIT_SYMBOL);
	lcd_goto(saveCursor);
}

void lcd_waitSymbolOff(){
	uint8_t saveCursor = lcd_cursorPos;
	lcd_goto(LCD_CHAR_WAIT_CURSOR);
	lcd_putc(' ');
	lcd_goto(saveCursor);
}

#define DEC_OVFL 0xFF
uint8_t chekcDecNibbles(uint8_t myNibbles[3]){
	if ((myNibbles[0] + 10*myNibbles[1] + 100*myNibbles[2]) > 255) {
		return(DEC_OVFL);
	}  else {
		return(0);
	}
}

// --------------------------------- K E Y    L A B E L ---------------------------------------
// softkey

const char __flash keylabel_up []  = LCD_STRING_ARROWUP;
const char __flash keylabel_down []  = LCD_STRING_ARROWDOWN;
const char __flash keylabel_right []  = LCD_STRING_ARROWRIGHT;
const char __flash keylabel_left []  = LCD_STRING_ARROWLEFT;
const char __flash keylabel_plus []  = "+";
const char __flash keylabel_minus []  = "-";
const char __flash keylabel_onoff []  = "Ein" LCD_STRING_STATEONOFF; // \x80 KEYLABEL_STATEOFF_CHAR
const char __flash keylabel_on []  = LCD_STRING_ARROWRIGHT "ein";
const char __flash keylabel_off []  = LCD_STRING_ARROWRIGHT "aus";
const char __flash keylabel_exit []  = "Exit";
const char __flash keylabel_text []  = "Text" LCD_STRING_STATEONOFF; // \x80 KEYLABEL_STATEOFF_CHAR
const char __flash keylabel_0 [] = "0";
const char __flash keylabel_1 [] = "1";

static char labelBuffer [KEYLABEL_COUNT * KEYLABEL_LEN];

void keylabel_set(uint8_t keyNr, const __flash char* labelPStr){
	const __flash char* tempLabelPStr = labelPStr;
	uint8_t labelLen = 0;
	if (keyNr < KEYLABEL_COUNT){
		while ((*tempLabelPStr++ != 0) && (labelLen <KEYLABEL_LEN)) {
			labelLen++;
		}
	}
	char * charBufPtr = & labelBuffer[keyNr*KEYLABEL_LEN];
	uint8_t i = 0;
	uint8_t startText = (KEYLABEL_LEN - labelLen) / 2;
	uint8_t startEndSpaces = startText + labelLen;
	while (i < KEYLABEL_LEN){
		if ((i < startText) || (i >= startEndSpaces)){
			*charBufPtr = ' ';
		} else {
			*charBufPtr = *labelPStr++;
		}
		charBufPtr++;
		i++;
	}
}

void keylabel_clr(uint8_t keyNr){
	char* charPtr = & labelBuffer[keyNr * KEYLABEL_LEN];
	for (uint8_t i = 0; i < KEYLABEL_LEN; i++){
		*charPtr++ = ' ';
	}
}

void keylabel_toLCD(){
	uint8_t oldCursor = lcd_cursorPos;
	lcd_goto(KEYLABEL_LCDLINE);
	char *pChar = &labelBuffer[0];
	for (uint8_t i = 0; i < (KEYLABEL_COUNT * KEYLABEL_LEN); i++){
		lcd_putc(*pChar++);
	}
	lcd_goto(oldCursor);
}

uint8_t keylabel_statcheck(uint8_t keyNr, uint8_t status){
	// adapt statuscharacter KEYLABEL_STATEON_CHAR KEYLABEL_STATEOFF_CHAR to parameter status
	char* charPtr = & labelBuffer[keyNr * KEYLABEL_LEN];
	uint8_t result = 0;
	for (uint8_t i = 0; i < KEYLABEL_LEN; i++){
		uint8_t tempChar = *charPtr;
		if ((status == 0) && (tempChar == KEYLABEL_STATEON_CHAR)) {
			*charPtr = KEYLABEL_STATEOFF_CHAR;
			result = 0xFF;
		} else if ((status != 0) && (tempChar == KEYLABEL_STATEOFF_CHAR)) {
			*charPtr = KEYLABEL_STATEON_CHAR;
			result = 0xFF;
		}
		charPtr++;
	}
	return result; // true if changes made
}
// -------------------------------------------  G E N E R A L -----------------------------------------

uint8_t get_StrLenP(const __flash char* pString){
	uint8_t result = 0;
	do
	{
		if (*pString == 0) {
			return result;
		}
		pString++;
	} while (++ result < GET_STRLEN_MAXLEN);
	return result;
}

uint8_t get_StrLen(const char* pString){
	uint8_t result = 0;
	do
	{
		if (*pString == 0) {
			return result;
		}
		pString++;
	} while (++ result < GET_STRLEN_MAXLEN);
	return result;
}

extern uint8_t reverse_Bits(uint8_t val){
	uint8_t result = 0;
	for (uint8_t i = 0; i < 8; i++) {
		result = result << 1;
		result = result | (val & 0x01);
		val = val >> 1;
	}
	return result;
}