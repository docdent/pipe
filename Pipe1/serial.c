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
#include "hwtimer.h"
#include <util/atomic.h>

//*********************************** V A R *********************************

uint8_t midiRxBuffer[MIDI_RX_BUFFER_SIZE];
uint8_t midiTxBuffer[MIDI_TX_BUFFER_SIZE];

volatile uint8_t midiRxInIndex;
volatile uint8_t midiRxOutIndex;
volatile uint8_t midiTxInIndex;
volatile uint8_t midiTxOutIndex;

volatile uint16_t midiTxBytesCount;
volatile uint16_t midiRxBytesCount;
volatile uint8_t midiTxLastCmd;

volatile uint8_t midiRxOvfl;
volatile uint8_t midiTxOvfl;
volatile uint8_t midiRxOvflCount;
volatile uint8_t midiTxOvflCount;

volatile uint8_t* serUSBRxInIndex;
volatile uint8_t* serUSBRxOutIndex;
volatile uint8_t* serUSBTxOutIndex;
volatile uint8_t* serUSBTxInIndex;
volatile uint8_t serUSBOvflFlag;
volatile uint8_t serUSB_Active;

uint8_t serUSBRxBuffer[SER_USB_RX_BUFFER_SIZE];
uint8_t serUSBTxBuffer[SER_USB_TX_BUFFER_SIZE];

volatile uint8_t* serESPRxInIndex;
volatile uint8_t* serESPRxOutIndex;
volatile uint8_t* serESPTxOutIndex;
volatile uint8_t* serESPTxInIndex;
volatile uint8_t serESPOvflFlag;
volatile uint8_t serESP_Active;

uint8_t serESPRxBuffer[SER_ESP_RX_BUFFER_SIZE];
uint8_t serESPTxBuffer[SER_ESP_TX_BUFFER_SIZE];
uint8_t serESPInBuffer[SER_ESP_INPUTBUFFER_SIZE]; // save last bytes cause they might contain data from esp for a command
uint8_t serESPMidiTmp[SER_ESP_MIDTEMPBUFFER_SIZE];

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
	MIDI_TXT_RESET_LASTCMD
}

void serial1MIDISend(uint8_t data){
	// V 0.63 save last sent midi command
	// V 0.64 handle last command only if Send Vel=0 for Note Off is set, because only then abrevation shall be activated
	if ((midi_Setting.VelZero4Off) && (data >= MIDI_LOWEST_CMD)){
		if(data == midiTxLastCmd){
			return;
		}
		if (data < MIDI_POLYAFTT){	// currently save last command  only for noteon/off
			midiTxLastCmd = data;
		} else { // otherwise do not save this command but reset command so that all other commands are sent allways
			MIDI_TXT_RESET_LASTCMD // midiTxLastCmd set to 0 means it does never match command byte to be sent, because cmd will be > 0x7F
		}
	}
	// 0.67 resete active sense tx timer with every midi byte sent
	TIMER_SET(TIMER_TX_ACTIVESENSE,TIMER_TX_ACTIVESENSE_MS) // as we sent midi data here, active sense timer can be reset
	UCSR1B &= ~(1 << UDRIE1);	// Interrupt abschalten f�r "Senderegister leer", damit Sendewarteschlange bearbeitet werden kann
	serial0USB_logMIDIout(data); // log sent data byte to USB if selected
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
	UCSR1B |= (1 << UDRIE1); // Interrupt einschalten f�r "Senderegister leer"
}

uint8_t serial1MIDIReadRx(){
	uint8_t result;
	if MIDI_RX_BUFFER_EMPTY {
		result = MIDI_UNDEFINED;
	} else {
		result = midiRxBuffer[midiRxOutIndex];
		serial0USB_logMIDIin(result); // V0.64 log midi in; caution: log read of midi in buffer, NOT received midi in byte (should be identical) due to timing
		midiRxOutIndex = (midiRxOutIndex+1) & MIDI_RX_BUFFER_MASK;
	}
	return result;
}

