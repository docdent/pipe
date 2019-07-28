/*
 * serial.c
 *
 * Created: 15.12.2018 22:56:48
 *  Author: Anwender
 */
#include <inttypes.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include "serial.h"
#include "ee_prom.h"
#include "log.h"
#include "utils.h"
#include "menu.h"

//*********************************** V A R *********************************

uint8_t midiRxBuffer[MIDI_RX_BUFFER_SIZE];
uint8_t midiTxBuffer[MIDI_TX_BUFFER_SIZE];

volatile uint8_t midiRxInIndex;
volatile uint8_t midiRxOutIndex;
volatile uint8_t midiTxInIndex;
volatile uint8_t midiTxOutIndex;

volatile uint8_t serusb_Active;

uint8_t serUsbRxBuffer[SER_USB_RX_BUFFER_SIZE];
uint8_t serUsbTxBuffer[SER_USB_TX_BUFFER_SIZE];

volatile uint8_t serusbRxInIndex;
volatile uint8_t serusbRxOutIndex;
volatile uint8_t serusbTxOutIndex;
volatile uint8_t serusbTxInIndex;
volatile uint8_t serusbOvflFlag;

volatile uint16_t midiTxBytesCount;
volatile uint16_t midiRxBytesCount;

volatile uint8_t midiRxOvfl;
volatile uint8_t midiTxOvfl;
volatile uint8_t midiRxOvflCount;
volatile uint8_t midiTxOvflCount;

//************************************* M I D I *****************************************

void init_Serial1MIDI() {
	// MIDI_SERIAL_DDR = (MIDI_SERIAL_DDR & (0xFF ^ (1 << MIDI_SERIAL_RX_PIN))) | (1 << MIDI_SERIAL_TX_PIN); // Rx Input (0) Tx Output (1)
	UBRR1H = (MIDI_BAUDRATE >> 8);                      // shift the register right by 8 bits
	UBRR1L = MIDI_BAUDRATE;                           // set baud rate
	UCSR1B|= (1 << TXEN1) | (1 << RXEN1) | (1 << RXCIE1) ;                // enable receiver and transmitter and (only) rec. interrupt
	UCSR1C|= (1 << UCSZ10) | (1 << UCSZ11);
	midiRxInIndex = 0;
	midiRxOutIndex = 0;
	midiTxInIndex = 0;
	midiTxOutIndex = 0;
	midiRxOvfl = SER_OVFL_NO;
	midiTxOvfl = SER_OVFL_NO;
	midiRxOvflCount = 0;
	midiTxOvflCount = 0;
}

void serial1MIDISend(uint8_t data){
	UCSR1B &= ~(1 << UDRIE1);	// Interrupt abschalten für "Senderegister leer", damit Sendewarteschlange bearbeitet werden kann
	midiTxBuffer[midiTxInIndex] = data;
	midiTxInIndex = (midiTxInIndex+1) & MIDI_TX_BUFFER_MASK;
	if (midiTxInIndex == midiTxOutIndex){
		uint8_t ovflCount = midiTxOvflCount;
		if (ovflCount > 0) {
			// already overflow
			if (ovflCount != 0xFF) {
				// max number not yet reached
				midiTxOvflCount = ovflCount+1;
			}
		} else {
			// new overflow
			midiTxOvflCount = 1;
		}
	}
	UCSR1B |= (1 << UDRIE1); // Interrupt einschalten für "Senderegister leer"
}

uint8_t serial1MIDIReadRx(){
	uint8_t result;
	if MIDI_RX_BUFFER_EMPTY {
		result = MIDI_UNDEFINED;
	} else {
		result = midiRxBuffer[midiRxOutIndex];
		midiRxOutIndex = (midiRxOutIndex+1) & MIDI_RX_BUFFER_MASK;
	}
	return result;
}

ISR(USART1_RX_vect) {
	uint8_t received_byte;
	received_byte = UDR1;
	// ggf. Activesense löschen (wird nicht weitergeleitet), ggf. im Menü konfigurierbar machen
	midiRxBuffer[midiRxInIndex] =  received_byte; // Fetch the received byte value
	midiRxInIndex = (midiRxInIndex+1) & MIDI_RX_BUFFER_MASK;
	if (midiRxInIndex == midiRxOutIndex) {
		// overflow
		uint8_t ovflCount = midiRxOvflCount; // temp var for better performance of volatile
		if (ovflCount > 0) {
			// overflow already set
			if (ovflCount != 0xFF) {
				// max number not yet reached
				midiRxOvflCount = ovflCount+1;
			}
		} else {
			// overflow is new
			midiRxOvflCount = 1;
		}
	}
	midiRxBytesCount++;
}

