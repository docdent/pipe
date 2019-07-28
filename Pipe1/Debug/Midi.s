	.file	"Midi.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.init_Midi,"ax",@progbits
.global	init_Midi
	.type	init_Midi, @function
init_Midi:
.LFB17:
	.file 1 ".././Midi.c"
	.loc 1 46 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 47 0
	sts midiCoupler_2from3,__zero_reg__
	.loc 1 48 0
	sts midiCoupler_1from3,__zero_reg__
	.loc 1 49 0
	sts midiCoupler_1from2,__zero_reg__
	.loc 1 50 0
	sts midiCoupler_Pfrom3,__zero_reg__
	.loc 1 51 0
	sts midiCoupler_Pfrom2,__zero_reg__
	.loc 1 52 0
	sts midiCoupler_Pfrom1,__zero_reg__
	ret
	.cfi_endproc
.LFE17:
	.size	init_Midi, .-init_Midi
	.section	.text.midiAllReset,"ax",@progbits
.global	midiAllReset
	.type	midiAllReset, @function
midiAllReset:
.LFB45:
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(-128)
	sts pipeProcessing,r24
	jmp init_Pipe
	.cfi_endproc
.LFE45:
	.size	midiAllReset, .-midiAllReset
	.section	.text.midiAllNotesOff,"ax",@progbits
.global	midiAllNotesOff
	.type	midiAllNotesOff, @function
midiAllNotesOff:
.LFB19:
	.loc 1 77 0
	.cfi_startproc
.LVL0:
	.loc 1 77 0
	push r8
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 8, -3
	push r9
.LCFI1:
	.cfi_def_cfa_offset 5
	.cfi_offset 9, -4
	push r10
.LCFI2:
	.cfi_def_cfa_offset 6
	.cfi_offset 10, -5
	push r11
.LCFI3:
	.cfi_def_cfa_offset 7
	.cfi_offset 11, -6
	push r12
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_offset 12, -7
	push r13
.LCFI5:
	.cfi_def_cfa_offset 9
	.cfi_offset 13, -8
	push r14
.LCFI6:
	.cfi_def_cfa_offset 10
	.cfi_offset 14, -9
	push r15
.LCFI7:
	.cfi_def_cfa_offset 11
	.cfi_offset 15, -10
	push r16
.LCFI8:
	.cfi_def_cfa_offset 12
	.cfi_offset 16, -11
	push r17
.LCFI9:
	.cfi_def_cfa_offset 13
	.cfi_offset 17, -12
	push r28
.LCFI10:
	.cfi_def_cfa_offset 14
	.cfi_offset 28, -13
	push r29
.LCFI11:
	.cfi_def_cfa_offset 15
	.cfi_offset 29, -14
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
.LVL1:
	ldi r18,lo8(16)
	mul r24,r18
	movw r24,r0
	clr __zero_reg__
.LVL2:
	movw r28,r24
	subi r28,lo8(-(midiInMap))
	sbci r29,hi8(-(midiInMap))
	.loc 1 77 0
	ldi r30,lo8(4)
	mov r10,r30
.LBB53:
.LBB54:
.LBB55:
.LBB56:
.LBB57:
	.loc 1 465 0
	ldi r20,lo8(1)
	ldi r21,0
.LVL3:
.L5:
.LBE57:
.LBE56:
.LBE55:
.LBE54:
.LBE53:
	.loc 1 81 0
	ld r18,Y
	cpi r18,lo8(4)
	brlo .+2
	rjmp .L7
.LBB74:
	.loc 1 83 0
	ldd r25,Y+3
.LVL4:
.LBB72:
	.loc 1 85 0
	ldd r24,Y+2
.LVL5:
	tst r24
	brne .+2
	rjmp .L7
	ldi r19,0
	movw r26,r18
	lsl r26
	rol r27
	add r26,r18
	adc r27,r19
	lsl r26
	rol r27
	lsl r26
	rol r27
	subi r26,lo8(-(manualMap))
	sbci r27,hi8(-(manualMap))
	ld r11,X
	add r24,r25
.LVL6:
.LBB70:
.LBB68:
.LBB58:
.LBB59:
.LBB60:
	.loc 1 423 0
	movw r12,r26
	ldi r30,9
	add r12,r30
	adc r13,__zero_reg__
	movw r14,r26
	ldi r31,6
	add r14,r31
	adc r15,__zero_reg__
	movw r16,r26
	subi r16,-3
	sbci r17,-1
	.loc 1 417 0
	movw r22,r26
	subi r22,-1
	sbci r23,-1
.LVL7:
.L13:
	.loc 1 417 0 is_stmt 0 discriminator 3
	cp r25,r11
	brlo .L8
	.loc 1 417 0
	movw r30,r22
	ld r18,Z
	cp r18,r25
	brsh .L14
.L8:
.LVL8:
	adiw r26,3
	ld r19,X
	sbiw r26,3
	cp r25,r19
	brlo .L10
	adiw r26,4
	ld r18,X
	sbiw r26,4
	cp r18,r25
	brlo .+2
	rjmp .L23
.L10:
.LVL9:
	adiw r26,6
	ld r19,X
	sbiw r26,6
	cp r25,r19
	brlo .L11
	adiw r26,7
	ld r18,X
	sbiw r26,7
	cp r18,r25
	brlo .+2
	rjmp .L24
.L11:
.LVL10:
	adiw r26,9
	ld r19,X
	sbiw r26,9
	cp r25,r19
	brlo .L12
	adiw r26,10
	ld r18,X
	sbiw r26,10
	cp r18,r25
	brsh .L25
.LVL11:
.L12:
	subi r25,lo8(-(1))
.LVL12:
.LBE60:
.LBE59:
.LBE58:
.LBE68:
.LBE70:
	.loc 1 85 0 is_stmt 1
	cpse r24,r25
	rjmp .L13
.LVL13:
.L7:
	dec r10
.LVL14:
	adiw r28,4
.LBE72:
.LBE74:
	.loc 1 79 0
	cpse r10,__zero_reg__
	rjmp .L5
/* epilogue start */
	.loc 1 91 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
.LVL15:
	pop r9
	pop r8
	ret
.LVL16:
.L14:
.LBB75:
.LBB73:
.LBB71:
.LBB69:
.LBB65:
.LBB63:
.LBB61:
	.loc 1 417 0
	mov r19,r11
	.loc 1 414 0
	movw r30,r26
.LVL17:
.L9:
	.loc 1 420 0
	ldd r18,Z+2
	add r18,r25
	sub r18,r19
.LVL18:
.LBE61:
.LBE63:
.LBE65:
.LBB66:
	.loc 1 465 0
	mov r30,r18
	andi r30,lo8(31)
.LVL19:
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
.LVL20:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	swap r18
.LVL21:
	lsr r18
	andi r18,lo8(7)
	movw r8,r20
	rjmp 2f
	1:
	lsl r8
	rol r9
	2:
	dec r18
	brpl 1b
	movw r18,r8
	ldd r19,Z+1
	or r18,r19
	std Z+1,r18
	rjmp .L12
.LVL22:
.L23:
.LBE66:
.LBB67:
.LBB64:
.LBB62:
	.loc 1 423 0
	movw r30,r16
	rjmp .L9
.LVL23:
.L24:
	movw r30,r14
	rjmp .L9
.LVL24:
.L25:
	movw r30,r12
	rjmp .L9
.LBE62:
.LBE64:
.LBE67:
.LBE69:
.LBE71:
.LBE73:
.LBE75:
	.cfi_endproc
.LFE19:
	.size	midiAllNotesOff, .-midiAllNotesOff
	.section	.text.midiAllManualsOff,"ax",@progbits
.global	midiAllManualsOff
	.type	midiAllManualsOff, @function
midiAllManualsOff:
.LFB20:
	.loc 1 93 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 95 0
	ldi r24,lo8(-128)
	sts pipeProcessing,r24
	.loc 1 96 0
	jmp init_Pipe
.LVL25:
	.cfi_endproc
.LFE20:
	.size	midiAllManualsOff, .-midiAllManualsOff
	.section	.text.midi_CheckRxActiveSense,"ax",@progbits
.global	midi_CheckRxActiveSense
	.type	midi_CheckRxActiveSense, @function
midi_CheckRxActiveSense:
.LFB21:
	.loc 1 99 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 100 0
	lds r24,midiRxActivceSensing
	tst r24
	breq .L27
	.loc 1 102 0
	lds r24,swTimer+6
	cpse r24,__zero_reg__
.L27:
	ret
.L32:
.LBB76:
.LBB77:
	.loc 1 95 0
	ldi r24,lo8(-128)
	sts pipeProcessing,r24
	.loc 1 96 0
	call init_Pipe
.LVL26:
.LBE77:
.LBE76:
	.loc 1 105 0
	sts midiRxActivceSensing,__zero_reg__
	ret
	.cfi_endproc
.LFE21:
	.size	midi_CheckRxActiveSense, .-midi_CheckRxActiveSense
	.section	.text.midi_CheckTxActiveSense,"ax",@progbits
.global	midi_CheckTxActiveSense
	.type	midi_CheckTxActiveSense, @function
midi_CheckTxActiveSense:
.LFB22:
	.loc 1 110 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 111 0
	lds r24,midi_TxActivceSense
	tst r24
	breq .L33
	.loc 1 112 0
	lds r24,swTimer+16
	tst r24
	breq .L35
	.loc 1 112 0 is_stmt 0 discriminator 1
	lds r24,swTimer+16
	cpi r24,lo8(-1)
	breq .L35
.L33:
	ret
.L35:
.LBB78:
	.loc 1 114 0 is_stmt 1
	in r24,__SREG__
.LVL27:
.LBB79:
.LBB80:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
.LVL28:
/* #NOAPP */
.LBE80:
.LBE79:
	.loc 1 114 0
	ldi r25,lo8(10)
	sts swTimer+16,r25
	sts swTimer+17,__zero_reg__
.LVL29:
.LBB81:
.LBB82:
	.loc 2 70 0
	out __SREG__,r24
	.loc 2 71 0
.LVL30:
.LBE82:
.LBE81:
.LBE78:
.LBB83:
.LBB84:
	.loc 1 549 0
	ldi r24,lo8(-2)
	jmp serial1MIDISend
.LVL31:
.LBE84:
.LBE83:
	.cfi_endproc
.LFE22:
	.size	midi_CheckTxActiveSense, .-midi_CheckTxActiveSense
	.section	.text.init_Registers,"ax",@progbits
.global	init_Registers
	.type	init_Registers, @function
init_Registers:
.LFB24:
	.loc 1 202 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 206 0
	call eeprom_ReadReg
.LVL32:
	cpi r24,lo8(-1)
	breq .L47
.L43:
	.loc 1 211 0
	call eeprom_ReadProg
.LVL33:
	cpi r24,lo8(-1)
	breq .L48
	ret
.L48:
	ldi r30,lo8(programMap)
	ldi r31,hi8(programMap)
.L45:
.LVL34:
.LBB85:
.LBB86:
	.loc 1 215 0
	st Z,__zero_reg__
.LVL35:
	std Z+1,__zero_reg__
.LVL36:
	std Z+2,__zero_reg__
.LVL37:
	std Z+3,__zero_reg__
.LVL38:
	std Z+4,__zero_reg__
.LVL39:
	std Z+5,__zero_reg__
.LVL40:
	std Z+6,__zero_reg__
.LVL41:
	std Z+7,__zero_reg__
.LVL42:
	adiw r30,8
.LBE86:
	.loc 1 213 0
	ldi r24,hi8(programMap+512)
	cpi r30,lo8(programMap+512)
	cpc r31,r24
	brne .L45
.LBE85:
	.loc 1 218 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(6)
	ldi r24,lo8(1)
	jmp log_putError
.LVL43:
.L47:
	.loc 1 207 0
	sts registerCount,__zero_reg__
	.loc 1 208 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(5)
	ldi r24,lo8(1)
	call log_putError
.LVL44:
	rjmp .L43
	.cfi_endproc
.LFE24:
	.size	init_Registers, .-init_Registers
	.section	.text.read_Register,"ax",@progbits
.global	read_Register
	.type	read_Register, @function
read_Register:
.LFB25:
	.loc 1 222 0
	.cfi_startproc
.LVL45:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 225 0
	lds r25,registerCount
	cp r24,r25
	brsh .L52
.LVL46:
.LBB90:
.LBB91:
	.loc 1 227 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(registerMap))
	sbci r31,hi8(-(registerMap))
	ld r18,Z
.LVL47:
	.loc 1 230 0
	mov r19,r18
	swap r19
	lsr r19
	andi r19,lo8(7)
	ldi r24,lo8(1)
	ldi r25,0
.LVL48:
	rjmp 2f
	1:
	lsl r24
	2:
	dec r19
	brpl 1b
.LVL49:
	.loc 1 231 0
	andi r18,lo8(31)
.LVL50:
	ldi r19,0
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
.LVL51:
	movw r30,r18
.LVL52:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r20,Z+1
	and r20,r24
	breq .L57
.L51:
	.loc 1 234 0
	movw r30,r18
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r25,Z+6
	and r24,r25
.LVL53:
	breq .L50
	.loc 1 233 0
	mov r24,r22
	andi r24,lo8(1)
	ret
.LVL54:
.L57:
	.loc 1 231 0
	sbrs r22,1
	rjmp .L51
	.loc 1 233 0
	ldi r24,lo8(1)
.LVL55:
.L50:
.LBE91:
.LBE90:
	.loc 1 243 0
	ret
.LVL56:
.L52:
.LBB93:
.LBB92:
	.loc 1 239 0
	ldi r24,0
.LVL57:
	ret
.LBE92:
.LBE93:
	.cfi_endproc
.LFE25:
	.size	read_Register, .-read_Register
	.section	.text.read_allRegister,"ax",@progbits
.global	read_allRegister
	.type	read_allRegister, @function
read_allRegister:
.LFB26:
	.loc 1 245 0
	.cfi_startproc
.LVL58:
	push r17
.LCFI12:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI13:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI14:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r26,r24
.LVL59:
.LBB100:
	.loc 1 248 0
	lds r20,registerCount
	tst r20
	brne .+2
	rjmp .L58
	ldi r25,0
	ldi r24,0
.LVL60:
	ldi r18,0
.LBB101:
.LBB102:
.LBB103:
.LBB104:
	.loc 1 230 0
	ldi r22,lo8(1)
	ldi r23,0
.LVL61:
.L60:
.LBE104:
.LBE103:
.LBE102:
.LBE101:
	.loc 1 252 0
	ldi r19,0
	lsl r18
	rol r19
.LVL62:
.LBB110:
.LBB107:
	.loc 1 225 0
	cp r25,r20
	brsh .L68
.L77:
.LVL63:
.LBB106:
.LBB105:
	.loc 1 227 0
	mov r30,r25
	ldi r31,0
	subi r30,lo8(-(registerMap))
	sbci r31,hi8(-(registerMap))
	ld r30,Z
.LVL64:
	.loc 1 230 0
	mov r21,r30
	swap r21
	lsr r21
	andi r21,lo8(7)
	movw r28,r22
	rjmp 2f
	1:
	lsl r28
	2:
	dec r21
	brpl 1b
.LVL65:
	.loc 1 231 0
	andi r30,lo8(31)
.LVL66:
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
.LVL67:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r21,Z+1
	and r21,r28
	brne .L76
	ldi r21,lo8(1)
.LVL68:
.L62:
.LBE105:
.LBE106:
.LBE107:
.LBE110:
	.loc 1 252 0
	or r18,r21
.LVL69:
	.loc 1 253 0
	cpi r24,lo8(7)
	breq .L64
.LVL70:
.L78:
	.loc 1 253 0 is_stmt 0 discriminator 1
	mov r28,r25
	ldi r29,0
	mov r30,r20
	ldi r31,0
	sbiw r30,1
	cp r28,r30
	cpc r29,r31
	breq .L64
	.loc 1 248 0 is_stmt 1 discriminator 2
	subi r25,lo8(-(1))
.LVL71:
	cp r25,r20
	brsh .L58
.L66:
	mov r24,r25
	andi r24,lo8(7)
	.loc 1 249 0
	brne .L60
	.loc 1 250 0
	ldi r18,0
.LVL72:
	.loc 1 252 0
	ldi r19,0
	lsl r18
	rol r19
.LVL73:
.LBB111:
.LBB108:
	.loc 1 225 0
	cp r25,r20
	brlo .L77
.LVL74:
.L68:
	ldi r21,0
.L79:
.LVL75:
.LBE108:
.LBE111:
	.loc 1 252 0
	or r18,r21
.LVL76:
	.loc 1 253 0
	cpi r24,lo8(7)
	brne .L78
.L64:
.LVL77:
	.loc 1 254 0
	st X,r18
	lds r20,registerCount
	adiw r26,1
.LVL78:
	.loc 1 248 0
	subi r25,lo8(-(1))
.LVL79:
	cp r25,r20
	brlo .L66
.LVL80:
.L58:
/* epilogue start */
.LBE100:
	.loc 1 258 0
	pop r29
	pop r28
	pop r17
	ret
.LVL81:
.L76:
	ldd r21,Z+6
	and r28,r21
.LVL82:
	ldi r21,lo8(1)
	brne .L62
.LBB113:
.LBB112:
.LBB109:
	.loc 1 225 0
	ldi r21,0
	rjmp .L79
.LBE109:
.LBE112:
.LBE113:
	.cfi_endproc
.LFE26:
	.size	read_allRegister, .-read_allRegister
	.section	.text.register_onOff,"ax",@progbits
.global	register_onOff
	.type	register_onOff, @function
register_onOff:
.LFB27:
	.loc 1 260 0
	.cfi_startproc
.LVL83:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 262 0
	lds r25,registerCount
	cp r24,r25
	brsh .L80
.LVL84:
.LBB118:
.LBB119:
	.loc 1 264 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(registerMap))
	sbci r31,hi8(-(registerMap))
	ld r24,Z
.LVL85:
	.loc 1 265 0
	mov r30,r24
	andi r30,lo8(31)
.LVL86:
	.loc 1 266 0
	swap r24
.LVL87:
	lsr r24
	andi r24,lo8(7)
.LVL88:
	.loc 1 269 0
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
.LVL89:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldi r18,lo8(1)
	ldi r19,0
	movw r20,r18
	rjmp 2f
	1:
	lsl r20
	rol r21
	2:
	dec r24
	brpl 1b
	movw r24,r20
.LVL90:
	.loc 1 267 0
	sbrc r22,0
	rjmp .L83
	.loc 1 272 0
	ldd r25,Z+1
	or r24,r25
	std Z+1,r24
.LVL91:
.L80:
	ret
.LVL92:
.L83:
	.loc 1 269 0
	com r24
	ldd r25,Z+1
	and r24,r25
	std Z+1,r24
	ret
.LBE119:
.LBE118:
	.cfi_endproc
.LFE27:
	.size	register_onOff, .-register_onOff
	.section	.text.program_toRegister,"ax",@progbits
.global	program_toRegister
	.type	program_toRegister, @function
program_toRegister:
.LFB28:
	.loc 1 278 0
	.cfi_startproc
.LVL93:
	push r8
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_offset 8, -3
	push r9
.LCFI16:
	.cfi_def_cfa_offset 5
	.cfi_offset 9, -4
	push r10
.LCFI17:
	.cfi_def_cfa_offset 6
	.cfi_offset 10, -5
	push r11
.LCFI18:
	.cfi_def_cfa_offset 7
	.cfi_offset 11, -6
	push r12
.LCFI19:
	.cfi_def_cfa_offset 8
	.cfi_offset 12, -7
	push r13
.LCFI20:
	.cfi_def_cfa_offset 9
	.cfi_offset 13, -8
	push r14
.LCFI21:
	.cfi_def_cfa_offset 10
	.cfi_offset 14, -9
	push r15
.LCFI22:
	.cfi_def_cfa_offset 11
	.cfi_offset 15, -10
	push r16
.LCFI23:
	.cfi_def_cfa_offset 12
	.cfi_offset 16, -11
	push r17
.LCFI24:
	.cfi_def_cfa_offset 13
	.cfi_offset 17, -12
	push r28
.LCFI25:
	.cfi_def_cfa_offset 14
	.cfi_offset 28, -13
	push r29
.LCFI26:
	.cfi_def_cfa_offset 15
	.cfi_offset 29, -14
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	.loc 1 279 0
	cpi r24,lo8(64)
	brlo .+2
	rjmp .L84
.LVL94:
	lds r29,registerCount
.LBB132:
.LBB133:
.LBB134:
.LBB135:
.LBB136:
.LBB137:
.LBB138:
.LBB139:
	.loc 1 264 0
	lds r25,registerMap+1
	.loc 1 269 0
	mov r20,r25
	andi r20,lo8(31)
	ldi r21,0
	swap r25
	lsr r25
	andi r25,lo8(7)
	ldi r18,lo8(1)
	ldi r19,0
	rjmp 2f
	1:
	lsl r18
	2:
	dec r25
	brpl 1b
	mov r17,r18
	mov r28,r18
	com r28
.LBE139:
.LBE138:
.LBE137:
.LBE136:
.LBE135:
.LBE134:
	.loc 1 282 0
	mov r30,r24
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
.LBB182:
.LBB178:
.LBB168:
.LBB158:
.LBB149:
.LBB140:
	.loc 1 269 0
	ldi r18,0
	ldi r19,0
	lsl r20
	rol r21
	lsl r20
	rol r21
	lsl r20
	rol r21
	movw r22,r20
	subi r22,lo8(-(pipe+1))
	sbci r23,hi8(-(pipe+1))
	movw r10,r22
	clr r8
	inc r8
	mov r9,__zero_reg__
	rjmp .L98
.LVL95:
.L97:
	subi r18,-1
	sbci r19,-1
.LVL96:
	adiw r30,1
.LBE140:
.LBE149:
.LBE158:
.LBE168:
.LBE178:
	.loc 1 283 0
	cpi r18,8
	cpc r19,__zero_reg__
	brne .+2
	rjmp .L84
.LVL97:
.L98:
.LBB179:
	.loc 1 286 0
	ldi r16,lo8(1)
	movw r24,r18
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	or r24,r25
	brne .L86
	ldi r16,0
.L86:
.LVL98:
.LBB169:
.LBB159:
	.loc 1 262 0
	cp r16,r29
	brsh .L97
.LBE159:
.LBE169:
.LBE179:
	.loc 1 284 0
	ld r24,Z
.LVL99:
.LBB180:
.LBB170:
.LBB160:
.LBB150:
.LBB141:
	.loc 1 264 0
	mov r14,r16
	mov r15,__zero_reg__
	movw r26,r14
	subi r26,lo8(-(registerMap))
	sbci r27,hi8(-(registerMap))
	ld r16,X
.LVL100:
	.loc 1 265 0
	mov r25,r16
	andi r25,lo8(31)
.LVL101:
	.loc 1 266 0
	swap r16
.LVL102:
	lsr r16
	andi r16,lo8(7)
.LVL103:
	.loc 1 269 0
	mov r14,r25
.LVL104:
	mov r15,__zero_reg__
	lsl r14
	rol r15
	lsl r14
	rol r15
	lsl r14
	rol r15
.LVL105:
	movw r22,r14
	subi r22,lo8(-(pipe))
	sbci r23,hi8(-(pipe))
	movw r12,r8
	rjmp 2f
	1:
	lsl r12
	2:
	dec r16
	brpl 1b
	.loc 1 267 0
	sbrc r24,0
	rjmp .L88
	.loc 1 272 0
	movw r26,r22
.LVL106:
	adiw r26,1
	ld r25,X
	sbiw r26,1
	or r12,r25
	adiw r26,1
	st X,r12
.LVL107:
.L89:
.LBE141:
.LBE150:
.LBE160:
.LBE170:
	.loc 1 288 0
	lsr r24
.LVL108:
.LBB171:
.LBB161:
	.loc 1 262 0
	cpi r29,lo8(1)
	breq .L97
.LVL109:
.LBB151:
.LBB142:
	.loc 1 269 0
	movw r26,r10
	ld r25,X
	.loc 1 267 0
	sbrc r24,0
	rjmp .L90
	.loc 1 272 0
	or r25,r17
	st X,r25
.L91:
.LVL110:
.LBE142:
.LBE151:
.LBE161:
.LBE171:
	.loc 1 288 0
	lsr r24
.LVL111:
.LBB172:
.LBB162:
.LBB152:
.LBB143:
	.loc 1 267 0
	sbrc r24,0
	rjmp .L133
	.loc 1 272 0
	or r25,r17
.L122:
	.loc 1 269 0
	movw r22,r20
	subi r22,lo8(-(pipe))
	sbci r23,hi8(-(pipe))
	movw r26,r22
	adiw r26,1
	st X,r25
.LVL112:
.LBE143:
.LBE152:
.LBE162:
.LBE172:
	.loc 1 288 0
	lsr r24
.LVL113:
.LBB173:
.LBB163:
.LBB153:
.LBB144:
	.loc 1 267 0
	sbrc r24,0
	rjmp .L127
	.loc 1 272 0
	or r25,r17
.L123:
	.loc 1 269 0
	movw r22,r20
	subi r22,lo8(-(pipe))
	sbci r23,hi8(-(pipe))
	movw r26,r22
	adiw r26,1
	st X,r25
.LVL114:
.LBE144:
.LBE153:
.LBE163:
.LBE173:
	.loc 1 288 0
	lsr r24
.LVL115:
.LBB174:
.LBB164:
.LBB154:
.LBB145:
	.loc 1 267 0
	sbrc r24,0
	rjmp .L128
	.loc 1 272 0
	or r25,r17
.L124:
	.loc 1 269 0
	movw r22,r20
	subi r22,lo8(-(pipe))
	sbci r23,hi8(-(pipe))
	movw r26,r22
	adiw r26,1
	st X,r25
.LVL116:
.LBE145:
.LBE154:
.LBE164:
.LBE174:
	.loc 1 288 0
	lsr r24
.LVL117:
.LBB175:
.LBB165:
.LBB155:
.LBB146:
	.loc 1 267 0
	sbrc r24,0
	rjmp .L129
	.loc 1 272 0
	or r25,r17
.L125:
	.loc 1 269 0
	movw r22,r20
	subi r22,lo8(-(pipe))
	sbci r23,hi8(-(pipe))
	movw r26,r22
	adiw r26,1
	st X,r25
.LVL118:
.LBE146:
.LBE155:
.LBE165:
.LBE175:
	.loc 1 288 0
	lsr r24
.LVL119:
.LBB176:
.LBB166:
.LBB156:
.LBB147:
	.loc 1 267 0
	sbrc r24,0
	rjmp .L130
	.loc 1 272 0
	or r25,r17
.L126:
	.loc 1 269 0
	movw r22,r20
	subi r22,lo8(-(pipe))
	sbci r23,hi8(-(pipe))
	movw r26,r22
	adiw r26,1
	st X,r25
.LVL120:
	.loc 1 267 0
	lsr r24
