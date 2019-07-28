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
#include <avr/interrupt.h>
#include <util/delay.h>

volatile uint8_t msecCtr; // free running milliseconds, overflow doesn't care

// TIMER Variables
volatile Timer timer[TIMER_COUNT]; // zählt in TIMEBASE_MS nach unten

// ADC Vars
static uint8_t adcNr; // last conversion
volatile KeyInfo keys[ADC_NR_INPUTS];

// PIPE Variables
Pipe pipe[PIPE_SHIFTBIT_COUNT];

// KEY Variables
volatile KeyInfo keys[ADC_NR_INPUTS];

void initTimers() {
	for (uint8_t i = 0; i < TIMER_COUNT; i++) {
		swTimer[i].counter = TIMER_INACTIVE;
		swTimer[i].prescaler = 0;
	}
}

void initHwTimer() {
	TCCR0 = (1 << CS01) | (1 << CS00) | (1<<WGM01); // Divider 64
	TIMSK |= (1<<OCIE0); // allow Timer 0 Interrupt for Compare
	OCR0 = (F_CPU / (64 * 1000) -1); // 16000000 Hz / (64 * 1000 1/s)-1 = 249 for 1msec cycle time
	LED_PORT |= (1 << LED_PIN); // LED off (as inverted: 1=off)
	LED_DDR |= (1 << LED_PIN); // set LED Output Port
}

void initADC(){
	ADCSRA = (1 << ADEN) | (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0); // enable ADC, 128 prescaler
	ADCSRB = 0; // only MUX:5 might be set
	ADMUX = ADC_ADMUX_STD | ADC_MUX_GND; // ACVCC=5V Reference, GND as temp. input
	DIDR0 = ADC_INP_DISABLE0_MASK0;
	DIDR1 = ADC_INP_DISABLE0_MASK1;
	timer[0].mux = ADC_MUX_KEY0; // add other inputs to timer[1..].mux
	adcNr = 0xFF;
}

void initKeys() {
	for (int8_t i = KEY_COUNT; i >= 0; i--) {
		key[i].timer = 0;
		key[i].val = 0;
		key[i].status = KEY_STAT_IDLE;
	}
	key[0].keyout = KEY0MASK;
	key[1].keyout = KEY1MASK;
	key[2].keyout = KEY2MASK;
	key[3].keyout = KEY3MASK;
	key[0].keytype = KEY0TYP;
	key[1].keytype = KEY1TYP;
	key[2].keytype = KEY2TYP;
	key[3].keytype = KEY3TYP;
	KEYIDDR &= KEYINMSK ^ 0xFF; // define Input pin
}

void initPipe(){

}

inline uint8_t difference(uint8_t data1,uint8_t data2){
	// absolute value of difference between data1,2 as uint8_t!
	if (data1 > data2) {
		return data1-data2;
		} else {
		return data2-data1;
	}
}

