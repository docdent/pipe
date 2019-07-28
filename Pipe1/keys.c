/*
 * keys.c
 *
 * Created: 04.11.2018 15:20:00
 *  Author: Anwender
 */ 
#include <inttypes.h>
#include <avr/io.h>

#include "keys.h"
#include "message.h"

#include <util/delay.h>

struct Key
{
	uint16_t timer; // milliseconds since start of key down or repeat message
	uint8_t status; // KEY_STAT_...
	uint8_t val; // 0...255 for debounce
	uint8_t keytype; // KEY_TYPE_....
};

struct Key key [KEY_COUNT];

void key_check (void) 
{
	// get raw state of all keys -> store in keystatNew as KEY_STAT_PRESS / ...OPEN
	uint8_t keystatNew[KEY_COUNT];
	int8_t keynrRaw = 0; // must be increased for each key
	
	// repeat for all direct keys --->
	#ifdef KEY0_PORT
	if ((KEY0_PORT & (1 << KEY0_PIN)) == 0) {
		// key pressed if 
		#if (KEY_PRESSLEVEL0 == 0)
		keystatNew[keynrRaw++] = KEY_STAT_PRESS;
		#else
		keystatNew[keynrRaw++] = KEY_STAT_IDLE;
		#endif
	} else {
		#if (KEY_PRESSLEVEL0 == 1)
		keystatNew[keynrRaw++] = KEY_STAT_PRESS;
		#else
		keystatNew[keynrRaw++] = KEY_STAT_IDLE;
		#endif
	}
	#endif
	// <--- end repeat for all direct keys

	#ifdef KEYMPX0_OUTVAL
	// there are multiplexed keys defined
	// set ouptut DDR pins (1 = kbd output, 0 = unused)
	KEYMPX_DDROUT |= KEYMPX_OUTMASK;
	// set input DDR pins (0 = kbd input, 1 = unused)
	KEYMPX_DDRIN &= KEYMPX_INPMASK;
	
	// repeat for all mpx keys --->
	#ifdef KEYMPX0_OUTVAL
	KEYMPX_PORTOUT = (KEYMPX_PORTOUT & (KEYMPX_OUTMASK ^ 0xFF)) | (KEYMPX0_OUTVAL & KEYMPX_OUTMASK);
	_delay_us (KEY_MPX_WAITINPUT);
	if (((KEYMPX_PORTIN ^ KEYMPX_INPXORMASK) & KEYMPX_INPMASK) == KEYMPX0_INVAL) {
		keystatNew[keynrRaw++] = KEY_STAT_IDLE;	
	} else {
		keystatNew[keynrRaw++] = KEY_STAT_PRESS;
	}
	#endif
	// <--- end repeat for all mpx keys
	
	#endif
	
	// process raw state to message
	// keynrRaw must mathc number of keys
	while(--keynrRaw >= 0) // keynrRaw is now countdown index
	{
		// debouncing
		if (keystatNew[keynrRaw] == KEY_STAT_IDLE) {
			// current key state is idle
			// val decrease by 1/4 
			key[keynrRaw].val -= (key[keynrRaw].val >> 2);
		} else {
			// current key state is pressed (press/longpress/autorep)
			// val increase by 1/4 of difference to 255 
			key[keynrRaw].val += (0xFF-key[keynrRaw].val) >> 2; 			
		}
		// temp store status if key is changed, use threshold 
		uint8_t keychange; // KEY_CHANGE_L_L ... H_H
		if (key[keynrRaw].status == KEY_STAT_IDLE) {
			if (key[keynrRaw].val > KEY_UPPER_THRESH) {
				// idle -> pressed
				keychange = KEY_CHANGE_L_H;
			} else {
				// still idle
				keychange = KEY_CHANGE_L_L;
			}
		} else {
			if (key[keynrRaw].val < KEY_LOW_THRESH) {
				// pressed -> idle
				keychange = KEY_CHANGE_H_L;
			} else {
				// still pressed
				keychange = KEY_CHANGE_H_H;
			}
		}
		// keychange defined, now process
		if (key[keynrRaw].keytype <= KEY_TYPE_LONGPRESS) {
			// simple key, autorepeat or longpress
			if (keychange == KEY_CHANGE_L_H) {
				// Key pressed:
				message_push (MESSAGE_TYP_KEYDOWN+keynrRaw);
				key[keynrRaw].timer = 0;
				key[keynrRaw].status = KEY_STAT_PRESS;
			} else 	if (keychange == KEY_CHANGE_H_L) {
				// Key released: simple key, or autorepeat/longpress not triggered: send keyup 
				if (key[keynrRaw].status == KEY_STAT_PRESS) {
					message_push (MESSAGE_TYP_KEYUP+keynrRaw);
				}
				key[keynrRaw].status = KEY_STAT_IDLE;
			} else if (keychange == KEY_CHANGE_H_H) {
				// key is continiously pressed
				key[keynrRaw].timer++;
				if (key[keynrRaw].keytype == KEY_TYPE_AUTOREP) {
					// autorepeat
					if ((key[keynrRaw].status == KEY_STAT_PRESS) && (key[keynrRaw].timer >= KEY_MS_AUTOREP)) {
						// until now: key is pressed only
						// timer: start autorep 
						message_push(MESSAGE_TYP_KEYREP+keynrRaw);
						key[keynrRaw].timer = 0;
						key[keynrRaw].status = KEY_STAT_AUTOREPEAT;
					} else if ((key[keynrRaw].status == KEY_STAT_AUTOREPEAT) && (key[keynrRaw].timer >= KEY_MS_REPCYCLE)) {
						// key already in autorep
						// timer: new autorep
						message_push(MESSAGE_TYP_KEYREP+keynrRaw);
						key[keynrRaw].timer = 0;
					}
				} else {
					// longpress
					if ((key[keynrRaw].status == KEY_STAT_PRESS) && (key[keynrRaw].timer >= KEY_MS_LONGPRESS)) {
						// until now: key is pressed only
						// timer: longpress
						message_push(MESSAGE_TYP_KEYLONG+keynrRaw);
						key[keynrRaw].status = KEY_TYPE_LONGPRESS;
						// timer will continue running, but is never checked any more
					}					
				}
			} // KEY_CHANGED_L_L -> no actione
		} else if (key[keynrRaw].keytype == KEY_TYPE_ROT_CLK) {
			// rotary switch: clock pin
			if (keychange == KEY_CHANGE_L_H) {
				// rising edge
				if (key[keynrRaw+1].status == KEY_STAT_IDLE) {
					message_push(MESSAGE_TYP_KEYRIGHT);
				} else if (key[keynrRaw+1].status == KEY_STAT_IDLE) {
					message_push(MESSAGE_TYP_KEYLEFT);
				}
				key[keynrRaw].status = KEY_STAT_PRESS;
			} else if (keychange == KEY_CHANGE_H_L) {
				key[keynrRaw].status = KEY_STAT_IDLE;
			}
		} else if (key[keynrRaw].keytype == KEY_TYPE_ROT_DATA) {
			// rotary switch: Data pin
			if (keychange == KEY_CHANGE_L_H) {
				key[keynrRaw].status = KEY_STAT_PRESS;
			} else if (keychange == KEY_CHANGE_H_L) {
				key[keynrRaw].status = KEY_STAT_IDLE;
			}
		}
	} // while
}
