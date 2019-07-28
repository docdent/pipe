	.file	"test.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.pipe_getInput,"ax",@progbits
.global	pipe_getInput
	.type	pipe_getInput, @function
pipe_getInput:
.LFB12:
	.file 1 ".././test.c"
	.loc 1 22 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 24 0
	ldi r18,lo8(1)
	rjmp 2f
	1:
	lsl r18
	2:
	dec r24
	brpl 1b
.LVL1:
.LBB43:
	.loc 1 27 0
	ldi r25,0
.LBE43:
	.loc 1 26 0
	ldi r30,lo8(pipe+248)
	ldi r31,hi8(pipe+248)
.LVL2:
	.loc 1 23 0
	ldi r20,0
	ldi r21,0
	movw r22,r20
.LBB44:
	.loc 1 27 0
	rjmp .L2
.LVL3:
.L4:
	.loc 1 28 0
	lsl r20
	rol r21
	rol r22
	rol r23
.LVL4:
	.loc 1 29 0
	ldd r24,Z+7
	and r24,r18
	breq .L3
	.loc 1 30 0
	ori r20,1
.LVL5:
.L3:
	.loc 1 32 0 discriminator 2
	sbiw r30,8
.LVL6:
	.loc 1 27 0 discriminator 2
	subi r25,lo8(-(1))
.LVL7:
.L2:
	.loc 1 27 0 is_stmt 0 discriminator 1
	cpi r25,lo8(32)
	brlo .L4
.LBE44:
	.loc 1 35 0 is_stmt 1
	movw r24,r22
	movw r22,r20
	ret
	.cfi_endproc
.LFE12:
	.size	pipe_getInput, .-pipe_getInput
	.section	.text.pipe_setOutput,"ax",@progbits
.global	pipe_setOutput
	.type	pipe_setOutput, @function
pipe_setOutput:
.LFB13:
	.loc 1 37 0
	.cfi_startproc
.LVL8:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 39 0
	ldi r26,lo8(1)
	ldi r27,0
	rjmp 2f
	1:
	lsl r26
	rol r27
	2:
	dec r24
	brpl 1b
	mov r19,r26
.LVL9:
.LBB45:
	.loc 1 42 0
	ldi r24,0
.LVL10:
.LBE45:
	.loc 1 41 0
	ldi r30,lo8(pipe)
	ldi r31,hi8(pipe)
.LBB46:
	.loc 1 42 0
	rjmp .L6
.LVL11:
.L9:
	.loc 1 43 0
	sbrs r20,0
	rjmp .L7
	.loc 1 45 0
	ldd r18,Z+1
	mov r25,r26
	com r25
	and r25,r18
	std Z+1,r25
	rjmp .L8
.L7:
	.loc 1 48 0
	ldd r25,Z+1
	or r25,r19
	std Z+1,r25
.L8:
	.loc 1 50 0 discriminator 2
	lsr r23
	ror r22
	ror r21
	ror r20
.LVL12:
	.loc 1 51 0 discriminator 2
	adiw r30,8
.LVL13:
	.loc 1 42 0 discriminator 2
	subi r24,lo8(-(1))
.LVL14:
.L6:
	.loc 1 42 0 is_stmt 0 discriminator 1
	cpi r24,lo8(32)
	brlo .L9
/* epilogue start */
.LBE46:
	.loc 1 53 0 is_stmt 1
	ret
	.cfi_endproc
.LFE13:
	.size	pipe_setOutput, .-pipe_setOutput
	.section	.text.pipe_getOutput,"ax",@progbits
.global	pipe_getOutput
	.type	pipe_getOutput, @function
pipe_getOutput:
.LFB14:
	.loc 1 55 0
	.cfi_startproc
.LVL15:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 58 0
	ldi r18,lo8(1)
	rjmp 2f
	1:
	lsl r18
	2:
	dec r24
	brpl 1b
.LVL16:
.LBB47:
	.loc 1 61 0
	ldi r25,0
.LBE47:
	.loc 1 60 0
	ldi r30,lo8(pipe+248)
	ldi r31,hi8(pipe+248)
.LVL17:
	.loc 1 57 0
	ldi r20,0
	ldi r21,0
	movw r22,r20
.LBB48:
	.loc 1 61 0
	rjmp .L11
.LVL18:
.L13:
	.loc 1 62 0
	lsl r20
	rol r21
	rol r22
	rol r23
.LVL19:
	.loc 1 63 0
	ldd r24,Z+1
	and r24,r18
	brne .L12
	.loc 1 64 0
	ori r20,1
.LVL20:
.L12:
	.loc 1 66 0 discriminator 2
	sbiw r30,8
.LVL21:
	.loc 1 61 0 discriminator 2
	subi r25,lo8(-(1))
.LVL22:
.L11:
	.loc 1 61 0 is_stmt 0 discriminator 1
	cpi r25,lo8(32)
	brlo .L13
.LBE48:
	.loc 1 69 0 is_stmt 1
	movw r24,r22
	movw r22,r20
	ret
	.cfi_endproc
.LFE14:
	.size	pipe_getOutput, .-pipe_getOutput
	.section	.text.test_pipeIO,"ax",@progbits
.global	test_pipeIO
	.type	test_pipeIO, @function
test_pipeIO:
.LFB15:
	.loc 1 71 0
	.cfi_startproc
	push r17
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI1:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI2:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
.LVL23:
	.loc 1 77 0
	ldi r28,lo8(1)
	.loc 1 72 0
	ldi r29,0
	.loc 1 79 0
	rjmp .L16
.LVL24:
.L29:
	.loc 1 80 0
	cpi r28,lo8(2)
	brne .+2
	rjmp .L26
	cpi r28,lo8(3)
	brne .+2
	rjmp .L18
	cpi r28,lo8(1)
	breq .+2
	rjmp .L16
	.loc 1 82 0
	call lcd_clrscr
.LVL25:
	.loc 1 83 0
	ldi r24,lo8(77)
	call lcd_putc
.LVL26:
	.loc 1 84 0
	ldi r24,lo8(58)
	call lcd_putc
.LVL27:
	.loc 1 85 0
	sts editByte,r29
	.loc 1 86 0
	ldi r24,lo8(2)
	call lcd_edit_byte
.LVL28:
	mov r17,r24
.LVL29:
	.loc 1 87 0
	lds r24,editByte
	mov r29,r24
.LVL30:
	andi r29,lo8(7)
.LVL31:
	.loc 1 88 0
	cp r24,r29
	breq .L20
	.loc 1 89 0
	ldi r24,lo8(2)
	call lcd_goto
.LVL32:
	.loc 1 90 0
	mov r24,r29
	call lcd_hexout
.LVL33:
.L20:
	.loc 1 92 0
	cpi r17,lo8(1)
	brne .+2
	rjmp .L30
	.loc 1 92 0 is_stmt 0 discriminator 1
	cpi r17,lo8(5)
	brne .+2
	rjmp .L31
	.loc 1 94 0 is_stmt 1
	cpi r17,lo8(4)
	breq .+2
	rjmp .L16
	rjmp .L32
.LVL34:
.L28:
	.loc 1 100 0
	ldi r24,lo8(5)
	call lcd_goto
.LVL35:
	.loc 1 101 0
	mov r24,r29
	call pipe_getInput
.LVL36:
	sts editLong,r22
	sts editLong+1,r23
	sts editLong+2,r24
	sts editLong+3,r25
	.loc 1 102 0
	call lcd_longout
.LVL37:
.LBB49:
	.loc 1 103 0
	in r25,__SREG__
.LVL38:
.LBB50:
.LBB51:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE51:
.LBE50:
	.loc 1 103 0
	ldi r24,lo8(1)
	rjmp .L22
.LVL39:
.L23:
	.loc 1 103 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(5)
.LVL40:
	st Z,r24
	std Z+1,__zero_reg__
.LVL41:
	.loc 1 103 0 discriminator 3
	ldi r24,0
.LVL42:
.L22:
	.loc 1 103 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L23
.LVL43:
.LBB52:
.LBB53:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL44:
.L25:
.LBE53:
.LBE52:
.LBE49:
	.loc 1 104 0 discriminator 3
	call message_status
.LVL45:
	cpse r24,__zero_reg__
	rjmp .L24
	.loc 1 104 0 is_stmt 0 discriminator 1
	lds r24,swTimer
	tst r24
	breq .L24
	.loc 1 104 0 discriminator 2
	lds r24,swTimer
	cpi r24,lo8(-1)
	brne .L25
.L24:
	.loc 1 105 0 is_stmt 1
	call message_status
.LVL46:
	tst r24
	breq .L26
	.loc 1 108 0
	call message_get
.LVL47:
	.loc 1 109 0
	cpi r24,lo8(3)
	breq .L33
	.loc 1 109 0 is_stmt 0 discriminator 1
	cpi r24,lo8(1)
	breq .L34
	.loc 1 109 0 discriminator 2
	cpi r24,lo8(5)
	breq .L35
	.loc 1 111 0 is_stmt 1
	cpi r24,lo8(4)
	breq .L36
	.loc 1 111 0 is_stmt 0 discriminator 1
	cpi r24,lo8(2)
	brne .L26
	rjmp .L37
.L33:
	.loc 1 110 0 is_stmt 1
	ldi r28,lo8(3)
.LVL48:
	rjmp .L26
.LVL49:
.L34:
	ldi r28,lo8(3)
.LVL50:
	rjmp .L26
.LVL51:
.L35:
	ldi r28,lo8(3)
.LVL52:
	rjmp .L26
.LVL53:
.L36:
	.loc 1 112 0
	ldi r28,lo8(1)
.LVL54:
	rjmp .L26
.LVL55:
.L37:
	ldi r28,lo8(1)
.LVL56:
.L26:
	.loc 1 99 0
	cpi r28,lo8(2)
	brne .+2
	rjmp .L28
	rjmp .L16
.L18:
	.loc 1 118 0
	mov r24,r29
	call pipe_getOutput
.LVL57:
	sts editLong,r22
	sts editLong+1,r23
	sts editLong+2,r24
	sts editLong+3,r25
	.loc 1 119 0
	ldi r24,lo8(69)
	call lcd_edit_longint
.LVL58:
	mov r28,r24
.LVL59:
	.loc 1 120 0
	lds r20,editLong
	lds r21,editLong+1
	lds r22,editLong+2
	lds r23,editLong+3
	mov r24,r29
.LVL60:
	call pipe_setOutput
.LVL61:
	.loc 1 121 0
	mov r24,r29
	call pipe_getOutput
.LVL62:
	sts editLong,r22
	sts editLong+1,r23
	sts editLong+2,r24
	sts editLong+3,r25
	.loc 1 122 0
	ldi r24,lo8(69)
	call lcd_goto
.LVL63:
	.loc 1 123 0
	call lcd_longout
.LVL64:
	.loc 1 124 0
	cpi r28,lo8(4)
	brne .L38
	.loc 1 125 0
	ldi r28,lo8(1)
.LVL65:
	rjmp .L16
.LVL66:
.L30:
	.loc 1 93 0
	ldi r28,lo8(2)
.LVL67:
	rjmp .L16
.LVL68:
.L31:
	ldi r28,lo8(2)
.LVL69:
	rjmp .L16
.LVL70:
.L32:
	.loc 1 95 0
	ldi r28,0
.LVL71:
	rjmp .L16
.LVL72:
.L38:
	.loc 1 127 0
	ldi r28,lo8(2)
