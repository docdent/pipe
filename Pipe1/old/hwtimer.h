/*
 * hwtimer.h
 *
 * Created: 08.12.2018 14:20:27
 *  Author: Anwender
 */


#ifndef HWTIMER_H_
#define HWTIMER_H_

#include <inttypes.h>
#include <avr/pgmspace.h>

#ifndef F_CPU
#define F_CPU 16000000L
#endif

//**********************  TIMER DEFS **********************
// intern
#define TIMER_COUNT 4
#define TIMER_INACTIVE 0x00
#define TIMER_PRESC_MS 25	// prescaler 25msec is base for timer

// extern
#define TIMER_SET(N,MSEC) ATOMIC_BLOCK(ATOMIC_RESTORESTATE ) {timer[N].counter = MSEC / TIMER_PRESC_MS; timer[N].prescaler = 0;}
#define TIMER_RUNNING(N) (timer[N].counter != TIMER_INACTIVE)
#define TIMER_STOPPED(N) (timer[N].counter == TIMER_INACTIVE)

typedef  struct {
	uint8_t counter;
	uint8_t prescaler;
} Timer;

extern volatile Timer swTimer[TIMER_COUNT];
extern void initHwTimer();
extern void initTimers();

//************************ ADC DEFS ***********************
// intern
#define ADC_MUX_KEY0 0x00 // analog input 0 for Key0

#define ADC_MUX_GND 0x1F
#define ADC_MUX_MASKL 0x1F // mask for ADMUX 0..4 - bit 5 must be written to ADCSRB
#define ADC_MUX_MASKH 0x20 // mask for ADCSRB - bit 5 must be written to bit 3
#define ADC_NOISE_THRESHOLD 4
#define ADC_ADMUX_STD ((1 << REFS0) | (1 << ADLAR))
#define ADC_INP_DISABLE0_MASK0 = (1 << PINF0);
#define ADC_INP_DISABLE0_MASK1 = 0;

#define KEY_NOKEY 0xFF

#define ADC_MAX_INPUTS 4
#define ADC_NR_INPUTS 1

#define ADC_MUXL_INP0 (ADC_MUX_KEY0 & ADC_MUX_MASKL) // P
#define ADC_MUXH_INP0 ((ADC_MUX_KEY0 & ADC_MUX_MASKH) >> 2) // Bit 5 to 3

// extern
typedef struct {
	uint8_t mux;
	uint8_t ADC;
	uint8_t key;
	uint8_t message; // set with 'key' when key is pressed, should be reset by app when message is processed
} KeyInfo;

extern volatile KeyInfo keys[ADC_NR_INPUTS];

/************************** TIMER **********************
// Internal Definitions
// Prescaler 100ms must be dividible by 4
#define TIM_PRESC 100
// each time function is calles every 4ms
#define TIM_TIME_FUNCT 4

// ************************ Pipe Defs
// 32 bit shift register depth
#define PIPE_SHIFTBIT_COUNT 32
// 8 modules each 1 bit for IO (8 is max!)
#define PIPE_MODULE_COUNT 8
//  PIPE_IO_COUNT * PIPE_MODULE_COUNT = 256 max as counter is byte only

typedef struct {
	uint8_t pipeOutM4; // out value 4ms ago
	uint8_t pipeOut; // pipe output, 0=on 1=off
	uint8_t pipeInM16; // in value 16ms ago
	uint8_t pipeInM12; // in value 12ms ago
	uint8_t pipeInM8; // in value 8ms ago
	uint8_t pipeInM4; // in value 4ms ago
	uint8_t pipeIn; // pipe (keyboard) input, 0=off 1=on
	uint8_t pipeInStat; // Last Stat of pipe input, 0=off, 1=on, checked
} Pipe;
extern Pipe pipe[PIPE_SHIFTBIT_COUNT];


#define PIPE_OUT_PORT PORTC
#define PIPE_IN_PORT PORTA
#define PIPE_CTRL_PORT PORTD
#define PIPE_PIN_CLK PORTD3
#define PIPE_PIN_OE PORTD6
#define PIPE_LATCH_2PIPE PORTD4
#define PIPE_LATCH_2CPU PORTD5
// Mask für Ctr_out: only -L2P -L2C -CLK, not included: OE
#define PIPE_CTRL_MASK ((1 << PIPE_LATCH_2CPU) | (1 << PIPE_LATCH_2PIPE) | (1 << PIPE_PIN_CLK))

// ************************ Key Defs
#define KEY_COUNT 4
typedef struct
{
	uint16_t timer; // milliseconds since start of key down or repeat message
	uint8_t status; // KEY_STAT_...
	uint8_t val; // 0...255 for debounce
	uint8_t keytype; // KEY_TYPE_....
	uint8_t keyout;
	uint8_t keynew; // recent input value: 0 idle, 1 pressed
} Key;
extern Key key [KEY_COUNT];

#define KEY_STAT_IDLE 0
#define KEY_STAT_PRESS 1
#define KEY_STAT_LONGPRESS 2
#define KEY_STAT_AUTOREPEAT 3
//numer of keys is fixed to 4 (4 = max!)

// only message down/up
#define KEY_TYPE_SIMPLE 0
#define KEY_TYPE_AUTOREP 1
#define KEY_TYPE_LONGPRESS 2
// Rotary keys: lower key number is clock
#define KEY_TYPE_ROT_CLK 3
// must be be followed by
#define KEY_TYPE_ROT_DATA 4

// ----------- Hardware Defs
#define KEYPORT PORTC
#define KEYINP PIND
#define KEYIDDR DDRD
#define KEYODDR DDRC
#define KEYOUTMSK 0xF0
// upper 4 bits are mask out
#define KEYINMSK 0x04 // D2
// bit0 is input

#define KEY3MASK 0x80
#define KEY2MASK 0x40
#define KEY1MASK 0x20
#define KEY0MASK 0x10
#define KEY3TYP KEY_TYPE_LONGPRESS
#define KEY2TYP KEY_TYPE_ROT_DATA
#define KEY1TYP KEY_TYPE_ROT_CLK
#define KEY0TYP KEY_TYPE_SIMPLE

#define DDR_LEDOUT DDRB
#define PORT_LEDOUT PORTB
#define PIN_LEDOUT 0

// -------------- INTERNAL DEFINITIONS
#define KEY_UPPER_THRESH 146
#define KEY_LOW_THRESH 110
#define KEYWAIT 5
// 2us wait for reading input
#define KEY_MS_AUTOREP 1000 / TIM_TIME_FUNCT // wait (millisec) until 1st autorep
#define KEY_MS_REPCYCLE 160 / TIM_TIME_FUNCT// wait (millisec) until following autorep
#define KEY_MS_LONGPRESS 1000 / TIM_TIME_FUNCT // wait (millisec) until longpress


#define KEY_CHANGE_H_H 0
#define KEY_CHANGE_H_L 1
#define KEY_CHANGE_L_L 2
#define KEY_CHANGE_L_H 3

extern void initKeys();


#endif /* HWTIMER_H_ */