.LVL121:
	brne .L131
	.loc 1 272 0
	movw r22,r20
	subi r22,lo8(-(pipe))
	sbci r23,hi8(-(pipe))
	or r25,r17
	movw r26,r22
	adiw r26,1
	st X,r25
.LVL122:
	subi r18,-1
	sbci r19,-1
.LVL123:
	adiw r30,1
.LBE147:
.LBE156:
.LBE166:
.LBE176:
.LBE180:
	.loc 1 283 0
	cpi r18,8
	cpc r19,__zero_reg__
	breq .+2
	rjmp .L98
.LVL124:
.L84:
/* epilogue start */
.LBE182:
.LBE133:
.LBE132:
	.loc 1 292 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
.LVL125:
.L131:
.LBB185:
.LBB184:
.LBB183:
.LBB181:
.LBB177:
.LBB167:
.LBB157:
.LBB148:
	.loc 1 269 0
	movw r22,r20
	subi r22,lo8(-(pipe))
	sbci r23,hi8(-(pipe))
	and r25,r28
	movw r26,r22
	adiw r26,1
	st X,r25
	rjmp .L97
.LVL126:
.L130:
	and r25,r28
	rjmp .L126
.LVL127:
.L129:
	and r25,r28
	rjmp .L125
.LVL128:
.L128:
	and r25,r28
	rjmp .L124
.LVL129:
.L127:
	and r25,r28
	rjmp .L123
.LVL130:
.L133:
	and r25,r28
	rjmp .L122
.LVL131:
.L90:
	and r25,r28
	st X,r25
	rjmp .L91
.LVL132:
.L88:
	com r12
	movw r26,r22
.LVL133:
	adiw r26,1
	ld r25,X
	sbiw r26,1
	and r25,r12
	adiw r26,1
	st X,r25
.LVL134:
	rjmp .L89
.LBE148:
.LBE157:
.LBE167:
.LBE177:
.LBE181:
.LBE183:
.LBE184:
.LBE185:
	.cfi_endproc
.LFE28:
	.size	program_toRegister, .-program_toRegister
	.section	.text.init_Midi2Manual,"ax",@progbits
.global	init_Midi2Manual
	.type	init_Midi2Manual, @function
init_Midi2Manual:
.LFB29:
	.loc 1 296 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL135:
	.loc 1 298 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
.LBB186:
	.loc 1 302 0
	ldi r24,lo8(-1)
.LVL136:
.L135:
	.loc 1 302 0 is_stmt 0 discriminator 3
	st Z,r24
	.loc 1 303 0 is_stmt 1 discriminator 3
	std Z+1,r24
	.loc 1 304 0 discriminator 3
	std Z+3,r24
	.loc 1 305 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 306 0 discriminator 3
	adiw r30,4
.LVL137:
	.loc 1 300 0 discriminator 3
	ldi r25,hi8(midiInMap+256)
	cpi r30,lo8(midiInMap+256)
	cpc r31,r25
	brne .L135
.LBE186:
	.loc 1 309 0
	call eeprom_ReadMidiInMap
.LVL138:
	cpi r24,lo8(-1)
	breq .L138
	ret
.L138:
	.loc 1 310 0
	sts midiEEPromLoadError,r24
	.loc 1 311 0
	sts midiInMap,__zero_reg__
	.loc 1 312 0
	ldi r24,lo8(36)
	sts midiInMap+1,r24
	.loc 1 313 0
	sts midiInMap+3,r24
	.loc 1 314 0
	ldi r25,lo8(56)
	sts midiInMap+2,r25
	.loc 1 315 0
	ldi r18,lo8(1)
	sts midiInMap+16,r18
	.loc 1 316 0
	sts midiInMap+17,r24
	.loc 1 317 0
	sts midiInMap+19,r24
	.loc 1 318 0
	sts midiInMap+18,r25
	.loc 1 319 0
	ldi r18,lo8(2)
	sts midiInMap+32,r18
	.loc 1 320 0
	sts midiInMap+33,r24
	.loc 1 321 0
	sts midiInMap+35,r24
	.loc 1 322 0
	sts midiInMap+34,r25
	.loc 1 323 0
	ldi r25,lo8(3)
	sts midiInMap+48,r25
	.loc 1 324 0
	sts midiInMap+49,r24
	.loc 1 325 0
	sts midiInMap+51,r24
	.loc 1 326 0
	ldi r24,lo8(30)
	sts midiInMap+50,r24
	.loc 1 327 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	jmp log_putError
.LVL139:
	.cfi_endproc
.LFE29:
	.size	init_Midi2Manual, .-init_Midi2Manual
	.section	.text.init_Manual2Midi,"ax",@progbits
.global	init_Manual2Midi
	.type	init_Manual2Midi, @function
init_Manual2Midi:
.LFB30:
	.loc 1 331 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL140:
	.loc 1 336 0
	call eeprom_ReadMidiOutMap
.LVL141:
	cpi r24,lo8(-1)
	breq .L141
	ret
.L141:
	.loc 1 337 0
	sts midiEEPromLoadError,r24
	.loc 1 339 0
	sts midiOutMap,__zero_reg__
	.loc 1 340 0
	ldi r24,lo8(1)
	sts midiOutMap+1,r24
	.loc 1 341 0
	ldi r24,lo8(2)
	sts midiOutMap+2,r24
	.loc 1 342 0
	ldi r24,lo8(3)
	sts midiOutMap+3,r24
	.loc 1 343 0
	sts midi_TxActivceSense,__zero_reg__
	.loc 1 344 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(2)
	ldi r24,lo8(1)
	jmp log_putError
.LVL142:
	.cfi_endproc
.LFE30:
	.size	init_Manual2Midi, .-init_Manual2Midi
	.section	.text.midiNote_to_Manual,"ax",@progbits
.global	midiNote_to_Manual
	.type	midiNote_to_Manual, @function
midiNote_to_Manual:
.LFB31:
	.loc 1 348 0
	.cfi_startproc
.LVL143:
	push r15
.LCFI27:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI28:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI29:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI30:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI31:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	.loc 1 349 0
	andi r24,lo8(15)
.LVL144:
	lds r15,midiLastInManual
	lds r23,midiLastInNote
	ldi r16,lo8(16)
	mul r24,r16
	movw r30,r0
	clr __zero_reg__
	subi r30,lo8(-(midiInMap))
	sbci r31,hi8(-(midiInMap))
	ldi r25,lo8(4)
	.loc 1 350 0
	ldi r21,0
.LBB196:
.LBB197:
.LBB198:
.LBB199:
.LBB200:
.LBB201:
	.loc 1 468 0
	ldi r28,lo8(1)
	ldi r29,0
.LVL145:
.L151:
.LBE201:
.LBE200:
.LBE199:
.LBE198:
.LBE197:
	.loc 1 352 0
	ld r18,Z
	cpi r18,lo8(4)
	brlo .+2
	rjmp .L143
.LBB223:
	.loc 1 354 0
	ldd r19,Z+1
	mov r17,r22
	sub r17,r19
	mov r19,r17
.LVL146:
	.loc 1 355 0
	sbrc r17,7
	rjmp .L143
	.loc 1 355 0 is_stmt 0 discriminator 1
	ldd r26,Z+2
	ldi r27,0
	mov r16,r17
	lsl r17
	sbc r17,r17
	cp r16,r26
	cpc r17,r27
	brge .L143
.LVL147:
.LBB221:
	.loc 1 358 0 is_stmt 1
	ldd r21,Z+3
.LVL148:
	add r21,r19
.LVL149:
	.loc 1 359 0
	cpi r20,lo8(1)
	brne .+2
	rjmp .L155
.L144:
.LVL150:
.LBB217:
.LBB213:
.LBB202:
.LBB203:
.LBB204:
	.loc 1 414 0
	ldi r19,0
	movw r26,r18
	lsl r26
	rol r27
.LVL151:
	add r26,r18
	adc r27,r19
	lsl r26
	rol r27
	lsl r26
	rol r27
.LVL152:
	subi r26,lo8(-(manualMap))
	sbci r27,hi8(-(manualMap))
.LVL153:
	.loc 1 417 0
	ld r18,X
.LVL154:
	cp r21,r18
	brlo .L145
	adiw r26,1
	ld r19,X
	sbiw r26,1
	cp r19,r21
	brlo .+2
	rjmp .L146
.L145:
.LVL155:
	adiw r26,3
	ld r18,X
	sbiw r26,3
	cp r21,r18
	brlo .L147
	adiw r26,4
	ld r19,X
	sbiw r26,4
	cp r19,r21
	brlo .+2
	rjmp .L156
.L147:
.LVL156:
	adiw r26,6
	ld r18,X
	sbiw r26,6
	cp r21,r18
	brlo .L148
	adiw r26,7
	ld r19,X
	sbiw r26,7
	cp r19,r21
	brlo .+2
	rjmp .L157
.L148:
.LVL157:
	adiw r26,9
	ld r18,X
	sbiw r26,9
	cp r21,r18
	brlo .L149
	adiw r26,10
	ld r19,X
	sbiw r26,10
	cp r19,r21
	brsh .L158
.L149:
.LVL158:
.LBE204:
.LBE203:
.LBE202:
.LBE213:
.LBE217:
	.loc 1 364 0
	ldi r21,lo8(-1)
.LVL159:
.L143:
	subi r25,lo8(-(-1))
.LVL160:
	adiw r30,4
.LBE221:
.LBE223:
	.loc 1 351 0 discriminator 2
	cpse r25,__zero_reg__
	rjmp .L151
	sts midiLastInManual,r15
	sts midiLastInNote,r23
.LBE196:
	.loc 1 368 0
	cpi r20,lo8(1)
	breq .L159
.L142:
/* epilogue start */
	.loc 1 374 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
.L159:
	.loc 1 368 0 discriminator 1
	cpse r21,__zero_reg__
	rjmp .L142
	.loc 1 370 0
	sts midiLastInNote,r22
	.loc 1 371 0
	sts midiLastInChannel,r24
	.loc 1 372 0
	ldi r24,lo8(-1)
.LVL161:
	sts midiLastInManual,r24
/* epilogue start */
	.loc 1 374 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
.LVL162:
.L155:
.LBB225:
.LBB224:
.LBB222:
	.loc 1 358 0
	mov r23,r21
	mov r15,r18
	rjmp .L144
.LVL163:
.L158:
.LBB218:
.LBB214:
.LBB209:
.LBB207:
.LBB205:
	.loc 1 423 0
	adiw r26,9
.LVL164:
.L146:
	.loc 1 420 0
	adiw r26,2
	ld r19,X
	add r19,r21
	sub r19,r18
.LVL165:
.LBE205:
.LBE207:
.LBE209:
.LBB210:
	.loc 1 461 0
	mov r26,r19
	andi r26,lo8(31)
.LVL166:
	.loc 1 462 0
	swap r19
.LVL167:
	lsr r19
	andi r19,lo8(7)
.LVL168:
	.loc 1 465 0
	ldi r27,0
	lsl r26
	rol r27
	lsl r26
	rol r27
	lsl r26
	rol r27
.LVL169:
	subi r26,lo8(-(pipe))
	sbci r27,hi8(-(pipe))
	movw r16,r28
	rjmp 2f
	1:
	lsl r16
	rol r17
	2:
	dec r19
	brpl 1b
	movw r18,r16
	.loc 1 463 0
	tst r20
	breq .L160
	.loc 1 468 0
	com r18
	adiw r26,1
	ld r19,X
	sbiw r26,1
.LVL170:
	and r18,r19
	adiw r26,1
	st X,r18
.LVL171:
.LBE210:
.LBE214:
.LBE218:
	.loc 1 364 0
	ldi r21,lo8(-1)
.LVL172:
	rjmp .L143
.LVL173:
.L160:
.LBB219:
.LBB215:
.LBB211:
	.loc 1 465 0
	adiw r26,1
	ld r19,X
	sbiw r26,1
.LVL174:
	or r18,r19
	adiw r26,1
	st X,r18
.LVL175:
.LBE211:
.LBE215:
.LBE219:
	.loc 1 364 0
	ldi r21,lo8(-1)
.LVL176:
	rjmp .L143
.LVL177:
.L157:
.LBB220:
.LBB216:
.LBB212:
.LBB208:
.LBB206:
	.loc 1 423 0
	adiw r26,6
.LVL178:
	rjmp .L146
.LVL179:
.L156:
	adiw r26,3
.LVL180:
	rjmp .L146
.LBE206:
.LBE208:
.LBE212:
.LBE216:
.LBE220:
.LBE222:
.LBE224:
.LBE225:
	.cfi_endproc
.LFE31:
	.size	midiNote_to_Manual, .-midiNote_to_Manual
	.section	.text.midiIn_Process,"ax",@progbits
.global	midiIn_Process
	.type	midiIn_Process, @function
midiIn_Process:
.LFB23:
	.loc 1 122 0
	.cfi_startproc
.LVL181:
	push r8
.LCFI32:
	.cfi_def_cfa_offset 4
	.cfi_offset 8, -3
	push r9
.LCFI33:
	.cfi_def_cfa_offset 5
	.cfi_offset 9, -4
	push r10
.LCFI34:
	.cfi_def_cfa_offset 6
	.cfi_offset 10, -5
	push r11
.LCFI35:
	.cfi_def_cfa_offset 7
	.cfi_offset 11, -6
	push r12
.LCFI36:
	.cfi_def_cfa_offset 8
	.cfi_offset 12, -7
	push r13
.LCFI37:
	.cfi_def_cfa_offset 9
	.cfi_offset 13, -8
	push r14
.LCFI38:
	.cfi_def_cfa_offset 10
	.cfi_offset 14, -9
	push r15
.LCFI39:
	.cfi_def_cfa_offset 11
	.cfi_offset 15, -10
	push r16
.LCFI40:
	.cfi_def_cfa_offset 12
	.cfi_offset 16, -11
	push r17
.LCFI41:
	.cfi_def_cfa_offset 13
	.cfi_offset 17, -12
	push r28
.LCFI42:
	.cfi_def_cfa_offset 14
	.cfi_offset 28, -13
	push r29
.LCFI43:
	.cfi_def_cfa_offset 15
	.cfi_offset 29, -14
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	.loc 1 123 0
	sbrc r24,7
	rjmp .L238
	.loc 1 152 0
	lds r30,midiDataByteCount
	cpi r30,lo8(2)
	brsh .+2
	rjmp .L239
.L171:
	.loc 1 156 0
	lds r24,midiDataByteExpected
.LVL182:
	cpi r24,lo8(-1)
	brne .+2
	rjmp .L161
	.loc 1 158 0
	cp r30,r24
	brsh .+2
	rjmp .L161
	.loc 1 160 0
	lds r25,midiLastCommand
	cpi r25,lo8(-16)
	brlo .+2
	rjmp .L174
.LBB246:
	.loc 1 162 0
	mov r24,r25
	andi r24,lo8(15)
.LVL183:
	.loc 1 164 0
	andi r25,lo8(-16)
	cpi r25,lo8(-112)
	brne .+2
	rjmp .L175
	brsh .+2
	rjmp .L240
	cpi r25,lo8(-80)
	brne .+2
	rjmp .L178
	cpi r25,lo8(-64)
	breq .+2
	rjmp .L174
	.loc 1 186 0
	lds r30,midiDataByte
.LVL184:
.LBB247:
.LBB248:
	.loc 1 279 0
	cpi r30,lo8(64)
	brlo .+2
	rjmp .L174
.LVL185:
	lds r29,registerCount
.LBB249:
.LBB250:
.LBB251:
.LBB252:
.LBB253:
.LBB254:
.LBB255:
.LBB256:
	.loc 1 264 0
	lds r24,registerMap+1
.LVL186:
	.loc 1 269 0
	mov r20,r24
	andi r20,lo8(31)
	ldi r21,0
	mov r18,r24
	swap r18
	lsr r18
	andi r18,lo8(7)
	ldi r24,lo8(1)
	ldi r25,0
	rjmp 2f
	1:
	lsl r24
	2:
	dec r18
	brpl 1b
	mov r17,r24
	mov r28,r24
	com r28
.LBE256:
.LBE255:
.LBE254:
.LBE253:
.LBE252:
.LBE251:
	.loc 1 282 0
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
.LVL187:
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
.LBB299:
.LBB295:
.LBB285:
.LBB275:
.LBB266:
.LBB257:
	.loc 1 269 0
	ldi r18,0
	ldi r19,0
	lsl r20
	rol r21
	lsl r20
	rol r21
	lsl r20
	rol r21
	movw r22,r20
	subi r22,lo8(-(pipe+1))
	sbci r23,hi8(-(pipe+1))
	movw r10,r22
	clr r8
	inc r8
	mov r9,__zero_reg__
	rjmp .L194
.LVL188:
.L193:
	subi r18,-1
	sbci r19,-1
.LVL189:
	adiw r30,1
.LBE257:
.LBE266:
.LBE275:
.LBE285:
.LBE295:
	.loc 1 283 0
	cpi r18,8
	cpc r19,__zero_reg__
	brne .+2
	rjmp .L174
.LVL190:
.L194:
.LBB296:
	.loc 1 286 0
	ldi r16,lo8(1)
	movw r24,r18
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	or r24,r25
	brne .L182
	ldi r16,0
.L182:
.LVL191:
.LBB286:
.LBB276:
	.loc 1 262 0
	cp r16,r29
	brsh .L193
.LBE276:
.LBE286:
.LBE296:
	.loc 1 284 0
	ld r24,Z
.LVL192:
.LBB297:
.LBB287:
.LBB277:
.LBB267:
.LBB258:
	.loc 1 264 0
	mov r14,r16
	mov r15,__zero_reg__
	movw r26,r14
	subi r26,lo8(-(registerMap))
	sbci r27,hi8(-(registerMap))
	ld r16,X
.LVL193:
	.loc 1 265 0
	mov r25,r16
	andi r25,lo8(31)
.LVL194:
	.loc 1 266 0
	swap r16
.LVL195:
	lsr r16
	andi r16,lo8(7)
.LVL196:
	.loc 1 269 0
	mov r14,r25
.LVL197:
	mov r15,__zero_reg__
	lsl r14
	rol r15
	lsl r14
	rol r15
	lsl r14
	rol r15
.LVL198:
	movw r22,r14
	subi r22,lo8(-(pipe))
	sbci r23,hi8(-(pipe))
	movw r12,r8
	rjmp 2f
	1:
	lsl r12
	2:
	dec r16
	brpl 1b
	.loc 1 267 0
	sbrc r24,0
	rjmp .L184
	.loc 1 272 0
	movw r26,r22
.LVL199:
	adiw r26,1
	ld r25,X
	sbiw r26,1
	or r12,r25
	adiw r26,1
	st X,r12
.LVL200:
.L185:
.LBE258:
.LBE267:
.LBE277:
.LBE287:
	.loc 1 288 0
	lsr r24
.LVL201:
.LBB288:
.LBB278:
	.loc 1 262 0
	cpi r29,lo8(1)
	breq .L193
.LVL202:
.LBB268:
.LBB259:
	.loc 1 269 0
	movw r26,r10
	ld r25,X
	.loc 1 267 0
	sbrc r24,0
	rjmp .L186
	.loc 1 272 0
	or r25,r17
	st X,r25
.L187:
.LVL203:
.LBE259:
.LBE268:
.LBE278:
.LBE288:
	.loc 1 288 0
	lsr r24
.LVL204:
.LBB289:
.LBB279:
.LBB269:
.LBB260:
	.loc 1 267 0
	sbrc r24,0
	rjmp .L241
	.loc 1 272 0
	or r25,r17
.L227:
	.loc 1 269 0
	movw r22,r20
	subi r22,lo8(-(pipe))
	sbci r23,hi8(-(pipe))
	movw r26,r22
	adiw r26,1
	st X,r25
.LVL205:
.LBE260:
.LBE269:
.LBE279:
.LBE289:
	.loc 1 288 0
	lsr r24
.LVL206:
.LBB290:
.LBB280:
.LBB270:
.LBB261:
	.loc 1 267 0
	sbrc r24,0
	rjmp .L232
	.loc 1 272 0
	or r25,r17
.L228:
	.loc 1 269 0
	movw r22,r20
	subi r22,lo8(-(pipe))
	sbci r23,hi8(-(pipe))
	movw r26,r22
	adiw r26,1
	st X,r25
.LVL207:
.LBE261:
.LBE270:
.LBE280:
.LBE290:
	.loc 1 288 0
	lsr r24
.LVL208:
.LBB291:
.LBB281:
.LBB271:
.LBB262:
	.loc 1 267 0
	sbrc r24,0
	rjmp .L233
	.loc 1 272 0
	or r25,r17
.L229:
	.loc 1 269 0
	movw r22,r20
	subi r22,lo8(-(pipe))
	sbci r23,hi8(-(pipe))
	movw r26,r22
	adiw r26,1
	st X,r25
.LVL209:
.LBE262:
.LBE271:
.LBE281:
.LBE291:
	.loc 1 288 0
	lsr r24
.LVL210:
.LBB292:
.LBB282:
.LBB272:
.LBB263:
	.loc 1 267 0
	sbrc r24,0
	rjmp .L234
	.loc 1 272 0
	or r25,r17
.L230:
	.loc 1 269 0
	movw r22,r20
	subi r22,lo8(-(pipe))
	sbci r23,hi8(-(pipe))
	movw r26,r22
	adiw r26,1
	st X,r25
.LVL211:
.LBE263:
.LBE272:
.LBE282:
.LBE292:
	.loc 1 288 0
	lsr r24
.LVL212:
.LBB293:
.LBB283:
.LBB273:
.LBB264:
	.loc 1 267 0
	sbrc r24,0
	rjmp .L235
	.loc 1 272 0
	or r25,r17
.L231:
	.loc 1 269 0
	movw r22,r20
	subi r22,lo8(-(pipe))
	sbci r23,hi8(-(pipe))
	movw r26,r22
	adiw r26,1
	st X,r25
.LVL213:
	.loc 1 267 0
	lsr r24
.LVL214:
	breq .+2
	rjmp .L236
	.loc 1 272 0
	movw r22,r20
	subi r22,lo8(-(pipe))
	sbci r23,hi8(-(pipe))
	or r25,r17
	movw r26,r22
	adiw r26,1
	st X,r25
	rjmp .L193
.LVL215:
.L238:
.LBE264:
.LBE273:
.LBE283:
.LBE293:
.LBE297:
.LBE299:
.LBE250:
.LBE249:
.LBE248:
.LBE247:
.LBE246:
	.loc 1 125 0
	sts midiLastCommand,r24
	.loc 1 126 0
	sts midiDataByteCount,__zero_reg__
	.loc 1 128 0
	ldi r25,lo8(-128)
	add r25,r24
	cpi r25,lo8(64)
	brlo .L165
	.loc 1 130 0
	ldi r25,lo8(32)
	add r25,r24
	cpi r25,lo8(16)
	brlo .L165
	.loc 1 132 0
	cpi r24,lo8(-14)
	breq .L165
	.loc 1 134 0
	cpi r24,lo8(-16)
	brne .+2
	rjmp .L242
	.loc 1 136 0
	ldi r25,lo8(64)
	add r25,r24
	cpi r25,lo8(32)
	brsh .L167
.L168:
	.loc 1 137 0
	ldi r24,lo8(1)
.LVL216:
	sts midiDataByteExpected,r24
.LVL217:
.L161:
/* epilogue start */
	.loc 1 197 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
.LVL218:
.L240:
.LBB305:
	.loc 1 164 0
	cpi r25,lo8(-128)
	brne .L174
.L226:
	.loc 1 178 0
	ldi r20,0
.L180:
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL219:
.L174:
.LBE305:
	.loc 1 193 0
	sts midiDataByteCount,__zero_reg__
	.loc 1 197 0
	rjmp .L161
.LVL220:
.L165:
	.loc 1 129 0
	ldi r24,lo8(2)
.LVL221:
	sts midiDataByteExpected,r24
	rjmp .L161
.LVL222:
.L239:
	.loc 1 154 0
	ldi r25,lo8(1)
	add r25,r30
	sts midiDataByteCount,r25
	ldi r31,0
	subi r30,lo8(-(midiDataByte))
	sbci r31,hi8(-(midiDataByte))
	st Z,r24
	mov r30,r25
	rjmp .L171
.L167:
	.loc 1 138 0
	mov r25,r24
	andi r25,lo8(-3)
	cpi r25,lo8(-15)
	breq .L168
	.loc 1 141 0
	sts midiDataByteExpected,__zero_reg__
	.loc 1 142 0
	cpi r24,lo8(-2)
	breq .L243
	.loc 1 145 0
	cpi r24,lo8(-1)
	brne .L161
.LBB306:
.LBB307:
	.loc 1 73 0
	ldi r24,lo8(-128)
.LVL223:
	sts pipeProcessing,r24
/* epilogue start */
.LBE307:
.LBE306:
	.loc 1 197 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
.LBB309:
.LBB308:
	.loc 1 74 0
	jmp init_Pipe
.LVL224:
.L178:
.LBE308:
.LBE309:
.LBB310:
	.loc 1 181 0
	lds r25,midiDataByte
	cpi r25,lo8(123)
	brne .L174
	.loc 1 182 0
	call midiAllNotesOff
.LVL225:
	rjmp .L174
.LVL226:
.L175:
	.loc 1 178 0
	ldi r20,lo8(1)
	lds r25,midiDataByte+1
	cpse r25,__zero_reg__
	rjmp .L180
	rjmp .L226
.LVL227:
.L243:
.LBE310:
	.loc 1 143 0
	ldi r24,lo8(1)
.LVL228:
	sts midiRxActivceSensing,r24
.LBB311:
	.loc 1 144 0
	in r24,__SREG__
.LVL229:
.LBB312:
.LBB313:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
.LVL230:
/* #NOAPP */
.LBE313:
.LBE312:
	.loc 1 144 0
	ldi r25,lo8(25)
	sts swTimer+6,r25
	sts swTimer+7,__zero_reg__
.LVL231:
.LBB314:
.LBB315:
	.loc 2 70 0
	out __SREG__,r24
.LVL232:
	.loc 2 71 0
.LVL233:
.LBE315:
.LBE314:
.LBE311:
	rjmp .L161
.LVL234:
.L242:
	.loc 1 135 0
	ldi r24,lo8(-1)
.LVL235:
	sts midiDataByteExpected,r24
	rjmp .L161
.LVL236:
.L236:
.LBB316:
.LBB304:
.LBB303:
.LBB302:
.LBB301:
.LBB300:
.LBB298:
.LBB294:
.LBB284:
.LBB274:
.LBB265:
	.loc 1 269 0
	movw r22,r20
	subi r22,lo8(-(pipe))
	sbci r23,hi8(-(pipe))
	and r25,r28
	movw r26,r22
	adiw r26,1
	st X,r25
	rjmp .L193
.LVL237:
.L235:
	and r25,r28
	rjmp .L231
.LVL238:
.L234:
	and r25,r28
	rjmp .L230
