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
	.loc 1 57 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL0:
.LBB13:
	.loc 1 60 0
	ldi r24,0
.LBE13:
	.loc 1 59 0
	ldi r30,lo8(midi_Couplers)
	ldi r31,hi8(midi_Couplers)
.LBB14:
	.loc 1 60 0
	rjmp .L2
.LVL1:
.L3:
	.loc 1 61 0 discriminator 3
	st Z,__zero_reg__
	.loc 1 60 0 discriminator 3
	subi r24,lo8(-(1))
.LVL2:
	.loc 1 61 0 discriminator 3
	adiw r30,1
.LVL3:
.L2:
	.loc 1 60 0 discriminator 1
	cpi r24,lo8(12)
	brlo .L3
/* epilogue start */
.LBE14:
	.loc 1 63 0
	ret
	.cfi_endproc
.LFE17:
	.size	init_Midi, .-init_Midi
	.section	.text.set_Coupler,"ax",@progbits
.global	set_Coupler
	.type	set_Coupler, @function
set_Coupler:
.LFB18:
	.loc 1 67 0
	.cfi_startproc
.LVL4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 69 0
	cpi r24,lo8(12)
	brsh .L8
	.loc 1 70 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ldi r25,lo8(-1)
	st Z,r25
	.loc 1 72 0
	cpi r24,lo8(6)
	brlo .L6
	.loc 1 74 0
	subi r24,lo8(-(-6))
.LVL5:
	rjmp .L7
.L6:
	.loc 1 77 0
	subi r24,lo8(-(6))
.LVL6:
.L7:
	.loc 1 79 0
	mov r30,r24
	ldi r31,0
	movw r26,r30
	subi r26,lo8(-(midi_Couplers))
	sbci r27,hi8(-(midi_Couplers))
	ld r24,X
.LVL7:
	tst r24
	breq .L5
	.loc 1 81 0
	movw r26,r30
	subi r26,lo8(-(midi_Couplers))
	sbci r27,hi8(-(midi_Couplers))
	st X,__zero_reg__
	.loc 1 82 0
	lsl r30
	rol r31
.LVL8:
	subi r30,lo8(-(cplInfo))
	sbci r31,hi8(-(cplInfo))
	lpm r24,Z
	ret
.LVL9:
.L8:
	.loc 1 85 0
	ldi r24,0
.LVL10:
.L5:
	.loc 1 86 0
	ret
	.cfi_endproc
.LFE18:
	.size	set_Coupler, .-set_Coupler
	.section	.text.midiAllReset,"ax",@progbits
.global	midiAllReset
	.type	midiAllReset, @function
midiAllReset:
.LFB19:
	.loc 1 103 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 104 0
	ldi r24,lo8(-128)
	sts pipeProcessing,r24
	.loc 1 105 0
	call init_Pipe
.LVL11:
	ret
	.cfi_endproc
.LFE19:
	.size	midiAllReset, .-midiAllReset
	.section	.text.registers_CalcCount,"ax",@progbits
.global	registers_CalcCount
	.type	registers_CalcCount, @function
registers_CalcCount:
.LFB26:
	.loc 1 260 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL12:
.LBB15:
	.loc 1 262 0
	ldi r18,0
.LBE15:
	.loc 1 261 0
	ldi r19,0
.LBB16:
	.loc 1 262 0
	rjmp .L11
.LVL13:
.L13:
	.loc 1 263 0
	mov r24,r18
	ldi r25,0
	movw r30,r24
	lsl r30
	rol r31
	add r24,r30
	adc r25,r31
	movw r30,r24
	subi r30,lo8(-(registerMap))
	sbci r31,hi8(-(registerMap))
	ldd r24,Z+1
	cpi r24,lo8(-1)
	breq .L12
	.loc 1 263 0 is_stmt 0 discriminator 1
	cp r24,r19
	brlo .L12
	.loc 1 265 0 is_stmt 1
	ldi r19,lo8(1)
.LVL14:
	add r19,r24
.LVL15:
.L12:
	.loc 1 262 0 discriminator 2
	subi r18,lo8(-(1))
.LVL16:
.L11:
	.loc 1 262 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L13
.LBE16:
	.loc 1 268 0 is_stmt 1
	sts registerCount,r19
	ret
	.cfi_endproc
.LFE26:
	.size	registers_CalcCount, .-registers_CalcCount
	.section	.text.init_Registers,"ax",@progbits
.global	init_Registers
	.type	init_Registers, @function
init_Registers:
.LFB27:
	.loc 1 271 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL17:
.LBB17:
	.loc 1 275 0
	ldi r18,0
	rjmp .L15
.LVL18:
.L16:
	.loc 1 276 0 discriminator 3
	mov r24,r18
	ldi r25,0
	movw r30,r24
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(registerMap))
	sbci r31,hi8(-(registerMap))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 277 0 discriminator 3
	std Z+1,r24
	.loc 1 278 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 275 0 discriminator 3
	subi r18,lo8(-(1))
.LVL19:
.L15:
	.loc 1 275 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L16
.LBE17:
	.loc 1 280 0 is_stmt 1
	call eeprom_ReadReg
.LVL20:
	cpi r24,lo8(-1)
	brne .L17
	.loc 1 281 0
	sts registerCount,__zero_reg__
	.loc 1 282 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(5)
	ldi r24,lo8(1)
	call log_putError
.LVL21:
	rjmp .L18
.L17:
	.loc 1 284 0
	call registers_CalcCount
.LVL22:
.L18:
	.loc 1 287 0
	call eeprom_ReadProg
.LVL23:
	cpi r24,lo8(-1)
	brne .L14
	rjmp .L23
.LVL24:
.L21:
.LBB18:
.LBB19:
	.loc 1 291 0 discriminator 3
	mov r30,r25
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
	add r30,r24
	adc r31,__zero_reg__
	st Z,__zero_reg__
	.loc 1 290 0 discriminator 3
	subi r24,lo8(-(1))
.LVL25:
	rjmp .L22
.LVL26:
.L24:
.LBE19:
	ldi r24,0
.L22:
.LVL27:
.LBB20:
	.loc 1 290 0 is_stmt 0 discriminator 1
	cpi r24,lo8(8)
	brlo .L21
.LBE20:
	.loc 1 289 0 is_stmt 1 discriminator 2
	subi r25,lo8(-(1))
.LVL28:
	rjmp .L19
.LVL29:
.L23:
.LBE18:
	ldi r25,0
.L19:
.LVL30:
.LBB21:
	.loc 1 289 0 is_stmt 0 discriminator 1
	cpi r25,lo8(64)
	brlo .L24
.LBE21:
	.loc 1 294 0 is_stmt 1
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(6)
	ldi r24,lo8(1)
	call log_putError
.LVL31:
.L14:
	ret
	.cfi_endproc
.LFE27:
	.size	init_Registers, .-init_Registers
	.section	.text.regNr_to_moduleBit,"ax",@progbits
.global	regNr_to_moduleBit
	.type	regNr_to_moduleBit, @function
regNr_to_moduleBit:
.LFB28:
	.loc 1 298 0
	.cfi_startproc
.LVL32:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 301 0
	lds r25,registerCount
	cp r24,r25
	brsh .L26
	.loc 1 301 0 is_stmt 0 discriminator 1
	cpi r24,lo8(64)
	brsh .L26
.LBB22:
	.loc 1 303 0 is_stmt 1
	subi r24,lo8(-(1))
.LVL33:
	.loc 1 306 0
	ldi r25,lo8(8)
	.loc 1 305 0
	ldi r30,lo8(registerMap)
	ldi r31,hi8(registerMap)
.LVL34:
.L29:
	.loc 1 308 0
	ld r18,Z
	cp r24,r18
	brlo .L27
	.loc 1 308 0 is_stmt 0 discriminator 1
	ldd r19,Z+1
	cp r19,r24
	brlo .L27
	.loc 1 311 0 is_stmt 1
	ldd r19,Z+2
	mov r25,r24
.LVL35:
	sub r25,r18
	.loc 1 312 0
	ldi r24,0
.LVL36:
	add r25,r19
	ret
.LVL37:
.L27:
	.loc 1 314 0
	adiw r30,3
.LVL38:
	.loc 1 315 0
	subi r25,lo8(-(-1))
.LVL39:
	brne .L29
.LVL40:
.L26:
.LBE22:
	.loc 1 319 0
	ldi r24,lo8(-1)
.LVL41:
	ldi r25,0
	.loc 1 320 0
	ret
	.cfi_endproc
.LFE28:
	.size	regNr_to_moduleBit, .-regNr_to_moduleBit
	.section	.text.read_Register,"ax",@progbits
.global	read_Register
	.type	read_Register, @function
read_Register:
.LFB29:
	.loc 1 322 0
	.cfi_startproc
.LVL42:
	push r28
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 325 0
	lds r25,registerCount
	cp r24,r25
	brsh .L35
	mov r28,r22
.LBB23:
	.loc 1 327 0
	call regNr_to_moduleBit
.LVL43:
	.loc 1 328 0
	cpse r24,__zero_reg__
	rjmp .L32
.LVL44:
.LBB24:
	.loc 1 331 0
	mov r18,r25
	andi r18,lo8(31)
.LVL45:
	.loc 1 332 0
	swap r25
.LVL46:
	lsr r25
	andi r25,lo8(7)
.LVL47:
	.loc 1 333 0
	ldi r20,lo8(1)
	ldi r21,0
	rjmp 2f
	1:
	lsl r20
	rol r21
	2:
	dec r25
	brpl 1b
.LVL48:
	.loc 1 334 0
	ldi r19,0
	movw r30,r18
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r25,Z+1
.LVL49:
	and r25,r20
	brne .L33
	.loc 1 334 0 is_stmt 0 discriminator 1
	sbrc r28,1
	rjmp .L36
.L33:
	.loc 1 337 0 is_stmt 1
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
.LVL50:
	movw r30,r18
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r25,Z+6
	and r20,r25
.LVL51:
	breq .L31
	.loc 1 337 0 is_stmt 0 discriminator 1
	sbrc r28,0
	rjmp .L37
	rjmp .L31
.L32:
.LBE24:
.LBE23:
	.loc 1 346 0 is_stmt 1
	ldi r24,0
.LBB26:
	rjmp .L31
.LVL52:
.L36:
.LBB25:
	.loc 1 336 0
	ldi r24,lo8(1)
	rjmp .L31
.LVL53:
.L37:
	.loc 1 340 0
	ldi r24,lo8(1)
	rjmp .L31
.LVL54:
.L35:
.LBE25:
.LBE26:
	.loc 1 346 0
	ldi r24,0
.LVL55:
.L31:
/* epilogue start */
	.loc 1 347 0
	pop r28
	ret
	.cfi_endproc
.LFE29:
	.size	read_Register, .-read_Register
	.section	.text.read_allRegister,"ax",@progbits
.global	read_allRegister
	.type	read_allRegister, @function
read_allRegister:
.LFB30:
	.loc 1 349 0
	.cfi_startproc
.LVL56:
	push r14
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r17
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	movw r14,r24
.LVL57:
.LBB27:
	.loc 1 352 0
	ldi r28,0
.LBE27:
	.loc 1 351 0
	ldi r24,0
.LVL58:
.LBB28:
	.loc 1 352 0
	rjmp .L39
.LVL59:
.L43:
	mov r17,r28
	andi r17,lo8(7)
	.loc 1 355 0
	brne .L40
	.loc 1 357 0
	ldi r24,0
.LVL60:
.L40:
	.loc 1 359 0
	mov r29,r24
	lsr r29
	ldi r22,lo8(3)
	mov r24,r28
.LVL61:
	call read_Register
.LVL62:
	cpse r24,__zero_reg__
	ldi r24,lo8(-128)
.L41:
	.loc 1 359 0 is_stmt 0 discriminator 4
	or r24,r29
.LVL63:
	.loc 1 360 0 is_stmt 1 discriminator 4
	cpi r17,lo8(7)
	brne .L42
.LVL64:
	.loc 1 362 0
	movw r30,r14
	st Z,r24
	movw r18,r14
	subi r18,-1
	sbci r19,-1
.LVL65:
	movw r14,r18
.LVL66:
.L42:
	.loc 1 352 0 discriminator 2
	subi r28,lo8(-(1))
.LVL67:
.L39:
	.loc 1 352 0 is_stmt 0 discriminator 1
	cpi r28,lo8(64)
	brlo .L43
/* epilogue start */
.LBE28:
	.loc 1 365 0 is_stmt 1
	pop r29
	pop r28
.LVL68:
	pop r17
	pop r15
	pop r14
.LVL69:
	ret
	.cfi_endproc
.LFE30:
	.size	read_allRegister, .-read_allRegister
	.section	.text.register_onOff,"ax",@progbits
.global	register_onOff
	.type	register_onOff, @function
register_onOff:
.LFB31:
	.loc 1 368 0
	.cfi_startproc
.LVL70:
	push r28
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 370 0
	lds r25,registerCount
	cp r24,r25
	brsh .L46
	mov r28,r22
.LBB29:
	.loc 1 372 0
	call regNr_to_moduleBit
.LVL71:
	.loc 1 373 0
	cpse r24,__zero_reg__
	rjmp .L46
.LVL72:
.LBB30:
	.loc 1 376 0
	mov r30,r25
	andi r30,lo8(31)
.LVL73:
	.loc 1 377 0
	swap r25
.LVL74:
	lsr r25
	andi r25,lo8(7)
.LVL75:
	.loc 1 378 0
	sbrs r28,0
	rjmp .L49
	.loc 1 380 0
	ldi r31,0
	ldi r18,lo8(1)
	ldi r19,0
	movw r20,r18
	rjmp 2f
	1:
	lsl r20
	rol r21
	2:
	dec r25
	brpl 1b
	movw r24,r20
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
.LVL76:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	com r24
	ldd r25,Z+1
.LVL77:
	and r24,r25
	std Z+1,r24
	rjmp .L46
.LVL78:
.L49:
	.loc 1 383 0
	ldi r31,0
	ldi r18,lo8(1)
	ldi r19,0
	movw r20,r18
	rjmp 2f
	1:
	lsl r20
	rol r21
	2:
	dec r25
	brpl 1b
	movw r24,r20
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
.LVL79:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r25,Z+1
.LVL80:
	or r24,r25
	std Z+1,r24
