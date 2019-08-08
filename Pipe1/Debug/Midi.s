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
	.section	.text.midi_CouplerReset,"ax",@progbits
.global	midi_CouplerReset
	.type	midi_CouplerReset, @function
midi_CouplerReset:
.LFB18:
	.file 1 ".././Midi.c"
	.loc 1 61 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL0:
.LBB13:
	.loc 1 64 0
	ldi r24,0
.LBE13:
	.loc 1 63 0
	ldi r30,lo8(midi_Couplers)
	ldi r31,hi8(midi_Couplers)
.LBB14:
	.loc 1 64 0
	rjmp .L2
.LVL1:
.L3:
	.loc 1 65 0 discriminator 3
	st Z,__zero_reg__
	.loc 1 64 0 discriminator 3
	subi r24,lo8(-(1))
.LVL2:
	.loc 1 65 0 discriminator 3
	adiw r30,1
.LVL3:
.L2:
	.loc 1 64 0 discriminator 1
	cpi r24,lo8(12)
	brlo .L3
/* epilogue start */
.LBE14:
	.loc 1 67 0
	ret
	.cfi_endproc
.LFE18:
	.size	midi_CouplerReset, .-midi_CouplerReset
	.section	.text.init_Midi,"ax",@progbits
.global	init_Midi
	.type	init_Midi, @function
init_Midi:
.LFB17:
	.loc 1 57 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 58 0
	call midi_CouplerReset
.LVL4:
	ret
	.cfi_endproc
.LFE17:
	.size	init_Midi, .-init_Midi
	.section	.text.set_Coupler,"ax",@progbits
.global	set_Coupler
	.type	set_Coupler, @function
set_Coupler:
.LFB19:
	.loc 1 71 0
	.cfi_startproc
.LVL5:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 73 0
	cpi r24,lo8(12)
	brsh .L9
	.loc 1 74 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ldi r25,lo8(-1)
	st Z,r25
	.loc 1 76 0
	cpi r24,lo8(6)
	brlo .L7
	.loc 1 78 0
	subi r24,lo8(-(-6))
.LVL6:
	rjmp .L8
.L7:
	.loc 1 81 0
	subi r24,lo8(-(6))
.LVL7:
.L8:
	.loc 1 83 0
	mov r30,r24
	ldi r31,0
	movw r26,r30
	subi r26,lo8(-(midi_Couplers))
	sbci r27,hi8(-(midi_Couplers))
	ld r24,X
.LVL8:
	tst r24
	breq .L6
	.loc 1 85 0
	movw r26,r30
	subi r26,lo8(-(midi_Couplers))
	sbci r27,hi8(-(midi_Couplers))
	st X,__zero_reg__
	.loc 1 86 0
	lsl r30
	rol r31
.LVL9:
	subi r30,lo8(-(cplInfo))
	sbci r31,hi8(-(cplInfo))
	lpm r24,Z
	ret
.LVL10:
.L9:
	.loc 1 89 0
	ldi r24,0
.LVL11:
.L6:
	.loc 1 90 0
	ret
	.cfi_endproc
.LFE19:
	.size	set_Coupler, .-set_Coupler
	.section	.text.getAllCouplers,"ax",@progbits
.global	getAllCouplers
	.type	getAllCouplers, @function
getAllCouplers:
.LFB20:
	.loc 1 92 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 94 0
	ldi r24,0
.LVL12:
	ldi r25,0
.LVL13:
	.loc 1 95 0
	ldi r20,lo8(11)
	rjmp .L12
.LVL14:
.L13:
	.loc 1 102 0
	mov r20,r18
.LVL15:
.L12:
	.loc 1 98 0
	mov r18,r24
.LVL16:
	mov r19,r25
	lsl r18
	rol r19
	mov r24,r18
.LVL17:
	mov r25,r19
	.loc 1 99 0
	mov r30,r20
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ld r21,Z
	cpi r21,lo8(-1)
	brne .L11
	.loc 1 100 0
	ori r24,lo8(1)
.L11:
	.loc 1 102 0
	ldi r18,lo8(-1)
	add r18,r20
.LVL18:
	cpse r20,__zero_reg__
	rjmp .L13
/* epilogue start */
	.loc 1 104 0
	ret
	.cfi_endproc
.LFE20:
	.size	getAllCouplers, .-getAllCouplers
	.section	.text.setAllCouplers,"ax",@progbits
.global	setAllCouplers
	.type	setAllCouplers, @function
setAllCouplers:
.LFB21:
	.loc 1 106 0
	.cfi_startproc
.LVL19:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 107 0
	ldi r20,0
.LVL20:
.L17:
	.loc 1 110 0
	sbrs r24,0
	rjmp .L15
	.loc 1 111 0
	mov r30,r20
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ldi r18,lo8(-1)
	st Z,r18
	rjmp .L16
.L15:
	.loc 1 113 0
	mov r30,r20
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	st Z,__zero_reg__
.L16:
	.loc 1 115 0
	mov r18,r24
	mov r19,r25
	lsr r19
	ror r18
	mov r24,r18
.LVL21:
	mov r25,r19
	.loc 1 116 0
	subi r20,lo8(-(1))
.LVL22:
	cpi r20,lo8(12)
	brlo .L17
/* epilogue start */
	.loc 1 117 0
	ret
	.cfi_endproc
.LFE21:
	.size	setAllCouplers, .-setAllCouplers
	.section	.text.midiAllReset,"ax",@progbits
.global	midiAllReset
	.type	midiAllReset, @function
midiAllReset:
.LFB22:
	.loc 1 134 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 135 0
	ldi r24,lo8(-128)
	sts pipeProcessing,r24
	.loc 1 136 0
	call init_Pipe
.LVL23:
	ret
	.cfi_endproc
.LFE22:
	.size	midiAllReset, .-midiAllReset
	.section	.text.registers_CalcCount,"ax",@progbits
.global	registers_CalcCount
	.type	registers_CalcCount, @function
registers_CalcCount:
.LFB29:
	.loc 1 291 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL24:
.LBB15:
	.loc 1 293 0
	ldi r18,0
.LBE15:
	.loc 1 292 0
	ldi r19,0
.LBB16:
	.loc 1 293 0
	rjmp .L20
.LVL25:
.L22:
	.loc 1 294 0
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
	breq .L21
	.loc 1 294 0 is_stmt 0 discriminator 1
	cp r24,r19
	brlo .L21
	.loc 1 296 0 is_stmt 1
	ldi r19,lo8(1)
.LVL26:
	add r19,r24
.LVL27:
.L21:
	.loc 1 293 0 discriminator 2
	subi r18,lo8(-(1))
.LVL28:
.L20:
	.loc 1 293 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L22
.LBE16:
	.loc 1 299 0 is_stmt 1
	sts registerCount,r19
	ret
	.cfi_endproc
.LFE29:
	.size	registers_CalcCount, .-registers_CalcCount
	.section	.text.init_Registers,"ax",@progbits
.global	init_Registers
	.type	init_Registers, @function
init_Registers:
.LFB30:
	.loc 1 302 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL29:
.LBB17:
	.loc 1 306 0
	ldi r18,0
	rjmp .L24
.LVL30:
.L25:
	.loc 1 307 0 discriminator 3
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
	.loc 1 308 0 discriminator 3
	std Z+1,r24
	.loc 1 309 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 306 0 discriminator 3
	subi r18,lo8(-(1))
.LVL31:
.L24:
	.loc 1 306 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L25
.LBE17:
	.loc 1 311 0 is_stmt 1
	call eeprom_ReadReg
.LVL32:
	cpi r24,lo8(-1)
	brne .L26
	.loc 1 312 0
	sts registerCount,__zero_reg__
	.loc 1 313 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(5)
	ldi r24,lo8(1)
	call log_putError
.LVL33:
	rjmp .L27
.L26:
	.loc 1 315 0
	call registers_CalcCount
.LVL34:
.L27:
	.loc 1 318 0
	call eeprom_ReadProg
.LVL35:
	cpi r24,lo8(-1)
	brne .L23
	rjmp .L32
.LVL36:
.L30:
.LBB18:
.LBB19:
	.loc 1 322 0 discriminator 3
	mov r24,r19
	ldi r25,0
	movw r30,r24
	lsl r30
	rol r31
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
	add r30,r18
	adc r31,__zero_reg__
	st Z,__zero_reg__
	.loc 1 321 0 discriminator 3
	subi r18,lo8(-(1))
.LVL37:
	rjmp .L31
.LVL38:
.L33:
.LBE19:
	ldi r18,0
.L31:
.LVL39:
.LBB20:
	.loc 1 321 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L30
.LBE20:
	.loc 1 324 0 is_stmt 1 discriminator 2
	mov r24,r19
	ldi r25,0
	movw r30,r24
	lsl r30
	rol r31
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
	std Z+9,__zero_reg__
	std Z+8,__zero_reg__
	.loc 1 320 0 discriminator 2
	subi r19,lo8(-(1))
.LVL40:
	rjmp .L28
.LVL41:
.L32:
.LBE18:
	ldi r19,0
.L28:
.LVL42:
.LBB21:
	.loc 1 320 0 is_stmt 0 discriminator 1
	cpi r19,lo8(64)
	brlo .L33
.LBE21:
	.loc 1 326 0 is_stmt 1
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(6)
	ldi r24,lo8(1)
	call log_putError
.LVL43:
.L23:
	ret
	.cfi_endproc
.LFE30:
	.size	init_Registers, .-init_Registers
	.section	.text.regNr_to_moduleBit,"ax",@progbits
.global	regNr_to_moduleBit
	.type	regNr_to_moduleBit, @function
regNr_to_moduleBit:
.LFB31:
	.loc 1 330 0
	.cfi_startproc
.LVL44:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 333 0
	lds r25,registerCount
	cp r24,r25
	brsh .L35
	.loc 1 333 0 is_stmt 0 discriminator 1
	cpi r24,lo8(64)
	brsh .L35
	ldi r18,lo8(8)
	ldi r30,lo8(registerMap)
	ldi r31,hi8(registerMap)
.L38:
.LVL45:
.LBB22:
	.loc 1 339 0 is_stmt 1
	ld r19,Z
	cp r24,r19
	brlo .L36
	.loc 1 339 0 is_stmt 0 discriminator 1
	ldd r25,Z+1
	cp r25,r24
	brlo .L36
	.loc 1 342 0 is_stmt 1
	ldd r18,Z+2
.LVL46:
	mov r25,r24
	sub r25,r19
	.loc 1 343 0
	ldi r24,0
.LVL47:
	add r25,r18
	ret
.LVL48:
.L36:
	.loc 1 345 0
	adiw r30,3
.LVL49:
	.loc 1 346 0
	subi r18,lo8(-(-1))
.LVL50:
	brne .L38
.LVL51:
.L35:
.LBE22:
	.loc 1 350 0
	ldi r24,lo8(-1)
.LVL52:
	ldi r25,0
	.loc 1 351 0
	ret
	.cfi_endproc
.LFE31:
	.size	regNr_to_moduleBit, .-regNr_to_moduleBit
	.section	.text.read_Register,"ax",@progbits
.global	read_Register
	.type	read_Register, @function
read_Register:
.LFB32:
	.loc 1 353 0
	.cfi_startproc
.LVL53:
	push r28
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 356 0
	lds r25,registerCount
	cp r24,r25
	brlo .+2
	rjmp .L45
	mov r28,r22
.LBB23:
	.loc 1 358 0
	call regNr_to_moduleBit
.LVL54:
	.loc 1 359 0
	cpse r24,__zero_reg__
	rjmp .L41
.LVL55:
.LBB24:
	.loc 1 362 0
	mov r18,r25
	andi r18,lo8(31)
.LVL56:
	.loc 1 363 0
	swap r25
.LVL57:
	lsr r25
	andi r25,lo8(7)
.LVL58:
	.loc 1 364 0
	ldi r20,lo8(1)
	ldi r21,0
	rjmp 2f
	1:
	lsl r20
	rol r21
	2:
	dec r25
	brpl 1b
.LVL59:
	.loc 1 365 0
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
.LVL60:
	and r25,r20
	brne .L42
	.loc 1 365 0 is_stmt 0 discriminator 1
	sbrc r28,1
	rjmp .L46
.L42:
	.loc 1 368 0 is_stmt 1
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
.LVL61:
	movw r30,r18
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r18,Z+6
	and r20,r18
.LVL62:
	breq .L44
	.loc 1 368 0 is_stmt 0 discriminator 1
	sbrc r28,0
	rjmp .L47
.L44:
	.loc 1 372 0 is_stmt 1
	tst r25
	breq .L40
	.loc 1 372 0 is_stmt 0 discriminator 1
	tst r20
	breq .L40
	.loc 1 372 0 discriminator 2
	cpi r28,lo8(4)
	brne .L40
	rjmp .L48
.L41:
.LBE24:
.LBE23:
	.loc 1 380 0 is_stmt 1
	ldi r24,0
.LBB26:
	rjmp .L40
.LVL63:
.L46:
.LBB25:
	.loc 1 367 0
	ldi r24,lo8(1)
	rjmp .L40
.LVL64:
.L47:
	.loc 1 371 0
	ldi r24,lo8(1)
	rjmp .L40
.L48:
	.loc 1 373 0
	ldi r24,lo8(1)
	rjmp .L40
.LVL65:
.L45:
.LBE25:
.LBE26:
	.loc 1 380 0
	ldi r24,0
.LVL66:
.L40:
/* epilogue start */
	.loc 1 381 0
	pop r28
	ret
	.cfi_endproc
.LFE32:
	.size	read_Register, .-read_Register
	.section	.text.read_allRegister,"ax",@progbits
.global	read_allRegister
	.type	read_allRegister, @function
read_allRegister:
.LFB33:
	.loc 1 383 0
	.cfi_startproc
.LVL67:
	push r14
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r14,r24
.LVL68:
.LBB27:
	.loc 1 387 0
	ldi r28,0
.LBE27:
	.loc 1 386 0
	ldi r29,0
	.loc 1 384 0
	ldi r16,0
.LBB28:
	.loc 1 387 0
	rjmp .L50
.LVL69:
.L54:
	mov r17,r28
	andi r17,lo8(7)
	.loc 1 390 0
	brne .L51
	.loc 1 392 0
	ldi r29,0
.LVL70:
.L51:
	.loc 1 394 0
	lsr r29
.LVL71:
	.loc 1 395 0
	ldi r22,lo8(3)
	mov r24,r28
	call read_Register
.LVL72:
	tst r24
	breq .L52
	.loc 1 396 0
	ori r29,lo8(-128)
.LVL73:
	.loc 1 397 0
	subi r16,lo8(-(1))
.LVL74:
.L52:
	.loc 1 399 0
	cpi r17,lo8(7)
	brne .L53
	.loc 1 401 0
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L53
.LVL75:
	.loc 1 402 0
	movw r30,r14
	st Z,r29
	movw r24,r14
	adiw r24,1
.LVL76:
	movw r14,r24
.LVL77:
.L53:
	.loc 1 387 0 discriminator 2
	subi r28,lo8(-(1))
.LVL78:
.L50:
	.loc 1 387 0 is_stmt 0 discriminator 1
	cpi r28,lo8(64)
	brlo .L54
