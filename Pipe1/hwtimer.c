/*
 * hwtimer.c
 *
 * Created: 08.12.2018 14:20:03
 *  Author: Anwender
 */
#include "hwtimer.h"
#include "message.h"
#include "hw_defs.h"
#include "utils.h"
#include "ee_prom.h"
#include "log.h"
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <util/atomic.h>

// ------------------------------------------ V A R S ------------------------------------

// TIMER
volatile uint8_t msecCtr; // free running milliseconds, overflow doesn't care
volatile Timer swTimer[TIMER_COUNT];
volatile uint8_t time_Uptime[4];
volatile uint8_t time_UpTimeUpdated;

// ADC Vars
static uint8_t adcNr; // last conversion
volatile KeyInfo adcKeys[ADC_NR_INPUTS];
uint8_t keyWants[MESSAGE_KEY_COUNT];

// PIPE Variables
Pipe_t pipe[PIPE_SHIFTBIT_COUNT];
uint8_t pipe_ModuleTested; // 1 if module reads back output for loop correctly, 0 if not
Pipe_Module_t pipe_Module;
// pipe_Module.AssnRead  1 for each module is to be read for messages (if 0 module will still read but make messages)
// pipe_Module.AssnWrite 1 for each module can be writte (if ==0 module will allways be written 1 (MOSFET off))
volatile uint8_t pipeProcessing;
uint8_t pipe_PowerStatus;

// --------------------------------------- I N I T  ------------------------------------

void init_Timers() {
	for (uint8_t i = 0; i < TIMER_COUNT; i++) {
		swTimer[i].counter = TIMER_INACTIVE;
		swTimer[i].prescaler = 0;
	}
	time_Uptime[0] = 0;
	time_Uptime[1] = 0;
	time_Uptime[2] = 0;
	time_Uptime[3] = 0;
	time_UpTimeUpdated = TRUE;
}

void init_HwTimer() {
	TCCR0A =  (1<<WGM01); // CTC
	TCCR0B = (1 << CS01) | (1 << CS00); // prescaler 64
	TIMSK0 = (1 << OCIE0A); // allow Timer 0 Interrupt for Compare
	OCR0A = (F_CPU / (64 * 1000UL) -1); // 16000000 Hz / (64 * 1000 1/s)-1 = 249 for 1msec cycle time
	LED_PORT &= ~(1 << LED_PIN); // LED off (not inverted: 0=off)
	LED_DDR |= (1 << LED_PIN); // set LED Output Port
}

void init_ADC(){
	// adc and key init
	ADCSRA = (1 << ADEN) | (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0); // enable ADC, 128 prescaler
	ADCSRB = 0; // only MUX:5 might be set
	ADMUX = ADC_ADMUX_STD | ADC_MUX_GND; // ACVCC=5V Reference, GND as temp. input
	DIDR0 = ADC_INP_DISABLE0_MASK0;
	DIDR1 = ADC_INP_DISABLE0_MASK1;
	adcKeys[0].mux = ADC_MUX_KEY0; // add other inputs to timer[1..].mux
	adcKeys[0].ADCval = ADC_KEY_NIL_VAL;
	adcKeys[0].key = KEY_NOKEY;
	adcNr = 0xFF; // invalid nr, so in first loop no values is processed
	// default: key wants down message
	for (uint8_t i = 0; i < MESSAGE_KEY_COUNT; i++){
		// i = 0 is not used (dummy only) array starts with MESSAGE_KEY_MIN
		if (i+MESSAGE_KEY_MIN == MESSAGE_KEY_ESC){
			keyWants[i] = KEY_WANTS_UP | KEY_WANTS_LONGPRESS;
		} else {
			keyWants[i] = KEY_WANTS_UP | KEY_WANTS_REPEAT;
		}
	}
}

