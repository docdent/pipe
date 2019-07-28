/*
 * SPI_io.h
 *
 * Created: 05.01.2019 12:55:49
 *  Author: Anwender
 */ 

/* Protokoll
 
Command defines # of Bytes to be read/written
 
Write Stream Master to Slave character LCD
 
M: COMMAND+CHAR_NR - char0 - char1 - ... - charN - checks
S: dummy   - dummy - dummy - ... - dummy - checks

Write Master to slave command LCD

M: COMMAND - data0 - char1 - ... - charN - checks
S: dummy   - dummy - dummy - ... - dummy - checks

Write Byte from Master to Slave Register LED/kbd

M: COMMAND+REG_NR - data
S: dummy - COMMAND+REG_NR

Read Byte from Slave Register to Master  LED/kbd

M: COMMAND+REG_NR - dummy
S: dummy          - data

*/

#ifndef SPI_IO_H_
#define SPI_IO_H_

// Hardware definitions

// Programm definitions

#define SPI_CMD_READ_IO 0x10 // or reg-1 (0x00..0x0F), following 1 byte dummy for slave return
#define SPI_CMD_WRITE_IO 0x20 //or reg-1 (0x00..0x0F), following 1 byte 
#define SPI_CMD_WRITE_LCD_CHAR 0x30 // following 1 byte 
#define SPI_CMD_WRITE_LCD_HOME 0x3E
#define SPI_CMD_WRITE_LCD_CLEAR 0x3F
#define SPI_CMD_WRITE_LCD_GOTOX0Y 0x40 // or c=collumn 0..15
#define SPI_CMD_WRITE_LCD_GOTOX1Y 0x50 // or c=collumn 0..15
#define SPI_DUMMY 0x00
#define SPI_DELAY 8 // 8us delay between SPI messages

#include <inttypes.h>
#include <avr/pgmspace.h>
#include <avr/io.h>
#include <avr/interrupt.h>

extern uint8_t spiReadIO(uint8_t regNr);
extern void spiWriteIO (uint8_t regNr, uint8_t data);
extern void spiWriteLCDchar(char data);
extern void spiWriteLCDclear();
extern void spiWriteLCDhome();
extern void spiWriteLCDgotoxy(uint8_t position); // position 000y xxxx
extern void initSPI();

#endif /* SPI_IO_H_ */