.LVL239:
.L233:
	and r25,r28
	rjmp .L229
.LVL240:
.L232:
	and r25,r28
	rjmp .L228
.LVL241:
.L241:
	and r25,r28
	rjmp .L227
.LVL242:
.L186:
	and r25,r28
	st X,r25
	rjmp .L187
.LVL243:
.L184:
	com r12
	movw r26,r22
.LVL244:
	adiw r26,1
	ld r25,X
	sbiw r26,1
	and r25,r12
	adiw r26,1
	st X,r25
.LVL245:
	rjmp .L185
.LBE265:
.LBE274:
.LBE284:
.LBE294:
.LBE298:
.LBE300:
.LBE301:
.LBE302:
.LBE303:
.LBE304:
.LBE316:
	.cfi_endproc
.LFE23:
	.size	midiIn_Process, .-midiIn_Process
	.section	.text.Manual_to_MidiNote,"ax",@progbits
.global	Manual_to_MidiNote
	.type	Manual_to_MidiNote, @function
Manual_to_MidiNote:
.LFB32:
	.loc 1 376 0
	.cfi_startproc
.LVL246:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 378 0
	cpi r24,lo8(4)
	brsh .L245
	.loc 1 379 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r18,Z
	cpi r18,lo8(-1)
	breq .L245
	.loc 1 381 0
	mov r25,r22
.L245:
.LVL247:
	.loc 1 385 0
	mov r24,r18
.LVL248:
	ret
	.cfi_endproc
.LFE32:
	.size	Manual_to_MidiNote, .-Manual_to_MidiNote
	.section	.text.init_Manual2Module,"ax",@progbits
.global	init_Manual2Module
	.type	init_Manual2Module, @function
init_Manual2Module:
.LFB33:
	.loc 1 389 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL249:
.LBB317:
.LBB318:
	.loc 1 393 0
	ldi r24,lo8(-1)
	sts manualMap+45,r24
	.loc 1 394 0
	sts manualMap+46,r24
	.loc 1 395 0
	sts manualMap+47,__zero_reg__
.LVL250:
	.loc 1 393 0
	sts manualMap+42,r24
	.loc 1 394 0
	sts manualMap+43,r24
	.loc 1 395 0
	sts manualMap+44,__zero_reg__
.LVL251:
	.loc 1 393 0
	sts manualMap+39,r24
	.loc 1 394 0
	sts manualMap+40,r24
	.loc 1 395 0
	sts manualMap+41,__zero_reg__
.LVL252:
	.loc 1 393 0
	sts manualMap+36,r24
	.loc 1 394 0
	sts manualMap+37,r24
	.loc 1 395 0
	sts manualMap+38,__zero_reg__
.LVL253:
	.loc 1 393 0
	sts manualMap+33,r24
	.loc 1 394 0
	sts manualMap+34,r24
	.loc 1 395 0
	sts manualMap+35,__zero_reg__
.LVL254:
	.loc 1 393 0
	sts manualMap+30,r24
	.loc 1 394 0
	sts manualMap+31,r24
	.loc 1 395 0
	sts manualMap+32,__zero_reg__
.LVL255:
	.loc 1 393 0
	sts manualMap+27,r24
	.loc 1 394 0
	sts manualMap+28,r24
	.loc 1 395 0
	sts manualMap+29,__zero_reg__
.LVL256:
	.loc 1 393 0
	sts manualMap+24,r24
	.loc 1 394 0
	sts manualMap+25,r24
	.loc 1 395 0
	sts manualMap+26,__zero_reg__
.LVL257:
	.loc 1 393 0
	sts manualMap+21,r24
	.loc 1 394 0
	sts manualMap+22,r24
	.loc 1 395 0
	sts manualMap+23,__zero_reg__
.LVL258:
	.loc 1 393 0
	sts manualMap+18,r24
	.loc 1 394 0
	sts manualMap+19,r24
	.loc 1 395 0
	sts manualMap+20,__zero_reg__
.LVL259:
	.loc 1 393 0
	sts manualMap+15,r24
	.loc 1 394 0
	sts manualMap+16,r24
	.loc 1 395 0
	sts manualMap+17,__zero_reg__
.LVL260:
	.loc 1 393 0
	sts manualMap+12,r24
	.loc 1 394 0
	sts manualMap+13,r24
	.loc 1 395 0
	sts manualMap+14,__zero_reg__
.LVL261:
	.loc 1 393 0
	sts manualMap+9,r24
	.loc 1 394 0
	sts manualMap+10,r24
	.loc 1 395 0
	sts manualMap+11,__zero_reg__
.LVL262:
	.loc 1 393 0
	sts manualMap+6,r24
	.loc 1 394 0
	sts manualMap+7,r24
	.loc 1 395 0
	sts manualMap+8,__zero_reg__
.LVL263:
	.loc 1 393 0
	sts manualMap+3,r24
	.loc 1 394 0
	sts manualMap+4,r24
	.loc 1 395 0
	sts manualMap+5,__zero_reg__
.LVL264:
	.loc 1 393 0
	sts manualMap,r24
	.loc 1 394 0
	sts manualMap+1,r24
	.loc 1 395 0
	sts manualMap+2,__zero_reg__
.LVL265:
.LBE318:
.LBE317:
	.loc 1 399 0
	call eeprom_ReadManualMap
.LVL266:
	cpi r24,lo8(-1)
	breq .L249
	ret
.L249:
	.loc 1 401 0
	sts midiEEPromLoadError,r24
	.loc 1 402 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(3)
	ldi r24,lo8(1)
	jmp log_putError
.LVL267:
	.cfi_endproc
.LFE33:
	.size	init_Manual2Module, .-init_Manual2Module
	.section	.text.manualNote_to_moduleBit,"ax",@progbits
.global	manualNote_to_moduleBit
	.type	manualNote_to_moduleBit, @function
manualNote_to_moduleBit:
.LFB34:
	.loc 1 408 0
	.cfi_startproc
.LVL268:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 411 0
	cpi r24,lo8(4)
	brsh .L251
.LBB320:
	.loc 1 414 0
	ldi r25,0
	movw r30,r24
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(manualMap))
	sbci r31,hi8(-(manualMap))
.LVL269:
	.loc 1 417 0
	ld r18,Z
	cp r22,r18
	brsh .L259
.LVL270:
.L252:
	.loc 1 423 0
	movw r24,r30
	adiw r24,3
.LVL271:
	.loc 1 417 0
	ldd r18,Z+3
	cp r22,r18
	brlo .L254
	ldd r19,Z+4
	cp r19,r22
	brsh .L258
.L254:
	.loc 1 423 0
	movw r24,r30
.LVL272:
	adiw r24,6
.LVL273:
	.loc 1 417 0
	ldd r18,Z+6
	cp r22,r18
	brlo .L255
	ldd r19,Z+7
	cp r19,r22
	brsh .L258
.L255:
	.loc 1 423 0
	movw r24,r30
.LVL274:
	adiw r24,9
.LVL275:
	.loc 1 417 0
	ldd r18,Z+9
	cp r22,r18
	brlo .L251
	.loc 1 417 0 is_stmt 0 discriminator 1
	ldd r19,Z+10
	cp r19,r22
	brsh .L258
.LVL276:
.L251:
.LBE320:
	.loc 1 428 0 is_stmt 1
	ldi r24,lo8(-1)
	ldi r25,0
.LVL277:
	.loc 1 429 0
	ret
.LVL278:
.L259:
.LBB321:
	.loc 1 417 0
	ldd r24,Z+1
.LVL279:
	cp r24,r22
	brlo .L252
.L253:
.LVL280:
	.loc 1 420 0
	ldd r25,Z+2
	add r22,r25
.LVL281:
	.loc 1 421 0
	ldi r24,0
	mov r25,r22
	sub r25,r18
.LVL282:
	ret
.LVL283:
.L258:
	.loc 1 423 0
	movw r30,r24
	rjmp .L253
.LBE321:
	.cfi_endproc
.LFE34:
	.size	manualNote_to_moduleBit, .-manualNote_to_moduleBit
	.section	.text.moduleBit_to_manualNote,"ax",@progbits
.global	moduleBit_to_manualNote
	.type	moduleBit_to_manualNote, @function
moduleBit_to_manualNote:
.LFB35:
	.loc 1 431 0
	.cfi_startproc
.LVL284:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r19,r24
.LVL285:
.LBB323:
	.loc 1 441 0
	lds r18,manualMap+2
	cp r24,r18
	brlo .+2
	rjmp .L305
	mov r20,r24
	ldi r21,0
.L261:
.LVL286:
	lds r18,manualMap+5
	cp r19,r18
	brlo .L263
	lds r25,manualMap+3
	lds r22,manualMap+4
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L287
.L263:
.LVL287:
	lds r18,manualMap+8
	cp r19,r18
	brlo .L265
	lds r25,manualMap+6
	lds r22,manualMap+7
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L287
.L265:
.LVL288:
	lds r18,manualMap+11
	cp r19,r18
	brlo .L267
	lds r25,manualMap+9
	lds r22,manualMap+10
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L287
.L267:
.LVL289:
	lds r18,manualMap+14
	cp r19,r18
	brlo .L269
	lds r25,manualMap+12
	lds r22,manualMap+13
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L291
.L269:
.LVL290:
	lds r18,manualMap+17
	cp r19,r18
	brlo .L270
	lds r25,manualMap+15
	lds r22,manualMap+16
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L291
.L270:
.LVL291:
	lds r18,manualMap+20
	cp r19,r18
	brlo .L271
	lds r25,manualMap+18
	lds r22,manualMap+19
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L291
.L271:
.LVL292:
	lds r18,manualMap+23
	cp r19,r18
	brlo .L272
	lds r25,manualMap+21
	lds r22,manualMap+22
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L291
.L272:
.LVL293:
	lds r18,manualMap+26
	cp r19,r18
	brlo .L273
	lds r25,manualMap+24
	lds r22,manualMap+25
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L295
.L273:
.LVL294:
	lds r18,manualMap+29
	cp r19,r18
	brlo .L274
	lds r25,manualMap+27
	lds r22,manualMap+28
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L295
.L274:
.LVL295:
	lds r18,manualMap+32
	cp r19,r18
	brlo .L275
	lds r25,manualMap+30
	lds r22,manualMap+31
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L295
.L275:
.LVL296:
	lds r18,manualMap+35
	cp r19,r18
	brlo .L276
	lds r25,manualMap+33
	lds r22,manualMap+34
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L295
.L276:
.LVL297:
	lds r18,manualMap+38
	cp r19,r18
	brlo .L277
	lds r25,manualMap+36
	lds r22,manualMap+37
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L299
.L277:
.LVL298:
	lds r18,manualMap+41
	cp r19,r18
	brlo .L278
	lds r25,manualMap+39
	lds r22,manualMap+40
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L299
.L278:
.LVL299:
	lds r18,manualMap+44
	cp r19,r18
	brlo .L279
	lds r25,manualMap+42
	lds r22,manualMap+43
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L299
.L279:
.LVL300:
	lds r18,manualMap+47
	cp r19,r18
	brlo .L280
	lds r25,manualMap+45
	lds r22,manualMap+46
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L299
.L280:
.LVL301:
	lds r18,manualMap+50
	cp r19,r18
	brlo .L281
	lds r25,manualMap+48
	lds r22,manualMap+49
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L303
.L281:
.LVL302:
	lds r18,manualMap+53
	cp r19,r18
	brlo .L282
	lds r25,manualMap+51
	lds r22,manualMap+52
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L303
.L282:
.LVL303:
	lds r18,manualMap+56
	cp r19,r18
	brlo .L284
	lds r25,manualMap+54
	lds r22,manualMap+55
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brge .L303
.L284:
.LVL304:
	lds r18,manualMap+59
	cp r19,r18
	brlo .L285
	lds r25,manualMap+57
	lds r22,manualMap+58
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brge .L303
.L285:
.LVL305:
.LBE323:
	.loc 1 452 0
	ldi r22,lo8(1)
	ldi r24,lo8(2)
.LVL306:
	call log_putWarning
.LVL307:
	.loc 1 453 0
	ldi r24,lo8(-1)
	ldi r25,0
	ret
.LVL308:
.L305:
.LBB324:
	.loc 1 441 0
	lds r25,manualMap
	lds r22,manualMap+1
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r18
	adc r23,__zero_reg__
	mov r20,r24
	ldi r21,0
	cp r22,r20
	cpc r23,r21
	brge .+2
	rjmp .L261
.LVL309:
.L287:
.LBE324:
	.loc 1 438 0
	ldi r24,0
.LVL310:
.L283:
.LBB325:
	.loc 1 445 0
	add r25,r19
.LVL311:
	sub r25,r18
.LVL312:
.LBE325:
	.loc 1 454 0
	ret
.LVL313:
.L291:
	.loc 1 449 0
	ldi r24,lo8(1)
	rjmp .L283
.LVL314:
.L295:
	ldi r24,lo8(2)
	rjmp .L283
.LVL315:
.L299:
	ldi r24,lo8(3)
	rjmp .L283
.LVL316:
.L303:
	ldi r24,lo8(4)
	rjmp .L283
	.cfi_endproc
.LFE35:
	.size	moduleBit_to_manualNote, .-moduleBit_to_manualNote
	.section	.text.manual_NoteOnOff,"ax",@progbits
.global	manual_NoteOnOff
	.type	manual_NoteOnOff, @function
manual_NoteOnOff:
.LFB36:
	.loc 1 456 0
	.cfi_startproc
.LVL317:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB331:
.LBB332:
	.loc 1 411 0
	cpi r24,lo8(4)
	brsh .L306
.LBB333:
	.loc 1 414 0
	ldi r25,0
	movw r30,r24
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(manualMap))
	sbci r31,hi8(-(manualMap))
.LVL318:
	.loc 1 417 0
	ld r25,Z
	cp r22,r25
	brsh .L315
.LVL319:
.L308:
	.loc 1 423 0
	movw r18,r30
	subi r18,-3
	sbci r19,-1
.LVL320:
	.loc 1 417 0
	ldd r25,Z+3
	cp r22,r25
	brlo .L310
	ldd r24,Z+4
	cp r24,r22
	brsh .L314
.L310:
	.loc 1 423 0
	movw r18,r30
.LVL321:
	subi r18,-6
	sbci r19,-1
.LVL322:
	.loc 1 417 0
	ldd r25,Z+6
	cp r22,r25
	brlo .L311
	ldd r24,Z+7
	cp r24,r22
	brsh .L314
.L311:
	.loc 1 423 0
	movw r18,r30
.LVL323:
	subi r18,-9
	sbci r19,-1
.LVL324:
	.loc 1 417 0
	ldd r25,Z+9
	cp r22,r25
	brlo .L306
	ldd r24,Z+10
	cp r24,r22
	brsh .L314
.LVL325:
.L306:
	ret
.LVL326:
.L315:
	ldd r24,Z+1
.LVL327:
	cp r24,r22
	brlo .L308
.L309:
.LVL328:
	.loc 1 420 0
	ldd r24,Z+2
	add r22,r24
.LVL329:
	sub r22,r25
.LVL330:
.LBE333:
.LBE332:
.LBE331:
.LBB336:
	.loc 1 461 0
	mov r30,r22
	andi r30,lo8(31)
.LVL331:
	.loc 1 462 0
	swap r22
.LVL332:
	lsr r22
	andi r22,lo8(7)
.LVL333:
	.loc 1 465 0
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
.LVL334:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldi r24,lo8(1)
	ldi r25,0
	rjmp 2f
	1:
	lsl r24
	2:
	dec r22
	brpl 1b
	.loc 1 463 0
	tst r20
	breq .L316
	.loc 1 468 0
	com r24
	ldd r25,Z+1
	and r24,r25
	std Z+1,r24
.LVL335:
	ret
.LVL336:
.L316:
	.loc 1 465 0
	ldd r25,Z+1
	or r24,r25
	std Z+1,r24
	ret
.LVL337:
.L314:
.LBE336:
.LBB337:
.LBB335:
.LBB334:
	.loc 1 423 0
	movw r30,r18
	rjmp .L309
.LBE334:
.LBE335:
.LBE337:
	.cfi_endproc
.LFE36:
	.size	manual_NoteOnOff, .-manual_NoteOnOff
	.section	.text.midiKeyPress_Process,"ax",@progbits
.global	midiKeyPress_Process
	.type	midiKeyPress_Process, @function
midiKeyPress_Process:
.LFB37:
	.loc 1 475 0
	.cfi_startproc
.LVL338:
	push r10
.LCFI44:
	.cfi_def_cfa_offset 4
	.cfi_offset 10, -3
	push r11
.LCFI45:
	.cfi_def_cfa_offset 5
	.cfi_offset 11, -4
	push r12
.LCFI46:
	.cfi_def_cfa_offset 6
	.cfi_offset 12, -5
	push r13
.LCFI47:
	.cfi_def_cfa_offset 7
	.cfi_offset 13, -6
	push r14
.LCFI48:
	.cfi_def_cfa_offset 8
	.cfi_offset 14, -7
	push r15
.LCFI49:
	.cfi_def_cfa_offset 9
	.cfi_offset 15, -8
	push r16
.LCFI50:
	.cfi_def_cfa_offset 10
	.cfi_offset 16, -9
	push r17
.LCFI51:
	.cfi_def_cfa_offset 11
	.cfi_offset 17, -10
	push r28
.LCFI52:
	.cfi_def_cfa_offset 12
	.cfi_offset 28, -11
	push r29
.LCFI53:
	.cfi_def_cfa_offset 13
	.cfi_offset 29, -12
	rcall .
.LCFI54:
	.cfi_def_cfa_offset 16
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI55:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 3 */
/* stack size = 13 */
.L__stack_usage = 13
.LVL339:
	.loc 1 481 0
	mov r18,r25
	andi r18,lo8(-64)
	breq .+2
	rjmp .L317
	.loc 1 478 0
	std Y+3,r24
	.loc 1 476 0
	mov r18,r25
	andi r18,lo8(-32)
.LVL340:
	std Y+1,r18
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.LBB381:
	.loc 1 487 0
	andi r25,lo8(31)
.LVL341:
	mov r13,r25
.LBB382:
.LBB383:
.LBB384:
.LBB385:
	.loc 1 468 0
	ldi r16,lo8(1)
	ldi r17,0
	mov r19,r24
	rjmp .L381
.LVL342:
.L342:
.LBE385:
.LBE384:
.LBE383:
.LBE382:
	.loc 1 530 0 discriminator 2
	ldd r19,Y+3
	lsr r19
	std Y+3,r19
.LVL343:
	ldi r24,-1
	sub r14,r24
	sbc r15,r24
.LVL344:
	.loc 1 483 0 discriminator 2
	ldi r25,8
	cp r14,r25
	cpc r15,__zero_reg__
	brne .+2
	rjmp .L317
.LVL345:
.L381:
	.loc 1 485 0
	sbrs r19,0
	rjmp .L342
	.loc 1 487 0
	movw r18,r14
	lsl r18
	rol r19
	swap r18
	swap r19
	andi r19,0xf0
	eor r19,r18
	andi r18,0xf0
	eor r19,r18
	or r18,r13
.LVL346:
.LBB480:
.LBB481:
.LBB482:
	.loc 1 441 0
	lds r25,manualMap+2
	cp r18,r25
	brlo .+2
	rjmp .L431
	mov r20,r18
	ldi r21,0
.L320:
.LVL347:
	lds r25,manualMap+5
	cp r18,r25
	brlo .L322
	lds r19,manualMap+3
	lds r22,manualMap+4
	ldi r23,0
	sub r22,r19
	sbc r23,__zero_reg__
	add r22,r25
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L391
.L322:
.LVL348:
	lds r25,manualMap+8
	cp r18,r25
	brlo .L323
	lds r19,manualMap+6
	lds r22,manualMap+7
	ldi r23,0
	sub r22,r19
	sbc r23,__zero_reg__
	add r22,r25
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L391
.L323:
.LVL349:
	lds r25,manualMap+11
	cp r18,r25
	brlo .L324
	lds r19,manualMap+9
	lds r22,manualMap+10
	ldi r23,0
	sub r22,r19
	sbc r23,__zero_reg__
	add r22,r25
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L391
.L324:
.LVL350:
	lds r25,manualMap+14
	cp r18,r25
	brlo .L325
	lds r19,manualMap+12
	lds r22,manualMap+13
	ldi r23,0
	sub r22,r19
	sbc r23,__zero_reg__
	add r22,r25
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L395
.L325:
.LVL351:
	lds r25,manualMap+17
	cp r18,r25
	brlo .L326
	lds r19,manualMap+15
	lds r22,manualMap+16
	ldi r23,0
	sub r22,r19
	sbc r23,__zero_reg__
	add r22,r25
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L395
.L326:
.LVL352:
	lds r25,manualMap+20
	cp r18,r25
	brlo .L327
	lds r19,manualMap+18
	lds r22,manualMap+19
	ldi r23,0
	sub r22,r19
	sbc r23,__zero_reg__
	add r22,r25
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L395
.L327:
.LVL353:
	lds r25,manualMap+23
	cp r18,r25
	brlo .L328
	lds r19,manualMap+21
	lds r22,manualMap+22
	ldi r23,0
	sub r22,r19
	sbc r23,__zero_reg__
	add r22,r25
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L395
.L328:
.LVL354:
	lds r25,manualMap+26
	cp r18,r25
	brlo .L329
	lds r19,manualMap+24
	lds r22,manualMap+25
	ldi r23,0
	sub r22,r19
	sbc r23,__zero_reg__
	add r22,r25
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L399
.L329:
.LVL355:
	lds r25,manualMap+29
	cp r18,r25
	brlo .L330
	lds r19,manualMap+27
	lds r22,manualMap+28
	ldi r23,0
	sub r22,r19
	sbc r23,__zero_reg__
	add r22,r25
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L399
.L330:
.LVL356:
	lds r25,manualMap+32
	cp r18,r25
	brlo .L331
	lds r19,manualMap+30
	lds r22,manualMap+31
	ldi r23,0
	sub r22,r19
	sbc r23,__zero_reg__
	add r22,r25
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L399
.L331:
.LVL357:
	lds r25,manualMap+35
	cp r18,r25
	brlo .L332
	lds r19,manualMap+33
	lds r22,manualMap+34
	ldi r23,0
	sub r22,r19
	sbc r23,__zero_reg__
	add r22,r25
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L399
.L332:
.LVL358:
	lds r25,manualMap+38
	cp r18,r25
	brlo .L333
	lds r19,manualMap+36
	lds r22,manualMap+37
	ldi r23,0
	sub r22,r19
	sbc r23,__zero_reg__
	add r22,r25
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L403
.L333:
.LVL359:
	lds r25,manualMap+41
	cp r18,r25
	brlo .L334
	lds r19,manualMap+39
	lds r22,manualMap+40
	ldi r23,0
	sub r22,r19
	sbc r23,__zero_reg__
	add r22,r25
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L403
.L334:
.LVL360:
	lds r25,manualMap+44
	cp r18,r25
	brlo .L335
	lds r19,manualMap+42
	lds r22,manualMap+43
	ldi r23,0
	sub r22,r19
	sbc r23,__zero_reg__
	add r22,r25
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L403
.L335:
.LVL361:
	lds r25,manualMap+47
	cp r18,r25
	brlo .L336
	lds r19,manualMap+45
	lds r22,manualMap+46
	ldi r23,0
	sub r22,r19
	sbc r23,__zero_reg__
	add r22,r25
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L403
.L336:
.LVL362:
	lds r24,manualMap+50
.LVL363:
	cp r18,r24
	brlo .L337
	lds r25,manualMap+48
	lds r22,manualMap+49
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r24
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L338
.L337:
.LVL364:
	lds r24,manualMap+53
	cp r18,r24
	brlo .L339
	lds r25,manualMap+51
	lds r22,manualMap+52
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r24
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L338
.L339:
.LVL365:
	lds r24,manualMap+56
	cp r18,r24
	brlo .L340
	lds r25,manualMap+54
	lds r22,manualMap+55
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r24
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L338
.L340:
.LVL366:
	lds r24,manualMap+59
	cp r18,r24
	brlo .L341
	lds r25,manualMap+57
	lds r22,manualMap+58
	ldi r23,0
	sub r22,r25
	sbc r23,__zero_reg__
	add r22,r24
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brlt .+2
	rjmp .L338
.L341:
.LVL367:
.LBE482:
	.loc 1 452 0
	ldi r22,lo8(1)
	ldi r24,lo8(2)
	call log_putWarning
.LVL368:
	rjmp .L342
.LVL369:
.L317:
/* epilogue start */
.LBE481:
.LBE480:
.LBE381:
	.loc 1 533 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	ret
.LVL370:
.L431:
.LBB495:
.LBB491:
.LBB489:
.LBB483:
	.loc 1 441 0
	lds r19,manualMap
	mov r20,r18
	ldi r21,0
	lds r22,manualMap+1
	ldi r23,0
	sub r22,r19
	sbc r23,__zero_reg__
	add r22,r25
	adc r23,__zero_reg__
	cp r22,r20
	cpc r23,r21
	brge .+2
	rjmp .L320
.LVL371:
.L391:
	ldi r20,0
	ldi r21,0
.LBE483:
	.loc 1 438 0
	mov r10,__zero_reg__
.LVL372:
.L321:
.LBB484:
	.loc 1 444 0
	add r18,r19
.LVL373:
	sub r18,r25
	std Y+2,r18
.LVL374:
.LBE484:
.LBE489:
.LBE491:
.LBB492:
	.loc 1 491 0
	ldd r25,Y+1
	cpi r25,lo8(32)
	brne .+2
	rjmp .L442
.LVL375:
.LBB407:
.LBB408:
	.loc 1 379 0
	movw r30,r20
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r12,Z
	ldi r18,lo8(-1)
.LVL376:
	cpse r12,r18
	rjmp .L443
.L434:
.LBE408:
.LBE407:
	.loc 1 500 0
	ldi r24,lo8(-128)
.LVL377:
.L343:
	.loc 1 500 0 is_stmt 0 discriminator 4
	or r24,r12
	call serial1MIDISend
.LVL378:
	.loc 1 501 0 is_stmt 1 discriminator 4
	mov r24,r11
	call serial1MIDISend
.LVL379:
	.loc 1 502 0 discriminator 4
	ldi r24,lo8(64)
	call serial1MIDISend
.LVL380:
	.loc 1 506 0 discriminator 4
	cpse r10,__zero_reg__
	rjmp .L405
	.loc 1 507 0
	lds r24,midiCoupler_2from3
	cpi r24,lo8(-1)
	brne .+2
	rjmp .L444
.L345:
.LVL381:
	.loc 1 510 0
	lds r24,midiCoupler_1from3
	cpi r24,lo8(-1)
	brne .+2
	rjmp .L445
