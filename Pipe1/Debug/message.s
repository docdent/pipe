	.file	"message.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.init_message,"ax",@progbits
.global	init_message
	.type	init_message, @function
init_message:
.LFB6:
	.file 1 ".././message.c"
	.loc 1 28 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 29 0
	sts msgInIndex,__zero_reg__
	.loc 1 30 0
	sts msgOutIndex,__zero_reg__
	.loc 1 31 0
	sts msgOverflow,__zero_reg__
	ret
	.cfi_endproc
.LFE6:
	.size	init_message, .-init_message
	.section	.text.message_push,"ax",@progbits
.global	message_push
	.type	message_push, @function
message_push:
.LFB7:
	.loc 1 34 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 35 0
	lds r25,msgInIndex
	mov r30,r25
	ldi r31,0
	subi r30,lo8(-(messages))
	sbci r31,hi8(-(messages))
	st Z,r24
	.loc 1 36 0
	subi r25,lo8(-(1))
	andi r25,lo8(31)
.LVL1:
	.loc 1 37 0
	lds r24,msgOutIndex
.LVL2:
	cpse r25,r24
	rjmp .L3
	.loc 1 39 0
	ldi r24,lo8(-1)
	sts msgOverflow,r24
	ret
.L3:
	.loc 1 41 0
	sts msgInIndex,r25
	ret
	.cfi_endproc
.LFE7:
	.size	message_push, .-message_push
	.section	.text.message_peek,"ax",@progbits
.global	message_peek
	.type	message_peek, @function
message_peek:
.LFB8:
	.loc 1 45 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB18:
	.loc 1 48 0
	in r19,__SREG__
.LVL3:
.LBB19:
.LBB20:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE20:
.LBE19:
	.loc 1 48 0
	ldi r25,lo8(1)
	rjmp .L7
.LVL4:
.L8:
	.loc 1 49 0
	lds r30,msgOutIndex
	lds r18,msgInIndex
	.loc 1 50 0
	ldi r24,lo8(-1)
.LVL5:
	.loc 1 48 0
	ldi r25,0
.LVL6:
	.loc 1 49 0
	cp r30,r18
	breq .L7
	.loc 1 52 0
	ldi r31,0
	subi r30,lo8(-(messages))
	sbci r31,hi8(-(messages))
	ld r24,Z
.LVL7:
.L7:
	.loc 1 48 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L8
.LVL8:
.LBB21:
.LBB22:
	.loc 2 70 0
	out __SREG__,r19
	.loc 2 71 0
.LVL9:
.LBE22:
.LBE21:
.LBE18:
	.loc 1 56 0
	ret
	.cfi_endproc
.LFE8:
	.size	message_peek, .-message_peek
	.section	.text.message_get,"ax",@progbits
.global	message_get
	.type	message_get, @function
message_get:
.LFB9:
	.loc 1 58 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB23:
	.loc 1 60 0
	in r20,__SREG__
.LVL10:
.LBB24:
.LBB25:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE25:
.LBE24:
	.loc 1 60 0
	ldi r18,lo8(1)
	rjmp .L11
.LVL11:
.L12:
	.loc 1 61 0
	lds r25,msgOutIndex
	lds r19,msgInIndex
	.loc 1 62 0
	ldi r24,lo8(-1)
.LVL12:
	.loc 1 60 0
	ldi r18,0
.LVL13:
	.loc 1 61 0
	cp r25,r19
	breq .L11
.LBB26:
	.loc 1 64 0
	mov r30,r25
	ldi r31,0
	subi r30,lo8(-(messages))
	sbci r31,hi8(-(messages))
	ld r24,Z
.LVL14:
	.loc 1 65 0
	subi r25,lo8(-(1))
	andi r25,lo8(31)
	sts msgOutIndex,r25
.LVL15:
.L11:
.LBE26:
	.loc 1 60 0 discriminator 1
	cpse r18,__zero_reg__
	rjmp .L12
.LVL16:
.LBB27:
.LBB28:
	.loc 2 70 0
	out __SREG__,r20
	.loc 2 71 0
.LVL17:
.LBE28:
.LBE27:
.LBE23:
	.loc 1 70 0
	ret
	.cfi_endproc
.LFE9:
	.size	message_get, .-message_get
	.section	.text.message_status,"ax",@progbits
.global	message_status
	.type	message_status, @function
message_status:
.LFB10:
	.loc 1 72 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB29:
	.loc 1 74 0
	in r20,__SREG__
.LVL18:
.LBB30:
.LBB31:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE31:
.LBE30:
	.loc 1 74 0
	ldi r25,lo8(1)
	rjmp .L14
.LVL19:
.L16:
	.loc 1 75 0
	lds r19,msgOutIndex
	lds r18,msgInIndex
	.loc 1 74 0
	ldi r25,0