.LVL73:
.L16:
	.loc 1 79 0
	cpse r28,__zero_reg__
	rjmp .L29
	.loc 1 133 0
	mov r24,r28
/* epilogue start */
	pop r29
.LVL74:
	pop r28
.LVL75:
	pop r17
	ret
	.cfi_endproc
.LFE15:
	.size	test_pipeIO, .-test_pipeIO
	.section	.text.test_PipePins,"ax",@progbits
.global	test_PipePins
	.type	test_PipePins, @function
test_PipePins:
.LFB16:
	.loc 1 137 0
	.cfi_startproc
	push r28
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI4:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LVL76:
	.loc 1 138 0
	ldi r29,lo8(1)
	.loc 1 140 0
	rjmp .L40
.LVL77:
.L43:
	.loc 1 141 0
	call lcd_clrscr
.LVL78:
	.loc 1 142 0
	ldi r24,lo8(test_text1)
	ldi r25,hi8(test_text1)
	call lcd_puts_P
.LVL79:
	.loc 1 143 0
	ldi r24,lo8(64)
	call lcd_goto
.LVL80:
	.loc 1 144 0
	ldi r24,lo8(test_text2)
	ldi r25,hi8(test_text2)
	call lcd_puts_P
.LVL81:
.L41:
	.loc 1 145 0 discriminator 1
	call message_status
.LVL82:
	tst r24
	breq .L41
	.loc 1 146 0
	call message_get
.LVL83:
	mov r28,r24
.LVL84:
	.loc 1 147 0
	cpi r24,lo8(5)
	breq .+2
	rjmp .L44
	.loc 1 148 0
/* #APP */
 ;  148 ".././test.c" 1
	cli
 ;  0 "" 2
	.loc 1 149 0
/* #NOAPP */
	in r24,0x13
.LVL85:
	.loc 1 149 0
	ori r24,lo8(7)
	out 0x13,r24
	.loc 1 150 0
	call lcd_clrscr
.LVL86:
	.loc 1 151 0
	in r24,0xb
	andi r24,lo8(127)
	out 0xb,r24
	.loc 1 152 0
	in r24,0x14
	andi r24,lo8(-8)
	out 0x14,r24
	.loc 1 153 0
	out 0x8,__zero_reg__
.LVL87:
.LBB54:
.LBB55:
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 3 187 0
	ldi r18,lo8(4799999)
	ldi r24,hi8(4799999)
	ldi r25,hlo8(4799999)
1:	subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LVL88:
.LBE55:
.LBE54:
	.loc 1 155 0
	ldi r24,lo8(79)
	call lcd_putc
.LVL89:
	.loc 1 156 0
	ldi r24,lo8(69)
	call lcd_putc
.LVL90:
	.loc 1 157 0
	in r24,0xb
	ori r24,lo8(-128)
	out 0xb,r24
.LVL91:
.LBB56:
.LBB57:
	.loc 3 187 0
	ldi r18,lo8(4799999)
	ldi r24,hi8(4799999)
	ldi r25,hlo8(4799999)
1:	subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LVL92:
.LBE57:
.LBE56:
	.loc 1 159 0
	in r24,0xb
	andi r24,lo8(127)
	out 0xb,r24
	.loc 1 160 0
	ldi r24,0
	call lcd_goto
.LVL93:
	.loc 1 161 0
	ldi r24,lo8(67)
	call lcd_putc
.LVL94:
	.loc 1 162 0
	ldi r24,lo8(76)
	call lcd_putc
.LVL95:
	.loc 1 163 0
	in r24,0x14
	ori r24,lo8(1)
	out 0x14,r24
.LVL96:
.LBB58:
.LBB59:
	.loc 3 187 0
	ldi r18,lo8(4799999)
	ldi r24,hi8(4799999)
	ldi r25,hlo8(4799999)
1:	subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LVL97:
.LBE59:
.LBE58:
	.loc 1 165 0
	in r24,0x14
	andi r24,lo8(-2)
	out 0x14,r24
	.loc 1 166 0
	ldi r24,0
	call lcd_goto
.LVL98:
	.loc 1 167 0
	ldi r24,lo8(76)
	call lcd_putc
.LVL99:
	.loc 1 168 0
	ldi r24,lo8(80)
	call lcd_putc
.LVL100:
	.loc 1 169 0
	in r24,0x14
	ori r24,lo8(2)
	out 0x14,r24
.LVL101:
.LBB60:
.LBB61:
	.loc 3 187 0
	ldi r18,lo8(4799999)
	ldi r24,hi8(4799999)
	ldi r25,hlo8(4799999)
1:	subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LVL102:
.LBE61:
.LBE60:
	.loc 1 171 0
	in r24,0x14
	andi r24,lo8(-3)
	out 0x14,r24
	.loc 1 172 0
	ldi r24,0
	call lcd_goto
.LVL103:
	.loc 1 173 0
	ldi r24,lo8(76)
	call lcd_putc
.LVL104:
	.loc 1 174 0
	ldi r24,lo8(67)
	call lcd_putc
.LVL105:
	.loc 1 175 0
	in r24,0x14
	ori r24,lo8(4)
	out 0x14,r24
.LVL106:
.LBB62:
.LBB63:
	.loc 3 187 0
	ldi r18,lo8(4799999)
	ldi r24,hi8(4799999)
	ldi r25,hlo8(4799999)
1:	subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LVL107:
.LBE63:
.LBE62:
	.loc 1 177 0
	in r24,0x14
	andi r24,lo8(-5)
	out 0x14,r24
	.loc 1 178 0
	ldi r24,0
	call lcd_goto
.LVL108:
	.loc 1 179 0
	ldi r24,lo8(68)
	call lcd_putc
.LVL109:
	.loc 1 180 0
	ldi r24,lo8(80)
	call lcd_putc
.LVL110:
	.loc 1 181 0
	ldi r24,lo8(-1)
	out 0x8,r24
.LVL111:
.LBB64:
.LBB65:
	.loc 3 187 0
	ldi r18,lo8(4799999)
	ldi r24,hi8(4799999)
	ldi r25,hlo8(4799999)
1:	subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LVL112:
.LBE65:
.LBE64:
	.loc 1 183 0
	out 0x8,__zero_reg__
	.loc 1 184 0
/* #APP */
 ;  184 ".././test.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	rjmp .L40
.LVL113:
.L44:
	.loc 1 186 0
	ldi r29,0
.LVL114:
.L40:
	.loc 1 140 0
	cpse r29,__zero_reg__
	rjmp .L43
	.loc 1 190 0
	mov r24,r28
/* epilogue start */
	pop r29
.LVL115:
	pop r28
.LVL116:
	ret
	.cfi_endproc
.LFE16:
	.size	test_PipePins, .-test_PipePins
	.section	.text.test_input,"ax",@progbits
.global	test_input
	.type	test_input, @function
test_input:
.LFB17:
	.loc 1 192 0
	.cfi_startproc
	push r15
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI6:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI7:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI8:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
.LVL117:
	.loc 1 198 0
	ldi r24,lo8(120)
	ldi r25,lo8(86)
	ldi r26,lo8(52)
	ldi r27,lo8(18)
	sts editLong,r24
	sts editLong+1,r25
	sts editLong+2,r26
	sts editLong+3,r27
	.loc 1 199 0
	ldi r24,lo8(4)
	call lcd_edit_longint
.LVL118:
	mov r15,r24
.LVL119:
	.loc 1 200 0
	lds r28,editLong
	lds r29,editLong+1
	lds r17,editLong+2
	lds r16,editLong+3
.LVL120:
	.loc 1 201 0
	ldi r24,lo8(64)
	call lcd_goto
.LVL121:
	.loc 1 202 0
	mov r24,r15
	call lcd_hexout
.LVL122:
	.loc 1 203 0
	ldi r24,lo8(68)
	call lcd_goto
.LVL123:
	.loc 1 204 0
	mov r24,r16
	call lcd_hexout
.LVL124:
	.loc 1 205 0
	mov r24,r17
	call lcd_hexout
.LVL125:
	.loc 1 206 0
	mov r24,r29
	call lcd_hexout
.LVL126:
	.loc 1 207 0
	mov r24,r28
	call lcd_hexout
.LVL127:
/* epilogue start */
	.loc 1 223 0
	pop r29
.LVL128:
	pop r28
	pop r17
	pop r16
	pop r15
.LVL129:
	ret
	.cfi_endproc
.LFE17:
	.size	test_input, .-test_input
	.section	.text.test_PipePatterns,"ax",@progbits
.global	test_PipePatterns
	.type	test_PipePatterns, @function
test_PipePatterns:
.LFB18:
	.loc 1 233 0
	.cfi_startproc
	push r8
.LCFI10:
	.cfi_def_cfa_offset 4
	.cfi_offset 8, -3
	push r9
.LCFI11:
	.cfi_def_cfa_offset 5
	.cfi_offset 9, -4
	push r10
.LCFI12:
	.cfi_def_cfa_offset 6
	.cfi_offset 10, -5
	push r11
.LCFI13:
	.cfi_def_cfa_offset 7
	.cfi_offset 11, -6
	push r12
.LCFI14:
	.cfi_def_cfa_offset 8
	.cfi_offset 12, -7
	push r13
.LCFI15:
	.cfi_def_cfa_offset 9
	.cfi_offset 13, -8
	push r14
.LCFI16:
	.cfi_def_cfa_offset 10
	.cfi_offset 14, -9
	push r15
.LCFI17:
	.cfi_def_cfa_offset 11
	.cfi_offset 15, -10
	push r28
.LCFI18:
	.cfi_def_cfa_offset 12
	.cfi_offset 28, -11
	push r29
.LCFI19:
	.cfi_def_cfa_offset 13
	.cfi_offset 29, -12
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
.LVL130:
	.loc 1 241 0
	ldi r28,lo8(1)
	.loc 1 244 0
	rjmp .L48
.LVL131:
.L67:
	.loc 1 245 0
	cpi r28,lo8(1)
	breq .L49
	brsh .+2
	rjmp .L48
	cpi r28,lo8(6)
	brlo .L71
	rjmp .L48
.L49:
.LBB66:
	.loc 1 247 0
	call lcd_clrscr
.LVL132:
	.loc 1 248 0
	ldi r24,lo8(test_text3)
	ldi r25,hi8(test_text3)
	call lcd_puts_P
.LVL133:
	.loc 1 249 0
	ldi r24,lo8(64)
	call lcd_goto
.LVL134:
	.loc 1 250 0
	ldi r24,lo8(test_text4)
	ldi r25,hi8(test_text4)
	call lcd_puts_P
.LVL135:
.L51:
	.loc 1 251 0 discriminator 1
	call message_status
.LVL136:
	tst r24
	breq .L51
	.loc 1 251 0 is_stmt 0 discriminator 2
	call message_get
.LVL137:
	mov r29,r24
.LVL138:
	.loc 1 252 0 is_stmt 1 discriminator 2
	cpi r24,lo8(5)
	breq .+2
	rjmp .L68
	.loc 1 253 0
	ldi r28,lo8(2)
.LVL139:
	rjmp .L48
.LVL140:
.L71:
.LBB67:
	.loc 1 262 0
	mov r30,r28
	ldi r31,0
	sbiw r30,2
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(test_pattern))
	sbci r31,hi8(-(test_pattern))
.LVL141:
	.loc 1 262 0
/* #APP */
 ;  262 ".././test.c" 1
	lpm r12, Z+
	lpm r13, Z+
	lpm r14, Z+
	lpm r15, Z
	
 ;  0 "" 2
