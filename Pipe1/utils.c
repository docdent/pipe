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
char string_Buf[STRINGBUFLEN];
// ----------------------------------------------- L C D ----------------------------------------

Longint_t editLong;
uint8_t editByte;
uint8_t lcd_cursorIsOn;

uint8_t nibbleToChr(uint8_t myNibble){
	if (myNibble > 9){
		return ('A'+myNibble-10);
	} else {
		return ('0'+myNibble);
	}
}

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

void lcd_setCG(uint8_t charNr, const uint8_t* patternPtr){
	lcd_write_command(LCD_SETCGRAMADR | (charNr << 3));
	for (uint8_t i = 0; i < 8; i++){
		lcd_write_character(pgm_read_byte(patternPtr++));
	}
}

void lcd_initCG(){
	lcd_setCG(0,cgPattern_Up); // 0x08 = Arrow Up
	lcd_setCG(1,cgPattern_Down); // 0x09 = Arrow Down
	lcd_setCG(2,cgPattern_Block); // 0x0A = Block = State On
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

char* putChar_hex(uint8_t val, char* pOutput){
	uint8_t nibble = val >> 4;
	*(pOutput++) =  (nibble > 9 ) ? 'A'-10+nibble : '0'+nibble;
	nibble = val & 0x0F;
	*(pOutput++) =  (nibble > 9 ) ? 'A'-10+nibble : '0'+nibble;
	*pOutput = 0;
	return pOutput;
}

char* putChar_long(uint16_t val, char* pOutput){
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
	char char1;
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
				char2 = LCD_NOTESTRAIGHT_SYM;
			case 1:
				char1 = 'C';
			break;
			case 2:
				char2 = LCD_NOTESTRAIGHT_SYM;
			case 3:
				char1 = 'D';
			break;
			case 4:
				char1 = 'E';
				char2 = LCD_NOTESTRAIGHT_SYM;
			break;
			case 5:
				char2 = LCD_NOTESTRAIGHT_SYM;
			case 6:
				char1 = 'F';
			break;
			case 7:
				char2 = LCD_NOTESTRAIGHT_SYM;
			case 8:
				char1 = 'G';
			break;
			case 9:
				char2 = LCD_NOTESTRAIGHT_SYM;
			case 10:
				char1 = 'A';
			break;
			case 11:
				char1 = 'H';
				char2 = LCD_NOTESTRAIGHT_SYM;
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

void lcd_cursosblink(){
	lcd_write_command((1 << LCD_DISPLAYMODE) | (1 << LCD_DISPLAYMODE_ON) | (1 << LCD_DISPLAYMODE_BLINK));
	lcd_cursorIsOn = TRUE;
}

void lcd_cursoroff(){
	lcd_write_command((1 << LCD_DISPLAYMODE) | (1 << LCD_DISPLAYMODE_ON));
	lcd_cursorIsOn = FALSE;
}

// uint8_t lcd_edit_byte(uint8_t cursor){
// 	// input and output stored in editVal
// 	lcd_goto(cursor);
// 	lcd_hexout(editByte);
// 	lcd_goto(cursor);
// 	lcd_cursosblink();
// 	#define MAX_NIBBLE 1
// 	uint8_t nibbleNr = MAX_NIBBLE;
// 	uint8_t exitCode = 0;
// 	#define EXIT_TIMEOUT 0xFF
// 	while (exitCode == 0) {
// 		TIMER_SET(TIMER_INPUTTIMEOUT,TIMER_INPUTTIMEOUT_MS) // max 5sec
// 		while (TIMER_RUNNING(TIMER_INPUTTIMEOUT) && (message_status() == MESSAGE_STAT_EMPTY));
// 		if (message_status() == MESSAGE_STAT_NONEMPTY) {
// 			// key pressed
// 			uint8_t myNibble;
// 			switch (message_get()){
// 			case MESSAGE_KEY_RIGHT:
// 				// change nibble position to right or exit if last is reached
// 				if (nibbleNr == 0){
// 					// exit to the right
// 					exitCode = MESSAGE_KEY_RIGHT;
// 				} else {
// 					nibbleNr--;
// 					lcd_goto(cursor + MAX_NIBBLE - nibbleNr);
// 				}
// 				break;
// 			case MESSAGE_KEY_UP:
// 				// increment nibble
// 				// get nibble from editVal
// 				myNibble = editByte;
// 				if ((nibbleNr & 0x01) == 0) {
// 					// low nibble
// 					myNibble &= 0x0F;
// 				} else {
// 					// high nibblew
// 					myNibble = myNibble >> 4;
// 				}
// 				// increment nibble
// 				myNibble = (myNibble+1) & 0x0F;
// 				// output to lcd
// 				lcd_putc((myNibble > 9 ) ? 'A'-10+myNibble : '0'+myNibble);
// 				lcd_goto(cursor + MAX_NIBBLE - nibbleNr);
// 				// save to editVal
// 				if ((nibbleNr & 0x01) == 0) {
// 					// low nibble
// 					editByte = (editByte & 0xF0) | myNibble;
// 				} else {
// 					// high nibble
// 					editByte = (editByte & 0x0F) | (myNibble << 4);
// 				}
// 				break;
// 			case MESSAGE_KEY_DOWN:
// 				// decrement nibble
// 				myNibble = editByte;
// 				if ((nibbleNr & 0x01) == 0) {
// 					// low nibble
// 					myNibble &= 0x0F;
// 				} else {
// 					// high nibble
// 					myNibble = myNibble >> 4;
// 				}
// 				// decrement nibble
// 				myNibble = (myNibble-1) & 0x0F;
// 				// out to lcd
// 				lcd_putc((myNibble > 9 ) ? 'A'-10+myNibble : '0'+myNibble);
// 				lcd_goto(cursor + MAX_NIBBLE - nibbleNr);
// 				// save nibble to editVal
// 				if ((nibbleNr & 0x01) == 0) {
// 					// low nibble
// 					editByte = (editByte & 0xF0) | myNibble;
// 					} else {
// 					// high nibble
// 					editByte = (editByte & 0x0F) | (myNibble << 4);
// 				}
// 				break;
// 			case MESSAGE_KEY_LEFT:
// 				if (nibbleNr == MAX_NIBBLE){
// 					// exit to the left
// 					exitCode = MESSAGE_KEY_LEFT;
// 				} else {
// 					nibbleNr++;
// 					lcd_goto(cursor + MAX_NIBBLE - nibbleNr);
// 				}
// 				break;
// 				case MESSAGE_KEY_SEL:
// 				exitCode = MESSAGE_KEY_SEL;
// 				break;
// 			} // switch
// 		} else {
// 			// timeout
// 			exitCode = EXIT_TIMEOUT;
// 		} //if
// 	} // while
// 	lcd_cursoroff();
// 	return exitCode;
// 	#undef BYTE_NR
// 	#undef MAX_NIBBLE
// }

// uint8_t lcd_edit_longint(uint8_t cursor){
// 	// input and output stored in editVal
// 	uint8_t *myByte;
// 	myByte = &(editLong.byteval[3]);  // we need byte access only
// 	lcd_goto(cursor);
// 	for (int8_t i = 3; i >= 0; i--){
// 		lcd_hexout(*myByte);
// 		myByte--;
// 	}
// 	lcd_goto(cursor);
// 	lcd_cursosblink();
// 	#define MAX_NIBBLE 7
// 	uint8_t nibbleNr = MAX_NIBBLE;
// 	#define BYTE_NR (nibbleNr >> 1)
// 	uint8_t exitCode = 0;
// 	#define EXIT_TIMEOUT 0xFF
// 	myByte = & editLong.byteval[0]; // ignore type warning
// 	while (exitCode == 0) {
// 		TIMER_SET(TIMER_INPUTTIMEOUT,TIMER_INPUTTIMEOUT_MS) // max 5sec
// 		while (TIMER_RUNNING(TIMER_INPUTTIMEOUT) && (message_status() == MESSAGE_STAT_EMPTY));
// 		if (message_status() == MESSAGE_STAT_NONEMPTY) {
// 			// key pressed
// 			uint8_t myNibble;
// 			switch (message_get()){
// 			case MESSAGE_KEY_RIGHT:
// 				// change nibble position to right or exit if last is reached
// 				if (nibbleNr == 0){
// 					// exit to the right
// 					exitCode = MESSAGE_KEY_RIGHT;
// 				} else {
// 					nibbleNr--;
// 					lcd_goto(cursor + MAX_NIBBLE - nibbleNr);
// 				}
// 				break;
// 			case MESSAGE_KEY_UP:
// 				// increment nibble
// 				// get nibble from editVal
// 				myNibble = editLong.byteval[BYTE_NR];
// 				if ((nibbleNr & 0x01) == 0) {
// 					// low nibble
// 					myNibble &= 0x0F;
// 				} else {
// 					// high nibblew
// 					myNibble = myNibble >> 4;
// 				}
// 				// increment nibble
// 				myNibble = (myNibble+1) & 0x0F;
// 				// output to lcd
// 				lcd_putc((myNibble > 9 ) ? 'A'-10+myNibble : '0'+myNibble);
// 				lcd_goto(cursor + MAX_NIBBLE - nibbleNr);
// 				// save to editVal
// 				if ((nibbleNr & 0x01) == 0) {
// 					// low nibble
// 					editLong.byteval[BYTE_NR] = (editLong.byteval[BYTE_NR] & 0xF0) | myNibble;
// 				} else {
// 					// high nibble
// 					editLong.byteval[BYTE_NR] = (editLong.byteval[BYTE_NR] & 0x0F) | (myNibble << 4);
// 				}
// 				break;
// 			case MESSAGE_KEY_DOWN:
// 				// decrement nibble
// 				myNibble = editLong.byteval[BYTE_NR];
// 				if ((nibbleNr & 0x01) == 0) {
// 					// low nibble
// 					myNibble &= 0x0F;
// 				} else {
// 					// high nibble
// 					myNibble = myNibble >> 4;
// 				}
// 				// decrement nibble
// 				myNibble = (myNibble-1) & 0x0F;
// 				// out to lcd
// 				lcd_putc((myNibble > 9 ) ? 'A'-10+myNibble : '0'+myNibble);
// 				lcd_goto(cursor + MAX_NIBBLE - nibbleNr);
// 				// save nibble to editVal
// 				if ((nibbleNr & 0x01) == 0) {
// 					// low nibble
// 					editLong.byteval[BYTE_NR] = (editLong.byteval[BYTE_NR] & 0xF0) | myNibble;
// 				} else {
// 					// high nibble
// 					editLong.byteval[BYTE_NR] = (editLong.byteval[BYTE_NR] & 0x0F) | (myNibble << 4);
// 				}
// 				break;
// 			case MESSAGE_KEY_LEFT:
// 				if (nibbleNr == MAX_NIBBLE){
// 					// exit to the left
// 					exitCode = MESSAGE_KEY_LEFT;
// 				} else {
// 					nibbleNr++;
// 					lcd_goto(cursor + MAX_NIBBLE - nibbleNr);
// 				}
// 				break;
// 			case MESSAGE_KEY_SEL:
// 				exitCode = MESSAGE_KEY_SEL;
// 				break;
// 			} // switch
// 		} else {
// 			// timeout
// 			exitCode = EXIT_TIMEOUT;
// 		}
// 	}
// 	lcd_cursoroff();
// 	return exitCode;
// 	#undef BYTE_NR
// 	#undef MAX_NIBBLE
// }

void lcd_waitSymbolOn(){
	uint8_t saveCursor = lcd_cursorPos;
	lcd_goto(LCD_WAIT_CURSOR);
	lcd_putc(LCD_WAIT_SYMBOL);
	lcd_goto(saveCursor);
}

void lcd_waitSymbolOff(){
	uint8_t saveCursor = lcd_cursorPos;
	lcd_goto(LCD_WAIT_CURSOR);
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

// uint8_t lcd_edit_decByte(uint8_t cursor){
// 	// input and output stored in editVal
// 	lcd_goto(cursor);
// 	lcd_decout(editByte);
// 	lcd_goto(cursor);
// 	lcd_cursosblink();
// 	uint8_t decNumber = editByte;
// 	#define MAX_NIBBLE 2
// 	uint8_t nibbles[3];
// 	nibbles[2] = 0; //MSB
// 	while (decNumber >= 100) {
// 		nibbles[2]++;
// 		decNumber -= 100;
// 	}
// 	nibbles[1] = 0;
// 	while (decNumber >= 10) {
// 		nibbles[1]++;
// 		decNumber -= 10;
// 	}
// 	nibbles[0] = decNumber; // LSB
// 	uint8_t nibbleNr = MAX_NIBBLE;
// 	uint8_t exitCode = 0;
// 	#define EXIT_TIMEOUT 0xFF
// 	while (exitCode == 0) {
// 		TIMER_SET(TIMER_INPUTTIMEOUT,TIMER_INPUTTIMEOUT_MS) // max 5sec
// 		while (TIMER_RUNNING(TIMER_INPUTTIMEOUT) && (message_status() == MESSAGE_STAT_EMPTY));
// 		if (message_status() == MESSAGE_STAT_NONEMPTY) {
// 			// key pressed
// 			uint8_t oldNibble = nibbles[nibbleNr];
// 			switch (message_get()){
// 			case MESSAGE_KEY_RIGHT:
// 					// change nibble position to right or exit if last is reached
// 					if (nibbleNr == 0){
// 						// exit to the right
// 						exitCode = MESSAGE_KEY_RIGHT;
// 					} else {
// 						nibbleNr--;
// 						lcd_goto(cursor + MAX_NIBBLE - nibbleNr);
// 					}
// 				break;
// 			case MESSAGE_KEY_UP:
// 				// increment nibble
// 				if (nibbles[nibbleNr] >= 9) {
// 					nibbles[nibbleNr] = 0;
// 				} else {
// 					// checkmax byte
// 					uint8_t oldNibble = nibbles[nibbleNr];
// 					nibbles[nibbleNr]++;
// 					if (chekcDecNibbles(nibbles) == DEC_OVFL){
// 						nibbles[nibbleNr] = oldNibble;
// 					}
// 				}
// 				lcd_putc('0'+nibbles[nibbleNr]);
// 				lcd_goto(cursor + MAX_NIBBLE - nibbleNr);
// 				break;
// 			case MESSAGE_KEY_DOWN:
// 				// decrement nibble
// 				if (nibbles[nibbleNr] == 0) {
// 					nibbles[nibbleNr] = 9;
// 				} else {
// 					nibbles[nibbleNr]--;
// 				}
// 				if (chekcDecNibbles(nibbles) == DEC_OVFL){
// 					nibbles[nibbleNr] = oldNibble;
// 				}
// 				lcd_putc('0'+nibbles[nibbleNr]);
// 				lcd_goto(cursor + MAX_NIBBLE - nibbleNr);
// 				break;
// 			case MESSAGE_KEY_LEFT:
// 				if (nibbleNr == MAX_NIBBLE){
// 					// exit to the left
// 					exitCode = MESSAGE_KEY_LEFT;
// 					} else {
// 					nibbleNr++;
// 					lcd_goto(cursor + MAX_NIBBLE - nibbleNr);
// 				}
// 				break;
// 				case MESSAGE_KEY_SEL:
// 				exitCode = MESSAGE_KEY_SEL;
// 				break;
// 			} // switch
// 			} else {
// 			// timeout
// 			exitCode = EXIT_TIMEOUT;
// 		} //if
// 	} // while
// 	lcd_cursoroff();
// 	editByte = 100*nibbles[2] + 10*nibbles[1] + nibbles[0];
// 	return exitCode;
// 	#undef BYTE_NR
// 	#undef MAX_NIBBLE
// }

void lcd_midiChout(uint8_t *midiChannel){
	if (*midiChannel > 0x0F) {
		// invald MIDI channel
		*midiChannel = 0xFF;
		lcd_putc(' ');
		lcd_putc('-');
	} else if (*midiChannel > 0x08) {
		// ab 0x09
		lcd_putc('1');
		lcd_putc('0'+*midiChannel-9); // 0x09=channel 10
	} else {
		lcd_putc(' ');
		lcd_putc('1'+*midiChannel); // 0x00=channel 1
	}
}

// uint8_t lcd_edit_midiChan(uint8_t cursor){
// 	// input and output stored in editVal
// 	lcd_goto(cursor);
// 	lcd_midiChout(&editByte);
// 	lcd_goto(cursor+1);
// 	lcd_cursosblink();
// 	uint8_t exitCode = 0;
// 	#define EXIT_TIMEOUT 0xFF
// 	while (exitCode == 0) {
// 		TIMER_SET(TIMER_INPUTTIMEOUT,TIMER_INPUTTIMEOUT_MS) // max 5sec
// 		while (TIMER_RUNNING(TIMER_INPUTTIMEOUT) && (message_status() == MESSAGE_STAT_EMPTY));
// 		if (message_status() == MESSAGE_STAT_NONEMPTY) {
// 			// key pressed
// 			switch (message_get()){
// 				case MESSAGE_KEY_RIGHT:
// 				// change nibble position to right or exit if last is reached
// 					exitCode = MESSAGE_KEY_RIGHT;
// 				break;
// 				case MESSAGE_KEY_UP:
// 				// increment nibble
// 					editByte++;
// 					lcd_goto(cursor);
// 					lcd_midiChout(&editByte); // out and check ovfl
// 					lcd_goto(cursor+1);
// 				break;
// 				case MESSAGE_KEY_DOWN:
// 				// decrement nibble
// 					editByte--;
// 					lcd_goto(cursor);
// 					lcd_midiChout(&editByte); // out and check ovfl
// 					lcd_goto(cursor+1);
// 				break;
// 				case MESSAGE_KEY_LEFT:
// 					exitCode = MESSAGE_KEY_LEFT;
// 				break;
// 				case MESSAGE_KEY_SEL:
// 					exitCode = MESSAGE_KEY_SEL;
// 				break;
// 			} // switch
// 			} else {
// 			// timeout
// 			exitCode = EXIT_TIMEOUT;
// 		} //if
// 	} // while
// 	lcd_cursoroff();
// 	return exitCode;
// }

uint8_t mod12(uint8_t num){
	while (num >= 12){
		num = num - 12;
	}
	return(num);
}

// uint8_t lcd_edit_midiNote(uint8_t cursor){
// 	// input and output stored in editVal
// 	lcd_cursosblink();
// 	uint8_t exitCode = 0;
// 	uint8_t editingNote = 0xFF;
// 	uint8_t charWidth;
// 	#define EXIT_TIMEOUT 0xFF
// 	while (exitCode == 0) {
// 		lcd_goto(cursor);
// 		charWidth = lcd_noteOut(editByte);
// 		if (editingNote) {
// 			lcd_goto(cursor+1);
// 		} else if (charWidth == 2) {
// 			lcd_goto(cursor+2);
// 		} else {
// 			lcd_goto(cursor+3);
// 		}
// 		TIMER_SET(TIMER_INPUTTIMEOUT,TIMER_INPUTTIMEOUT_MS) // max 5sec
// 		while (TIMER_RUNNING(TIMER_INPUTTIMEOUT) && (message_status() == MESSAGE_STAT_EMPTY));
// 		if (message_status() == MESSAGE_STAT_NONEMPTY) {
// 			// key pressed
// 			switch (message_get()){
// 				case MESSAGE_KEY_RIGHT:
// 					// change nibble position to right or exit if last is reached
// 					if (editingNote) {
// 						editingNote = 0;
// 					} else {
// 						exitCode = MESSAGE_KEY_RIGHT;
// 					}
// 				break;
// 				case MESSAGE_KEY_UP:
// 				// increment nibble
// 					if (editingNote){
// 						if (mod12(editByte + 1) == 0){
// 							// inc note will overflow to "C"
// 							editByte -= 11; // back to lower C
// 						}
// 							editByte++;
// 					} else {
// 						// octave up
// 						editByte += 12;
// 					}
// 					if (editByte > 127) {
// 						// max note overflow
// 						editByte -= 127;
// 					}
// 				break;
// 				case MESSAGE_KEY_DOWN:
// 				// decrement nibble
// 				if (editingNote){
// 					// decrement note
// 					if (editByte > 0) {
// 						// only if not already 0
// 						if (mod12(editByte) == 0) {
// 							// we are on "C"
// 							editByte += 11;
// 							if (editByte > 127) {
// 								// might be ovfl
// 								editByte = 127;
// 							}
// 						} else {
// 							editByte--;
// 						}
// 					}
// 				} else {
// 					// decrement octave
// 					if (editByte >= 12) {
// 						editByte -= 12;
// 					}
// 				}
// 				break;
// 				case MESSAGE_KEY_LEFT:
// 					// change nibble position to right or exit if last is reached
// 					if (editingNote == 0) {
// 						editingNote = 0xFF;
// 					} else {
// 						exitCode = MESSAGE_KEY_LEFT;
// 					}
// 				break;
// 				case MESSAGE_KEY_SEL:
// 					exitCode = MESSAGE_KEY_SEL;
// 				break;
// 			} // switch
// 			} else {
// 			// timeout
// 			exitCode = EXIT_TIMEOUT;
// 		} //if
// 	} // while
// 	lcd_cursoroff();
// 	return exitCode;
// }

// uint8_t lcd_edit_moduleBit(uint8_t cursor){
// 	// input and output stored in editByte
// 	lcd_cursosblink();
// 	uint8_t exitCode = 0;
// 	#define EDIT_MODULE 0
// 	#define EDIT_BITMSB 1
// 	#define EDIT_BITLSB 2
// 	uint8_t editingPos = EDIT_MODULE;
// 	#define EXIT_TIMEOUT 0xFF
// 	while (exitCode == 0) {
// 		lcd_goto(cursor);
// 		lcd_ModBitOut(editByte);
// 		if (editingPos == EDIT_MODULE) {
// 			lcd_goto(cursor+1);
// 		} else if (editingPos == EDIT_BITMSB) {
// 			lcd_goto(cursor+3);
// 		} else {
// 			lcd_goto(cursor+4);
// 		}
// 		TIMER_SET(TIMER_INPUTTIMEOUT,TIMER_INPUTTIMEOUT_MS) // max 5sec
// 		while (TIMER_RUNNING(TIMER_INPUTTIMEOUT) && (message_status() == MESSAGE_STAT_EMPTY));
// 		if (message_status() == MESSAGE_STAT_NONEMPTY) {
// 			// key pressed
// 			switch (message_get()){
// 				case MESSAGE_KEY_RIGHT:
// 				// change nibble position to right or exit if last is reached
// 				if (editingPos == EDIT_BITLSB) {
// 					exitCode = MESSAGE_KEY_RIGHT;
// 				} else {
// 					editingPos++;
// 				}
// 				break;
// 			case MESSAGE_KEY_UP:
// 				// increment nibble
// 				if (editingPos == EDIT_MODULE){
// 					editByte = (editByte + 0x20);
// 				} else if (editingPos == EDIT_BITMSB){
// 					editByte = (editByte & 0xE0) | ((editByte + 10) & 0x1f) ;
// 				} else {
// 					editByte = (editByte & 0xE0) | ((editByte + 1) & 0x1f) ;
// 				}
// 				break;
// 			case MESSAGE_KEY_DOWN:
// 				// decrement nibble
// 				if (editingPos == EDIT_MODULE){
// 					editByte = (editByte - 0x20);
// 					} else if (editingPos == EDIT_BITMSB){
// 					editByte = (editByte & 0xE0) | ((editByte - 10) & 0x1f) ;
// 					} else {
// 					editByte = (editByte & 0xE0) | ((editByte - 1) & 0x1f) ;
// 				}
// 				break;
// 			case MESSAGE_KEY_LEFT:
// 				// change nibble position to right or exit if last is reached
// 				if (editingPos == EDIT_MODULE) {
// 					exitCode = MESSAGE_KEY_LEFT;
// 				} else {
// 					editingPos--;
// 				}
// 				break;
// 			case MESSAGE_KEY_SEL:
// 				exitCode = MESSAGE_KEY_SEL;
// 				break;
// 			} // switch
// 			} else {
// 			// timeout
// 			exitCode = EXIT_TIMEOUT;
// 		} //if
// 	} // while
// 	lcd_cursoroff();
// 	return exitCode;
// }

// --------------------------------- K E Y    L A B E L ---------------------------------------

const char __flash keylabel_up []  = LCD_ARROWUP;
const char __flash keylabel_down []  = LCD_ARROWDOWN;
const char __flash keylabel_right []  = LCD_ARROWRIGHT;
const char __flash keylabel_left []  = LCD_ARROWLEFT;
const char __flash keylabel_plus []  = "+";
const char __flash keylabel_minus []  = "-";
const char __flash keylabel_onoff []  = "Ein" LCD_STATEONOFF; // \x80 KEYLABEL_STATEOFF_CHAR
const char __flash keylabel_exit []  = "Exit";
const char __flash keylabel_text []  = "Text" LCD_STATEONOFF; // \x80 KEYLABEL_STATEOFF_CHAR

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
// ------------------------------------------- P I P E -----------------------------------------