.LBE28:
	.loc 1 407 0 is_stmt 1
	mov r24,r16
/* epilogue start */
	pop r29
.LVL79:
	pop r28
.LVL80:
	pop r17
	pop r16
.LVL81:
	pop r15
	pop r14
.LVL82:
	ret
	.cfi_endproc
.LFE33:
	.size	read_allRegister, .-read_allRegister
	.section	.text.register_onOff,"ax",@progbits
.global	register_onOff
	.type	register_onOff, @function
register_onOff:
.LFB34:
	.loc 1 410 0
	.cfi_startproc
.LVL83:
	push r28
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 412 0
	lds r25,registerCount
	cp r24,r25
	brsh .L56
	mov r28,r22
.LBB29:
	.loc 1 414 0
	call regNr_to_moduleBit
.LVL84:
	.loc 1 415 0
	cpse r24,__zero_reg__
	rjmp .L56
.LVL85:
.LBB30:
	.loc 1 418 0
	mov r30,r25
	andi r30,lo8(31)
.LVL86:
	.loc 1 419 0
	swap r25
.LVL87:
	lsr r25
	andi r25,lo8(7)
.LVL88:
	.loc 1 420 0
	sbrs r28,0
	rjmp .L59
	.loc 1 422 0
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
.LVL89:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	com r24
	ldd r25,Z+1
.LVL90:
	and r24,r25
	std Z+1,r24
	rjmp .L56
.LVL91:
.L59:
	.loc 1 425 0
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
.LVL92:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r25,Z+1
.LVL93:
	or r24,r25
	std Z+1,r24
.LVL94:
.L56:
/* epilogue start */
.LBE30:
.LBE29:
	.loc 1 430 0
	pop r28
	ret
	.cfi_endproc
.LFE34:
	.size	register_onOff, .-register_onOff
	.section	.text.program_toRegister,"ax",@progbits
.global	program_toRegister
	.type	program_toRegister, @function
program_toRegister:
.LFB35:
	.loc 1 432 0
	.cfi_startproc
.LVL95:
	push r11
.LCFI8:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI9:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI10:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI11:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI12:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI13:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI14:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI15:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI16:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
.LVL96:
	.loc 1 435 0
	cpi r24,lo8(64)
	brlo .+2
	rjmp .L68
.LVL97:
.LBB31:
	.loc 1 438 0
	mov r14,r24
	mov r15,__zero_reg__
	movw r30,r14
	lsl r30
	rol r31
	movw r24,r14
.LVL98:
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
.LVL99:
.LBB32:
	.loc 1 439 0
	mov r11,__zero_reg__
.LBE32:
	.loc 1 437 0
	ldi r17,0
.LBE31:
	.loc 1 434 0
	ldi r16,0
.LBB35:
.LBB34:
	.loc 1 439 0
	rjmp .L62
.LVL100:
.L67:
	.loc 1 441 0
	movw r12,r30
	ldi r24,-1
	sub r12,r24
	sbc r13,r24
.LVL101:
	ld r28,Z
.LVL102:
.LBB33:
	.loc 1 442 0
	ldi r29,0
	rjmp .L63
.LVL103:
.L66:
	.loc 1 443 0
	mov r24,r28
	andi r24,lo8(1)
	sbrc r28,0
	.loc 1 444 0
	subi r16,lo8(-(1))
.LVL104:
.L64:
	.loc 1 446 0 discriminator 2
	ldi r22,lo8(1)
	cpse r24,__zero_reg__
	rjmp .L65
	ldi r22,0
.L65:
	mov r24,r17
	call register_onOff
.LVL105:
	.loc 1 447 0 discriminator 2
	lsr r28
.LVL106:
	.loc 1 448 0 discriminator 2
	subi r17,lo8(-(1))
.LVL107:
	.loc 1 442 0 discriminator 2
	subi r29,lo8(-(1))
.LVL108:
.L63:
	.loc 1 442 0 is_stmt 0 discriminator 1
	cpi r29,lo8(8)
	brlo .L66
.LBE33:
	.loc 1 439 0 is_stmt 1 discriminator 2
	inc r11
.LVL109:
	.loc 1 441 0 discriminator 2
	movw r30,r12
.LVL110:
.L62:
	.loc 1 439 0 discriminator 1
	ldi r24,lo8(7)
	cp r24,r11
	brsh .L67
.LBE34:
	.loc 1 452 0
	movw r30,r14
.LVL111:
	lsl r30
	rol r31
	lsl r14
	rol r15
	lsl r14
	rol r15
	lsl r14
	rol r15
.LVL112:
	add r30,r14
	adc r31,r15
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
	.loc 1 453 0
	ldd r24,Z+8
	ldd r25,Z+9
	call setAllCouplers
.LVL113:
	rjmp .L61
.LVL114:
.L68:
.LBE35:
	.loc 1 434 0
	ldi r16,0
.LVL115:
.L61:
	.loc 1 456 0
	mov r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
.LVL116:
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	ret
	.cfi_endproc
.LFE35:
	.size	program_toRegister, .-program_toRegister
	.section	.text.midi_resetRegisters,"ax",@progbits
.global	midi_resetRegisters
	.type	midi_resetRegisters, @function
midi_resetRegisters:
.LFB36:
	.loc 1 458 0
	.cfi_startproc
	push r28
.LCFI17:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL117:
.LBB36:
	.loc 1 459 0
	ldi r28,0
	rjmp .L70
.LVL118:
.L71:
	.loc 1 460 0 discriminator 3
	ldi r22,0
	mov r24,r28
	call register_onOff
.LVL119:
	.loc 1 459 0 discriminator 3
	subi r28,lo8(-(1))
.LVL120:
.L70:
	.loc 1 459 0 is_stmt 0 discriminator 1
	lds r24,registerCount
	cp r28,r24
	brlo .L71
/* epilogue start */
.LBE36:
	.loc 1 462 0 is_stmt 1
	pop r28
.LVL121:
	ret
	.cfi_endproc
.LFE36:
	.size	midi_resetRegisters, .-midi_resetRegisters
	.section	.text.register_toProgram,"ax",@progbits
.global	register_toProgram
	.type	register_toProgram, @function
register_toProgram:
.LFB37:
	.loc 1 464 0
	.cfi_startproc
.LVL122:
	push r16
.LCFI18:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI19:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI20:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI21:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r28,r24
	mov r16,r22
.LVL123:
	.loc 1 468 0
	cpi r24,lo8(64)
	brsh .L75
.LBB37:
	.loc 1 469 0
	mov r18,r24
	ldi r19,0
	movw r24,r18
.LVL124:
	lsl r24
	rol r25
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
.LVL125:
	add r24,r18
	adc r25,r19
.LVL126:
	.loc 1 470 0
	subi r24,lo8(-(programMap))
	sbci r25,hi8(-(programMap))
.LVL127:
	call read_allRegister
.LVL128:
	mov r17,r24
.LVL129:
	rjmp .L73
.LVL130:
.L75:
.LBE37:
	.loc 1 467 0
	ldi r17,0
.LVL131:
.L73:
	.loc 1 472 0
	ldi r29,0
	call getAllCouplers
.LVL132:
	movw r18,r28
	lsl r18
	rol r19
	lsl r28
	rol r29
	lsl r28
	rol r29
	lsl r28
	rol r29
.LVL133:
	add r28,r18
	adc r29,r19
	subi r28,lo8(-(programMap))
	sbci r29,hi8(-(programMap))
	std Y+9,r25
	std Y+8,r24
	.loc 1 473 0
	cpse r16,__zero_reg__
	.loc 1 474 0
	call eeprom_UpdateProg
.LVL134:
.L74:
	.loc 1 477 0
	mov r24,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
.LVL135:
	pop r16
.LVL136:
	ret
	.cfi_endproc
.LFE37:
	.size	register_toProgram, .-register_toProgram
	.section	.text.init_Midi2Manual,"ax",@progbits
.global	init_Midi2Manual
	.type	init_Midi2Manual, @function
init_Midi2Manual:
.LFB38:
	.loc 1 482 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL137:
.LBB38:
	.loc 1 486 0
	ldi r25,lo8(64)
.LBE38:
	.loc 1 484 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
.LBB39:
	.loc 1 486 0
	rjmp .L77
.LVL138:
.L78:
	.loc 1 488 0 discriminator 3
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 489 0 discriminator 3
	std Z+1,r24
	.loc 1 490 0 discriminator 3
	std Z+3,r24
	.loc 1 491 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 492 0 discriminator 3
	adiw r30,4
.LVL139:
	.loc 1 486 0 discriminator 3
	subi r25,lo8(-(-1))
.LVL140:
.L77:
	.loc 1 486 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L78
.LBE39:
	.loc 1 495 0 is_stmt 1
	call eeprom_ReadMidiInMap
.LVL141:
	cpi r24,lo8(-1)
	brne .L76
	.loc 1 496 0
	sts midiEEPromLoadError,r24
	.loc 1 497 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
	st Z,__zero_reg__
	.loc 1 498 0
	ldi r24,lo8(36)
	std Z+1,r24
	.loc 1 499 0
	std Z+3,r24
	.loc 1 500 0
	ldi r25,lo8(56)
	std Z+2,r25
	.loc 1 501 0
	ldi r18,lo8(1)
	std Z+16,r18
	.loc 1 502 0
	std Z+17,r24
	.loc 1 503 0
	std Z+19,r24
	.loc 1 504 0
	std Z+18,r25
	.loc 1 505 0
	ldi r18,lo8(2)
	std Z+32,r18
	.loc 1 506 0
	std Z+33,r24
	.loc 1 507 0
	std Z+35,r24
	.loc 1 508 0
	std Z+34,r25
	.loc 1 509 0
	ldi r25,lo8(3)
	std Z+48,r25
	.loc 1 510 0
	std Z+49,r24
	.loc 1 511 0
	std Z+51,r24
	.loc 1 512 0
	ldi r24,lo8(30)
	std Z+50,r24
	.loc 1 513 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL142:
.L76:
	ret
	.cfi_endproc
.LFE38:
	.size	init_Midi2Manual, .-init_Midi2Manual
	.section	.text.init_Manual2Midi,"ax",@progbits
.global	init_Manual2Midi
	.type	init_Manual2Midi, @function
init_Manual2Midi:
.LFB39:
	.loc 1 517 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL143:
.LBB40:
	.loc 1 519 0
	ldi r18,0
	rjmp .L81
.LVL144:
.L82:
	.loc 1 520 0 discriminator 3
	movw r30,r24
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldi r19,lo8(-1)
	st Z,r19
	.loc 1 519 0 discriminator 3
	subi r18,lo8(-(1))
.LVL145:
.L81:
	.loc 1 519 0 is_stmt 0 discriminator 1
	mov r24,r18
	ldi r25,0
	sbiw r24,0
	brne .L82
.LBE40:
	.loc 1 522 0 is_stmt 1
	call eeprom_ReadMidiOutMap
.LVL146:
	cpi r24,lo8(-1)
	brne .L80
	.loc 1 523 0
	sts midiEEPromLoadError,r24
	.loc 1 525 0
	ldi r30,lo8(midiOutMap)
	ldi r31,hi8(midiOutMap)
	st Z,__zero_reg__
	.loc 1 526 0
	ldi r24,lo8(1)
	std Z+1,r24
	.loc 1 527 0
	ldi r24,lo8(2)
	std Z+2,r24
	.loc 1 528 0
	ldi r24,lo8(3)
	std Z+3,r24
	.loc 1 529 0
	ldi r30,lo8(midi_Setting)
	ldi r31,hi8(midi_Setting)
	st Z,__zero_reg__
	.loc 1 530 0
	std Z+1,__zero_reg__
	.loc 1 531 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(2)
	ldi r24,lo8(1)
	call log_putError
.LVL147:
.L80:
	ret
	.cfi_endproc
.LFE39:
	.size	init_Manual2Midi, .-init_Manual2Midi
	.section	.text.Manual_to_MidiNote,"ax",@progbits
.global	Manual_to_MidiNote
	.type	Manual_to_MidiNote, @function
Manual_to_MidiNote:
.LFB41:
	.loc 1 563 0
	.cfi_startproc
.LVL148:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	.loc 1 564 0
	ldi r24,lo8(-1)
.LVL149:
	ldi r25,lo8(-1)
	.loc 1 565 0
	cpi r30,lo8(4)
	brsh .L85
	.loc 1 566 0
	ldi r31,0
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
.LVL150:
	ld r18,Z
	cpi r18,lo8(-1)
	breq .L85
	.loc 1 567 0
	mov r24,r18
	.loc 1 568 0
	mov r25,r22
.L85:
	.loc 1 572 0
	ret
	.cfi_endproc
.LFE41:
	.size	Manual_to_MidiNote, .-Manual_to_MidiNote
	.section	.text.Midi_updateManualRange,"ax",@progbits
.global	Midi_updateManualRange
	.type	Midi_updateManualRange, @function
Midi_updateManualRange:
.LFB42:
	.loc 1 576 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL151:
.LBB41:
	.loc 1 577 0
	ldi r23,0
	rjmp .L87
.LVL152:
.L93:
.LBB42:
.LBB43:
	.loc 1 581 0
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
	breq .L88
.LVL153:
	.loc 1 581 0 is_stmt 0 discriminator 1
	movw r30,r18
	lsl r30
	rol r31
	add r30,r18
	adc r31,r19
	movw r18,r24
.LVL154:
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
	breq .L88
	.loc 1 582 0 is_stmt 1
	cp r26,r22
	brsh .L89
	.loc 1 583 0
	mov r22,r26
.LVL155:
.L89:
	.loc 1 585 0
	cp r21,r18
	brsh .L88
	.loc 1 586 0
	mov r21,r18
.LVL156:
.L88:
	.loc 1 589 0
	tst r21
	breq .L90
	.loc 1 589 0 is_stmt 0 discriminator 1
	cpi r22,lo8(-1)
	brne .L91
.L90:
	.loc 1 590 0 is_stmt 1
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 591 0
	std Z+1,r24
	rjmp .L92
.L91:
	.loc 1 593 0
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	st Z,r22
	.loc 1 594 0
	std Z+1,r21
.L92:
	.loc 1 580 0 discriminator 2
	subi r20,lo8(-(1))
.LVL157:
	rjmp .L94
.LVL158:
.L97:
.LBE43:
.LBE42:
	ldi r20,0
	ldi r22,lo8(-1)
	ldi r21,0
.L94:
.LVL159:
.LBB45:
.LBB44:
	.loc 1 580 0 is_stmt 0 discriminator 1
	cpi r20,lo8(4)
	brsh .+2
	rjmp .L93
.LBE44:
.LBE45:
	.loc 1 577 0 is_stmt 1 discriminator 2
	subi r23,lo8(-(1))
.LVL160:
.L87:
	.loc 1 577 0 is_stmt 0 discriminator 1
	cpi r23,lo8(4)
	brlo .L97
/* epilogue start */
.LBE41:
	.loc 1 598 0 is_stmt 1
	ret
	.cfi_endproc
.LFE42:
	.size	Midi_updateManualRange, .-Midi_updateManualRange
	.section	.text.init_Manual2Module,"ax",@progbits
.global	init_Manual2Module
	.type	init_Manual2Module, @function