ISR(USART1_RX_vect) {
	uint8_t received_byte;
	received_byte = UDR1;
	// ggf. Activesense l�schen (wird nicht weitergeleitet), ggf. im Men� konfigurierbar machen
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
	UCSR0C|= (1 << UCSZ00) | (1 << UCSZ01);				// 8bit, Async, NoParity, 1StopBit
	serUSBRxInIndex = serUSBRxBuffer;
	serUSBRxOutIndex = serUSBRxBuffer;
	serUSBTxOutIndex = serUSBTxBuffer;
	serUSBTxInIndex = serUSBTxBuffer;

	serUSBOvflFlag = SER_OVFL_NO;
	if (eeprom_ReadUSB() == EE_LOAD_ERROR){
		serUSB_Active = FALSE;
		log_putError(LOG_CAT_EE,LOG_CATEE_USBACTIVE,0);
	}
	if (serUSB_Active == TRUE){
		serial0SER_USB_sendStringP(HelloMsg);
		serial0SER_USB_sendStringP(sw_version);
		serial0SER_USB_sendCRLF();
		serial0SER_USB_sendCRLF();
	}

}

void serial0USB_logMIDIin(uint8_t data){
	if (serUSB_Active != 0){
		serial0SER_USBSend(SER_USB_LOGMIDIIN_CHAR);
		serial0SER_USBSend(nibbleToChr(data >> 4));
		serial0SER_USBSend(nibbleToChr(data & 0x0F));
	}
}

void serial0USB_logMIDIout(uint8_t data){
	if (serUSB_Active != 0){
		serial0SER_USBSend(SER_USB_LOGMIDIOUT_CHAR);
		serial0SER_USBSend(nibbleToChr(data >> 4));
		serial0SER_USBSend(nibbleToChr(data & 0x0F));
	}
}

void serial0USB_logPipeIn(PipeMessage_t pipe){
	if (serUSB_Active != 0){
		serial0SER_USBSend(SER_USB_LOGPIPEMSG_CHAR);
		serial0SER_USBSend(nibbleToChr(pipe.message8[1] >> 4));
		serial0SER_USBSend(nibbleToChr(pipe.message8[1] & 0x0F));
		serial0SER_USBSend(nibbleToChr(pipe.message8[0] >> 4));
		serial0SER_USBSend(nibbleToChr(pipe.message8[1] & 0x0F));
	}
}

void serial0USB_logPipeOutOn(uint8_t bitNr, uint8_t moduleMask){
	if (serUSB_Active != 0){
		serial0SER_USBSend(SER_USB_LOGPIPEON_CHAR);
		serial0SER_USBSend(nibbleToChr(bitNr >> 4));
		serial0SER_USBSend(nibbleToChr(bitNr & 0x0F));
		serial0SER_USBSend(nibbleToChr(moduleMask >> 4));
		serial0SER_USBSend(nibbleToChr(moduleMask & 0x0F));
	}
}

void serial0USB_logPipeOutOff(uint8_t bitNr, uint8_t moduleMask){
	if (serUSB_Active != 0){
		serial0SER_USBSend(SER_USB_LOGPIPEOFF_CHAR);
		serial0SER_USBSend(nibbleToChr(bitNr >> 4));
		serial0SER_USBSend(nibbleToChr(bitNr & 0x0F));
		serial0SER_USBSend(nibbleToChr(moduleMask >> 4));
		serial0SER_USBSend(nibbleToChr(moduleMask & 0x0F));
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
	// V0.64 buffer handling changed from array index to pointer
	uint8_t* index = (uint8_t*) serUSBTxInIndex; // temp for voilatile pointer
	UCSR0B &= ~(1 << UDRIE0);	// Interrupt abschalten f�r "Senderegister leer", damit Sendewarteschlange bearbeitet werden kann
	// write data to buffer
	*index++ = data;
	// handle warp around
	if (index > &serUSBTxBuffer[SER_USB_TX_BUFFER_SIZE-1]){
		index = serUSBTxBuffer;
	}
	// check ovfl
	uint8_t* outIndex;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE){
		outIndex = (uint8_t*) serUSBTxOutIndex; // temp for volatile pointer
	}
	if (index == outIndex) {
		// ovfl
		#ifdef SER_USB_WAIT
			serUSBTxInIndex = index; // write back pointer
			UCSR0B |= (1 << UDRIE0); // Interrupt einschalten f�r "Senderegister leer"
			while (index == serUSBTxOutIndex) {}; // TODO: observe timeout!
		#else
			// forget oldest data: don't update pointer
			serUSBOvflFlag = SER_OVFL_YES;
			UCSR0B |= (1 << UDRIE0); // Interrupt einschalten f�r "Senderegister leer"
		#endif
	} else {
		// else no Overflow
		serUSBTxInIndex = index; // write back pointer
		UCSR0B |= (1 << UDRIE0); // Interrupt einschalten f�r "Senderegister leer"
	}
}

