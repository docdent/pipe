/*
 * test.c
 *
 * Created: 23.01.2019 22:25:32
 *  Author: Anwender
 */

#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <stddef.h>

#include "lcd_u.h"
#include "initio.h"
#include "message.h"
#include "hwtimer.h"
#include "utils.h"
#include "serial.h"
#include "menu.h"

uint32_t pipe_getInput(uint8_t moduleNr){
	uint32_t result = 0;
	uint8_t moduleMask = (1 << moduleNr);
	Pipe_t *myPipe;
	myPipe = &(pipe[PIPE_SHIFTBIT_COUNT-1]);
	for (uint8_t i = 0; i < PIPE_SHIFTBIT_COUNT; i++) {
		result = result << 1;
		if ((myPipe->pipeInStat & moduleMask) != 0) {
			result |= 1;
		}
		myPipe--;
	}
	return (result);
}

void pipe_setOutput(uint8_t moduleNr, uint32_t outVal){
	// outVal is inverted (as output is active low, so here: 1=output on)
	uint8_t moduleMask = (1 << moduleNr);
	Pipe_t *myPipe;
	myPipe = &(pipe[0]);
	for (uint8_t i = 0; i < PIPE_SHIFTBIT_COUNT; i++) {
		if ((outVal & 1) != 0) {
			// clear bit in output (active low)
			myPipe->pipeOut &= ~moduleMask;
		} else {
			// set bit in output
			myPipe->pipeOut |= moduleMask;
		}
		outVal = outVal >> 1;
		myPipe++;
	}
}

uint32_t pipe_getOutput(uint8_t moduleNr){
	// result is inverted (as output is active low, so here: 1=output on)
	uint32_t result = 0;
	uint8_t moduleMask = (1 << moduleNr);
	Pipe_t *myPipe;
	myPipe = &(pipe[PIPE_SHIFTBIT_COUNT-1]);
	for (uint8_t i = 0; i < PIPE_SHIFTBIT_COUNT; i++) {
		result = result << 1;
		if ((myPipe->pipeOut & moduleMask) == 0) {
			result |= 1;
		}
		myPipe--;
	}
	return (result);
}

uint8_t test_pipeIO(){
	uint8_t moduleNr = 0;
	#define T_STAT_EXIT 0
	#define T_STAT_MODULE_NR 1
	#define T_STAT_PIPEDISP 2
	#define T_STAT_PIPEVALUE 3
	uint8_t status = T_STAT_MODULE_NR;
	uint8_t retCode;
	while (status != T_STAT_EXIT){
		switch (status){
			case T_STAT_MODULE_NR:
				lcd_clrscr();
				lcd_putc('M');
				lcd_putc(':');
				editByte = moduleNr ;
				retCode = lcd_edit_byte(0x02);
				moduleNr = editByte & 0x07;
				if (moduleNr != editByte) {
					lcd_goto(0x02);
					lcd_hexout(moduleNr);
				}
				if ((retCode == MESSAGE_KEY_RIGHT) || (retCode == MESSAGE_KEY_SEL)) {
					status = T_STAT_PIPEDISP;
				} else if (retCode == MESSAGE_KEY_LEFT)  {
					status = T_STAT_EXIT;
				}
				break;
			case T_STAT_PIPEDISP:
				while (status == T_STAT_PIPEDISP) {
					lcd_goto(0x05);
					editLong.longval = pipe_getInput(moduleNr);
					lcd_longout();
					TIMER_SET(0,100);
					while ((message_status() == MESSAGE_STAT_EMPTY) && (TIMER_RUNNING(0))); // wait for key
					if (message_status() == MESSAGE_STAT_EMPTY) {
						// timeout, only refresh display
					} else {
						retCode = message_get();
						if ((retCode == MESSAGE_KEY_DOWN) || (retCode == MESSAGE_KEY_RIGHT) || (retCode == MESSAGE_KEY_SEL)) {
							status = T_STAT_PIPEVALUE;
						} else if ((retCode == MESSAGE_KEY_LEFT) || (retCode == MESSAGE_KEY_UP)) {
							status = T_STAT_MODULE_NR;
						}
					}
				} //
				break;
			case T_STAT_PIPEVALUE:
				editLong.longval = pipe_getOutput(moduleNr);
				retCode = lcd_edit_longint(0x45);
				pipe_setOutput(moduleNr, editLong.longval);
				editLong.longval = pipe_getOutput(moduleNr);
				lcd_goto(0x45);
				lcd_longout();
				if ((retCode == MESSAGE_KEY_LEFT)) {
					status = T_STAT_MODULE_NR;
				} else {
					status = T_STAT_PIPEDISP;
				}
				break;
		} // switch
	}
	return(status);
}
const char test_text1 [] PROGMEM = "SEL:start IO-Pins";
const char test_text2 [] PROGMEM = "</> other test";