static inline void timerKeys(){
	// TEST KEY
	// *********************************************** KEY ****************************************************
	// save Port Status
	KEYIDDR &= KEYINMSK ^ 0xFF; // clear key input DDR bit for input
	uint8_t savePort = KEYPORT;
	KEYPORT = savePort & (KEYOUTMSK ^ 0xFF); // clear PORT bits for output
	uint8_t saveDDR = KEYODDR;
	KEYODDR = saveDDR | KEYOUTMSK; // set DDR bits for output
	uint8_t keyNr = KEY_COUNT;
	do {
		keyNr--;
		KEYPORT = (savePort & (KEYOUTMSK ^ 0xFF)) | key[keyNr].keyout;
		_delay_us(KEYWAIT);
		key[keyNr].keynew =  ((KEYINP & KEYINMSK) == 0) ? KEY_STAT_IDLE : KEY_STAT_PRESS; // store new input
	} while (keyNr > 0);
	// restore Port Status
	KEYPORT = savePort;
	KEYODDR = saveDDR;
	keyNr = KEY_COUNT;
	do {
		keyNr--;
		// debouncing
		if (key[keyNr].keynew == KEY_STAT_IDLE) {
			// current key state is idle
			// val decrease by 1/4
			key[keyNr].val -= (key[keyNr].val >> 2);
			} else {
			// current key state is pressed (press/longpress/autorep)
			// val increase by 1/4 of difference to 255
			key[keyNr].val += (0xFF-key[keyNr].val) >> 2;
		}
		// temp store status if key is changed, use threshold
		uint8_t keychange; // KEY_CHANGE_L_L ... H_H
		if (key[keyNr].status == KEY_STAT_IDLE) {
			if (key[keyNr].val > KEY_UPPER_THRESH) {
				// idle -> pressed
				keychange = KEY_CHANGE_L_H;
				} else {
				// still idle
				keychange = KEY_CHANGE_L_L;
			}
			} else {
			if (key[keyNr].val < KEY_LOW_THRESH) {
				// pressed -> idle
				keychange = KEY_CHANGE_H_L;
				} else {
				// still pressed
				keychange = KEY_CHANGE_H_H;
			}
		}
		// keychange defined, now process
		if (key[keyNr].keytype <= KEY_TYPE_LONGPRESS) {
			// simple key, autorepeat or longpress
			if (keychange == KEY_CHANGE_L_H) {
				// Key pressed:
				message_push (MESSAGE_TYP_KEYDOWN+keyNr);
				key[keyNr].timer = 0;
				key[keyNr].status = KEY_STAT_PRESS;
				} else 	if (keychange == KEY_CHANGE_H_L) {
				// Key released: simple key, or autorepeat/longpress not triggered: send keyup
				if (key[keyNr].status == KEY_STAT_PRESS) {
					message_push (MESSAGE_TYP_KEYUP+keyNr);
				}
				key[keyNr].status = KEY_STAT_IDLE;
				} else if (keychange == KEY_CHANGE_H_H) {					// key is continiously pressed
				key[keyNr].timer++;
				if (key[keyNr].keytype == KEY_TYPE_AUTOREP) {
					// autorepeat
					if ((key[keyNr].status == KEY_STAT_PRESS) && (key[keyNr].timer >= KEY_MS_AUTOREP)) {
						// until now: key is pressed only
						// timer: start autorep
						message_push(MESSAGE_TYP_KEYREP+keyNr);
						key[keyNr].timer = 0;
						key[keyNr].status = KEY_STAT_AUTOREPEAT;
						} else if ((key[keyNr].status == KEY_STAT_AUTOREPEAT) && (key[keyNr].timer >= KEY_MS_REPCYCLE)) {
						// key already in autorep
						// timer: new autorep
						message_push(MESSAGE_TYP_KEYREP+keyNr);
						key[keyNr].timer = 0;
					}
					} else if (key[keyNr].keytype == KEY_TYPE_LONGPRESS) {
					// longpress
					if ((key[keyNr].status == KEY_STAT_PRESS) && (key[keyNr].timer >= KEY_MS_LONGPRESS)) {
						// until now: key is pressed only
						// timer: longpress
						message_push(MESSAGE_TYP_KEYLONG+keyNr);
						key[keyNr].status = KEY_TYPE_LONGPRESS;
						// timer will continue running, but is never checked any more
					}
				}
				// no action for H_H when simple_key
			} // KEY_CHANGED_L_L -> no actione
			} else if (key[keyNr].keytype == KEY_TYPE_ROT_CLK) {
			// rotary switch: clock pin
			if (keychange == KEY_CHANGE_L_H) {
				// rising edge
				if (key[keyNr+1].status == KEY_STAT_IDLE) {
					message_push(MESSAGE_TYP_KEYRIGHT);
					} else {
					message_push(MESSAGE_TYP_KEYLEFT);
				}
				key[keyNr].status = KEY_STAT_PRESS;
				} else if (keychange == KEY_CHANGE_H_L) {
				key[keyNr].status = KEY_STAT_IDLE;
			}
			} else if (key[keyNr].keytype == KEY_TYPE_ROT_DATA) {
			// rotary switch: Data pin (no message)
			if (keychange == KEY_CHANGE_L_H) {
				key[keyNr].status = KEY_STAT_PRESS;
				} else if (keychange == KEY_CHANGE_H_L) {
				key[keyNr].status = KEY_STAT_IDLE;
			}
		}
	} while (keyNr > 0);

}

