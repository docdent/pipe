/*
 * message.c
 *
 * Created: 04.11.2018 21:35:43
 *  Author: Anwender
 */ 
#include <inttypes.h>

#include "message.h"

// ****************** Regular Messages for Keys -- Type ist MESSAGE_TYP_...
uint8_t messages [MESSAGE_BUFCOUNT];
uint8_t msgInIndex;
uint8_t msgOutIndex;

// ******************* Message for Pipe Messages i.e. Key presses on organ
uint16_t pipeMessages [PIPE_MSG_BUFCOUNT]; // must be big enough for keys/switches already active on power on
uint16_t *pipeMsgIn;
uint16_t *pipeMsgOut;

volatile uint8_t msgOverflow;
volatile uint8_t msgPipeOverflow;

void message_init (void) {
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

uint8_t message_get (void){
	if (msgOutIndex == msgInIndex) {
		return MESSAGE_TYP_NIL;
	} else {
		uint8_t mess = messages[msgOutIndex];
		msgOutIndex = (msgOutIndex+1) & MESSAGE_BUFCTMASK;
		return mess;
	}
};

uint8_t message_status (void) {
	if (msgOutIndex == msgInIndex) {
		return MESSAGE_STAT_EMPTY;
	} else {
		return MESSAGE_STAT_NONEMPTY;
	}
}


void pipeMsgInit (void) {
	pipeMsgIn = & pipeMessages[0];
	pipeMsgOut = & pipeMessages[0];
	msgPipeOverflow = MESSAGE_PIPE_OVERFLOW_NO;
};

void pipeMsgPush (uint16_t pipeNr) {
	*pipeMsgIn++ = pipeNr;
	if (pipeMsgIn > & pipeMessages [PIPE_MSG_BUFCOUNT]) {
		pipeMsgIn = & pipeMessages [0];
	}
	if (pipeMsgIn == pipeMsgOut) {
		// overflow: reverse
		pipeMsgIn--;
		if (pipeMsgIn < & pipeMessages [0]) {
			pipeMsgIn = & pipeMessages [PIPE_MSG_BUFCOUNT-1];
		}
		msgPipeOverflow = MESSAGE_PIPE_OVERFLOW_YES; // must be reset by application
	} 
}

uint16_t pipeMsgGet (void){
	if (pipeMsgOut == pipeMsgIn) {
		return MESSAGE_PIPE_NIL; 
	} else {
		uint16_t mess = *(pipeMsgOut++);
		if (pipeMsgIn >= & pipeMessages [PIPE_MSG_BUFCOUNT]) {
			pipeMsgIn = & pipeMessages [0];
		}
		return mess;
	}
};

uint8_t pipeMsgStatus (void) {
	if (pipeMsgOut == pipeMsgIn) {
		return MESSAGE_STAT_EMPTY;
	} else {
		return MESSAGE_STAT_NONEMPTY;
	}
}