.LVL20:
	.loc 1 76 0
	ldi r24,0
.LVL21:
	.loc 1 75 0
	cp r19,r18
	breq .L17
.L14:
	.loc 1 74 0 discriminator 1
	ldi r24,lo8(-1)
	rjmp .L15
.L17:
	.loc 1 74 0 is_stmt 0
	ldi r25,0
.L15:
.LVL22:
	.loc 1 74 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L16
.LVL23:
.LBB32:
.LBB33:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r20
	.loc 2 71 0
.LVL24:
.LBE33:
.LBE32:
.LBE29:
	.loc 1 82 0
	ret
	.cfi_endproc
.LFE10:
	.size	message_status, .-message_status
	.section	.text.pipeMsgInit,"ax",@progbits
.global	pipeMsgInit
	.type	pipeMsgInit, @function
pipeMsgInit:
.LFB11:
	.loc 1 86 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 87 0
	sts pipeMsgInIndex,__zero_reg__
	.loc 1 88 0
	sts pipeMsgOutIndex,__zero_reg__
	.loc 1 89 0
	sts msgPipeOverflow,__zero_reg__
	.loc 1 90 0
	sts msgPipe_Handling,__zero_reg__
	ret
	.cfi_endproc
.LFE11:
	.size	pipeMsgInit, .-pipeMsgInit
	.section	.text.pipeMsgPush,"ax",@progbits
.global	pipeMsgPush
	.type	pipeMsgPush, @function
pipeMsgPush:
.LFB12:
	.loc 1 93 0
	.cfi_startproc
.LVL25:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r20,r24
	.loc 1 94 0
	lds r25,msgPipe_Handling
	tst r25
	breq .L19
	.loc 1 95 0
	lds r25,pipeMsgInIndex
	ldi r18,lo8(1)
	add r18,r25
	sts pipeMsgInIndex,r18
	mov r30,r25
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(pipeMessages))
	sbci r31,hi8(-(pipeMessages))
.LVL26:
	std Z+1,r21
	st Z,r20
	.loc 1 99 0
	lds r24,pipeMsgOutIndex
	cpse r18,r24
	rjmp .L19
	.loc 1 101 0
	sts pipeMsgInIndex,r25
	.loc 1 102 0
	cpi r25,lo8(-1)
	brne .L21
	.loc 1 103 0
	ldi r24,lo8(-1)
	sts pipeMsgInIndex,r24
.L21:
	.loc 1 105 0
	ldi r24,lo8(-1)
	sts msgPipeOverflow,r24
.L19:
	ret
	.cfi_endproc
.LFE12:
	.size	pipeMsgPush, .-pipeMsgPush
	.section	.text.pipeMsgGet,"ax",@progbits
.global	pipeMsgGet
	.type	pipeMsgGet, @function
pipeMsgGet:
.LFB13:
	.loc 1 110 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 111 0
	lds r30,pipeMsgOutIndex
	lds r24,pipeMsgInIndex
	cpse r30,r24
	rjmp .L23
.LBB34:
	.loc 1 114 0
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	ret
.L23:
.LBE34:
.LBB35:
	.loc 1 116 0
	ldi r24,lo8(1)
	add r24,r30
	sts pipeMsgOutIndex,r24
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(pipeMessages))
	sbci r31,hi8(-(pipeMessages))
	ld r24,Z
	ldd r25,Z+1
.LBE35:
	.loc 1 122 0
	ret
	.cfi_endproc
.LFE13:
	.size	pipeMsgGet, .-pipeMsgGet
	.section	.text.pipeMsgStatus,"ax",@progbits
.global	pipeMsgStatus
	.type	pipeMsgStatus, @function
pipeMsgStatus:
.LFB14:
	.loc 1 124 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 125 0
	lds r25,pipeMsgOutIndex
	lds r24,pipeMsgInIndex
	cpse r25,r24
	rjmp .L27
	.loc 1 126 0
	ldi r24,0
	ret
.L27:
	.loc 1 128 0
	ldi r24,lo8(-1)
	.loc 1 130 0
	ret
	.cfi_endproc