void init_Pipe(){
	PIPEOUT_PORT = 0xFF; // outdata = 1 (MOSFET output off)
	PIPEOUT_DDR = 0xFF; // outputs
	PIPEIN_PORT = 0xFF; // pullups if no IF is present
	PIPEIN_DDR = 0x00; // inputs
	PIPECTRL_PORT |= PIPE_CTRL_MASK; // CLK#, L2P#, L2C# are high (inactive)
	PIPECTRL_DDR |= PIPE_CTRL_MASK; // CLK#, L2P#, L2C# are outputs
	PIPE_OE_PORT &= ~(1 << PIPE_OE_NR); // OE ist active High, disable OE at first
	PIPE_OE_DDR |= (1 << PIPE_OE_NR); // output
	for (uint8_t i = 0; i < PIPE_SHIFTBIT_COUNT; i++){
		pipe[i].pipeOut = 0xFF; // turn off output
		pipe[i].pipeOutM4 = 0xFF;
		// all others are 0 by default
	}
	pipeProcessing = PIPE_IO_START;
	pipe_PowerStatus = POWERSTATE_FORCE_OFF;
}

void init_PipeModules(){
	if (eeprom_ReadModules() == EE_LOAD_ERROR) {
		log_putError(LOG_CAT_EE, LOG_CATEE_MODULES, 0);
		pipe_Module.AssnRead = PIPE_DEF_MODULE_ASSIGEND; // use default
		pipe_Module.AssnWrite = PIPE_DEF_MODULE_ASSIGEND; // use default
	}
	// now test return of modules in serial IO
	Pipe_t* pPipe = &pipe[PIPE_SHIFTBIT_COUNT-1];
	PIPE_OE_L // assert output to pipe is not activated and inputs are pulled low!
	PIPECTRL_PORT |=  PIPE_CTRL_MASK; // -CLK -L2P -L2C off (1= HIGH =off!)
	//--- Round 1: Write TestPatterns 0x55/0xAA, Read Input but these results will be over written
	PIPE_LATCH2CPU_L //  in hw_defs.h: // Start with -L2C \_
	uint8_t i = PIPE_SHIFTBIT_COUNT;
	uint8_t pipeInput;
	_delay_us(1);
	PIPE_LATCH2CPU_H // -LATCH2CPU _/ Data from Pipe are in shift register, MSB is ready to be read
	do 	{
		PIPE_CLOCK_H // -clock keeps H in first loop or _/ in other loops
		PIPEOUT_PORT = ((i & 1) == 0) ? 0x55 : 0xAA;  // Test pattern to be read back
		// Writing starts with MSB of 32bit data per module, so as i starts with 32, 0b01010101 are the MSB fpr Module 7..0
		// Write Data 0/1   -> 0xAAAAAAAA for Mod 0,2,... 0x55555555 for Mod. 1,3,...
		pipeInput = PIPEIN_PIN; // also read current value of inputs
		pPipe->pipeInStat = pipeInput; // store current state in all input states to avoid reaction when ISP starts
		pPipe->pipeIn = pipeInput;
		pPipe->pipeInM4 = pipeInput;
		pPipe->pipeInM8 = pipeInput;
		pPipe->pipeInM12 = pipeInput;
		pPipe->pipeInM16 = pipeInput;
		PIPE_CLOCK_L // -clock \_ Write Data to pipe and shift read Data
		_delay_us(1);
	} while (--i > 0);
	//--- Round 2: discard 32 bits from shift out, as these are random initial values values from output shift register
	for (i = PIPE_SHIFTBIT_COUNT; i != 0; i--) {
		PIPE_CLOCK_H
		_delay_us(0.5);
		PIPE_CLOCK_L
		_delay_us(0.5);
	}
	// --- Round 3: Read back Test patterns and check if they are correct to see which modules are working
	// now D2P shows MSB of 32bit 0xAAAAAAAA for Mod 0,2,... 0x55555555 for Mod. 1,3,...
	pipe_ModuleTested = 0xFF; // 1 = module working
	i = PIPE_SHIFTBIT_COUNT;
	do 	{
		PIPE_CLOCK_H // clock keeps H in first loop or _/ in other loops
		PIPEOUT_PORT = 0xFF; // now write 1 to Pipe -> MOSEFET off
		// Write Data alterantiv "1/0" to Pipe MOSFET Gate  -> 0xAAAAAAAA for Mod 0,2,... 0x55555555 for Mod. 1,3,...
		pipeInput = PIPEIN_PIN; //
		pipe_ModuleTested &= pipeInput ^ (((i & 1) == 0) ? 0xAA : 0x55); // xor should result in 1 if module returns correct data (0xAA and 0x55 reversed)
		PIPE_CLOCK_L // clock \_
		_delay_us(1);
	} while (--i > 0);
	asm("nop");
	asm("nop");
	PIPE_CLOCK_H
	// --- Round 4: now almost original function from IRQ-Service: Read Status and write 0xFF (MOSFET off)
	PIPECTRL_PORT |=  PIPE_CTRL_MASK; // -CLK -L2P -L2C off (1=off)
	PIPE_LATCH2CPU_L //  in hw_defs.h: // Start with -L2C \_
	pPipe = &pipe[PIPE_SHIFTBIT_COUNT-1]; // point to last Pipe cause topmost bit is transferred first
	i = PIPE_SHIFTBIT_COUNT;
	_delay_us(0.5);
	PIPE_LATCH2CPU_H // -LATCH2CPU _/ Data from Pipe are in shift register, MSB is ready to be read
	do 	{
		pPipe->pipeInM16 = pPipe->pipeInM12; // no meaning, Timing compatibily
		pPipe->pipeInM12 = pPipe->pipeInM8; // no meaning, Timing compatibily
		PIPE_CLOCK_H // -clock keeps H in first loop or _/ in other loops
		pPipe->pipeOut = 0xFF; // MOSFETS off
		PIPEOUT_PORT = pPipe->pipeOut; // Write Data to Pipe
		pPipe->pipeInM8 = pPipe->pipeInM4; // no meaning, Timing compatibily
		pPipe->pipeInM4 = pPipe->pipeIn; // no meaning, Timing compatibily
		pPipe->pipeIn = PIPEIN_PIN; // Read Data from Pipe
		pPipe->pipeInM16 = pPipe->pipeIn; // Shift History Input Data from Pipe
		pPipe->pipeInM12 = pPipe->pipeIn;
		pPipe->pipeInM8 = pPipe->pipeIn;
		pPipe->pipeInM4 = pPipe->pipeIn;
		pPipe->pipeInStat = pPipe->pipeIn;
		PIPE_CLOCK_L // -clock \_ ->transfer data
		pPipe--; // proceed to next pipe
	} while (--i > 0);
	asm("nop");
	asm("nop");
	PIPE_CLOCK_H
	PIPE_LATCH2PIPE_L // last bit transferred -> latch2output
	PIPEOUT_PORT = 0x00; // not really needed, turn output off, just for scope debugging
	_delay_us(1);
	PIPE_LATCH2PIPE_H
	// conclusion: which module is working?
	// report error if working modules do not match modules assigend  by user
	#ifndef IGNORE_MODULE_TESTRESULT
	// not when debugging
	if ((pipe_ModuleTested ^ (pipe_Module.AssnWrite | pipe_Module.AssnRead)) != 0) {
		// Modules that are not working
		log_putError(LOG_CAT_MODULES,LOG_CATMODULES_NOTWORKING,pipe_Module.AssnRead<<8 | pipe_ModuleTested);
	}
	#endif
}

