/*
 * message.h
 *
 * Created: 04.11.2018 21:34:37
 *  Author: Anwender
 */ 


#ifndef MESSAGE_H_
#define MESSAGE_H_

//************************ MESSAGE ***********************

extern void message_init (void);
extern void message_push (uint8_t msg); // MESSAGE_TYP_
extern uint8_t message_get (void); // MESSAGE_TYP_
extern uint8_t message_status (void); //
extern volatile uint8_t msgOverflow; // may set by message_push, must be reset by application

#define MESSAGE_TYP_NIL 0
#define MESSAGE_TYP_KEYDOWN 0x10 // + KeyNr 0...7
#define MESSAGE_TYP_KEYUP 0x18 // + KeyNr 0...7
#define MESSAGE_TYP_KEYREP 0x20 // + KeyNr 0...7
#define MESSAGE_TYP_KEYLONG 0x28 // + KeyNr 0...7
#define MESSAGE_TYP_KEYRIGHT 0x30 // + KeyNr 0...7
#define MESSAGE_TYP_KEYLEFT 0x38 // + KeyNr 0...7

#define MESSAGE_STAT_EMPTY 0x00 // no message
#define MESSAGE_STAT_NONEMPTY 0xFF // message

#define MESSAGE_OVFLOW_NO 0x00 // no overflow
#define MESSAGE_OVFLOW_YES 0xFF // overflow, last message was dropped

//************************ PIPE MESSAGE ***********************

extern void pipeMsgInit (void);
extern void pipeMsgPush (uint16_t pipeNr); // direct Pipe Nr
extern uint16_t pipeMsgGet (void); // 
extern uint8_t pipeMsgStatus (void); // must be called before pipeMsgGet !
extern volatile uint8_t msgPipeOverflow; // may set by message_push, must be reset by application

#define MESSAGE_PIPE_OVERFLOW_NO 0x00 // no overflow
#define MESSAGE_PIPE_OVERFLOW_YES 0xFF // overflow pipe

#define MESSAGE_PIPE_NIL 0xFFFF // Attention ! Fallback return only. pipeMsgStatus MUST be called before pipeMsgGet !
#define MESSAGE_PIPE_ON 0x0100 // + KeyNr in LowByte
#define MESSAGE_PIPE_OFF 0x0000 // + KeyNr in LowByte
// KeyNr = ssss smmm s=ShiftBit m=module
#define MESSAGE_PIPE_ERROR_ON 0xC000 // + KeyRawNr in LowByte+5 bits in Hibiyte - input is not high though
// KeyRawNr = module input raw (8 instead of 3 bits)

// INTERN

#define MESSAGE_BUFCOUNT 32 // Size of Message Queue (must be multiple of 2)
#define MESSAGE_BUFCTMASK 0x1F // corresponding mask to MESSAGE_BUFCOUNT for mod arithmetic 

#define PIPE_MSG_BUFCOUNT 256 // Size of Pipe Message Queue (must be multiple of 2)

#endif /* MESSAGE_H_ */