.LVL81:
.L46:
/* epilogue start */
.LBE30:
.LBE29:
	.loc 1 388 0
	pop r28
	ret
	.cfi_endproc
.LFE31:
	.size	register_onOff, .-register_onOff
	.section	.text.program_toRegister,"ax",@progbits
.global	program_toRegister
	.type	program_toRegister, @function
program_toRegister:
.LFB32:
	.loc 1 390 0
	.cfi_startproc
.LVL82:
	push r14
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI8:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
.LCFI9:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
.LCFI10:
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
.LCFI11:
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
.LCFI12:
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	.loc 1 392 0
	cpi r24,lo8(64)
	brsh .L50
.LVL83:
.LBB31:
	.loc 1 395 0
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
.LVL84:
.LBB32:
	.loc 1 396 0
	ldi r16,0
.LBE32:
	.loc 1 394 0
	ldi r17,0
.LBB34:
	.loc 1 396 0
	rjmp .L52
.LVL85:
.L55:
	.loc 1 398 0
	movw r14,r30
	ldi r24,-1
	sub r14,r24
	sbc r15,r24
.LVL86:
	ld r29,Z
.LVL87:
.LBB33:
	.loc 1 399 0
	ldi r28,0
	rjmp .L53
.LVL88:
.L54:
	.loc 1 400 0 discriminator 3
	mov r22,r29
	andi r22,lo8(1)
	mov r24,r17
	call register_onOff
.LVL89:
	.loc 1 401 0 discriminator 3
	lsr r29
.LVL90:
	.loc 1 402 0 discriminator 3
	subi r17,lo8(-(1))
.LVL91:
	.loc 1 399 0 discriminator 3
	subi r28,lo8(-(1))
.LVL92:
.L53:
	.loc 1 399 0 is_stmt 0 discriminator 1
	cpi r28,lo8(8)
	brlo .L54
.LBE33:
	.loc 1 396 0 is_stmt 1 discriminator 2
	subi r16,lo8(-(1))
.LVL93:
	.loc 1 398 0 discriminator 2
	movw r30,r14
.LVL94:
.L52:
	.loc 1 396 0 discriminator 1
	cpi r16,lo8(8)
	brlo .L55
.LVL95:
.L50:
/* epilogue start */
.LBE34:
.LBE31:
	.loc 1 406 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.cfi_endproc
.LFE32:
	.size	program_toRegister, .-program_toRegister
	.section	.text.register_toProgram,"ax",@progbits
.global	register_toProgram
	.type	register_toProgram, @function
register_toProgram:
.LFB33:
	.loc 1 408 0
	.cfi_startproc
.LVL96:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 411 0
	cpi r24,lo8(64)
	brsh .L56
.LBB35:
	.loc 1 412 0
	ldi r25,0
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
.LVL97:
	.loc 1 413 0
	subi r24,lo8(-(programMap))
	sbci r25,hi8(-(programMap))
.LVL98:
	call read_allRegister
.LVL99:
.L56:
	ret
.LBE35:
	.cfi_endproc
.LFE33:
	.size	register_toProgram, .-register_toProgram
	.section	.text.init_Midi2Manual,"ax",@progbits
.global	init_Midi2Manual
	.type	init_Midi2Manual, @function
init_Midi2Manual:
.LFB34:
	.loc 1 420 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL100:
.LBB36:
	.loc 1 424 0
	ldi r25,lo8(64)
.LBE36:
	.loc 1 422 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
.LBB37:
	.loc 1 424 0
	rjmp .L59
.LVL101:
.L60:
	.loc 1 426 0 discriminator 3
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 427 0 discriminator 3
	std Z+1,r24
	.loc 1 428 0 discriminator 3
	std Z+3,r24
	.loc 1 429 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 430 0 discriminator 3
	adiw r30,4
.LVL102:
	.loc 1 424 0 discriminator 3
	subi r25,lo8(-(-1))
.LVL103:
.L59:
	.loc 1 424 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L60
.LBE37:
	.loc 1 433 0 is_stmt 1
	call eeprom_ReadMidiInMap
.LVL104:
	cpi r24,lo8(-1)
	brne .L58
	.loc 1 434 0
	sts midiEEPromLoadError,r24
	.loc 1 435 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
	st Z,__zero_reg__
	.loc 1 436 0
	ldi r24,lo8(36)
	std Z+1,r24
	.loc 1 437 0
	std Z+3,r24
	.loc 1 438 0
	ldi r25,lo8(56)
	std Z+2,r25
	.loc 1 439 0
	ldi r18,lo8(1)
	std Z+16,r18
	.loc 1 440 0
	std Z+17,r24
	.loc 1 441 0
	std Z+19,r24
	.loc 1 442 0
	std Z+18,r25
	.loc 1 443 0
	ldi r18,lo8(2)
	std Z+32,r18
	.loc 1 444 0
	std Z+33,r24
	.loc 1 445 0
	std Z+35,r24
	.loc 1 446 0
	std Z+34,r25
	.loc 1 447 0
	ldi r25,lo8(3)
	std Z+48,r25
	.loc 1 448 0
	std Z+49,r24
	.loc 1 449 0
	std Z+51,r24
	.loc 1 450 0
	ldi r24,lo8(30)
	std Z+50,r24
	.loc 1 451 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL105:
.L58:
	ret
	.cfi_endproc
.LFE34:
	.size	init_Midi2Manual, .-init_Midi2Manual
	.section	.text.init_Manual2Midi,"ax",@progbits
.global	init_Manual2Midi
	.type	init_Manual2Midi, @function
init_Manual2Midi:
.LFB35:
	.loc 1 455 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL106:
.LBB38:
	.loc 1 457 0
	ldi r18,0
	rjmp .L63
.LVL107:
.L64:
	.loc 1 458 0 discriminator 3
	movw r30,r24
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldi r19,lo8(-1)
	st Z,r19
	.loc 1 457 0 discriminator 3
	subi r18,lo8(-(1))
.LVL108:
.L63:
	.loc 1 457 0 is_stmt 0 discriminator 1
	mov r24,r18
	ldi r25,0
	sbiw r24,0
	brne .L64
.LBE38:
	.loc 1 460 0 is_stmt 1
	call eeprom_ReadMidiOutMap
.LVL109:
	cpi r24,lo8(-1)
	brne .L62
	.loc 1 461 0
	sts midiEEPromLoadError,r24
	.loc 1 463 0
	ldi r30,lo8(midiOutMap)
	ldi r31,hi8(midiOutMap)
	st Z,__zero_reg__
	.loc 1 464 0
	ldi r24,lo8(1)
	std Z+1,r24
	.loc 1 465 0
	ldi r24,lo8(2)
	std Z+2,r24
	.loc 1 466 0
	ldi r24,lo8(3)
	std Z+3,r24
	.loc 1 467 0
	ldi r30,lo8(midi_Setting)
	ldi r31,hi8(midi_Setting)
	st Z,__zero_reg__
	.loc 1 468 0
	std Z+1,__zero_reg__
	.loc 1 469 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(2)
	ldi r24,lo8(1)
	call log_putError
.LVL110:
.L62:
	ret
	.cfi_endproc
.LFE35:
	.size	init_Manual2Midi, .-init_Manual2Midi
	.section	.text.Manual_to_MidiNote,"ax",@progbits
.global	Manual_to_MidiNote
	.type	Manual_to_MidiNote, @function
Manual_to_MidiNote:
.LFB37:
	.loc 1 501 0
	.cfi_startproc
.LVL111:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	.loc 1 502 0
	ldi r24,lo8(-1)
.LVL112:
	ldi r25,lo8(-1)
	.loc 1 503 0
	cpi r30,lo8(4)
	brsh .L67
	.loc 1 504 0
	ldi r31,0
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
.LVL113:
	ld r18,Z
	cpi r18,lo8(-1)
	breq .L67
	.loc 1 505 0
	mov r24,r18
	.loc 1 506 0
	mov r25,r22
.L67:
	.loc 1 510 0
	ret
	.cfi_endproc
.LFE37:
	.size	Manual_to_MidiNote, .-Manual_to_MidiNote
	.section	.text.Midi_updateManualRange,"ax",@progbits
.global	Midi_updateManualRange
	.type	Midi_updateManualRange, @function
Midi_updateManualRange:
.LFB38:
	.loc 1 514 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL114:
.LBB39:
	.loc 1 515 0
	ldi r23,0
	rjmp .L69
.LVL115:
.L75:
.LBB40:
.LBB41:
	.loc 1 519 0
	mov r24,r23
	ldi r25,0
	mov r18,r20
	ldi r19,0
	movw r30,r18
	lsl r30
	rol r31
	movw r26,r30
	add r26,r18
	adc r27,r19
	movw r30,r24
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r26
	adc r31,r27
	subi r30,lo8(-(manualMap))
	sbci r31,hi8(-(manualMap))
	ld r26,Z
	cpi r26,lo8(-1)
	breq .L70
.LVL116:
	.loc 1 519 0 is_stmt 0 discriminator 1
	movw r30,r18
	lsl r30
	rol r31
	add r30,r18
	adc r31,r19
	movw r18,r24
.LVL117:
	lsl r18
	rol r19
	add r18,r24
	adc r19,r25
	lsl r18
	rol r19
	lsl r18
	rol r19
	add r30,r18
	adc r31,r19
	subi r30,lo8(-(manualMap))
	sbci r31,hi8(-(manualMap))
	ldd r18,Z+1
	cpi r18,lo8(-1)
	breq .L70
	.loc 1 520 0 is_stmt 1
	cp r26,r22
	brsh .L71
	.loc 1 521 0
	mov r22,r26
.LVL118:
.L71:
	.loc 1 523 0
	cp r21,r18
	brsh .L70
	.loc 1 524 0
	mov r21,r18
.LVL119:
.L70:
	.loc 1 527 0
	tst r21
	breq .L72
	.loc 1 527 0 is_stmt 0 discriminator 1
	cpi r22,lo8(-1)
	brne .L73
.L72:
	.loc 1 528 0 is_stmt 1
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 529 0
	std Z+1,r24
	rjmp .L74
.L73:
	.loc 1 531 0
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	st Z,r22
	.loc 1 532 0
	std Z+1,r21
.L74:
	.loc 1 518 0 discriminator 2
	subi r20,lo8(-(1))
.LVL120:
	rjmp .L76
.LVL121:
.L79:
.LBE41:
.LBE40:
	ldi r20,0
	ldi r22,lo8(-1)
	ldi r21,0
.L76:
.LVL122:
.LBB43:
.LBB42:
	.loc 1 518 0 is_stmt 0 discriminator 1
	cpi r20,lo8(4)
	brsh .+2
	rjmp .L75
.LBE42:
.LBE43:
	.loc 1 515 0 is_stmt 1 discriminator 2
	subi r23,lo8(-(1))
.LVL123:
.L69:
	.loc 1 515 0 is_stmt 0 discriminator 1
	cpi r23,lo8(4)
	brlo .L79
/* epilogue start */
.LBE39:
	.loc 1 536 0 is_stmt 1
	ret
	.cfi_endproc
.LFE38:
	.size	Midi_updateManualRange, .-Midi_updateManualRange
	.section	.text.init_Manual2Module,"ax",@progbits
.global	init_Manual2Module
	.type	init_Manual2Module, @function
init_Manual2Module:
.LFB39:
	.loc 1 538 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL124:
.LBB44:
	.loc 1 539 0
	ldi r22,lo8(3)
	rjmp .L81
.LVL125:
.L82:
.LBB45:
	.loc 1 542 0 discriminator 3
	mov r24,r22
	mov __tmp_reg__,r22
	lsl r0
	sbc r25,r25
	mov r20,r18
	mov __tmp_reg__,r18
	lsl r0
	sbc r21,r21
	movw r30,r20
	lsl r30
	rol r31
	add r30,r20
	adc r31,r21
	movw r20,r24
	lsl r20
	rol r21
	movw r26,r20
	add r26,r24
	adc r27,r25
	lsl r26
	rol r27
	lsl r26
	rol r27
	add r26,r30
	adc r27,r31
	subi r26,lo8(-(manualMap))
	sbci r27,hi8(-(manualMap))
	ldi r19,lo8(-1)
	st X,r19
	.loc 1 543 0 discriminator 3
	adiw r26,1
	st X,r19
	sbiw r26,1
	.loc 1 544 0 discriminator 3
	movw r30,r26
	std Z+2,__zero_reg__
	.loc 1 541 0 discriminator 3
	subi r18,lo8(-(-1))
.LVL126:
	rjmp .L83
.LVL127:
.L85:
.LBE45:
	ldi r18,lo8(3)
.L83:
.LVL128:
.LBB46:
	.loc 1 541 0 is_stmt 0 discriminator 1
	tst r18
	brge .L82
.LBE46:
	.loc 1 539 0 is_stmt 1 discriminator 2
	subi r22,lo8(-(-1))
.LVL129:
.L81:
	.loc 1 539 0 is_stmt 0 discriminator 1
	tst r22
	brge .L85
.LBE44:
	.loc 1 548 0 is_stmt 1
	call eeprom_ReadManualMap
.LVL130:
	cpi r24,lo8(-1)
	brne .L84
	.loc 1 550 0
	sts midiEEPromLoadError,r24
	.loc 1 551 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(3)
	ldi r24,lo8(1)
	call log_putError
.LVL131:
.L84:
	.loc 1 553 0
	call Midi_updateManualRange
.LVL132:
	ret
	.cfi_endproc
.LFE39:
	.size	init_Manual2Module, .-init_Manual2Module
	.section	.text.manualNote_to_moduleBit,"ax",@progbits
.global	manualNote_to_moduleBit
	.type	manualNote_to_moduleBit, @function
manualNote_to_moduleBit:
.LFB40:
	.loc 1 557 0
	.cfi_startproc
.LVL133:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 560 0
	cpi r24,lo8(4)
	brsh .L87
.LBB47:
	.loc 1 563 0
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
.LVL134:
	.loc 1 564 0
	ldi r24,lo8(4)
.LVL135:
.L90:
	.loc 1 566 0
	ld r18,Z
	cp r22,r18
	brlo .L88
	.loc 1 566 0 is_stmt 0 discriminator 1
	ldd r25,Z+1
	cp r25,r22
	brlo .L88
	.loc 1 569 0 is_stmt 1
	ldd r25,Z+2
	sub r22,r18