//------------------------------------------ TEST MODULE -----------------------------
uint32_t test_PipeModule(uint8_t moduleNr){ // should return testpattern PIPE_MODULE_TESTPATTERN
	uint32_t result;
	if (moduleNr >= PIPE_MODULE_COUNT) {
		// wrong number, don't do anything
		return 0;
	}
	uint8_t modulePattern = (1 << moduleNr); // 00000001 for module 0, 00000010 module 1...
	pipeProcessing = PIPE_IO_DISABLE; // stop processing
	PIPE_OUTPUT_DISABLE // assert output to pipe is not activated and inputs are pulled low!
	// as no output latch is activated, this should not be neccessary, but just for security!
	PIPECTRL_PORT |=  PIPE_CTRL_MASK; // -CLK -L2P -L2C off (1= HIGH =o>ff!)
	//--- Round 1: Write 32bit TestPatterns 4 * 0xA5
	for (uint8_t byteCount = 0; byteCount < PIPE_SHIFTBIT_COUNT / 8; byteCount++) { // nr. of bytes to be written to module
		uint8_t testByte = PIPE_MODULE_TESTPATTERN_BYTE;
		for (uint8_t bitNr = 0; bitNr < 8; bitNr++){
			PIPEOUT_PORT = ((testByte & 0x01) == 0) ? ~ modulePattern : 0xFF; // output 0 or (1 << moduleNr), other module 1 (=inactive);
			testByte >>= 1;
			_delay_us(0.5);
			PIPE_CLOCK_L // -> active edge
			_delay_us(0.5);
			PIPE_CLOCK_H
		}
	}
	//--- Round 2: discard 32 bits from shift out, as these are random initial values values from output shift register
	for (uint8_t i = 0; i < PIPE_SHIFTBIT_COUNT; i++) {
		_delay_us(0.5);
		PIPE_CLOCK_L
		_delay_us(0.5);
		PIPE_CLOCK_H
	}
	// --- Round 3: Read back Test patterns and check if they are correct to see which modules are working
	// now D2P shows MSB of 32bit 0xAAAAAAAA for Mod 0,2,... 0x55555555 for Mod. 1,3,...
	result = 0;
	for (uint8_t i = 0; i < PIPE_SHIFTBIT_COUNT; i++) {
		result <<= 1;
		_delay_us(0.5);
		PIPE_CLOCK_L
		if ((PIPEIN_PIN & modulePattern) != 0) {
			result |= 0x01;
		}
		_delay_us(0.5);
		PIPE_CLOCK_H
	}
	// restore ISR Processing
	pipeProcessing = PIPE_IO_START;
	PIPE_OUTPUT_ENABLE
	return result;
}

