/*
 * SPI_io.c
 *
 * Created: 05.01.2019 12:55:32
 *  Author: Anwender
 */ 

#include <inttypes.h>
#include <avr/pgmspace.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include "SPI_io.h"

void SPIinit() {
	// Initialize SPI Master Device (with SPI interrupt)
	// Set MOSI, SCK, SS as Output
	DDRB |= (1<<MOSI_PIN) | (1<<SCL_PIN) | (1<<SS_PIN);
	DDRB &= ~(1<<MISO_PIN); // MISO is input
	// Enable SPI, Set as Master
	// Prescaler: Fosc/16, Enable Interrupts
	SPCR= (1<<SPE) | (1<<MSTR) | (1<<SPR0) | (1<<SPIE);
}

inline uint8_t SPIsend(uint8_t data){
	// Load data into the buffer
	SPDR = data;
	//Wait until transmission complete
	while(!(SPSR & (1<<SPIF) ));
	// Return received data
	return(SPDR);
}

uint8_t spiReadIO(uint8_t regNr){
	SPIsend(SPI_CMD_READ_IO | regNr);
	_delay_us(SPI_DELAY);
	return SPIsend(SPI_DUMMY);
}

void spiWriteIO(uint8_t regNr, uint8_t data){
	SPIsend(SPI_CMD_WRITE_IO | regNr);
	_delay_us(SPI_DELAY);
	SPIsend(data); 
}

void spiWriteLCDclear(){
	SPIsend(SPI_CMD_WRITE_LCD_CLEAR);
}

void spiWriteLCDhome(){
	SPIsend(SPI_CMD_WRITE_LCD_HOME);
}

void spiWriteLCDgotoxy(uint8_t position){
	SPIsend(SPI_CMD_WRITE_LCD_GOTOX0Y | position);
}

void spiWriteLCDchar(char data){
	SPIsend(SPI_CMD_WRITE_LCD_CHAR);
	_delay_us(SPI_DELAY);
	SPIsend(data);
}