.LVL136:
	.loc 1 570 0
	ldi r24,0
.LVL137:
	add r25,r22
	ret
.LVL138:
.L88:
	.loc 1 572 0
	adiw r30,3
.LVL139:
	.loc 1 573 0
	subi r24,lo8(-(-1))
.LVL140:
	brne .L90
.LVL141:
.L87:
.LBE47:
	.loc 1 577 0
	ldi r24,lo8(-1)
	ldi r25,0
	.loc 1 578 0
	ret
	.cfi_endproc
.LFE40:
	.size	manualNote_to_moduleBit, .-manualNote_to_moduleBit
	.section	.text.moduleBit_to_manualNote,"ax",@progbits
.global	moduleBit_to_manualNote
	.type	moduleBit_to_manualNote, @function
moduleBit_to_manualNote:
.LFB41:
	.loc 1 580 0
	.cfi_startproc
.LVL142:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 587 0
	ldi r23,0
	.loc 1 586 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
.LVL143:
.L96:
.LBB48:
	.loc 1 589 0
	ldi r21,lo8(4)
	rjmp .L92
.LVL144:
.L95:
	.loc 1 590 0
	ldd r22,Z+2
	cp r24,r22
	brlo .L93
	.loc 1 590 0 is_stmt 0 discriminator 1
	mov r26,r24
	ldi r27,0
	ldd r18,Z+1
	ld r25,Z
	ldi r19,0
	sub r18,r25
	sbc r19,__zero_reg__
	add r18,r22
	adc r19,__zero_reg__
	cp r18,r26
	cpc r19,r27
	brlt .L93
	.loc 1 593 0 is_stmt 1
	mov r20,r24
	sub r20,r22
	.loc 1 594 0
	mov r24,r23
.LVL145:
	add r25,r20
	ret
.LVL146:
.L93:
	.loc 1 596 0 discriminator 2
	adiw r30,3
.LVL147:
	.loc 1 589 0 discriminator 2
	subi r21,lo8(-(-1))
.LVL148:
.L92:
	.loc 1 589 0 is_stmt 0 discriminator 1
	cpse r21,__zero_reg__
	rjmp .L95
.LBE48:
	.loc 1 598 0 is_stmt 1
	subi r23,lo8(-(1))
.LVL149:
	.loc 1 599 0
	cpi r23,lo8(5)
	brlo .L96
	.loc 1 601 0
	mov r20,r24
	ldi r21,0
.LVL150:
	ldi r22,lo8(1)
	ldi r24,lo8(2)
.LVL151:
	call log_putWarning
.LVL152:
	.loc 1 602 0
	ldi r24,lo8(-1)
	ldi r25,0
	.loc 1 603 0
	ret
	.cfi_endproc
.LFE41:
	.size	moduleBit_to_manualNote, .-moduleBit_to_manualNote
	.section	.text.manual_NoteOnOff,"ax",@progbits
.global	manual_NoteOnOff
	.type	manual_NoteOnOff, @function
manual_NoteOnOff:
.LFB42:
	.loc 1 605 0
	.cfi_startproc
.LVL153:
	push r28
.LCFI13:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r20
	.loc 1 607 0
	call manualNote_to_moduleBit
.LVL154:
	.loc 1 609 0
	cpse r24,__zero_reg__
	rjmp .L97
.LVL155:
.LBB49:
	.loc 1 610 0
	mov r30,r25
	andi r30,lo8(31)
.LVL156:
	.loc 1 611 0
	swap r25
	lsr r25
	andi r25,lo8(7)
.LVL157:
	.loc 1 612 0
	cpse r28,__zero_reg__
	rjmp .L99
	.loc 1 614 0
	ldi r31,0
	ldi r18,lo8(1)
	ldi r19,0
	movw r20,r18
	rjmp 2f
	1:
	lsl r20
	rol r21
	2:
	dec r25
	brpl 1b
	movw r24,r20
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
.LVL158:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r25,Z+1
.LVL159:
	or r24,r25
	std Z+1,r24
	rjmp .L97
.LVL160:
.L99:
	.loc 1 617 0
	ldi r31,0
	ldi r18,lo8(1)
	ldi r19,0
	movw r20,r18
	rjmp 2f
	1:
	lsl r20
	rol r21
	2:
	dec r25
	brpl 1b
	movw r24,r20
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
.LVL161:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	com r24
	ldd r25,Z+1
.LVL162:
	and r24,r25
	std Z+1,r24
.L97:
/* epilogue start */
.LBE49:
	.loc 1 620 0
	pop r28
.LVL163:
	ret
	.cfi_endproc
.LFE42:
	.size	manual_NoteOnOff, .-manual_NoteOnOff
	.section	.text.midiAllNotesOff,"ax",@progbits
.global	midiAllNotesOff
	.type	midiAllNotesOff, @function
midiAllNotesOff:
.LFB20:
	.loc 1 108 0
	.cfi_startproc
.LVL164:
	push r12
.LCFI14:
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
.LCFI15:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI16:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI17:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI18:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI19:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI20:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI21:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r12,r24
.LVL165:
	.loc 1 109 0
	mov r13,__zero_reg__
	.loc 1 110 0
	rjmp .L101
.LVL166:
.L105:
	.loc 1 112 0
	mov r16,r12
	ldi r17,0
	mov r28,r13
	ldi r29,0
	movw r30,r16
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r28
	adc r31,r29
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(midiInMap))
	sbci r31,hi8(-(midiInMap))
	ld r24,Z
	cpi r24,lo8(4)
	brsh .L102
.LBB50:
	.loc 1 114 0
	movw r30,r16
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r28
	adc r31,r29
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(midiInMap))
	sbci r31,hi8(-(midiInMap))
	ldd r22,Z+3
.LVL167:
.LBB51:
	.loc 1 116 0
	ldd r15,Z+2
.LVL168:
	rjmp .L103
.L104:
	.loc 1 117 0 discriminator 3
	clr r14
	inc r14
	add r14,r22
.LVL169:
	movw r30,r16
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r28
	adc r31,r29
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(midiInMap))
	sbci r31,hi8(-(midiInMap))
	ldi r20,0
	ld r24,Z
	call manual_NoteOnOff
.LVL170:
	.loc 1 116 0 discriminator 3
	dec r15
.LVL171:
	.loc 1 117 0 discriminator 3
	mov r22,r14
.LVL172:
.L103:
	.loc 1 116 0 discriminator 1
	cpse r15,__zero_reg__
	rjmp .L104
.LVL173:
.L102:
.LBE51:
.LBE50:
	.loc 1 120 0
	inc r13
.LVL174:
.L101:
	.loc 1 110 0
	ldi r24,lo8(3)
	cp r24,r13
	brlo .+2
	rjmp .L105
/* epilogue start */
	.loc 1 122 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
.LVL175:
	pop r12
.LVL176:
	ret
	.cfi_endproc
.LFE20:
	.size	midiAllNotesOff, .-midiAllNotesOff
	.section	.text.midi_ManualOff,"ax",@progbits
.global	midi_ManualOff
	.type	midi_ManualOff, @function
midi_ManualOff:
.LFB21:
	.loc 1 124 0
	.cfi_startproc
.LVL177:
	push r16
.LCFI22:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI23:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI24:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI25:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 126 0
	cpi r24,lo8(4)
	brsh .L106
	.loc 1 126 0 is_stmt 0 discriminator 1
	mov r16,r24
	ldi r17,0
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ld r28,Z
	cpi r28,lo8(-1)
	breq .L106
	mov r29,r24
	.loc 1 126 0 discriminator 2
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r24,Z+1
.LVL178:
	cpi r24,lo8(-1)
	brne .L108
.LBB52:
	rjmp .L106
.LVL179:
.L109:
	.loc 1 128 0 is_stmt 1 discriminator 3
	ldi r20,0
	mov r22,r28
	mov r24,r29
	call manual_NoteOnOff
.LVL180:
	.loc 1 127 0 discriminator 3
	subi r28,lo8(-(1))
.LVL181:
.L108:
	.loc 1 127 0 is_stmt 0 discriminator 1
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r25,Z+1
	cp r25,r28
	brsh .L109
.LVL182:
.L106:
/* epilogue start */
.LBE52:
	.loc 1 131 0 is_stmt 1
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE21:
	.size	midi_ManualOff, .-midi_ManualOff
	.section	.text.midi_AllManualsOff,"ax",@progbits
.global	midi_AllManualsOff
	.type	midi_AllManualsOff, @function
midi_AllManualsOff:
.LFB22:
	.loc 1 133 0
	.cfi_startproc
	push r28
.LCFI26:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL183:
.LBB53:
	.loc 1 134 0
	ldi r28,0
	rjmp .L111
.LVL184:
.L112:
	.loc 1 135 0 discriminator 3
	mov r24,r28
	call midi_ManualOff
.LVL185:
	.loc 1 134 0 discriminator 3
	subi r28,lo8(-(1))
.LVL186:
.L111:
	.loc 1 134 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brlo .L112
/* epilogue start */
.LBE53:
	.loc 1 140 0 is_stmt 1
	pop r28
.LVL187:
	ret
	.cfi_endproc
.LFE22:
	.size	midi_AllManualsOff, .-midi_AllManualsOff
	.section	.text.midi_CheckRxActiveSense,"ax",@progbits
.global	midi_CheckRxActiveSense
	.type	midi_CheckRxActiveSense, @function
midi_CheckRxActiveSense:
.LFB23:
	.loc 1 142 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 143 0
	lds r24,midiRxActivceSensing
	tst r24
	breq .L113
	.loc 1 145 0
	lds r24,swTimer+6
	cpse r24,__zero_reg__
	rjmp .L113
	.loc 1 147 0
	call midi_AllManualsOff
.LVL188:
	.loc 1 148 0
	sts midiRxActivceSensing,__zero_reg__
.L113:
	ret
	.cfi_endproc
.LFE23:
	.size	midi_CheckRxActiveSense, .-midi_CheckRxActiveSense
	.section	.text.midiNote_to_Manual,"ax",@progbits
.global	midiNote_to_Manual
	.type	midiNote_to_Manual, @function
midiNote_to_Manual:
.LFB36:
	.loc 1 473 0
	.cfi_startproc
.LVL189:
	push r16
.LCFI27:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI28:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI29:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI30:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r22
	mov r17,r20
	.loc 1 474 0
	mov r29,r24
	andi r29,lo8(15)
.LVL190:
.LBB54:
	.loc 1 476 0
	ldi r28,0
.LBE54:
	.loc 1 475 0
	ldi r25,0
.LBB57:
	.loc 1 476 0
	rjmp .L116
.LVL191:
.L119:
	.loc 1 477 0
	mov r20,r29
	ldi r21,0
	mov r18,r28
	ldi r19,0
	movw r30,r20
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r18
	adc r31,r19
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(midiInMap))
	sbci r31,hi8(-(midiInMap))
	ld r24,Z
	cpi r24,lo8(4)
	brsh .L117
.LVL192:
.LBB55:
	.loc 1 479 0
	movw r26,r30
	ldd r22,Z+1
	mov r23,r16
	sub r23,r22
	mov r22,r23
.LVL193:
	.loc 1 480 0
	brmi .L117
	.loc 1 480 0 is_stmt 0 discriminator 1
	movw r30,r26
	ldd r30,Z+2
	ldi r31,0
	mov r26,r23
	lsl r23
	sbc r27,r27
	cp r26,r30
	cpc r27,r31
	brge .L117
.LVL194:
.LBB56:
	.loc 1 483 0 is_stmt 1
	movw r30,r20
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r18
	adc r31,r19
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(midiInMap))
	sbci r31,hi8(-(midiInMap))
	ldd r25,Z+3
.LVL195:
	add r22,r25
.LVL196:
	.loc 1 484 0
	cpi r17,lo8(1)
	brne .L118
	.loc 1 485 0
	sts midiLastInManual,r24
	.loc 1 486 0
	sts midiLastInNote,r22
.L118:
	.loc 1 488 0
	mov r20,r17
.LVL197:
	call manual_NoteOnOff
.LVL198:
	.loc 1 489 0
	ldi r25,lo8(-1)
.LVL199:
.L117:
.LBE56:
.LBE55:
	.loc 1 476 0 discriminator 2
	subi r28,lo8(-(1))
.LVL200:
.L116:
	.loc 1 476 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brsh .+2
	rjmp .L119
.LBE57:
	.loc 1 493 0 is_stmt 1
	cpi r17,lo8(1)
	brne .L115
	.loc 1 493 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L115
	.loc 1 495 0 is_stmt 1
	sts midiLastInNote,r16
	.loc 1 496 0
	sts midiLastInChannel,r29
	.loc 1 497 0
	ldi r24,lo8(-1)
	sts midiLastInManual,r24
.L115:
/* epilogue start */
	.loc 1 499 0
	pop r29
.LVL201:
	pop r28
.LVL202:
	pop r17
.LVL203:
	pop r16
.LVL204:
	ret
	.cfi_endproc
.LFE36:
	.size	midiNote_to_Manual, .-midiNote_to_Manual
	.section	.text.midiIn_Process,"ax",@progbits
.global	midiIn_Process
	.type	midiIn_Process, @function
midiIn_Process:
.LFB25:
	.loc 1 165 0
	.cfi_startproc
.LVL205:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 166 0
	tst r24
	brlt .+2
	rjmp .L122
	.loc 1 169 0
	cpi r24,lo8(-8)
	brlo .L123
	.loc 1 171 0
	cpi r24,lo8(-2)
	brne .L124
	.loc 1 172 0
	ldi r24,lo8(1)
.LVL206:
	sts midiRxActivceSensing,r24
.LBB58:
	.loc 1 173 0
	in r25,__SREG__
.LVL207:
.LBB59:
.LBB60:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE60:
.LBE59:
	.loc 1 173 0
	rjmp .L125
.LVL208:
.L126:
	.loc 1 173 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(25)
.LVL209:
	std Z+6,r24
	std Z+7,__zero_reg__
.LVL210:
	.loc 1 173 0 discriminator 3
	ldi r24,0
.LVL211:
.L125:
	.loc 1 173 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L126