void Pipes_AllOutputsOff(){
	MESSAGE_PIPE_HANDLING_OFF
	Pipe_t* pPipe = &(pipe[0]);
	// all outputs off
	for (uint8_t i = 0; i < PIPE_SHIFTBIT_COUNT; i++){
		pPipe->pipeOut = 0xFF;
		pPipe->pipeOutM4 = 0xFF;
		pPipe++;
	}
	MESSAGE_PIPE_HANDLING_ON
	// TODO output change might cause pipe messages!
}

uint8_t module_TestAllInputs(){
	// returns 0 if all inputs are off
	// returns bit "1" for reach module that has at least one active input (LSB = module 0)
	// also turns all outouts off
	uint8_t result = 0;
	Pipe_t* pPipe = &(pipe[0]);
	// read all 32 recent input  values
	// only for module that are assigned to read,
	// but also for modules that did NOT pass loop test or that are NOT assigned to write
	for (uint8_t i = 0; i < PIPE_SHIFTBIT_COUNT; i++){
		pPipe->pipeOut = 0xFF; // outputs off
		result |= pPipe->pipeIn;
		pPipe++;
	}
	// V 0.65 & pipe_ModuleTested
	return result & pipe_Module.AssnRead & pipe_ModuleTested; // modules unassgined to read will be ignored (return bit=0)
}

void module_WaitOutputInput2Cycles(){
	// wait until current output in pipe[] is transferred to modules and inputs is read back to pipe[]
	// does NOT wait until these input values are proccessed to pipe messages!
	pipeProcessing = PIPE_IO_START;
	while ((pipeProcessing & PIPE_IO_INOUT_DONE) == 0){
		// wait for Data write to outpur
	}
	pipeProcessing = PIPE_IO_START;
	while ((pipeProcessing & PIPE_IO_INOUT_DONE) == 0){
		// wait for Data read back from input
	}
}

void module_StartPowerOn(){
	// just before main loop: start timer to init power on
	pipe_PowerStatus = POWERSTATE_WAIT_FOR_KEY_REALEASE;
	TIMER_SET(TIMER_POWER,TIMER_POWER_INIT_MS)
}