.LVL142:
/* #NOAPP */
	movw r8,r12
	movw r10,r14
.LVL143:
.LBE67:
	.loc 1 263 0
	call lcd_clrscr
.LVL144:
	.loc 1 264 0
	ldi r24,lo8(test_text5)
	ldi r25,hi8(test_text5)
	call lcd_puts_P
.LVL145:
	.loc 1 265 0
	sts editLong,r12
	sts editLong+1,r13
	sts editLong+2,r14
	sts editLong+3,r15
	.loc 1 266 0
	call lcd_longout
.LVL146:
	.loc 1 268 0
	rjmp .L53
.LVL147:
.L64:
	.loc 1 270 0
	ldi r24,lo8(64)
	call lcd_goto
.LVL148:
	.loc 1 271 0
	sts editLong,r8
	sts editLong+1,r9
	sts editLong+2,r10
	sts editLong+3,r11
	.loc 1 272 0
	call lcd_longout
.LVL149:
.LBB68:
	.loc 1 273 0
	ldi r29,0
	rjmp .L54
.LVL150:
.L55:
	.loc 1 274 0 discriminator 3
	movw r22,r10
	movw r20,r8
	mov r24,r29
	call pipe_setOutput
.LVL151:
	.loc 1 273 0 discriminator 3
	subi r29,lo8(-(1))
.LVL152:
.L54:
	.loc 1 273 0 is_stmt 0 discriminator 1
	cpi r29,lo8(8)
	brlo .L55
.LBE68:
.LBB69:
	.loc 1 276 0 is_stmt 1
	in r25,__SREG__
.LVL153:
.LBB70:
.LBB71:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE71:
.LBE70:
	.loc 1 276 0
	ldi r24,lo8(1)
	rjmp .L56
.LVL154:
.L57:
	.loc 1 276 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(2)
.LVL155:
	st Z,r24
	std Z+1,r24
.LVL156:
	.loc 1 276 0 discriminator 3
	ldi r24,0
.LVL157:
.L56:
	.loc 1 276 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L57
.LVL158:
.LBB72:
.LBB73:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL159:
.L59:
.LBE73:
.LBE72:
.LBE69:
	.loc 1 277 0 discriminator 2
	lds r24,swTimer
	tst r24
	breq .L58
	.loc 1 277 0 is_stmt 0 discriminator 1
	lds r24,swTimer
	cpi r24,lo8(-1)
	brne .L59
.L58:
	.loc 1 278 0 is_stmt 1
	ldi r24,0
	call pipe_getInput
.LVL160:
	sts editLong,r22
	sts editLong+1,r23
	sts editLong+2,r24
	sts editLong+3,r25
	.loc 1 279 0
	call lcd_longout
.LVL161:
.LBB74:
	.loc 1 280 0
	in r25,__SREG__
.LVL162:
.LBB75:
.LBB76:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE76:
.LBE75:
	.loc 1 280 0
	ldi r24,lo8(1)
	rjmp .L60
.LVL163:
.L61:
	.loc 1 280 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(10)
.LVL164:
	st Z,r24
	std Z+1,__zero_reg__
.LVL165:
	.loc 1 280 0 discriminator 3
	ldi r24,0
.LVL166:
.L60:
	.loc 1 280 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L61
.LVL167:
.LBB77:
.LBB78:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL168:
.L63:
.LBE78:
.LBE77:
.LBE74:
	.loc 1 281 0 discriminator 2
	lds r24,swTimer
	tst r24
	breq .L62
	.loc 1 281 0 is_stmt 0 discriminator 1
	lds r24,swTimer
	cpi r24,lo8(-1)
	brne .L63
.L62:
	.loc 1 282 0 is_stmt 1
	lsl r8
	rol r9
	rol r10
	rol r11
	adc r8,__zero_reg__
.LVL169:
.L53:
	.loc 1 268 0
	call message_status
.LVL170:
	tst r24
	brne .+2
	rjmp .L64
.L65:
	.loc 1 289 0 discriminator 1
	call message_status
.LVL171:
	tst r24
	breq .L65
	.loc 1 289 0 is_stmt 0 discriminator 2
	call message_get
.LVL172:
	mov r29,r24
.LVL173:
	.loc 1 290 0 is_stmt 1 discriminator 2
	ldi r24,0
.LVL174:
	call lcd_goto
.LVL175:
	.loc 1 291 0 discriminator 2
	ldi r24,lo8(test_text6)
	ldi r25,hi8(test_text6)
	call lcd_puts_P
.LVL176:
	.loc 1 292 0 discriminator 2
	cpi r29,lo8(4)
	brne .L66
	.loc 1 292 0 is_stmt 0 discriminator 1
	cpi r28,lo8(3)
	brlo .L66
	.loc 1 293 0 is_stmt 1
	subi r28,lo8(-(-1))
.LVL177:
	rjmp .L48
.L66:
	.loc 1 294 0
	cpi r29,lo8(1)
	brne .L69
	.loc 1 294 0 is_stmt 0 discriminator 1
	cpi r28,lo8(5)
	brsh .L70
	.loc 1 295 0 is_stmt 1
	subi r28,lo8(-(1))
.LVL178:
	rjmp .L48
.LVL179:
.L68:
	.loc 1 255 0
	ldi r28,0
.LVL180:
	rjmp .L48
.LVL181:
.L69:
	.loc 1 297 0
	ldi r28,0
.LVL182:
	rjmp .L48
.LVL183:
.L70:
	ldi r28,0
.LVL184:
.L48:
.LBE66:
	.loc 1 244 0
	cpse r28,__zero_reg__
	rjmp .L67
	.loc 1 303 0
	mov r24,r29
/* epilogue start */
	pop r29
.LVL185:
	pop r28
.LVL186:
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.cfi_endproc
.LFE18:
	.size	test_PipePatterns, .-test_PipePatterns
	.section	.text.test_USBser,"ax",@progbits
.global	test_USBser
	.type	test_USBser, @function
test_USBser:
.LFB19:
	.loc 1 307 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 308 0
	call lcd_init
.LVL187:
	.loc 1 309 0
	call lcd_clrscr
.LVL188:
	.loc 1 310 0
	ldi r24,lo8(test_texts)
	ldi r25,hi8(test_texts)
	call lcd_puts_P
.LVL189:
	.loc 1 313 0
	call init_Serial0SerUSB
.LVL190:
	.loc 1 312 0
	ldi r29,0
	.loc 1 311 0
	ldi r28,0
.LVL191:
.L76:
	.loc 1 315 0
	ldi r24,lo8(68)
	call lcd_goto
.LVL192:
	.loc 1 316 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL193:
	.loc 1 317 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL194:
	.loc 1 318 0
	ldi r24,lo8(84)
	call serial0SER_USBSend
.LVL195:
	.loc 1 319 0
	ldi r24,lo8(101)
	call serial0SER_USBSend
.LVL196:
	.loc 1 320 0
	ldi r24,lo8(115)
	call serial0SER_USBSend
.LVL197:
	.loc 1 321 0
	ldi r24,lo8(116)
	call serial0SER_USBSend
.LVL198:
	.loc 1 322 0
	rjmp .L74
.L75:
	.loc 1 323 0
	lds r25,serusbRxInIndex
	lds r24,serusbRxOutIndex
	cp r25,r24
	breq .L74
	.loc 1 324 0
	ldi r24,lo8(68)
	call lcd_goto
.LVL199:
	.loc 1 325 0
	call serial0SER_USBReadRx
.LVL200:
	call lcd_hexout
.LVL201:
	.loc 1 326 0
	ldi r24,lo8(35)
	call lcd_putc
.LVL202:
	.loc 1 327 0
	subi r29,lo8(-(1))
.LVL203:
	mov r24,r29
	call lcd_hexout
.LVL204:
.L74:
	.loc 1 322 0
	call message_status
.LVL205:
	tst r24
	breq .L75
	.loc 1 330 0
	call message_get
.LVL206:
	.loc 1 331 0
	ldi r24,lo8(64)
	call lcd_goto
.LVL207:
	.loc 1 332 0
	subi r28,lo8(-(1))
.LVL208:
	mov r24,r28
	call lcd_hexout
.LVL209:
	.loc 1 333 0
	rjmp .L76
	.cfi_endproc
.LFE19:
	.size	test_USBser, .-test_USBser
	.section	.text.testMIDIin,"ax",@progbits
.global	testMIDIin
	.type	testMIDIin, @function
testMIDIin:
.LFB20:
	.loc 1 338 0
	.cfi_startproc
	push r28
.LCFI20:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI21:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
	rcall .
	push __zero_reg__
	push __zero_reg__
.LCFI22:
	.cfi_def_cfa_offset 10
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI23:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 5 */
/* stack size = 7 */
.L__stack_usage = 7
.LVL210:
	.loc 1 344 0
	call lcd_init
.LVL211:
	.loc 1 345 0
	call lcd_clrscr
.LVL212:
	.loc 1 346 0
	ldi r24,lo8(test_textmi)
	ldi r25,hi8(test_textmi)
	call lcd_puts_P
.LVL213:
	.loc 1 343 0
	mov r15,__zero_reg__
	.loc 1 341 0
	ldi r16,0
.LVL214:
.L78:
	.loc 1 348 0 discriminator 1
	lds r25,midiRxInIndex
	lds r24,midiRxOutIndex
	cp r25,r24
	breq .L78
	.loc 1 349 0
	call serial1MIDIReadRx
.LVL215:
	mov r17,r24
.LVL216:
	.loc 1 350 0
	inc r15
.LVL217:
	.loc 1 351 0
	ldi r24,lo8(13)
	call lcd_goto
.LVL218:
	.loc 1 352 0
	mov r24,r15
	call lcd_hexout
.LVL219:
	.loc 1 353 0
	cpi r16,lo8(5)
	brsh .L86
	rjmp .L87
.LVL220:
.L81:
	.loc 1 355 0 discriminator 3
	mov r24,r18
	ldi r25,0
	movw r30,r24
	adiw r30,1
	ldi r20,lo8(1)
	ldi r21,0
	add r20,r28
	adc r21,r29
	add r30,r20
	adc r31,r21
	ld r19,Z
	movw r30,r20
	add r30,r24
	adc r31,r25
	st Z,r19
	.loc 1 354 0 discriminator 3
	subi r18,lo8(-(1))
.LVL221:
	rjmp .L79
.LVL222:
.L86:
	ldi r18,0
.LVL223:
.L79:
	.loc 1 354 0 is_stmt 0 discriminator 1
	cpi r18,lo8(4)
	brlo .L81
.LVL224:
	.loc 1 358 0 is_stmt 1
	std Y+5,r17
	ldi r16,lo8(5)
	rjmp .L82
.LVL225:
.L87:
	.loc 1 360 0
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r16
	adc r31,__zero_reg__
	st Z,r17
	subi r16,lo8(-(1))
.LVL226:
.L82:
	.loc 1 362 0
	ldi r24,lo8(64)
	call lcd_goto
.LVL227:
.LBB79:
	.loc 1 363 0
	ldi r17,0
.LVL228:
	rjmp .L83
.LVL229:
.L84:
	.loc 1 364 0 discriminator 3
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r17
	adc r31,__zero_reg__
	ld r24,Z
	call lcd_hexout
.LVL230:
	.loc 1 365 0 discriminator 3
	ldi r24,lo8(32)
	call lcd_putc
.LVL231:
	.loc 1 363 0 discriminator 3
	subi r17,lo8(-(1))