.L351:
.LVL382:
	.loc 1 513 0
	lds r24,midiCoupler_Pfrom3
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L342
.LVL383:
.LBB411:
.LBB412:
.LBB413:
.LBB414:
.LBB415:
	.loc 1 417 0
	lds r24,manualMap+36
	ldd r19,Y+2
	cp r19,r24
	brlo .L357
	lds r25,manualMap+37
	cp r25,r19
	brlo .L357
	ldi r30,lo8(manualMap+36)
	ldi r31,hi8(manualMap+36)
.LVL384:
.L358:
	.loc 1 420 0
	ldd r25,Z+2
	add r19,r25
	sub r19,r24
	mov r24,r19
.LVL385:
.L439:
.LBE415:
.LBE414:
.LBE413:
.LBE412:
.LBE411:
.LBB420:
.LBB421:
.LBB422:
	.loc 1 461 0
	mov r30,r24
	andi r30,lo8(31)
.LVL386:
	.loc 1 462 0
	swap r24
.LVL387:
	lsr r24
	andi r24,lo8(7)
.LVL388:
	.loc 1 463 0
	ldd r25,Y+1
	.loc 1 465 0
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
.LVL389:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	movw r18,r16
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r24
	brpl 1b
	.loc 1 463 0
	cpi r25,lo8(32)
	breq .+2
	rjmp .L436
.LVL390:
.L437:
.LBE422:
.LBE421:
.LBE420:
.LBB435:
.LBB401:
.LBB386:
	.loc 1 468 0
	mov r25,r18
	com r25
	ldd r24,Z+1
	and r24,r25
	std Z+1,r24
.LVL391:
	rjmp .L342
.LVL392:
.L443:
.LBE386:
.LBE401:
.LBE435:
.LBB436:
.LBB409:
	.loc 1 379 0
	ldd r11,Y+2
	rjmp .L434
.LVL393:
.L357:
.LBE409:
.LBE436:
.LBB437:
.LBB419:
.LBB418:
.LBB417:
.LBB416:
	.loc 1 417 0
	lds r24,manualMap+39
	ldd r25,Y+2
	cp r25,r24
	brlo .L359
	mov r18,r25
	lds r25,manualMap+40
	cp r25,r18
	brlo .L359
	.loc 1 423 0
	ldi r30,lo8(manualMap+39)
	ldi r31,hi8(manualMap+39)
.LVL394:
	mov r19,r18
	rjmp .L358
.LVL395:
.L359:
	.loc 1 417 0
	lds r24,manualMap+42
	ldd r19,Y+2
	cp r19,r24
	brlo .L360
	lds r25,manualMap+43
	cp r25,r19
	brlo .L360
	.loc 1 423 0
	ldi r30,lo8(manualMap+42)
	ldi r31,hi8(manualMap+42)
.LVL396:
	rjmp .L358
.LVL397:
.L360:
	.loc 1 417 0
	lds r24,manualMap+45
	ldd r25,Y+2
	cp r25,r24
	brsh .+2
	rjmp .L342
	mov r18,r25
	lds r25,manualMap+46
	cp r25,r18
	brsh .+2
	rjmp .L342
	.loc 1 423 0
	ldi r30,lo8(manualMap+45)
	ldi r31,hi8(manualMap+45)
.LVL398:
	mov r19,r18
	rjmp .L358
.LVL399:
.L442:
.LBE416:
.LBE417:
.LBE418:
.LBE419:
.LBE437:
	.loc 1 493 0
	sts midiLastOutManual,r10
	.loc 1 494 0
	sts midiLastOutNote,r18
.LVL400:
.LBB438:
.LBB410:
	.loc 1 379 0
	movw r30,r20
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL401:
	cpi r24,lo8(-1)
	breq .L435
.LVL402:
	mov r11,r18
	mov r12,r24
.L435:
.LBE410:
.LBE438:
	.loc 1 500 0
	ldi r24,lo8(-112)
	rjmp .L343
.LVL403:
.L395:
.LBE492:
.LBB493:
.LBB490:
.LBB485:
	.loc 1 441 0
	ldi r20,lo8(1)
	ldi r21,0
.LBE485:
	.loc 1 449 0
	clr r10
	inc r10
	rjmp .L321
.LVL404:
.L399:
.LBB486:
	.loc 1 441 0
	ldi r20,lo8(2)
	ldi r21,0
.LBE486:
	.loc 1 449 0
	ldi r22,lo8(2)
	mov r10,r22
	rjmp .L321
.LVL405:
.L403:
.LBB487:
	.loc 1 441 0
	ldi r20,lo8(3)
	ldi r21,0
.LBE487:
	.loc 1 449 0
	ldi r24,lo8(3)
	mov r10,r24
.LVL406:
	rjmp .L321
.LVL407:
.L338:
.LBB488:
	.loc 1 444 0
	add r18,r25
.LVL408:
	sub r18,r24
.LVL409:
.LBE488:
.LBE490:
.LBE493:
.LBB494:
	.loc 1 491 0
	ldd r19,Y+1
	cpi r19,lo8(32)
	brne .+2
	rjmp .L384
	.loc 1 500 0
	ldi r24,lo8(-128)
.L383:
	or r24,r12
	call serial1MIDISend
.LVL410:
	.loc 1 501 0
	mov r24,r11
	call serial1MIDISend
.LVL411:
	.loc 1 502 0
	ldi r24,lo8(64)
	call serial1MIDISend
.LVL412:
	rjmp .L342
.LVL413:
.L445:
.LBB439:
.LBB440:
.LBB441:
.LBB442:
.LBB443:
	.loc 1 417 0
	lds r24,manualMap+24
	ldd r19,Y+2
	cp r19,r24
	brlo .L352
	lds r25,manualMap+25
	cp r25,r19
	brlo .L352
	ldi r30,lo8(manualMap+24)
	ldi r31,hi8(manualMap+24)
.LVL414:
.L353:
	.loc 1 420 0
	ldd r25,Z+2
	add r25,r19
	sub r25,r24
	mov r24,r25
.LVL415:
.LBE443:
.LBE442:
.LBE441:
.LBB446:
	.loc 1 461 0
	mov r30,r25
	andi r30,lo8(31)
.LVL416:
	.loc 1 462 0
	swap r24
.LVL417:
	lsr r24
	andi r24,lo8(7)
.LVL418:
	.loc 1 463 0
	ldd r25,Y+1
.LVL419:
	.loc 1 465 0
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
.LVL420:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	movw r18,r16
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r24
	brpl 1b
	.loc 1 463 0
	cpi r25,lo8(32)
	breq .+2
	rjmp .L446
	.loc 1 468 0
	mov r25,r18
	com r25
	ldd r24,Z+1
.LVL421:
	and r24,r25
	std Z+1,r24
	rjmp .L351
.LVL422:
.L352:
.LBE446:
.LBB447:
.LBB445:
.LBB444:
	.loc 1 417 0
	lds r24,manualMap+27
	ldd r25,Y+2
	cp r25,r24
	brlo .L354
	mov r18,r25
	lds r25,manualMap+28
	cp r25,r18
	brlo .L354
	.loc 1 423 0
	ldi r30,lo8(manualMap+27)
	ldi r31,hi8(manualMap+27)
.LVL423:
	mov r19,r18
	rjmp .L353
.LVL424:
.L354:
	.loc 1 417 0
	lds r24,manualMap+30
	ldd r19,Y+2
	cp r19,r24
	brlo .L355
	lds r25,manualMap+31
	cp r25,r19
	brlo .L355
	.loc 1 423 0
	ldi r30,lo8(manualMap+30)
	ldi r31,hi8(manualMap+30)
.LVL425:
	rjmp .L353
.LVL426:
.L355:
	.loc 1 417 0
	lds r24,manualMap+33
	ldd r25,Y+2
	cp r25,r24
	brsh .+2
	rjmp .L351
	mov r18,r25
	lds r25,manualMap+34
	cp r25,r18
	brsh .+2
	rjmp .L351
	.loc 1 423 0
	ldi r30,lo8(manualMap+33)
	ldi r31,hi8(manualMap+33)
.LVL427:
	mov r19,r18
	rjmp .L353
.LVL428:
.L444:
.LBE444:
.LBE445:
.LBE447:
.LBE440:
.LBE439:
.LBB450:
.LBB451:
.LBB452:
.LBB453:
.LBB454:
	.loc 1 417 0
	lds r24,manualMap+12
	ldd r25,Y+2
	cp r25,r24
	brlo .L346
	mov r18,r25
	lds r25,manualMap+13
	cp r25,r18
	brlo .L346
	ldi r30,lo8(manualMap+12)
	ldi r31,hi8(manualMap+12)
.LVL429:
.L347:
	.loc 1 420 0
	ldd r25,Z+2
	add r25,r18
	sub r25,r24
	mov r24,r25
.LVL430:
.LBE454:
.LBE453:
.LBE452:
.LBB457:
	.loc 1 461 0
	mov r30,r25
	andi r30,lo8(31)
.LVL431:
	.loc 1 462 0
	swap r24
.LVL432:
	lsr r24
	andi r24,lo8(7)
.LVL433:
	.loc 1 463 0
	ldd r19,Y+1
	.loc 1 465 0
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
.LVL434:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	.loc 1 463 0
	cpi r19,lo8(32)
	breq .+2
	rjmp .L447
	.loc 1 468 0
	movw r18,r16
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r24
	brpl 1b
	mov r25,r18
.LVL435:
	com r25
	ldd r24,Z+1
.LVL436:
	and r24,r25
	std Z+1,r24
	rjmp .L345
.LVL437:
.L346:
.LBE457:
.LBB458:
.LBB456:
.LBB455:
	.loc 1 417 0
	lds r24,manualMap+15
	ldd r19,Y+2
	cp r19,r24
	brlo .L348
	lds r25,manualMap+16
	cp r25,r19
	brlo .L348
	.loc 1 423 0
	ldi r30,lo8(manualMap+15)
	ldi r31,hi8(manualMap+15)
.LVL438:
	mov r18,r19
	rjmp .L347
.LVL439:
.L348:
	.loc 1 417 0
	lds r24,manualMap+18
	ldd r25,Y+2
	cp r25,r24
	brlo .L349
	mov r18,r25
	lds r25,manualMap+19
	cp r25,r18
	brlo .L349
	.loc 1 423 0
	ldi r30,lo8(manualMap+18)
	ldi r31,hi8(manualMap+18)
.LVL440:
	rjmp .L347
.LVL441:
.L349:
	.loc 1 417 0
	lds r24,manualMap+21
	ldd r19,Y+2
	cp r19,r24
	brsh .+2
	rjmp .L345
	lds r25,manualMap+22
	cp r25,r19
	brsh .+2
	rjmp .L345
	.loc 1 423 0
	ldi r30,lo8(manualMap+21)
	ldi r31,hi8(manualMap+21)
.LVL442:
	mov r18,r19
	rjmp .L347
.LVL443:
.L449:
.LBE455:
.LBE456:
.LBE458:
.LBE451:
.LBE450:
.LBB461:
.LBB402:
.LBB387:
	.loc 1 465 0
	movw r18,r16
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r24
	brpl 1b
.LVL444:
.L436:
	movw r24,r18
	ldd r25,Z+1
	or r24,r25
	std Z+1,r24
.LVL445:
	rjmp .L342
.LVL446:
.L446:
.LBE387:
.LBE402:
.LBE461:
.LBB462:
.LBB449:
.LBB448:
	movw r24,r18
.LVL447:
	ldd r25,Z+1
	or r24,r25
	std Z+1,r24
	rjmp .L351
.LVL448:
.L447:
.LBE448:
.LBE449:
.LBE462:
.LBB463:
.LBB460:
.LBB459:
	movw r18,r16
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r24
	brpl 1b
	movw r24,r18
.LVL449:
	ldd r25,Z+1
.LVL450:
	or r24,r25
	std Z+1,r24
	rjmp .L345
.LVL451:
.L405:
.LBE459:
.LBE460:
.LBE463:
	.loc 1 516 0
	ldi r19,lo8(1)
	cp r10,r19
	brne .+2
	rjmp .L448
	.loc 1 523 0
	ldi r19,lo8(2)
	cpse r10,r19
	rjmp .L342
	.loc 1 524 0
	lds r24,midiCoupler_Pfrom1
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L342
.LVL452:
.LBB464:
.LBB403:
.LBB388:
.LBB389:
.LBB390:
	.loc 1 417 0
	lds r25,manualMap+36
	ldd r24,Y+2
	cp r24,r25
	brlo .L376
	mov r18,r24
	lds r24,manualMap+37
	cp r24,r18
	brlo .+2
	rjmp .L421
.L376:
.LVL453:
	lds r25,manualMap+39
	ldd r19,Y+2
	cp r19,r25
	brlo .L378
	lds r24,manualMap+40
	cp r24,r19
	brlo .+2
	rjmp .L422
.L378:
.LVL454:
	lds r25,manualMap+42
	ldd r24,Y+2
	cp r24,r25
	brlo .L379
	mov r18,r24
	lds r24,manualMap+43
	cp r24,r18
	brlo .+2
	rjmp .L423
.L379:
.LVL455:
	lds r25,manualMap+45
	ldd r19,Y+2
	cp r19,r25
	brsh .+2
	rjmp .L342
	lds r24,manualMap+46
	cp r24,r19
	brsh .+2
	rjmp .L342
	.loc 1 423 0
	ldi r30,lo8(manualMap+45)
	ldi r31,hi8(manualMap+45)
.LVL456:
	mov r18,r19
.LVL457:
.L377:
	.loc 1 420 0
	ldd r24,Z+2
	add r24,r18
	sub r24,r25
.LVL458:
.LBE390:
.LBE389:
.LBE388:
.LBB397:
	.loc 1 461 0
	mov r30,r24
	andi r30,lo8(31)
.LVL459:
	.loc 1 462 0
	swap r24
.LVL460:
	lsr r24
	andi r24,lo8(7)
.LVL461:
	.loc 1 463 0
	ldd r19,Y+1
	.loc 1 465 0
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
.LVL462:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	.loc 1 463 0
	cpi r19,lo8(32)
	breq .+2
	rjmp .L449
	.loc 1 468 0
	movw r18,r16
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r24
	brpl 1b
	rjmp .L437
.LVL463:
.L448:
.LBE397:
.LBE403:
.LBE464:
	.loc 1 517 0
	lds r24,midiCoupler_1from2
	cpi r24,lo8(-1)
	breq .L450
.L365:
.LVL464:
	.loc 1 520 0
	lds r24,midiCoupler_Pfrom2
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L342
.LVL465:
.LBB465:
.LBB432:
.LBB423:
.LBB424:
.LBB425:
	.loc 1 417 0
	lds r25,manualMap+36
	ldd r19,Y+2
	cp r19,r25
	brlo .L371
	lds r24,manualMap+37
	cp r24,r19
	brlo .+2
	rjmp .L418
.L371:
.LVL466:
	lds r25,manualMap+39
	ldd r24,Y+2
	cp r24,r25
	brlo .L373
	mov r18,r24
	lds r24,manualMap+40
	cp r24,r18
	brlo .+2
	rjmp .L419
.L373:
.LVL467:
	lds r25,manualMap+42
	ldd r19,Y+2
	cp r19,r25
	brlo .L374
	lds r24,manualMap+43
	cp r24,r19
	brlo .+2
	rjmp .L420
.L374:
.LVL468:
	lds r25,manualMap+45
	ldd r24,Y+2
	cp r24,r25
	brsh .+2
	rjmp .L342
	mov r18,r24
	lds r24,manualMap+46
	cp r24,r18
	brsh .+2
	rjmp .L342
	.loc 1 423 0
	ldi r30,lo8(manualMap+45)
	ldi r31,hi8(manualMap+45)
.LVL469:
	mov r19,r18
.LVL470:
.L372:
	.loc 1 420 0
	ldd r24,Z+2
	add r24,r19
	sub r24,r25
	rjmp .L439
.LVL471:
.L450:
.LBE425:
.LBE424:
.LBE423:
.LBE432:
.LBE465:
.LBB466:
.LBB467:
.LBB468:
.LBB469:
.LBB470:
	.loc 1 417 0
	lds r25,manualMap+24
	ldd r24,Y+2
	cp r24,r25
	brlo .L366
	mov r18,r24
	lds r24,manualMap+25
	cp r24,r18
	brlo .+2
	rjmp .L415
.L366:
.LVL472:
	lds r25,manualMap+27
	ldd r19,Y+2
	cp r19,r25
	brlo .L368
	lds r24,manualMap+28
	cp r24,r19
	brlo .+2
	rjmp .L416
.L368:
.LVL473:
	lds r25,manualMap+30
	ldd r24,Y+2
	cp r24,r25
	brlo .L369
	mov r18,r24
	lds r24,manualMap+31
	cp r24,r18
	brlo .+2
	rjmp .L417
.L369:
.LVL474:
	lds r25,manualMap+33
	ldd r19,Y+2
	cp r19,r25
	brsh .+2
	rjmp .L365
	lds r24,manualMap+34
	cp r24,r19
	brsh .+2
	rjmp .L365
	.loc 1 423 0
	ldi r30,lo8(manualMap+33)
	ldi r31,hi8(manualMap+33)
.LVL475:
	mov r18,r19
.LVL476:
.L367:
	.loc 1 420 0
	ldd r24,Z+2
	add r24,r18
	sub r24,r25
.LVL477:
.LBE470:
.LBE469:
.LBE468:
.LBB473:
	.loc 1 461 0
	mov r30,r24
	andi r30,lo8(31)
.LVL478:
	.loc 1 462 0
	swap r24
.LVL479:
	lsr r24
	andi r24,lo8(7)
.LVL480:
	.loc 1 463 0
	ldd r19,Y+1
	.loc 1 465 0
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
.LVL481:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	.loc 1 463 0
	cpi r19,lo8(32)
	brne .L451
	.loc 1 468 0
	movw r18,r16
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r24
	brpl 1b
	mov r25,r18
	com r25
	ldd r24,Z+1
.LVL482:
	and r24,r25
	std Z+1,r24
	rjmp .L365
.LVL483:
.L451:
	.loc 1 465 0
	movw r18,r16
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r24
	brpl 1b
	movw r24,r18
.LVL484:
	ldd r25,Z+1
	or r24,r25
	std Z+1,r24
	rjmp .L365
.LVL485:
.L415:
.LBE473:
.LBB474:
.LBB472:
.LBB471:
	.loc 1 417 0
	ldi r30,lo8(manualMap+24)
	ldi r31,hi8(manualMap+24)
.LVL486:
	rjmp .L367
.LVL487:
.L416:
	.loc 1 423 0
	ldi r30,lo8(manualMap+27)
	ldi r31,hi8(manualMap+27)
.LVL488:
	mov r18,r19
	rjmp .L367
.LVL489:
.L417:
	ldi r30,lo8(manualMap+30)
	ldi r31,hi8(manualMap+30)
.LVL490:
	rjmp .L367
.LVL491:
.L422:
.LBE471:
.LBE472:
.LBE474:
.LBE467:
.LBE466:
.LBB475:
.LBB404:
.LBB398:
.LBB394:
.LBB391:
	ldi r30,lo8(manualMap+39)
	ldi r31,hi8(manualMap+39)
.LVL492:
	mov r18,r19
	rjmp .L377
.LVL493:
.L384:
.LBE391:
.LBE394:
.LBE398:
.LBE404:
.LBE475:
	.loc 1 493 0
	ldi r24,lo8(4)
	sts midiLastOutManual,r24
	.loc 1 494 0
	sts midiLastOutNote,r18
.LVL494:
	.loc 1 500 0
	ldi r24,lo8(-112)
	rjmp .L383
.LVL495:
.L421:
.LBB476:
.LBB405:
.LBB399:
.LBB395:
.LBB392:
	.loc 1 417 0
	ldi r30,lo8(manualMap+36)
	ldi r31,hi8(manualMap+36)
.LVL496:
	rjmp .L377
.LVL497:
.L420:
.LBE392:
.LBE395:
.LBE399:
.LBE405:
.LBE476:
.LBB477:
.LBB433:
.LBB430:
.LBB428:
.LBB426:
	.loc 1 423 0
	ldi r30,lo8(manualMap+42)
	ldi r31,hi8(manualMap+42)
.LVL498:
	rjmp .L372
.LVL499:
.L419:
	ldi r30,lo8(manualMap+39)
	ldi r31,hi8(manualMap+39)
.LVL500:
	mov r19,r18
	rjmp .L372
.LVL501:
.L423:
.LBE426:
.LBE428:
.LBE430:
.LBE433:
.LBE477:
.LBB478:
.LBB406:
.LBB400:
.LBB396:
.LBB393:
	ldi r30,lo8(manualMap+42)
	ldi r31,hi8(manualMap+42)
.LVL502:
	rjmp .L377
.LVL503:
.L418:
.LBE393:
.LBE396:
.LBE400:
.LBE406:
.LBE478:
.LBB479:
.LBB434:
.LBB431:
.LBB429:
.LBB427:
	.loc 1 417 0
	ldi r30,lo8(manualMap+36)
	ldi r31,hi8(manualMap+36)
.LVL504:
	rjmp .L372
.LBE427:
.LBE429:
.LBE431:
.LBE434:
.LBE479:
.LBE494:
.LBE495:
	.cfi_endproc
.LFE37:
	.size	midiKeyPress_Process, .-midiKeyPress_Process
	.section	.text.midiSendAllNotesOff,"ax",@progbits
.global	midiSendAllNotesOff
	.type	midiSendAllNotesOff, @function
midiSendAllNotesOff:
.LFB38:
	.loc 1 537 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL505:
.LBB496:
.LBB497:
	.loc 1 539 0
	lds r24,midiOutMap
.LVL506:
	.loc 1 540 0
	cpi r24,lo8(16)
	brlo .L457
.LVL507:
	.loc 1 539 0
	lds r24,midiOutMap+1
.LVL508:
	.loc 1 540 0
	cpi r24,lo8(16)
	brlo .L458
.L454:
.LVL509:
	.loc 1 539 0
	lds r24,midiOutMap+2
.LVL510:
	.loc 1 540 0
	cpi r24,lo8(16)
	brlo .L459
.L455:
.LVL511:
	.loc 1 539 0
	lds r24,midiOutMap+3
.LVL512:
	.loc 1 540 0
	cpi r24,lo8(16)
	brlo .L460
.L452:
	ret
.LVL513:
.L457:
	.loc 1 541 0
	ori r24,lo8(-80)
.LVL514:
	call serial1MIDISend
.LVL515:
	.loc 1 542 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL516:
	.loc 1 543 0
	ldi r24,0
	call serial1MIDISend
.LVL517:
	.loc 1 539 0
	lds r24,midiOutMap+1
.LVL518:
	.loc 1 540 0
	cpi r24,lo8(16)
	brsh .L454
.L458:
	.loc 1 541 0
	ori r24,lo8(-80)
.LVL519:
	call serial1MIDISend
.LVL520:
	.loc 1 542 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL521:
	.loc 1 543 0
	ldi r24,0
	call serial1MIDISend
.LVL522:
	.loc 1 539 0
	lds r24,midiOutMap+2
.LVL523:
	.loc 1 540 0
	cpi r24,lo8(16)
	brsh .L455
.L459:
	.loc 1 541 0
	ori r24,lo8(-80)
.LVL524:
	call serial1MIDISend
.LVL525:
	.loc 1 542 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL526:
	.loc 1 543 0
	ldi r24,0
	call serial1MIDISend
.LVL527:
	.loc 1 539 0
	lds r24,midiOutMap+3
.LVL528:
	.loc 1 540 0
	cpi r24,lo8(16)
	brsh .L452
.L460:
	.loc 1 541 0
	ori r24,lo8(-80)
.LVL529:
	call serial1MIDISend
.LVL530:
	.loc 1 542 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL531:
	.loc 1 543 0
	ldi r24,0
	jmp serial1MIDISend
.LVL532:
.LBE497:
.LBE496:
	.cfi_endproc
.LFE38:
	.size	midiSendAllNotesOff, .-midiSendAllNotesOff
	.section	.text.midi_SendActiveSense,"ax",@progbits
.global	midi_SendActiveSense
	.type	midi_SendActiveSense, @function
midi_SendActiveSense:
.LFB39:
	.loc 1 548 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 549 0
	ldi r24,lo8(-2)
	jmp serial1MIDISend
.LVL533:
	.cfi_endproc
.LFE39:
	.size	midi_SendActiveSense, .-midi_SendActiveSense
.global	midiLastInManual
	.section	.data.midiLastInManual,"aw",@progbits
	.type	midiLastInManual, @object
	.size	midiLastInManual, 1
midiLastInManual:
	.byte	-1
.global	midiLastInChannel
	.section	.data.midiLastInChannel,"aw",@progbits
	.type	midiLastInChannel, @object
	.size	midiLastInChannel, 1
midiLastInChannel:
	.byte	-1
.global	midiLastInNote
	.section	.data.midiLastInNote,"aw",@progbits
	.type	midiLastInNote, @object
	.size	midiLastInNote, 1
midiLastInNote:
	.byte	-1
.global	midiLastOutManual
	.section	.data.midiLastOutManual,"aw",@progbits
	.type	midiLastOutManual, @object
	.size	midiLastOutManual, 1
midiLastOutManual:
	.byte	-1
.global	midiLastOutNote
	.section	.data.midiLastOutNote,"aw",@progbits
	.type	midiLastOutNote, @object
	.size	midiLastOutNote, 1
midiLastOutNote:
	.byte	-1
.global	midiDataByteExpected
	.section	.data.midiDataByteExpected,"aw",@progbits
	.type	midiDataByteExpected, @object
	.size	midiDataByteExpected, 1
midiDataByteExpected:
	.byte	-1
	.comm	midiDataByteCount,1,1
	.comm	midiDataByte,2,1
	.comm	midiLastCommand,1,1
	.comm	programMap,512,1
	.comm	registerCount,1,1
	.comm	registerMap,64,1
.global	midiEEPromLoadError
	.section	.bss.midiEEPromLoadError,"aw",@nobits
	.type	midiEEPromLoadError, @object
	.size	midiEEPromLoadError, 1
midiEEPromLoadError:
	.zero	1
	.comm	midi_TxActivceSense,1,1
.global	midiRxActivceSensing
	.section	.bss.midiRxActivceSensing,"aw",@nobits
	.type	midiRxActivceSensing, @object
	.size	midiRxActivceSensing, 1