void module_PowerControl(){
	// call when timer is elapsed
	if (pipe_PowerStatus == POWERSTATE_WAIT_FOR_KEY_REALEASE) {
		// part1: now check inputs
		if (module_TestAllInputs() == 0){
			// all inputs are low, no key is pressed, no register active, start power on and wait a little bit
			POWER_ON
			pipe_PowerStatus = POWERSTATE_WAIT_FOR_POWERON;
			TIMER_SET(TIMER_POWER,TIMER_POWER_CHECK_MS)
		} else {
			// keys are not released: wait some time and then test again
			TIMER_SET(TIMER_POWER,TIMER_POWER_TEST_REPEAT_MS)
		}
	} else if (pipe_PowerStatus == POWERSTATE_WAIT_FOR_POWERON) {
		// part2: power is on for some time, test if every input is still inactive
		uint8_t testResult = module_TestAllInputs();
		if (testResult == 0){
			// inputs still off, seems ok
			pipe_PowerStatus = POWERSTATE_POWER_ON;
		} else {
			// inputs are no low any more, MOSFET defective?
			log_putError(LOG_CAT_POWER,LOG_CATPOWER_OUTPUTSON,testResult);
			POWER_OFF
			pipe_PowerStatus = POWERSTATE_OFF_DUE_TO_ERROR;
		}
		// final action, no more timer
		TIMER_DEACTIVATE(TIMER_POWER)
	} else {
		TIMER_DEACTIVATE(TIMER_POWER)
	}
}


//------------------------------------------------------ BUSINESSS LOGIC -------------------------------

static inline uint8_t absDifference(uint8_t data1,uint8_t data2){
	// absolute value of difference between data1,2 as uint8_t!
	if (data1 > data2) {
		return data1-data2;
	} else {
		return data2-data1;
	}
}

//-------------------------------------------------T I M E R -------------------------------

static inline void timerTimers(){
	Timer *mytimer;
	mytimer = (Timer*) &(swTimer[0]);
	for (uint8_t i = 0; i < TIMER_COUNT; i++) {
		if ((mytimer->counter != TIMER_ENDED) && (mytimer->counter != TIMER_INACTIVE)) {
			uint8_t newPrescaler = (mytimer->prescaler)+1;
			if (newPrescaler >= TIMER_BASE_MS / TIMER_CYCLE_MS) {
				// prescaler is decreasesd only every TIMER_CYCLE_MS, so divide value by this
				newPrescaler = 0;
				(mytimer->counter)--;
			}
			mytimer->prescaler = newPrescaler;
		}
		mytimer++;
	}
	uint8_t* pTime = (uint8_t *) &(time_Uptime[0]); // point to prescaler
	if (++(*pTime) == TIMER_UPDTIME_PRESC){
		// if incremented prescaler ist top
		time_UpTimeUpdated = TRUE; // notify new uptime to main!
		*(pTime++) = 0; // reset prescaler and point to seconds
		if (++(*pTime) >= 60) {
			// if incrementet seconds are 60
			*(pTime++) = 0; // reset sceonds and point to minutes
			if (++(*pTime) >= 60) {
				// if incrementet minutes are 60
				*(pTime++) = 0; // reset minutes and point to hours
				if (++(*pTime) >= 100) {
					// if incrementet hours are 100
					*(pTime) = 0; // reset  hours
				}
			}
		}
	}
}

//--------------------------------- A D C / K E Y S -------------------------------