uint8_t test_PipePins(){
	uint8_t repeating = 1;
	uint8_t result;
	while (repeating) {
		lcd_clrscr();
		lcd_puts_P(test_text1);
		lcd_goto(0x040);
		lcd_puts_P(test_text2);
		while (message_status() == MESSAGE_STAT_EMPTY); // wait for key
		result = message_get();
		if (result == MESSAGE_KEY_SEL) {
			cli();
			PIPECTRL_DDR = PIPECTRL_DDR | ((1 << PIPEIO_CLK) | (1 << PIPEIO_LATCH2PIPE) | (1 << PIPEIO_LATCH2CPU));
			lcd_clrscr();
			PIPE_OE_PORT &= ~(1 << PIPE_OE_NR); // OE 0
			PIPECTRL_PORT &= ~((1 << PIPEIO_CLK) | (1 << PIPEIO_LATCH2PIPE) | (1 << PIPEIO_LATCH2CPU)); // CLK, L2P, L2C = 0
			PIPEOUT_PORT = 0; // D2P 0
			_delay_ms(1500);
			lcd_putc('O');
			lcd_putc('E');
			PIPE_OE_PORT |= (1 << PIPE_OE_NR); // OE 1
			_delay_ms(1500);
			PIPE_OE_PORT &= ~(1 << PIPE_OE_NR); // OE 0
			lcd_goto(0);
			lcd_putc('C');
			lcd_putc('L');
			PIPECTRL_PORT |= (1 << PIPEIO_CLK); // CLK 1
			_delay_ms(1500);
			PIPECTRL_PORT &= ~(1 << PIPEIO_CLK); // CLK 0
			lcd_goto(0);
			lcd_putc('L');
			lcd_putc('P');
			PIPECTRL_PORT |= (1 << PIPEIO_LATCH2PIPE); // L2P 1
			_delay_ms(1500);
			PIPECTRL_PORT &= ~(1 << PIPEIO_LATCH2PIPE); // L2P 0
			lcd_goto(0);
			lcd_putc('L');
			lcd_putc('C');
			PIPECTRL_PORT |= (1 << PIPEIO_LATCH2CPU); // L2C 1
			_delay_ms(1500);
			PIPECTRL_PORT &= ~(1 << PIPEIO_LATCH2CPU); // L2C 0
			lcd_goto(0);
			lcd_putc('D');
			lcd_putc('P');
			PIPEOUT_PORT = 0xFF; // D2P 1
			_delay_ms(1500);
			PIPEOUT_PORT = 0; // D2P 0
			sei();
		} else {
			repeating = 0;
		}
	}
	return(result);
}

void test_input(){
	uint8_t returnCode = 0;
	uint32_t testval = 0x12345678;
	uint8_t status = 0; // edit 32 bit
	uint8_t testbyte = 0xAB;
	if (status == 0) {
		editLong.longval = testval;
		returnCode = lcd_edit_longint(04);
		testval = editLong.longval;
		lcd_goto(0x40);
		lcd_hexout(returnCode);
		lcd_goto(0x44);
		lcd_hexout((testval & 0xFF000000) >> 24);
		lcd_hexout((testval & 0x00FF0000) >> 16);
		lcd_hexout((testval & 0x0000FF00) >> 8);
		lcd_hexout((testval & 0x000000FF));
		if (returnCode == MESSAGE_KEY_RIGHT) {
			status = 1;
		}
		} else {
		editByte = testbyte;
		returnCode = lcd_edit_byte(0x0E);
		testbyte = editByte;
		lcd_goto(0x40);
		lcd_hexout(returnCode);
		lcd_goto(0x4E);
		lcd_hexout(editByte);
		if (returnCode == MESSAGE_KEY_LEFT) {
			status = 0;
		}
	}
}


const char test_text3 [] PROGMEM = "SEL:start Ptrn.Test";
const char test_text4 [] PROGMEM = "</> other test";
const char test_text5 [] PROGMEM = "Pattern:";
const char test_text6 [] PROGMEM = "</> test, SEL:ex";
const uint32_t test_pattern[4] PROGMEM = {1,0x000000FF,0xFFFFFFFE,0x81};