midiRxActivceSensing:
	.zero	1
	.comm	midiOutMap,4,1
	.comm	midiInMap,256,1
	.comm	manualMap,48,1
	.comm	midiCoupler_Pfrom1,1,1
	.comm	midiCoupler_Pfrom2,1,1
	.comm	midiCoupler_Pfrom3,1,1
	.comm	midiCoupler_1from2,1,1
	.comm	midiCoupler_1from3,1,1
	.comm	midiCoupler_2from3,1,1
	.comm	lcdData,10,1
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 ".././message.h"
	.file 5 ".././hwtimer.h"
	.file 6 ".././Midi.h"
	.file 7 ".././menu.h"
	.file 8 ".././serial.h"
	.file 9 ".././ee_prom.h"
	.file 10 ".././log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1898
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF134
	.byte	0xc
	.long	.LASF135
	.long	.LASF136
	.long	.Ldebug_ranges0+0x700
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x3
	.byte	0x7d
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x3
	.byte	0x7e
	.long	0x46
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF4
	.byte	0x3
	.byte	0x80
	.long	0x5f
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.long	0x3b
	.long	0x99
	.uleb128 0x6
	.long	0x82
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.byte	0x40
	.long	0xb8
	.uleb128 0x8
	.long	.LASF11
	.byte	0x4
	.byte	0x41
	.long	0x54
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0x42
	.long	0x89
	.byte	0
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x43
	.long	0x99
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.byte	0x4d
	.long	0xe8
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x4e
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x4f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF16
	.byte	0x5
	.byte	0x50
	.long	0xc3
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.long	0x16c
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0xa4
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0xa5
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0xa6
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0xa7
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0xa8
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0xa9
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0xaa
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0xab
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x2
	.long	.LASF25
	.byte	0x5
	.byte	0xac
	.long	0xf3
	.uleb128 0x9
	.byte	0x2
	.byte	0x6
	.byte	0x2a
	.long	0x19c
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0x2b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0x2c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF28
	.byte	0x6
	.byte	0x2d
	.long	0x177
	.uleb128 0x9
	.byte	0x2
	.byte	0x6
	.byte	0x2f
	.long	0x1cc
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.byte	0x30
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0x31
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF30
	.byte	0x6
	.byte	0x32
	.long	0x1a7
	.uleb128 0x9
	.byte	0x2
	.byte	0x6
	.byte	0x3c
	.long	0x1fc
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.byte	0x3d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.byte	0x3e
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF33
	.byte	0x6
	.byte	0x3f
	.long	0x1d7
	.uleb128 0x9
	.byte	0x3
	.byte	0x6
	.byte	0x41
	.long	0x23a
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.byte	0x42
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.byte	0x43
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.byte	0x44
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF37
	.byte	0x6
	.byte	0x45
	.long	0x207
	.uleb128 0x9
	.byte	0x4
	.byte	0x6
	.byte	0x6b
	.long	0x286
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.byte	0x6c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x6
	.byte	0x6d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.byte	0x6e
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.byte	0x6f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x6
	.byte	0x70
	.long	0x245
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.byte	0x74
	.long	0x2a8
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0x75
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x6
	.byte	0x76
	.long	0x291
	.uleb128 0xb
	.byte	0x2
	.long	0x3b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF43
	.uleb128 0xc
	.long	0x3b
	.uleb128 0x5
	.long	0x23a
	.long	0x2db
	.uleb128 0x6
	.long	0x82
	.byte	0x3
	.uleb128 0x6
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x286
	.long	0x2f1
	.uleb128 0x6
	.long	0x82
	.byte	0xf
	.uleb128 0x6
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x2a8
	.long	0x301
	.uleb128 0x6
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x3b
	.long	0x311
	.uleb128 0x6
	.long	0x82
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.long	0x3b
	.long	0x327
	.uleb128 0x6
	.long	0x82
	.byte	0x3f
	.uleb128 0x6
	.long	0x82
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	.LASF137
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x340
	.uleb128 0xe
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0x340
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x2c0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.long	0x3b
	.byte	0x1
	.long	0x3a6
	.uleb128 0x11
	.long	.LASF44
	.byte	0x1
	.byte	0xde
	.long	0x3b
	.uleb128 0x11
	.long	.LASF45
	.byte	0x1
	.byte	0xde
	.long	0x3b
	.uleb128 0x12
	.uleb128 0x13
	.long	.LASF46
	.byte	0x1
	.byte	0xe3
	.long	0x3b
	.uleb128 0x13
	.long	.LASF47
	.byte	0x1
	.byte	0xe4
	.long	0x3b
	.uleb128 0x13
	.long	.LASF48
	.byte	0x1
	.byte	0xe5
	.long	0x3b
	.uleb128 0x13
	.long	.LASF49
	.byte	0x1
	.byte	0xe6
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.word	0x104
	.byte	0x1
	.byte	0x1
	.long	0x3f4
	.uleb128 0x15
	.long	.LASF44
	.byte	0x1
	.word	0x104
	.long	0x3b
	.uleb128 0x15
	.long	.LASF50
	.byte	0x1
	.word	0x104
	.long	0x3b
	.uleb128 0x12
	.uleb128 0x16
	.long	.LASF46
	.byte	0x1
	.word	0x108
	.long	0x3b
	.uleb128 0x16
	.long	.LASF47
	.byte	0x1
	.word	0x109
	.long	0x3b
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.word	0x10a
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF52
	.byte	0x1
	.word	0x116
	.byte	0x1
	.byte	0x1
	.long	0x452
	.uleb128 0x15
	.long	.LASF53
	.byte	0x1
	.word	0x116
	.long	0x3b
	.uleb128 0x12
	.uleb128 0x16
	.long	.LASF54
	.byte	0x1
	.word	0x118
	.long	0x3b
	.uleb128 0x16
	.long	.LASF44
	.byte	0x1
	.word	0x119
	.long	0x3b
	.uleb128 0x16
	.long	.LASF55
	.byte	0x1
	.word	0x11a
	.long	0x2b3
	.uleb128 0x12
	.uleb128 0x16
	.long	.LASF56
	.byte	0x1
	.word	0x11b
	.long	0x3b
	.uleb128 0x12
	.uleb128 0x16
	.long	.LASF47
	.byte	0x1
	.word	0x11d
	.long	0x3b
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF138
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0xf
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.word	0x178
	.byte	0x1
	.long	0x19c
	.byte	0x1
	.long	0x4a0
	.uleb128 0x15
	.long	.LASF29
	.byte	0x1
	.word	0x178
	.long	0x3b
	.uleb128 0x15
	.long	.LASF27
	.byte	0x1
	.word	0x178
	.long	0x3b
	.uleb128 0x16
	.long	.LASF61
	.byte	0x1
	.word	0x179
	.long	0x19c
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.word	0x224
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.long	.LASF63
	.byte	0x1
	.word	0x1c8
	.byte	0x1
	.byte	0x1
	.long	0x504
	.uleb128 0x15
	.long	.LASF29
	.byte	0x1
	.word	0x1c8
	.long	0x3b
	.uleb128 0x15
	.long	.LASF27
	.byte	0x1
	.word	0x1c8
	.long	0x3b
	.uleb128 0x15
	.long	.LASF50
	.byte	0x1
	.word	0x1c8
	.long	0x3b
	.uleb128 0x16
	.long	.LASF64
	.byte	0x1
	.word	0x1c9
	.long	0x1fc
	.uleb128 0x12
	.uleb128 0x16
	.long	.LASF47
	.byte	0x1
	.word	0x1cd
	.long	0x3b
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.word	0x1ce
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF139
	.byte	0x1
	.byte	0x2e
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.long	.LASF65
	.byte	0x1
	.word	0x198
	.byte	0x1
	.long	0x1fc
	.byte	0x1
	.long	0x569
	.uleb128 0x15
	.long	.LASF29
	.byte	0x1
	.word	0x198
	.long	0x3b
	.uleb128 0x15
	.long	.LASF27
	.byte	0x1
	.word	0x198
	.long	0x3b
	.uleb128 0x16
	.long	.LASF61
	.byte	0x1
	.word	0x19a
	.long	0x1fc
	.uleb128 0x12
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.word	0x19d
	.long	0x569
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.word	0x19f
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x23a
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF74
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST0
	.byte	0x1
	.long	0x66c
	.uleb128 0x1d
	.long	.LASF26
	.byte	0x1
	.byte	0x4d
	.long	0x3b
	.long	.LLST1
	.uleb128 0x1e
	.long	.LASF67
	.byte	0x1
	.byte	0x4e
	.long	0x3b
	.long	.LLST2
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0
	.uleb128 0x1e
	.long	.LASF27
	.byte	0x1
	.byte	0x53
	.long	0x3b
	.long	.LLST3
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x20
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0x55
	.long	0x3b
	.long	.LLST4
	.uleb128 0x21
	.long	0x4aa
	.long	.LBB55
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x56
	.uleb128 0x22
	.long	0x4d1
	.long	.LLST5
	.uleb128 0x22
	.long	0x4c5
	.long	.LLST6
	.uleb128 0x22
	.long	0x4b9
	.long	.LLST7
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x23
	.long	0x4dd
	.long	.LLST8
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x60
	.long	0x621
	.uleb128 0x23
	.long	0x4ea
	.long	.LLST9
	.uleb128 0x23
	.long	0x4f6
	.long	.LLST10
	.byte	0
	.uleb128 0x25
	.long	0x519
	.long	.LBB58
	.long	.Ldebug_ranges0+0x78
	.byte	0x1
	.word	0x1ca
	.uleb128 0x22
	.long	0x538
	.long	.LLST11
	.uleb128 0x22
	.long	0x52c
	.long	.LLST12
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x78
	.uleb128 0x26
	.long	0x544
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x78
	.uleb128 0x23
	.long	0x551
	.long	.LLST13
	.uleb128 0x23
	.long	0x55d
	.long	.LLST14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x346
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x68d
	.uleb128 0x28
	.long	.LVL25
	.byte	0x1
	.long	0x1826
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF68
	.byte	0x1
	.byte	0x63
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x6c0
	.uleb128 0x2a
	.long	0x346
	.long	.LBB76
	.long	.LBE76
	.byte	0x1
	.byte	0x68
	.uleb128 0x2b
	.long	.LVL26
	.long	0x1826
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF69
	.byte	0x1
	.byte	0x6e
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x752
	.uleb128 0x2c
	.long	.LBB78
	.long	.LBE78
	.long	0x730
	.uleb128 0x1e
	.long	.LASF70
	.byte	0x1
	.byte	0x72
	.long	0x3b
	.long	.LLST15
	.uleb128 0x1e
	.long	.LASF71
	.byte	0x1
	.byte	0x72
	.long	0x3b
	.long	.LLST16
	.uleb128 0x2d
	.long	0x452
	.long	.LBB79
	.long	.LBE79
	.byte	0x1
	.byte	0x72
	.uleb128 0x2a
	.long	0x327
	.long	.LBB81
	.long	.LBE81
	.byte	0x1
	.byte	0x72
	.uleb128 0x2e
	.long	0x334
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1766
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x4a0
	.long	.LBB83
	.long	.LBE83
	.byte	0x1
	.byte	0x73
	.uleb128 0x2f
	.long	.LVL31
	.byte	0x1
	.long	0x1833
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.byte	0xca
	.long	.LFB24
	.long	.LFE24
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x7f1
	.uleb128 0x2c
	.long	.LBB85
	.long	.LBE85
	.long	0x79d
	.uleb128 0x13
	.long	.LASF73
	.byte	0x1
	.byte	0xd5
	.long	0x3b
	.uleb128 0x31
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x1e
	.long	.LASF44
	.byte	0x1
	.byte	0xd6
	.long	0x3b
	.long	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LVL32
	.long	0x1840
	.uleb128 0x2b
	.long	.LVL33
	.long	0x184d
	.uleb128 0x32
	.long	.LVL43
	.byte	0x1
	.long	0x185a
	.long	0x7d2
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x36
	.uleb128 0x30
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x33
	.long	.LVL44
	.long	0x185a
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x35
	.uleb128 0x30
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x34f
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x85a
	.uleb128 0x22
	.long	0x361
	.long	.LLST18
	.uleb128 0x2e
	.long	0x36c
	.byte	0x1
	.byte	0x66
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x98
	.uleb128 0x22
	.long	0x36c
	.long	.LLST19
	.uleb128 0x22
	.long	0x361
	.long	.LLST20
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x98
	.uleb128 0x23
	.long	0x378
	.long	.LLST21
	.uleb128 0x23
	.long	0x383
	.long	.LLST22
	.uleb128 0x23
	.long	0x38e
	.long	.LLST23
	.uleb128 0x23
	.long	0x399
	.long	.LLST24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST25
	.byte	0x1
	.long	0x90c
	.uleb128 0x1d
	.long	.LASF76
	.byte	0x1
	.byte	0xf5
	.long	0x2b3
	.long	.LLST26
	.uleb128 0x1e
	.long	.LASF49
	.byte	0x1
	.byte	0xf7
	.long	0x3b
	.long	.LLST27
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0xb0
	.uleb128 0x1e
	.long	.LASF44
	.byte	0x1
	.byte	0xf8
	.long	0x3b
	.long	.LLST28
	.uleb128 0x21
	.long	0x34f
	.long	.LBB101
	.long	.Ldebug_ranges0+0xc8
	.byte	0x1
	.byte	0xfc
	.uleb128 0x22
	.long	0x36c
	.long	.LLST29
	.uleb128 0x22
	.long	0x361
	.long	.LLST30
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x22
	.long	0x36c
	.long	.LLST31
	.uleb128 0x22
	.long	0x361
	.long	.LLST32
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x23
	.long	0x378
	.long	.LLST33
	.uleb128 0x23
	.long	0x383
	.long	.LLST34
	.uleb128 0x23
	.long	0x38e
	.long	.LLST35
	.uleb128 0x23
	.long	0x399
	.long	.LLST36
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x3a6
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x974
	.uleb128 0x22
	.long	0x3b5
	.long	.LLST37
	.uleb128 0x2e
	.long	0x3c1
	.byte	0x1
	.byte	0x66
	.uleb128 0x31
	.long	.LBB118
	.long	.LBE118
	.uleb128 0x22
	.long	0x3c1
	.long	.LLST38
	.uleb128 0x22
	.long	0x3b5
	.long	.LLST39
	.uleb128 0x31
	.long	.LBB119
	.long	.LBE119
	.uleb128 0x23
	.long	0x3ce
	.long	.LLST40
	.uleb128 0x23
	.long	0x3da
	.long	.LLST41
	.uleb128 0x23
	.long	0x3e6
	.long	.LLST42
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	0x3f4
	.long	.LFB28
	.long	.LFE28
	.long	.LLST43
	.byte	0x1
	.long	0xa3e
	.uleb128 0x22
	.long	0x403
	.long	.LLST44
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x108
	.uleb128 0x22
	.long	0x403
	.long	.LLST45
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x108
	.uleb128 0x23
	.long	0x410
	.long	.LLST46
	.uleb128 0x23
	.long	0x41c
	.long	.LLST47
	.uleb128 0x23
	.long	0x428
	.long	.LLST48
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x23
	.long	0x435
	.long	.LLST49
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x140
	.uleb128 0x23
	.long	0x442
	.long	.LLST50
	.uleb128 0x25
	.long	0x3a6
	.long	.LBB136
	.long	.Ldebug_ranges0+0x170
	.byte	0x1
	.word	0x11f
	.uleb128 0x22
	.long	0x3c1
	.long	.LLST51
	.uleb128 0x22
	.long	0x3b5
	.long	.LLST52
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x1d0
	.uleb128 0x22
	.long	0x3c1
	.long	.LLST53
	.uleb128 0x22
	.long	0x3b5
	.long	.LLST54
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x1d0
	.uleb128 0x23
	.long	0x3ce
	.long	.LLST55
	.uleb128 0x23
	.long	0x3da
	.long	.LLST56
	.uleb128 0x23
	.long	0x3e6
	.long	.LLST57
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.long	.LASF77
	.byte	0x1
	.word	0x128
	.long	.LFB29
	.long	.LFE29
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xaad
	.uleb128 0x36
	.long	.LASF78
	.byte	0x1
	.word	0x129
	.long	0xaad
	.long	.LLST58
	.uleb128 0x2c
	.long	.LBB186
	.long	.LBE186
	.long	0xa84
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.word	0x12c
	.long	0x3b
	.long	.LLST59
	.byte	0
	.uleb128 0x2b
	.long	.LVL138
	.long	0x1867
	.uleb128 0x2f
	.long	.LVL139
	.byte	0x1
	.long	0x185a
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x286
	.uleb128 0x35
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.word	0x14b
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xaf6
	.uleb128 0x2b
	.long	.LVL141
	.long	0x1874
	.uleb128 0x2f
	.long	.LVL142
	.byte	0x1
	.long	0x185a
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x32
	.uleb128 0x30
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.word	0x15c
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST60
	.byte	0x1
	.long	0xc3b
	.uleb128 0x39
	.long	.LASF26
	.byte	0x1
	.word	0x15c
	.long	0x3b
	.long	.LLST61
	.uleb128 0x3a
	.long	.LASF27
	.byte	0x1
	.word	0x15c
	.long	0x3b
	.byte	0x1
	.byte	0x66
	.uleb128 0x3a
	.long	.LASF50
	.byte	0x1
	.word	0x15c
	.long	0x3b
	.byte	0x1
	.byte	0x64
	.uleb128 0x36
	.long	.LASF81
	.byte	0x1
	.word	0x15e
	.long	0x3b
	.long	.LLST62
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x228
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.word	0x15f
	.long	0x3b
	.long	.LLST63
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x240
	.uleb128 0x36
	.long	.LASF82
	.byte	0x1
	.word	0x162
	.long	0x29
	.long	.LLST64
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x260
	.uleb128 0x36
	.long	.LASF29
	.byte	0x1
	.word	0x165
	.long	0x3b
	.long	.LLST65
	.uleb128 0x36
	.long	.LASF83
	.byte	0x1
	.word	0x166
	.long	0x3b
	.long	.LLST66
	.uleb128 0x25
	.long	0x4aa
	.long	.LBB199
	.long	.Ldebug_ranges0+0x280
	.byte	0x1
	.word	0x16b
	.uleb128 0x22
	.long	0x4d1
	.long	.LLST67
	.uleb128 0x22
	.long	0x4c5
	.long	.LLST68
	.uleb128 0x22
	.long	0x4b9
	.long	.LLST69
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x280
	.uleb128 0x23
	.long	0x4dd
	.long	.LLST70
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x2b0
	.long	0xbef
	.uleb128 0x23
	.long	0x4ea
	.long	.LLST71
	.uleb128 0x23
	.long	0x4f6
	.long	.LLST72
	.byte	0
	.uleb128 0x25
	.long	0x519
	.long	.LBB202
	.long	.Ldebug_ranges0+0x2d0
	.byte	0x1
	.word	0x1ca
	.uleb128 0x22
	.long	0x538
	.long	.LLST73
	.uleb128 0x22
	.long	0x52c
	.long	.LLST74
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x2d0
	.uleb128 0x26
	.long	0x544
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x2d0
	.uleb128 0x23
	.long	0x551
	.long	.LLST75
	.uleb128 0x23
	.long	0x55d
	.long	.LLST76
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF84
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST77
	.byte	0x1
	.long	0xdd4
	.uleb128 0x1d
	.long	.LASF85
	.byte	0x1
	.byte	0x7a
	.long	0x3b
	.long	.LLST78
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x2f0
	.long	0xd65
	.uleb128 0x1e
	.long	.LASF26
	.byte	0x1
	.byte	0xa2
	.long	0x3b
	.long	.LLST79
	.uleb128 0x1e
	.long	.LASF86
	.byte	0x1
	.byte	0xa3
	.long	0x3b
	.long	.LLST80
	.uleb128 0x3b
	.long	0x3f4
	.long	.LBB247
	.long	.Ldebug_ranges0+0x318
	.byte	0x1
	.byte	0xba
	.long	0xd52
	.uleb128 0x22
	.long	0x403
	.long	.LLST81
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x330
	.uleb128 0x22
	.long	0x403
	.long	.LLST82
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x330
	.uleb128 0x23
	.long	0x410
	.long	.LLST83
	.uleb128 0x23
	.long	0x41c
	.long	.LLST84
	.uleb128 0x23
	.long	0x428
	.long	.LLST85
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x348
	.uleb128 0x23
	.long	0x435
	.long	.LLST86
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x368
	.uleb128 0x23
	.long	0x442
	.long	.LLST87
	.uleb128 0x25
	.long	0x3a6
	.long	.LBB253
	.long	.Ldebug_ranges0+0x398
	.byte	0x1
	.word	0x11f
	.uleb128 0x22
	.long	0x3c1
	.long	.LLST88
	.uleb128 0x22
	.long	0x3b5
	.long	.LLST89
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x3f8
	.uleb128 0x22
	.long	0x3c1
	.long	.LLST90
	.uleb128 0x22
	.long	0x3b5
	.long	.LLST91
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x3f8
	.uleb128 0x23
	.long	0x3ce
	.long	.LLST92
	.uleb128 0x23
	.long	0x3da
	.long	.LLST93
	.uleb128 0x23
	.long	0x3e6
	.long	.LLST94
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LVL219
	.long	0xaf6
	.uleb128 0x2b
	.long	.LVL225
	.long	0x56f
	.byte	0
	.uleb128 0x3b
	.long	0x45f
	.long	.LBB306
	.long	.Ldebug_ranges0+0x450
	.byte	0x1
	.byte	0x92
	.long	0xd83
	.uleb128 0x28
	.long	.LVL224
	.byte	0x1
	.long	0x1826
	.byte	0
	.uleb128 0x31
	.long	.LBB311
	.long	.LBE311
	.uleb128 0x1e
	.long	.LASF70
	.byte	0x1
	.byte	0x90
	.long	0x3b
	.long	.LLST95
	.uleb128 0x1e
	.long	.LASF71
	.byte	0x1
	.byte	0x90
	.long	0x3b
	.long	.LLST96
	.uleb128 0x2d
	.long	0x452
	.long	.LBB312
	.long	.LBE312
	.byte	0x1
	.byte	0x90
	.uleb128 0x2a
	.long	0x327
	.long	.LBB314
	.long	.LBE314
	.byte	0x1
	.byte	0x90
	.uleb128 0x22
	.long	0x334
	.long	.LLST97
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x468
	.long	.LFB32
	.long	.LFE32
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xe00
	.uleb128 0x22
	.long	0x47b
	.long	.LLST98
	.uleb128 0x2e
	.long	0x487
	.byte	0x1
	.byte	0x66
	.uleb128 0x26
	.long	0x493
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.long	.LASF87
	.byte	0x1
	.word	0x185
	.long	.LFB33
	.long	.LFE33
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xe77
	.uleb128 0x2c
	.long	.LBB317
	.long	.LBE317
	.long	0xe4e
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.word	0x186
	.long	0x29
	.long	.LLST99
	.uleb128 0x31
	.long	.LBB318
	.long	.LBE318
	.uleb128 0x37
	.string	"j"
	.byte	0x1
	.word	0x188
	.long	0x29
	.long	.LLST100
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LVL266
	.long	0x1881
	.uleb128 0x2f
	.long	.LVL267
	.byte	0x1
	.long	0x185a
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x33
	.uleb128 0x30
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x519
	.long	.LFB34
	.long	.LFE34
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xebd
	.uleb128 0x22
	.long	0x52c
	.long	.LLST101
	.uleb128 0x22
	.long	0x538
	.long	.LLST102
	.uleb128 0x23
	.long	0x544
	.long	.LLST103
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x468
	.uleb128 0x23
	.long	0x551
	.long	.LLST104
	.uleb128 0x26
	.long	0x55d
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF88
	.byte	0x1
	.word	0x1af
	.byte	0x1
	.long	0x1cc
	.byte	0x1
	.long	0xf0d
	.uleb128 0x15
	.long	.LASF32
	.byte	0x1
	.word	0x1af
	.long	0x3b
	.uleb128 0x16
	.long	.LASF61
	.byte	0x1
	.word	0x1b3
	.long	0x1cc
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.word	0x1b4
	.long	0x569
	.uleb128 0x16
	.long	.LASF29
	.byte	0x1
	.word	0x1b6
	.long	0x3b
	.uleb128 0x12
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.word	0x1b8
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0xebd
	.long	.LFB35
	.long	.LFE35
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xf6b
	.uleb128 0x22
	.long	0xed0
	.long	.LLST105
	.uleb128 0x23
	.long	0xedc
	.long	.LLST106
	.uleb128 0x26
	.long	0xee8
	.uleb128 0x23
	.long	0xef4
	.long	.LLST107
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x480
	.long	0xf56
	.uleb128 0x23
	.long	0xf01
	.long	.LLST108
	.byte	0
	.uleb128 0x33
	.long	.LVL307
	.long	0x188e
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x30
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x4aa
	.long	.LFB36
	.long	.LFE36
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1006
	.uleb128 0x22
	.long	0x4b9
	.long	.LLST109
	.uleb128 0x22
	.long	0x4c5
	.long	.LLST110
	.uleb128 0x2e
	.long	0x4d1
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.long	0x4dd
	.long	.LLST111
	.uleb128 0x3c
	.long	0x519
	.long	.LBB331
	.long	.Ldebug_ranges0+0x4a0
	.byte	0x1
	.word	0x1ca
	.long	0xfe9
	.uleb128 0x22
	.long	0x538
	.long	.LLST112
	.uleb128 0x22
	.long	0x52c
	.long	.LLST113
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x4a0
	.uleb128 0x26
	.long	0x544
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x4b8
	.uleb128 0x23
	.long	0x551
	.long	.LLST114
	.uleb128 0x26
	.long	0x55d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LBB336
	.long	.LBE336
	.uleb128 0x23
	.long	0x4ea
	.long	.LLST115
	.uleb128 0x23
	.long	0x4f6
	.long	.LLST116
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.long	.LASF89
	.byte	0x1
	.word	0x1db
	.byte	0x1
	.long	.LFB37
	.long	.LFE37
	.long	.LLST117
	.byte	0x1
	.long	0x14cc
	.uleb128 0x39
	.long	.LASF90
	.byte	0x1
	.word	0x1db
	.long	0xb8
	.long	.LLST118
	.uleb128 0x36
	.long	.LASF91
	.byte	0x1
	.word	0x1dc
	.long	0x3b
	.long	.LLST119
	.uleb128 0x36
	.long	.LASF92
	.byte	0x1
	.word	0x1dd
	.long	0x3b
	.long	.LLST120
	.uleb128 0x36
	.long	.LASF93
	.byte	0x1
	.word	0x1de
	.long	0x3b
	.long	.LLST121
	.uleb128 0x36
	.long	.LASF40
	.byte	0x1
	.word	0x1df
	.long	0x1cc
	.long	.LLST122
	.uleb128 0x16
	.long	.LASF94
	.byte	0x1
	.word	0x1e0
	.long	0x19c
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x4d0
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.word	0x1e3
	.long	0x3b
	.long	.LLST123
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x4e8
	.long	0x1470
	.uleb128 0x16
	.long	.LASF86
	.byte	0x1
	.word	0x1f9
	.long	0x3b
	.uleb128 0x3c
	.long	0x4aa
	.long	.LBB383
	.long	.Ldebug_ranges0+0x508
	.byte	0x1
	.word	0x20d
	.long	0x1132
	.uleb128 0x3d
	.long	0x4d1
	.uleb128 0x3d
	.long	0x4c5
	.uleb128 0x3d
	.long	0x4b9
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x508
	.uleb128 0x23
	.long	0x4dd
	.long	.LLST124
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x548
	.long	0x10f2
	.uleb128 0x23
	.long	0x4ea
	.long	.LLST125
	.uleb128 0x23
	.long	0x4f6
	.long	.LLST126
	.byte	0
	.uleb128 0x25
	.long	0x519
	.long	.LBB388
	.long	.Ldebug_ranges0+0x570
	.byte	0x1
	.word	0x1ca
	.uleb128 0x3d
	.long	0x538
	.uleb128 0x3d
	.long	0x52c
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x570
	.uleb128 0x26
	.long	0x544
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x570
	.uleb128 0x23
	.long	0x551
	.long	.LLST127
	.uleb128 0x23
	.long	0x55d
	.long	.LLST128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	0x468
	.long	.LBB407
	.long	.Ldebug_ranges0+0x598
	.byte	0x1
	.word	0x1f1
	.long	0x1164
	.uleb128 0x22
	.long	0x487
	.long	.LLST129
	.uleb128 0x22
	.long	0x47b
	.long	.LLST130
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x598
	.uleb128 0x26
	.long	0x493
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	0x4aa
	.long	.LBB411
	.long	.Ldebug_ranges0+0x5b8
	.byte	0x1
	.word	0x202
	.long	0x11d1
	.uleb128 0x3d
	.long	0x4d1
	.uleb128 0x3d
	.long	0x4c5
	.uleb128 0x3d
	.long	0x4b9
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x5b8
	.uleb128 0x26
	.long	0x4dd
	.uleb128 0x25
	.long	0x519
	.long	.LBB413
	.long	.Ldebug_ranges0+0x5b8
	.byte	0x1
	.word	0x1ca
	.uleb128 0x3d
	.long	0x538
	.uleb128 0x3d
	.long	0x52c
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x5b8
	.uleb128 0x26
	.long	0x544
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x5b8
	.uleb128 0x23
	.long	0x551
	.long	.LLST131
	.uleb128 0x23
	.long	0x55d
	.long	.LLST132
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	0x4aa
	.long	.LBB420
	.long	.Ldebug_ranges0+0x5d0
	.byte	0x1
	.word	0x209
	.long	0x1262
	.uleb128 0x3d
	.long	0x4d1
	.uleb128 0x3d
	.long	0x4c5
	.uleb128 0x3d
	.long	0x4b9
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x5d0
	.uleb128 0x23
	.long	0x4dd
	.long	.LLST133
	.uleb128 0x2c
	.long	.LBB422
	.long	.LBE422
	.long	0x1222
	.uleb128 0x23
	.long	0x4ea
	.long	.LLST134
	.uleb128 0x23
	.long	0x4f6
	.long	.LLST135
	.byte	0
	.uleb128 0x25
	.long	0x519
	.long	.LBB423
	.long	.Ldebug_ranges0+0x5d8
	.byte	0x1
	.word	0x1ca
	.uleb128 0x3d
	.long	0x538
	.uleb128 0x3d
	.long	0x52c
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x5d8
	.uleb128 0x26
	.long	0x544
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x5d8
	.uleb128 0x23
	.long	0x551
	.long	.LLST136
	.uleb128 0x23
	.long	0x55d
	.long	.LLST137
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	0x4aa
	.long	.LBB439
	.long	.Ldebug_ranges0+0x5f8
	.byte	0x1
	.word	0x1ff
	.long	0x12ef
	.uleb128 0x3d
	.long	0x4d1
	.uleb128 0x3d
	.long	0x4c5
	.uleb128 0x3d
	.long	0x4b9
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x5f8
	.uleb128 0x23
	.long	0x4dd
	.long	.LLST138
	.uleb128 0x3c
	.long	0x519
	.long	.LBB441
	.long	.Ldebug_ranges0+0x610
	.byte	0x1
	.word	0x1ca
	.long	0x12d5
	.uleb128 0x3d
	.long	0x538
	.uleb128 0x3d
	.long	0x52c
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x610
	.uleb128 0x26
	.long	0x544
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x610
	.uleb128 0x23
	.long	0x551
	.long	.LLST139
	.uleb128 0x23
	.long	0x55d
	.long	.LLST140
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x628
	.uleb128 0x23
	.long	0x4ea
	.long	.LLST141
	.uleb128 0x23
	.long	0x4f6
	.long	.LLST142
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	0x4aa
	.long	.LBB450
	.long	.Ldebug_ranges0+0x640
	.byte	0x1
	.word	0x1fc
	.long	0x137c
	.uleb128 0x3d
	.long	0x4d1
	.uleb128 0x3d
	.long	0x4c5
	.uleb128 0x3d
	.long	0x4b9
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x640
	.uleb128 0x23
	.long	0x4dd
	.long	.LLST143
	.uleb128 0x3c
	.long	0x519
	.long	.LBB452
	.long	.Ldebug_ranges0+0x658
	.byte	0x1
	.word	0x1ca
	.long	0x1362
	.uleb128 0x3d
	.long	0x538
	.uleb128 0x3d
	.long	0x52c
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x658
	.uleb128 0x26
	.long	0x544
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x658
	.uleb128 0x23
	.long	0x551
	.long	.LLST144
	.uleb128 0x23
	.long	0x55d
	.long	.LLST145
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x670
	.uleb128 0x23
	.long	0x4ea
	.long	.LLST146
	.uleb128 0x23
	.long	0x4f6
	.long	.LLST147
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	0x4aa
	.long	.LBB466
	.long	.LBE466
	.byte	0x1
	.word	0x206
	.long	0x1411
	.uleb128 0x3d
	.long	0x4d1
	.uleb128 0x3d
	.long	0x4c5
	.uleb128 0x3d
	.long	0x4b9
	.uleb128 0x31
	.long	.LBB467
	.long	.LBE467
	.uleb128 0x23
	.long	0x4dd
	.long	.LLST148
	.uleb128 0x3c
	.long	0x519
	.long	.LBB468
	.long	.Ldebug_ranges0+0x688
	.byte	0x1
	.word	0x1ca
	.long	0x13f3
	.uleb128 0x3d
	.long	0x538
	.uleb128 0x3d
	.long	0x52c
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x688
	.uleb128 0x26
	.long	0x544
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x688
	.uleb128 0x23
	.long	0x551
	.long	.LLST149
	.uleb128 0x23
	.long	0x55d
	.long	.LLST150
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LBB473
	.long	.LBE473
	.uleb128 0x23
	.long	0x4ea
	.long	.LLST151
	.uleb128 0x23
	.long	0x4f6
	.long	.LLST152
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LVL378
	.long	0x1833
	.uleb128 0x3f
	.long	.LVL379
	.long	0x1833
	.long	0x142e
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x3f
	.long	.LVL380
	.long	0x1833
	.long	0x1442
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x2b
	.long	.LVL410
	.long	0x1833
	.uleb128 0x3f
	.long	.LVL411
	.long	0x1833
	.long	0x145f
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.long	.LVL412
	.long	0x1833
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0xebd
	.long	.LBB480
	.long	.Ldebug_ranges0+0x6a0
	.byte	0x1
	.word	0x1e7
	.uleb128 0x22
	.long	0xed0
	.long	.LLST153
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x6a0
	.uleb128 0x26
	.long	0xedc
	.uleb128 0x26
	.long	0xee8
	.uleb128 0x23
	.long	0xef4
	.long	.LLST154
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x6c0
	.long	0x14b4
	.uleb128 0x23
	.long	0xf01
	.long	.LLST155
	.byte	0
	.uleb128 0x33
	.long	.LVL368
	.long	0x188e
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x30
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.long	.LASF95
	.byte	0x1
	.word	0x219
	.long	.LFB38
	.long	.LFE38
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x15d6
	.uleb128 0x31
	.long	.LBB496
	.long	.LBE496
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.word	0x21a
	.long	0x3b
	.long	.LLST156
	.uleb128 0x31
	.long	.LBB497
	.long	.LBE497
	.uleb128 0x36
	.long	.LASF96
	.byte	0x1
	.word	0x21b
	.long	0x3b
	.long	.LLST157
	.uleb128 0x2b
	.long	.LVL515
	.long	0x1833
	.uleb128 0x3f
	.long	.LVL516
	.long	0x1833
	.long	0x1533
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x3f
	.long	.LVL517
	.long	0x1833
	.long	0x1546
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.long	.LVL520
	.long	0x1833
	.uleb128 0x3f
	.long	.LVL521
	.long	0x1833
	.long	0x1563
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x3f
	.long	.LVL522
	.long	0x1833
	.long	0x1576
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.long	.LVL525
	.long	0x1833
	.uleb128 0x3f
	.long	.LVL526
	.long	0x1833
	.long	0x1593
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x3f
	.long	.LVL527
	.long	0x1833
	.long	0x15a6
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.long	.LVL530
	.long	0x1833
	.uleb128 0x3f
	.long	.LVL531
	.long	0x1833
	.long	0x15c3
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x2f
	.long	.LVL532
	.byte	0x1
	.long	0x1833
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	0x4a0
	.long	.LFB39
	.long	.LFE39
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x15fe
	.uleb128 0x2f
	.long	.LVL533
	.byte	0x1
	.long	0x1833
	.uleb128 0x30
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x160e
	.long	0x160e
	.uleb128 0x6
	.long	0x82
	.byte	0x8
	.byte	0
	.uleb128 0x40
	.long	0xe8
	.uleb128 0x41
	.long	.LASF97
	.byte	0x5
	.byte	0x51
	.long	0x1620
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	0x15fe
	.uleb128 0x5
	.long	0x16c
	.long	0x1635
	.uleb128 0x6
	.long	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x41
	.long	.LASF98
	.byte	0x5
	.byte	0xad
	.long	0x1625
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.long	.LASF99
	.byte	0x5
	.byte	0xb4
	.long	0x164f
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	0x3b
	.uleb128 0x42
	.long	.LASF100
	.byte	0x1
	.byte	0x22
	.long	0x2c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	manualMap
	.uleb128 0x42
	.long	.LASF101
	.byte	0x1
	.byte	0x23
	.long	0x2db
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiInMap
	.uleb128 0x42
	.long	.LASF102
	.byte	0x1
	.byte	0x24
	.long	0x2f1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiOutMap
	.uleb128 0x42
	.long	.LASF103
	.byte	0x1
	.byte	0x28
	.long	0x301
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerMap
	.uleb128 0x42
	.long	.LASF104
	.byte	0x1
	.byte	0x29
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerCount
	.uleb128 0x42
	.long	.LASF105
	.byte	0x1
	.byte	0x2a
	.long	0x311
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	programMap
	.uleb128 0x42
	.long	.LASF106
	.byte	0x1
	.byte	0x25
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxActivceSensing
	.uleb128 0x42
	.long	.LASF107
	.byte	0x1
	.byte	0x26
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_TxActivceSense
	.uleb128 0x42
	.long	.LASF108
	.byte	0x1
	.byte	0x3f
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutNote
	.uleb128 0x42
	.long	.LASF109
	.byte	0x1
	.byte	0x40
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutManual
	.uleb128 0x42
	.long	.LASF110
	.byte	0x1
	.byte	0x41
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInNote
	.uleb128 0x42
	.long	.LASF111
	.byte	0x1
	.byte	0x42
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInChannel
	.uleb128 0x42
	.long	.LASF112
	.byte	0x1
	.byte	0x43
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInManual
	.uleb128 0x42
	.long	.LASF113
	.byte	0x1
	.byte	0x1c
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiCoupler_2from3
	.uleb128 0x42
	.long	.LASF114
	.byte	0x1
	.byte	0x1d
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiCoupler_1from3
	.uleb128 0x42
	.long	.LASF115
	.byte	0x1
	.byte	0x1e
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiCoupler_1from2
	.uleb128 0x42
	.long	.LASF116
	.byte	0x1
	.byte	0x1f
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiCoupler_Pfrom3
	.uleb128 0x42
	.long	.LASF117
	.byte	0x1
	.byte	0x20
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiCoupler_Pfrom2
	.uleb128 0x42
	.long	.LASF118
	.byte	0x1
	.byte	0x21
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiCoupler_Pfrom1
	.uleb128 0x5
	.long	0x3b
	.long	0x17ba
	.uleb128 0x6
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x42
	.long	.LASF119
	.byte	0x7
	.byte	0x9c
	.long	0x17aa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x42
	.long	.LASF120
	.byte	0x1
	.byte	0x27
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiEEPromLoadError
	.uleb128 0x42
	.long	.LASF121
	.byte	0x1
	.byte	0x3a
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastCommand
	.uleb128 0x42
	.long	.LASF122
	.byte	0x1
	.byte	0x3b
	.long	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByte
	.uleb128 0x42
	.long	.LASF123
	.byte	0x1
	.byte	0x3c
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteCount
	.uleb128 0x42
	.long	.LASF124
	.byte	0x1
	.byte	0x3d
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteExpected
	.uleb128 0x43
	.byte	0x1
	.byte	0x1
	.long	.LASF125
	.long	.LASF125
	.byte	0x5
	.byte	0x58
	.uleb128 0x43
	.byte	0x1
	.byte	0x1
	.long	.LASF126
	.long	.LASF126
	.byte	0x8
	.byte	0x4e
	.uleb128 0x43
	.byte	0x1
	.byte	0x1
	.long	.LASF127
	.long	.LASF127
	.byte	0x9
	.byte	0x1c
	.uleb128 0x43
	.byte	0x1
	.byte	0x1
	.long	.LASF128
	.long	.LASF128
	.byte	0x9
	.byte	0x1d
	.uleb128 0x43
	.byte	0x1
	.byte	0x1
	.long	.LASF129
	.long	.LASF129
	.byte	0xa
	.byte	0x32
	.uleb128 0x43
	.byte	0x1
	.byte	0x1
	.long	.LASF130
	.long	.LASF130
	.byte	0x9
	.byte	0x18
	.uleb128 0x43
	.byte	0x1
	.byte	0x1
	.long	.LASF131
	.long	.LASF131
	.byte	0x9
	.byte	0x19
	.uleb128 0x43
	.byte	0x1
	.byte	0x1
	.long	.LASF132
	.long	.LASF132
	.byte	0x9
	.byte	0x17
	.uleb128 0x43
	.byte	0x1
	.byte	0x1
	.long	.LASF133
	.long	.LASF133
	.byte	0xa
	.byte	0x33
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
	.uleb128 0x3
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
	.uleb128 0xa
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x35
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x27
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
	.uleb128 0x39
	.uleb128 0x5
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
	.uleb128 0x3a
	.uleb128 0x5
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
	.uleb128 0x3b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.long	.LFB19
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
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI11
	.long	.LFE19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.word	0x1
	.byte	0x68
	.long	.LVL2
	.long	.LFE19
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL3
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL3
	.long	.LVL13
	.word	0x5
	.byte	0x34
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14
	.word	0x5
	.byte	0x35
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.word	0x5
	.byte	0x34
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL16
	.long	.LFE19
	.word	0x5
	.byte	0x34
	.byte	0x7a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL7
	.word	0x1
	.byte	0x69
	.long	.LVL7
	.long	.LVL12
	.word	0x3
	.byte	0x89
	.sleb128 1
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.word	0x1
	.byte	0x69
	.long	.LVL16
	.long	.LFE19
	.word	0x3
	.byte	0x89
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL5
	.long	.LVL6
	.word	0x1
	.byte	0x68
	.long	.LVL6
	.long	.LVL7
	.word	0x2
	.byte	0x8c
	.sleb128 2
	.long	.LVL7
	.long	.LVL11
	.word	0xd
	.byte	0x8c
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x8c
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x22
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.word	0xe
	.byte	0x89
	.sleb128 0
	.byte	0x20
	.byte	0x8c
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x22
	.byte	0x8c
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x22
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.word	0xd
	.byte	0x8c
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x8c
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x22
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL16
	.long	.LFE19
	.word	0xd
	.byte	0x8c
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x8c
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL7
	.long	.LVL11
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL16
	.long	.LFE19
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL7
	.long	.LVL11
	.word	0x1
	.byte	0x69
	.long	.LVL16
	.long	.LFE19
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST7:
	.long	.LVL7
	.long	.LVL11
	.word	0x2
	.byte	0x8c
	.sleb128 0
	.long	.LVL16
	.long	.LFE19
	.word	0x2
	.byte	0x8c
	.sleb128 0
	.long	0
	.long	0
