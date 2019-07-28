/*
 * message.h
 *
 * Created: 04.11.2018 21:34:37
 *  Author: Anwender
 */

#ifndef MESSAGE_H_
#define MESSAGE_H_

#include "utils.h"

//************************ MESSAGE ***********************

extern void init_message (void);
extern void message_push (uint8_t msg); // MESSAGE_TYP_
extern uint8_t message_get (void); // MESSAGE_TYP_
extern uint8_t message_status (void); //
extern uint8_t message_peek(); // preview message without getting it
extern volatile uint8_t msgOverflow; // may set by message_push, must be reset by application, return MESSAGE_TYPE_NIL if none

#define MESSAGE_TYPE_NIL 0xFF

#define MESSAGE_STAT_EMPTY 0x00 // no message
#define MESSAGE_STAT_NONEMPTY 0xFF // message

#define MESSAGE_OVFLOW_NO 0x00 // no overflow
#define MESSAGE_OVFLOW_YES 0xFF // overflow, last message was dropped

#define MESSAGE_KEY_RIGHT 1
#define MESSAGE_KEY_UP 2
#define MESSAGE_KEY_DOWN 3
#define MESSAGE_KEY_LEFT 4
#define MESSAGE_KEY_SEL 5
#define MESSAGE_KEY_ESC 6
#define MESSAGE_KEY_1 2
#define MESSAGE_KEY_2 3
#define MESSAGE_KEY_3 4
#define MESSAGE_KEY_4 1
#define MESSAGE_KEY_NONE 0xFF // not generasted by message creator, message may be changed during processing to thi s value

#define MESSAGE_KEY_MIN MESSAGE_KEY_RIGHT
#define MESSAGE_KEY_MAX MESSAGE_KEY_ESC
#define MESSAGE_KEY_COUNT MESSAGE_KEY_MAX

// upper 2 bit of message contains info
// Caution: currently 0b00xxxxxx is supported
#define MESSAGE_KEY_PRESSED 0x00
#define MESSAGE_KEY_RELEASED 0x00 // currently no difference to pressed
#define MESSAGE_KEY_LONGPRESSED 0x80
#define MESSAGE_KEY_AUTOREPEAT 0x00 // currently no difference to pressed
#define MESSAGE_KEY_REMOVE_TYPE_MASK 0x3F
#define MESSAGE_KEY_REMOVE_KEY_MASK 0xC0

#define MESSAGE_WAIT_FOR_MESSAGE(var) while(message_status() == MESSAGE_STAT_EMPTY); var = message_get();
#define MESSAGE_PENDING (message_status() != MESSAGE_STAT_EMPTY)
#define MESSAGE_NOT_PENDING (message_status() == MESSAGE_STAT_EMPTY)

//************************ PIPE MESSAGE ***********************

#define MSG_BYTE_CMD_SHIFTBIT 1
#define MSG_BYTE_MODULEBITS 0

typedef union  {
	uint16_t Message16;
	uint8_t message8[2];
} PipeMessage_t; // lowerByte: ModuleBits, upperByte: cccs ssss, c=command s=shiftbit

extern void pipeMsgInit (void);
extern void pipeMsgPush (PipeMessage_t message); // direct Pipe Nr
extern PipeMessage_t pipeMsgGet (void); //
extern uint8_t pipeMsgStatus (void); // must be called before pipeMsgGet !
extern volatile uint8_t msgPipeOverflow; // may set by message_push, must be reset by application
extern uint8_t msgPipe_Handling; // TRUE: message is handleded, FALSE: messages are ignored

#define MESSAGE_PIPE_HANDLING_ON msgPipe_Handling = TRUE;
#define MESSAGE_PIPE_HANDLING_OFF msgPipe_Handling = FALSE;

#define MESSAGE_PIPE_PENDING (pipeMsgStatus() == MESSAGE_STAT_NONEMPTY)

#define MESSAGE_PIPE_OVERFLOW_NO 0x00 // no overflow
#define MESSAGE_PIPE_OVERFLOW_YES 0xFF // overflow pipe

#define MESSAGE_PIPE_CMD_MASK_H 0xE0 //
#define MESSAGE_PIPE_SHIFTBIT_MASK_H 0x1F //
#define MESSAGE_PIPE_NIL 0xFFFF // Attention ! Fallback return only. pipeMsgStatus MUST be called before pipeMsgGet !
#define MESSAGE_PIPE_ON 0x2000 // + Module bits in LowByte + 5 Bits ShiftBitNr in HiByte
#define MESSAGE_PIPE_ON_HI 0x20
#define MESSAGE_PIPE_OFF 0x0000 // + Module bits in LowByte + 5 Bits ShiftBitNr in HiByte
#define MESSAGE_PIPE_OFF_HI 0x00
#define MESSAGE_PIPE_ERROR_ON 0xC000 // +Module bits in LowByte + 5 Bits ShiftBitNr in HiByte - input is not high though
#define MESSAGE_PIPE_ERROR_ON_HI 0xC0

// INTERN

#define MESSAGE_BUFCOUNT 32 // Size of Message Queue (must be multiple of 2)
#define MESSAGE_BUFCTMASK 0x1F // corresponding mask to MESSAGE_BUFCOUNT for mod arithmetic

#define PIPE_MSG_BUFCOUNT 256 // Size of Pipe Message Queue (must be multiple of 2)

#define MESSAGE_PIPE_STATUS_EMPTY (pipeMsgOutIndex == pipeMsgInIndex)
#define MESSAGE_PIPE_STATUS_NONEMPTY (pipeMsgOutIndex != pipeMsgInIndex)

#endif /* MESSAGE_H_ */