static inline void timerADC(){
	if ((adcNr < ADC_NR_INPUTS) && ((ADCSRA & (1 << ADSC)) == 0)){
		// last conversion is valid input and conversion complete or not yet started
		// De-Noise
		uint8_t oldADC;
		oldADC = adcKeys[adcNr].ADCval;
		uint8_t newADC = ADCH;
		adcKeys[adcNr].ADCval = newADC;
		if (absDifference(oldADC,newADC) < ADC_NOISE_THRESHOLD) {
			// input voltage is stable, process this value
			uint8_t newKey;
			switch (adcNr) {
				case 0:
				// currentyl only one  ADC implemented
				if (newADC < (ADC_KEY5_VAL + ADC_KEY4_VAL)/2)  {
					newKey = ADC_KEY5_FUNC;
				} else if (newADC < (ADC_KEY4_VAL + ADC_KEY3_VAL)/2)  {
					newKey = ADC_KEY4_FUNC;
				} else if (newADC < (ADC_KEY3_VAL + ADC_KEY2_VAL)/2)  {
					newKey = ADC_KEY3_FUNC;
				} else if (newADC < (ADC_KEY2_VAL + ADC_KEY1_VAL)/2)  {
					newKey = ADC_KEY2_FUNC;
				} else if (newADC < (ADC_KEY1_VAL + ADC_KEY0_VAL)/2)  {
					newKey = ADC_KEY1_FUNC;
				} else if (newADC < (ADC_KEY0_VAL + 0xFF)/2)  {
					newKey = ADC_KEY0_FUNC;
				} else {
					newKey = KEY_NOKEY;
				}
				break;
				// unimplemented ADC
				default:
					newKey = KEY_NOKEY; // not implemented
			}
			uint8_t oldKey = adcKeys[adcNr].key;
			if (oldKey != newKey){
				// key has changed (pressed or released)
				if ((oldKey != KEY_NOKEY) && (newKey != KEY_NOKEY)) {
					// direct change of keys: realease old key first
					newKey = KEY_NOKEY;
				}
				adcKeys[adcNr].key = newKey;
				if (oldKey == KEY_NOKEY) {
					// key is pressed
					adcKeys[adcNr].keyTimer = 0;
					adcKeys[adcNr].keyRepeating = KEY_STAT_NIL;
					if (keyWants[newKey-MESSAGE_KEY_MIN] & KEY_WANTS_DOWN) {
						message_push(MESSAGE_KEY_PRESSED | newKey);
					}
				} else {
					// key is released
					if (keyWants[oldKey-MESSAGE_KEY_MIN] & KEY_WANTS_UP) {
						if ((adcKeys[adcNr].keyRepeating & (KEY_STAT_AUTOREP | KEY_STAT_LONGPRESSED)) == 0){
							// send message only if not autorepeating or longpress has triggered
							message_push(MESSAGE_KEY_RELEASED | oldKey);
						}
					}
				}
			} else {
				// no key change
				if (newKey != KEY_NOKEY) {
					// there is some key pressed
					adcKeys[adcNr].keyTimer++;
					if (adcKeys[adcNr].keyTimer == KEY_LONGPRESS_CYCLES) {
						// onyl if exact value for longpress reached:
						if (keyWants[oldKey-MESSAGE_KEY_MIN] & KEY_WANTS_LONGPRESS) {
							message_push(MESSAGE_KEY_LONGPRESSED | newKey);
							adcKeys[adcNr].keyRepeating = KEY_STAT_LONGPRESSED; // prevent up-Message
						}
					}
					if (keyWants[oldKey-MESSAGE_KEY_MIN] & KEY_WANTS_REPEAT) {
						if (adcKeys[adcNr].keyRepeating == KEY_STAT_NIL)  {
							if (adcKeys[adcNr].keyTimer == KEY_AUTOREP_START_CYCLES) {
							// delay for autorepeat reached
								adcKeys[adcNr].keyRepeating = KEY_STAT_AUTOREP;
								adcKeys[adcNr].keyTimer = 0;
								message_push(MESSAGE_KEY_AUTOREPEAT | newKey);
							}
						} else if ((adcKeys[adcNr].keyRepeating == KEY_STAT_AUTOREP) && (adcKeys[adcNr].keyTimer == KEY_AUTOREP_REP_CYCLES)) {
							// in autorepeat
							adcKeys[adcNr].keyTimer = 0;
							message_push(MESSAGE_KEY_AUTOREPEAT | newKey);
						}
					}
				}
			}
		} // if difference
	} // if valid conversion
	// cycle through all possoble ADCs, even if not implemented
	if (++adcNr >= ADC_MAX_INPUTS) {
		adcNr = 0;
	}
	uint8_t newMux;
	if (adcNr < ADC_NR_INPUTS){
		newMux = adcKeys[adcNr].mux;
	} else {
		// if ADC not implemented: sample GND
		newMux = ADC_MUX_GND;
	}
	ADMUX = ADC_ADMUX_STD | (newMux & ADC_MUX_MASKL);
	ADCSRB = (ADCSRB & ~ADC_MUX_MASKH) | ((newMux & ADC_MUX_MASKH) >> 2);
	ADCSRA |= (1 << ADSC); // start adc, read value on next corresponding cycle
}