.LVL212:
.LBB61:
.LBB62:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL213:
.LBE62:
.LBE61:
.LBE58:
	ret
.LVL214:
.L124:
	.loc 1 174 0
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L121
	.loc 1 175 0
	call midiAllReset
.LVL215:
	ret
.LVL216:
.L123:
	.loc 1 180 0
	sts midiLastCommand,r24
	.loc 1 181 0
	sts midiDataByteCount,__zero_reg__
	.loc 1 182 0
	ldi r25,lo8(-128)
	add r25,r24
	cpi r25,lo8(64)
	brsh .L128
	.loc 1 184 0
	ldi r24,lo8(2)
.LVL217:
	sts midiDataByteExpected,r24
	ret
.LVL218:
.L128:
	.loc 1 185 0
	ldi r25,lo8(32)
	add r25,r24
	cpi r25,lo8(16)
	brsh .L129
	.loc 1 187 0
	ldi r24,lo8(2)
.LVL219:
	sts midiDataByteExpected,r24
	ret
.LVL220:
.L129:
	.loc 1 188 0
	cpi r24,lo8(-14)
	brne .L130
	.loc 1 190 0
	ldi r24,lo8(2)
.LVL221:
	sts midiDataByteExpected,r24
	ret
.LVL222:
.L130:
	.loc 1 191 0
	cpi r24,lo8(-16)
	brne .L131
	.loc 1 193 0
	ldi r24,lo8(-1)
.LVL223:
	sts midiDataByteExpected,r24
	ret
.LVL224:
.L131:
	.loc 1 194 0
	ldi r25,lo8(64)
	add r25,r24
	cpi r25,lo8(32)
	brsh .L132
	.loc 1 196 0
	ldi r24,lo8(1)
.LVL225:
	sts midiDataByteExpected,r24
	ret
.LVL226:
.L132:
	.loc 1 197 0
	cpi r24,lo8(-15)
	breq .L133
	.loc 1 197 0 is_stmt 0 discriminator 1
	cpi r24,lo8(-13)
	brne .L134
.L133:
	.loc 1 199 0 is_stmt 1
	ldi r24,lo8(1)
.LVL227:
	sts midiDataByteExpected,r24
	ret
.LVL228:
.L134:
	.loc 1 202 0
	sts midiDataByteExpected,__zero_reg__
	ret
.L122:
	.loc 1 208 0
	lds r30,midiDataByteCount
	cpi r30,lo8(2)
	brsh .L135
	.loc 1 210 0
	ldi r25,lo8(1)
	add r25,r30
	sts midiDataByteCount,r25
	ldi r31,0
	subi r30,lo8(-(midiDataByte))
	sbci r31,hi8(-(midiDataByte))
	st Z,r24
.L135:
	.loc 1 212 0
	lds r24,midiDataByteExpected
.LVL229:
	cpi r24,lo8(-1)
	breq .L121
	.loc 1 214 0
	lds r25,midiDataByteCount
	cp r25,r24
	brlo .L121
	.loc 1 216 0
	lds r25,midiLastCommand
	cpi r25,lo8(-16)
	brsh .L136
.LBB63:
	.loc 1 218 0
	mov r24,r25
	andi r24,lo8(15)
.LVL230:
	.loc 1 220 0
	andi r25,lo8(-16)
	cpi r25,lo8(-112)
	breq .L137
	brsh .L138
	cpi r25,lo8(-128)
	breq .L139
	rjmp .L136
.L138:
	cpi r25,lo8(-80)
	breq .L140
	cpi r25,lo8(-64)
	breq .L141
	rjmp .L136
.L139:
.LVL231:
	.loc 1 224 0
	ldi r20,0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL232:
	.loc 1 225 0
	rjmp .L136
.LVL233:
.L137:
	.loc 1 227 0
	lds r25,midiDataByte+1
	cpse r25,__zero_reg__
	rjmp .L143
	.loc 1 229 0
	ldi r20,0
	rjmp .L142
.L143:
	.loc 1 232 0
	ldi r20,lo8(1)
.L142:
.LVL234:
	.loc 1 234 0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL235:
	.loc 1 235 0
	rjmp .L136
.LVL236:
.L140:
	.loc 1 237 0
	lds r25,midiDataByte
	cpi r25,lo8(123)
	brne .L136
	.loc 1 238 0
	call midiAllNotesOff
.LVL237:
	rjmp .L136
.LVL238:
.L141:
	.loc 1 242 0
	lds r24,midiDataByte
.LVL239:
	call program_toRegister
.LVL240:
.L136:
.LBE63:
	.loc 1 249 0
	sts midiDataByteCount,__zero_reg__
.L121:
	ret
	.cfi_endproc
.LFE25:
	.size	midiIn_Process, .-midiIn_Process
	.section	.text.midiKeyPress_Process,"ax",@progbits
.global	midiKeyPress_Process
	.type	midiKeyPress_Process, @function
midiKeyPress_Process:
.LFB43:
	.loc 1 624 0
	.cfi_startproc
.LVL241:
	push r12
.LCFI31:
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
.LCFI32:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI33:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI34:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI35:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI36:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI37:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI38:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 1 625 0
	mov r17,r25
	andi r17,lo8(-32)
.LVL242:
	.loc 1 626 0
	andi r25,lo8(31)
	mov r13,r25
.LVL243:
	.loc 1 627 0
	mov r29,r24
.LVL244:
	.loc 1 630 0
	cpi r17,lo8(32)
	brne .+2
	rjmp .L164
	.loc 1 630 0 is_stmt 0 discriminator 1
	tst r17
	brne .+2
	rjmp .L165
.LBB64:
	rjmp .L144
.LVL245:
.L163:
	.loc 1 634 0 is_stmt 1
	sbrs r29,0
	rjmp .L147
	.loc 1 636 0
	ldi r18,lo8(32)
	mul r28,r18
	movw r24,r0
	clr __zero_reg__
.LVL246:
	or r24,r13
	call moduleBit_to_manualNote
.LVL247:
	mov r15,r24
	mov r14,r25
	.loc 1 638 0
	mov r16,r24
	cpi r24,lo8(-1)
	brne .+2
	rjmp .L147
.LBB65:
	.loc 1 641 0
	mov r22,r25
	call Manual_to_MidiNote
.LVL248:
	mov r12,r25
	.loc 1 642 0
	cpi r24,lo8(-1)
	breq .L148
	.loc 1 644 0
	cpi r17,lo8(32)
	breq .L166
	.loc 1 644 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
	tst r25
	breq .L167
	.loc 1 644 0
	ldi r25,lo8(-112)
	rjmp .L149
.L166:
	ldi r25,lo8(-112)
	rjmp .L149
.L167:
	ldi r25,lo8(-128)
.L149:
	.loc 1 644 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL249:
	.loc 1 646 0 is_stmt 1 discriminator 6
	mov r24,r12
	call serial1MIDISend
.LVL250:
	.loc 1 648 0 discriminator 6
	cpse r17,__zero_reg__
	rjmp .L168
	.loc 1 648 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L169
	.loc 1 648 0
	ldi r24,lo8(64)
	rjmp .L150
.L168:
	ldi r24,lo8(64)
	rjmp .L150
.L169:
	ldi r24,0
.L150:
	.loc 1 648 0 discriminator 6
	call serial1MIDISend
.LVL251:
	.loc 1 650 0 is_stmt 1 discriminator 6
	cpi r17,lo8(32)
	brne .L148
	.loc 1 652 0
	sts midiLastOutManual,r15
.LVL252:
	.loc 1 653 0
	sts midiLastOutNote,r14
.LVL253:
.L148:
	.loc 1 657 0
	ldi r20,lo8(1)
	cpi r17,lo8(32)
	breq .L151
	ldi r20,0
.L151:
	mov r15,r20
.LVL254:
	.loc 1 658 0
	cpse r16,__zero_reg__
	rjmp .L152
	.loc 1 659 0
	lds r24,midi_Couplers
.LVL255:
	cpi r24,lo8(-1)
	brne .L153
	.loc 1 660 0
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL256:
.L153:
	.loc 1 662 0
	lds r24,midi_Couplers+1
	cpi r24,lo8(-1)
	brne .L154
	.loc 1 663 0
	mov r20,r15
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL257:
.L154:
	.loc 1 665 0
	lds r24,midi_Couplers+3
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L147
	.loc 1 666 0
	mov r20,r15
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL258:
	rjmp .L147
.LVL259:
.L152:
	.loc 1 668 0
	cpi r16,lo8(1)
	brne .L155
	.loc 1 669 0
	lds r24,midi_Couplers+2
.LVL260:
	cpi r24,lo8(-1)
	brne .L156
	.loc 1 670 0
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL261:
.L156:
	.loc 1 672 0
	lds r24,midi_Couplers+4
	cpi r24,lo8(-1)
	brne .L157
	.loc 1 673 0
	mov r20,r15
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL262:
.L157:
	.loc 1 675 0
	lds r24,midi_Couplers+6
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L147
	.loc 1 676 0
	mov r20,r15
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL263:
	rjmp .L147
.LVL264:
.L155:
	.loc 1 678 0
	cpi r16,lo8(2)
	brne .L158
	.loc 1 679 0
	lds r24,midi_Couplers+5
.LVL265:
	cpi r24,lo8(-1)
	brne .L159
	.loc 1 680 0
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL266:
.L159:
	.loc 1 682 0
	lds r24,midi_Couplers+7
	cpi r24,lo8(-1)
	brne .L160
	.loc 1 683 0
	mov r20,r15
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL267:
.L160:
	.loc 1 685 0
	lds r24,midi_Couplers+8
	cpi r24,lo8(-1)
	brne .L147
	.loc 1 686 0
	mov r20,r15
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL268:
	rjmp .L147
.LVL269:
.L158:
	.loc 1 688 0
	cpi r16,lo8(3)
	brne .L147
	.loc 1 689 0
	lds r24,midi_Couplers+9
.LVL270:
	cpi r24,lo8(-1)
	brne .L161
	.loc 1 690 0
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL271:
.L161:
	.loc 1 692 0
	lds r24,midi_Couplers+10
	cpi r24,lo8(-1)
	brne .L162
	.loc 1 693 0
	mov r20,r15
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL272:
.L162:
	.loc 1 695 0
	lds r24,midi_Couplers+11
	cpi r24,lo8(-1)
	brne .L147
	.loc 1 696 0
	mov r20,r15
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL273:
.L147:
.LBE65:
	.loc 1 701 0 discriminator 2
	lsr r29
.LVL274:
	.loc 1 632 0 discriminator 2
	subi r28,lo8(-(1))
.LVL275:
	rjmp .L145
.LVL276:
.L164:
.LBE64:
	ldi r28,0
	rjmp .L145
.L165:
	ldi r28,0
.LVL277:
.L145:
.LBB66:
	.loc 1 632 0 is_stmt 0 discriminator 1
	cpi r28,lo8(8)
	brsh .+2
	rjmp .L163
.LVL278:
.L144:
/* epilogue start */
.LBE66:
	.loc 1 704 0 is_stmt 1
	pop r29
	pop r28
	pop r17
.LVL279:
	pop r16
	pop r15
	pop r14
	pop r13
.LVL280:
	pop r12
.LVL281:
	ret
	.cfi_endproc
.LFE43:
	.size	midiKeyPress_Process, .-midiKeyPress_Process
	.section	.text.midiSendAllNotesOff,"ax",@progbits
.global	midiSendAllNotesOff
	.type	midiSendAllNotesOff, @function
midiSendAllNotesOff:
.LFB44:
	.loc 1 708 0
	.cfi_startproc
	push r28
.LCFI39:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL282:
.LBB67:
	.loc 1 709 0
	ldi r28,0
	rjmp .L171
.LVL283:
.L173:
.LBB68:
	.loc 1 710 0
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL284:
	.loc 1 711 0
	cpi r24,lo8(16)
	brsh .L172
	.loc 1 712 0
	ori r24,lo8(-80)
.LVL285:
	call serial1MIDISend
.LVL286:
	.loc 1 713 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL287:
	.loc 1 714 0
	ldi r24,0
	call serial1MIDISend
.LVL288:
.L172:
.LBE68:
	.loc 1 709 0 discriminator 2
	subi r28,lo8(-(1))
.LVL289:
.L171:
	.loc 1 709 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brlo .L173
/* epilogue start */
.LBE67:
	.loc 1 717 0 is_stmt 1
	pop r28
.LVL290:
	ret
	.cfi_endproc
.LFE44:
	.size	midiSendAllNotesOff, .-midiSendAllNotesOff
	.section	.text.midi_SendActiveSense,"ax",@progbits
.global	midi_SendActiveSense
	.type	midi_SendActiveSense, @function
midi_SendActiveSense:
.LFB45:
	.loc 1 719 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 720 0
	ldi r24,lo8(-2)
	call serial1MIDISend
.LVL291:
	ret
	.cfi_endproc
.LFE45:
	.size	midi_SendActiveSense, .-midi_SendActiveSense
	.section	.text.midi_CheckTxActiveSense,"ax",@progbits
.global	midi_CheckTxActiveSense
	.type	midi_CheckTxActiveSense, @function
midi_CheckTxActiveSense:
.LFB24:
	.loc 1 153 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 154 0
	lds r24,midi_Setting
	tst r24
	breq .L175
	.loc 1 155 0
	lds r24,swTimer+16
	tst r24
	breq .L177
	.loc 1 155 0 is_stmt 0 discriminator 1
	lds r24,swTimer+16
	cpi r24,lo8(-1)
	brne .L175
.L177:
.LBB69:
	.loc 1 157 0 is_stmt 1
	in r25,__SREG__
.LVL292:
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
	.loc 1 157 0
	ldi r24,lo8(1)
	rjmp .L178
.LVL293:
.L179:
	.loc 1 157 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(10)
.LVL294:
	std Z+16,r24
	std Z+17,__zero_reg__
.LVL295:
	.loc 1 157 0 discriminator 3
	ldi r24,0
.LVL296:
.L178:
	.loc 1 157 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L179
.LVL297:
.LBB72:
.LBB73:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL298:
.LBE73:
.LBE72:
.LBE69:
	.loc 1 158 0
	call midi_SendActiveSense