.LFE14:
	.size	pipeMsgStatus, .-pipeMsgStatus
	.comm	msgPipeOverflow,1,1
	.comm	msgOverflow,1,1
	.comm	pipeMsgOutIndex,1,1
	.comm	pipeMsgInIndex,1,1
	.comm	pipeMessages,512,1
	.comm	msgPipe_Handling,1,1
	.comm	msgOutIndex,1,1
	.comm	msgInIndex,1,1
	.comm	messages,32,1
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 ".././message.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x437
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF36
	.byte	0xc
	.long	.LASF37
	.long	.LASF38
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x3
	.byte	0x7e
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF3
	.byte	0x3
	.byte	0x80
	.long	0x54
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.long	0x30
	.long	0x8e
	.uleb128 0x6
	.long	0x77
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.byte	0x40
	.long	0xad
	.uleb128 0x8
	.long	.LASF10
	.byte	0x4
	.byte	0x41
	.long	0x49
	.uleb128 0x8
	.long	.LASF11
	.byte	0x4
	.byte	0x42
	.long	0x7e
	.byte	0
	.uleb128 0x3
	.long	.LASF12
	.byte	0x4
	.byte	0x43
	.long	0x8e
	.uleb128 0x9
	.long	.LASF39
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0xa
	.long	.LASF40
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0xde
	.uleb128 0xb
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0xde
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0xe4
	.uleb128 0xd
	.long	0x30
	.uleb128 0xe
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x136
	.uleb128 0x10
	.string	"msg"
	.byte	0x1
	.byte	0x22
	.long	0x30
	.long	.LLST0
	.uleb128 0x11
	.long	.LASF15
	.byte	0x1
	.byte	0x24
	.long	0x30
	.byte	0x1
	.byte	0x69
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x2d
	.long	0x30
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1b3
	.uleb128 0x13
	.long	.LASF16
	.byte	0x1
	.byte	0x2f
	.long	0x30
	.long	.LLST1
	.uleb128 0x14
	.long	.LBB18
	.long	.LBE18
	.uleb128 0x13
	.long	.LASF17
	.byte	0x1
	.byte	0x30
	.long	0x30
	.long	.LLST2
	.uleb128 0x13
	.long	.LASF18
	.byte	0x1
	.byte	0x30
	.long	0x30
	.long	.LLST3
	.uleb128 0x15
	.long	0xb8
	.long	.LBB19
	.long	.LBE19
	.byte	0x1
	.byte	0x30
	.uleb128 0x16
	.long	0xc5
	.long	.LBB21
	.long	.LBE21
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.long	0xd2
	.long	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.long	0x30
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x24e
	.uleb128 0x13
	.long	.LASF16
	.byte	0x1
	.byte	0x3b
	.long	0x30
	.long	.LLST5
	.uleb128 0x14
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x13
	.long	.LASF17
	.byte	0x1
	.byte	0x3c
	.long	0x30
	.long	.LLST6
	.uleb128 0x13
	.long	.LASF18
	.byte	0x1
	.byte	0x3c
	.long	0x30
	.long	.LLST7
	.uleb128 0x15
	.long	0xb8
	.long	.LBB24
	.long	.LBE24
	.byte	0x1
	.byte	0x3c
	.uleb128 0x19
	.long	.LBB26
	.long	.LBE26
	.long	0x233
	.uleb128 0x13
	.long	.LASF19
	.byte	0x1
	.byte	0x40
	.long	0x30
	.long	.LLST8
	.byte	0
	.uleb128 0x16
	.long	0xc5
	.long	.LBB27
	.long	.LBE27
	.byte	0x1
	.byte	0x3c
	.uleb128 0x17
	.long	0xd2
	.long	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.long	0x30
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x2cc
	.uleb128 0x13
	.long	.LASF16
	.byte	0x1
	.byte	0x49
	.long	0x30
	.long	.LLST10
	.uleb128 0x14
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x13
	.long	.LASF17
	.byte	0x1
	.byte	0x4a
	.long	0x30
	.long	.LLST11
	.uleb128 0x13
	.long	.LASF18
	.byte	0x1
	.byte	0x4a
	.long	0x30
	.long	.LLST12
	.uleb128 0x15
	.long	0xb8
	.long	.LBB30
	.long	.LBE30
	.byte	0x1
	.byte	0x4a
	.uleb128 0x16
	.long	0xc5
	.long	.LBB32
	.long	.LBE32
	.byte	0x1
	.byte	0x4a
	.uleb128 0x17
	.long	0xd2
	.long	.LLST13
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF23
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x30c
	.uleb128 0x1a
	.long	.LASF25
	.byte	0x1
	.byte	0x5d
	.long	0xad
	.long	.LLST14
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.long	0xad
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x359
	.uleb128 0x19
	.long	.LBB34
	.long	.LBE34
	.long	0x343
	.uleb128 0x1b
	.long	.LASF16
	.byte	0x1
	.byte	0x70
	.long	0xad
	.byte	0
	.uleb128 0x14
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x1b
	.long	.LASF19
	.byte	0x1
	.byte	0x74
	.long	0xad
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.long	0x30
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x1d
	.long	.LASF27
	.byte	0x1
	.byte	0x19
	.long	0x385
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	msgOverflow
	.uleb128 0x1e
	.long	0x30
	.uleb128 0x1d
	.long	.LASF28
	.byte	0x1
	.byte	0x1a
	.long	0x385
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	msgPipeOverflow
	.uleb128 0x1d
	.long	.LASF29
	.byte	0x1
	.byte	0x12
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	msgPipe_Handling
	.uleb128 0x5
	.long	0x30
	.long	0x3be
	.uleb128 0x6
	.long	0x77
	.byte	0x1f
	.byte	0
	.uleb128 0x1d
	.long	.LASF30
	.byte	0x1
	.byte	0xf
	.long	0x3ae
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	messages
	.uleb128 0x1d
	.long	.LASF31
	.byte	0x1
	.byte	0x10
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	msgInIndex
	.uleb128 0x1d
	.long	.LASF32
	.byte	0x1
	.byte	0x11
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	msgOutIndex
	.uleb128 0x5
	.long	0xad
	.long	0x404
	.uleb128 0x6
	.long	0x77
	.byte	0xff
	.byte	0
	.uleb128 0x1d
	.long	.LASF33
	.byte	0x1
	.byte	0x15
	.long	0x3f4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pipeMessages
	.uleb128 0x1d
	.long	.LASF34
	.byte	0x1
	.byte	0x16
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pipeMsgInIndex
	.uleb128 0x1d
	.long	.LASF35
	.byte	0x1
	.byte	0x17
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pipeMsgOutIndex
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL2
	.word	0x1
	.byte	0x68
	.long	.LVL2
	.long	.LFE7
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	.LVL7
	.long	.LFE8
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL9
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL6
	.word	0x1
	.byte	0x69
	.long	.LVL7
	.long	.LFE8
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST4:
	.long	.LVL8
	.long	.LVL9
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+363
	.sleb128 0
	.long	0
	.long	0