init_Manual2Module:
.LFB43:
	.loc 1 600 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL161:
.LBB46:
	.loc 1 601 0
	ldi r22,lo8(3)
	rjmp .L99
.LVL162:
.L100:
.LBB47:
	.loc 1 604 0 discriminator 3
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
	.loc 1 605 0 discriminator 3
	adiw r26,1
	st X,r19
	sbiw r26,1
	.loc 1 606 0 discriminator 3
	movw r30,r26
	std Z+2,__zero_reg__
	.loc 1 603 0 discriminator 3
	subi r18,lo8(-(-1))
.LVL163:
	rjmp .L101
.LVL164:
.L103:
.LBE47:
	ldi r18,lo8(3)
.L101:
.LVL165:
.LBB48:
	.loc 1 603 0 is_stmt 0 discriminator 1
	tst r18
	brge .L100
.LBE48:
	.loc 1 601 0 is_stmt 1 discriminator 2
	subi r22,lo8(-(-1))
.LVL166:
.L99:
	.loc 1 601 0 is_stmt 0 discriminator 1
	tst r22
	brge .L103
.LBE46:
	.loc 1 610 0 is_stmt 1
	call eeprom_ReadManualMap
.LVL167:
	cpi r24,lo8(-1)
	brne .L102
	.loc 1 612 0
	sts midiEEPromLoadError,r24
	.loc 1 613 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(3)
	ldi r24,lo8(1)
	call log_putError
.LVL168:
.L102:
	.loc 1 615 0
	call Midi_updateManualRange
.LVL169:
	ret
	.cfi_endproc
.LFE43:
	.size	init_Manual2Module, .-init_Manual2Module
	.section	.text.manualNote_to_moduleBit,"ax",@progbits
.global	manualNote_to_moduleBit
	.type	manualNote_to_moduleBit, @function
manualNote_to_moduleBit:
.LFB44:
	.loc 1 619 0
	.cfi_startproc
.LVL170:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 622 0
	cpi r24,lo8(4)
	brsh .L105
.LBB49:
	.loc 1 625 0
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
.LVL171:
	.loc 1 626 0
	ldi r24,lo8(4)
.LVL172:
.L108:
	.loc 1 628 0
	ld r18,Z
	cp r22,r18
	brlo .L106
	.loc 1 628 0 is_stmt 0 discriminator 1
	ldd r25,Z+1
	cp r25,r22
	brlo .L106
	.loc 1 631 0 is_stmt 1
	ldd r25,Z+2
	sub r22,r18
.LVL173:
	.loc 1 632 0
	ldi r24,0
.LVL174:
	add r25,r22
	ret
.LVL175:
.L106:
	.loc 1 634 0
	adiw r30,3
.LVL176:
	.loc 1 635 0
	subi r24,lo8(-(-1))
.LVL177:
	brne .L108
.LVL178:
.L105:
.LBE49:
	.loc 1 639 0
	ldi r24,lo8(-1)
	ldi r25,0
	.loc 1 640 0
	ret
	.cfi_endproc
.LFE44:
	.size	manualNote_to_moduleBit, .-manualNote_to_moduleBit
	.section	.text.moduleBit_to_manualNote,"ax",@progbits
.global	moduleBit_to_manualNote
	.type	moduleBit_to_manualNote, @function
moduleBit_to_manualNote:
.LFB45:
	.loc 1 642 0
	.cfi_startproc
.LVL179:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 649 0
	ldi r23,0
	.loc 1 648 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
.LVL180:
.L114:
.LBB50:
	.loc 1 651 0
	ldi r21,lo8(4)
	rjmp .L110
.LVL181:
.L113:
	.loc 1 652 0
	ldd r22,Z+2
	cp r24,r22
	brlo .L111
	.loc 1 652 0 is_stmt 0 discriminator 1
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
	brlt .L111
	.loc 1 655 0 is_stmt 1
	mov r20,r24
	sub r20,r22
	.loc 1 656 0
	mov r24,r23
.LVL182:
	add r25,r20
	ret
.LVL183:
.L111:
	.loc 1 658 0 discriminator 2
	adiw r30,3
.LVL184:
	.loc 1 651 0 discriminator 2
	subi r21,lo8(-(-1))
.LVL185:
.L110:
	.loc 1 651 0 is_stmt 0 discriminator 1
	cpse r21,__zero_reg__
	rjmp .L113
.LBE50:
	.loc 1 660 0 is_stmt 1
	subi r23,lo8(-(1))
.LVL186:
	.loc 1 661 0
	cpi r23,lo8(5)
	brlo .L114
	.loc 1 663 0
	mov r20,r24
	ldi r21,0
.LVL187:
	ldi r22,lo8(1)
	ldi r24,lo8(2)
.LVL188:
	call log_putWarning
.LVL189:
	.loc 1 664 0
	ldi r24,lo8(-1)
	ldi r25,0
	.loc 1 665 0
	ret
	.cfi_endproc
.LFE45:
	.size	moduleBit_to_manualNote, .-moduleBit_to_manualNote
	.section	.text.manual_NoteOnOff,"ax",@progbits
.global	manual_NoteOnOff
	.type	manual_NoteOnOff, @function
manual_NoteOnOff:
.LFB46:
	.loc 1 667 0
	.cfi_startproc
.LVL190:
	push r28
.LCFI22:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r20
	.loc 1 669 0
	call manualNote_to_moduleBit
.LVL191:
	.loc 1 671 0
	cpse r24,__zero_reg__
	rjmp .L115
.LVL192:
.LBB51:
	.loc 1 672 0
	mov r30,r25
	andi r30,lo8(31)
.LVL193:
	.loc 1 673 0
	swap r25
	lsr r25
	andi r25,lo8(7)
.LVL194:
	.loc 1 674 0
	cpse r28,__zero_reg__
	rjmp .L117
	.loc 1 676 0
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
.LVL195:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r25,Z+1
.LVL196:
	or r24,r25
	std Z+1,r24
	rjmp .L115
.LVL197:
.L117:
	.loc 1 679 0
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
.LVL198:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	com r24
	ldd r25,Z+1
.LVL199:
	and r24,r25
	std Z+1,r24
.L115:
/* epilogue start */
.LBE51:
	.loc 1 682 0
	pop r28
.LVL200:
	ret
	.cfi_endproc
.LFE46:
	.size	manual_NoteOnOff, .-manual_NoteOnOff
	.section	.text.midiAllNotesOff,"ax",@progbits
.global	midiAllNotesOff
	.type	midiAllNotesOff, @function
midiAllNotesOff:
.LFB23:
	.loc 1 139 0
	.cfi_startproc
.LVL201:
	push r12
.LCFI23:
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
.LCFI24:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI25:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI26:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI27:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI28:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI29:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI30:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r12,r24
.LVL202:
	.loc 1 140 0
	mov r13,__zero_reg__
	.loc 1 141 0
	rjmp .L119
.LVL203:
.L123:
	.loc 1 143 0
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
	brsh .L120
.LBB52:
	.loc 1 145 0
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
.LVL204:
.LBB53:
	.loc 1 147 0
	ldd r15,Z+2
.LVL205:
	rjmp .L121
.L122:
	.loc 1 148 0 discriminator 3
	clr r14
	inc r14
	add r14,r22
.LVL206:
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
.LVL207:
	.loc 1 147 0 discriminator 3
	dec r15
.LVL208:
	.loc 1 148 0 discriminator 3
	mov r22,r14
.LVL209:
.L121:
	.loc 1 147 0 discriminator 1
	cpse r15,__zero_reg__
	rjmp .L122
.LVL210:
.L120:
.LBE53:
.LBE52:
	.loc 1 151 0
	inc r13
.LVL211:
.L119:
	.loc 1 141 0
	ldi r24,lo8(3)
	cp r24,r13
	brlo .+2
	rjmp .L123
/* epilogue start */
	.loc 1 153 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
.LVL212:
	pop r12
.LVL213:
	ret
	.cfi_endproc
.LFE23:
	.size	midiAllNotesOff, .-midiAllNotesOff
	.section	.text.midi_ManualOff,"ax",@progbits
.global	midi_ManualOff
	.type	midi_ManualOff, @function
midi_ManualOff:
.LFB24:
	.loc 1 155 0
	.cfi_startproc
.LVL214:
	push r16
.LCFI31:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI32:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI33:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI34:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 157 0
	cpi r24,lo8(4)
	brsh .L124
	.loc 1 157 0 is_stmt 0 discriminator 1
	mov r16,r24
	ldi r17,0
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ld r28,Z
	cpi r28,lo8(-1)
	breq .L124
	mov r29,r24
	.loc 1 157 0 discriminator 2
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r24,Z+1
.LVL215:
	cpi r24,lo8(-1)
	brne .L126
.LBB54:
	rjmp .L124
.LVL216:
.L127:
	.loc 1 159 0 is_stmt 1 discriminator 3
	ldi r20,0
	mov r22,r28
	mov r24,r29
	call manual_NoteOnOff
.LVL217:
	.loc 1 158 0 discriminator 3
	subi r28,lo8(-(1))
.LVL218:
.L126:
	.loc 1 158 0 is_stmt 0 discriminator 1
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r25,Z+1
	cp r25,r28
	brsh .L127
.LVL219:
.L124:
/* epilogue start */
.LBE54:
	.loc 1 162 0 is_stmt 1
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE24:
	.size	midi_ManualOff, .-midi_ManualOff
	.section	.text.midi_AllManualsOff,"ax",@progbits
.global	midi_AllManualsOff
	.type	midi_AllManualsOff, @function
midi_AllManualsOff:
.LFB25:
	.loc 1 164 0
	.cfi_startproc
	push r28
.LCFI35:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL220:
.LBB55:
	.loc 1 165 0
	ldi r28,0
	rjmp .L129
.LVL221:
.L130:
	.loc 1 166 0 discriminator 3
	mov r24,r28
	call midi_ManualOff
.LVL222:
	.loc 1 165 0 discriminator 3
	subi r28,lo8(-(1))
.LVL223:
.L129:
	.loc 1 165 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brlo .L130
/* epilogue start */
.LBE55:
	.loc 1 171 0 is_stmt 1
	pop r28
.LVL224:
	ret
	.cfi_endproc
.LFE25:
	.size	midi_AllManualsOff, .-midi_AllManualsOff
	.section	.text.midi_CheckRxActiveSense,"ax",@progbits
.global	midi_CheckRxActiveSense
	.type	midi_CheckRxActiveSense, @function
midi_CheckRxActiveSense:
.LFB26:
	.loc 1 173 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 174 0
	lds r24,midiRxActivceSensing
	tst r24
	breq .L131
	.loc 1 176 0
	lds r24,swTimer+6
	cpse r24,__zero_reg__
	rjmp .L131
	.loc 1 178 0
	call midi_AllManualsOff
.LVL225:
	.loc 1 179 0
	sts midiRxActivceSensing,__zero_reg__
.L131:
	ret
	.cfi_endproc
.LFE26:
	.size	midi_CheckRxActiveSense, .-midi_CheckRxActiveSense
	.section	.text.midiNote_to_Manual,"ax",@progbits
.global	midiNote_to_Manual
	.type	midiNote_to_Manual, @function
midiNote_to_Manual:
.LFB40:
	.loc 1 535 0
	.cfi_startproc
.LVL226:
	push r16
.LCFI36:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI37:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI38:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI39:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r22
	mov r17,r20
	.loc 1 536 0
	mov r29,r24
	andi r29,lo8(15)
.LVL227:
.LBB56:
	.loc 1 538 0
	ldi r28,0
.LBE56:
	.loc 1 537 0
	ldi r25,0
.LBB59:
	.loc 1 538 0
	rjmp .L134
.LVL228:
.L137:
	.loc 1 539 0
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
	brsh .L135
.LVL229:
.LBB57:
	.loc 1 541 0
	movw r26,r30
	ldd r22,Z+1
	mov r23,r16
	sub r23,r22
	mov r22,r23
.LVL230:
	.loc 1 542 0
	brmi .L135
	.loc 1 542 0 is_stmt 0 discriminator 1
	movw r30,r26
	ldd r30,Z+2
	ldi r31,0
	mov r26,r23
	lsl r23
	sbc r27,r27
	cp r26,r30
	cpc r27,r31
	brge .L135
.LVL231:
.LBB58:
	.loc 1 545 0 is_stmt 1
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
.LVL232:
	add r22,r25
.LVL233:
	.loc 1 546 0
	cpi r17,lo8(1)
	brne .L136
	.loc 1 547 0
	sts midiLastInManual,r24
	.loc 1 548 0
	sts midiLastInNote,r22
.L136:
	.loc 1 550 0
	mov r20,r17
.LVL234:
	call manual_NoteOnOff
.LVL235:
	.loc 1 551 0
	ldi r25,lo8(-1)
.LVL236:
.L135:
.LBE58:
.LBE57:
	.loc 1 538 0 discriminator 2
	subi r28,lo8(-(1))
.LVL237:
.L134:
	.loc 1 538 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brsh .+2
	rjmp .L137
.LBE59:
	.loc 1 555 0 is_stmt 1
	cpi r17,lo8(1)
	brne .L133
	.loc 1 555 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L133
	.loc 1 557 0 is_stmt 1
	sts midiLastInNote,r16
	.loc 1 558 0
	sts midiLastInChannel,r29
	.loc 1 559 0
	ldi r24,lo8(-1)
	sts midiLastInManual,r24
.L133:
/* epilogue start */
	.loc 1 561 0
	pop r29
.LVL238:
	pop r28
.LVL239:
	pop r17
.LVL240:
	pop r16
.LVL241:
	ret
	.cfi_endproc
.LFE40:
	.size	midiNote_to_Manual, .-midiNote_to_Manual
	.section	.text.midiIn_Process,"ax",@progbits
.global	midiIn_Process
	.type	midiIn_Process, @function
midiIn_Process:
.LFB28:
	.loc 1 196 0
	.cfi_startproc
.LVL242:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 197 0
	tst r24
	brlt .+2
	rjmp .L140
	.loc 1 200 0
	cpi r24,lo8(-8)
	brlo .L141
	.loc 1 202 0
	cpi r24,lo8(-2)
	brne .L142
	.loc 1 203 0
	ldi r24,lo8(1)
.LVL243:
	sts midiRxActivceSensing,r24
.LBB60:
	.loc 1 204 0
	in r25,__SREG__
.LVL244:
.LBB61:
.LBB62:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE62:
.LBE61:
	.loc 1 204 0
	rjmp .L143
.LVL245:
.L144:
	.loc 1 204 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(25)
.LVL246:
	std Z+6,r24
	std Z+7,__zero_reg__
.LVL247:
	.loc 1 204 0 discriminator 3
	ldi r24,0
.LVL248:
.L143:
	.loc 1 204 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L144
.LVL249:
.LBB63:
.LBB64:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL250:
.LBE64:
.LBE63:
.LBE60:
	ret
.LVL251:
.L142:
	.loc 1 205 0
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L139
	.loc 1 206 0
	call midiAllReset
.LVL252:
	ret
.LVL253:
.L141:
	.loc 1 211 0
	sts midiLastCommand,r24
	.loc 1 212 0
	sts midiDataByteCount,__zero_reg__
	.loc 1 213 0
	ldi r25,lo8(-128)
	add r25,r24
	cpi r25,lo8(64)
	brsh .L146
	.loc 1 215 0
	ldi r24,lo8(2)