.LVL299:
.L175:
	ret
	.cfi_endproc
.LFE24:
	.size	midi_CheckTxActiveSense, .-midi_CheckTxActiveSense
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
	.comm	registerMap,24,1
.global	midiEEPromLoadError
	.section	.bss.midiEEPromLoadError,"aw",@nobits
	.type	midiEEPromLoadError, @object
	.size	midiEEPromLoadError, 1
midiEEPromLoadError:
	.zero	1
	.comm	midi_Setting,2,1
.global	midiRxActivceSensing
	.section	.bss.midiRxActivceSensing,"aw",@nobits
	.type	midiRxActivceSensing, @object
	.size	midiRxActivceSensing, 1
midiRxActivceSensing:
	.zero	1
	.comm	midiOutMap,4,1
	.comm	midiInMap,256,1
	.comm	ManualNoteRange,8,1
	.comm	manualMap,48,1
.global	cplInfo
	.section	.progmem.data.cplInfo,"a",@progbits
	.type	cplInfo, @object
	.size	cplInfo, 24
cplInfo:
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	1
	.byte	3
	.byte	0
	.byte	3
	.byte	1
	.byte	3
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	1
	.byte	2
	.byte	0
	.byte	3
	.byte	1
	.byte	3
	.byte	2
	.byte	3
	.comm	midi_Couplers,12,1
	.comm	lcdData,10,1
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 ".././message.h"
	.file 5 ".././hwtimer.h"
	.file 6 ".././Midi.h"
	.file 7 ".././menu.h"
	.file 8 ".././ee_prom.h"
	.file 9 ".././log.h"
	.file 10 ".././serial.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1521
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF153
	.byte	0xc
	.long	.LASF154
	.long	.LASF155
	.long	.Ldebug_ranges0+0x138
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
	.byte	0x2c
	.long	0x19c
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0x2d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0x2e
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF28
	.byte	0x6
	.byte	0x2f
	.long	0x177
	.uleb128 0x9
	.byte	0x2
	.byte	0x6
	.byte	0x31
	.long	0x1cc
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.byte	0x32
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0x33
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF30
	.byte	0x6
	.byte	0x34
	.long	0x1a7
	.uleb128 0x9
	.byte	0x2
	.byte	0x6
	.byte	0x3e
	.long	0x1fc
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.byte	0x3f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.byte	0x40
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF33
	.byte	0x6
	.byte	0x41
	.long	0x1d7
	.uleb128 0x9
	.byte	0x3
	.byte	0x6
	.byte	0x43
	.long	0x23a
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.byte	0x44
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.byte	0x45
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.byte	0x46
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF37
	.byte	0x6
	.byte	0x47
	.long	0x207
	.uleb128 0x9
	.byte	0x2
	.byte	0x6
	.byte	0x4a
	.long	0x26a
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.byte	0x4b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.byte	0x4c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF38
	.byte	0x6
	.byte	0x4d
	.long	0x245
	.uleb128 0x9
	.byte	0x4
	.byte	0x6
	.byte	0x73
	.long	0x2b6
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.byte	0x74
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.byte	0x75
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.byte	0x76
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF41
	.byte	0x6
	.byte	0x77
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x6
	.byte	0x78
	.long	0x275
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.byte	0x7c
	.long	0x2d8
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0x7d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x6
	.byte	0x7e
	.long	0x2c1
	.uleb128 0x9
	.byte	0x3
	.byte	0x6
	.byte	0x82
	.long	0x316
	.uleb128 0xa
	.long	.LASF44
	.byte	0x6
	.byte	0x83
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF45
	.byte	0x6
	.byte	0x84
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.byte	0x85
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF46
	.byte	0x6
	.byte	0x86
	.long	0x2e3
	.uleb128 0x9
	.byte	0x2
	.byte	0x6
	.byte	0x9e
	.long	0x346
	.uleb128 0xa
	.long	.LASF47
	.byte	0x6
	.byte	0x9f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF48
	.byte	0x6
	.byte	0xa0
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x6
	.byte	0xa1
	.long	0x321
	.uleb128 0xb
	.byte	0x2
	.long	0x3b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF50
	.uleb128 0xc
	.long	0x3b
	.uleb128 0x5
	.long	0x23a
	.long	0x379
	.uleb128 0x6
	.long	0x82
	.byte	0x3
	.uleb128 0x6
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x2b6
	.long	0x38f
	.uleb128 0x6
	.long	0x82
	.byte	0xf
	.uleb128 0x6
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x2d8
	.long	0x39f
	.uleb128 0x6
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x316
	.long	0x3af
	.uleb128 0x6
	.long	0x82
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	0x3b
	.long	0x3c5
	.uleb128 0x6
	.long	0x82
	.byte	0x3f
	.uleb128 0x6
	.long	0x82
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	.LASF156
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0xe
	.long	.LASF157
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x3eb
	.uleb128 0xf
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0x3eb
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x35e
	.uleb128 0x10
	.byte	0x1
	.long	.LASF52
	.byte	0x1
	.byte	0x39
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x42d
	.uleb128 0x11
	.long	.LASF51
	.byte	0x1
	.byte	0x3b
	.long	0x351
	.long	.LLST0
	.uleb128 0x12
	.long	.Ldebug_ranges0+0
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x3c
	.long	0x3b
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	0x3b
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x45b
	.uleb128 0x15
	.long	.LASF62
	.byte	0x1
	.byte	0x43
	.long	0x3b
	.long	.LLST2
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF53
	.byte	0x1
	.byte	0x67
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x47e
	.uleb128 0x16
	.long	.LVL11
	.long	0x14af
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.word	0x104
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x4bf
	.uleb128 0x18
	.long	.LASF55
	.byte	0x1
	.word	0x105
	.long	0x3b
	.long	.LLST3
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x18
	.long	.LASF56
	.byte	0x1
	.word	0x106
	.long	0x3b
	.long	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.word	0x10f
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x583
	.uleb128 0x19
	.long	.LBB17
	.long	.LBE17
	.long	0x4f7
	.uleb128 0x18
	.long	.LASF56
	.byte	0x1
	.word	0x113
	.long	0x3b
	.long	.LLST5
	.byte	0
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x30
	.long	0x527
	.uleb128 0x18
	.long	.LASF58
	.byte	0x1
	.word	0x121
	.long	0x3b
	.long	.LLST6
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x18
	.long	.LASF59
	.byte	0x1
	.word	0x122
	.long	0x3b
	.long	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LVL20
	.long	0x14bc
	.uleb128 0x1b
	.long	.LVL21
	.long	0x14c9
	.long	0x552
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x35
	.uleb128 0x1c
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
	.uleb128 0x16
	.long	.LVL22
	.long	0x47e
	.uleb128 0x16
	.long	.LVL23
	.long	0x14d6
	.uleb128 0x1d
	.long	.LVL31
	.long	0x14c9
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x36
	.uleb128 0x1c
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
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF61
	.byte	0x1
	.word	0x12a
	.byte	0x1
	.long	0x1fc
	.long	.LFB28
	.long	.LFE28
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x5e7
	.uleb128 0x1f
	.long	.LASF59
	.byte	0x1
	.word	0x12a
	.long	0x3b
	.long	.LLST8
	.uleb128 0x20
	.long	.LASF66
	.byte	0x1
	.word	0x12c
	.long	0x1fc
	.uleb128 0x21
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x18
	.long	.LASF63
	.byte	0x1
	.word	0x130
	.long	0x5e7
	.long	.LLST9
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.word	0x132
	.long	0x3b
	.long	.LLST10
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x316
	.uleb128 0x23
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.word	0x142
	.byte	0x1
	.long	0x3b
	.long	.LFB29
	.long	.LFE29
	.long	.LLST11
	.byte	0x1
	.long	0x69a
	.uleb128 0x1f
	.long	.LASF59
	.byte	0x1
	.word	0x142
	.long	0x3b
	.long	.LLST12
	.uleb128 0x1f
	.long	.LASF65
	.byte	0x1
	.word	0x142
	.long	0x3b
	.long	.LLST13
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x20
	.long	.LASF67
	.byte	0x1
	.word	0x147
	.long	0x1fc
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x78
	.long	0x687
	.uleb128 0x18
	.long	.LASF68
	.byte	0x1
	.word	0x14a
	.long	0x3b
	.long	.LLST14
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.word	0x14b
	.long	0x3b
	.long	.LLST15
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.word	0x14c
	.long	0x3b
	.long	.LLST16
	.uleb128 0x18
	.long	.LASF71
	.byte	0x1
	.word	0x14d
	.long	0x3b
	.long	.LLST17
	.byte	0
	.uleb128 0x1d
	.long	.LVL43
	.long	0x583
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF73
	.byte	0x1
	.word	0x15d
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST18
	.byte	0x1
	.long	0x701
	.uleb128 0x1f
	.long	.LASF72
	.byte	0x1
	.word	0x15d
	.long	0x351
	.long	.LLST19
	.uleb128 0x18
	.long	.LASF71
	.byte	0x1
	.word	0x15f
	.long	0x3b
	.long	.LLST20
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x18
	.long	.LASF59
	.byte	0x1
	.word	0x160
	.long	0x3b
	.long	.LLST21
	.uleb128 0x1d
	.long	.LVL62
	.long	0x5ed
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF74
	.byte	0x1
	.word	0x170
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST22
	.byte	0x1
	.long	0x7a2
	.uleb128 0x1f
	.long	.LASF59
	.byte	0x1
	.word	0x170
	.long	0x3b
	.long	.LLST23
	.uleb128 0x1f
	.long	.LASF75
	.byte	0x1
	.word	0x170
	.long	0x3b
	.long	.LLST24
	.uleb128 0x21
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x20
	.long	.LASF67
	.byte	0x1
	.word	0x174
	.long	0x1fc
	.uleb128 0x19
	.long	.LBB30
	.long	.LBE30
	.long	0x78f
	.uleb128 0x18
	.long	.LASF68
	.byte	0x1
	.word	0x177
	.long	0x3b
	.long	.LLST25
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.word	0x178
	.long	0x3b
	.long	.LLST26
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.word	0x179
	.long	0x3b
	.long	.LLST27
	.byte	0
	.uleb128 0x1d
	.long	.LVL71
	.long	0x583
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.word	0x186
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST28
	.byte	0x1
	.long	0x850
	.uleb128 0x1f
	.long	.LASF77
	.byte	0x1
	.word	0x186
	.long	0x3b
	.long	.LLST29
	.uleb128 0x21
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x18
	.long	.LASF78
	.byte	0x1
	.word	0x189
	.long	0x3b
	.long	.LLST30
	.uleb128 0x18
	.long	.LASF59
	.byte	0x1
	.word	0x18a
	.long	0x3b
	.long	.LLST31
	.uleb128 0x18
	.long	.LASF79
	.byte	0x1
	.word	0x18b
	.long	0x351
	.long	.LLST32
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xa8
	.uleb128 0x18
	.long	.LASF80
	.byte	0x1
	.word	0x18c
	.long	0x3b
	.long	.LLST33
	.uleb128 0x21
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.word	0x18f
	.long	0x3b
	.long	.LLST34
	.uleb128 0x1d
	.long	.LVL89
	.long	0x701
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x4
	.byte	0x8d
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF81
	.byte	0x1
	.word	0x198
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x89f
	.uleb128 0x1f
	.long	.LASF77
	.byte	0x1
	.word	0x198
	.long	0x3b
	.long	.LLST35
	.uleb128 0x21
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x18
	.long	.LASF79
	.byte	0x1
	.word	0x19c
	.long	0x351
	.long	.LLST36
	.uleb128 0x16
	.long	.LVL99
	.long	0x69a
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.word	0x1a4
	.long	.LFB34
	.long	.LFE34
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x909
	.uleb128 0x18
	.long	.LASF83
	.byte	0x1
	.word	0x1a5
	.long	0x909
	.long	.LLST37
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0xc0
	.long	0x8e1
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.word	0x1a8
	.long	0x3b
	.long	.LLST38
	.byte	0
	.uleb128 0x16
	.long	.LVL104
	.long	0x14e3
	.uleb128 0x1d
	.long	.LVL105
	.long	0x14c9
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.uleb128 0x1c
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
	.long	0x2b6
	.uleb128 0x17
	.byte	0x1
	.long	.LASF84
	.byte	0x1
	.word	0x1c7
	.long	.LFB35
	.long	.LFE35
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x96d
	.uleb128 0x19
	.long	.LBB38
	.long	.LBE38
	.long	0x945
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.word	0x1c9
	.long	0x3b
	.long	.LLST39
	.byte	0
	.uleb128 0x16
	.long	.LVL109
	.long	0x14f0
	.uleb128 0x1d
	.long	.LVL110
	.long	0x14c9
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x32
	.uleb128 0x1c
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
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF85
	.byte	0x1
	.word	0x1f5
	.byte	0x1
	.long	0x19c
	.long	.LFB37
	.long	.LFE37
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x9b7
	.uleb128 0x1f
	.long	.LASF29
	.byte	0x1
	.word	0x1f5
	.long	0x3b
	.long	.LLST40
	.uleb128 0x26
	.long	.LASF27
	.byte	0x1
	.word	0x1f5
	.long	0x3b
	.byte	0x1
	.byte	0x66
	.uleb128 0x20
	.long	.LASF66
	.byte	0x1
	.word	0x1f6
	.long	0x19c
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF86
	.byte	0x1
	.word	0x202
	.long	.LFB38
	.long	.LFE38
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xa26
	.uleb128 0x21
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.word	0x203
	.long	0x3b
	.long	.LLST41
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xd8
	.uleb128 0x18
	.long	.LASF87
	.byte	0x1
	.word	0x204
	.long	0x3b
	.long	.LLST42
	.uleb128 0x18
	.long	.LASF88
	.byte	0x1
	.word	0x205
	.long	0x3b
	.long	.LLST43
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xd8
	.uleb128 0x18
	.long	.LASF89
	.byte	0x1
	.word	0x206
	.long	0x3b
	.long	.LLST44
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF90
	.byte	0x1
	.word	0x21a
	.long	.LFB39
	.long	.LFE39
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xaa5
	.uleb128 0x19
	.long	.LBB44
	.long	.LBE44
	.long	0xa70
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.word	0x21b
	.long	0x29
	.long	.LLST45
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.word	0x21d
	.long	0x29
	.long	.LLST46
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LVL130
	.long	0x14fd
	.uleb128 0x1b
	.long	.LVL131
	.long	0x14c9
	.long	0xa9b
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x33
	.uleb128 0x1c
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
	.uleb128 0x16
	.long	.LVL132
	.long	0x9b7
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF91
	.byte	0x1
	.word	0x22d
	.byte	0x1
	.long	0x1fc
	.long	.LFB40
	.long	.LFE40
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xb19
	.uleb128 0x1f
	.long	.LASF29
	.byte	0x1
	.word	0x22d
	.long	0x3b
	.long	.LLST47
	.uleb128 0x1f
	.long	.LASF27
	.byte	0x1
	.word	0x22d
	.long	0x3b
	.long	.LLST48
	.uleb128 0x20
	.long	.LASF66
	.byte	0x1
	.word	0x22f
	.long	0x1fc
	.uleb128 0x21
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x18
	.long	.LASF63
	.byte	0x1
	.word	0x232
	.long	0xb19
	.long	.LLST49
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.word	0x234
	.long	0x3b
	.long	.LLST50
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x23a
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF92
	.byte	0x1
	.word	0x244
	.byte	0x1
	.long	0x1cc
	.long	.LFB41
	.long	.LFE41
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xbab
	.uleb128 0x1f
	.long	.LASF32
	.byte	0x1
	.word	0x244
	.long	0x3b
	.long	.LLST51
	.uleb128 0x20
	.long	.LASF66
	.byte	0x1
	.word	0x248
	.long	0x1cc
	.uleb128 0x18
	.long	.LASF63
	.byte	0x1
	.word	0x249
	.long	0xb19
	.long	.LLST52
	.uleb128 0x18
	.long	.LASF29
	.byte	0x1
	.word	0x24b
	.long	0x3b
	.long	.LLST53
	.uleb128 0x19
	.long	.LBB48
	.long	.LBE48
	.long	0xb96
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.word	0x24d
	.long	0x3b
	.long	.LLST54
	.byte	0
	.uleb128 0x1d
	.long	.LVL152
	.long	0x150a
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF93
	.byte	0x1
	.word	0x25d
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.long	.LLST55
	.byte	0x1
	.long	0xc49
	.uleb128 0x1f
	.long	.LASF29
	.byte	0x1
	.word	0x25d
	.long	0x3b
	.long	.LLST56
	.uleb128 0x1f
	.long	.LASF27
	.byte	0x1
	.word	0x25d
	.long	0x3b
	.long	.LLST57
	.uleb128 0x1f
	.long	.LASF75
	.byte	0x1
	.word	0x25d
	.long	0x3b
	.long	.LLST58
	.uleb128 0x20
	.long	.LASF94
	.byte	0x1
	.word	0x25e
	.long	0x1fc
	.uleb128 0x19
	.long	.LBB49
	.long	.LBE49
	.long	0xc30
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.word	0x262
	.long	0x3b
	.long	.LLST59
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.word	0x263
	.long	0x3b
	.long	.LLST60
	.byte	0
	.uleb128 0x1d
	.long	.LVL154
	.long	0xaa5
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF95
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST61
	.byte	0x1
	.long	0xcc2
	.uleb128 0x15
	.long	.LASF26
	.byte	0x1
	.byte	0x6c
	.long	0x3b
	.long	.LLST62
	.uleb128 0x11
	.long	.LASF96
	.byte	0x1
	.byte	0x6d
	.long	0x3b
	.long	.LLST63
	.uleb128 0x21
	.long	.LBB50
	.long	.LBE50
	.uleb128 0x11
	.long	.LASF27
	.byte	0x1
	.byte	0x72
	.long	0x3b
	.long	.LLST64
	.uleb128 0x21
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x74
	.long	0x3b
	.long	.LLST65
	.uleb128 0x1d
	.long	.LVL170
	.long	0xbab
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF97
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST66
	.byte	0x1
	.long	0xd21
	.uleb128 0x15
	.long	.LASF29
	.byte	0x1
	.byte	0x7c
	.long	0x3b
	.long	.LLST67
	.uleb128 0x21
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x11
	.long	.LASF27
	.byte	0x1
	.byte	0x7f
	.long	0x3b
	.long	.LLST68
	.uleb128 0x1d
	.long	.LVL180
	.long	0xbab
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF98
	.byte	0x1
	.byte	0x85
	.long	.LFB22
	.long	.LFE22
	.long	.LLST69
	.byte	0x1
	.long	0xd64
	.uleb128 0x21
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x11
	.long	.LASF29
	.byte	0x1
	.byte	0x86
	.long	0x3b
	.long	.LLST70
	.uleb128 0x1d
	.long	.LVL185
	.long	0xcc2
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF99
	.byte	0x1
	.byte	0x8e
	.long	.LFB23
	.long	.LFE23
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xd87
	.uleb128 0x16
	.long	.LVL188
	.long	0xd21
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF100
	.byte	0x1
	.word	0x1d9
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST71
	.byte	0x1
	.long	0xe4b
	.uleb128 0x1f
	.long	.LASF26
	.byte	0x1
	.word	0x1d9
	.long	0x3b
	.long	.LLST72
	.uleb128 0x1f
	.long	.LASF27
	.byte	0x1
	.word	0x1d9
	.long	0x3b
	.long	.LLST73
	.uleb128 0x1f
	.long	.LASF75
	.byte	0x1
	.word	0x1d9
	.long	0x3b
	.long	.LLST74
	.uleb128 0x18
	.long	.LASF101
	.byte	0x1
	.word	0x1db
	.long	0x3b
	.long	.LLST75
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x108
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.word	0x1dc
	.long	0x3b
	.long	.LLST76
	.uleb128 0x21
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x18
	.long	.LASF102
	.byte	0x1
	.word	0x1df
	.long	0x29
	.long	.LLST77
	.uleb128 0x21
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x18
	.long	.LASF29
	.byte	0x1
	.word	0x1e2
	.long	0x3b
	.long	.LLST78
	.uleb128 0x18
	.long	.LASF103
	.byte	0x1
	.word	0x1e3
	.long	0x3b
	.long	.LLST79
	.uleb128 0x1d
	.long	.LVL198
	.long	0xbab
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF104
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xf2c
	.uleb128 0x15
	.long	.LASF105
	.byte	0x1
	.byte	0xa5
	.long	0x3b
	.long	.LLST80
	.uleb128 0x19
	.long	.LBB58
	.long	.LBE58
	.long	0xec8
	.uleb128 0x11
	.long	.LASF106
	.byte	0x1
	.byte	0xad
	.long	0x3b
	.long	.LLST81
	.uleb128 0x11
	.long	.LASF107
	.byte	0x1
	.byte	0xad
	.long	0x3b
	.long	.LLST82
	.uleb128 0x2a
	.long	0x3c5
	.long	.LBB59
	.long	.LBE59
	.byte	0x1
	.byte	0xad
	.uleb128 0x2b
	.long	0x3d2
	.long	.LBB61
	.long	.LBE61
	.byte	0x1
	.byte	0xad
	.uleb128 0x2c
	.long	0x3df
	.long	.LLST83
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LBB63
	.long	.LBE63
	.long	0xf22
	.uleb128 0x11
	.long	.LASF26
	.byte	0x1
	.byte	0xda
	.long	0x3b
	.long	.LLST84
	.uleb128 0x11
	.long	.LASF108
	.byte	0x1
	.byte	0xdb
	.long	0x3b
	.long	.LLST85
	.uleb128 0x1b
	.long	.LVL232
	.long	0xd87
	.long	0xf06
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.long	.LVL235
	.long	0xd87
	.uleb128 0x16
	.long	.LVL237
	.long	0xc49
	.uleb128 0x16
	.long	.LVL240
	.long	0x7a2
	.byte	0
	.uleb128 0x16
	.long	.LVL215
	.long	0x45b
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF109
	.byte	0x1
	.word	0x270
	.byte	0x1
	.long	.LFB43
	.long	.LFE43
	.long	.LLST86
	.byte	0x1
	.long	0x1181
	.uleb128 0x1f
	.long	.LASF110
	.byte	0x1
	.word	0x270
	.long	0xb8
	.long	.LLST87
	.uleb128 0x18
	.long	.LASF111
	.byte	0x1
	.word	0x271
	.long	0x3b
	.long	.LLST88
	.uleb128 0x18
	.long	.LASF112
	.byte	0x1
	.word	0x272
	.long	0x3b
	.long	.LLST89
	.uleb128 0x18
	.long	.LASF113
	.byte	0x1
	.word	0x273
	.long	0x3b
	.long	.LLST90
	.uleb128 0x18
	.long	.LASF41
	.byte	0x1
	.word	0x274
	.long	0x1cc
	.long	.LLST91
	.uleb128 0x18
	.long	.LASF114
	.byte	0x1
	.word	0x275
	.long	0x19c
	.long	.LLST92
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.word	0x278
	.long	0x3b
	.long	.LLST93
	.uleb128 0x19
	.long	.LBB65
	.long	.LBE65
	.long	0x1176
	.uleb128 0x18
	.long	.LASF108
	.byte	0x1
	.word	0x291
	.long	0x3b
	.long	.LLST94
	.uleb128 0x1b
	.long	.LVL248
	.long	0x96d
	.long	0xff1
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.long	.LVL249
	.long	0x1517
	.uleb128 0x1b
	.long	.LVL250
	.long	0x1517
	.long	0x100e
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.long	.LVL251
	.long	0x1517
	.uleb128 0x1b
	.long	.LVL256
	.long	0xbab
	.long	0x1036
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL257
	.long	0xbab
	.long	0x1055
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL258
	.long	0xbab
	.long	0x1074
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL261
	.long	0xbab
	.long	0x108d
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL262
	.long	0xbab
	.long	0x10ac
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL263
	.long	0xbab
	.long	0x10cb
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL266
	.long	0xbab
	.long	0x10e4
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL267
	.long	0xbab
	.long	0x1103
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL268
	.long	0xbab
	.long	0x1122
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL271
	.long	0xbab
	.long	0x113b
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL272
	.long	0xbab
	.long	0x115a
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL273
	.long	0xbab
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LVL247
	.long	0xb1f
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.long	.LASF115
	.byte	0x1
	.word	0x2c4
	.long	.LFB44
	.long	.LFE44
	.long	.LLST95
	.byte	0x1
	.long	0x11fa
	.uleb128 0x21
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.word	0x2c5
	.long	0x3b
	.long	.LLST96
	.uleb128 0x21
	.long	.LBB68
	.long	.LBE68
	.uleb128 0x18
	.long	.LASF116
	.byte	0x1
	.word	0x2c6
	.long	0x3b
	.long	.LLST97
	.uleb128 0x16
	.long	.LVL286
	.long	0x1517
	.uleb128 0x1b
	.long	.LVL287
	.long	0x1517
	.long	0x11e8
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1d
	.long	.LVL288
	.long	0x1517
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF117
	.byte	0x1
	.word	0x2cf
	.long	.LFB45
	.long	.LFE45
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1225
	.uleb128 0x1d
	.long	.LVL291
	.long	0x1517
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF118
	.byte	0x1
	.byte	0x99
	.long	.LFB24
	.long	.LFE24
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x129c
	.uleb128 0x19
	.long	.LBB69
	.long	.LBE69
	.long	0x1292
	.uleb128 0x11
	.long	.LASF106
	.byte	0x1
	.byte	0x9d
	.long	0x3b
	.long	.LLST98
	.uleb128 0x11
	.long	.LASF107
	.byte	0x1
	.byte	0x9d
	.long	0x3b
	.long	.LLST99
	.uleb128 0x2a
	.long	0x3c5
	.long	.LBB70
	.long	.LBE70
	.byte	0x1
	.byte	0x9d
	.uleb128 0x2b
	.long	0x3d2
	.long	.LBB72
	.long	.LBE72
	.byte	0x1
	.byte	0x9d
	.uleb128 0x2c
	.long	0x3df
	.long	.LLST100
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LVL299
	.long	0x11fa
	.byte	0
	.uleb128 0x5
	.long	0x12ac
	.long	0x12ac
	.uleb128 0x6
	.long	0x82
	.byte	0x8
	.byte	0
	.uleb128 0x2e
	.long	0xe8
	.uleb128 0x2f
	.long	.LASF119
	.byte	0x5
	.byte	0x51
	.long	0x12be
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.long	0x129c
	.uleb128 0x5
	.long	0x16c
	.long	0x12d3
	.uleb128 0x6
	.long	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x2f
	.long	.LASF120
	.byte	0x5
	.byte	0xad
	.long	0x12c3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.long	.LASF121
	.byte	0x5
	.byte	0xb4
	.long	0x12ed
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.long	0x3b
	.uleb128 0x30
	.long	.LASF122
	.byte	0x1
	.byte	0x2c
	.long	0x363
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	manualMap
	.uleb128 0x5
	.long	0x26a
	.long	0x1314
	.uleb128 0x6
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x30
	.long	.LASF123
	.byte	0x1
	.byte	0x2d
	.long	0x1304
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ManualNoteRange
	.uleb128 0x30
	.long	.LASF124
	.byte	0x1
	.byte	0x2e
	.long	0x379
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiInMap
	.uleb128 0x30
	.long	.LASF125
	.byte	0x1
	.byte	0x2f
	.long	0x38f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiOutMap
	.uleb128 0x30
	.long	.LASF126
	.byte	0x1
	.byte	0x33
	.long	0x39f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerMap
	.uleb128 0x30
	.long	.LASF127
	.byte	0x1
	.byte	0x34
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerCount
	.uleb128 0x30
	.long	.LASF128
	.byte	0x1
	.byte	0x35
	.long	0x3af
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	programMap
	.uleb128 0x30
	.long	.LASF129
	.byte	0x1
	.byte	0x30
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxActivceSensing
	.uleb128 0x30
	.long	.LASF130
	.byte	0x1
	.byte	0x31
	.long	0x346
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Setting
	.uleb128 0x30
	.long	.LASF131
	.byte	0x1
	.byte	0x5e
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutNote
	.uleb128 0x30
	.long	.LASF132
	.byte	0x1
	.byte	0x5f
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutManual
	.uleb128 0x30
	.long	.LASF133
	.byte	0x1
	.byte	0x60
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInNote
	.uleb128 0x30
	.long	.LASF134
	.byte	0x1
	.byte	0x61
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInChannel
	.uleb128 0x30
	.long	.LASF135
	.byte	0x1
	.byte	0x62
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInManual
	.uleb128 0x5
	.long	0x3b
	.long	0x140e
	.uleb128 0x6
	.long	0x82
	.byte	0xb
	.byte	0
	.uleb128 0x30
	.long	.LASF136
	.byte	0x1
	.byte	0x1c
	.long	0x13fe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Couplers
	.uleb128 0x30
	.long	.LASF137
	.byte	0x1
	.byte	0x1d
	.long	0x1432
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cplInfo
	.uleb128 0x31
	.uleb128 0x5
	.long	0x3b
	.long	0x1443
	.uleb128 0x6
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x30
	.long	.LASF138
	.byte	0x7
	.byte	0xa7
	.long	0x1433
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x30
	.long	.LASF139
	.byte	0x1
	.byte	0x32
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiEEPromLoadError
	.uleb128 0x30
	.long	.LASF140
	.byte	0x1
	.byte	0x59
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastCommand
	.uleb128 0x30
	.long	.LASF141
	.byte	0x1
	.byte	0x5a
	.long	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByte
	.uleb128 0x30
	.long	.LASF142
	.byte	0x1
	.byte	0x5b
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteCount
	.uleb128 0x30
	.long	.LASF143
	.byte	0x1
	.byte	0x5c
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteExpected
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF144
	.long	.LASF144
	.byte	0x5
	.byte	0x58
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF145
	.long	.LASF145
	.byte	0x8
	.byte	0x1c
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF146
	.long	.LASF146
	.byte	0x9
	.byte	0x32
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF147
	.long	.LASF147
	.byte	0x8
	.byte	0x1d
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF148
	.long	.LASF148
	.byte	0x8
	.byte	0x18
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF149
	.long	.LASF149
	.byte	0x8
	.byte	0x19
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF150
	.long	.LASF150
	.byte	0x8
	.byte	0x17
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF151
	.long	.LASF151
	.byte	0x9
	.byte	0x33
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF152
	.long	.LASF152
	.byte	0xa
	.byte	0x4e
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.long	.LVL1
	.long	.LVL3
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL3
	.long	.LFE17
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LFE17
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	.LVL5
	.long	.LVL7
	.word	0x1
	.byte	0x68
	.long	.LVL7
	.long	.LVL8
	.word	0x1
	.byte	0x6e
	.long	.LVL9
	.long	.LVL10
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST3:
	.long	.LVL12
	.long	.LVL13
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14
	.word	0x1
	.byte	0x63
	.long	.LVL15
	.long	.LFE26
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST4:
	.long	.LVL12
	.long	.LVL13
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL13
	.long	.LFE26
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST5:
	.long	.LVL17
	.long	.LVL18
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL18
	.long	.LVL20-1
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST6:
	.long	.LVL24
	.long	.LVL29
	.word	0x1
	.byte	0x69
	.long	.LVL30
	.long	.LVL31-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST7:
	.long	.LVL24
	.long	.LVL26
	.word	0x1
	.byte	0x68
	.long	.LVL27
	.long	.LVL29
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST8:
	.long	.LVL32
	.long	.LVL33
	.word	0x1
	.byte	0x68
	.long	.LVL33
	.long	.LVL36
	.word	0x1
	.byte	0x68
	.long	.LVL36
	.long	.LVL37
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL37
	.long	.LVL41
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST9:
	.long	.LVL34
	.long	.LVL40
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST10:
	.long	.LVL33
	.long	.LVL34
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL34
	.long	.LVL35
	.word	0x1
	.byte	0x69
	.long	.LVL37
	.long	.LVL40
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST11:
	.long	.LFB29
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI0
	.long	.LFE29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST12:
	.long	.LVL42
	.long	.LVL43-1
	.word	0x1
	.byte	0x68
	.long	.LVL43-1
	.long	.LVL54
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL54
	.long	.LVL55
	.word	0x1
	.byte	0x68
	.long	.LVL55
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL42
	.long	.LVL43-1
	.word	0x1
	.byte	0x66
	.long	.LVL43-1
	.long	.LVL54
	.word	0x1
	.byte	0x6c
	.long	.LVL54
	.long	.LVL55
	.word	0x1
	.byte	0x66
	.long	.LVL55
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL44
	.long	.LVL46
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST15:
	.long	.LVL45
	.long	.LVL50
	.word	0x1
	.byte	0x62
	.long	.LVL52
	.long	.LVL53
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST16:
	.long	.LVL47
	.long	.LVL49
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST17:
	.long	.LVL48
	.long	.LVL51
	.word	0x1
	.byte	0x64
	.long	.LVL52
	.long	.LVL53
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST18:
	.long	.LFB30
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LFE30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST19:
	.long	.LVL56
	.long	.LVL58
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL58
	.long	.LVL64
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL64
	.long	.LVL65
	.word	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.long	.LVL65
	.long	.LVL66
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL66
	.long	.LVL69
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST20:
	.long	.LVL57
	.long	.LVL59
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL59
	.long	.LVL61
	.word	0x1
	.byte	0x68
	.long	.LVL63
	.long	.LFE30
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST21:
	.long	.LVL57
	.long	.LVL59
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL59
	.long	.LVL68
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST22:
	.long	.LFB31
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI6
	.long	.LFE31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST23:
	.long	.LVL70
	.long	.LVL71-1
	.word	0x1
	.byte	0x68
	.long	.LVL71-1
	.long	.LFE31
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL70
	.long	.LVL71-1
	.word	0x1
	.byte	0x66
	.long	.LVL71-1
	.long	.LVL81
	.word	0x1
	.byte	0x6c
	.long	.LVL81
	.long	.LFE31
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL72
	.long	.LVL74
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST26:
	.long	.LVL73
	.long	.LVL76
	.word	0x1
	.byte	0x6e
	.long	.LVL78
	.long	.LVL79
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST27:
	.long	.LVL75
	.long	.LVL77
	.word	0x1
	.byte	0x69
	.long	.LVL78
	.long	.LVL80
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST28:
	.long	.LFB32
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI12
	.long	.LFE32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST29:
	.long	.LVL82
	.long	.LVL85
	.word	0x1
	.byte	0x68
	.long	.LVL85
	.long	.LFE32
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL87
	.long	.LVL94
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST31:
	.long	.LVL83
	.long	.LVL85
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL85
	.long	.LVL95
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST32:
	.long	.LVL84
	.long	.LVL86
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL86
	.long	.LVL94
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL94
	.long	.LVL95
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST33:
	.long	.LVL84
	.long	.LVL85
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL85
	.long	.LVL95
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST34:
	.long	.LVL87
	.long	.LVL88
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL88
	.long	.LVL94
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST35:
	.long	.LVL96
	.long	.LVL97
	.word	0x1
	.byte	0x68
	.long	.LVL97
	.long	.LFE33
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL97
	.long	.LVL98
	.word	0x9
	.byte	0x88
	.sleb128 0
	.byte	0x3
	.long	programMap
	.byte	0x22
	.byte	0x9f
	.long	.LVL98
	.long	.LVL99-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST37:
	.long	.LVL101
	.long	.LVL104-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST38:
	.long	.LVL100
	.long	.LVL101
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	.LVL101
	.long	.LVL104-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST39:
	.long	.LVL106
	.long	.LVL107
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL107
	.long	.LVL109-1
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST40:
	.long	.LVL111
	.long	.LVL112
	.word	0x1
	.byte	0x68
	.long	.LVL112
	.long	.LVL113
	.word	0x1
	.byte	0x6e
	.long	.LVL113
	.long	.LFE37
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL114
	.long	.LVL115
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL115
	.long	.LFE38
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST42:
	.long	.LVL115
	.long	.LVL121
	.word	0x1
	.byte	0x65
	.long	.LVL122
	.long	.LVL123
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST43:
	.long	.LVL115
	.long	.LVL121
	.word	0x1
	.byte	0x66
	.long	.LVL122
	.long	.LVL123
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST44:
	.long	.LVL115
	.long	.LVL116
	.word	0x1
	.byte	0x64
	.long	.LVL116
	.long	.LVL117
	.word	0x1
	.byte	0x62
	.long	.LVL117
	.long	.LVL121
	.word	0x1
	.byte	0x64
	.long	.LVL122
	.long	.LVL123
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST45:
	.long	.LVL124
	.long	.LVL125
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL125
	.long	.LVL130-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST46:
	.long	.LVL125
	.long	.LVL127
	.word	0x1
	.byte	0x62
	.long	.LVL128
	.long	.LVL129
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST47:
	.long	.LVL133
	.long	.LVL135
	.word	0x1
	.byte	0x68
	.long	.LVL135
	.long	.LFE40
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL133
	.long	.LVL136
	.word	0x1
	.byte	0x66
	.long	.LVL136
	.long	.LVL138
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL138
	.long	.LFE40
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST49:
	.long	.LVL134
	.long	.LVL141
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST50:
	.long	.LVL134
	.long	.LVL135
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL135
	.long	.LVL137
	.word	0x1
	.byte	0x68
	.long	.LVL138
	.long	.LVL141
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST51:
	.long	.LVL142
	.long	.LVL145
	.word	0x1
	.byte	0x68
	.long	.LVL145
	.long	.LVL146
	.word	0x1
	.byte	0x6a
	.long	.LVL146
	.long	.LVL151
	.word	0x1
	.byte	0x68
	.long	.LVL151
	.long	.LVL152-1
	.word	0x1
	.byte	0x64
	.long	.LVL152-1
	.long	.LFE41
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST52:
	.long	.LVL143
	.long	.LVL152-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST53:
	.long	.LVL142
	.long	.LVL143
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL143
	.long	.LVL152-1
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST54:
	.long	.LVL143
	.long	.LVL144
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL144
	.long	.LVL150
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST55:
	.long	.LFB42
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI13
	.long	.LFE42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST56:
	.long	.LVL153
	.long	.LVL154-1
	.word	0x1
	.byte	0x68
	.long	.LVL154-1
	.long	.LFE42
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST57:
	.long	.LVL153
	.long	.LVL154-1
	.word	0x1
	.byte	0x66
	.long	.LVL154-1
	.long	.LFE42
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST58:
	.long	.LVL153
	.long	.LVL154-1
	.word	0x1
	.byte	0x64
	.long	.LVL154-1
	.long	.LVL163
	.word	0x1
	.byte	0x6c
	.long	.LVL163
	.long	.LFE42
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST59:
	.long	.LVL156
	.long	.LVL158
	.word	0x1
	.byte	0x6e
	.long	.LVL160
	.long	.LVL161
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST60:
	.long	.LVL157
	.long	.LVL159
	.word	0x1
	.byte	0x69
	.long	.LVL160
	.long	.LVL162
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST61:
	.long	.LFB20
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI21
	.long	.LFE20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST62:
	.long	.LVL164
	.long	.LVL166
	.word	0x1
	.byte	0x68
	.long	.LVL166
	.long	.LVL176
	.word	0x1
	.byte	0x5c
	.long	.LVL176
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST63:
	.long	.LVL165
	.long	.LVL166
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL166
	.long	.LVL175
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST64:
	.long	.LVL167
	.long	.LVL169
	.word	0x1
	.byte	0x66
	.long	.LVL169
	.long	.LVL172
	.word	0x1
	.byte	0x5e
	.long	.LVL172
	.long	.LVL173
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST65:
	.long	.LVL168
	.long	.LVL173
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST66:
	.long	.LFB21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI25
	.long	.LFE21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST67:
	.long	.LVL177
	.long	.LVL178
	.word	0x1
	.byte	0x68
	.long	.LVL178
	.long	.LVL182
	.word	0x1
	.byte	0x60
	.long	.LVL182
	.long	.LFE21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST68:
	.long	.LVL179
	.long	.LVL182
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST69:
	.long	.LFB22
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI26
	.long	.LFE22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST70:
	.long	.LVL183
	.long	.LVL184
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL184
	.long	.LVL187
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST71:
	.long	.LFB36
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
	.long	.LFE36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST72:
	.long	.LVL189
	.long	.LVL190
	.word	0x1
	.byte	0x68
	.long	.LVL190
	.long	.LVL192
	.word	0x1
	.byte	0x6d
	.long	.LVL192
	.long	.LVL197
	.word	0x1
	.byte	0x64
	.long	.LVL197
	.long	.LVL201
	.word	0x1
	.byte	0x6d
	.long	.LVL201
	.long	.LFE36
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST73:
	.long	.LVL189
	.long	.LVL191
	.word	0x1
	.byte	0x66
	.long	.LVL191
	.long	.LVL204
	.word	0x1
	.byte	0x60
	.long	.LVL204
	.long	.LFE36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST74:
	.long	.LVL189
	.long	.LVL191
	.word	0x1
	.byte	0x64
	.long	.LVL191
	.long	.LVL203
	.word	0x1
	.byte	0x61
	.long	.LVL203
	.long	.LFE36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST75:
	.long	.LVL190
	.long	.LVL191
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL191
	.long	.LVL195
	.word	0x1
	.byte	0x69
	.long	.LVL198
	.long	.LVL199
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL199
	.long	.LFE36
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST76:
	.long	.LVL190
	.long	.LVL191
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL191
	.long	.LVL192
	.word	0x1
	.byte	0x6c
	.long	.LVL192
	.long	.LVL198-1
	.word	0x1
	.byte	0x62
	.long	.LVL198-1
	.long	.LVL202
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST77:
	.long	.LVL193
	.long	.LVL196
	.word	0x1
	.byte	0x66
	.long	.LVL196
	.long	.LVL198-1
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST78:
	.long	.LVL194
	.long	.LVL198-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST79:
	.long	.LVL196
	.long	.LVL198-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST80:
	.long	.LVL205
	.long	.LVL206
	.word	0x1
	.byte	0x68
	.long	.LVL206
	.long	.LVL214
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL214
	.long	.LVL215-1
	.word	0x1
	.byte	0x68
	.long	.LVL215-1
	.long	.LVL216
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL216
	.long	.LVL217
	.word	0x1
	.byte	0x68
	.long	.LVL217
	.long	.LVL218
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL218
	.long	.LVL219
	.word	0x1
	.byte	0x68
	.long	.LVL219
	.long	.LVL220
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
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
	.long	.LVL224
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL224
	.long	.LVL225
	.word	0x1
	.byte	0x68
	.long	.LVL225
	.long	.LVL226
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL226
	.long	.LVL227
	.word	0x1
	.byte	0x68
	.long	.LVL227
	.long	.LVL228
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL228
	.long	.LVL229
	.word	0x1
	.byte	0x68
	.long	.LVL229
	.long	.LFE25
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST81:
	.long	.LVL207
	.long	.LVL213
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST82:
	.long	.LVL208
	.long	.LVL209
	.word	0x1
	.byte	0x68
	.long	.LVL210
	.long	.LVL211
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL211
	.long	.LVL214
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST83:
	.long	.LVL212
	.long	.LVL213
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+3713
	.sleb128 0
	.long	0
	.long	0