uint8_t test_PipePatterns(){
	#define TEST3_ST_EXIT 0
	#define TEST3_ST_WAIT_FOR_START 1
	#define TEST3_PATTERN1 2
	#define TEST3_PATTERN2 3
	#define TEST3_PATTERN3 4
	#define TEST3_PATTERN4 5

	uint8_t myStatus = TEST3_ST_WAIT_FOR_START;
	uint8_t message;
	uint32_t pattern;
	while (myStatus != TEST3_ST_EXIT) {
		switch (myStatus) {
			case TEST3_ST_WAIT_FOR_START:
				lcd_clrscr();
				lcd_puts_P(test_text3);
				lcd_goto(0x040);
				lcd_puts_P(test_text4);
				MESSAGE_WAIT_FOR_MESSAGE(message)
				if (message == MESSAGE_KEY_SEL) {
					myStatus = TEST3_PATTERN1;
				} else {
					myStatus = TEST3_ST_EXIT;
				}
				break;
			case TEST3_PATTERN1:
			case TEST3_PATTERN2:
			case TEST3_PATTERN3:
			case TEST3_PATTERN4:
				pattern = pgm_read_dword (&(test_pattern[myStatus-TEST3_PATTERN1]));
				lcd_clrscr();
				lcd_puts_P(test_text5);
				editLong.longval = pattern;
				lcd_longout();
				uint8_t count = 32;
				while ((count > 0) && (message_status() == MESSAGE_STAT_EMPTY)) {
					// break by any key or when finished
					lcd_goto(0x40);
					editLong.longval = pattern;
					lcd_longout();
					for (uint8_t moduleNr = 0; moduleNr < 8; moduleNr++){
						pipe_setOutput(moduleNr,pattern);
					}
					TIMER_SET(0,50);
					while TIMER_RUNNING(0);
					editLong.longval = pipe_getInput(0);
					lcd_longout();
					TIMER_SET(0,200);
					while TIMER_RUNNING(0);
					pattern = (pattern << 1) | (pattern >> 31);
// 					if (pattern >= 0x80000000) {
// 						pattern = (pattern << 1) | 1;
// 					} else {
// 						pattern = (pattern << 1);
// 					}
				}
				MESSAGE_WAIT_FOR_MESSAGE(message)
				lcd_goto(0);
				lcd_puts_P(test_text6);
				if ((message == MESSAGE_KEY_LEFT) && (myStatus > TEST3_PATTERN1)) {
					myStatus--;
				} else if ((message == MESSAGE_KEY_RIGHT) && (myStatus < TEST3_PATTERN4)) {
					myStatus++;
				} else {
					myStatus = TEST3_ST_EXIT;
				}
				break;
		} // switch
	} // while
	return(message);
}

const char test_texts [] PROGMEM = "Serial USB Test";

void test_USBser(){
	lcd_init();
	lcd_clrscr();
	lcd_puts_P(test_texts);
	uint8_t counter = 0;
	uint8_t rcv_counter = 0;
	init_Serial0SerUSB();
	while (1) {
		lcd_goto(0x44);
		lcd_putc(' ');
		lcd_putc(' ');
		serial0SER_USBSend('T');
		serial0SER_USBSend('e');
		serial0SER_USBSend('s');
		serial0SER_USBSend('t');
		while ((message_status() == MESSAGE_STAT_EMPTY)){;
			if (SER_USB_RX_BUFFER_NONEMPTY) {
				lcd_goto(0x44);
				lcd_hexout(serial0SER_USBReadRx());
				lcd_putc('#');
				lcd_hexout((++rcv_counter));
			}
		}
		message_get(); // clear status
		lcd_goto(0x40);
		lcd_hexout(++counter);
	}
}

const char test_textmi [] PROGMEM = "MIDI In Test";

void testMIDIin(){
	#define TEST_MAX_DISP_BYTE 5
	uint8_t byteBuf[TEST_MAX_DISP_BYTE];
	uint8_t bufCount = 0;
	uint8_t recByte;
	uint8_t totalCount = 0;
	lcd_init();
	lcd_clrscr();
	lcd_puts_P(test_textmi);
	while (1) {
		while(MIDI_RX_BUFFER_EMPTY) {};
		recByte = serial1MIDIReadRx();
		totalCount++;
		lcd_goto(13);
		lcd_hexout(totalCount);
		if (bufCount >= TEST_MAX_DISP_BYTE) {
			for (bufCount = 0; bufCount < TEST_MAX_DISP_BYTE-1; bufCount++){
				byteBuf[bufCount] = byteBuf[bufCount+1];
			}
			bufCount = TEST_MAX_DISP_BYTE-1;
			byteBuf[bufCount++] = recByte;
		} else {
			byteBuf[bufCount++] = recByte;
		}
		lcd_goto(0x40);
		for (uint8_t i = 0; i < bufCount; i++){
			lcd_hexout(byteBuf[i]);
			lcd_putc(' ');
		}
	}
}

void testMenu(){
	uint8_t message;
	menu_Init(NULL, NULL);
	menu_InitLCD();
	while (1) {
		MESSAGE_WAIT_FOR_MESSAGE(message);
		menu_ProcessMessage(message);
	}

}

const __flash char titleTestMidiIN[] = "MIDI Inp. Buffer";

void testFunc_MidiIn(){
	// stopps Midi In processing and display last 5 byte of midi-in buffer
	// if not already processed (no processing in main during test)
	// ended by Key press
	lcd_clrscr();
	lcd_puts_P(titleTestMidiIN);
	do {
		uint8_t* pMidiInBuf = &(midiRxBuffer[midiRxInIndex]);
		uint8_t* pMidiInOut = &(midiRxBuffer[midiRxOutIndex]);
		uint8_t count = 0;
		lcd_goto(LCD_LINE1);
		lcd_putc(':');
		while ((pMidiInOut != pMidiInBuf) && (count++ < 5)){
			lcd_hexout(*pMidiInBuf);
			lcd_putc(' ');
			if (++pMidiInBuf >= &(midiRxBuffer[SER_USB_RX_BUFFER_SIZE])) {
				pMidiInBuf = &(midiRxBuffer[0]);
			}
		}
		TIMER_SET(TIMER_TESTING,100);
		lcd_goto(LCD_LINE1);
		lcd_putc(' ');
		TIMER_SET(TIMER_TESTING,100);
	} while (message_status() == MESSAGE_STAT_EMPTY);
}