.LVL254:
	sts midiDataByteExpected,r24
	ret
.LVL255:
.L146:
	.loc 1 216 0
	ldi r25,lo8(32)
	add r25,r24
	cpi r25,lo8(16)
	brsh .L147
	.loc 1 218 0
	ldi r24,lo8(2)
.LVL256:
	sts midiDataByteExpected,r24
	ret
.LVL257:
.L147:
	.loc 1 219 0
	cpi r24,lo8(-14)
	brne .L148
	.loc 1 221 0
	ldi r24,lo8(2)
.LVL258:
	sts midiDataByteExpected,r24
	ret
.LVL259:
.L148:
	.loc 1 222 0
	cpi r24,lo8(-16)
	brne .L149
	.loc 1 224 0
	ldi r24,lo8(-1)
.LVL260:
	sts midiDataByteExpected,r24
	ret
.LVL261:
.L149:
	.loc 1 225 0
	ldi r25,lo8(64)
	add r25,r24
	cpi r25,lo8(32)
	brsh .L150
	.loc 1 227 0
	ldi r24,lo8(1)
.LVL262:
	sts midiDataByteExpected,r24
	ret
.LVL263:
.L150:
	.loc 1 228 0
	cpi r24,lo8(-15)
	breq .L151
	.loc 1 228 0 is_stmt 0 discriminator 1
	cpi r24,lo8(-13)
	brne .L152
.L151:
	.loc 1 230 0 is_stmt 1
	ldi r24,lo8(1)
.LVL264:
	sts midiDataByteExpected,r24
	ret
.LVL265:
.L152:
	.loc 1 233 0
	sts midiDataByteExpected,__zero_reg__
	ret
.L140:
	.loc 1 239 0
	lds r30,midiDataByteCount
	cpi r30,lo8(2)
	brsh .L153
	.loc 1 241 0
	ldi r25,lo8(1)
	add r25,r30
	sts midiDataByteCount,r25
	ldi r31,0
	subi r30,lo8(-(midiDataByte))
	sbci r31,hi8(-(midiDataByte))
	st Z,r24
.L153:
	.loc 1 243 0
	lds r24,midiDataByteExpected
.LVL266:
	cpi r24,lo8(-1)
	breq .L139
	.loc 1 245 0
	lds r25,midiDataByteCount
	cp r25,r24
	brlo .L139
	.loc 1 247 0
	lds r25,midiLastCommand
	cpi r25,lo8(-16)
	brsh .L154
.LBB65:
	.loc 1 249 0
	mov r24,r25
	andi r24,lo8(15)
.LVL267:
	.loc 1 251 0
	andi r25,lo8(-16)
	cpi r25,lo8(-112)
	breq .L155
	brsh .L156
	cpi r25,lo8(-128)
	breq .L157
	rjmp .L154
.L156:
	cpi r25,lo8(-80)
	breq .L158
	cpi r25,lo8(-64)
	breq .L159
	rjmp .L154
.L157:
.LVL268:
	.loc 1 255 0
	ldi r20,0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL269:
	.loc 1 256 0
	rjmp .L154
.LVL270:
.L155:
	.loc 1 258 0
	lds r25,midiDataByte+1
	cpse r25,__zero_reg__
	rjmp .L161
	.loc 1 260 0
	ldi r20,0
	rjmp .L160
.L161:
	.loc 1 263 0
	ldi r20,lo8(1)
.L160:
.LVL271:
	.loc 1 265 0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL272:
	.loc 1 266 0
	rjmp .L154
.LVL273:
.L158:
	.loc 1 268 0
	lds r25,midiDataByte
	cpi r25,lo8(123)
	brne .L154
	.loc 1 269 0
	call midiAllNotesOff
.LVL274:
	rjmp .L154
.LVL275:
.L159:
	.loc 1 273 0
	lds r24,midiDataByte
.LVL276:
	call program_toRegister
.LVL277:
.L154:
.LBE65:
	.loc 1 280 0
	sts midiDataByteCount,__zero_reg__
.L139:
	ret
	.cfi_endproc
.LFE28:
	.size	midiIn_Process, .-midiIn_Process
	.section	.text.midiKeyPress_Process,"ax",@progbits
.global	midiKeyPress_Process
	.type	midiKeyPress_Process, @function
midiKeyPress_Process:
.LFB47:
	.loc 1 686 0
	.cfi_startproc
.LVL278:
	push r12
.LCFI40:
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
.LCFI41:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI42:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI43:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI44:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI45:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI46:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI47:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 1 687 0
	mov r17,r25
	andi r17,lo8(-32)
.LVL279:
	.loc 1 688 0
	andi r25,lo8(31)
	mov r13,r25
.LVL280:
	.loc 1 689 0
	mov r29,r24
.LVL281:
	.loc 1 692 0
	cpi r17,lo8(32)
	brne .+2
	rjmp .L182
	.loc 1 692 0 is_stmt 0 discriminator 1
	tst r17
	brne .+2
	rjmp .L183
.LBB66:
	rjmp .L162
.LVL282:
.L181:
	.loc 1 696 0 is_stmt 1
	sbrs r29,0
	rjmp .L165
	.loc 1 698 0
	ldi r18,lo8(32)
	mul r28,r18
	movw r24,r0
	clr __zero_reg__
.LVL283:
	or r24,r13
	call moduleBit_to_manualNote
.LVL284:
	mov r15,r24
	mov r14,r25
	.loc 1 700 0
	mov r16,r24
	cpi r24,lo8(-1)
	brne .+2
	rjmp .L165
.LBB67:
	.loc 1 703 0
	mov r22,r25
	call Manual_to_MidiNote
.LVL285:
	mov r12,r25
	.loc 1 704 0
	cpi r24,lo8(-1)
	breq .L166
	.loc 1 706 0
	cpi r17,lo8(32)
	breq .L184
	.loc 1 706 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
	tst r25
	breq .L185
	.loc 1 706 0
	ldi r25,lo8(-112)
	rjmp .L167
.L184:
	ldi r25,lo8(-112)
	rjmp .L167
.L185:
	ldi r25,lo8(-128)
.L167:
	.loc 1 706 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL286:
	.loc 1 708 0 is_stmt 1 discriminator 6
	mov r24,r12
	call serial1MIDISend
.LVL287:
	.loc 1 710 0 discriminator 6
	cpse r17,__zero_reg__
	rjmp .L186
	.loc 1 710 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L187
	.loc 1 710 0
	ldi r24,lo8(64)
	rjmp .L168
.L186:
	ldi r24,lo8(64)
	rjmp .L168
.L187:
	ldi r24,0
.L168:
	.loc 1 710 0 discriminator 6
	call serial1MIDISend
.LVL288:
	.loc 1 712 0 is_stmt 1 discriminator 6
	cpi r17,lo8(32)
	brne .L166
	.loc 1 714 0
	sts midiLastOutManual,r15
.LVL289:
	.loc 1 715 0
	sts midiLastOutNote,r14
.LVL290:
.L166:
	.loc 1 719 0
	ldi r20,lo8(1)
	cpi r17,lo8(32)
	breq .L169
	ldi r20,0
.L169:
	mov r15,r20
.LVL291:
	.loc 1 720 0
	cpse r16,__zero_reg__
	rjmp .L170
	.loc 1 721 0
	lds r24,midi_Couplers
.LVL292:
	cpi r24,lo8(-1)
	brne .L171
	.loc 1 722 0
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL293:
.L171:
	.loc 1 724 0
	lds r24,midi_Couplers+1
	cpi r24,lo8(-1)
	brne .L172
	.loc 1 725 0
	mov r20,r15
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL294:
.L172:
	.loc 1 727 0
	lds r24,midi_Couplers+3
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L165
	.loc 1 728 0
	mov r20,r15
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL295:
	rjmp .L165
.LVL296:
.L170:
	.loc 1 730 0
	cpi r16,lo8(1)
	brne .L173
	.loc 1 731 0
	lds r24,midi_Couplers+2
.LVL297:
	cpi r24,lo8(-1)
	brne .L174
	.loc 1 732 0
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL298:
.L174:
	.loc 1 734 0
	lds r24,midi_Couplers+4
	cpi r24,lo8(-1)
	brne .L175
	.loc 1 735 0
	mov r20,r15
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL299:
.L175:
	.loc 1 737 0
	lds r24,midi_Couplers+6
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L165
	.loc 1 738 0
	mov r20,r15
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL300:
	rjmp .L165
.LVL301:
.L173:
	.loc 1 740 0
	cpi r16,lo8(2)
	brne .L176
	.loc 1 741 0
	lds r24,midi_Couplers+5
.LVL302:
	cpi r24,lo8(-1)
	brne .L177
	.loc 1 742 0
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL303:
.L177:
	.loc 1 744 0
	lds r24,midi_Couplers+7
	cpi r24,lo8(-1)
	brne .L178
	.loc 1 745 0
	mov r20,r15
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL304:
.L178:
	.loc 1 747 0
	lds r24,midi_Couplers+8
	cpi r24,lo8(-1)
	brne .L165
	.loc 1 748 0
	mov r20,r15
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL305:
	rjmp .L165
.LVL306:
.L176:
	.loc 1 750 0
	cpi r16,lo8(3)
	brne .L165
	.loc 1 751 0
	lds r24,midi_Couplers+9
.LVL307:
	cpi r24,lo8(-1)
	brne .L179
	.loc 1 752 0
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL308:
.L179:
	.loc 1 754 0
	lds r24,midi_Couplers+10
	cpi r24,lo8(-1)
	brne .L180
	.loc 1 755 0
	mov r20,r15
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL309:
.L180:
	.loc 1 757 0
	lds r24,midi_Couplers+11
	cpi r24,lo8(-1)
	brne .L165
	.loc 1 758 0
	mov r20,r15
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL310:
.L165:
.LBE67:
	.loc 1 763 0 discriminator 2
	lsr r29
.LVL311:
	.loc 1 694 0 discriminator 2
	subi r28,lo8(-(1))
.LVL312:
	rjmp .L163
.LVL313:
.L182:
.LBE66:
	ldi r28,0
	rjmp .L163
.L183:
	ldi r28,0
.LVL314:
.L163:
.LBB68:
	.loc 1 694 0 is_stmt 0 discriminator 1
	cpi r28,lo8(8)
	brsh .+2
	rjmp .L181
.LVL315:
.L162:
/* epilogue start */
.LBE68:
	.loc 1 766 0 is_stmt 1
	pop r29
	pop r28
	pop r17
.LVL316:
	pop r16
	pop r15
	pop r14
	pop r13
.LVL317:
	pop r12
.LVL318:
	ret
	.cfi_endproc
.LFE47:
	.size	midiKeyPress_Process, .-midiKeyPress_Process
	.section	.text.midiSendAllNotesOff,"ax",@progbits
.global	midiSendAllNotesOff
	.type	midiSendAllNotesOff, @function
midiSendAllNotesOff:
.LFB48:
	.loc 1 770 0
	.cfi_startproc
	push r28
.LCFI48:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL319:
.LBB69:
	.loc 1 771 0
	ldi r28,0
	rjmp .L189
.LVL320:
.L191:
.LBB70:
	.loc 1 772 0
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL321:
	.loc 1 773 0
	cpi r24,lo8(16)
	brsh .L190
	.loc 1 774 0
	ori r24,lo8(-80)
.LVL322:
	call serial1MIDISend
.LVL323:
	.loc 1 775 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL324:
	.loc 1 776 0
	ldi r24,0
	call serial1MIDISend
.LVL325:
.L190:
.LBE70:
	.loc 1 771 0 discriminator 2
	subi r28,lo8(-(1))
.LVL326:
.L189:
	.loc 1 771 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brlo .L191
/* epilogue start */
.LBE69:
	.loc 1 779 0 is_stmt 1
	pop r28
.LVL327:
	ret
	.cfi_endproc
.LFE48:
	.size	midiSendAllNotesOff, .-midiSendAllNotesOff
	.section	.text.midi_SendActiveSense,"ax",@progbits
.global	midi_SendActiveSense
	.type	midi_SendActiveSense, @function
midi_SendActiveSense:
.LFB49:
	.loc 1 781 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 782 0
	ldi r24,lo8(-2)
	call serial1MIDISend
.LVL328:
	ret
	.cfi_endproc
.LFE49:
	.size	midi_SendActiveSense, .-midi_SendActiveSense
	.section	.text.midi_CheckTxActiveSense,"ax",@progbits
.global	midi_CheckTxActiveSense
	.type	midi_CheckTxActiveSense, @function
midi_CheckTxActiveSense:
.LFB27:
	.loc 1 184 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 185 0
	lds r24,midi_Setting
	tst r24
	breq .L193
	.loc 1 186 0
	lds r24,swTimer+16
	tst r24
	breq .L195
	.loc 1 186 0 is_stmt 0 discriminator 1
	lds r24,swTimer+16
	cpi r24,lo8(-1)
	brne .L193
.L195:
.LBB71:
	.loc 1 188 0 is_stmt 1
	in r25,__SREG__
.LVL329:
.LBB72:
.LBB73:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE73:
.LBE72:
	.loc 1 188 0
	ldi r24,lo8(1)
	rjmp .L196
.LVL330:
.L197:
	.loc 1 188 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(10)
.LVL331:
	std Z+16,r24
	std Z+17,__zero_reg__
.LVL332:
	.loc 1 188 0 discriminator 3
	ldi r24,0
.LVL333:
.L196:
	.loc 1 188 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L197
.LVL334:
.LBB74:
.LBB75:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL335:
.LBE75:
.LBE74:
.LBE71:
	.loc 1 189 0
	call midi_SendActiveSense
.LVL336:
.L193:
	ret
	.cfi_endproc