.LLST84:
	.long	.LVL230
	.long	.LVL232-1
	.word	0x1
	.byte	0x68
	.long	.LVL233
	.long	.LVL235-1
	.word	0x1
	.byte	0x68
	.long	.LVL236
	.long	.LVL237-1
	.word	0x1
	.byte	0x68
	.long	.LVL238
	.long	.LVL239
	.word	0x1
	.byte	0x68
	.long	.LVL239
	.long	.LVL240-1
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
.LLST85:
	.long	.LVL231
	.long	.LVL233
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL234
	.long	.LVL235-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST86:
	.long	.LFB43
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI31
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI32
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI33
	.long	.LCFI34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI34
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI35
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI36
	.long	.LCFI37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI37
	.long	.LCFI38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI38
	.long	.LFE43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST87:
	.long	.LVL241
	.long	.LVL246
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL273
	.long	.LFE43
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST88:
	.long	.LVL242
	.long	.LVL279
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST89:
	.long	.LVL243
	.long	.LVL280
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST90:
	.long	.LVL244
	.long	.LVL245
	.word	0x1
	.byte	0x68
	.long	.LVL245
	.long	.LVL276
	.word	0x1
	.byte	0x6d
	.long	.LVL276
	.long	.LVL277
	.word	0x1
	.byte	0x68
	.long	.LVL277
	.long	.LVL278
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST91:
	.long	.LVL252
	.long	.LVL254
	.word	0x6
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST92:
	.long	.LVL245
	.long	.LVL246
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL253
	.long	.LVL255
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL259
	.long	.LVL260
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL264
	.long	.LVL265
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL269
	.long	.LVL270
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL273
	.long	.LVL276
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL277
	.long	.LVL281
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST93:
	.long	.LVL245
	.long	.LVL276
	.word	0x1
	.byte	0x6c
	.long	.LVL277
	.long	.LVL278
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST94:
	.long	.LVL254
	.long	.LVL273
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST95:
	.long	.LFB44
	.long	.LCFI39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI39
	.long	.LFE44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST96:
	.long	.LVL282
	.long	.LVL283
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL283
	.long	.LVL290
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST97:
	.long	.LVL284
	.long	.LVL285
	.word	0x1
	.byte	0x68
	.long	.LVL285
	.long	.LVL286-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST98:
	.long	.LVL292
	.long	.LVL298
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST99:
	.long	.LVL293
	.long	.LVL294
	.word	0x1
	.byte	0x68
	.long	.LVL295
	.long	.LVL296
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL296
	.long	.LVL299-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST100:
	.long	.LVL297
	.long	.LVL298
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+4683
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xfc
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
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
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	.LFB34
	.long	.LFE34-.LFB34
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	.LFB39
	.long	.LFE39-.LFB39
	.long	.LFB40
	.long	.LFE40-.LFB40
	.long	.LFB41
	.long	.LFE41-.LFB41
	.long	.LFB42
	.long	.LFE42-.LFB42
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB43
	.long	.LFE43-.LFB43
	.long	.LFB44
	.long	.LFE44-.LFB44
	.long	.LFB45
	.long	.LFE45-.LFB45
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB13
	.long	.LBE13
	.long	.LBB14
	.long	.LBE14
	.long	0
	.long	0
	.long	.LBB15
	.long	.LBE15
	.long	.LBB16
	.long	.LBE16
	.long	0
	.long	0
	.long	.LBB18
	.long	.LBE18
	.long	.LBB21
	.long	.LBE21
	.long	0
	.long	0
	.long	.LBB19
	.long	.LBE19
	.long	.LBB20
	.long	.LBE20
	.long	0
	.long	0
	.long	.LBB23
	.long	.LBE23
	.long	.LBB26
	.long	.LBE26
	.long	0
	.long	0
	.long	.LBB24
	.long	.LBE24
	.long	.LBB25
	.long	.LBE25
	.long	0
	.long	0
	.long	.LBB27
	.long	.LBE27
	.long	.LBB28
	.long	.LBE28
	.long	0
	.long	0
	.long	.LBB32
	.long	.LBE32
	.long	.LBB34
	.long	.LBE34
	.long	0
	.long	0
	.long	.LBB36
	.long	.LBE36
	.long	.LBB37
	.long	.LBE37
	.long	0
	.long	0
	.long	.LBB40
	.long	.LBE40
	.long	.LBB43
	.long	.LBE43
	.long	0
	.long	0
	.long	.LBB45
	.long	.LBE45
	.long	.LBB46
	.long	.LBE46
	.long	0
	.long	0
	.long	.LBB54
	.long	.LBE54
	.long	.LBB57
	.long	.LBE57
	.long	0
	.long	0
	.long	.LBB64
	.long	.LBE64
	.long	.LBB66
	.long	.LBE66
	.long	0
	.long	0
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
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
	.long	.LFB32
	.long	.LFE32
	.long	.LFB33
	.long	.LFE33
	.long	.LFB34
	.long	.LFE34
	.long	.LFB35
	.long	.LFE35
	.long	.LFB37
	.long	.LFE37
	.long	.LFB38
	.long	.LFE38
	.long	.LFB39
	.long	.LFE39
	.long	.LFB40
	.long	.LFE40
	.long	.LFB41
	.long	.LFE41
	.long	.LFB42
	.long	.LFE42
	.long	.LFB20
	.long	.LFE20
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB36
	.long	.LFE36
	.long	.LFB25
	.long	.LFE25
	.long	.LFB43
	.long	.LFE43
	.long	.LFB44
	.long	.LFE44
	.long	.LFB45
	.long	.LFE45
	.long	.LFB24
	.long	.LFE24
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF69:
	.string	"bitNr"