.LVL232:
.L83:
	.loc 1 363 0 is_stmt 0 discriminator 1
	cp r17,r16
	brlo .L84
	rjmp .L78
.LBE79:
	.cfi_endproc
.LFE20:
	.size	testMIDIin, .-testMIDIin
	.section	.text.testMenu,"ax",@progbits
.global	testMenu
	.type	testMenu, @function
testMenu:
.LFB21:
	.loc 1 370 0 is_stmt 1
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 372 0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	call menu_Init
.LVL233:
	.loc 1 373 0
	call menu_InitLCD
.LVL234:
.L89:
	.loc 1 375 0 discriminator 1
	call message_status
.LVL235:
	tst r24
	breq .L89
	.loc 1 375 0 is_stmt 0 discriminator 2
	call message_get
.LVL236:
	.loc 1 376 0 is_stmt 1 discriminator 2
	call menu_ProcessMessage
.LVL237:
	.loc 1 377 0 discriminator 2
	rjmp .L89
	.cfi_endproc
.LFE21:
	.size	testMenu, .-testMenu
	.section	.text.testFunc_MidiIn,"ax",@progbits
.global	testFunc_MidiIn
	.type	testFunc_MidiIn, @function
testFunc_MidiIn:
.LFB22:
	.loc 1 383 0
	.cfi_startproc
	push r15
.LCFI24:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI25:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI26:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI27:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI28:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	.loc 1 387 0
	call lcd_clrscr
.LVL238:
	.loc 1 388 0
	ldi r24,lo8(titleTestMidiIN)
	ldi r25,hi8(titleTestMidiIN)
	call lcd_puts_P
.LVL239:
.L100:
.LBB80:
	.loc 1 390 0
	lds r28,midiRxInIndex
	ldi r29,0
	subi r28,lo8(-(midiRxBuffer))
	sbci r29,hi8(-(midiRxBuffer))
.LVL240:
	.loc 1 391 0
	lds r16,midiRxOutIndex
	ldi r17,0
	subi r16,lo8(-(midiRxBuffer))
	sbci r17,hi8(-(midiRxBuffer))
.LVL241:
	.loc 1 393 0
	ldi r24,lo8(64)
	call lcd_goto
.LVL242:
	.loc 1 394 0
	ldi r24,lo8(58)
	call lcd_putc
.LVL243:
	.loc 1 392 0
	ldi r24,0
	.loc 1 395 0
	rjmp .L92
.LVL244:
.L95:
	.loc 1 396 0
	ld r24,Y+
.LVL245:
	call lcd_hexout
.LVL246:
	.loc 1 397 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL247:
	.loc 1 398 0
	ldi r24,hi8(midiRxBuffer+64)
	cpi r28,lo8(midiRxBuffer+64)
	cpc r29,r24
	brlo .L93
	.loc 1 399 0
	ldi r28,lo8(midiRxBuffer)
	ldi r29,hi8(midiRxBuffer)
.LVL248:
.L93:
	mov r24,r15
.LVL249:
.L92:
	.loc 1 395 0
	cp r28,r16
	cpc r29,r17
	breq .L94
	.loc 1 395 0 is_stmt 0 discriminator 1
	clr r15
	inc r15
	add r15,r24
.LVL250:
	cpi r24,lo8(5)
	brlo .L95
.LVL251:
.L94:
.LBB81:
	.loc 1 402 0 is_stmt 1
	in r25,__SREG__
.LVL252:
.LBB82:
.LBB83:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE83:
.LBE82:
	.loc 1 402 0
	ldi r24,lo8(1)
	rjmp .L96
.LVL253:
.L97:
	.loc 1 402 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(5)
.LVL254:
	std Z+2,r24
	std Z+3,__zero_reg__
.LVL255:
	.loc 1 402 0 discriminator 3
	ldi r24,0
.LVL256:
.L96:
	.loc 1 402 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L97
.LVL257:
.LBB84:
.LBB85:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL258:
.LBE85:
.LBE84:
.LBE81:
	.loc 1 403 0
	ldi r24,lo8(64)
.LVL259:
	call lcd_goto
.LVL260:
	.loc 1 404 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL261:
.LBB86:
	.loc 1 405 0
	in r25,__SREG__
.LVL262:
.LBB87:
.LBB88:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE88:
.LBE87:
	.loc 1 405 0
	ldi r24,lo8(1)
	rjmp .L98
.LVL263:
.L99:
	.loc 1 405 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(5)
.LVL264:
	std Z+2,r24
	std Z+3,__zero_reg__
.LVL265:
	.loc 1 405 0 discriminator 3
	ldi r24,0
.LVL266:
.L98:
	.loc 1 405 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L99
.LVL267:
.LBB89:
.LBB90:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL268:
.LBE90:
.LBE89:
.LBE86:
.LBE80:
	.loc 1 406 0
	call message_status
.LVL269:
	tst r24
	brne .+2
	rjmp .L100
/* epilogue start */
	.loc 1 407 0
	pop r29
	pop r28
.LVL270:
	pop r17
	pop r16
.LVL271:
	pop r15
	ret
	.cfi_endproc
.LFE22:
	.size	testFunc_MidiIn, .-testFunc_MidiIn
.global	titleTestMidiIN
	.section	.progmem.data.titleTestMidiIN,"a",@progbits
	.type	titleTestMidiIN, @object
	.size	titleTestMidiIN, 17
titleTestMidiIN:
	.string	"MIDI Inp. Buffer"
.global	test_textmi
	.section	.progmem.data.test_textmi,"a",@progbits
	.type	test_textmi, @object
	.size	test_textmi, 13
test_textmi:
	.string	"MIDI In Test"
.global	test_texts
	.section	.progmem.data.test_texts,"a",@progbits
	.type	test_texts, @object
	.size	test_texts, 16
test_texts:
	.string	"Serial USB Test"
.global	test_pattern
	.section	.progmem.data.test_pattern,"a",@progbits
	.type	test_pattern, @object
	.size	test_pattern, 16
test_pattern:
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-127
	.byte	0
	.byte	0
	.byte	0
.global	test_text6
	.section	.progmem.data.test_text6,"a",@progbits
	.type	test_text6, @object
	.size	test_text6, 17
test_text6:
	.string	"</> test, SEL:ex"
.global	test_text5
	.section	.progmem.data.test_text5,"a",@progbits
	.type	test_text5, @object
	.size	test_text5, 9
test_text5:
	.string	"Pattern:"
.global	test_text4
	.section	.progmem.data.test_text4,"a",@progbits
	.type	test_text4, @object
	.size	test_text4, 15
test_text4:
	.string	"</> other test"
.global	test_text3
	.section	.progmem.data.test_text3,"a",@progbits
	.type	test_text3, @object
	.size	test_text3, 20
test_text3:
	.string	"SEL:start Ptrn.Test"
.global	test_text2
	.section	.progmem.data.test_text2,"a",@progbits
	.type	test_text2, @object
	.size	test_text2, 15
test_text2:
	.string	"</> other test"
.global	test_text1
	.section	.progmem.data.test_text1,"a",@progbits
	.type	test_text1, @object
	.size	test_text1, 18
test_text1:
	.string	"SEL:start IO-Pins"
	.comm	lcdData,10,1
	.text