uint8_t serial0SER_USBReadRx(){
	uint8_t result;
	uint8_t* index = (uint8_t*) serUSBRxOutIndex; // temp storage for voilatile pointer
	if SER_USB_RX_BUFFER_EMPTY {
		// auxilliary only: return defined value - but better check before if data is avaiavble
		result = SER_USB_UNDEFINED;
	} else {
		result = *index++;
		if (index > &serUSBRxBuffer[SER_USB_RX_BUFFER_SIZE-1]){
			// wrap around
			index = serUSBRxBuffer;
		}
		serUSBRxOutIndex = index;
	}
	return result;
}

ISR(USART0_RX_vect) {
	// received byt from uart0
	uint8_t* index = (uint8_t*) serUSBRxInIndex; // temp storage of voilatile pointer
	*index++ = UDR0; // store in receive buffer
	if (index > &serUSBRxBuffer[SER_USB_RX_BUFFER_SIZE-1]) {
		// wrap around
		index = serUSBRxBuffer;
	}
	uint8_t* outIndex;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE){
		outIndex = (uint8_t*) serUSBRxOutIndex; // temp storage of volatile
	}
	if (index == outIndex) {
		// overflow!
		// serusbRxInIndex is NOT updated, keep writing last available byte in buffer
		serUSBOvflFlag = SER_OVFL_YES; // must be checked and reset by main
	} else {
		serUSBRxInIndex = index; // Update serUSBRxInIndex
	}
}

ISR(USART0_UDRE_vect) {
	uint8_t* index = (uint8_t*) serUSBTxOutIndex; // temp storage of volatile pointer
	if (SER_USB_TX_BUFFER_NONEMPTY){
		// es ist was zu senden da
		UDR0 = *index++;
		if (index > &serUSBTxBuffer[SER_USB_TX_BUFFER_SIZE-1]) {
			// wrap around
			index = serUSBTxBuffer;
		}
		serUSBTxOutIndex = index;
	} else {
		// nothing to send
		UCSR0B &= ~(1 << UDRIE0);
		// Interrupt abschalten - wird beim Schreiben des Sendepuffer wieder gesetzt
	}
}

//================================= S E R I A L _ E S P ===========================

void init_Serial3SerESP(){
	UBRR3H = (SER_ESP_BAUDRATE>>8);                      // shift the register right by 8 bits
	UBRR3L = SER_ESP_BAUDRATE;                           // set baud rate
	UCSR3B|= (1 << TXEN3) | (1 << RXEN3) | (1 << RXCIE3) ;                // enable receiver and transmitter and (only) rec. interrupt
	UCSR3C|= (1 << UCSZ30) | (1 << UCSZ31);				// 8bit, Async, NoParity, 1StopBit
	serESPRxInIndex = serESPRxBuffer;
	serESPRxOutIndex = serESPRxBuffer;
	serESPTxOutIndex = serESPTxBuffer;
	serESPTxInIndex = serESPTxBuffer;
	serESPOvflFlag = SER_OVFL_NO;
	serESP_Active = TRUE; // may be controlled by EEPROM later
	for (uint8_t i = 0; i < SER_ESP_INPUTBUFFER_SIZE; i++){
		serESPInBuffer[i] = SER_ESP_MSG_NONE; // tiny input buffer reset
	}
}

void serial3SER_ESPSend(uint8_t data){
	uint8_t* index = (uint8_t*) serESPTxInIndex; // temp for voilatile pointer
	UCSR3B &= ~(1 << UDRIE3);	// Interrupt abschalten f�r "Senderegister leer", damit Sendewarteschlange bearbeitet werden kann
	// write data to buffer
	*index++ = data;
	// handle warp around
	if (index > &serESPTxBuffer[SER_ESP_TX_BUFFER_SIZE-1]){
		index = serESPTxBuffer;
	}
	// check ovfl
	uint8_t* outIndex;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE){
		outIndex = (uint8_t*) serESPTxOutIndex; // temp for volatile pointer
	}
	if (index == outIndex) {
		// ovfl
		#ifdef SER_USB_WAIT
			serESPTxInIndex = index; // write back pointer
			UCSR3B |= (1 << UDRIE3); // Interrupt einschalten f�r "Senderegister leer"
			while (index == serESPTxOutIndex) {}; // TODO: observe timeout!
		#else
			// forget oldest data: don't update pointer
			serESPOvflFlag = SER_OVFL_YES;
			UCSR3B |= (1 << UDRIE3); // Interrupt einschalten f�r "Senderegister leer"
		#endif
	} else {
		// else no Overflow
		serESPTxInIndex = index; // write back pointer
		UCSR3B |= (1 << UDRIE3); // Interrupt einschalten f�r "Senderegister leer"
	}
}