void softKey_WantLong(uint8_t wantLong){
	// 0 for wants repeat, != 0 for wantLong
	for (uint8_t i = 0; i < MESSAGE_KEY_COUNT; i++){
		// i = 0 is not used (dummy only) array starts with MESSAGE_KEY_MIN
		if ((i+MESSAGE_KEY_MIN == MESSAGE_KEY_1) || (i+MESSAGE_KEY_MIN == MESSAGE_KEY_2) || (i+MESSAGE_KEY_MIN == MESSAGE_KEY_3) || (i+MESSAGE_KEY_MIN == MESSAGE_KEY_4)) {
			keyWants[i] = KEY_WANTS_UP | (wantLong == 0 ? KEY_WANTS_REPEAT : KEY_WANTS_LONGPRESS);
		}
	}

}

//************************************** P I P E *******************************************

static inline void timerPipeProcess(){
	Pipe_t *curPipe;
	curPipe = &pipe[0];
	// V 0.65 AssnRead -> new: & ModuleTesteD
	uint8_t local_pipe_ModuleAssnRead = pipe_Module.AssnRead & pipe_ModuleTested; // 1= module message processeced
	for (uint8_t shiftBitNr = 0; shiftBitNr < PIPE_SHIFTBIT_COUNT; shiftBitNr++) {
		// check output error
		PipeMessage_t myMessage;
		#ifdef PIPE_CHECKERROR
		uint8_t pipeIn = curPipe->pipeIn;
		uint8_t outPipeError = (~(curPipe->pipeOut | curPipe->pipeOutM4 | pipeIn)) & pipe_ModuleTested; // 1 if output should be high, but ist read as low
		if (outPipeError != 0) {
			// Error Pipe has bit set
			curPipe->pipeOut |= outPipeError; // reset error pipe by writing 1 to pipeOutBit -> output low in next cycle
			myMessage.message8[MSG_BYTE_MODULEBITS] = outPipeError;
			myMessage.message8[MSG_BYTE_CMD_SHIFTBIT] = MESSAGE_PIPE_ERROR_ON_HI | shiftBitNr;
			pipeMsgPush(myMessage);
			PIPE_OE_L // turn off OE till next PipeIO cycle
		}
		#endif

		// Check new pipe status
		// new V 0.56
		uint8_t newOnState = 0xFF; // and operation of recent states -> 1 == input was allways 1
		uint8_t newOffState = 0; // or operation of recent states -> 0 == input was allways 0
		uint8_t* pInByte = &(curPipe->pipeInM16);
		newOnState &= *pInByte; //pipeInM16
		newOffState |= *pInByte++;
		newOnState &= *pInByte; //pipeInM12
		newOffState |= *pInByte++;
		newOnState &= *pInByte; //pipeInM8
		newOffState |= *pInByte++;
		newOnState &= *pInByte; //pipeInM4
		newOffState |= *pInByte++;
		newOnState &= *pInByte; //pipeIn
		newOffState |= *pInByte++; // now pointer to pipeInStat
		uint8_t oldPipeStat = *pInByte;
		uint8_t newPipeStat = (oldPipeStat & newOffState) | newOnState; // ->0 only if recent reads are all 0, -> 1 if reads are all 1, else keep old val
		*pInByte = newPipeStat;
		// end new V 0.56
		uint8_t statChange = (newPipeStat & ~oldPipeStat) & local_pipe_ModuleAssnRead; // new = 1, old = 0
		if ((statChange)!= 0) {
			// 0->1, pipe on
			myMessage.message8[MSG_BYTE_MODULEBITS] = statChange;
			myMessage.message8[MSG_BYTE_CMD_SHIFTBIT] = MESSAGE_PIPE_ON_HI | shiftBitNr;
			pipeMsgPush(myMessage);
		}
		statChange = (~newPipeStat & oldPipeStat) & local_pipe_ModuleAssnRead; // new = 0, old = 1
		if ((statChange)!= 0) {
			// 1->0, pipe off
			myMessage.message8[MSG_BYTE_MODULEBITS] = statChange;
			myMessage.message8[MSG_BYTE_CMD_SHIFTBIT] = MESSAGE_PIPE_OFF_HI | shiftBitNr;
			pipeMsgPush(myMessage);
		}
		curPipe++;
		pipeProcessing |= PIPE_IO_PROC_DONE; // to show that pipe[].pipeInStat is updated
	}
}

