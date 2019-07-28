/*
 * message.c
 *
 * Created: 04.11.2018 21:35:43
 *  Author: Anwender
 */
#include <inttypes.h>
#include <stddef.h>
#include <avr/pgmspace.h>
#include <util/atomic.h>

#include "message.h"

// ****************** Regular Messages for Keys -- Type ist MESSAGE_TYP_...
uint8_t messages [MESSAGE_BUFCOUNT];
uint8_t msgInIndex;
uint8_t msgOutIndex;
uint8_t msgPipe_Handling;

// ******************* Message for Pipe Messages i.e. Key presses on organ
PipeMessage_t pipeMessages [PIPE_MSG_BUFCOUNT]; // must be big enough for keys/switches already active on power on
uint8_t pipeMsgInIndex;
uint8_t pipeMsgOutIndex;

volatile uint8_t msgOverflow;
volatile uint8_t msgPipeOverflow;

void init_message (void) {
	msgInIndex = 0;
	msgOutIndex = 0;
	msgOverflow = MESSAGE_OVFLOW_NO;
};

void message_push (uint8_t msg){
	messages[msgInIndex] = msg;
	uint8_t newMsgInIndex = (msgInIndex+1) & MESSAGE_BUFCTMASK;
	if (newMsgInIndex == msgOutIndex) {
		// overflow: don't change msgInIndex, so this msg ist lost
		msgOverflow = MESSAGE_OVFLOW_YES; // must be reset by application
	} else {
		msgInIndex = newMsgInIndex;
	}
};

uint8_t message_peek(){
	// returns pending message, does not get it yet
	uint8_t result;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE){
		if (msgOutIndex == msgInIndex) {
			result = MESSAGE_TYPE_NIL;
		} else {
			result  = messages[msgOutIndex];
		}
	}
	return result;
}

uint8_t message_get (void){
	uint8_t result;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE){
		if (msgOutIndex == msgInIndex) {
			result = MESSAGE_TYPE_NIL;
		} else {
			uint8_t mess = messages[msgOutIndex];
			msgOutIndex = (msgOutIndex+1) & MESSAGE_BUFCTMASK;
			result = mess;
		}
	}
	return result;
};

uint8_t message_status (void) {
	uint8_t result;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE){
		if (msgOutIndex == msgInIndex) {
			result = MESSAGE_STAT_EMPTY;
		} else {
			result = MESSAGE_STAT_NONEMPTY;
		}
	}
	return result;
}

//***************************************** P I P E   M E S S A G E ***************************************

void pipeMsgInit (void) {
	pipeMsgInIndex = 0;
	pipeMsgOutIndex = 0;
	msgPipeOverflow = MESSAGE_PIPE_OVERFLOW_NO;
	msgPipe_Handling = FALSE;
};

void pipeMsgPush (PipeMessage_t pipeNr) {
	if (msgPipe_Handling){
		pipeMessages[pipeMsgInIndex++] = pipeNr;
		if (pipeMsgInIndex >= PIPE_MSG_BUFCOUNT) {
			pipeMsgInIndex = 0;
		}
		if (pipeMsgInIndex == pipeMsgOutIndex) {
			// overflow: reverse
			pipeMsgInIndex--;
			if (pipeMsgInIndex == 0xFF) { // underflow -> 0xFF
				pipeMsgInIndex = PIPE_MSG_BUFCOUNT-1;
			}
			msgPipeOverflow = MESSAGE_PIPE_OVERFLOW_YES; // must be reset by application
		}
	}
}

PipeMessage_t pipeMsgGet (void){
	if (pipeMsgOutIndex == pipeMsgInIndex) {
		PipeMessage_t result;
		result.Message16 =  MESSAGE_PIPE_NIL;
		return (result);
	} else {
		PipeMessage_t mess = pipeMessages[pipeMsgOutIndex++];
		if (pipeMsgInIndex >= PIPE_MSG_BUFCOUNT) {
			pipeMsgInIndex = 0;
		}
		return mess;
	}
};

uint8_t pipeMsgStatus (void) {
	if (pipeMsgOutIndex == pipeMsgInIndex) {
		return MESSAGE_STAT_EMPTY;
	} else {
		return MESSAGE_STAT_NONEMPTY;
	}
}