.LFE27:
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
	.comm	programMap,640,1
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
	.file 4 ".././utils.h"
	.file 5 ".././message.h"
	.file 6 ".././hwtimer.h"
	.file 7 ".././Midi.h"
	.file 8 ".././menu.h"
	.file 9 ".././ee_prom.h"
	.file 10 ".././log.h"
	.file 11 ".././serial.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x16e1
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF165
	.byte	0xc
	.long	.LASF166
	.long	.LASF167
	.long	.Ldebug_ranges0+0x150
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
	.byte	0x2
	.byte	0x4
	.byte	0x18
	.long	0xa8
	.uleb128 0x6
	.long	.LASF11
	.byte	0x4
	.byte	0x19
	.long	0x54
	.uleb128 0x6
	.long	.LASF12
	.byte	0x4
	.byte	0x1a
	.long	0xa8
	.byte	0
	.uleb128 0x7
	.long	0x3b
	.long	0xb8
	.uleb128 0x8
	.long	0x82
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x1b
	.long	0x89
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.byte	0x40
	.long	0xe2
	.uleb128 0x6
	.long	.LASF14
	.byte	0x5
	.byte	0x41
	.long	0x54
	.uleb128 0x6
	.long	.LASF15
	.byte	0x5
	.byte	0x42
	.long	0xa8
	.byte	0
	.uleb128 0x2
	.long	.LASF16
	.byte	0x5
	.byte	0x43
	.long	0xc3
	.uleb128 0x9
	.byte	0x2
	.byte	0x6
	.byte	0x4d
	.long	0x112
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0x4e
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0x4f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF19
	.byte	0x6
	.byte	0x50
	.long	0xed
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.byte	0xa3
	.long	0x196
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.byte	0xa4
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.byte	0xa5
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.byte	0xa6
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.byte	0xa7
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.byte	0xa8
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.byte	0xa9
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0xaa
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0xab
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x2
	.long	.LASF28
	.byte	0x6
	.byte	0xac
	.long	0x11d
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.byte	0x2c
	.long	0x1c6
	.uleb128 0xa
	.long	.LASF29
	.byte	0x7
	.byte	0x2d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x7
	.byte	0x2e
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF31
	.byte	0x7
	.byte	0x2f
	.long	0x1a1
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.byte	0x31
	.long	0x1f6
	.uleb128 0xa
	.long	.LASF32
	.byte	0x7
	.byte	0x32
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x7
	.byte	0x33
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF33
	.byte	0x7
	.byte	0x34
	.long	0x1d1
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.byte	0x3e
	.long	0x226
	.uleb128 0xa
	.long	.LASF34
	.byte	0x7
	.byte	0x3f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x7
	.byte	0x40
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF36
	.byte	0x7
	.byte	0x41
	.long	0x201
	.uleb128 0x9
	.byte	0x3
	.byte	0x7
	.byte	0x43
	.long	0x264
	.uleb128 0xa
	.long	.LASF37
	.byte	0x7
	.byte	0x44
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x7
	.byte	0x45
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF39
	.byte	0x7
	.byte	0x46
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x7
	.byte	0x47
	.long	0x231
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.byte	0x4a
	.long	0x294
	.uleb128 0xa
	.long	.LASF37
	.byte	0x7
	.byte	0x4b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x7
	.byte	0x4c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x7
	.byte	0x4d
	.long	0x26f
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.byte	0x73
	.long	0x2e0
	.uleb128 0xa
	.long	.LASF32
	.byte	0x7
	.byte	0x74
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x7
	.byte	0x75
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF43
	.byte	0x7
	.byte	0x76
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF44
	.byte	0x7
	.byte	0x77
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF45
	.byte	0x7
	.byte	0x78
	.long	0x29f
	.uleb128 0x9
	.byte	0x1
	.byte	0x7
	.byte	0x7c
	.long	0x302
	.uleb128 0xa
	.long	.LASF29
	.byte	0x7
	.byte	0x7d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.long	.LASF46
	.byte	0x7
	.byte	0x7e
	.long	0x2eb
	.uleb128 0x9
	.byte	0x3
	.byte	0x7
	.byte	0x82
	.long	0x340
	.uleb128 0xa
	.long	.LASF47
	.byte	0x7
	.byte	0x83
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF48
	.byte	0x7
	.byte	0x84
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF39
	.byte	0x7
	.byte	0x85
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x7
	.byte	0x86
	.long	0x30d
	.uleb128 0x9
	.byte	0xa
	.byte	0x7
	.byte	0x8a
	.long	0x370
	.uleb128 0xa
	.long	.LASF50
	.byte	0x7
	.byte	0x8b
	.long	0x370
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF51
	.byte	0x7
	.byte	0x8c
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.long	0x3b
	.long	0x380
	.uleb128 0x8
	.long	0x82
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x7
	.byte	0x8d
	.long	0x34b
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.byte	0xa5
	.long	0x3b0
	.uleb128 0xa
	.long	.LASF53
	.byte	0x7
	.byte	0xa6
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF54
	.byte	0x7
	.byte	0xa7
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF55
	.byte	0x7
	.byte	0xa8
	.long	0x38b
	.uleb128 0xb
	.byte	0x2
	.long	0x3b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF56
	.uleb128 0xc
	.long	0x3b
	.uleb128 0x7
	.long	0x264
	.long	0x3e3
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	0x2e0
	.long	0x3f9
	.uleb128 0x8
	.long	0x82
	.byte	0xf
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	0x302
	.long	0x409
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	0x340
	.long	0x419
	.uleb128 0x8
	.long	0x82
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.long	0x380
	.long	0x429
	.uleb128 0x8
	.long	0x82
	.byte	0x3f
	.byte	0
	.uleb128 0xd
	.long	.LASF168
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0xe
	.long	.LASF169
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x44f
	.uleb128 0xf
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0x44f
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x3c8
	.uleb128 0x10
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.byte	0x3d
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x491
	.uleb128 0x11
	.long	.LASF57
	.byte	0x1
	.byte	0x3f
	.long	0x3bb
	.long	.LLST0
	.uleb128 0x12
	.long	.Ldebug_ranges0+0
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x40
	.long	0x3b
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.byte	0x39
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x4b4
	.uleb128 0x14
	.long	.LVL4
	.long	0x455
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF71
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.long	0x3b
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x4e2
	.uleb128 0x16
	.long	.LASF61
	.byte	0x1
	.byte	0x47
	.long	0x3b
	.long	.LLST2
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.byte	0x5c
	.long	0xb8
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x51e
	.uleb128 0x11
	.long	.LASF60
	.byte	0x1
	.byte	0x5d
	.long	0xb8
	.long	.LLST3
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.byte	0x5f
	.long	0x3b
	.long	.LLST4
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF63
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x557
	.uleb128 0x16
	.long	.LASF51
	.byte	0x1
	.byte	0x6a
	.long	0xb8
	.long	.LLST5
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.byte	0x6b
	.long	0x3b
	.long	.LLST6
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.byte	0x86
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x57a
	.uleb128 0x14
	.long	.LVL23
	.long	0x1662
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF65
	.byte	0x1
	.word	0x123
	.long	.LFB29
	.long	.LFE29
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x5bb
	.uleb128 0x1a
	.long	.LASF66
	.byte	0x1
	.word	0x124
	.long	0x3b
	.long	.LLST7
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x1a
	.long	.LASF67
	.byte	0x1
	.word	0x125
	.long	0x3b
	.long	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF68
	.byte	0x1
	.word	0x12e
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x67f
	.uleb128 0x1b
	.long	.LBB17
	.long	.LBE17
	.long	0x5f3
	.uleb128 0x1a
	.long	.LASF67
	.byte	0x1
	.word	0x132
	.long	0x3b
	.long	.LLST9
	.byte	0
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x30
	.long	0x623
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x1
	.word	0x140
	.long	0x3b
	.long	.LLST10
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x1a
	.long	.LASF70
	.byte	0x1
	.word	0x141
	.long	0x3b
	.long	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL32
	.long	0x166f
	.uleb128 0x1d
	.long	.LVL33
	.long	0x167c
	.long	0x64e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x35
	.uleb128 0x1e
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
	.uleb128 0x14
	.long	.LVL34
	.long	0x57a
	.uleb128 0x14
	.long	.LVL35
	.long	0x1689
	.uleb128 0x1f
	.long	.LVL43
	.long	0x167c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x36
	.uleb128 0x1e
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
	.uleb128 0x20
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.word	0x14a
	.byte	0x1
	.long	0x226
	.long	.LFB31
	.long	.LFE31
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x6e3
	.uleb128 0x21
	.long	.LASF70
	.byte	0x1
	.word	0x14a
	.long	0x3b
	.long	.LLST12
	.uleb128 0x22
	.long	.LASF60
	.byte	0x1
	.word	0x14c
	.long	0x226
	.uleb128 0x23
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.word	0x14f
	.long	0x6e3
	.long	.LLST13
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x151
	.long	0x3b
	.long	.LLST14
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x340
	.uleb128 0x25
	.byte	0x1
	.long	.LASF74
	.byte	0x1
	.word	0x161
	.byte	0x1
	.long	0x3b
	.long	.LFB32
	.long	.LFE32
	.long	.LLST15
	.byte	0x1
	.long	0x796
	.uleb128 0x21
	.long	.LASF70
	.byte	0x1
	.word	0x161
	.long	0x3b
	.long	.LLST16
	.uleb128 0x21
	.long	.LASF75
	.byte	0x1
	.word	0x161
	.long	0x3b
	.long	.LLST17
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x22
	.long	.LASF76
	.byte	0x1
	.word	0x166
	.long	0x226
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x78
	.long	0x783
	.uleb128 0x1a
	.long	.LASF77
	.byte	0x1
	.word	0x169
	.long	0x3b
	.long	.LLST18
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x16a
	.long	0x3b
	.long	.LLST19
	.uleb128 0x1a
	.long	.LASF79
	.byte	0x1
	.word	0x16b
	.long	0x3b
	.long	.LLST20
	.uleb128 0x1a
	.long	.LASF80
	.byte	0x1
	.word	0x16c
	.long	0x3b
	.long	.LLST21
	.byte	0
	.uleb128 0x1f
	.long	.LVL54
	.long	0x67f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF81
	.byte	0x1
	.word	0x17f
	.byte	0x1
	.long	0x3b
	.long	.LFB33
	.long	.LFE33
	.long	.LLST22
	.byte	0x1
	.long	0x811
	.uleb128 0x21
	.long	.LASF82
	.byte	0x1
	.word	0x17f
	.long	0x3bb
	.long	.LLST23
	.uleb128 0x1a
	.long	.LASF60
	.byte	0x1
	.word	0x180
	.long	0x3b
	.long	.LLST24
	.uleb128 0x1a
	.long	.LASF80
	.byte	0x1
	.word	0x182
	.long	0x3b
	.long	.LLST25
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x1a
	.long	.LASF70
	.byte	0x1
	.word	0x183
	.long	0x3b
	.long	.LLST26
	.uleb128 0x1f
	.long	.LVL72
	.long	0x6e9
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF83
	.byte	0x1
	.word	0x19a
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST27
	.byte	0x1
	.long	0x8b2
	.uleb128 0x21
	.long	.LASF70
	.byte	0x1
	.word	0x19a
	.long	0x3b
	.long	.LLST28
	.uleb128 0x21
	.long	.LASF84
	.byte	0x1
	.word	0x19a
	.long	0x3b
	.long	.LLST29
	.uleb128 0x23
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x22
	.long	.LASF76
	.byte	0x1
	.word	0x19e
	.long	0x226
	.uleb128 0x1b
	.long	.LBB30
	.long	.LBE30
	.long	0x89f
	.uleb128 0x1a
	.long	.LASF77
	.byte	0x1
	.word	0x1a1
	.long	0x3b
	.long	.LLST30
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x1a2
	.long	0x3b
	.long	.LLST31
	.uleb128 0x1a
	.long	.LASF79
	.byte	0x1
	.word	0x1a3
	.long	0x3b
	.long	.LLST32
	.byte	0
	.uleb128 0x1f
	.long	.LVL84
	.long	0x67f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF85
	.byte	0x1
	.word	0x1b0
	.byte	0x1
	.long	0x3b
	.long	.LFB35
	.long	.LFE35
	.long	.LLST33
	.byte	0x1
	.long	0x981
	.uleb128 0x21
	.long	.LASF86
	.byte	0x1
	.word	0x1b0
	.long	0x3b
	.long	.LLST34
	.uleb128 0x1a
	.long	.LASF60
	.byte	0x1
	.word	0x1b2
	.long	0x3b
	.long	.LLST35
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xa8
	.uleb128 0x1a
	.long	.LASF87
	.byte	0x1
	.word	0x1b4
	.long	0x3b
	.long	.LLST36
	.uleb128 0x1a
	.long	.LASF70
	.byte	0x1
	.word	0x1b5
	.long	0x3b
	.long	.LLST37
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.word	0x1b6
	.long	0x3bb
	.long	.LLST38
	.uleb128 0x22
	.long	.LASF51
	.byte	0x1
	.word	0x1c3
	.long	0xb8
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0xc0
	.long	0x976
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.word	0x1b7
	.long	0x3b
	.long	.LLST39
	.uleb128 0x23
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x1ba
	.long	0x3b
	.long	.LLST40
	.uleb128 0x1f
	.long	.LVL105
	.long	0x811
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL113
	.long	0x51e
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF90
	.byte	0x1
	.word	0x1ca
	.long	.LFB36
	.long	.LFE36
	.long	.LLST41
	.byte	0x1
	.long	0x9c9
	.uleb128 0x23
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x1cb
	.long	0x3b
	.long	.LLST42
	.uleb128 0x1f
	.long	.LVL119
	.long	0x811
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF91
	.byte	0x1
	.word	0x1d0
	.byte	0x1
	.long	0x3b
	.long	.LFB37
	.long	.LFE37
	.long	.LLST43
	.byte	0x1
	.long	0xa52
	.uleb128 0x21
	.long	.LASF86
	.byte	0x1
	.word	0x1d0
	.long	0x3b
	.long	.LLST44
	.uleb128 0x21
	.long	.LASF92
	.byte	0x1
	.word	0x1d0
	.long	0x3b
	.long	.LLST45
	.uleb128 0x1a
	.long	.LASF60
	.byte	0x1
	.word	0x1d3
	.long	0x3b
	.long	.LLST46
	.uleb128 0x1b
	.long	.LBB37
	.long	.LBE37
	.long	0xa3f
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.word	0x1d5
	.long	0x3bb
	.long	.LLST47
	.uleb128 0x14
	.long	.LVL128
	.long	0x796
	.byte	0
	.uleb128 0x14
	.long	.LVL132
	.long	0x4e2
	.uleb128 0x14
	.long	.LVL134
	.long	0x1696
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF93
	.byte	0x1
	.word	0x1e2
	.long	.LFB38
	.long	.LFE38
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xabc
	.uleb128 0x1a
	.long	.LASF94
	.byte	0x1
	.word	0x1e3
	.long	0xabc
	.long	.LLST48
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0xd8
	.long	0xa94
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x1e6
	.long	0x3b
	.long	.LLST49
	.byte	0
	.uleb128 0x14
	.long	.LVL141
	.long	0x16a3
	.uleb128 0x1f
	.long	.LVL142
	.long	0x167c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
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
	.long	0x2e0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF95
	.byte	0x1
	.word	0x205
	.long	.LFB39
	.long	.LFE39
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xb20
	.uleb128 0x1b
	.long	.LBB40
	.long	.LBE40
	.long	0xaf8
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x207
	.long	0x3b
	.long	.LLST50
	.byte	0
	.uleb128 0x14
	.long	.LVL146
	.long	0x16b0
	.uleb128 0x1f
	.long	.LVL147
	.long	0x167c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x32
	.uleb128 0x1e
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
	.uleb128 0x20
	.byte	0x1
	.long	.LASF96
	.byte	0x1
	.word	0x233
	.byte	0x1
	.long	0x1c6
	.long	.LFB41
	.long	.LFE41
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xb6a
	.uleb128 0x21
	.long	.LASF32
	.byte	0x1
	.word	0x233
	.long	0x3b
	.long	.LLST51
	.uleb128 0x28
	.long	.LASF30
	.byte	0x1
	.word	0x233
	.long	0x3b
	.byte	0x1
	.byte	0x66
	.uleb128 0x22
	.long	.LASF60
	.byte	0x1
	.word	0x234
	.long	0x1c6
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF97
	.byte	0x1
	.word	0x240
	.long	.LFB42
	.long	.LFE42
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xbd9
	.uleb128 0x23
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x241
	.long	0x3b
	.long	.LLST52
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x1a
	.long	.LASF98
	.byte	0x1
	.word	0x242
	.long	0x3b
	.long	.LLST53
	.uleb128 0x1a
	.long	.LASF99
	.byte	0x1
	.word	0x243
	.long	0x3b
	.long	.LLST54
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.word	0x244
	.long	0x3b
	.long	.LLST55
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF101
	.byte	0x1
	.word	0x258
	.long	.LFB43
	.long	.LFE43
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xc58
	.uleb128 0x1b
	.long	.LBB46
	.long	.LBE46
	.long	0xc23
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x259
	.long	0x29
	.long	.LLST56
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x108
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.word	0x25b
	.long	0x29
	.long	.LLST57
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL167
	.long	0x16bd
	.uleb128 0x1d
	.long	.LVL168
	.long	0x167c
	.long	0xc4e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x33
	.uleb128 0x1e
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
	.uleb128 0x14
	.long	.LVL169
	.long	0xb6a
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF102
	.byte	0x1
	.word	0x26b
	.byte	0x1
	.long	0x226
	.long	.LFB44
	.long	.LFE44
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xccc
	.uleb128 0x21
	.long	.LASF32
	.byte	0x1
	.word	0x26b
	.long	0x3b
	.long	.LLST58
	.uleb128 0x21
	.long	.LASF30
	.byte	0x1
	.word	0x26b
	.long	0x3b
	.long	.LLST59
	.uleb128 0x22
	.long	.LASF60
	.byte	0x1
	.word	0x26d
	.long	0x226
	.uleb128 0x23
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.word	0x270
	.long	0xccc
	.long	.LLST60
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x272
	.long	0x3b
	.long	.LLST61
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x264
	.uleb128 0x20
	.byte	0x1
	.long	.LASF103
	.byte	0x1
	.word	0x282
	.byte	0x1
	.long	0x1f6
	.long	.LFB45
	.long	.LFE45
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xd5e
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x282
	.long	0x3b
	.long	.LLST62
	.uleb128 0x22
	.long	.LASF60
	.byte	0x1
	.word	0x286
	.long	0x1f6
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.word	0x287
	.long	0xccc
	.long	.LLST63
	.uleb128 0x1a
	.long	.LASF32
	.byte	0x1
	.word	0x289
	.long	0x3b
	.long	.LLST64
	.uleb128 0x1b
	.long	.LBB50
	.long	.LBE50
	.long	0xd49
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x28b
	.long	0x3b
	.long	.LLST65
	.byte	0
	.uleb128 0x1f
	.long	.LVL189
	.long	0x16ca
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF104
	.byte	0x1
	.word	0x29b
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST66
	.byte	0x1
	.long	0xdfc
	.uleb128 0x21
	.long	.LASF32
	.byte	0x1
	.word	0x29b
	.long	0x3b
	.long	.LLST67
	.uleb128 0x21
	.long	.LASF30
	.byte	0x1
	.word	0x29b
	.long	0x3b
	.long	.LLST68
	.uleb128 0x21
	.long	.LASF84
	.byte	0x1
	.word	0x29b
	.long	0x3b
	.long	.LLST69
	.uleb128 0x22
	.long	.LASF105
	.byte	0x1
	.word	0x29c
	.long	0x226
	.uleb128 0x1b
	.long	.LBB51
	.long	.LBE51
	.long	0xde3
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x2a0
	.long	0x3b
	.long	.LLST70
	.uleb128 0x1a
	.long	.LASF79
	.byte	0x1
	.word	0x2a1
	.long	0x3b
	.long	.LLST71
	.byte	0
	.uleb128 0x1f
	.long	.LVL191
	.long	0xc58
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF106
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST72
	.byte	0x1
	.long	0xe75
	.uleb128 0x16
	.long	.LASF29
	.byte	0x1
	.byte	0x8b
	.long	0x3b
	.long	.LLST73
	.uleb128 0x11
	.long	.LASF107
	.byte	0x1
	.byte	0x8c
	.long	0x3b
	.long	.LLST74
	.uleb128 0x23
	.long	.LBB52
	.long	.LBE52
	.uleb128 0x11
	.long	.LASF30
	.byte	0x1
	.byte	0x91
	.long	0x3b
	.long	.LLST75
	.uleb128 0x23
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x93
	.long	0x3b
	.long	.LLST76
	.uleb128 0x1f
	.long	.LVL207
	.long	0xd5e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF108
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST77
	.byte	0x1
	.long	0xed4
	.uleb128 0x16
	.long	.LASF32
	.byte	0x1
	.byte	0x9b
	.long	0x3b
	.long	.LLST78
	.uleb128 0x23
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x11
	.long	.LASF30
	.byte	0x1
	.byte	0x9e
	.long	0x3b
	.long	.LLST79
	.uleb128 0x1f
	.long	.LVL217
	.long	0xd5e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF109
	.byte	0x1
	.byte	0xa4
	.long	.LFB25
	.long	.LFE25
	.long	.LLST80
	.byte	0x1
	.long	0xf17
	.uleb128 0x23
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x11
	.long	.LASF32
	.byte	0x1
	.byte	0xa5
	.long	0x3b
	.long	.LLST81
	.uleb128 0x1f
	.long	.LVL222
	.long	0xe75
	.uleb128 0x1e
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
	.long	.LASF110
	.byte	0x1
	.byte	0xad
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xf3a
	.uleb128 0x14
	.long	.LVL225
	.long	0xed4
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF111
	.byte	0x1
	.word	0x217
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST82
	.byte	0x1
	.long	0xffe
	.uleb128 0x21
	.long	.LASF29
	.byte	0x1
	.word	0x217
	.long	0x3b
	.long	.LLST83
	.uleb128 0x21
	.long	.LASF30
	.byte	0x1
	.word	0x217
	.long	0x3b
	.long	.LLST84
	.uleb128 0x21
	.long	.LASF84
	.byte	0x1
	.word	0x217
	.long	0x3b
	.long	.LLST85
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x1
	.word	0x219
	.long	0x3b
	.long	.LLST86
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x21a
	.long	0x3b
	.long	.LLST87
	.uleb128 0x23
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x1
	.word	0x21d
	.long	0x29
	.long	.LLST88
	.uleb128 0x23
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x1a
	.long	.LASF32
	.byte	0x1
	.word	0x220
	.long	0x3b
	.long	.LLST89
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x1
	.word	0x221
	.long	0x3b
	.long	.LLST90
	.uleb128 0x1f
	.long	.LVL235
	.long	0xd5e
	.uleb128 0x1e
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
	.uleb128 0x18
	.byte	0x1
	.long	.LASF115
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x10df
	.uleb128 0x16
	.long	.LASF116
	.byte	0x1
	.byte	0xc4
	.long	0x3b
	.long	.LLST91
	.uleb128 0x1b
	.long	.LBB60
	.long	.LBE60
	.long	0x107b
	.uleb128 0x11
	.long	.LASF117
	.byte	0x1
	.byte	0xcc
	.long	0x3b
	.long	.LLST92
	.uleb128 0x11
	.long	.LASF118
	.byte	0x1
	.byte	0xcc
	.long	0x3b
	.long	.LLST93
	.uleb128 0x2b
	.long	0x429
	.long	.LBB61
	.long	.LBE61
	.byte	0x1
	.byte	0xcc
	.uleb128 0x2c
	.long	0x436
	.long	.LBB63
	.long	.LBE63
	.byte	0x1
	.byte	0xcc
	.uleb128 0x2d
	.long	0x443
	.long	.LLST94
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LBB65
	.long	.LBE65
	.long	0x10d5
	.uleb128 0x11
	.long	.LASF29
	.byte	0x1
	.byte	0xf9
	.long	0x3b
	.long	.LLST95
	.uleb128 0x11
	.long	.LASF119
	.byte	0x1
	.byte	0xfa
	.long	0x3b
	.long	.LLST96
	.uleb128 0x1d
	.long	.LVL269
	.long	0xf3a
	.long	0x10b9
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL272
	.long	0xf3a
	.uleb128 0x14
	.long	.LVL274
	.long	0xdfc
	.uleb128 0x14
	.long	.LVL277
	.long	0x8b2
	.byte	0
	.uleb128 0x14
	.long	.LVL252
	.long	0x557
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF120
	.byte	0x1
	.word	0x2ae
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST97
	.byte	0x1
	.long	0x1334
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.word	0x2ae
	.long	0xe2
	.long	.LLST98
	.uleb128 0x1a
	.long	.LASF122
	.byte	0x1
	.word	0x2af
	.long	0x3b
	.long	.LLST99
	.uleb128 0x1a
	.long	.LASF123
	.byte	0x1
	.word	0x2b0
	.long	0x3b
	.long	.LLST100
	.uleb128 0x1a
	.long	.LASF124
	.byte	0x1
	.word	0x2b1
	.long	0x3b
	.long	.LLST101
	.uleb128 0x1a
	.long	.LASF44
	.byte	0x1
	.word	0x2b2
	.long	0x1f6
	.long	.LLST102
	.uleb128 0x1a
	.long	.LASF125
	.byte	0x1
	.word	0x2b3
	.long	0x1c6
	.long	.LLST103
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x138
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2b6
	.long	0x3b
	.long	.LLST104
	.uleb128 0x1b
	.long	.LBB67
	.long	.LBE67
	.long	0x1329
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x1
	.word	0x2cf
	.long	0x3b
	.long	.LLST105
	.uleb128 0x1d
	.long	.LVL285
	.long	0xb20
	.long	0x11a4
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL286
	.long	0x16d7
	.uleb128 0x1d
	.long	.LVL287
	.long	0x16d7
	.long	0x11c1
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL288
	.long	0x16d7
	.uleb128 0x1d
	.long	.LVL293
	.long	0xd5e
	.long	0x11e9
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL294
	.long	0xd5e
	.long	0x1208
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL295
	.long	0xd5e
	.long	0x1227
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL298
	.long	0xd5e
	.long	0x1240
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL299
	.long	0xd5e
	.long	0x125f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL300
	.long	0xd5e
	.long	0x127e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL303
	.long	0xd5e
	.long	0x1297
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL304
	.long	0xd5e
	.long	0x12b6
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL305
	.long	0xd5e
	.long	0x12d5
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL308
	.long	0xd5e
	.long	0x12ee
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL309
	.long	0xd5e
	.long	0x130d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL310
	.long	0xd5e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL284
	.long	0xcd2
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF126
	.byte	0x1
	.word	0x302
	.long	.LFB48
	.long	.LFE48
	.long	.LLST106
	.byte	0x1
	.long	0x13ad
	.uleb128 0x23
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x303
	.long	0x3b
	.long	.LLST107
	.uleb128 0x23
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x1a
	.long	.LASF127
	.byte	0x1
	.word	0x304
	.long	0x3b
	.long	.LLST108
	.uleb128 0x14
	.long	.LVL323
	.long	0x16d7
	.uleb128 0x1d
	.long	.LVL324
	.long	0x16d7
	.long	0x139b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL325
	.long	0x16d7
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF128
	.byte	0x1
	.word	0x30d
	.long	.LFB49
	.long	.LFE49
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x13d8
	.uleb128 0x1f
	.long	.LVL328
	.long	0x16d7
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF129
	.byte	0x1
	.byte	0xb8
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x144f
	.uleb128 0x1b
	.long	.LBB71
	.long	.LBE71
	.long	0x1445
	.uleb128 0x11
	.long	.LASF117
	.byte	0x1
	.byte	0xbc
	.long	0x3b
	.long	.LLST109
	.uleb128 0x11
	.long	.LASF118
	.byte	0x1
	.byte	0xbc
	.long	0x3b
	.long	.LLST110
	.uleb128 0x2b
	.long	0x429
	.long	.LBB72
	.long	.LBE72
	.byte	0x1
	.byte	0xbc
	.uleb128 0x2c
	.long	0x436
	.long	.LBB74
	.long	.LBE74
	.byte	0x1
	.byte	0xbc
	.uleb128 0x2d
	.long	0x443
	.long	.LLST111
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL336
	.long	0x13ad
	.byte	0
	.uleb128 0x7
	.long	0x145f
	.long	0x145f
	.uleb128 0x8
	.long	0x82
	.byte	0x8
	.byte	0
	.uleb128 0x2e
	.long	0x112
	.uleb128 0x2f
	.long	.LASF130
	.byte	0x6
	.byte	0x51
	.long	0x1471
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.long	0x144f
	.uleb128 0x7
	.long	0x196
	.long	0x1486
	.uleb128 0x8
	.long	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x2f
	.long	.LASF131
	.byte	0x6
	.byte	0xad
	.long	0x1476
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.long	.LASF132
	.byte	0x6
	.byte	0xb4
	.long	0x14a0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.long	0x3b
	.uleb128 0x30
	.long	.LASF133
	.byte	0x1
	.byte	0x2c
	.long	0x3cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	manualMap
	.uleb128 0x7
	.long	0x294
	.long	0x14c7
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x30
	.long	.LASF134
	.byte	0x1
	.byte	0x2d
	.long	0x14b7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ManualNoteRange
	.uleb128 0x30
	.long	.LASF135
	.byte	0x1
	.byte	0x2e
	.long	0x3e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiInMap
	.uleb128 0x30
	.long	.LASF136
	.byte	0x1
	.byte	0x2f
	.long	0x3f9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiOutMap
	.uleb128 0x30
	.long	.LASF137
	.byte	0x1
	.byte	0x33
	.long	0x409
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerMap
	.uleb128 0x30
	.long	.LASF138
	.byte	0x1
	.byte	0x34
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerCount
	.uleb128 0x30
	.long	.LASF139
	.byte	0x1
	.byte	0x35
	.long	0x419
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	programMap
	.uleb128 0x30
	.long	.LASF140
	.byte	0x1
	.byte	0x30
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxActivceSensing
	.uleb128 0x30
	.long	.LASF141
	.byte	0x1
	.byte	0x31
	.long	0x3b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Setting
	.uleb128 0x30
	.long	.LASF142
	.byte	0x1
	.byte	0x7d
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutNote
	.uleb128 0x30
	.long	.LASF143
	.byte	0x1
	.byte	0x7e
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutManual
	.uleb128 0x30
	.long	.LASF144
	.byte	0x1
	.byte	0x7f
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInNote
	.uleb128 0x30
	.long	.LASF145
	.byte	0x1
	.byte	0x80
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInChannel
	.uleb128 0x30
	.long	.LASF146
	.byte	0x1
	.byte	0x81
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInManual
	.uleb128 0x7
	.long	0x3b
	.long	0x15c1
	.uleb128 0x8
	.long	0x82
	.byte	0xb
	.byte	0
	.uleb128 0x30
	.long	.LASF147
	.byte	0x1
	.byte	0x1c
	.long	0x15b1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Couplers
	.uleb128 0x30
	.long	.LASF148
	.byte	0x1
	.byte	0x1d
	.long	0x15e5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cplInfo
	.uleb128 0x31
	.uleb128 0x7
	.long	0x3b
	.long	0x15f6
	.uleb128 0x8
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x30
	.long	.LASF149
	.byte	0x8
	.byte	0xad
	.long	0x15e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x30
	.long	.LASF150
	.byte	0x1
	.byte	0x32
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiEEPromLoadError
	.uleb128 0x30
	.long	.LASF151
	.byte	0x1
	.byte	0x78
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastCommand
	.uleb128 0x30
	.long	.LASF152
	.byte	0x1
	.byte	0x79
	.long	0xa8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByte
	.uleb128 0x30
	.long	.LASF153
	.byte	0x1
	.byte	0x7a
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteCount
	.uleb128 0x30
	.long	.LASF154
	.byte	0x1
	.byte	0x7b
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteExpected
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF155
	.long	.LASF155
	.byte	0x6
	.byte	0x58
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF156
	.long	.LASF156
	.byte	0x9
	.byte	0x1c
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF157
	.long	.LASF157
	.byte	0xa
	.byte	0x32
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF158
	.long	.LASF158
	.byte	0x9
	.byte	0x1d
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF159
	.long	.LASF159
	.byte	0x9
	.byte	0x25
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF160
	.long	.LASF160
	.byte	0x9
	.byte	0x18
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF161
	.long	.LASF161
	.byte	0x9
	.byte	0x19
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF162
	.long	.LASF162
	.byte	0x9
	.byte	0x17
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF163
	.long	.LASF163
	.byte	0xa
	.byte	0x33
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF164
	.long	.LASF164
	.byte	0xb
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
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x1a
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x28
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.long	.LFE18
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
	.long	.LFE18
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL6
	.word	0x1
	.byte	0x68
	.long	.LVL6
	.long	.LVL8
	.word	0x1
	.byte	0x68
	.long	.LVL8
	.long	.LVL9
	.word	0x1
	.byte	0x6e
	.long	.LVL10
	.long	.LVL11
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST3:
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST4:
	.long	.LVL13
	.long	.LVL14
	.word	0x2
	.byte	0x3b
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.word	0x1
	.byte	0x62
	.long	.LVL15
	.long	.LVL18
	.word	0x1
	.byte	0x64
	.long	.LVL18
	.long	.LFE20
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST5:
	.long	.LVL19
	.long	.LVL21
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST6:
	.long	.LVL19
	.long	.LVL20
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL20
	.long	.LFE21
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST7:
	.long	.LVL24
	.long	.LVL25
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL25
	.long	.LVL26
	.word	0x1
	.byte	0x63
	.long	.LVL27
	.long	.LFE29
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST8:
	.long	.LVL24
	.long	.LVL25
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL25
	.long	.LFE29
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST9:
	.long	.LVL29
	.long	.LVL30
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL30
	.long	.LVL32-1
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST10:
	.long	.LVL36
	.long	.LVL41
	.word	0x1
	.byte	0x63
	.long	.LVL42
	.long	.LVL43-1
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST11:
	.long	.LVL36
	.long	.LVL38
	.word	0x1
	.byte	0x62
	.long	.LVL39
	.long	.LVL41
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST12:
	.long	.LVL44
	.long	.LVL47
	.word	0x1
	.byte	0x68
	.long	.LVL47
	.long	.LVL48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL48
	.long	.LVL52
	.word	0x1
	.byte	0x68
	.long	.LVL52
	.long	.LFE31
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL45
	.long	.LVL51
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST14:
	.long	.LVL45
	.long	.LVL46
	.word	0x1
	.byte	0x62
	.long	.LVL48
	.long	.LVL51
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST15:
	.long	.LFB32
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI0
	.long	.LFE32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST16:
	.long	.LVL53
	.long	.LVL54-1
	.word	0x1
	.byte	0x68
	.long	.LVL54-1
	.long	.LVL65
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL65
	.long	.LVL66
	.word	0x1
	.byte	0x68
	.long	.LVL66
	.long	.LFE32
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL53
	.long	.LVL54-1
	.word	0x1
	.byte	0x66
	.long	.LVL54-1
	.long	.LVL65
	.word	0x1
	.byte	0x6c
	.long	.LVL65
	.long	.LVL66
	.word	0x1
	.byte	0x66
	.long	.LVL66
	.long	.LFE32
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL55
	.long	.LVL57
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST19:
	.long	.LVL56
	.long	.LVL61
	.word	0x1
	.byte	0x62
	.long	.LVL63
	.long	.LVL64
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST20:
	.long	.LVL58
	.long	.LVL60
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST21:
	.long	.LVL59
	.long	.LVL62
	.word	0x1
	.byte	0x64
	.long	.LVL63
	.long	.LVL64
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST22:
	.long	.LFB33
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
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6
	.long	.LFE33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST23:
	.long	.LVL67
	.long	.LVL69
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL69
	.long	.LVL75
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL75
	.long	.LVL76
	.word	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.long	.LVL76
	.long	.LVL77
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL77
	.long	.LVL82
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST24:
	.long	.LVL68
	.long	.LVL69
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL69
	.long	.LVL81
	.word	0x1
	.byte	0x60
	.long	.LVL81
	.long	.LFE33
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST25:
	.long	.LVL68
	.long	.LVL69
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL69
	.long	.LVL79
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST26:
	.long	.LVL68
	.long	.LVL69
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL69
	.long	.LVL80
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST27:
	.long	.LFB34
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7
	.long	.LFE34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST28:
	.long	.LVL83
	.long	.LVL84-1
	.word	0x1
	.byte	0x68
	.long	.LVL84-1
	.long	.LFE34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL83
	.long	.LVL84-1
	.word	0x1
	.byte	0x66
	.long	.LVL84-1
	.long	.LVL94
	.word	0x1
	.byte	0x6c
	.long	.LVL94
	.long	.LFE34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL85
	.long	.LVL87
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST31:
	.long	.LVL86
	.long	.LVL89
	.word	0x1
	.byte	0x6e
	.long	.LVL91
	.long	.LVL92
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST32:
	.long	.LVL88
	.long	.LVL90
	.word	0x1
	.byte	0x69
	.long	.LVL91
	.long	.LVL93
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST33:
	.long	.LFB35
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI16
	.long	.LFE35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST34:
	.long	.LVL95
	.long	.LVL98
	.word	0x1
	.byte	0x68
	.long	.LVL98
	.long	.LVL112
	.word	0x1
	.byte	0x5e
	.long	.LVL112
	.long	.LVL114
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL114
	.long	.LVL115
	.word	0x1
	.byte	0x68
	.long	.LVL115
	.long	.LFE35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL96
	.long	.LVL100
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL100
	.long	.LVL114
	.word	0x1
	.byte	0x60
	.long	.LVL114
	.long	.LVL115
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL115
	.long	.LVL116
	.word	0x1
	.byte	0x60
	.long	.LVL116
	.long	.LFE35
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST36:
	.long	.LVL102
	.long	.LVL110
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST37:
	.long	.LVL97
	.long	.LVL100
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL100
	.long	.LVL114
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST38:
	.long	.LVL99
	.long	.LVL101
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL101
	.long	.LVL110
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL110
	.long	.LVL111
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST39:
	.long	.LVL99
	.long	.LVL100
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL100
	.long	.LVL114
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST40:
	.long	.LVL102
	.long	.LVL103
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL103
	.long	.LVL110
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST41:
	.long	.LFB36
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI17
	.long	.LFE36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST42:
	.long	.LVL117
	.long	.LVL118
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL118
	.long	.LVL121
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST43:
	.long	.LFB37
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI21
	.long	.LFE37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST44:
	.long	.LVL122
	.long	.LVL124
	.word	0x1
	.byte	0x68
	.long	.LVL124
	.long	.LVL125
	.word	0x1
	.byte	0x62
	.long	.LVL125
	.long	.LVL130
	.word	0x1
	.byte	0x6c
	.long	.LVL130
	.long	.LVL131
	.word	0x1
	.byte	0x68
	.long	.LVL131
	.long	.LVL133
	.word	0x1
	.byte	0x6c
	.long	.LVL133
	.long	.LFE37
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL122
	.long	.LVL128-1
	.word	0x1
	.byte	0x66
	.long	.LVL128-1
	.long	.LVL136
	.word	0x1
	.byte	0x60
	.long	.LVL136
	.long	.LFE37
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL123
	.long	.LVL129
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL129
	.long	.LVL130
	.word	0x1
	.byte	0x61
	.long	.LVL130
	.long	.LVL131
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL131
	.long	.LVL135
	.word	0x1
	.byte	0x61
	.long	.LVL135
	.long	.LFE37
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST47:
	.long	.LVL126
	.long	.LVL127
	.word	0x9
	.byte	0x88
	.sleb128 0
	.byte	0x3
	.long	programMap
	.byte	0x22
	.byte	0x9f
	.long	.LVL127
	.long	.LVL128-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST48:
	.long	.LVL138
	.long	.LVL141-1
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
	.long	.LVL137
	.long	.LVL138
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	.LVL138
	.long	.LVL141-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST50:
	.long	.LVL143
	.long	.LVL144
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL144
	.long	.LVL146-1
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST51:
	.long	.LVL148
	.long	.LVL149
	.word	0x1
	.byte	0x68
	.long	.LVL149
	.long	.LVL150
	.word	0x1
	.byte	0x6e
	.long	.LVL150
	.long	.LFE41
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST52:
	.long	.LVL151
	.long	.LVL152
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL152
	.long	.LFE42
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST53:
	.long	.LVL152
	.long	.LVL158
	.word	0x1
	.byte	0x65
	.long	.LVL159
	.long	.LVL160
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST54:
	.long	.LVL152
	.long	.LVL158
	.word	0x1
	.byte	0x66
	.long	.LVL159
	.long	.LVL160
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST55:
	.long	.LVL152
	.long	.LVL153
	.word	0x1
	.byte	0x64
	.long	.LVL153
	.long	.LVL154
	.word	0x1
	.byte	0x62
	.long	.LVL154
	.long	.LVL158
	.word	0x1
	.byte	0x64
	.long	.LVL159
	.long	.LVL160
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST56:
	.long	.LVL161
	.long	.LVL162
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL162
	.long	.LVL167-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST57:
	.long	.LVL162
	.long	.LVL164
	.word	0x1
	.byte	0x62
	.long	.LVL165
	.long	.LVL166
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST58:
	.long	.LVL170
	.long	.LVL172
	.word	0x1
	.byte	0x68
	.long	.LVL172
	.long	.LFE44
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST59:
	.long	.LVL170
	.long	.LVL173
	.word	0x1
	.byte	0x66
	.long	.LVL173
	.long	.LVL175
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL175
	.long	.LFE44
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST60:
	.long	.LVL171
	.long	.LVL178
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST61:
	.long	.LVL171
	.long	.LVL172
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL172
	.long	.LVL174
	.word	0x1
	.byte	0x68
	.long	.LVL175
	.long	.LVL178
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST62:
	.long	.LVL179
	.long	.LVL182
	.word	0x1
	.byte	0x68
	.long	.LVL182
	.long	.LVL183
	.word	0x1
	.byte	0x6a
	.long	.LVL183
	.long	.LVL188
	.word	0x1
	.byte	0x68
	.long	.LVL188
	.long	.LVL189-1
	.word	0x1
	.byte	0x64
	.long	.LVL189-1
	.long	.LFE45
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST63:
	.long	.LVL180
	.long	.LVL189-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST64:
	.long	.LVL179
	.long	.LVL180
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL180
	.long	.LVL189-1
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST65:
	.long	.LVL180
	.long	.LVL181
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL181
	.long	.LVL187
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST66:
	.long	.LFB46
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI22
	.long	.LFE46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST67:
	.long	.LVL190
	.long	.LVL191-1
	.word	0x1
	.byte	0x68
	.long	.LVL191-1
	.long	.LFE46
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST68:
	.long	.LVL190
	.long	.LVL191-1
	.word	0x1
	.byte	0x66
	.long	.LVL191-1
	.long	.LFE46
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST69:
	.long	.LVL190
	.long	.LVL191-1
	.word	0x1
	.byte	0x64
	.long	.LVL191-1
	.long	.LVL200
	.word	0x1
	.byte	0x6c
	.long	.LVL200
	.long	.LFE46
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST70:
	.long	.LVL193
	.long	.LVL195
	.word	0x1
	.byte	0x6e
	.long	.LVL197
	.long	.LVL198
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST71:
	.long	.LVL194
	.long	.LVL196
	.word	0x1
	.byte	0x69
	.long	.LVL197
	.long	.LVL199
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST72:
	.long	.LFB23
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI29
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI30
	.long	.LFE23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST73:
	.long	.LVL201
	.long	.LVL203
	.word	0x1
	.byte	0x68
	.long	.LVL203
	.long	.LVL213
	.word	0x1
	.byte	0x5c
	.long	.LVL213
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST74:
	.long	.LVL202
	.long	.LVL203
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL203
	.long	.LVL212
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST75:
	.long	.LVL204
	.long	.LVL206
	.word	0x1
	.byte	0x66
	.long	.LVL206
	.long	.LVL209
	.word	0x1
	.byte	0x5e
	.long	.LVL209
	.long	.LVL210
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST76:
	.long	.LVL205
	.long	.LVL210
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST77:
	.long	.LFB24
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
	.long	.LFE24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST78:
	.long	.LVL214
	.long	.LVL215
	.word	0x1
	.byte	0x68
	.long	.LVL215
	.long	.LVL219
	.word	0x1
	.byte	0x60
	.long	.LVL219
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST79:
	.long	.LVL216
	.long	.LVL219
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST80:
	.long	.LFB25
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI35
	.long	.LFE25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST81:
	.long	.LVL220
	.long	.LVL221
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL221
	.long	.LVL224
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST82:
	.long	.LFB40
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI36
	.long	.LCFI37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI37
	.long	.LCFI38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI38
	.long	.LCFI39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI39
	.long	.LFE40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST83:
	.long	.LVL226
	.long	.LVL227
	.word	0x1
	.byte	0x68
	.long	.LVL227
	.long	.LVL229
	.word	0x1
	.byte	0x6d
	.long	.LVL229
	.long	.LVL234
	.word	0x1
	.byte	0x64
	.long	.LVL234
	.long	.LVL238
	.word	0x1
	.byte	0x6d
	.long	.LVL238
	.long	.LFE40
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST84:
	.long	.LVL226
	.long	.LVL228
	.word	0x1
	.byte	0x66
	.long	.LVL228
	.long	.LVL241
	.word	0x1
	.byte	0x60
	.long	.LVL241
	.long	.LFE40
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST85:
	.long	.LVL226
	.long	.LVL228
	.word	0x1
	.byte	0x64
	.long	.LVL228
	.long	.LVL240
	.word	0x1
	.byte	0x61
	.long	.LVL240
	.long	.LFE40
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST86:
	.long	.LVL227
	.long	.LVL228
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL228
	.long	.LVL232
	.word	0x1
	.byte	0x69
	.long	.LVL235
	.long	.LVL236
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL236
	.long	.LFE40
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST87:
	.long	.LVL227
	.long	.LVL228
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL228
	.long	.LVL229
	.word	0x1
	.byte	0x6c
	.long	.LVL229
	.long	.LVL235-1
	.word	0x1
	.byte	0x62
	.long	.LVL235-1
	.long	.LVL239
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST88:
	.long	.LVL230
	.long	.LVL233
	.word	0x1
	.byte	0x66
	.long	.LVL233
	.long	.LVL235-1
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST89:
	.long	.LVL231
	.long	.LVL235-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST90:
	.long	.LVL233
	.long	.LVL235-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST91:
	.long	.LVL242
	.long	.LVL243
	.word	0x1
	.byte	0x68
	.long	.LVL243
	.long	.LVL251
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL251
	.long	.LVL252-1
	.word	0x1
	.byte	0x68
	.long	.LVL252-1
	.long	.LVL253
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL253
	.long	.LVL254
	.word	0x1
	.byte	0x68
	.long	.LVL254
	.long	.LVL255
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL255
	.long	.LVL256
	.word	0x1
	.byte	0x68
	.long	.LVL256
	.long	.LVL257
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL257
	.long	.LVL258
	.word	0x1
	.byte	0x68
	.long	.LVL258
	.long	.LVL259
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL259
	.long	.LVL260
	.word	0x1
	.byte	0x68
	.long	.LVL260
	.long	.LVL261
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL261
	.long	.LVL262
	.word	0x1
	.byte	0x68
	.long	.LVL262
	.long	.LVL263
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL263
	.long	.LVL264
	.word	0x1
	.byte	0x68
	.long	.LVL264
	.long	.LVL265
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL265
	.long	.LVL266
	.word	0x1
	.byte	0x68
	.long	.LVL266
	.long	.LFE28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST92:
	.long	.LVL244
	.long	.LVL250
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST93:
	.long	.LVL245
	.long	.LVL246
	.word	0x1
	.byte	0x68
	.long	.LVL247
	.long	.LVL248
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL248
	.long	.LVL251
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST94:
	.long	.LVL249
	.long	.LVL250
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+4148
	.sleb128 0
	.long	0
	.long	0