ISR(USART1_UDRE_vect) {
	if (MIDI_TX_BUFFER_NONEMPTY){
		// es ist was zu senden da
		UDR1 = midiTxBuffer[midiTxOutIndex];
		midiTxOutIndex = (midiTxOutIndex+1) & MIDI_TX_BUFFER_MASK;
		midiTxBytesCount++;
	} else {
		// nothin gto send
		UCSR1B &= ~(1 << UDRIE1);
		// Interrupt abschalten - wird beim Schreiben des Sendepuffer wieder gesetzt
	}
}

//************************************* S E R _ U S B ************************
void init_Serial0SerUSB() {
	// SER_USB_DDR = (SER_USB_DDR & (0xFF ^ (1 << SER_USB_RX_PIN))) | (1 << SER_USB_TX_PIN); // Rx Input (0) Tx Output (1)
	UBRR0H = (SER_USB_BAUDRATE>>8);                      // shift the register right by 8 bits
	UBRR0L = SER_USB_BAUDRATE;                           // set baud rate
	UCSR0B|= (1 << TXEN0) | (1 << RXEN0) | (1 << RXCIE0) ;                // enable receiver and transmitter and (only) rec. interrupt
	UCSR0C|= (1 << UCSZ00) | (1 << UCSZ01);
	midiRxInIndex = 0;
	midiRxOutIndex = 0;
	midiTxInIndex = 0;
	midiTxOutIndex = 0;
	serusbOvflFlag = SER_OVFL_NO;
	if (eeprom_ReadUSB() == EE_LOAD_ERROR){
		serusb_Active = FALSE;
		log_putError(LOG_CAT_EE,LOG_CATEE_USBACTIVE,0);
	}
	if (serusb_Active == TRUE){
		serial0SER_USB_sendStringP(HelloMsg);
		serial0SER_USB_sendStringP(sw_version);
		serial0SER_USB_sendCRLF();
		serial0SER_USB_sendCRLF();
	}
}

void serial0SER_USB_sendStringP(const char *progmem_s)
{
	char c;
	while (((c=pgm_read_byte(progmem_s++)) != 0) && (! SER_USB_OVFLOW)){
		serial0SER_USBSend(c);
	}
}

void serial0SER_USB_sendString(char *s)
{
	uint8_t count = SER_USB_MAX_STRINGLEN;
	while (((*s) != 0) && (! SER_USB_OVFLOW) && (count != 0)){
		serial0SER_USBSend(*s++);
		count--;
	}
}

void serial0SER_USB_sendCRLF(){
	serial0SER_USB_sendStringP(cr_lf);
}

void serial0SER_USBSend(uint8_t data){
	uint8_t index = serusbTxInIndex;
	UCSR0B &= ~(1 << UDRIE0);	// Interrupt abschalten für "Senderegister leer", damit Sendewarteschlange bearbeitet werden kann
	serUsbTxBuffer[index] = data;
	index = (index+1) & SER_USB_TX_BUFFER_MASK;
	if (index == serusbTxOutIndex) {
		// overflow!
		#ifndef SER_USB_WAIT // only if no wait
			serusbOvflFlag = SER_OVFL_YES; // must be checked and reset by main
		#else
			UCSR0B |= (1 << UDRIE0); // Interrupt einschalten für "Senderegister leer"
			while (serusbTxOutIndex == index) {}; // wait until buffer is free
			serusbTxInIndex = index;
		#endif
	} else {
		serusbTxInIndex = index;
		UCSR0B |= (1 << UDRIE0); // Interrupt einschalten für "Senderegister leer"
	}
}

uint8_t serial0SER_USBReadRx(){
	uint8_t result;
	uint8_t index = serusbRxOutIndex;
	if SER_USB_RX_BUFFER_EMPTY {
		result = SER_USB_UNDEFINED;
	} else {
		result = serUsbRxBuffer[index++];
		serusbRxOutIndex = index & SER_USB_RX_BUFFER_MASK;
	}
	return result;
}

ISR(USART0_RX_vect) {
	uint8_t received_byte;
	uint8_t index = serusbRxInIndex;
	received_byte = UDR0;
	serUsbRxBuffer[index++] =  received_byte; // Fetch the received byte value
	index &= SER_USB_RX_BUFFER_MASK;
	if (index == serusbRxOutIndex) {
		// overflow!
		serusbOvflFlag = SER_OVFL_YES; // must be checked and reset by main
	} else {
		serusbRxInIndex = index;
	}
}

ISR(USART0_UDRE_vect) {
	uint8_t index = serusbTxOutIndex;
	if (SER_USB_TX_BUFFER_NONEMPTY){
		// es ist was zu senden da
		UDR0 = serUsbTxBuffer[index];
		serusbTxOutIndex = (index+1) & SER_USB_TX_BUFFER_MASK;
	} else {
		// nothing to send
		UCSR0B &= ~(1 << UDRIE0);
		// Interrupt abschalten - wird beim Schreiben des Sendepuffer wieder gesetzt
	}
}