.Letext0:
	.file 4 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 5 ".././hwtimer.h"
	.file 6 ".././utils.h"
	.file 7 ".././serial.h"
	.file 8 ".././menu.h"
	.file 9 ".././lcd_u.h"
	.file 10 ".././message.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1371
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF108
	.byte	0xc
	.long	.LASF109
	.long	.LASF110
	.long	.Ldebug_ranges0+0x48
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x4
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
	.byte	0x4
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
	.uleb128 0x3
	.long	.LASF6
	.byte	0x4
	.byte	0x82
	.long	0x6d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.byte	0x36
	.long	0xae
	.uleb128 0x6
	.long	.LASF11
	.byte	0x5
	.byte	0x37
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF12
	.byte	0x5
	.byte	0x38
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF13
	.byte	0x5
	.byte	0x39
	.long	0x89
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.byte	0x8b
	.long	0x132
	.uleb128 0x6
	.long	.LASF14
	.byte	0x5
	.byte	0x8c
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF15
	.byte	0x5
	.byte	0x8d
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF16
	.byte	0x5
	.byte	0x8e
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.long	.LASF17
	.byte	0x5
	.byte	0x8f
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.long	.LASF18
	.byte	0x5
	.byte	0x90
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.long	.LASF19
	.byte	0x5
	.byte	0x91
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.long	.LASF20
	.byte	0x5
	.byte	0x92
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.long	.LASF21
	.byte	0x5
	.byte	0x93
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF22
	.byte	0x5
	.byte	0x94
	.long	0xb9
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.long	0x15c
	.uleb128 0x8
	.long	.LASF23
	.byte	0x6
	.byte	0x11
	.long	0x62
	.uleb128 0x8
	.long	.LASF24
	.byte	0x6
	.byte	0x12
	.long	0x15c
	.byte	0
	.uleb128 0x9
	.long	0x30
	.long	0x16c
	.uleb128 0xa
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF25
	.byte	0x6
	.byte	0x13
	.long	0x13d
	.uleb128 0xb
	.byte	0x2
	.long	0x30
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF26
	.uleb128 0xc
	.long	0x17d
	.uleb128 0xc
	.long	0x30
	.uleb128 0xd
	.long	.LASF111
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0xe
	.long	.LASF27
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x1b4
	.uleb128 0xf
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0x1b4
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x189
	.uleb128 0xe
	.long	.LASF28
	.byte	0x3
	.byte	0xa6
	.byte	0x1
	.byte	0x3
	.long	0x1f3
	.uleb128 0x10
	.long	.LASF29
	.byte	0x3
	.byte	0xa6
	.long	0x1f3
	.uleb128 0x11
	.long	.LASF30
	.byte	0x3
	.byte	0xa8
	.long	0x1f3
	.uleb128 0x11
	.long	.LASF31
	.byte	0x3
	.byte	0xac
	.long	0x62
	.uleb128 0x12
	.byte	0x1
	.long	.LASF112
	.byte	0x3
	.byte	0xad
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF32
	.uleb128 0x13
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.long	0x62
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x264
	.uleb128 0x14
	.long	.LASF36
	.byte	0x1
	.byte	0x16
	.long	0x30
	.long	.LLST0
	.uleb128 0x15
	.long	.LASF34
	.byte	0x1
	.byte	0x17
	.long	0x62
	.long	.LLST1
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0x18
	.long	0x30
	.uleb128 0x15
	.long	.LASF35
	.byte	0x1
	.byte	0x19
	.long	0x264
	.long	.LLST2
	.uleb128 0x16
	.long	.Ldebug_ranges0+0
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x1b
	.long	0x30
	.long	.LLST3
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x132
	.uleb128 0x18
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x2d2
	.uleb128 0x14
	.long	.LASF36
	.byte	0x1
	.byte	0x25
	.long	0x30
	.long	.LLST4
	.uleb128 0x14
	.long	.LASF37
	.byte	0x1
	.byte	0x25
	.long	0x62
	.long	.LLST5
	.uleb128 0x19
	.long	.LASF33
	.byte	0x1
	.byte	0x27
	.long	0x30
	.byte	0x1
	.byte	0x6a
	.uleb128 0x15
	.long	.LASF35
	.byte	0x1
	.byte	0x28
	.long	0x264
	.long	.LLST6
	.uleb128 0x16
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x2a
	.long	0x30
	.long	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF39
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.long	0x62
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x33c
	.uleb128 0x14
	.long	.LASF36
	.byte	0x1
	.byte	0x37
	.long	0x30
	.long	.LLST8
	.uleb128 0x15
	.long	.LASF34
	.byte	0x1
	.byte	0x39
	.long	0x62
	.long	.LLST9
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0x3a
	.long	0x30
	.uleb128 0x15
	.long	.LASF35
	.byte	0x1
	.byte	0x3b
	.long	0x264
	.long	.LLST10
	.uleb128 0x16
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x3d
	.long	0x30
	.long	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.byte	0x47
	.long	0x30
	.long	.LFB15
	.long	.LFE15
	.long	.LLST12
	.byte	0x1
	.long	0x4fe
	.uleb128 0x15
	.long	.LASF36
	.byte	0x1
	.byte	0x48
	.long	0x30
	.long	.LLST13
	.uleb128 0x15
	.long	.LASF42
	.byte	0x1
	.byte	0x4d
	.long	0x30
	.long	.LLST14
	.uleb128 0x15
	.long	.LASF43
	.byte	0x1
	.byte	0x4e
	.long	0x30
	.long	.LLST15
	.uleb128 0x1b
	.long	.LBB49
	.long	.LBE49
	.long	0x3da
	.uleb128 0x15
	.long	.LASF44
	.byte	0x1
	.byte	0x67
	.long	0x30
	.long	.LLST16
	.uleb128 0x15
	.long	.LASF45
	.byte	0x1
	.byte	0x67
	.long	0x30
	.long	.LLST17
	.uleb128 0x1c
	.long	0x18e
	.long	.LBB50
	.long	.LBE50
	.byte	0x1
	.byte	0x67
	.uleb128 0x1d
	.long	0x19b
	.long	.LBB52
	.long	.LBE52
	.byte	0x1
	.byte	0x67
	.uleb128 0x1e
	.long	0x1a8
	.long	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LVL25
	.long	0x128a
	.uleb128 0x20
	.long	.LVL26
	.long	0x1297
	.long	0x3f7
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x4d
	.byte	0
	.uleb128 0x20
	.long	.LVL27
	.long	0x1297
	.long	0x40b
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x3a
	.byte	0
	.uleb128 0x20
	.long	.LVL28
	.long	0x12a4
	.long	0x41e
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x20
	.long	.LVL32
	.long	0x12b1
	.long	0x431
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x20
	.long	.LVL33
	.long	0x12be
	.long	0x445
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL35
	.long	0x12b1
	.long	0x458
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x20
	.long	.LVL36
	.long	0x1fa
	.long	0x46c
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL37
	.long	0x12cb
	.uleb128 0x1f
	.long	.LVL45
	.long	0x12d8
	.uleb128 0x1f
	.long	.LVL46
	.long	0x12d8
	.uleb128 0x1f
	.long	.LVL47
	.long	0x12e5
	.uleb128 0x20
	.long	.LVL57
	.long	0x2d2
	.long	0x4a4
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL58
	.long	0x12f2
	.long	0x4b8
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x45
	.byte	0
	.uleb128 0x20
	.long	.LVL61
	.long	0x26a
	.long	0x4cc
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL62
	.long	0x2d2
	.long	0x4e0
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL63
	.long	0x12b1
	.long	0x4f4
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x45
	.byte	0
	.uleb128 0x1f
	.long	.LVL64
	.long	0x12cb
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF46
	.byte	0x1
	.byte	0x89
	.long	0x30
	.long	.LFB16
	.long	.LFE16
	.long	.LLST19
	.byte	0x1
	.long	0x810
	.uleb128 0x15
	.long	.LASF47
	.byte	0x1
	.byte	0x8a
	.long	0x30
	.long	.LLST20
	.uleb128 0x15
	.long	.LASF34
	.byte	0x1
	.byte	0x8b
	.long	0x30
	.long	.LLST21
	.uleb128 0x22
	.long	0x1ba
	.long	.LBB54
	.long	.LBE54
	.byte	0x1
	.byte	0x9a
	.long	0x572
	.uleb128 0x1e
	.long	0x1c7
	.long	.LLST22
	.uleb128 0x23
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x24
	.long	0x1d2
	.long	.LLST23
	.uleb128 0x24
	.long	0x1dd
	.long	.LLST24
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0x1ba
	.long	.LBB56
	.long	.LBE56
	.byte	0x1
	.byte	0x9e
	.long	0x5ab
	.uleb128 0x1e
	.long	0x1c7
	.long	.LLST25
	.uleb128 0x23
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x24
	.long	0x1d2
	.long	.LLST26
	.uleb128 0x24
	.long	0x1dd
	.long	.LLST27
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0x1ba
	.long	.LBB58
	.long	.LBE58
	.byte	0x1
	.byte	0xa4
	.long	0x5e4
	.uleb128 0x1e
	.long	0x1c7
	.long	.LLST28
	.uleb128 0x23
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x24
	.long	0x1d2
	.long	.LLST29
	.uleb128 0x24
	.long	0x1dd
	.long	.LLST30
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0x1ba
	.long	.LBB60
	.long	.LBE60
	.byte	0x1
	.byte	0xaa
	.long	0x61d
	.uleb128 0x1e
	.long	0x1c7
	.long	.LLST31
	.uleb128 0x23
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x24
	.long	0x1d2
	.long	.LLST32
	.uleb128 0x24
	.long	0x1dd
	.long	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0x1ba
	.long	.LBB62
	.long	.LBE62
	.byte	0x1
	.byte	0xb0
	.long	0x656
	.uleb128 0x1e
	.long	0x1c7
	.long	.LLST34
	.uleb128 0x23
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x24
	.long	0x1d2
	.long	.LLST35
	.uleb128 0x24
	.long	0x1dd
	.long	.LLST36
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0x1ba
	.long	.LBB64
	.long	.LBE64
	.byte	0x1
	.byte	0xb6
	.long	0x68f
	.uleb128 0x1e
	.long	0x1c7
	.long	.LLST37
	.uleb128 0x23
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x24
	.long	0x1d2
	.long	.LLST38
	.uleb128 0x24
	.long	0x1dd
	.long	.LLST39
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LVL78
	.long	0x128a
	.uleb128 0x20
	.long	.LVL79
	.long	0x12ff
	.long	0x6b4
	.uleb128 0x21
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	test_text1
	.byte	0
	.uleb128 0x20
	.long	.LVL80
	.long	0x12b1
	.long	0x6c8
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x20
	.long	.LVL81
	.long	0x12ff
	.long	0x6e4
	.uleb128 0x21
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	test_text2
	.byte	0
	.uleb128 0x1f
	.long	.LVL82
	.long	0x12d8
	.uleb128 0x1f
	.long	.LVL83
	.long	0x12e5
	.uleb128 0x1f
	.long	.LVL86
	.long	0x128a
	.uleb128 0x20
	.long	.LVL89
	.long	0x1297
	.long	0x713
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x4f
	.byte	0
	.uleb128 0x20
	.long	.LVL90
	.long	0x1297
	.long	0x727
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x45
	.byte	0
	.uleb128 0x20
	.long	.LVL93
	.long	0x12b1
	.long	0x73a
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.long	.LVL94
	.long	0x1297
	.long	0x74e
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x43
	.byte	0
	.uleb128 0x20
	.long	.LVL95
	.long	0x1297
	.long	0x762
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x4c
	.byte	0
	.uleb128 0x20
	.long	.LVL98
	.long	0x12b1
	.long	0x775
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.long	.LVL99
	.long	0x1297
	.long	0x789
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x4c
	.byte	0
	.uleb128 0x20
	.long	.LVL100
	.long	0x1297
	.long	0x79d
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x20
	.long	.LVL103
	.long	0x12b1
	.long	0x7b0
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.long	.LVL104
	.long	0x1297
	.long	0x7c4
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x4c
	.byte	0
	.uleb128 0x20
	.long	.LVL105
	.long	0x1297
	.long	0x7d8
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x43
	.byte	0
	.uleb128 0x20
	.long	.LVL108
	.long	0x12b1
	.long	0x7eb
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.long	.LVL109
	.long	0x1297
	.long	0x7ff
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.uleb128 0x25
	.long	.LVL110
	.long	0x1297
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF66
	.byte	0x1
	.byte	0xc0
	.long	.LFB17
	.long	.LFE17
	.long	.LLST40
	.byte	0x1
	.long	0x8fc
	.uleb128 0x15
	.long	.LASF48
	.byte	0x1
	.byte	0xc1
	.long	0x30
	.long	.LLST41
	.uleb128 0x15
	.long	.LASF49
	.byte	0x1
	.byte	0xc2
	.long	0x62
	.long	.LLST42
	.uleb128 0x27
	.long	.LASF42
	.byte	0x1
	.byte	0xc3
	.long	0x30
	.byte	0
	.uleb128 0x28
	.long	.LASF50
	.byte	0x1
	.byte	0xc4
	.long	0x30
	.sleb128 -85
	.uleb128 0x20
	.long	.LVL118
	.long	0x12f2
	.long	0x873
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x20
	.long	.LVL121
	.long	0x12b1
	.long	0x887
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x20
	.long	.LVL122
	.long	0x12be
	.long	0x89b
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL123
	.long	0x12b1
	.long	0x8af
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.uleb128 0x20
	.long	.LVL124
	.long	0x12be
	.long	0x8c3
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL125
	.long	0x12be
	.long	0x8d7
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL126
	.long	0x12be
	.long	0x8eb
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.long	.LVL127
	.long	0x12be
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.byte	0xe9
	.long	0x30
	.long	.LFB18
	.long	.LFE18
	.long	.LLST43
	.byte	0x1
	.long	0xb92
	.uleb128 0x15
	.long	.LASF52
	.byte	0x1
	.byte	0xf1
	.long	0x30
	.long	.LLST44
	.uleb128 0x15
	.long	.LASF53
	.byte	0x1
	.byte	0xf2
	.long	0x30
	.long	.LLST45
	.uleb128 0x15
	.long	.LASF54
	.byte	0x1
	.byte	0xf3
	.long	0x62
	.long	.LLST46
	.uleb128 0x23
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x29
	.long	.LASF55
	.byte	0x1
	.word	0x10b
	.long	0x30
	.long	.LLST47
	.uleb128 0x1b
	.long	.LBB67
	.long	.LBE67
	.long	0x98d
	.uleb128 0x29
	.long	.LASF56
	.byte	0x1
	.word	0x106
	.long	0x49
	.long	.LLST48
	.uleb128 0x29
	.long	.LASF57
	.byte	0x1
	.word	0x106
	.long	0x62
	.long	.LLST49
	.byte	0
	.uleb128 0x1b
	.long	.LBB68
	.long	.LBE68
	.long	0x9cc
	.uleb128 0x29
	.long	.LASF36
	.byte	0x1
	.word	0x111
	.long	0x30
	.long	.LLST50
	.uleb128 0x25
	.long	.LVL151
	.long	0x26a
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x21
	.byte	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LBB69
	.long	.LBE69
	.long	0xa24
	.uleb128 0x29
	.long	.LASF44
	.byte	0x1
	.word	0x114
	.long	0x30
	.long	.LLST51
	.uleb128 0x29
	.long	.LASF45
	.byte	0x1
	.word	0x114
	.long	0x30
	.long	.LLST52
	.uleb128 0x2a
	.long	0x18e
	.long	.LBB70
	.long	.LBE70
	.byte	0x1
	.word	0x114
	.uleb128 0x2b
	.long	0x19b
	.long	.LBB72
	.long	.LBE72
	.byte	0x1
	.word	0x114
	.uleb128 0x1e
	.long	0x1a8
	.long	.LLST53
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LBB74
	.long	.LBE74
	.long	0xa7c
	.uleb128 0x29
	.long	.LASF44
	.byte	0x1
	.word	0x118
	.long	0x30
	.long	.LLST54
	.uleb128 0x29
	.long	.LASF45
	.byte	0x1
	.word	0x118
	.long	0x30
	.long	.LLST55
	.uleb128 0x2a
	.long	0x18e
	.long	.LBB75
	.long	.LBE75
	.byte	0x1
	.word	0x118
	.uleb128 0x2b
	.long	0x19b
	.long	.LBB77
	.long	.LBE77
	.byte	0x1
	.word	0x118
	.uleb128 0x1e
	.long	0x1a8
	.long	.LLST56
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LVL132
	.long	0x128a
	.uleb128 0x20
	.long	.LVL133
	.long	0x12ff
	.long	0xaa1
	.uleb128 0x21
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	test_text3
	.byte	0
	.uleb128 0x20
	.long	.LVL134
	.long	0x12b1
	.long	0xab5
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x20
	.long	.LVL135
	.long	0x12ff
	.long	0xad1
	.uleb128 0x21
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	test_text4
	.byte	0
	.uleb128 0x1f
	.long	.LVL136
	.long	0x12d8
	.uleb128 0x1f
	.long	.LVL137
	.long	0x12e5
	.uleb128 0x1f
	.long	.LVL144
	.long	0x128a
	.uleb128 0x20
	.long	.LVL145
	.long	0x12ff
	.long	0xb08
	.uleb128 0x21
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	test_text5
	.byte	0
	.uleb128 0x1f
	.long	.LVL146
	.long	0x12cb
	.uleb128 0x20
	.long	.LVL148
	.long	0x12b1
	.long	0xb25
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x1f
	.long	.LVL149
	.long	0x12cb
	.uleb128 0x20
	.long	.LVL160
	.long	0x1fa
	.long	0xb41
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.long	.LVL161
	.long	0x12cb
	.uleb128 0x1f
	.long	.LVL170
	.long	0x12d8
	.uleb128 0x1f
	.long	.LVL171
	.long	0x12d8
	.uleb128 0x1f
	.long	.LVL172
	.long	0x12e5
	.uleb128 0x20
	.long	.LVL175
	.long	0x12b1
	.long	0xb78
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.long	.LVL176
	.long	0x12ff
	.uleb128 0x21
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	test_text6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.word	0x133
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xd15
	.uleb128 0x29
	.long	.LASF11
	.byte	0x1
	.word	0x137
	.long	0x30
	.long	.LLST57
	.uleb128 0x29
	.long	.LASF59
	.byte	0x1
	.word	0x138
	.long	0x30
	.long	.LLST58
	.uleb128 0x1f
	.long	.LVL187
	.long	0x130c
	.uleb128 0x1f
	.long	.LVL188
	.long	0x128a
	.uleb128 0x20
	.long	.LVL189
	.long	0x12ff
	.long	0xbfb
	.uleb128 0x21
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	test_texts
	.byte	0
	.uleb128 0x1f
	.long	.LVL190
	.long	0x1319
	.uleb128 0x20
	.long	.LVL192
	.long	0x12b1
	.long	0xc18
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.uleb128 0x20
	.long	.LVL193
	.long	0x1297
	.long	0xc2c
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x20
	.long	.LVL194
	.long	0x1297
	.long	0xc40
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x20
	.long	.LVL195
	.long	0x1326
	.long	0xc54
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x54
	.byte	0
	.uleb128 0x20
	.long	.LVL196
	.long	0x1326
	.long	0xc68
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x65
	.byte	0
	.uleb128 0x20
	.long	.LVL197
	.long	0x1326
	.long	0xc7c
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x73
	.byte	0
	.uleb128 0x20
	.long	.LVL198
	.long	0x1326
	.long	0xc90
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x74
	.byte	0
	.uleb128 0x20
	.long	.LVL199
	.long	0x12b1
	.long	0xca4
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.uleb128 0x1f
	.long	.LVL200
	.long	0x1333
	.uleb128 0x1f
	.long	.LVL201
	.long	0x12be
	.uleb128 0x20
	.long	.LVL202
	.long	0x1297
	.long	0xcca
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x23
	.byte	0
	.uleb128 0x20
	.long	.LVL204
	.long	0x12be
	.long	0xcde
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL205
	.long	0x12d8
	.uleb128 0x1f
	.long	.LVL206
	.long	0x12e5
	.uleb128 0x20
	.long	.LVL207
	.long	0x12b1
	.long	0xd04
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x25
	.long	.LVL209
	.long	0x12be
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.word	0x152
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST59
	.byte	0x1
	.long	0xe28
	.uleb128 0x2e
	.long	.LASF61
	.byte	0x1
	.word	0x154
	.long	0xe28
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x29
	.long	.LASF62
	.byte	0x1
	.word	0x155
	.long	0x30
	.long	.LLST60
	.uleb128 0x29
	.long	.LASF63
	.byte	0x1
	.word	0x156
	.long	0x30
	.long	.LLST61
	.uleb128 0x29
	.long	.LASF64
	.byte	0x1
	.word	0x157
	.long	0x30
	.long	.LLST62
	.uleb128 0x1b
	.long	.LBB79
	.long	.LBE79
	.long	0xdb9
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.word	0x16b
	.long	0x30
	.long	.LLST63
	.uleb128 0x20
	.long	.LVL230
	.long	0x12be
	.long	0xda8
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0xc
	.byte	0x81
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0
	.uleb128 0x25
	.long	.LVL231
	.long	0x1297
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LVL211
	.long	0x130c
	.uleb128 0x1f
	.long	.LVL212
	.long	0x128a
	.uleb128 0x20
	.long	.LVL213
	.long	0x12ff
	.long	0xde7
	.uleb128 0x21
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	test_textmi
	.byte	0
	.uleb128 0x1f
	.long	.LVL215
	.long	0x1340
	.uleb128 0x20
	.long	.LVL218
	.long	0x12b1
	.long	0xe03
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x20
	.long	.LVL219
	.long	0x12be
	.long	0xe17
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.long	.LVL227
	.long	0x12b1
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x30
	.long	0xe38
	.uleb128 0xa
	.long	0x82
	.byte	0x4
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF65
	.byte	0x1
	.word	0x172
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xeaa
	.uleb128 0x29
	.long	.LASF53
	.byte	0x1
	.word	0x173
	.long	0x30
	.long	.LLST64
	.uleb128 0x20
	.long	.LVL233
	.long	0x134d
	.long	0xe85
	.uleb128 0x21
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.long	.LVL234
	.long	0x135a
	.uleb128 0x1f
	.long	.LVL235
	.long	0x12d8
	.uleb128 0x1f
	.long	.LVL236
	.long	0x12e5
	.uleb128 0x1f
	.long	.LVL237
	.long	0x1367
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.long	.LASF67
	.byte	0x1
	.word	0x17f
	.long	.LFB22
	.long	.LFE22
	.long	.LLST65
	.byte	0x1
	.long	0x104a
	.uleb128 0x1b
	.long	.LBB80
	.long	.LBE80
	.long	0x101b
	.uleb128 0x29
	.long	.LASF68
	.byte	0x1
	.word	0x186
	.long	0x177
	.long	.LLST66
	.uleb128 0x29
	.long	.LASF69
	.byte	0x1
	.word	0x187
	.long	0x177
	.long	.LLST67
	.uleb128 0x29
	.long	.LASF55
	.byte	0x1
	.word	0x188
	.long	0x30
	.long	.LLST68
	.uleb128 0x1b
	.long	.LBB81
	.long	.LBE81
	.long	0xf59
	.uleb128 0x29
	.long	.LASF44
	.byte	0x1
	.word	0x192
	.long	0x30
	.long	.LLST69
	.uleb128 0x29
	.long	.LASF45
	.byte	0x1
	.word	0x192
	.long	0x30
	.long	.LLST70
	.uleb128 0x2a
	.long	0x18e
	.long	.LBB82
	.long	.LBE82
	.byte	0x1
	.word	0x192
	.uleb128 0x2b
	.long	0x19b
	.long	.LBB84
	.long	.LBE84
	.byte	0x1
	.word	0x192
	.uleb128 0x1e
	.long	0x1a8
	.long	.LLST71
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LBB86
	.long	.LBE86
	.long	0xfb1
	.uleb128 0x29
	.long	.LASF44
	.byte	0x1
	.word	0x195
	.long	0x30
	.long	.LLST72
	.uleb128 0x29
	.long	.LASF45
	.byte	0x1
	.word	0x195
	.long	0x30
	.long	.LLST73
	.uleb128 0x2a
	.long	0x18e
	.long	.LBB87
	.long	.LBE87
	.byte	0x1
	.word	0x195
	.uleb128 0x2b
	.long	0x19b
	.long	.LBB89
	.long	.LBE89
	.byte	0x1
	.word	0x195
	.uleb128 0x1e
	.long	0x1a8
	.long	.LLST74
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LVL242
	.long	0x12b1
	.long	0xfc5
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x20
	.long	.LVL243
	.long	0x1297
	.long	0xfd9
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x3a
	.byte	0
	.uleb128 0x1f
	.long	.LVL246
	.long	0x12be
	.uleb128 0x20
	.long	.LVL247
	.long	0x1297
	.long	0xff6
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x20
	.long	.LVL260
	.long	0x12b1
	.long	0x100a
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x25
	.long	.LVL261
	.long	0x1297
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LVL238
	.long	0x128a
	.uleb128 0x20
	.long	.LVL239
	.long	0x12ff
	.long	0x1040
	.uleb128 0x21
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	titleTestMidiIN
	.byte	0
	.uleb128 0x1f
	.long	.LVL269
	.long	0x12d8
	.byte	0
	.uleb128 0x9
	.long	0x105a
	.long	0x105a
	.uleb128 0xa
	.long	0x82
	.byte	0x5
	.byte	0
	.uleb128 0x31
	.long	0xae
	.uleb128 0x32
	.long	.LASF70
	.byte	0x5
	.byte	0x3a
	.long	0x106c
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	0x104a
	.uleb128 0x9
	.long	0x132
	.long	0x1081
	.uleb128 0xa
	.long	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x32
	.long	.LASF71
	.byte	0x5
	.byte	0x95
	.long	0x1071
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.long	.LASF72
	.byte	0x6
	.byte	0x15
	.long	0x16c
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.long	.LASF73
	.byte	0x6
	.byte	0x16
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.long	.LASF74
	.byte	0x7
	.byte	0x29
	.long	0x10b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	0x30
	.uleb128 0x32
	.long	.LASF75
	.byte	0x7
	.byte	0x2a
	.long	0x10b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.long	.LASF76
	.byte	0x7
	.byte	0x51
	.long	0x10b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.long	.LASF77
	.byte	0x7
	.byte	0x52
	.long	0x10b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x30
	.long	0x10f1
	.uleb128 0xa
	.long	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x32
	.long	.LASF78
	.byte	0x7
	.byte	0x55
	.long	0x10e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x30
	.long	0x110e
	.uleb128 0xa
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x33
	.long	.LASF79
	.byte	0x8
	.byte	0x94
	.long	0x10fe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x9
	.long	0x184
	.long	0x1130
	.uleb128 0xa
	.long	0x82
	.byte	0x11
	.byte	0
	.uleb128 0x33
	.long	.LASF80
	.byte	0x1
	.byte	0x86
	.long	0x1142
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	test_text1
	.uleb128 0xc
	.long	0x1120
	.uleb128 0x9
	.long	0x184
	.long	0x1157
	.uleb128 0xa
	.long	0x82
	.byte	0xe
	.byte	0
	.uleb128 0x33
	.long	.LASF81
	.byte	0x1
	.byte	0x87
	.long	0x1169
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	test_text2
	.uleb128 0xc
	.long	0x1147
	.uleb128 0x9
	.long	0x184
	.long	0x117e
	.uleb128 0xa
	.long	0x82
	.byte	0x13
	.byte	0
	.uleb128 0x33
	.long	.LASF82
	.byte	0x1
	.byte	0xe2
	.long	0x1190
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	test_text3
	.uleb128 0xc
	.long	0x116e
	.uleb128 0x33
	.long	.LASF83
	.byte	0x1
	.byte	0xe3
	.long	0x11a7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	test_text4
	.uleb128 0xc
	.long	0x1147
	.uleb128 0x9
	.long	0x184
	.long	0x11bc
	.uleb128 0xa
	.long	0x82
	.byte	0x8
	.byte	0
	.uleb128 0x33
	.long	.LASF84
	.byte	0x1
	.byte	0xe4
	.long	0x11ce
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	test_text5
	.uleb128 0xc
	.long	0x11ac
	.uleb128 0x9
	.long	0x184
	.long	0x11e3
	.uleb128 0xa
	.long	0x82
	.byte	0x10
	.byte	0
	.uleb128 0x33
	.long	.LASF85
	.byte	0x1
	.byte	0xe5
	.long	0x11f5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	test_text6
	.uleb128 0xc
	.long	0x11d3
	.uleb128 0x9
	.long	0x120a
	.long	0x120a
	.uleb128 0xa
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	0x62
	.uleb128 0x33
	.long	.LASF86
	.byte	0x1
	.byte	0xe6
	.long	0x1221
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	test_pattern
	.uleb128 0xc
	.long	0x11fa
	.uleb128 0x9
	.long	0x184
	.long	0x1236
	.uleb128 0xa
	.long	0x82
	.byte	0xf
	.byte	0
	.uleb128 0x34
	.long	.LASF87
	.byte	0x1
	.word	0x131
	.long	0x1249
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	test_texts
	.uleb128 0xc
	.long	0x1226
	.uleb128 0x9
	.long	0x184
	.long	0x125e
	.uleb128 0xa
	.long	0x82
	.byte	0xc
	.byte	0
	.uleb128 0x34
	.long	.LASF88
	.byte	0x1
	.word	0x150
	.long	0x1271
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	test_textmi
	.uleb128 0xc
	.long	0x124e
	.uleb128 0x34
	.long	.LASF89
	.byte	0x1
	.word	0x17d
	.long	0x1289
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	titleTestMidiIN
	.uleb128 0x35
	.uleb128 0x36
	.byte	0x1
	.byte	0x1
	.long	.LASF90
	.long	.LASF90
	.byte	0x9
	.byte	0x52
	.uleb128 0x36
	.byte	0x1
	.byte	0x1
	.long	.LASF91
	.long	.LASF91
	.byte	0x9
	.byte	0x55
	.uleb128 0x36
	.byte	0x1
	.byte	0x1
	.long	.LASF92
	.long	.LASF92
	.byte	0x6
	.byte	0x3f
	.uleb128 0x36
	.byte	0x1
	.byte	0x1
	.long	.LASF93
	.long	.LASF93
	.byte	0x9
	.byte	0x54
	.uleb128 0x36
	.byte	0x1
	.byte	0x1
	.long	.LASF94
	.long	.LASF94
	.byte	0x6
	.byte	0x2a
	.uleb128 0x36
	.byte	0x1
	.byte	0x1
	.long	.LASF95
	.long	.LASF95
	.byte	0x6
	.byte	0x2e
	.uleb128 0x36
	.byte	0x1
	.byte	0x1
	.long	.LASF96
	.long	.LASF96
	.byte	0xa
	.byte	0x10
	.uleb128 0x36
	.byte	0x1
	.byte	0x1
	.long	.LASF97
	.long	.LASF97
	.byte	0xa
	.byte	0xf
	.uleb128 0x36
	.byte	0x1
	.byte	0x1
	.long	.LASF98
	.long	.LASF98
	.byte	0x6
	.byte	0x3e
	.uleb128 0x36
	.byte	0x1
	.byte	0x1
	.long	.LASF99
	.long	.LASF99
	.byte	0x9
	.byte	0x57
	.uleb128 0x36
	.byte	0x1
	.byte	0x1
	.long	.LASF100
	.long	.LASF100
	.byte	0x9
	.byte	0x51
	.uleb128 0x36
	.byte	0x1
	.byte	0x1
	.long	.LASF101
	.long	.LASF101
	.byte	0x7
	.byte	0x22
	.uleb128 0x36
	.byte	0x1
	.byte	0x1
	.long	.LASF102
	.long	.LASF102
	.byte	0x7
	.byte	0x23
	.uleb128 0x36
	.byte	0x1
	.byte	0x1
	.long	.LASF103
	.long	.LASF103
	.byte	0x7
	.byte	0x27
	.uleb128 0x36
	.byte	0x1
	.byte	0x1
	.long	.LASF104
	.long	.LASF104
	.byte	0x7
	.byte	0x4f
	.uleb128 0x36
	.byte	0x1
	.byte	0x1
	.long	.LASF105
	.long	.LASF105
	.byte	0x8
	.byte	0xe1
	.uleb128 0x36
	.byte	0x1
	.byte	0x1
	.long	.LASF106
	.long	.LASF106
	.byte	0x8
	.byte	0xe2
	.uleb128 0x36
	.byte	0x1
	.byte	0x1
	.long	.LASF107
	.long	.LASF107
	.byte	0x8
	.byte	0xe3
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
	.uleb128 0x13
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
	.uleb128 0x6
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
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
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
	.uleb128 0x1a
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x87
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
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x87
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL3
	.word	0x1
	.byte	0x68
	.long	.LVL3
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL3
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL3
	.long	.LFE12
	.word	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LFE12
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL1
	.long	.LVL3
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL3
	.long	.LFE12
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST4:
	.long	.LVL8
	.long	.LVL10
	.word	0x1
	.byte	0x68
	.long	.LVL10
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL8
	.long	.LVL12
	.word	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL12
	.long	.LFE13
	.word	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST6:
	.long	.LVL11
	.long	.LFE13
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST7:
	.long	.LVL9
	.long	.LVL11
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL11
	.long	.LFE13
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST8:
	.long	.LVL15
	.long	.LVL18
	.word	0x1
	.byte	0x68
	.long	.LVL18
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL15
	.long	.LVL18
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL18
	.long	.LFE14
	.word	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST10:
	.long	.LVL17
	.long	.LFE14
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST11:
	.long	.LVL16
	.long	.LVL18
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL18
	.long	.LFE14
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST12:
	.long	.LFB15
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI2
	.long	.LFE15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST13:
	.long	.LVL23
	.long	.LVL24
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL24
	.long	.LVL30
	.word	0x1
	.byte	0x6d
	.long	.LVL31
	.long	.LVL74
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST14:
	.long	.LVL23
	.long	.LVL24
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL24
	.long	.LVL48
	.word	0x1
	.byte	0x6c
	.long	.LVL49
	.long	.LVL50
	.word	0x1
	.byte	0x6c
	.long	.LVL51
	.long	.LVL52
	.word	0x1
	.byte	0x6c
	.long	.LVL53
	.long	.LVL54
	.word	0x1
	.byte	0x6c
	.long	.LVL55
	.long	.LVL59
	.word	0x1
	.byte	0x6c
	.long	.LVL66
	.long	.LVL67
	.word	0x1
	.byte	0x6c
	.long	.LVL68
	.long	.LVL69
	.word	0x1
	.byte	0x6c
	.long	.LVL70
	.long	.LVL71
	.word	0x1
	.byte	0x6c
	.long	.LVL73
	.long	.LVL75
	.word	0x1
	.byte	0x6c
	.long	.LVL75
	.long	.LFE15
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST15:
	.long	.LVL29
	.long	.LVL34
	.word	0x1
	.byte	0x61
	.long	.LVL47
	.long	.LVL56
	.word	0x1
	.byte	0x68
	.long	.LVL59
	.long	.LVL60
	.word	0x1
	.byte	0x68
	.long	.LVL60
	.long	.LVL65
	.word	0x1
	.byte	0x6c
	.long	.LVL66
	.long	.LVL72
	.word	0x1
	.byte	0x61
	.long	.LVL72
	.long	.LVL73
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST16:
	.long	.LVL38
	.long	.LVL44
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST17:
	.long	.LVL39
	.long	.LVL40
	.word	0x1
	.byte	0x68
	.long	.LVL41
	.long	.LVL42
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL42
	.long	.LVL44
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST18:
	.long	.LVL43
	.long	.LVL44
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+915
	.sleb128 0
	.long	0
	.long	0