static inline void timerTimers(){
	Timer *mytimer;
	mytimer = &(timer[0]); // ignore volatile warning
	for (uint8_t i = 0; i < TIMER_COUNT; i++) {
		if (mytimer->counter != TIMER_INACTIVE) {
			uint8_t newPrescaler = (mytimer->prescaler)+1;
			if (newPrescaler >= TIMER_PRESC_MS) {
				newPrescaler = 0;
				(mytimer->counter)--;
			}
			mytimer->prescaler = newPrescaler;
		}
		mytimer++;
	}

static inline void timerADC(){
	if ((adcNr < ADC_NR_INPUTS) & ((ADCSRA & (1 << ADSC)) == 0)){
		// last conversion is valid input and conversion complete or not yet started
		// De-Noise
		uint8_t oldADC = keys[adcNr].ADC;
		uint8_t newADC = ADCH;
		keys[adcNr].ADC = newADC;
		if (difference(oldADC,newADC) < ADC_NOISE_THRESHOLD) {
			// input voltage is stable, process this value
			uint8_t newKey;
			if (newADC < 18)  {
				newKey = 0;
			} else if (newADC < 64)  {
				newKey = 1;
			} else if (newADC < 100)  {
				newKey = 2;
			} else if (newADC < 150)  {
				newKey = 3;
			} else if (newADC < 210)  {
				newKey = 4;
			} else {
				newKey = KEY_NOKEY ;
			}
			if (keys[adcNr].key != newKey){
				// new key is pressed
				keys[adcNr].key = newKey;
				if (newKey != KEY_NOKEY) {
					// (no action on release!)
					keys[adcNr].message = newKey; // is to be reset by main when processed
				}
			}
		} // if difference
	} // if valid conversion
	if (++adcNr >= ADC_MAX_INPUTS) {
		adcNr = 0;
	}
	uint8_t newMux;
	if (adcNr < ADC_NR_INPUTS){
		newMux = keys[adcNr].mux;
	} else {
		newMux = ADC_MUX_GND;
	}
	ADMUX = ADC_ADMUX_STD | (newMux & ADC_MUX_MASKL);
	ADSCSRB = (ADSCSRB & ~ADC_MUX_MASKH) | ((newMux & ADC_MUX_MASKH) >> 2);
	ADCSRA |= (1 << ADSC); // start adc
}

//************************************** P I P E *******************************************

inline void timerPipeProcess(uint8_t startPipeShiftBitIndex){
	Pipe *curPipe;
	curPipe = &pipe[startPipeShiftBitIndex];
	uint8_t pipeNr = startPipeShiftBitIndex * PIPE_MODULE_COUNT; // PIPE_SHIFTBIT_COUNT * PIPE_MODULE_COUNT = 256 max
	// pipeNr: ssss smmm m=module number s=shiftbit number
	do {
		// Check new pipe status
		uint8_t newPipeStat = (curPipe->pipeIn) | (curPipe->pipeInM4) | (curPipe->pipeInM8)
			| (curPipe->pipeInM12) | (curPipe->pipeInM16);
		// newPipeStat: 8bits for each module input from keyboard: 1=on 0=off for last 16ms;
		// react to on immediately, off only after 16ms!
		uint8_t outPipeCouldBeOn = (curPipe->pipeOut) & (curPipe->pipeOutM4);
		// outActivePipe: 8bits for each module output:  0=on now or 4ms ago 1=off now and 4ms ago

		// check error when pipe should be on
		uint8_t outPipeMustBeOn = (curPipe->pipeOut) | (curPipe->pipeOutM4); // 0=on now and 4ms ago 1=off now or 4ms ago
		curPipe->pipeOutM4 = curPipe->pipeOut; // set current value of pipeOut as value 4ms ago, so  valid only in next 4ms round!
		uint8_t outPipeError = 0xFF ^ (outPipeMustBeOn | curPipe->pipeIn); // 1=error: pipe should be on but input is 0
		if (outPipeError != 0) {
			pipeMsgPush(MESSAGE_PIPE_ERROR_ON | (((pipeNr >> 3) & (PIPE_SHIFTBIT_COUNT-1)) << 8) | outPipeError);
			// 0xC000-0xDFFF: LoByte = outPipeError, HiByte = 110s ssss, s=shiftBitNr
			curPipe->pipeOut |= outPipeError; // turn off output that causes error
		}

		// Check status of each module, pipeNr is  ssss s000, so 3 LSB are module number
		// load current ShiftBit vars
		uint8_t tempPipeIn = curPipe->pipeIn;
		uint8_t tempPipeOldStat = curPipe->pipeInStat;
		uint8_t tempPipeChange = tempPipeIn ^ tempPipeOldStat; // 1 for input change in each module
		curPipe->pipeInStat = curPipe->pipeIn; // current InStat for next round
		do {
			if ((tempPipeChange & 0x01) != 0) {
				// has changed!
				pipeMsgPush(pipeNr | ((tempPipeIn & 0x01) ? MESSAGE_PIPE_ON : MESSAGE_PIPE_OFF));
			}
			tempPipeIn = tempPipeIn >> 1;
			tempPipeChange = tempPipeChange >> 1;
			pipeNr++;
		} while ((pipeNr & (PIPE_MODULE_COUNT-1)) != 0);
		curPipe++;
	}	while (pipeNr != ((PIPE_SHIFTBIT_COUNT * PIPE_MODULE_COUNT) & 0xFF));
}

inline void timerPipeIO(){
	Pipe *curPipe;
	uint8_t clockON;
	uint8_t clockOFF;
	PIPE_CTRL_PORT = PIPE_CTRL_PORT | PIPE_CTRL_MASK; // -CLK -L2P -L2C off (1=off)
	clockON = PIPE_CTRL_PORT & (0xFF ^ (1 << PIPE_PIN_CLK)); // Clock on = 1 (active low), all latches off
	clockOFF = PIPE_CTRL_PORT | (1 << PIPE_PIN_CLK); // Clock off = 0 (active low), all latches off
	// Start with -L2C \_
	PIPE_CTRL_PORT = PIPE_CTRL_PORT & (0xFF ^ (1 << PIPE_LATCH_2CPU));
	curPipe = &pipe[PIPE_SHIFTBIT_COUNT-1]; // point to last Pipe cause topmost bit is transferred first
	// Now activate -CLK \_
	PIPE_CTRL_PORT = PIPE_CTRL_PORT & (0xFF ^ ((1 << PIPE_LATCH_2CPU) | (1 << PIPE_PIN_CLK)));
	uint8_t i = PIPE_SHIFTBIT_COUNT;
	do 	{
		PIPE_CTRL_PORT = clockON; // -CLK \_ (in first loop: -CLK stays at __  and inactivate -L2C _/ )
		curPipe->pipeInM16 = curPipe->pipeInM12; // Shift History Input Data from Pipe
		curPipe->pipeInM12 = curPipe->pipeInM8;
		curPipe->pipeInM8 = curPipe->pipeInM4;
		curPipe->pipeInM4 = curPipe->pipeIn;
		curPipe->pipeIn = PIPE_IN_PORT; // Read Data from Pipe
		PIPE_CTRL_PORT = clockOFF; // -CLK _/
		PIPE_OUT_PORT = curPipe->pipeOut; // Write Data to Pipe
		curPipe--; // proceed to next pipe
	} while (--i > 0);
	PIPE_CTRL_PORT = clockON; // -CLK \_ active for last Data to Pipe
	PIPE_CTRL_PORT = clockOFF & (0xFF ^ (1<<PIPE_LATCH_2PIPE)); // -L2P \_ to load shifted to pipe output
	_delay_us(0.5); // wait 1us
	PIPE_CTRL_PORT = clockOFF; // -CLK, -L2P, -L2C off
}

//*********************************************** I S R   T I M E R ****************************************

ISR (TIMER0_COMP_vect)
{
	// called every 1ms
	PORT_LEDOUT &= 0xFF ^ (1 << PIN_LEDOUT); // LED on (as inverted: 0=on)
	//  ********************************************** SW-TIMER ***********************************************
	if ((--timPresc) == 0) {
		// every 100ms
		timPresc = TIM_PRESC;
		timerTimers();
	}
	switch (timPresc & 0x03) {
		// execution order is 3,2,1,0; any function is calles every 4ms
		case 0: timerADC(); break; // evetnually timer has also been called (only every 100ms)
		case 1: timerPipeProcess(PIPE_SHIFTBIT_COUNT > 1); break;
		case 2: timerPipeProcess(0); break;
		case 3: timerPipeIO(); break;
	}
	PORT_LEDOUT |= (1 << PIN_LEDOUT); // LED off (as inverted: 1=off)

}