.LASF55:
	.string	"count"
.LASF119:
	.string	"swTimer"
.LASF36:
	.string	"bitStart"
.LASF76:
	.string	"program_toRegister"
.LASF28:
	.string	"ChannelNote_t"
.LASF129:
	.string	"midiRxActivceSensing"
.LASF156:
	.string	"__iCliRetVal"
.LASF144:
	.string	"init_Pipe"
.LASF114:
	.string	"chanNote"
.LASF63:
	.string	"pRange"
.LASF87:
	.string	"rangeEnd"
.LASF58:
	.string	"progNr"
.LASF131:
	.string	"midiLastOutNote"
.LASF83:
	.string	"pMidiInMap"
.LASF38:
	.string	"ManualNoteRange_t"
.LASF112:
	.string	"shiftBit"
.LASF104:
	.string	"midiIn_Process"
.LASF9:
	.string	"long long unsigned int"
.LASF118:
	.string	"midi_CheckTxActiveSense"
.LASF120:
	.string	"pipe"
.LASF128:
	.string	"programMap"
.LASF12:
	.string	"message8"
.LASF143:
	.string	"midiDataByteExpected"
.LASF125:
	.string	"midiOutMap"
.LASF130:
	.string	"midi_Setting"
.LASF51:
	.string	"pCoupler"