.LLST8:
	.long	.LVL18
	.long	.LVL21
	.word	0x7
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LVL22
	.word	0x6
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST9:
	.long	.LVL18
	.long	.LVL19
	.word	0x5
	.byte	0x82
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20
	.word	0x1
	.byte	0x6e
	.long	.LVL20
	.long	.LVL21
	.word	0x5
	.byte	0x82
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL18
	.long	.LVL21
	.word	0x5
	.byte	0x82
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL7
	.long	.LVL11
	.word	0x1
	.byte	0x69
	.long	.LVL16
	.long	.LVL18
	.word	0x1
	.byte	0x69
	.long	.LVL22
	.long	.LFE19
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST12:
	.long	.LVL7
	.long	.LVL11
	.word	0x2
	.byte	0x8c
	.sleb128 0
	.long	.LVL16
	.long	.LVL18
	.word	0x2
	.byte	0x8c
	.sleb128 0
	.long	.LVL22
	.long	.LFE19
	.word	0x2
	.byte	0x8c
	.sleb128 0
	.long	0
	.long	0
.LLST13:
	.long	.LVL7
	.long	.LVL8
	.word	0x10
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.long	manualMap
	.byte	0x22
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.word	0x3
	.byte	0x8a
	.sleb128 3
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.word	0x3
	.byte	0x8a
	.sleb128 6
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.word	0x3
	.byte	0x8a
	.sleb128 9
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.word	0x10
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.long	manualMap
	.byte	0x22
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.word	0x3
	.byte	0x8a
	.sleb128 3
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.word	0x3
	.byte	0x8a
	.sleb128 6
	.byte	0x9f
	.long	.LVL24
	.long	.LFE19
	.word	0x3
	.byte	0x8a
	.sleb128 9
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL7
	.long	.LVL8
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL24
	.long	.LFE19
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL27
	.long	.LVL30
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST16:
	.long	.LVL28
	.long	.LVL29
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL29
	.long	.LFE22
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL34
	.long	.LVL35
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL35
	.long	.LVL36
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL36
	.long	.LVL37
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL37
	.long	.LVL38
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL38
	.long	.LVL39
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL39
	.long	.LVL40
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL40
	.long	.LVL41
	.word	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL41
	.long	.LVL42
	.word	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL42
	.long	.LVL43
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL45
	.long	.LVL48
	.word	0x1
	.byte	0x68
	.long	.LVL48
	.long	.LVL56
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL56
	.long	.LVL57
	.word	0x1
	.byte	0x68
	.long	.LVL57
	.long	.LFE25
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL46
	.long	.LVL56
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST20:
	.long	.LVL46
	.long	.LVL48
	.word	0x1
	.byte	0x68
	.long	.LVL48
	.long	.LVL56
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL47
	.long	.LVL50
	.word	0x1
	.byte	0x62
	.long	.LVL50
	.long	.LVL52
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST22:
	.long	.LVL47
	.long	.LVL50
	.word	0x5
	.byte	0x82
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL50
	.long	.LVL51
	.word	0x1
	.byte	0x62
	.long	.LVL51
	.long	.LVL52
	.word	0x7
	.byte	0x8e
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL47
	.long	.LVL50
	.word	0x5
	.byte	0x82
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.long	.LVL50
	.long	.LVL52
	.word	0x7
	.byte	0x8e
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL49
	.long	.LVL53
	.word	0x1
	.byte	0x68
	.long	.LVL54
	.long	.LVL55
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST25:
	.long	.LFB26
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI14
	.long	.LFE26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST26:
	.long	.LVL58
	.long	.LVL60
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL60
	.long	.LVL77
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL77
	.long	.LVL78
	.word	0x3
	.byte	0x8a
	.sleb128 1
	.byte	0x9f
	.long	.LVL78
	.long	.LFE26
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST27:
	.long	.LVL61
	.long	.LVL62
	.word	0x1
	.byte	0x62
	.long	.LVL69
	.long	.LVL73
	.word	0x1
	.byte	0x62
	.long	.LVL73
	.long	.LVL74
	.word	0x1
	.byte	0x63
	.long	.LVL76
	.long	.LVL79
	.word	0x1
	.byte	0x62
	.long	.LVL79
	.long	.LVL80
	.word	0x2
	.byte	0x8a
	.sleb128 -1
	.long	0
	.long	0
.LLST28:
	.long	.LVL59
	.long	.LVL61
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL71
	.long	.LVL74
	.word	0x1
	.byte	0x69
	.long	.LVL79
	.long	.LVL80
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST29:
	.long	.LVL62
	.long	.LVL68
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL73
	.long	.LVL75
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL81
	.long	.LFE26
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL62
	.long	.LVL68
	.word	0x1
	.byte	0x69
	.long	.LVL73
	.long	.LVL75
	.word	0x1
	.byte	0x69
	.long	.LVL81
	.long	.LFE26
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST31:
	.long	.LVL63
	.long	.LVL70
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL81
	.long	.LFE26
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL63
	.long	.LVL70
	.word	0x1
	.byte	0x69
	.long	.LVL81
	.long	.LFE26
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST33:
	.long	.LVL64
	.long	.LVL66
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST34:
	.long	.LVL64
	.long	.LVL66
	.word	0x5
	.byte	0x8e
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL66
	.long	.LVL67
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST35:
	.long	.LVL64
	.long	.LVL66
	.word	0x5
	.byte	0x8e
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL65
	.long	.LVL68
	.word	0x1
	.byte	0x6c
	.long	.LVL81
	.long	.LVL82
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST37:
	.long	.LVL83
	.long	.LVL85
	.word	0x1
	.byte	0x68
	.long	.LVL85
	.long	.LFE27
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL84
	.long	.LVL91
	.word	0x1
	.byte	0x66
	.long	.LVL92
	.long	.LFE27
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST39:
	.long	.LVL84
	.long	.LVL85
	.word	0x1
	.byte	0x68
	.long	.LVL85
	.long	.LVL91
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL92
	.long	.LFE27
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LVL85
	.long	.LVL87
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST41:
	.long	.LVL86
	.long	.LVL89
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST42:
	.long	.LVL88
	.long	.LVL90
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST43:
	.long	.LFB28
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI26
	.long	.LFE28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	0
	.long	0
.LLST44:
	.long	.LVL93
	.long	.LVL95
	.word	0x1
	.byte	0x68
	.long	.LVL95
	.long	.LFE28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL94
	.long	.LVL95
	.word	0x1
	.byte	0x68
	.long	.LVL95
	.long	.LVL124
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL125
	.long	.LFE28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL95
	.long	.LVL97
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL97
	.long	.LVL107
	.word	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap
	.byte	0x22
	.long	.LVL108
	.long	.LVL120
	.word	0x1
	.byte	0x68
	.long	.LVL120
	.long	.LVL121
	.word	0x5
	.byte	0x88
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.long	.LVL121
	.long	.LVL122
	.word	0x1
	.byte	0x68
	.long	.LVL122
	.long	.LVL124
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL125
	.long	.LVL132
	.word	0x1
	.byte	0x68
	.long	.LVL132
	.long	.LVL134
	.word	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap
	.byte	0x22
	.long	0
	.long	0
.LLST47:
	.long	.LVL98
	.long	.LVL100
	.word	0x1
	.byte	0x60
	.long	.LVL100
	.long	.LVL104
	.word	0x1
	.byte	0x5e
	.long	.LVL108
	.long	.LVL124
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL125
	.long	.LVL132
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL94
	.long	.LVL95
	.word	0xe
	.byte	0x88
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.long	programMap
	.byte	0x22
	.byte	0x9f
	.long	.LVL95
	.long	.LVL96
	.word	0x12
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap+1
	.byte	0x22
	.byte	0x9f
	.long	.LVL96
	.long	.LVL97
	.word	0x12
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap
	.byte	0x22
	.byte	0x9f
	.long	.LVL97
	.long	.LVL123
	.word	0x12
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap+1
	.byte	0x22
	.byte	0x9f
	.long	.LVL123
	.long	.LVL124
	.word	0x12
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap
	.byte	0x22
	.byte	0x9f
	.long	.LVL125
	.long	.LFE28
	.word	0x12
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap+1
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST49:
	.long	.LVL94
	.long	.LVL95
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL95
	.long	.LVL96
	.word	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.long	.LVL96
	.long	.LVL122
	.word	0x1
	.byte	0x62
	.long	.LVL122
	.long	.LVL123
	.word	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.long	.LVL123
	.long	.LVL124
	.word	0x1
	.byte	0x62
	.long	.LVL125
	.long	.LFE28
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST50:
	.long	.LVL95
	.long	.LVL97
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL97
	.long	.LVL108
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL108
	.long	.LVL111
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL111
	.long	.LVL113
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL113
	.long	.LVL115
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL115
	.long	.LVL117
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL117
	.long	.LVL119
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL119
	.long	.LVL120
	.word	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL120
	.long	.LVL122
	.word	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL122
	.long	.LVL124
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL125
	.long	.LVL126
	.word	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL126
	.long	.LVL127
	.word	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL127
	.long	.LVL128
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL128
	.long	.LVL129
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL129
	.long	.LVL130
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL130
	.long	.LVL131
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL131
	.long	.LVL132
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL132
	.long	.LFE28
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LVL98
	.long	.LVL107
	.word	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap
	.byte	0x22
	.long	.LVL108
	.long	.LVL110
	.word	0x1
	.byte	0x68
	.long	.LVL111
	.long	.LVL112
	.word	0x1
	.byte	0x68
	.long	.LVL113
	.long	.LVL114
	.word	0x1
	.byte	0x68
	.long	.LVL115
	.long	.LVL116
	.word	0x1
	.byte	0x68
	.long	.LVL117
	.long	.LVL118
	.word	0x1
	.byte	0x68
	.long	.LVL119
	.long	.LVL120
	.word	0x1
	.byte	0x68
	.long	.LVL120
	.long	.LVL121
	.word	0x5
	.byte	0x88
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.long	.LVL121
	.long	.LVL122
	.word	0x1
	.byte	0x68
	.long	.LVL125
	.long	.LVL132
	.word	0x1
	.byte	0x68
	.long	.LVL132
	.long	.LVL134
	.word	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap
	.byte	0x22
	.long	0
	.long	0
.LLST52:
	.long	.LVL98
	.long	.LVL100
	.word	0x1
	.byte	0x60
	.long	.LVL100
	.long	.LVL104
	.word	0x1
	.byte	0x5e
	.long	.LVL108
	.long	.LVL110
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL111
	.long	.LVL112
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL113
	.long	.LVL114
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL115
	.long	.LVL116
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL117
	.long	.LVL118
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL119
	.long	.LVL122
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL125
	.long	.LVL132
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LVL99
	.long	.LVL107
	.word	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap
	.byte	0x22
	.long	.LVL109
	.long	.LVL120
	.word	0x1
	.byte	0x68
	.long	.LVL120
	.long	.LVL121
	.word	0x5
	.byte	0x88
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.long	.LVL121
	.long	.LVL124
	.word	0x1
	.byte	0x68
	.long	.LVL125
	.long	.LVL132
	.word	0x1
	.byte	0x68
	.long	.LVL132
	.long	.LVL134
	.word	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap
	.byte	0x22
	.long	0
	.long	0