.LLST5:
	.long	.LVL11
	.long	.LVL12
	.word	0x1
	.byte	0x68
	.long	.LVL15
	.long	.LFE9
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST6:
	.long	.LVL10
	.long	.LVL17
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST7:
	.long	.LVL11
	.long	.LVL13
	.word	0x1
	.byte	0x62
	.long	.LVL15
	.long	.LFE9
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST8:
	.long	.LVL14
	.long	.LVL15
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST9:
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+489
	.sleb128 0
	.long	0
	.long	0
.LLST10:
	.long	.LVL19
	.long	.LVL21
	.word	0x1
	.byte	0x68
	.long	.LVL22
	.long	.LFE10
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST11:
	.long	.LVL18
	.long	.LVL24
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST12:
	.long	.LVL19
	.long	.LVL20
	.word	0x1
	.byte	0x69
	.long	.LVL22
	.long	.LFE10
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST13:
	.long	.LVL23
	.long	.LVL24
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+644
	.sleb128 0
	.long	0
	.long	0
.LLST14:
	.long	.LVL25
	.long	.LVL26
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL26
	.long	.LFE12
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x5c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF21:
	.string	"message_status"
.LASF19:
	.string	"mess"
.LASF11:
	.string	"message8"
.LASF33:
	.string	"pipeMessages"
.LASF35:
	.string	"pipeMsgOutIndex"
.LASF1:
	.string	"unsigned char"
.LASF27:
	.string	"msgOverflow"
.LASF20:
	.string	"message_get"
.LASF6:
	.string	"long unsigned int"
.LASF34:
	.string	"pipeMsgInIndex"
.LASF18:
	.string	"__ToDo"
.LASF10:
	.string	"Message16"
.LASF39:
	.string	"__iCliRetVal"
.LASF38:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF17:
	.string	"sreg_save"
.LASF26:
	.string	"pipeMsgGet"
.LASF32:
	.string	"msgOutIndex"
.LASF4:
	.string	"unsigned int"
.LASF40:
	.string	"__iRestore"
.LASF8:
	.string	"long long unsigned int"
.LASF2:
	.string	"uint8_t"
.LASF13:
	.string	"message_push"
.LASF16:
	.string	"result"
.LASF12:
	.string	"PipeMessage_t"
.LASF23:
	.string	"pipeMsgInit"
.LASF9:
	.string	"sizetype"
.LASF30:
	.string	"messages"
.LASF14:
	.string	"message_peek"
.LASF7:
	.string	"long long int"
.LASF24:
	.string	"pipeMsgPush"
.LASF3:
	.string	"uint16_t"
.LASF28:
	.string	"msgPipeOverflow"
.LASF37:
	.string	".././message.c"
.LASF5:
	.string	"long int"
.LASF41:
	.string	"pipeMsgStatus"
.LASF31:
	.string	"msgInIndex"
.LASF0:
	.string	"signed char"
.LASF22:
	.string	"init_message"
.LASF15:
	.string	"newMsgInIndex"
.LASF29:
	.string	"msgPipe_Handling"
.LASF25:
	.string	"pipeNr"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_clear_bss