.LLST19:
	.long	.LFB16
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI4
	.long	.LFE16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST20:
	.long	.LVL76
	.long	.LVL77
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL77
	.long	.LVL115
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST21:
	.long	.LVL77
	.long	.LVL84
	.word	0x1
	.byte	0x6c
	.long	.LVL84
	.long	.LVL85
	.word	0x1
	.byte	0x68
	.long	.LVL85
	.long	.LVL113
	.word	0x1
	.byte	0x6c
	.long	.LVL113
	.long	.LVL114
	.word	0x1
	.byte	0x68
	.long	.LVL114
	.long	.LVL116
	.word	0x1
	.byte	0x6c
	.long	.LVL116
	.long	.LFE16
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST22:
	.long	.LVL87
	.long	.LVL88
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x44bb8000
	.long	0
	.long	0
.LLST23:
	.long	.LVL87
	.long	.LVL88
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4bb71b00
	.long	0
	.long	0
.LLST24:
	.long	.LVL87
	.long	.LVL88
	.word	0x6
	.byte	0xc
	.long	0x16e3600
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL91
	.long	.LVL92
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x44bb8000
	.long	0
	.long	0
.LLST26:
	.long	.LVL91
	.long	.LVL92
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4bb71b00
	.long	0
	.long	0