.LLST95:
	.long	.LVL267
	.long	.LVL269-1
	.word	0x1
	.byte	0x68
	.long	.LVL270
	.long	.LVL272-1
	.word	0x1
	.byte	0x68
	.long	.LVL273
	.long	.LVL274-1
	.word	0x1
	.byte	0x68
	.long	.LVL275
	.long	.LVL276
	.word	0x1
	.byte	0x68
	.long	.LVL276
	.long	.LVL277-1
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
.LLST96:
	.long	.LVL268
	.long	.LVL270
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL271
	.long	.LVL272-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST97:
	.long	.LFB47
	.long	.LCFI40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI40
	.long	.LCFI41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI41
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI42
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI43
	.long	.LCFI44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI44
	.long	.LCFI45
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI45
	.long	.LCFI46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI46
	.long	.LCFI47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI47
	.long	.LFE47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST98:
	.long	.LVL278
	.long	.LVL283
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL310
	.long	.LFE47
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST99:
	.long	.LVL279
	.long	.LVL316
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST100:
	.long	.LVL280
	.long	.LVL317
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST101:
	.long	.LVL281
	.long	.LVL282
	.word	0x1
	.byte	0x68
	.long	.LVL282
	.long	.LVL313
	.word	0x1
	.byte	0x6d
	.long	.LVL313
	.long	.LVL314
	.word	0x1
	.byte	0x68
	.long	.LVL314
	.long	.LVL315
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST102:
	.long	.LVL289
	.long	.LVL291
	.word	0x6
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST103:
	.long	.LVL282
	.long	.LVL283
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL290
	.long	.LVL292
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL296
	.long	.LVL297
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL301
	.long	.LVL302
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL306
	.long	.LVL307
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL310
	.long	.LVL313
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL314
	.long	.LVL318
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST104:
	.long	.LVL282
	.long	.LVL313
	.word	0x1
	.byte	0x6c
	.long	.LVL314
	.long	.LVL315
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST105:
	.long	.LVL291
	.long	.LVL310
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST106:
	.long	.LFB48
	.long	.LCFI48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI48
	.long	.LFE48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST107:
	.long	.LVL319
	.long	.LVL320
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL320
	.long	.LVL327
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST108:
	.long	.LVL321
	.long	.LVL322
	.word	0x1
	.byte	0x68
	.long	.LVL322
	.long	.LVL323-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST109:
	.long	.LVL329
	.long	.LVL335
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST110:
	.long	.LVL330
	.long	.LVL331
	.word	0x1
	.byte	0x68
	.long	.LVL332
	.long	.LVL333
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL333
	.long	.LVL336-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST111:
	.long	.LVL334
	.long	.LVL335
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+5118
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x11c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB18
	.long	.LFE18-.LFB18
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
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	.LFB39
	.long	.LFE39-.LFB39
	.long	.LFB41
	.long	.LFE41-.LFB41
	.long	.LFB42
	.long	.LFE42-.LFB42
	.long	.LFB43
	.long	.LFE43-.LFB43
	.long	.LFB44
	.long	.LFE44-.LFB44
	.long	.LFB45
	.long	.LFE45-.LFB45
	.long	.LFB46
	.long	.LFE46-.LFB46
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB40
	.long	.LFE40-.LFB40
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB47
	.long	.LFE47-.LFB47
	.long	.LFB48
	.long	.LFE48-.LFB48
	.long	.LFB49
	.long	.LFE49-.LFB49
	.long	.LFB27
	.long	.LFE27-.LFB27
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
	.long	.LBB31
	.long	.LBE31
	.long	.LBB35
	.long	.LBE35
	.long	0
	.long	0
	.long	.LBB32
	.long	.LBE32
	.long	.LBB34
	.long	.LBE34
	.long	0
	.long	0
	.long	.LBB38
	.long	.LBE38
	.long	.LBB39
	.long	.LBE39
	.long	0
	.long	0
	.long	.LBB42
	.long	.LBE42
	.long	.LBB45
	.long	.LBE45
	.long	0
	.long	0
	.long	.LBB47
	.long	.LBE47
	.long	.LBB48
	.long	.LBE48
	.long	0
	.long	0
	.long	.LBB56
	.long	.LBE56
	.long	.LBB59
	.long	.LBE59
	.long	0
	.long	0
	.long	.LBB66
	.long	.LBE66
	.long	.LBB68
	.long	.LBE68
	.long	0
	.long	0
	.long	.LFB18
	.long	.LFE18
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
	.long	.LFB36
	.long	.LFE36
	.long	.LFB37
	.long	.LFE37
	.long	.LFB38
	.long	.LFE38
	.long	.LFB39
	.long	.LFE39
	.long	.LFB41
	.long	.LFE41
	.long	.LFB42
	.long	.LFE42
	.long	.LFB43
	.long	.LFE43
	.long	.LFB44
	.long	.LFE44
	.long	.LFB45
	.long	.LFE45
	.long	.LFB46
	.long	.LFE46
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB40
	.long	.LFE40
	.long	.LFB28
	.long	.LFE28
	.long	.LFB47
	.long	.LFE47
	.long	.LFB48
	.long	.LFE48
	.long	.LFB49
	.long	.LFE49
	.long	.LFB27
	.long	.LFE27
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF78:
	.string	"bitNr"