void serial3SER_ESP_sendStringP(const char *progmem_s){
	uint8_t count = SER_ESP_MAX_STRINGLEN;
	char c;
	while (((c=pgm_read_byte(progmem_s++)) != 0) && (! SER_ESP_OVFLOW) && (count-- > 0)){
		serial3SER_ESPSend(c);
	}
}

void serial3SER_ESP_sendString(char *s){
	uint8_t count = SER_ESP_MAX_STRINGLEN;
	char c;
	while (((c= *s++) != 0) && (! SER_ESP_OVFLOW) && (count-- != 0)){
		serial3SER_ESPSend(c);
	}
}

void serial3SER_ESP_sendCRLF(){
		serial3SER_ESP_sendStringP(cr_lf);
}

uint8_t serial3SER_ESPReadRx(){
	uint8_t result;
	uint8_t* index = (uint8_t*) serESPRxOutIndex; // temp storage for voilatile pointer
	if SER_ESP_RX_BUFFER_EMPTY {
		// auxilliary only: return defined value - but better check before if data is avaiavble
		result = SER_ESP_UNDEFINED;
	} else {
		result = *index++;
		if (index > &serESPRxBuffer[SER_ESP_RX_BUFFER_SIZE-1]){
			// wrap around
			index = serESPRxBuffer;
		}
		serESPRxOutIndex = index;
	}
	return result;
}

ISR(USART3_RX_vect) {
	// received byt from uart3
	uint8_t* index = (uint8_t*) serESPRxInIndex; // temp storage of voilatile pointer
	uint8_t receivedByte = UDR3;
	*index++ = receivedByte; // store in receive buffer
	if (index > &serESPRxBuffer[SER_ESP_RX_BUFFER_SIZE-1]) {
		// wrap around
		index = serESPRxBuffer;
	}
	uint8_t* outIndex;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE){
		outIndex = (uint8_t*) serESPRxOutIndex; // temp storage of volatile
	}
	if (index == outIndex) {
		// overflow!
		// serusbRxInIndex is NOT updated, keep writing last available byte in buffer
		serESPOvflFlag = SER_OVFL_YES; // must be checked and reset by main
	} else {
		serESPRxInIndex = index; // Update serESPRxInIndex
	}
	// V 0.66 second buffer for processing data
	uint8_t* inpBufferPtr = & serESPInBuffer[SER_ESP_INPUTBUFFER_SIZE-1]; // points to last=oldest byte in buffer
	// shift buffer content, oldest byte is lost
	for (uint8_t i = 0; i < SER_ESP_INPUTBUFFER_SIZE-1; i++){ // only shift SER_ESP_INPUTBUFFER_SIZE - 1 times!
		*(inpBufferPtr) = *(inpBufferPtr-1);
		inpBufferPtr--;
	}
	*inpBufferPtr = receivedByte; // new byte is stored in serESPInBuffer[0]
}

ISR(USART3_UDRE_vect) {
	uint8_t* index = (uint8_t*) serESPTxOutIndex; // temp storage of volatile pointer
	if (SER_ESP_TX_BUFFER_NONEMPTY){
		// es ist was zu senden da
		UDR3 = *index++;
		if (index > &serESPTxBuffer[SER_ESP_TX_BUFFER_SIZE-1]) {
			// wrap around
			index = serESPTxBuffer;
		}
		serESPTxOutIndex = index; // V0.61 bug: write back index was forgotten
	} else {
		// nothing to send
		UCSR3B &= ~(1 << UDRIE3);
		// Interrupt abschalten - wird beim Schreiben des Sendepuffer wieder gesetzt
	}
}