.LLST27:
	.long	.LVL91
	.long	.LVL92
	.word	0x6
	.byte	0xc
	.long	0x16e3600
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL96
	.long	.LVL97
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x44bb8000
	.long	0
	.long	0
.LLST29:
	.long	.LVL96
	.long	.LVL97
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4bb71b00
	.long	0
	.long	0
.LLST30:
	.long	.LVL96
	.long	.LVL97
	.word	0x6
	.byte	0xc
	.long	0x16e3600
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL101
	.long	.LVL102
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x44bb8000
	.long	0
	.long	0
.LLST32:
	.long	.LVL101
	.long	.LVL102
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4bb71b00
	.long	0
	.long	0
.LLST33:
	.long	.LVL101
	.long	.LVL102
	.word	0x6
	.byte	0xc
	.long	0x16e3600
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL106
	.long	.LVL107
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x44bb8000
	.long	0
	.long	0
.LLST35:
	.long	.LVL106
	.long	.LVL107
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4bb71b00
	.long	0
	.long	0
.LLST36:
	.long	.LVL106
	.long	.LVL107
	.word	0x6
	.byte	0xc
	.long	0x16e3600
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL111
	.long	.LVL112
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x44bb8000
	.long	0
	.long	0
.LLST38:
	.long	.LVL111
	.long	.LVL112
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4bb71b00
	.long	0
	.long	0