.LASF66:
	.string	"count"
.LASF130:
	.string	"swTimer"
.LASF39:
	.string	"bitStart"
.LASF85:
	.string	"program_toRegister"
.LASF31:
	.string	"ChannelNote_t"
.LASF140:
	.string	"midiRxActivceSensing"
.LASF168:
	.string	"__iCliRetVal"
.LASF155:
	.string	"init_Pipe"
.LASF125:
	.string	"chanNote"
.LASF73:
	.string	"pRange"
.LASF98:
	.string	"rangeEnd"
.LASF142:
	.string	"midiLastOutNote"
.LASF94:
	.string	"pMidiInMap"
.LASF41:
	.string	"ManualNoteRange_t"
.LASF123:
	.string	"shiftBit"
.LASF115:
	.string	"midiIn_Process"
.LASF9:
	.string	"long long unsigned int"
.LASF129:
	.string	"midi_CheckTxActiveSense"
.LASF131:
	.string	"pipe"
.LASF139:
	.string	"programMap"
.LASF15:
	.string	"message8"
.LASF154:
	.string	"midiDataByteExpected"
.LASF136:
	.string	"midiOutMap"
.LASF141:
	.string	"midi_Setting"
.LASF57:
	.string	"pCoupler"
.LASF104:
	.string	"manual_NoteOnOff"