.LLST54:
	.long	.LVL99
	.long	.LVL100
	.word	0x1
	.byte	0x60
	.long	.LVL100
	.long	.LVL104
	.word	0x1
	.byte	0x5e
	.long	.LVL109
	.long	.LVL124
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL125
	.long	.LVL132
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST55:
	.long	.LVL100
	.long	.LVL102
	.word	0x1
	.byte	0x60
	.long	.LVL102
	.long	.LVL106
	.word	0x2
	.byte	0x8a
	.sleb128 0
	.long	.LVL109
	.long	.LVL124
	.word	0x5
	.byte	0x3
	.long	registerMap+1
	.long	.LVL125
	.long	.LVL132
	.word	0x5
	.byte	0x3
	.long	registerMap+1
	.long	.LVL132
	.long	.LVL133
	.word	0x2
	.byte	0x8a
	.sleb128 0
	.long	0
	.long	0
.LLST56:
	.long	.LVL101
	.long	.LVL105
	.word	0x1
	.byte	0x69
	.long	.LVL105
	.long	.LVL106
	.word	0x7
	.byte	0x8a
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL109
	.long	.LVL124
	.word	0xa
	.byte	0x3
	.long	registerMap+1
	.byte	0x94
	.byte	0x1
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL125
	.long	.LVL132
	.word	0xa
	.byte	0x3
	.long	registerMap+1
	.byte	0x94
	.byte	0x1
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL132
	.long	.LVL133
	.word	0x7
	.byte	0x8a
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST57:
	.long	.LVL103
	.long	.LVL109
	.word	0x1
	.byte	0x60
	.long	.LVL109
	.long	.LVL124
	.word	0xa
	.byte	0x3
	.long	registerMap+1
	.byte	0x94
	.byte	0x1
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.long	.LVL125
	.long	.LVL132
	.word	0xa
	.byte	0x3
	.long	registerMap+1
	.byte	0x94
	.byte	0x1
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.long	.LVL132
	.long	.LFE28
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST58:
	.long	.LVL136
	.long	.LVL138-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST59:
	.long	.LVL135
	.long	.LVL136
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST60:
	.long	.LFB31
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI29
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI30
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI31
	.long	.LFE31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST61:
	.long	.LVL143
	.long	.LVL144
	.word	0x1
	.byte	0x68
	.long	.LVL144
	.long	.LVL161
	.word	0x1
	.byte	0x68
	.long	.LVL161
	.long	.LVL162
	.word	0x5
	.byte	0x3
	.long	midiLastInChannel
	.long	.LVL162
	.long	.LFE31
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST62:
	.long	.LVL144
	.long	.LVL145
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL145
	.long	.LVL148
	.word	0x1
	.byte	0x65
	.long	.LVL159
	.long	.LVL162
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST63:
	.long	.LVL144
	.long	.LVL145
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL145
	.long	.LVL159
	.word	0x5
	.byte	0x34
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL159
	.long	.LVL160
	.word	0x5
	.byte	0x35
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL160
	.long	.LFE31
	.word	0x5
	.byte	0x34
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST64:
	.long	.LVL146
	.long	.LVL151
	.word	0x1
	.byte	0x61
	.long	.LVL151
	.long	.LVL152
	.word	0x1
	.byte	0x60
	.long	.LVL152
	.long	.LVL159
	.word	0x8
	.byte	0x86
	.sleb128 0
	.byte	0x8e
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x1c
	.byte	0x9f
	.long	.LVL162
	.long	.LVL163
	.word	0x1
	.byte	0x61
	.long	.LVL163
	.long	.LVL171
	.word	0x8
	.byte	0x86
	.sleb128 0
	.byte	0x8e
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x1c
	.byte	0x9f
	.long	.LVL173
	.long	.LVL175
	.word	0x8
	.byte	0x86
	.sleb128 0
	.byte	0x8e
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x1c
	.byte	0x9f
	.long	.LVL177
	.long	.LFE31
	.word	0x8
	.byte	0x86
	.sleb128 0
	.byte	0x8e
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST65:
	.long	.LVL147
	.long	.LVL154
	.word	0x1
	.byte	0x62
	.long	.LVL154
	.long	.LVL159
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL162
	.long	.LVL163
	.word	0x1
	.byte	0x62
	.long	.LVL163
	.long	.LVL171
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL173
	.long	.LVL175
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL177
	.long	.LFE31
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST66:
	.long	.LVL149
	.long	.LVL159
	.word	0x1
	.byte	0x65
	.long	.LVL162
	.long	.LVL172
	.word	0x1
	.byte	0x65
	.long	.LVL173
	.long	.LVL176
	.word	0x1
	.byte	0x65
	.long	.LVL177
	.long	.LFE31
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST67:
	.long	.LVL150
	.long	.LVL159
	.word	0x1
	.byte	0x64
	.long	.LVL163
	.long	.LFE31
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST68:
	.long	.LVL150
	.long	.LVL159
	.word	0x1
	.byte	0x65
	.long	.LVL163
	.long	.LVL172
	.word	0x1
	.byte	0x65
	.long	.LVL173
	.long	.LVL176
	.word	0x1
	.byte	0x65
	.long	.LVL177
	.long	.LFE31
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST69:
	.long	.LVL150
	.long	.LVL154
	.word	0x1
	.byte	0x62
	.long	.LVL154
	.long	.LVL159
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL163
	.long	.LVL171
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL173
	.long	.LVL175
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL177
	.long	.LFE31
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST70:
	.long	.LVL165
	.long	.LVL167
	.word	0x7
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL167
	.long	.LVL171
	.word	0x6
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL173
	.long	.LVL175
	.word	0x6
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST71:
	.long	.LVL166
	.long	.LVL169
	.word	0x1
	.byte	0x6a
	.long	0
	.long	0
.LLST72:
	.long	.LVL168
	.long	.LVL170
	.word	0x1
	.byte	0x63
	.long	.LVL173
	.long	.LVL174
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST73:
	.long	.LVL150
	.long	.LVL159
	.word	0x1
	.byte	0x65
	.long	.LVL163
	.long	.LVL165
	.word	0x1
	.byte	0x65
	.long	.LVL177
	.long	.LFE31
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST74:
	.long	.LVL150
	.long	.LVL154
	.word	0x1
	.byte	0x62
	.long	.LVL154
	.long	.LVL159
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL163
	.long	.LVL165
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL177
	.long	.LFE31
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST75:
	.long	.LVL153
	.long	.LVL155
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL155
	.long	.LVL156
	.word	0x3
	.byte	0x8a
	.sleb128 3
	.byte	0x9f
	.long	.LVL156
	.long	.LVL157
	.word	0x3
	.byte	0x8a
	.sleb128 6
	.byte	0x9f
	.long	.LVL157
	.long	.LVL159
	.word	0x3
	.byte	0x8a
	.sleb128 9
	.byte	0x9f
	.long	.LVL163
	.long	.LVL164
	.word	0x3
	.byte	0x8a
	.sleb128 9
	.byte	0x9f
	.long	.LVL177
	.long	.LVL178
	.word	0x3
	.byte	0x8a
	.sleb128 6
	.byte	0x9f
	.long	.LVL178
	.long	.LVL179
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL179
	.long	.LVL180
	.word	0x3
	.byte	0x8a
	.sleb128 3
	.byte	0x9f
	.long	.LVL180
	.long	.LFE31
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST76:
	.long	.LVL153
	.long	.LVL155
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL155
	.long	.LVL156
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL156
	.long	.LVL157
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL157
	.long	.LVL159
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL163
	.long	.LVL164
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL177
	.long	.LVL179
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL179
	.long	.LFE31
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST77:
	.long	.LFB23
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI32
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI33
	.long	.LCFI34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI34
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI35
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI36
	.long	.LCFI37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI37
	.long	.LCFI38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI38
	.long	.LCFI39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI39
	.long	.LCFI40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI40
	.long	.LCFI41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI41
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI42
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI43
	.long	.LFE23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	0
	.long	0
.LLST78:
	.long	.LVL181
	.long	.LVL182
	.word	0x1
	.byte	0x68
	.long	.LVL182
	.long	.LVL215
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL215
	.long	.LVL216
	.word	0x1
	.byte	0x68
	.long	.LVL216
	.long	.LVL217
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL217
	.long	.LVL220
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL220
	.long	.LVL221
	.word	0x1
	.byte	0x68
	.long	.LVL221
	.long	.LVL222
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL222
	.long	.LVL223
	.word	0x1
	.byte	0x68
	.long	.LVL223
	.long	.LVL224-1
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL224-1
	.long	.LVL227
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL227
	.long	.LVL228
	.word	0x1
	.byte	0x68
	.long	.LVL228
	.long	.LVL232
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL232
	.long	.LVL234
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL234
	.long	.LVL235
	.word	0x1
	.byte	0x68
	.long	.LVL235
	.long	.LVL236
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL236
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST79:
	.long	.LVL183
	.long	.LVL186
	.word	0x1
	.byte	0x68
	.long	.LVL186
	.long	.LVL215
	.word	0xa
	.byte	0x3
	.long	midiLastCommand
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL218
	.long	.LVL219-1
	.word	0x1
	.byte	0x68
	.long	.LVL224
	.long	.LVL225-1
	.word	0x1
	.byte	0x68
	.long	.LVL226
	.long	.LVL227
	.word	0x1
	.byte	0x68
	.long	.LVL236
	.long	.LFE23
	.word	0xa
	.byte	0x3
	.long	midiLastCommand
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST80:
	.long	.LVL226
	.long	.LVL227
	.word	0xa
	.byte	0x3
	.long	midiDataByte+1
	.byte	0x94
	.byte	0x1
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	0
	.long	0
.LLST81:
	.long	.LVL184
	.long	.LVL187
	.word	0x1
	.byte	0x6e
	.long	.LVL187
	.long	.LVL215
	.word	0x5
	.byte	0x3
	.long	midiDataByte
	.long	.LVL236
	.long	.LFE23
	.word	0x5
	.byte	0x3
	.long	midiDataByte
	.long	0
	.long	0
.LLST82:
	.long	.LVL185
	.long	.LVL187
	.word	0x1
	.byte	0x6e
	.long	.LVL187
	.long	.LVL215
	.word	0x5
	.byte	0x3
	.long	midiDataByte
	.long	.LVL236
	.long	.LFE23
	.word	0x5
	.byte	0x3
	.long	midiDataByte
	.long	0
	.long	0
.LLST83:
	.long	.LVL188
	.long	.LVL190
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL190
	.long	.LVL200
	.word	0x15
	.byte	0x3
	.long	midiDataByte
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap
	.byte	0x22
	.long	.LVL201
	.long	.LVL213
	.word	0x1
	.byte	0x68
	.long	.LVL213
	.long	.LVL214
	.word	0x5
	.byte	0x88
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.long	.LVL214
	.long	.LVL215
	.word	0x1
	.byte	0x68
	.long	.LVL236
	.long	.LVL243
	.word	0x1
	.byte	0x68
	.long	.LVL243
	.long	.LVL245
	.word	0x15
	.byte	0x3
	.long	midiDataByte
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap
	.byte	0x22
	.long	0
	.long	0
.LLST84:
	.long	.LVL191
	.long	.LVL193
	.word	0x1
	.byte	0x60
	.long	.LVL193
	.long	.LVL197
	.word	0x1
	.byte	0x5e
	.long	.LVL201
	.long	.LVL215
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL236
	.long	.LVL243
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST85:
	.long	.LVL185
	.long	.LVL187
	.word	0xe
	.byte	0x8e
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.long	programMap
	.byte	0x22
	.byte	0x9f
	.long	.LVL187
	.long	.LVL188
	.word	0x13
	.byte	0x3
	.long	midiDataByte
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.long	programMap
	.byte	0x22
	.byte	0x9f
	.long	.LVL188
	.long	.LVL189
	.word	0x16
	.byte	0x3
	.long	midiDataByte
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap+1
	.byte	0x22
	.byte	0x9f
	.long	.LVL189
	.long	.LVL190
	.word	0x16
	.byte	0x3
	.long	midiDataByte
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap
	.byte	0x22
	.byte	0x9f
	.long	.LVL190
	.long	.LVL215
	.word	0x16
	.byte	0x3
	.long	midiDataByte
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap+1
	.byte	0x22
	.byte	0x9f
	.long	.LVL236
	.long	.LFE23
	.word	0x16
	.byte	0x3
	.long	midiDataByte
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap+1
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST86:
	.long	.LVL185
	.long	.LVL188
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL188
	.long	.LVL189
	.word	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.long	.LVL189
	.long	.LVL215
	.word	0x1
	.byte	0x62
	.long	.LVL236
	.long	.LFE23
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST87:
	.long	.LVL188
	.long	.LVL190
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL190
	.long	.LVL201
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL201
	.long	.LVL204
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL204
	.long	.LVL206
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL206
	.long	.LVL208
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL208
	.long	.LVL210
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL210
	.long	.LVL212
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL212
	.long	.LVL213
	.word	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL213
	.long	.LVL215
	.word	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL236
	.long	.LVL237
	.word	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL237
	.long	.LVL238
	.word	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL238
	.long	.LVL239
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL239
	.long	.LVL240
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL240
	.long	.LVL241
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL241
	.long	.LVL242
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL242
	.long	.LVL243
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL243
	.long	.LFE23
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST88:
	.long	.LVL191
	.long	.LVL200
	.word	0x15
	.byte	0x3
	.long	midiDataByte
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap
	.byte	0x22
	.long	.LVL201
	.long	.LVL203
	.word	0x1
	.byte	0x68
	.long	.LVL204
	.long	.LVL205
	.word	0x1
	.byte	0x68
	.long	.LVL206
	.long	.LVL207
	.word	0x1
	.byte	0x68
	.long	.LVL208
	.long	.LVL209
	.word	0x1
	.byte	0x68
	.long	.LVL210
	.long	.LVL211
	.word	0x1
	.byte	0x68
	.long	.LVL212
	.long	.LVL213
	.word	0x1
	.byte	0x68
	.long	.LVL213
	.long	.LVL214
	.word	0x5
	.byte	0x88
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.long	.LVL214
	.long	.LVL215
	.word	0x1
	.byte	0x68
	.long	.LVL236
	.long	.LVL243
	.word	0x1
	.byte	0x68
	.long	.LVL243
	.long	.LVL245
	.word	0x15
	.byte	0x3
	.long	midiDataByte
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap
	.byte	0x22
	.long	0
	.long	0
.LLST89:
	.long	.LVL191
	.long	.LVL193
	.word	0x1
	.byte	0x60
	.long	.LVL193
	.long	.LVL197
	.word	0x1
	.byte	0x5e
	.long	.LVL201
	.long	.LVL203
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL204
	.long	.LVL205
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL206
	.long	.LVL207
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL208
	.long	.LVL209
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL210
	.long	.LVL211
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL212
	.long	.LVL215
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL236
	.long	.LVL243
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST90:
	.long	.LVL192
	.long	.LVL200
	.word	0x15
	.byte	0x3
	.long	midiDataByte
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap
	.byte	0x22
	.long	.LVL202
	.long	.LVL213
	.word	0x1
	.byte	0x68
	.long	.LVL213
	.long	.LVL214
	.word	0x5
	.byte	0x88
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.long	.LVL214
	.long	.LVL215
	.word	0x1
	.byte	0x68
	.long	.LVL236
	.long	.LVL243
	.word	0x1
	.byte	0x68
	.long	.LVL243
	.long	.LVL245
	.word	0x15
	.byte	0x3
	.long	midiDataByte
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.long	programMap
	.byte	0x22
	.long	0
	.long	0
.LLST91:
	.long	.LVL192
	.long	.LVL193
	.word	0x1
	.byte	0x60
	.long	.LVL193
	.long	.LVL197
	.word	0x1
	.byte	0x5e
	.long	.LVL202
	.long	.LVL215
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL236
	.long	.LVL243
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST92:
	.long	.LVL193
	.long	.LVL195
	.word	0x1
	.byte	0x60
	.long	.LVL195
	.long	.LVL199
	.word	0x2
	.byte	0x8a
	.sleb128 0
	.long	.LVL202
	.long	.LVL215
	.word	0x5
	.byte	0x3
	.long	registerMap+1
	.long	.LVL236
	.long	.LVL243
	.word	0x5
	.byte	0x3
	.long	registerMap+1
	.long	.LVL243
	.long	.LVL244
	.word	0x2
	.byte	0x8a
	.sleb128 0
	.long	0
	.long	0
.LLST93:
	.long	.LVL194
	.long	.LVL198
	.word	0x1
	.byte	0x69
	.long	.LVL198
	.long	.LVL199
	.word	0x7
	.byte	0x8a
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL202
	.long	.LVL215
	.word	0xa
	.byte	0x3
	.long	registerMap+1
	.byte	0x94
	.byte	0x1
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL236
	.long	.LVL243
	.word	0xa
	.byte	0x3
	.long	registerMap+1
	.byte	0x94
	.byte	0x1
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL243
	.long	.LVL244
	.word	0x7
	.byte	0x8a
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST94:
	.long	.LVL196
	.long	.LVL202
	.word	0x1
	.byte	0x60
	.long	.LVL202
	.long	.LVL215
	.word	0xa
	.byte	0x3
	.long	registerMap+1
	.byte	0x94
	.byte	0x1
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.long	.LVL236
	.long	.LVL243
	.word	0xa
	.byte	0x3
	.long	registerMap+1
	.byte	0x94
	.byte	0x1
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.long	.LVL243
	.long	.LFE23
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST95:
	.long	.LVL229
	.long	.LVL233
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST96:
	.long	.LVL230
	.long	.LVL231
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL231
	.long	.LVL234
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST97:
	.long	.LVL231
	.long	.LVL234
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+3468
	.sleb128 0
	.long	0
	.long	0
.LLST98:
	.long	.LVL246
	.long	.LVL248
	.word	0x1
	.byte	0x68
	.long	.LVL248
	.long	.LFE32
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST99:
	.long	.LVL249
	.long	.LVL253
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL253
	.long	.LVL257
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL257
	.long	.LVL261
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL261
	.long	.LVL265
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL265
	.long	.LFE33
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	0
	.long	0
.LLST100:
	.long	.LVL249
	.long	.LVL250
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL250
	.long	.LVL251
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL251
	.long	.LVL252
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL252
	.long	.LVL253
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL253
	.long	.LVL254
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL254
	.long	.LVL255
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL255
	.long	.LVL256
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL256
	.long	.LVL257
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL257
	.long	.LVL258
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL258
	.long	.LVL259
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL259
	.long	.LVL260
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL260
	.long	.LVL261
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL261
	.long	.LVL262
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL262
	.long	.LVL263
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL263
	.long	.LVL264
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL264
	.long	.LVL265
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL265
	.long	.LFE33
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	0
	.long	0
.LLST101:
	.long	.LVL268
	.long	.LVL270
	.word	0x1
	.byte	0x68
	.long	.LVL270
	.long	.LVL278
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL278
	.long	.LVL279
	.word	0x1
	.byte	0x68
	.long	.LVL279
	.long	.LFE34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST102:
	.long	.LVL268
	.long	.LVL281
	.word	0x1
	.byte	0x66
	.long	.LVL281
	.long	.LVL283
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL283
	.long	.LFE34
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST103:
	.long	.LVL276
	.long	.LVL277
	.word	0x7
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL280
	.long	.LVL281
	.word	0x6
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL281
	.long	.LVL282
	.word	0xc
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x86
	.sleb128 0
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL282
	.long	.LVL283
	.word	0x7
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST104:
	.long	.LVL269
	.long	.LVL271
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL271
	.long	.LVL272
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL272
	.long	.LVL273
	.word	0x3
	.byte	0x8e
	.sleb128 3
	.byte	0x9f
	.long	.LVL273
	.long	.LVL274
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL274
	.long	.LVL275
	.word	0x3
	.byte	0x8e
	.sleb128 6
	.byte	0x9f
	.long	.LVL275
	.long	.LVL276
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL278
	.long	.LVL283
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL283
	.long	.LFE34
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST105:
	.long	.LVL284
	.long	.LVL306
	.word	0x1
	.byte	0x68
	.long	.LVL306
	.long	.LVL307-1
	.word	0x1
	.byte	0x63
	.long	.LVL307-1
	.long	.LVL308
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL308
	.long	.LFE35
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST106:
	.long	.LVL305
	.long	.LVL308
	.word	0x7
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL310
	.long	.LVL311
	.word	0xe
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x83
	.sleb128 0
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x89
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL311
	.long	.LVL312
	.word	0x5
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST107:
	.long	.LVL285
	.long	.LVL289
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL289
	.long	.LVL293
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL293
	.long	.LVL297
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL297
	.long	.LVL301
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL301
	.long	.LVL305
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL305
	.long	.LVL308
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL308
	.long	.LVL310
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL313
	.long	.LVL314
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL314
	.long	.LVL315
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL315
	.long	.LVL316
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL316
	.long	.LFE35
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST108:
	.long	.LVL285
	.long	.LVL286
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL286
	.long	.LVL287
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL287
	.long	.LVL288
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL288
	.long	.LVL289
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL289
	.long	.LVL290
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL290
	.long	.LVL291
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL291
	.long	.LVL292
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL292
	.long	.LVL293
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL293
	.long	.LVL294
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL294
	.long	.LVL295
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL295
	.long	.LVL296
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL296
	.long	.LVL297
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL297
	.long	.LVL298
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL298
	.long	.LVL299
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL299
	.long	.LVL300
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL300
	.long	.LVL301
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL301
	.long	.LVL302
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL302
	.long	.LVL303
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL303
	.long	.LVL304
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL304
	.long	.LVL305
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL305
	.long	.LVL308
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL308
	.long	.LVL309
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST109:
	.long	.LVL317
	.long	.LVL319
	.word	0x1
	.byte	0x68
	.long	.LVL319
	.long	.LVL326
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL326
	.long	.LVL327
	.word	0x1
	.byte	0x68
	.long	.LVL327
	.long	.LFE36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST110:
	.long	.LVL317
	.long	.LVL329
	.word	0x1
	.byte	0x66
	.long	.LVL329
	.long	.LVL337
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL337
	.long	.LFE36
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST111:
	.long	.LVL330
	.long	.LVL332
	.word	0x7
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.long	.LVL332
	.long	.LVL334
	.word	0x10
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x88
	.sleb128 0
	.byte	0x22
	.byte	0x89
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL334
	.long	.LVL335
	.word	0x6
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL336
	.long	.LVL337
	.word	0x6
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST112:
	.long	.LVL317
	.long	.LVL329
	.word	0x1
	.byte	0x66
	.long	.LVL329
	.long	.LVL330
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL337
	.long	.LFE36
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST113:
	.long	.LVL317
	.long	.LVL319
	.word	0x1
	.byte	0x68
	.long	.LVL319
	.long	.LVL326
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL326
	.long	.LVL327
	.word	0x1
	.byte	0x68
	.long	.LVL327
	.long	.LVL330
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL337
	.long	.LFE36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST114:
	.long	.LVL318
	.long	.LVL320
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL320
	.long	.LVL321
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL321
	.long	.LVL322
	.word	0x3
	.byte	0x8e
	.sleb128 3
	.byte	0x9f
	.long	.LVL322
	.long	.LVL323
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL323
	.long	.LVL324
	.word	0x3
	.byte	0x8e
	.sleb128 6
	.byte	0x9f
	.long	.LVL324
	.long	.LVL325
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL326
	.long	.LVL330
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL337
	.long	.LFE36
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST115:
	.long	.LVL331
	.long	.LVL334
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST116:
	.long	.LVL333
	.long	.LVL337
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST117:
	.long	.LFB37
	.long	.LCFI44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI44
	.long	.LCFI45
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI45
	.long	.LCFI46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI46
	.long	.LCFI47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI47
	.long	.LCFI48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI48
	.long	.LCFI49
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI49
	.long	.LCFI50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI50
	.long	.LCFI51
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI51
	.long	.LCFI52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI52
	.long	.LCFI53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI53
	.long	.LCFI54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI54
	.long	.LCFI55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI55
	.long	.LFE37
	.word	0x2
	.byte	0x8c
	.sleb128 16
	.long	0
	.long	0
.LLST118:
	.long	.LVL338
	.long	.LVL339
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL339
	.long	.LVL341
	.word	0x5
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL345
	.long	.LVL363
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL369
	.long	.LVL377
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL392
	.long	.LVL393
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL399
	.long	.LVL401
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL403
	.long	.LVL406
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST119:
	.long	.LVL339
	.long	.LVL340
	.word	0x6
	.byte	0x89
	.sleb128 0
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x9f
	.long	.LVL340
	.long	.LVL342
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST120:
	.long	.LVL339
	.long	.LVL341
	.word	0x5
	.byte	0x89
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL341
	.long	.LVL342
	.word	0x1
	.byte	0x69
	.long	.LVL342
	.long	.LVL369
	.word	0x1
	.byte	0x5d
	.long	.LVL370
	.long	.LFE37
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST121:
	.long	.LVL339
	.long	.LVL342
	.word	0x1
	.byte	0x68
	.long	.LVL343
	.long	.LVL345
	.word	0x1
	.byte	0x63
	.long	.LVL345
	.long	.LVL369
	.word	0x2
	.byte	0x8c
	.sleb128 3
	.long	.LVL370
	.long	.LVL391
	.word	0x2
	.byte	0x8c
	.sleb128 3
	.long	.LVL392
	.long	.LVL445
	.word	0x2
	.byte	0x8c
	.sleb128 3
	.long	.LVL446
	.long	.LFE37
	.word	0x2
	.byte	0x8c
	.sleb128 3
	.long	0
	.long	0