.LLST39:
	.long	.LVL111
	.long	.LVL112
	.word	0x6
	.byte	0xc
	.long	0x16e3600
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LFB17
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI9
	.long	.LFE17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST41:
	.long	.LVL117
	.long	.LVL119
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL119
	.long	.LVL129
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST42:
	.long	.LVL117
	.long	.LVL120
	.word	0x6
	.byte	0xc
	.long	0x12345678
	.byte	0x9f
	.long	.LVL120
	.long	.LVL128
	.word	0xc
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST43:
	.long	.LFB18
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI19
	.long	.LFE18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	0
	.long	0
.LLST44:
	.long	.LVL130
	.long	.LVL131
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL131
	.long	.LVL139
	.word	0x1
	.byte	0x6c
	.long	.LVL140
	.long	.LVL180
	.word	0x1
	.byte	0x6c
	.long	.LVL181
	.long	.LVL182
	.word	0x1
	.byte	0x6c
	.long	.LVL183
	.long	.LVL186
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST45:
	.long	.LVL131
	.long	.LVL138
	.word	0x1
	.byte	0x6d
	.long	.LVL138
	.long	.LVL140
	.word	0x1
	.byte	0x68
	.long	.LVL140
	.long	.LVL147
	.word	0x1
	.byte	0x6d
	.long	.LVL173
	.long	.LVL174
	.word	0x1
	.byte	0x68
	.long	.LVL174
	.long	.LVL179
	.word	0x1
	.byte	0x6d
	.long	.LVL179
	.long	.LVL181
	.word	0x1
	.byte	0x68
	.long	.LVL181
	.long	.LVL185
	.word	0x1
	.byte	0x6d
	.long	.LVL185
	.long	.LFE18
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST46:
	.long	.LVL143
	.long	.LVL179
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL181
	.long	.LVL184
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST47:
	.long	.LVL146
	.long	.LVL179
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	.LVL181
	.long	.LVL184
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL141
	.long	.LVL142
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST49:
	.long	.LVL143
	.long	.LVL147
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL147
	.long	.LVL179
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL181
	.long	.LVL184
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST50:
	.long	.LVL149
	.long	.LVL150
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL150
	.long	.LVL169
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST51:
	.long	.LVL153
	.long	.LVL159
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST52:
	.long	.LVL154
	.long	.LVL155
	.word	0x1
	.byte	0x68
	.long	.LVL156
	.long	.LVL157
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL157
	.long	.LVL159
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST53:
	.long	.LVL158
	.long	.LVL159
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2521
	.sleb128 0
	.long	0
	.long	0
.LLST54:
	.long	.LVL162
	.long	.LVL168
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST55:
	.long	.LVL163
	.long	.LVL164
	.word	0x1
	.byte	0x68
	.long	.LVL165
	.long	.LVL166
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL166
	.long	.LVL168
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST56:
	.long	.LVL167
	.long	.LVL168
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2609
	.sleb128 0
	.long	0
	.long	0
.LLST57:
	.long	.LVL189
	.long	.LVL191
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL191
	.long	.LFE19
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST58:
	.long	.LVL189
	.long	.LVL191
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL191
	.long	.LFE19
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST59:
	.long	.LFB20
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI23
	.long	.LFE20
	.word	0x2
	.byte	0x8c
	.sleb128 10
	.long	0
	.long	0
.LLST60:
	.long	.LVL210
	.long	.LVL214
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL214
	.long	.LVL220
	.word	0x1
	.byte	0x60
	.long	.LVL220
	.long	.LVL222
	.word	0x1
	.byte	0x62
	.long	.LVL222
	.long	.LVL223
	.word	0x1
	.byte	0x60
	.long	.LVL223
	.long	.LVL224
	.word	0x1
	.byte	0x62
	.long	.LVL224
	.long	.LVL225
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL225
	.long	.LVL226
	.word	0x3
	.byte	0x80
	.sleb128 1
	.byte	0x9f
	.long	.LVL226
	.long	.LFE20
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST61:
	.long	.LVL216
	.long	.LVL228
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST62:
	.long	.LVL210
	.long	.LVL214
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL214
	.long	.LFE20
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST63:
	.long	.LVL227
	.long	.LVL229
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL229
	.long	.LFE20
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST64:
	.long	.LVL236
	.long	.LVL237-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST65:
	.long	.LFB22
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI28
	.long	.LFE22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST66:
	.long	.LVL240
	.long	.LVL245
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL245
	.long	.LVL247
	.word	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.long	.LVL247
	.long	.LVL248
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL249
	.long	.LVL270
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST67:
	.long	.LVL241
	.long	.LVL271
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST68:
	.long	.LVL241
	.long	.LVL244
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL244
	.long	.LVL249
	.word	0x1
	.byte	0x5f
	.long	.LVL249
	.long	.LVL250
	.word	0x1
	.byte	0x68
	.long	.LVL250
	.long	.LVL251
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST69:
	.long	.LVL252
	.long	.LVL258
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST70:
	.long	.LVL253
	.long	.LVL254
	.word	0x1
	.byte	0x68
	.long	.LVL255
	.long	.LVL256
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL256
	.long	.LVL259
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST71:
	.long	.LVL257
	.long	.LVL258
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+3854
	.sleb128 0
	.long	0
	.long	0
.LLST72:
	.long	.LVL262
	.long	.LVL268
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST73:
	.long	.LVL263
	.long	.LVL264
	.word	0x1
	.byte	0x68
	.long	.LVL265
	.long	.LVL266
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL266
	.long	.LVL269-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST74:
	.long	.LVL267
	.long	.LVL268
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+3942
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x6c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB43
	.long	.LBE43
	.long	.LBB44
	.long	.LBE44
	.long	0
	.long	0
	.long	.LBB45
	.long	.LBE45
	.long	.LBB46
	.long	.LBE46
	.long	0
	.long	0
	.long	.LBB47
	.long	.LBE47
	.long	.LBB48
	.long	.LBE48
	.long	0
	.long	0
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	.LFB20
	.long	.LFE20
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"pipe_getInput"
.LASF34:
	.string	"result"
.LASF54:
	.string	"pattern"
.LASF67:
	.string	"testFunc_MidiIn"
.LASF73:
	.string	"editByte"
.LASF112:
	.string	"__builtin_avr_delay_cycles"
.LASF64:
	.string	"totalCount"
.LASF30:
	.string	"__tmp"
.LASF86:
	.string	"test_pattern"
.LASF10:
	.string	"sizetype"
.LASF60:
	.string	"testMIDIin"
.LASF89:
	.string	"titleTestMidiIN"
.LASF51:
	.string	"test_PipePatterns"
.LASF62:
	.string	"bufCount"
.LASF87:
	.string	"test_texts"
.LASF39:
	.string	"pipe_getOutput"
.LASF14:
	.string	"pipeOutM4"
.LASF95:
	.string	"lcd_longout"
.LASF49:
	.string	"testval"
.LASF53:
	.string	"message"
.LASF96:
	.string	"message_status"
.LASF78:
	.string	"midiRxBuffer"
.LASF46:
	.string	"test_PipePins"
.LASF100:
	.string	"lcd_init"
.LASF2:
	.string	"uint8_t"
.LASF41:
	.string	"test_pipeIO"
.LASF77:
	.string	"midiRxOutIndex"
.LASF19:
	.string	"pipeInM4"
.LASF79:
	.string	"lcdData"
.LASF69:
	.string	"pMidiInOut"
.LASF59:
	.string	"rcv_counter"
.LASF18:
	.string	"pipeInM8"
.LASF99:
	.string	"lcd_puts_P"
.LASF17:
	.string	"pipeInM12"
.LASF16:
	.string	"pipeInM16"
.LASF21:
	.string	"pipeInStat"
.LASF97:
	.string	"message_get"
.LASF102:
	.string	"serial0SER_USBSend"
.LASF44:
	.string	"sreg_save"
.LASF58:
	.string	"test_USBser"
.LASF8:
	.string	"long long int"
.LASF75:
	.string	"serusbRxOutIndex"
.LASF76:
	.string	"midiRxInIndex"
.LASF109:
	.string	".././test.c"
.LASF5:
	.string	"long int"
.LASF63:
	.string	"recByte"
.LASF91:
	.string	"lcd_putc"
.LASF24:
	.string	"byteval"
.LASF28:
	.string	"_delay_ms"
.LASF93:
	.string	"lcd_goto"
.LASF48:
	.string	"returnCode"
.LASF15:
	.string	"pipeOut"
.LASF56:
	.string	"__addr16"
.LASF43:
	.string	"retCode"
.LASF1:
	.string	"unsigned char"
.LASF11:
	.string	"counter"
.LASF50:
	.string	"testbyte"
.LASF45:
	.string	"__ToDo"
.LASF13:
	.string	"Timer"
.LASF37:
	.string	"outVal"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF6:
	.string	"uint32_t"
.LASF4:
	.string	"unsigned int"
.LASF3:
	.string	"uint16_t"
.LASF27:
	.string	"__iRestore"
.LASF57:
	.string	"__result"
.LASF74:
	.string	"serusbRxInIndex"
.LASF40:
	.string	"pipe_setOutput"
.LASF92:
	.string	"lcd_edit_byte"
.LASF12:
	.string	"prescaler"
.LASF42:
	.string	"status"
.LASF20:
	.string	"pipeIn"
.LASF26:
	.string	"char"
.LASF108:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF47:
	.string	"repeating"
.LASF25:
	.string	"Longint_t"
.LASF68:
	.string	"pMidiInBuf"
.LASF104:
	.string	"serial1MIDIReadRx"
.LASF94:
	.string	"lcd_hexout"
.LASF22:
	.string	"Pipe_t"
.LASF7:
	.string	"long unsigned int"
.LASF32:
	.string	"double"
.LASF36:
	.string	"moduleNr"
.LASF23:
	.string	"longval"
.LASF52:
	.string	"myStatus"
.LASF70:
	.string	"swTimer"
.LASF111:
	.string	"__iCliRetVal"
.LASF55:
	.string	"count"
.LASF66:
	.string	"test_input"
.LASF61:
	.string	"byteBuf"
.LASF65:
	.string	"testMenu"
.LASF71:
	.string	"pipe"
.LASF29:
	.string	"__ms"
.LASF88:
	.string	"test_textmi"
.LASF31:
	.string	"__ticks_dc"
.LASF106:
	.string	"menu_InitLCD"
.LASF33:
	.string	"moduleMask"
.LASF105:
	.string	"menu_Init"
.LASF35:
	.string	"myPipe"
.LASF81:
	.string	"test_text2"
.LASF82:
	.string	"test_text3"
.LASF83:
	.string	"test_text4"
.LASF84:
	.string	"test_text5"
.LASF85:
	.string	"test_text6"
.LASF90:
	.string	"lcd_clrscr"
.LASF98:
	.string	"lcd_edit_longint"
.LASF101:
	.string	"init_Serial0SerUSB"
.LASF103:
	.string	"serial0SER_USBReadRx"
.LASF80:
	.string	"test_text1"
.LASF72:
	.string	"editLong"
.LASF110:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF107:
	.string	"menu_ProcessMessage"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.1_1750) 5.4.0"
.global __do_clear_bss