static inline void timerPipeIO(){
	Pipe_t *curPipe;
	PIPECTRL_PORT |=  PIPE_CTRL_MASK; // -CLK -L2P -L2C off (1=off)
	PIPE_LATCH2CPU_L //  in hw_defs.h: // Start with -L2C \_
	curPipe = &pipe[PIPE_SHIFTBIT_COUNT-1]; // point to last Pipe cause topmost bit is transferred first
	uint8_t local_pipe_ModuleAssnWrite = ~pipe_Module.AssnWrite; // 0= module may be written
	uint8_t i = PIPE_SHIFTBIT_COUNT;
	_delay_us(0.5);
	PIPE_LATCH2CPU_H // -LATCH2CPU _/ Data from Pipe are in shift register, MSB is ready to be read
	do 	{
		curPipe->pipeInM16 = curPipe->pipeInM12; // Shift History Input Data from Pipe
		curPipe->pipeInM12 = curPipe->pipeInM8;
		PIPE_CLOCK_H // clock keeps H in first loop or _/ in other loops
		PIPEOUT_PORT = curPipe->pipeOut | local_pipe_ModuleAssnWrite; // Write Data to Pipe
		curPipe->pipeInM8 = curPipe->pipeInM4; // just here for symetric clk pulse
		curPipe->pipeInM4 = curPipe->pipeIn;
		curPipe->pipeIn = PIPEIN_PIN; // Read Data from Pipe
		PIPE_CLOCK_L // clock \_
		curPipe--; // proceed to next pipe
	} while (--i > 0);
	asm("nop");
	asm("nop");
	PIPE_CLOCK_H
	PIPE_LATCH2PIPE_L // last bit transferred latch2outout
	pipeProcessing |= PIPE_IO_INOUT_DONE; // meanwhile (instead of wait): update processing status
	PIPEOUT_PORT = 0; // not really needed, turn output off
	PIPE_OE_H // turn output on
	PIPE_LATCH2PIPE_H
}

//*********************************************** I S R   T I M E R ****************************************

ISR (TIMER0_COMPA_vect)
{
	// called every 1ms
	LED_PORT |= (1 << LED_PIN); // LED on (1 = on, 0 = off)
	//  ********************************************** SW-TIMER ***********************************************
	switch (++msecCtr & 0x03) {
		// execution order is 3,2,1,0; any function is calles every 4ms
		case 0: timerADC(); break; // evetnually timer has also been called (only every 100ms)
		case 1: if (pipeProcessing != PIPE_IO_DISABLE) {
				timerPipeIO();
			}
			break;
		case 2: timerTimers(); break;
		case 3: if (pipeProcessing != PIPE_IO_DISABLE) {
				timerPipeProcess();
			}
			break;
	}
	LED_PORT &= ~(1 << LED_PIN); // LED off (1 = on, 0 = off)

}

// ------------------------------------------- PIPE ON-OFF -----------------------------------

void pipe_on(uint8_t bitNr, uint8_t moduleMask){ // bitNr 0..31, moduleMask 0x01, 0x02, ... x080
	pipe[bitNr].pipeOut &= ~(moduleMask);
}

void pipe_off(uint8_t bitNr, uint8_t moduleMask){ // bitNr 0..31, moduleMask 0x01, 0x02, ... x080
	pipe[bitNr].pipeOut |= moduleMask;
}