.LLST122:
	.long	.LVL368
	.long	.LVL369
	.word	0x7
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL374
	.long	.LVL376
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.long	.LVL376
	.long	.LVL391
	.word	0x7
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x8c
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.long	.LVL391
	.long	.LVL392
	.word	0x5
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL392
	.long	.LVL399
	.word	0x7
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x8c
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.long	.LVL399
	.long	.LVL403
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.long	.LVL409
	.long	.LVL410-1
	.word	0x7
	.byte	0x34
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.long	.LVL410-1
	.long	.LVL413
	.word	0x6
	.byte	0x34
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL413
	.long	.LVL445
	.word	0x7
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x8c
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.long	.LVL445
	.long	.LVL446
	.word	0x5
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL446
	.long	.LVL493
	.word	0x7
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x8c
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.long	.LVL493
	.long	.LVL495
	.word	0x7
	.byte	0x34
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.long	.LVL495
	.long	.LFE37
	.word	0x7
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x8c
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST123:
	.long	.LVL342
	.long	.LVL343
	.word	0x1
	.byte	0x5e
	.long	.LVL343
	.long	.LVL344
	.word	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.long	.LVL344
	.long	.LVL369
	.word	0x1
	.byte	0x5e
	.long	.LVL370
	.long	.LFE37
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST124:
	.long	.LVL443
	.long	.LVL444
	.word	0x6
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL458
	.long	.LVL460
	.word	0x7
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL460
	.long	.LVL463
	.word	0x6
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST125:
	.long	.LVL459
	.long	.LVL462
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST126:
	.long	.LVL443
	.long	.LVL444
	.word	0x1
	.byte	0x68
	.long	.LVL461
	.long	.LVL463
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST127:
	.long	.LVL456
	.long	.LVL458
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL492
	.long	.LVL493
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL496
	.long	.LVL497
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL502
	.long	.LVL503
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST128:
	.long	.LVL452
	.long	.LVL453
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL453
	.long	.LVL454
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL454
	.long	.LVL455
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL455
	.long	.LVL457
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL491
	.long	.LVL493
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL495
	.long	.LVL497
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL501
	.long	.LVL503
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST129:
	.long	.LVL375
	.long	.LVL376
	.word	0x1
	.byte	0x62
	.long	.LVL376
	.long	.LVL399
	.word	0x2
	.byte	0x8c
	.sleb128 2
	.long	.LVL400
	.long	.LVL403
	.word	0x2
	.byte	0x8c
	.sleb128 2
	.long	.LVL413
	.long	.LVL493
	.word	0x2
	.byte	0x8c
	.sleb128 2
	.long	.LVL494
	.long	.LVL495
	.word	0x1
	.byte	0x62
	.long	.LVL495
	.long	.LFE37
	.word	0x2
	.byte	0x8c
	.sleb128 2
	.long	0
	.long	0
.LLST130:
	.long	.LVL375
	.long	.LVL399
	.word	0x1
	.byte	0x5a
	.long	.LVL400
	.long	.LVL402
	.word	0x5
	.byte	0x3
	.long	midiLastOutManual
	.long	.LVL402
	.long	.LVL403
	.word	0x1
	.byte	0x5a
	.long	.LVL413
	.long	.LVL493
	.word	0x1
	.byte	0x5a
	.long	.LVL494
	.long	.LVL495
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL495
	.long	.LFE37
	.word	0x1
	.byte	0x5a
	.long	0
	.long	0
.LLST131:
	.long	.LVL384
	.long	.LVL385
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL394
	.long	.LVL395
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL396
	.long	.LVL397
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL398
	.long	.LVL399
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST132:
	.long	.LVL383
	.long	.LVL384
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL393
	.long	.LVL395
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL395
	.long	.LVL397
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL397
	.long	.LVL399
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST133:
	.long	.LVL385
	.long	.LVL387
	.word	0x7
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL387
	.long	.LVL390
	.word	0x6
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST134:
	.long	.LVL386
	.long	.LVL389
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST135:
	.long	.LVL388
	.long	.LVL390
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST136:
	.long	.LVL469
	.long	.LVL471
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL498
	.long	.LVL499
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL500
	.long	.LVL501
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL504
	.long	.LFE37
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST137:
	.long	.LVL465
	.long	.LVL466
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL466
	.long	.LVL467
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL467
	.long	.LVL468
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL468
	.long	.LVL470
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL497
	.long	.LVL499
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL499
	.long	.LVL501
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL503
	.long	.LFE37
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST138:
	.long	.LVL415
	.long	.LVL417
	.word	0x7
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL417
	.long	.LVL419
	.word	0x7
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL419
	.long	.LVL422
	.word	0x6
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL446
	.long	.LVL448
	.word	0x6
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST139:
	.long	.LVL414
	.long	.LVL415
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL423
	.long	.LVL424
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL425
	.long	.LVL426
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL427
	.long	.LVL428
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST140:
	.long	.LVL413
	.long	.LVL414
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL422
	.long	.LVL424
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL424
	.long	.LVL426
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL426
	.long	.LVL428
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST141:
	.long	.LVL416
	.long	.LVL420
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST142:
	.long	.LVL418
	.long	.LVL421
	.word	0x1
	.byte	0x68
	.long	.LVL446
	.long	.LVL447
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST143:
	.long	.LVL430
	.long	.LVL432
	.word	0x7
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL432
	.long	.LVL435
	.word	0x7
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL435
	.long	.LVL437
	.word	0x6
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL448
	.long	.LVL450
	.word	0x7
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL450
	.long	.LVL451
	.word	0x6
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST144:
	.long	.LVL429
	.long	.LVL430
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL438
	.long	.LVL439
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL440
	.long	.LVL441
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL442
	.long	.LVL443
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST145:
	.long	.LVL428
	.long	.LVL429
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL437
	.long	.LVL439
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL439
	.long	.LVL441
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL441
	.long	.LVL443
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST146:
	.long	.LVL431
	.long	.LVL434
	.word	0x1
	.byte	0x6e
	.long	.LVL434
	.long	.LVL435
	.word	0x5
	.byte	0x89
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL448
	.long	.LVL450
	.word	0x5
	.byte	0x89
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST147:
	.long	.LVL433
	.long	.LVL436
	.word	0x1
	.byte	0x68
	.long	.LVL448
	.long	.LVL449
	.word	0x1
	.byte	0x68
	.long	.LVL449
	.long	.LVL450
	.word	0x19
	.byte	0x89
	.sleb128 0
	.byte	0x34
	.byte	0x14
	.byte	0x14
	.byte	0x24
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x16
	.byte	0x1f
	.byte	0x23
	.uleb128 0x8
	.byte	0x25
	.byte	0x21
	.byte	0x31
	.byte	0x25
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST148:
	.long	.LVL477
	.long	.LVL479
	.word	0x7
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL479
	.long	.LVL485
	.word	0x6
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST149:
	.long	.LVL475
	.long	.LVL477
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL486
	.long	.LVL487
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL488
	.long	.LVL489
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL490
	.long	.LVL491
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST150:
	.long	.LVL471
	.long	.LVL472
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL472
	.long	.LVL473
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL473
	.long	.LVL474
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL474
	.long	.LVL476
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL485
	.long	.LVL487
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL487
	.long	.LVL489
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL489
	.long	.LVL491
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST151:
	.long	.LVL478
	.long	.LVL481
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST152:
	.long	.LVL480
	.long	.LVL482
	.word	0x1
	.byte	0x68
	.long	.LVL483
	.long	.LVL484
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST153:
	.long	.LVL346
	.long	.LVL368-1
	.word	0x1
	.byte	0x62
	.long	.LVL370
	.long	.LVL373
	.word	0x1
	.byte	0x62
	.long	.LVL403
	.long	.LVL408
	.word	0x1
	.byte	0x62
	.long	.LVL408
	.long	.LVL409
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST154:
	.long	.LVL346
	.long	.LVL350
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL350
	.long	.LVL354
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL354
	.long	.LVL358
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL358
	.long	.LVL362
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL362
	.long	.LVL367
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL367
	.long	.LVL368
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL370
	.long	.LVL372
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL403
	.long	.LVL404
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL404
	.long	.LVL405
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL405
	.long	.LVL407
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL407
	.long	.LVL409
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST155:
	.long	.LVL346
	.long	.LVL347
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL347
	.long	.LVL348
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL348
	.long	.LVL349
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL349
	.long	.LVL350
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL350
	.long	.LVL351
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL351
	.long	.LVL352
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL352
	.long	.LVL353
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL353
	.long	.LVL354
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL354
	.long	.LVL355
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL355
	.long	.LVL356
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL356
	.long	.LVL357
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL357
	.long	.LVL358
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL358
	.long	.LVL359
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL359
	.long	.LVL360
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL360
	.long	.LVL361
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL361
	.long	.LVL362
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL362
	.long	.LVL364
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL364
	.long	.LVL365
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL365
	.long	.LVL366
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL366
	.long	.LVL367
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL367
	.long	.LVL368
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL370
	.long	.LVL371
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST156:
	.long	.LVL505
	.long	.LVL507
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL507
	.long	.LVL509
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL509
	.long	.LVL511
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL511
	.long	.LVL513
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL513
	.long	.LVL517
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL517
	.long	.LVL522
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL522
	.long	.LVL527
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL527
	.long	.LFE38
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST157:
	.long	.LVL506
	.long	.LVL514
	.word	0x1
	.byte	0x68
	.long	.LVL514
	.long	.LVL515-1
	.word	0x5
	.byte	0x3
	.long	midiOutMap
	.long	.LVL518
	.long	.LVL519
	.word	0x1
	.byte	0x68
	.long	.LVL519
	.long	.LVL520-1
	.word	0x5
	.byte	0x3
	.long	midiOutMap+1
	.long	.LVL523
	.long	.LVL524
	.word	0x1
	.byte	0x68
	.long	.LVL524
	.long	.LVL525-1
	.word	0x5
	.byte	0x3
	.long	midiOutMap+2
	.long	.LVL528
	.long	.LVL529
	.word	0x1
	.byte	0x68
	.long	.LVL529
	.long	.LVL530-1
	.word	0x5
	.byte	0x3
	.long	midiOutMap+3
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xc4
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB31
	.long	.LFE31-.LFB31
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	.LFB34
	.long	.LFE34-.LFB34
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	.LFB39
	.long	.LFE39-.LFB39
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB53
	.long	.LBE53
	.long	.LBB74
	.long	.LBE74
	.long	.LBB75
	.long	.LBE75
	.long	0
	.long	0
	.long	.LBB54
	.long	.LBE54
	.long	.LBB72
	.long	.LBE72
	.long	.LBB73
	.long	.LBE73
	.long	0
	.long	0
	.long	.LBB55
	.long	.LBE55
	.long	.LBB70
	.long	.LBE70
	.long	.LBB71
	.long	.LBE71
	.long	0
	.long	0
	.long	.LBB57
	.long	.LBE57
	.long	.LBB66
	.long	.LBE66
	.long	0
	.long	0
	.long	.LBB58
	.long	.LBE58
	.long	.LBB65
	.long	.LBE65
	.long	.LBB67
	.long	.LBE67
	.long	0
	.long	0
	.long	.LBB90
	.long	.LBE90
	.long	.LBB93
	.long	.LBE93
	.long	0
	.long	0
	.long	.LBB100
	.long	.LBE100
	.long	.LBB113
	.long	.LBE113
	.long	0
	.long	0
	.long	.LBB101
	.long	.LBE101
	.long	.LBB110
	.long	.LBE110
	.long	.LBB111
	.long	.LBE111
	.long	.LBB112
	.long	.LBE112
	.long	0
	.long	0
	.long	.LBB103
	.long	.LBE103
	.long	.LBB106
	.long	.LBE106
	.long	0
	.long	0
	.long	.LBB132
	.long	.LBE132
	.long	.LBB185
	.long	.LBE185
	.long	0
	.long	0
	.long	.LBB134
	.long	.LBE134
	.long	.LBB182
	.long	.LBE182
	.long	.LBB183
	.long	.LBE183
	.long	0
	.long	0
	.long	.LBB135
	.long	.LBE135
	.long	.LBB178
	.long	.LBE178
	.long	.LBB179
	.long	.LBE179
	.long	.LBB180
	.long	.LBE180
	.long	.LBB181
	.long	.LBE181
	.long	0
	.long	0
	.long	.LBB136
	.long	.LBE136
	.long	.LBB168
	.long	.LBE168
	.long	.LBB169
	.long	.LBE169
	.long	.LBB170
	.long	.LBE170
	.long	.LBB171
	.long	.LBE171
	.long	.LBB172
	.long	.LBE172
	.long	.LBB173
	.long	.LBE173
	.long	.LBB174
	.long	.LBE174
	.long	.LBB175
	.long	.LBE175
	.long	.LBB176
	.long	.LBE176
	.long	.LBB177
	.long	.LBE177
	.long	0
	.long	0
	.long	.LBB138
	.long	.LBE138
	.long	.LBB149
	.long	.LBE149
	.long	.LBB150
	.long	.LBE150
	.long	.LBB151
	.long	.LBE151
	.long	.LBB152
	.long	.LBE152
	.long	.LBB153
	.long	.LBE153
	.long	.LBB154
	.long	.LBE154
	.long	.LBB155
	.long	.LBE155
	.long	.LBB156
	.long	.LBE156
	.long	.LBB157
	.long	.LBE157
	.long	0
	.long	0
	.long	.LBB196
	.long	.LBE196
	.long	.LBB225
	.long	.LBE225
	.long	0
	.long	0
	.long	.LBB197
	.long	.LBE197
	.long	.LBB223
	.long	.LBE223
	.long	.LBB224
	.long	.LBE224
	.long	0
	.long	0
	.long	.LBB198
	.long	.LBE198
	.long	.LBB221
	.long	.LBE221
	.long	.LBB222
	.long	.LBE222
	.long	0
	.long	0
	.long	.LBB199
	.long	.LBE199
	.long	.LBB217
	.long	.LBE217
	.long	.LBB218
	.long	.LBE218
	.long	.LBB219
	.long	.LBE219
	.long	.LBB220
	.long	.LBE220
	.long	0
	.long	0
	.long	.LBB201
	.long	.LBE201
	.long	.LBB210
	.long	.LBE210
	.long	.LBB211
	.long	.LBE211
	.long	0
	.long	0
	.long	.LBB202
	.long	.LBE202
	.long	.LBB209
	.long	.LBE209
	.long	.LBB212
	.long	.LBE212
	.long	0
	.long	0
	.long	.LBB246
	.long	.LBE246
	.long	.LBB305
	.long	.LBE305
	.long	.LBB310
	.long	.LBE310
	.long	.LBB316
	.long	.LBE316
	.long	0
	.long	0
	.long	.LBB247
	.long	.LBE247
	.long	.LBB304
	.long	.LBE304
	.long	0
	.long	0
	.long	.LBB249
	.long	.LBE249
	.long	.LBB302
	.long	.LBE302
	.long	0
	.long	0
	.long	.LBB251
	.long	.LBE251
	.long	.LBB299
	.long	.LBE299
	.long	.LBB300
	.long	.LBE300
	.long	0
	.long	0
	.long	.LBB252
	.long	.LBE252
	.long	.LBB295
	.long	.LBE295
	.long	.LBB296
	.long	.LBE296
	.long	.LBB297
	.long	.LBE297
	.long	.LBB298
	.long	.LBE298
	.long	0
	.long	0
	.long	.LBB253
	.long	.LBE253
	.long	.LBB285
	.long	.LBE285
	.long	.LBB286
	.long	.LBE286
	.long	.LBB287
	.long	.LBE287
	.long	.LBB288
	.long	.LBE288
	.long	.LBB289
	.long	.LBE289
	.long	.LBB290
	.long	.LBE290
	.long	.LBB291
	.long	.LBE291
	.long	.LBB292
	.long	.LBE292
	.long	.LBB293
	.long	.LBE293
	.long	.LBB294
	.long	.LBE294
	.long	0
	.long	0
	.long	.LBB255
	.long	.LBE255
	.long	.LBB266
	.long	.LBE266
	.long	.LBB267
	.long	.LBE267
	.long	.LBB268
	.long	.LBE268
	.long	.LBB269
	.long	.LBE269
	.long	.LBB270
	.long	.LBE270
	.long	.LBB271
	.long	.LBE271
	.long	.LBB272
	.long	.LBE272
	.long	.LBB273
	.long	.LBE273
	.long	.LBB274
	.long	.LBE274
	.long	0
	.long	0
	.long	.LBB306
	.long	.LBE306
	.long	.LBB309
	.long	.LBE309
	.long	0
	.long	0
	.long	.LBB320
	.long	.LBE320
	.long	.LBB321
	.long	.LBE321
	.long	0
	.long	0
	.long	.LBB323
	.long	.LBE323
	.long	.LBB324
	.long	.LBE324
	.long	.LBB325
	.long	.LBE325
	.long	0
	.long	0
	.long	.LBB331
	.long	.LBE331
	.long	.LBB337
	.long	.LBE337
	.long	0
	.long	0
	.long	.LBB333
	.long	.LBE333
	.long	.LBB334
	.long	.LBE334
	.long	0
	.long	0
	.long	.LBB381
	.long	.LBE381
	.long	.LBB495
	.long	.LBE495
	.long	0
	.long	0
	.long	.LBB382
	.long	.LBE382
	.long	.LBB492
	.long	.LBE492
	.long	.LBB494
	.long	.LBE494
	.long	0
	.long	0
	.long	.LBB383
	.long	.LBE383
	.long	.LBB435
	.long	.LBE435
	.long	.LBB461
	.long	.LBE461
	.long	.LBB464
	.long	.LBE464
	.long	.LBB475
	.long	.LBE475
	.long	.LBB476
	.long	.LBE476
	.long	.LBB478
	.long	.LBE478
	.long	0
	.long	0
	.long	.LBB385
	.long	.LBE385
	.long	.LBB386
	.long	.LBE386
	.long	.LBB387
	.long	.LBE387
	.long	.LBB397
	.long	.LBE397
	.long	0
	.long	0
	.long	.LBB388
	.long	.LBE388
	.long	.LBB398
	.long	.LBE398
	.long	.LBB399
	.long	.LBE399
	.long	.LBB400
	.long	.LBE400
	.long	0
	.long	0
	.long	.LBB407
	.long	.LBE407
	.long	.LBB436
	.long	.LBE436
	.long	.LBB438
	.long	.LBE438
	.long	0
	.long	0
	.long	.LBB411
	.long	.LBE411
	.long	.LBB437
	.long	.LBE437
	.long	0
	.long	0
	.long	.LBB420
	.long	.LBE420
	.long	.LBB465
	.long	.LBE465
	.long	.LBB477
	.long	.LBE477
	.long	.LBB479
	.long	.LBE479
	.long	0
	.long	0
	.long	.LBB439
	.long	.LBE439
	.long	.LBB462
	.long	.LBE462
	.long	0
	.long	0
	.long	.LBB441
	.long	.LBE441
	.long	.LBB447
	.long	.LBE447
	.long	0
	.long	0
	.long	.LBB446
	.long	.LBE446
	.long	.LBB448
	.long	.LBE448
	.long	0
	.long	0
	.long	.LBB450
	.long	.LBE450
	.long	.LBB463
	.long	.LBE463
	.long	0
	.long	0
	.long	.LBB452
	.long	.LBE452
	.long	.LBB458
	.long	.LBE458
	.long	0
	.long	0
	.long	.LBB457
	.long	.LBE457
	.long	.LBB459
	.long	.LBE459
	.long	0
	.long	0
	.long	.LBB468
	.long	.LBE468
	.long	.LBB474
	.long	.LBE474
	.long	0
	.long	0
	.long	.LBB480
	.long	.LBE480
	.long	.LBB491
	.long	.LBE491
	.long	.LBB493
	.long	.LBE493
	.long	0
	.long	0
	.long	.LBB482
	.long	.LBE482
	.long	.LBB483
	.long	.LBE483
	.long	.LBB484
	.long	.LBE484
	.long	.LBB485
	.long	.LBE485
	.long	.LBB486
	.long	.LBE486
	.long	.LBB487
	.long	.LBE487
	.long	.LBB488
	.long	.LBE488
	.long	0
	.long	0
	.long	.LFB17
	.long	.LFE17
	.long	.LFB19
	.long	.LFE19
	.long	.LFB20
	.long	.LFE20
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB27
	.long	.LFE27
	.long	.LFB28
	.long	.LFE28
	.long	.LFB29
	.long	.LFE29
	.long	.LFB30
	.long	.LFE30
	.long	.LFB31
	.long	.LFE31
	.long	.LFB23
	.long	.LFE23
	.long	.LFB32
	.long	.LFE32
	.long	.LFB33
	.long	.LFE33
	.long	.LFB34
	.long	.LFE34
	.long	.LFB35
	.long	.LFE35
	.long	.LFB36
	.long	.LFE36
	.long	.LFB37
	.long	.LFE37
	.long	.LFB38
	.long	.LFE38
	.long	.LFB39
	.long	.LFE39
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF47:
	.string	"bitNr"
.LASF97:
	.string	"swTimer"
.LASF36:
	.string	"bitStart"
.LASF52:
	.string	"program_toRegister"
.LASF134:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF28:
	.string	"ChannelNote_t"
.LASF138:
	.string	"__iCliRetVal"
.LASF113:
	.string	"midiCoupler_2from3"
.LASF125:
	.string	"init_Pipe"
.LASF94:
	.string	"chanNote"
.LASF66:
	.string	"pRange"
.LASF73:
	.string	"progNr"
.LASF108:
	.string	"midiLastOutNote"
.LASF78:
	.string	"pMidiInMap"
.LASF48:
	.string	"modulNr"
.LASF92:
	.string	"shiftBit"
.LASF84:
	.string	"midiIn_Process"
.LASF9:
	.string	"long long unsigned int"
.LASF69:
	.string	"midi_CheckTxActiveSense"
.LASF57:
	.string	"midiAllManualsOff"
.LASF98:
	.string	"pipe"
.LASF105:
	.string	"programMap"
.LASF12:
	.string	"message8"
.LASF124:
	.string	"midiDataByteExpected"
.LASF102:
	.string	"midiOutMap"
.LASF63:
	.string	"manual_NoteOnOff"
.LASF130:
	.string	"eeprom_ReadMidiInMap"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF109:
	.string	"midiLastOutManual"
.LASF44:
	.string	"regNr"
.LASF53:
	.string	"program"
.LASF30:
	.string	"ManualNote_t"
.LASF90:
	.string	"pipeMessage"
.LASF79:
	.string	"init_Manual2Midi"
.LASF121:
	.string	"midiLastCommand"
.LASF39:
	.string	"noteRange"
.LASF123:
	.string	"midiDataByteCount"
.LASF6:
	.string	"long int"
.LASF110:
	.string	"midiLastInNote"
.LASF77:
	.string	"init_Midi2Manual"
.LASF88:
	.string	"moduleBit_to_manualNote"
.LASF58:
	.string	"midiAllReset"
.LASF101:
	.string	"midiInMap"
.LASF61:
	.string	"result"
.LASF4:
	.string	"uint16_t"
.LASF119:
	.string	"lcdData"
.LASF38:
	.string	"midiNote"
.LASF35:
	.string	"endNote"
.LASF42:
	.string	"MidiOutMap_t"
.LASF49:
	.string	"mask"
.LASF68:
	.string	"midi_CheckRxActiveSense"
.LASF22:
	.string	"pipeInM4"
.LASF106:
	.string	"midiRxActivceSensing"
.LASF75:
	.string	"read_allRegister"
.LASF21:
	.string	"pipeInM8"
.LASF74:
	.string	"midiAllNotesOff"
.LASF37:
	.string	"ManualMap_t"
.LASF139:
	.string	"init_Midi"
.LASF5:
	.string	"unsigned int"
.LASF65:
	.string	"manualNote_to_moduleBit"
.LASF29:
	.string	"manual"
.LASF91:
	.string	"command"
.LASF7:
	.string	"long unsigned int"
.LASF131:
	.string	"eeprom_ReadMidiOutMap"
.LASF122:
	.string	"midiDataByte"
.LASF70:
	.string	"sreg_save"
.LASF85:
	.string	"midiByte"
.LASF80:
	.string	"midiNote_to_Manual"
.LASF71:
	.string	"__ToDo"
.LASF32:
	.string	"moduleBit"
.LASF34:
	.string	"startNote"
.LASF50:
	.string	"onOff"
.LASF13:
	.string	"PipeMessage_t"
.LASF41:
	.string	"MidiInMap_t"
.LASF16:
	.string	"Timer"
.LASF10:
	.string	"sizetype"
.LASF60:
	.string	"Manual_to_MidiNote"
.LASF87:
	.string	"init_Manual2Module"
.LASF120:
	.string	"midiEEPromLoadError"
.LASF46:
	.string	"modBit"
.LASF25:
	.string	"Pipe_t"
.LASF40:
	.string	"manualNote"
.LASF23:
	.string	"pipeIn"
.LASF95:
	.string	"midiSendAllNotesOff"
.LASF17:
	.string	"pipeOutM4"
.LASF54:
	.string	"regBits"
.LASF24:
	.string	"pipeInStat"
.LASF15:
	.string	"prescaler"
.LASF31:
	.string	"error"
.LASF107:
	.string	"midi_TxActivceSense"
.LASF62:
	.string	"midi_SendActiveSense"
.LASF136:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF93:
	.string	"moduleBits"
.LASF128:
	.string	"eeprom_ReadProg"
.LASF3:
	.string	"unsigned char"
.LASF86:
	.string	"noteOnOff"
.LASF129:
	.string	"log_putError"
.LASF14:
	.string	"counter"
.LASF132:
	.string	"eeprom_ReadManualMap"
.LASF112:
	.string	"midiLastInManual"
.LASF26:
	.string	"channel"
.LASF118:
	.string	"midiCoupler_Pfrom1"
.LASF117:
	.string	"midiCoupler_Pfrom2"
.LASF116:
	.string	"midiCoupler_Pfrom3"
.LASF127:
	.string	"eeprom_ReadReg"
.LASF99:
	.string	"pipeProcessing"
.LASF111:
	.string	"midiLastInChannel"
.LASF96:
	.string	"chan"
.LASF43:
	.string	"char"
.LASF27:
	.string	"note"
.LASF45:
	.string	"mode"
.LASF103:
	.string	"registerMap"
.LASF56:
	.string	"byteNr"
.LASF126:
	.string	"serial1MIDISend"
.LASF67:
	.string	"splitRange"
.LASF137:
	.string	"__iRestore"
.LASF0:
	.string	"int8_t"
.LASF59:
	.string	"read_Register"
.LASF33:
	.string	"ModulBitError_t"
.LASF81:
	.string	"found"
.LASF51:
	.string	"register_onOff"
.LASF82:
	.string	"noteBase0"
.LASF133:
	.string	"log_putWarning"
.LASF83:
	.string	"manNote"
.LASF104:
	.string	"registerCount"
.LASF76:
	.string	"resultPtr"
.LASF11:
	.string	"Message16"
.LASF1:
	.string	"uint8_t"
.LASF89:
	.string	"midiKeyPress_Process"
.LASF115:
	.string	"midiCoupler_1from2"
.LASF114:
	.string	"midiCoupler_1from3"
.LASF20:
	.string	"pipeInM12"
.LASF19:
	.string	"pipeInM16"
.LASF100:
	.string	"manualMap"
.LASF64:
	.string	"moduleInfo"
.LASF72:
	.string	"init_Registers"
.LASF18:
	.string	"pipeOut"
.LASF55:
	.string	"regBytePtr"
.LASF135:
	.string	".././Midi.c"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