.LASF160:
	.string	"eeprom_ReadMidiInMap"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF143:
	.string	"midiLastOutManual"
.LASF70:
	.string	"regNr"
.LASF86:
	.string	"program"
.LASF33:
	.string	"ManualNote_t"
.LASF109:
	.string	"midi_AllManualsOff"
.LASF165:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF121:
	.string	"pipeMessage"
.LASF95:
	.string	"init_Manual2Midi"
.LASF151:
	.string	"midiLastCommand"
.LASF43:
	.string	"noteRange"
.LASF153:
	.string	"midiDataByteCount"
.LASF6:
	.string	"long int"
.LASF108:
	.string	"midi_ManualOff"
.LASF144:
	.string	"midiLastInNote"
.LASF93:
	.string	"init_Midi2Manual"
.LASF119:
	.string	"noteOnOff"
.LASF103:
	.string	"moduleBit_to_manualNote"
.LASF64:
	.string	"midiAllReset"
.LASF135:
	.string	"midiInMap"
.LASF4:
	.string	"uint16_t"
.LASF99:
	.string	"rangeStart"
.LASF149:
	.string	"lcdData"
.LASF42:
	.string	"midiNote"
.LASF38:
	.string	"endNote"
.LASF46:
	.string	"MidiOutMap_t"
.LASF80:
	.string	"mask"
.LASF110:
	.string	"midi_CheckRxActiveSense"
.LASF72:
	.string	"regNr_to_moduleBit"
.LASF25:
	.string	"pipeInM4"
.LASF61:
	.string	"cplNr"
.LASF81:
	.string	"read_allRegister"
.LASF24:
	.string	"pipeInM8"
.LASF106:
	.string	"midiAllNotesOff"
.LASF40:
	.string	"ManualMap_t"
.LASF59:
	.string	"init_Midi"
.LASF5:
	.string	"unsigned int"
.LASF92:
	.string	"SaveEEProm"
.LASF159:
	.string	"eeprom_UpdateProg"
.LASF62:
	.string	"getAllCouplers"
.LASF32:
	.string	"manual"
.LASF122:
	.string	"command"
.LASF7:
	.string	"long unsigned int"
.LASF161:
	.string	"eeprom_ReadMidiOutMap"
.LASF134:
	.string	"ManualNoteRange"
.LASF152:
	.string	"midiDataByte"
.LASF50:
	.string	"registers"
.LASF126:
	.string	"midiSendAllNotesOff"
.LASF117:
	.string	"sreg_save"
.LASF116:
	.string	"midiByte"
.LASF111:
	.string	"midiNote_to_Manual"
.LASF118:
	.string	"__ToDo"
.LASF148:
	.string	"cplInfo"
.LASF35:
	.string	"moduleBit"
.LASF37:
	.string	"startNote"
.LASF84:
	.string	"onOff"
.LASF16:
	.string	"PipeMessage_t"
.LASF45:
	.string	"MidiInMap_t"
.LASF52:
	.string	"ProgramInfo_t"
.LASF90:
	.string	"midi_resetRegisters"
.LASF19:
	.string	"Timer"
.LASF67:
	.string	"regSec"
.LASF10:
	.string	"sizetype"
.LASF96:
	.string	"Manual_to_MidiNote"
.LASF101:
	.string	"init_Manual2Module"
.LASF88:
	.string	"regBytePtr"
.LASF150:
	.string	"midiEEPromLoadError"
.LASF77:
	.string	"modBit"
.LASF28:
	.string	"Pipe_t"
.LASF44:
	.string	"manualNote"
.LASF97:
	.string	"Midi_updateManualRange"
.LASF26:
	.string	"pipeIn"
.LASF138:
	.string	"registerCount"
.LASF71:
	.string	"set_Coupler"
.LASF20:
	.string	"pipeOutM4"
.LASF87:
	.string	"regBits"
.LASF55:
	.string	"MidiSetting_t"
.LASF11:
	.string	"wordval"
.LASF63:
	.string	"setAllCouplers"
.LASF27:
	.string	"pipeInStat"
.LASF18:
	.string	"prescaler"
.LASF34:
	.string	"error"
.LASF51:
	.string	"couplers"
.LASF128:
	.string	"midi_SendActiveSense"
.LASF69:
	.string	"progNr"
.LASF124:
	.string	"moduleBits"
.LASF158:
	.string	"eeprom_ReadProg"
.LASF3:
	.string	"unsigned char"
.LASF58:
	.string	"midi_CouplerReset"
.LASF65:
	.string	"registers_CalcCount"
.LASF157:
	.string	"log_putError"
.LASF17:
	.string	"counter"
.LASF162:
	.string	"eeprom_ReadManualMap"
.LASF49:
	.string	"RegisterMap_t"
.LASF146:
	.string	"midiLastInManual"
.LASF29:
	.string	"channel"
.LASF156:
	.string	"eeprom_ReadReg"
.LASF147:
	.string	"midi_Couplers"
.LASF13:
	.string	"Word_t"
.LASF132:
	.string	"pipeProcessing"
.LASF145:
	.string	"midiLastInChannel"
.LASF12:
	.string	"byteval"
.LASF163:
	.string	"log_putWarning"
.LASF127:
	.string	"chan"
.LASF56:
	.string	"char"
.LASF30:
	.string	"note"
.LASF75:
	.string	"mode"
.LASF137:
	.string	"registerMap"
.LASF89:
	.string	"byteNr"
.LASF47:
	.string	"startReg"
.LASF164:
	.string	"serial1MIDISend"
.LASF107:
	.string	"splitRange"
.LASF54:
	.string	"VelZero4Off"
.LASF169:
	.string	"__iRestore"
.LASF0:
	.string	"int8_t"
.LASF74:
	.string	"read_Register"
.LASF36:
	.string	"ModulBitError_t"
.LASF112:
	.string	"found"
.LASF83:
	.string	"register_onOff"
.LASF113:
	.string	"noteBase0"
.LASF102:
	.string	"manualNote_to_moduleBit"
.LASF114:
	.string	"manNote"
.LASF48:
	.string	"endReg"
.LASF82:
	.string	"resultPtr"
.LASF14:
	.string	"Message16"
.LASF167:
	.string	"C:\\\\Users\\\\Anwender\\\\Documents\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF1:
	.string	"uint8_t"
.LASF120:
	.string	"midiKeyPress_Process"
.LASF76:
	.string	"modBitComplette"
.LASF23:
	.string	"pipeInM12"
.LASF22:
	.string	"pipeInM16"
.LASF133:
	.string	"manualMap"
.LASF105:
	.string	"moduleInfo"
.LASF68:
	.string	"init_Registers"
.LASF100:
	.string	"range"
.LASF53:
	.string	"TxActivceSense"
.LASF21:
	.string	"pipeOut"
.LASF60:
	.string	"result"
.LASF166:
	.string	".././Midi.c"
.LASF91:
	.string	"register_toProgram"
.LASF79:
	.string	"modulNr"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.1_1750) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
