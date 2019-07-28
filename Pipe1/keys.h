/*
 * keys.h
 *
 * Created: 04.11.2018 15:20:27
 *  Author: Anwender
 */ 
#ifndef F_CPU
#define F_CPU 16000000UL
#endif

#ifndef KEYS_H_
#define KEYS_H_
// USER Definitions
// Number of user keys - max 8
#define KEY_COUNT 4 // total number of keys to be processed, direct oder multiplex

#define KEY_MS_AUTOREP 1000 // wait (millisec) until 1st autorep
#define KEY_MS_REPCYCLE 160 // wait (millisec) until following autorep
#define KEY_MS_LONGPRESS 1000 // wait (millisec) until longpress

// only message down/up
#define KEY_TYPE_SIMPLE 0
#define KEY_TYPE_AUTOREP 1
#define KEY_TYPE_LONGPRESS 2
// Rotary keys: lower key number is clock
#define KEY_TYPE_ROT_CLK 3
// must be be followed by
#define KEY_TYPE_ROT_DATA 4
// rotary keys can be direct or mpx keys but must be in order clk, data

// Direct connected keys
// Input Port direct connected key
#undef  KEY0_PORT
// #define KEY0_PORT PINA // remove leading comment for definition
// Pin-Nr  Port
#define KEY0_PIN PINA0
// Port pin input level for key pressed = 0 or pressed = 1
#define KEY0_PRESSLEVEL 0
#undef  KEY1_PORT
//#define KEY1_PORT
#define KEY1_PIN
#define KEY1_PRESSLEVEL 0
#undef  KEY2_PORT
// #define KEY2_PORT
#define KEY2_PIN
#define KEY2_PRESSLEVEL 0
#undef  KEY3_PORT
// #define KEY3_PORT
#define KEY3_PIN
#define KEY3_PRESSLEVEL 0

// Port multiplexed input
// some pins of one port are output, some pins of (same or other) port are input
// port output 
#define KEYMPX_PORTOUT PORTB
// port output DDR
#define KEYMPX_DDROUT DDRB
// port input 
#define KEYMPX_PORTIN PORTB
// port input DDR
#define KEYMPX_DDRIN DDRB
// Port output mask (for DDR) value for pin 0=don't change DDR, 1=output für keyboard
#define KEYMPX_OUTMASK 0xF0
// Port input mask 1= unused pin, 0= input pin
#define KEYMPX_INPMASK 0x01
// Port Input xor mask after and with input mask; 0= active H key 1= active low key
#define KEYMPX_INPXORMASK 0x00
// output pattern für mpxkey0
#define KEYMPX0_OUTVAL 0x80
// input and mask (after xor) result = 0: no key pressed, <> 0: key pressed
#define KEYMPX0_INVAL 0x01

// Reagiere auf Longpress 0=nein 1=ja
#define KEY0_USE_LONGPRESS 0
#define KEY1_USE_LONGPRESS 0
#define KEY2_USE_LONGPRESS 0
#define KEY3_USE_LONGPRESS 0
// Autorepeat 0=nein 1=ja
#define KEY0_USE_REPEAT 0
#define KEY1_USE_REPEAT 0
#define KEY2_USE_REPEAT 0
#define KEY3_USE_REPEAT 0

// INTERNAL DEFINITIONS
#define KEY_UPPER_THRESH 146
#define KEY_LOW_THRESH 110

#define KEY_STAT_IDLE 0
#define KEY_STAT_PRESS 1
#define KEY_STAT_LONGPRESS 2
#define KEY_STAT_AUTOREPEAT 3

// wait 1us after output to read port
#define KEY_MPX_WAITINPUT 1

#define KEY_CHANGE_H_H 0
#define KEY_CHANGE_H_L 1
#define KEY_CHANGE_L_L 2
#define KEY_CHANGE_L_H 3



#endif /* KEYS_H_ */