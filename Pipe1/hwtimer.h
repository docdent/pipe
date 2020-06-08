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
#include <util/atomic.h>
#include "message.h"

#ifndef F_CPU
#define F_CPU 16000000UL
#endif

//**********************  TIMER DEFS **********************
// intern
// ---------------------- DEFINES ---------------------
#define TIMER_COUNT 11
#define TIMER_ENDED 0x00 // should be set to INACTIVE by main when porcessed
#define TIMER_INACTIVE 0xFF
#define TIMER_BASE_MS 20	// prescaler 20msec is base for timer, so max delay = 255*0,02 = 5,1sec
#define TIMER_CYCLE_MS 4 // timer is decreased every 4ms

#define TIMER_UPDTIME_PRESC (1000 / TIMER_CYCLE_MS)
extern volatile uint8_t time_Uptime[4]; // 0: prescaler cycles @ 4ms, 1: seconds, 2: minutes, 3:hours

// extern
// ---------------------- DEFINES ---------------------
#define TIMER_SET(N,MSEC) ATOMIC_BLOCK(ATOMIC_RESTORESTATE ) {swTimer[N].counter = MSEC / TIMER_BASE_MS; swTimer[N].prescaler = (MSEC % TIMER_BASE_MS) / TIMER_CYCLE_MS;};
#define TIMER_DEACTIVATE(N) swTimer[N].counter = TIMER_INACTIVE;

#define TIMER_NOTSTARTED(N) (swTimer[N].counter == TIMER_INACTIVE)
#define TIMER_RUNNING(N) ((swTimer[N].counter != TIMER_ENDED) && (swTimer[N].counter != TIMER_INACTIVE))
#define TIMER_ELAPSED(N) (swTimer[N].counter == TIMER_ENDED)

// for immediate wait operations:
#define TIMER_WAITNOW 10
#define TIMER_WAITNOW_MS 50 //

// when elapsed: send active sense
#define TIMER_REGDISPLAY 9
#define TIMER_REGDISPLAY_MS 400 // 

// when elapsed: send active sense
#define TIMER_TX_ACTIVESENSE 8
#define TIMER_TX_ACTIVESENSE_MS 200 // 300 per defintion, 50% reserve

// when elapsed: clear menu data line in lcd in main
#define TIMER_MESSAGE_LCDCLEAR 7
#define TIMER_MENUDATA_LCDCLEAR_MS 2000

// when elapsed: start next module test loop in main
#define TIMER_TESTMODULE 6
#define TIMER_TESTMODULE_MS 160
#define TIMER_TESTMODEND_MS 50

// when elapsed clear display of last midiout note
#define TIMER_MIDIOUT_DISP 5
#define TIMER_MIDIOUT_DISP_MS 800
#define TIMER_MIDDISP_CLEANUP_INTERVALL 2500 // cleanup

// when elapsed clear display of last midiin note
#define TIMER_MIDIIN_DISP 4
#define TIMER_MIDIIN_DISP_MS 700

// Timer for active sense on MIDI IN
#define TIMER_ACTIVESENSE 3
#define TIMER_ACTIVESENSE_MS 500 // turn off all notes  after 500ms

#define TIMER_INPUTTIMEOUT 2
#define TIMER_INPUTTIMEOUT_MS 5000 // cancel edit after 500oms

#define TIMER_POWER 1
#define TIMER_POWER_INIT_MS 800
#define TIMER_POWER_TEST_REPEAT_MS 250
#define TIMER_POWER_CHECK_MS 20



//--------------------- VAR ------------------------
typedef  struct {
	uint8_t counter;
	uint8_t prescaler;
} Timer;
extern volatile Timer swTimer[TIMER_COUNT];
extern volatile uint8_t time_Uptime[4];
extern volatile uint8_t time_UpTimeUpdated;
//-------------------- FUNCIOTNS ---------------------
extern void init_HwTimer();
extern void init_Timers();
extern void init_ADC();
extern void init_Pipe();

//************************ ADC DEFS ***********************
// intern
// ---------------------- DEFINES ---------------------
#define ADC_MUX_KEY0 0x00 // analog input 0 for Key0

#define ADC_MUX_GND 0x1F
#define ADC_MUX_MASKL 0x1F // mask for ADMUX 0..4 - bit 5 must be written to ADCSRB
#define ADC_MUX_MASKH 0x20 // mask for ADCSRB - bit 5 must be written to bit 3

#define ADC_ADMUX_STD ((1 << REFS0) | (1 << ADLAR))
#define ADC_INP_DISABLE0_MASK0  (1 << PINF0);
#define ADC_INP_DISABLE0_MASK1  0;

#define KEY_NOKEY 0xFF

#define ADC_MAX_INPUTS 4
#define ADC_NR_INPUTS 1

#define ADC_MUXL_INP0 (ADC_MUX_KEY0 & ADC_MUX_MASKL) // P
#define ADC_MUXH_INP0 ((ADC_MUX_KEY0 & ADC_MUX_MASKH) >> 2) // Bit 5 to 3

#define ADC_NOISE_THRESHOLD 4

#define KEY_WANTS_DOWN		0x01
#define KEY_WANTS_UP		0x02
#define KEY_WANTS_LONGPRESS 0x04
#define KEY_WANTS_REPEAT	0x08

#define KEY_LONGPRESS_CYCLES (1200 / (ADC_MAX_INPUTS * TIMER_CYCLE_MS))
#define KEY_AUTOREP_START_CYCLES (800 / (ADC_MAX_INPUTS * TIMER_CYCLE_MS))
#define KEY_AUTOREP_REP_CYCLES (200 / (ADC_MAX_INPUTS * TIMER_CYCLE_MS))