.LASF93:
	.string	"manual_NoteOnOff"
.LASF148:
	.string	"eeprom_ReadMidiInMap"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF132:
	.string	"midiLastOutManual"
.LASF59:
	.string	"regNr"
.LASF77:
	.string	"program"
.LASF30:
	.string	"ManualNote_t"
.LASF98:
	.string	"midi_AllManualsOff"
.LASF153:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF110:
	.string	"pipeMessage"
.LASF84:
	.string	"init_Manual2Midi"
.LASF140:
	.string	"midiLastCommand"
.LASF40:
	.string	"noteRange"
.LASF142:
	.string	"midiDataByteCount"
.LASF6:
	.string	"long int"
.LASF97:
	.string	"midi_ManualOff"
.LASF133:
	.string	"midiLastInNote"
.LASF82:
	.string	"init_Midi2Manual"
.LASF108:
	.string	"noteOnOff"
.LASF92:
	.string	"moduleBit_to_manualNote"
.LASF53:
	.string	"midiAllReset"
.LASF124:
	.string	"midiInMap"
.LASF4:
	.string	"uint16_t"
.LASF88:
	.string	"rangeStart"
.LASF138:
	.string	"lcdData"
.LASF39:
	.string	"midiNote"
.LASF35:
	.string	"endNote"
.LASF43:
	.string	"MidiOutMap_t"
.LASF71:
	.string	"mask"
.LASF99:
	.string	"midi_CheckRxActiveSense"
.LASF61:
	.string	"regNr_to_moduleBit"
.LASF22:
	.string	"pipeInM4"
.LASF62:
	.string	"cplNr"
.LASF73:
	.string	"read_allRegister"
.LASF21:
	.string	"pipeInM8"
.LASF95:
	.string	"midiAllNotesOff"
.LASF37:
	.string	"ManualMap_t"
.LASF52:
	.string	"init_Midi"
.LASF5:
	.string	"unsigned int"
.LASF91:
	.string	"manualNote_to_moduleBit"
.LASF29:
	.string	"manual"
.LASF111:
	.string	"command"
.LASF7:
	.string	"long unsigned int"
.LASF149:
	.string	"eeprom_ReadMidiOutMap"
.LASF123:
	.string	"ManualNoteRange"
.LASF141:
	.string	"midiDataByte"
.LASF115:
	.string	"midiSendAllNotesOff"
.LASF106:
	.string	"sreg_save"
.LASF105:
	.string	"midiByte"
.LASF100:
	.string	"midiNote_to_Manual"
.LASF107:
	.string	"__ToDo"
.LASF137:
	.string	"cplInfo"
.LASF32:
	.string	"moduleBit"
.LASF34:
	.string	"startNote"
.LASF75:
	.string	"onOff"
.LASF13:
	.string	"PipeMessage_t"
.LASF42:
	.string	"MidiInMap_t"
.LASF16:
	.string	"Timer"
.LASF56:
	.string	"regSec"
.LASF10:
	.string	"sizetype"
.LASF85:
	.string	"Manual_to_MidiNote"
.LASF90:
	.string	"init_Manual2Module"
.LASF79:
	.string	"regBytePtr"
.LASF139:
	.string	"midiEEPromLoadError"
.LASF68:
	.string	"modBit"
.LASF25:
	.string	"Pipe_t"
.LASF41:
	.string	"manualNote"
.LASF86:
	.string	"Midi_updateManualRange"
.LASF23:
	.string	"pipeIn"
.LASF127:
	.string	"registerCount"
.LASF60:
	.string	"set_Coupler"
.LASF17:
	.string	"pipeOutM4"
.LASF78:
	.string	"regBits"
.LASF49:
	.string	"MidiSetting_t"
.LASF24:
	.string	"pipeInStat"
.LASF15:
	.string	"prescaler"
.LASF31:
	.string	"error"
.LASF117:
	.string	"midi_SendActiveSense"
.LASF155:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF113:
	.string	"moduleBits"
.LASF147:
	.string	"eeprom_ReadProg"
.LASF3:
	.string	"unsigned char"
.LASF54:
	.string	"registers_CalcCount"
.LASF146:
	.string	"log_putError"
.LASF14:
	.string	"counter"
.LASF150:
	.string	"eeprom_ReadManualMap"
.LASF46:
	.string	"RegisterMap_t"
.LASF135:
	.string	"midiLastInManual"
.LASF26:
	.string	"channel"
.LASF145:
	.string	"eeprom_ReadReg"
.LASF136:
	.string	"midi_Couplers"
.LASF121:
	.string	"pipeProcessing"
.LASF134:
	.string	"midiLastInChannel"
.LASF116:
	.string	"chan"
.LASF50:
	.string	"char"
.LASF27:
	.string	"note"
.LASF65:
	.string	"mode"
.LASF126:
	.string	"registerMap"
.LASF80:
	.string	"byteNr"
.LASF44:
	.string	"startReg"
.LASF152:
	.string	"serial1MIDISend"
.LASF96:
	.string	"splitRange"
.LASF48:
	.string	"VelZero4Off"
.LASF157:
	.string	"__iRestore"
.LASF0:
	.string	"int8_t"
.LASF64:
	.string	"read_Register"
.LASF33:
	.string	"ModulBitError_t"
.LASF101:
	.string	"found"
.LASF74:
	.string	"register_onOff"
.LASF102:
	.string	"noteBase0"
.LASF151:
	.string	"log_putWarning"
.LASF103:
	.string	"manNote"
.LASF45:
	.string	"endReg"
.LASF72:
	.string	"resultPtr"
.LASF11:
	.string	"Message16"
.LASF1:
	.string	"uint8_t"
.LASF109:
	.string	"midiKeyPress_Process"
.LASF67:
	.string	"modBitComplette"
.LASF20:
	.string	"pipeInM12"
.LASF19:
	.string	"pipeInM16"
.LASF122:
	.string	"manualMap"
.LASF94:
	.string	"moduleInfo"
.LASF57:
	.string	"init_Registers"
.LASF89:
	.string	"range"
.LASF47:
	.string	"TxActivceSense"
.LASF18:
	.string	"pipeOut"
.LASF66:
	.string	"result"
.LASF154:
	.string	".././Midi.c"
.LASF81:
	.string	"register_toProgram"
.LASF70:
	.string	"modulNr"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