#define ADCKEY_CYCLE_MS ADC_MAX_INPUTS*TIMER_CYCLE_MS	// adckey routine is called every 4 (adc count) * 4 (frequency of adc calls) = 16 ms

#define KEY_STAT_NIL 0
#define KEY_STAT_AUTOREP 1
#define KEY_STAT_LONGPRESSED 2

// extern
//--------------------- VAR ------------------------
typedef struct {
	uint8_t mux;
	uint8_t ADCval;
	uint8_t key;
	// uint8_t message; // set with 'key' when key is pressed, should be reset by app when message is processed
	uint8_t keyRepeating; // KEY_STAT_AUTOREP if autorepeating
	uint16_t keyTimer; // counts msecs since key is pressed or last message sent (autorepeat)
} KeyInfo;
extern volatile KeyInfo adcKeys[ADC_NR_INPUTS];

extern uint8_t keyWants[MESSAGE_KEY_COUNT]; // attention: index is key...- MESSAGE_KEY_MIN !

// ************************ PIPE ************************
// internal
// ---------------------- DEFINES ---------------------
// Mask für Ctr_out: only -L2P -L2C -CLK, not included: OE
#define PIPE_CTRL_MASK ((1 << PIPEIO_CLK) | (1 << PIPEIO_LATCH2PIPE) | (1 << PIPEIO_LATCH2CPU))
// internal
// 32 bit shift register depth
#define PIPE_SHIFTBIT_COUNT 32
// 8 modules each 1 bit for IO (8 is max!)
#define PIPE_MODULE_COUNT 8
//  PIPE_IO_COUNT * PIPE_MODULE_COUNT = 256 max as counter is byte only
#define PIPE_DEF_MODULE_ASSIGEND 0xFF // by default: use every module

// external
// ---------------------- DEFINES ---------------------
#undef PIPE_CHECKERROR
#define PIPE_OUTPUT_ENABLE PIPE_OE_PORT |= (1 << PIPE_OE_NR);
#define PIPE_OUTPUT_DISABLE PIPE_OE_PORT &= ~(1 << PIPE_OE_NR);

#define PIPE_MODULE_TESTPATTERN_BYTE 0xA5 // arbitrary
//--------------------- VAR ------------------------
typedef struct {
	uint8_t pipeOutM4; // out value 4ms ago
	uint8_t pipeOut; // pipe output, 0=on 1=off LSB=Module 0, MSB=Module 7
	uint8_t pipeInM16; // in value 16ms ago CAUTION: timperPipeProcess in hwtimer.c directly adresses this structure from ..InM16...InSTat!
	uint8_t pipeInM12; // in value 12ms ago
	uint8_t pipeInM8; // in value 8ms ago
	uint8_t pipeInM4; // in value 4ms ago
	uint8_t pipeIn; // pipe (keyboard) input, 0=off 1=on
	uint8_t pipeInStat; // Last Stat of pipe input, 0=off, 1=on, checked
} Pipe_t;
extern Pipe_t pipe[PIPE_SHIFTBIT_COUNT];
// pipeOut (active L) and pipeInStat (active H) are to be used as I/O. Index is Bit-Nr, Byte stores data for all 8 modules.

#define PIPE_IO_DISABLE 0x80 // MSB set to disable Pipe IO and Processing in Interrrupt
#define PIPE_IO_INOUT_DONE 0x02 // Bit 1 is set by Interrupt handler aftger PIPE IO
#define PIPE_IO_PROC_DONE 0x01 // Bit 0 is set by Int handler after Processing pipe[]
#define PIPE_IO_START 0x00 // Bit 0&1 are reset by main so that processing pipe[] can be observed
extern volatile uint8_t pipeProcessing;

extern uint8_t pipe_ModuleTested; // 1 if module reads back output for loop correctly, 0 if not

typedef struct {
	uint8_t AssnRead; // 1 for each module is to be read for messages (if 0 module will still read but make messages)
	uint8_t AssnWrite; // 1 for each module can be writte (if ==0 module will allways be written 1 (MOSFET off))
} Pipe_Module_t;

extern Pipe_Module_t pipe_Module;

// -------------------- POWER -----------------------
#define POWERSTATE_FORCE_OFF 0x00 // power on has not started or manually off
#define POWERSTATE_WAIT_FOR_KEY_REALEASE 0x01 // on timer: check input and turn on power if all key realeased
#define POWERSTATE_WAIT_FOR_POWERON 0x12 // on timer: check input, keep power on if ok (still inputs are off) or power off due to error
#define POWERSTATE_POWER_ON 0x14 // auto on
#define POWERSTATE_FORCE_ON 0x13 // manual on
#define POWERSTATE_OFF_DUE_TO_ERROR 0x80
extern uint8_t pipe_PowerStatus;

#define POWERSTAT_CHAR (pipe_PowerStatus & 0x10 ? ' ' : LCD_CHAR_ARROW_DOWN)
//-------------------- FUNCIOTNS ---------------------
extern uint8_t module_TestAllInputs();
extern void module_WaitOutputInput2Cycles();
extern void module_StartPowerOn();
extern void module_PowerControl();
extern void softKey_WantLong(uint8_t wantLong); // 0 Want repeat 1 Want Longpress
extern void Pipes_AllOutputsOff();
extern void  init_PipeModules();
extern uint32_t test_PipeModule(uint8_t moduleNr); // should return testpattern PIPE_MODULE_TESTPATTERN_BYTE

//------------------------------ PIPE ON-OFF ------------------------
extern void pipe_on(uint8_t bitNr, uint8_t moduleMask); // bitNr 0..31, moduleMask 0x01, 0x02, ... x080
extern void pipe_off(uint8_t bitNr, uint8_t moduleMask); // bitNr 0..31, moduleMask 0x01, 0x02, ... x080

#endif /* HWTIMER_H_ */