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
	.loc 1 64 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL0:
.LBB13:
	.loc 1 67 0
	ldi r24,0
.LBE13:
	.loc 1 66 0
	ldi r30,lo8(midi_Couplers)
	ldi r31,hi8(midi_Couplers)
.LBB14:
	.loc 1 67 0
	rjmp .L2
.LVL1:
.L3:
	.loc 1 68 0 discriminator 3
	st Z,__zero_reg__
	.loc 1 67 0 discriminator 3
	subi r24,lo8(-(1))
.LVL2:
	.loc 1 68 0 discriminator 3
	adiw r30,1
.LVL3:
.L2:
	.loc 1 67 0 discriminator 1
	cpi r24,lo8(12)
	brlo .L3
/* epilogue start */
.LBE14:
	.loc 1 70 0
	ret
	.cfi_endproc
.LFE18:
	.size	midi_CouplerReset, .-midi_CouplerReset
	.section	.text.init_Midi,"ax",@progbits
.global	init_Midi
	.type	init_Midi, @function
init_Midi:
.LFB17:
	.loc 1 60 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 61 0
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
	.loc 1 74 0
	.cfi_startproc
.LVL5:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 76 0
	cpi r24,lo8(12)
	brsh .L9
	.loc 1 77 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ldi r25,lo8(-1)
	st Z,r25
	.loc 1 79 0
	cpi r24,lo8(6)
	brlo .L7
	.loc 1 81 0
	subi r24,lo8(-(-6))
.LVL6:
	rjmp .L8
.L7:
	.loc 1 84 0
	subi r24,lo8(-(6))
.LVL7:
.L8:
	.loc 1 86 0
	mov r30,r24
	ldi r31,0
	movw r26,r30
	subi r26,lo8(-(midi_Couplers))
	sbci r27,hi8(-(midi_Couplers))
	ld r24,X
.LVL8:
	tst r24
	breq .L6
	.loc 1 88 0
	movw r26,r30
	subi r26,lo8(-(midi_Couplers))
	sbci r27,hi8(-(midi_Couplers))
	st X,__zero_reg__
	.loc 1 89 0
	lsl r30
	rol r31
.LVL9:
	subi r30,lo8(-(cplInfo))
	sbci r31,hi8(-(cplInfo))
	lpm r24,Z
	ret
.LVL10:
.L9:
	.loc 1 92 0
	ldi r24,0
.LVL11:
.L6:
	.loc 1 93 0
	ret
	.cfi_endproc
.LFE19:
	.size	set_Coupler, .-set_Coupler
	.section	.text.getAllCouplers,"ax",@progbits
.global	getAllCouplers
	.type	getAllCouplers, @function
getAllCouplers:
.LFB20:
	.loc 1 95 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 97 0
	ldi r24,0
.LVL12:
	ldi r25,0
.LVL13:
	.loc 1 98 0
	ldi r20,lo8(11)
	rjmp .L12
.LVL14:
.L13:
	.loc 1 105 0
	mov r20,r18
.LVL15:
.L12:
	.loc 1 101 0
	mov r18,r24
.LVL16:
	mov r19,r25
	lsl r18
	rol r19
	mov r24,r18
.LVL17:
	mov r25,r19
	.loc 1 102 0
	mov r30,r20
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ld r21,Z
	cpi r21,lo8(-1)
	brne .L11
	.loc 1 103 0
	ori r24,lo8(1)
.L11:
	.loc 1 105 0
	ldi r18,lo8(-1)
	add r18,r20
.LVL18:
	cpse r20,__zero_reg__
	rjmp .L13
/* epilogue start */
	.loc 1 107 0
	ret
	.cfi_endproc
.LFE20:
	.size	getAllCouplers, .-getAllCouplers
	.section	.text.setAllCouplers,"ax",@progbits
.global	setAllCouplers
	.type	setAllCouplers, @function
setAllCouplers:
.LFB21:
	.loc 1 109 0
	.cfi_startproc
.LVL19:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 110 0
	ldi r20,0
.LVL20:
.L17:
	.loc 1 113 0
	sbrs r24,0
	rjmp .L15
	.loc 1 114 0
	mov r30,r20
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ldi r18,lo8(-1)
	st Z,r18
	rjmp .L16
.L15:
	.loc 1 116 0
	mov r30,r20
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	st Z,__zero_reg__
.L16:
	.loc 1 118 0
	mov r18,r24
	mov r19,r25
	lsr r19
	ror r18
	mov r24,r18
.LVL21:
	mov r25,r19
	.loc 1 119 0
	subi r20,lo8(-(1))
.LVL22:
	cpi r20,lo8(12)
	brlo .L17
/* epilogue start */
	.loc 1 120 0
	ret
	.cfi_endproc
.LFE21:
	.size	setAllCouplers, .-setAllCouplers
	.section	.text.midiAllReset,"ax",@progbits
.global	midiAllReset
	.type	midiAllReset, @function
midiAllReset:
.LFB22:
	.loc 1 138 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 139 0
	ldi r24,lo8(-128)
	sts pipeProcessing,r24
	.loc 1 140 0
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
.LFB31:
	.loc 1 379 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL24:
.LBB15:
	.loc 1 381 0
	ldi r18,0
.LBE15:
	.loc 1 380 0
	ldi r19,0
.LBB16:
	.loc 1 381 0
	rjmp .L20
.LVL25:
.L22:
	.loc 1 382 0
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
	.loc 1 382 0 is_stmt 0 discriminator 1
	cp r24,r19
	brlo .L21
	.loc 1 384 0 is_stmt 1
	ldi r19,lo8(1)
.LVL26:
	add r19,r24
.LVL27:
.L21:
	.loc 1 381 0 discriminator 2
	subi r18,lo8(-(1))
.LVL28:
.L20:
	.loc 1 381 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L22
.LBE16:
	.loc 1 387 0 is_stmt 1
	sts registerCount,r19
	ret
	.cfi_endproc
.LFE31:
	.size	registers_CalcCount, .-registers_CalcCount
	.section	.text.init_Registers,"ax",@progbits
.global	init_Registers
	.type	init_Registers, @function
init_Registers:
.LFB32:
	.loc 1 390 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 393 0
	ldi r24,lo8(-1)
	sts midi_RegisterChanged,r24
.LVL29:
.LBB17:
	.loc 1 395 0
	ldi r18,0
	rjmp .L24
.LVL30:
.L25:
	.loc 1 396 0 discriminator 3
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
	.loc 1 397 0 discriminator 3
	std Z+1,r24
	.loc 1 398 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 395 0 discriminator 3
	subi r18,lo8(-(1))
.LVL31:
.L24:
	.loc 1 395 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L25
.LBE17:
	.loc 1 400 0 is_stmt 1
	call eeprom_ReadReg
.LVL32:
	cpi r24,lo8(-1)
	brne .L26
	.loc 1 401 0
	sts registerCount,__zero_reg__
	.loc 1 402 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(5)
	ldi r24,lo8(1)
	call log_putError
.LVL33:
	rjmp .L27
.L26:
	.loc 1 404 0
	call registers_CalcCount
.LVL34:
.L27:
	.loc 1 407 0
	call eeprom_ReadProg
.LVL35:
	cpi r24,lo8(-1)
	brne .L23
	rjmp .L32
.LVL36:
.L30:
.LBB18:
.LBB19:
	.loc 1 411 0 discriminator 3
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
	.loc 1 410 0 discriminator 3
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
	.loc 1 410 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L30
.LBE20:
	.loc 1 413 0 is_stmt 1 discriminator 2
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
	.loc 1 409 0 discriminator 2
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
	.loc 1 409 0 is_stmt 0 discriminator 1
	cpi r19,lo8(64)
	brlo .L33
.LBE21:
	.loc 1 415 0 is_stmt 1
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(6)
	ldi r24,lo8(1)
	call log_putError
.LVL43:
.L23:
	ret
	.cfi_endproc
.LFE32:
	.size	init_Registers, .-init_Registers
	.section	.text.regNr_to_moduleBit,"ax",@progbits
.global	regNr_to_moduleBit
	.type	regNr_to_moduleBit, @function
regNr_to_moduleBit:
.LFB33:
	.loc 1 419 0
	.cfi_startproc
.LVL44:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 422 0
	lds r25,registerCount
	cp r24,r25
	brsh .L35
	.loc 1 422 0 is_stmt 0 discriminator 1
	cpi r24,lo8(64)
	brsh .L35
	ldi r18,lo8(8)
	ldi r30,lo8(registerMap)
	ldi r31,hi8(registerMap)
.L38:
.LVL45:
.LBB22:
	.loc 1 428 0 is_stmt 1
	ld r19,Z
	cp r24,r19
	brlo .L36
	.loc 1 428 0 is_stmt 0 discriminator 1
	ldd r25,Z+1
	cp r25,r24
	brlo .L36
	.loc 1 431 0 is_stmt 1
	ldd r18,Z+2
.LVL46:
	mov r25,r24
	sub r25,r19
	.loc 1 432 0
	ldi r24,0
.LVL47:
	add r25,r18
	ret
.LVL48:
.L36:
	.loc 1 434 0
	adiw r30,3
.LVL49:
	.loc 1 435 0
	subi r18,lo8(-(-1))
.LVL50:
	brne .L38
.LVL51:
.L35:
.LBE22:
	.loc 1 439 0
	ldi r24,lo8(-1)
.LVL52:
	ldi r25,0
	.loc 1 440 0
	ret
	.cfi_endproc
.LFE33:
	.size	regNr_to_moduleBit, .-regNr_to_moduleBit
	.section	.text.moduleBit_to_registerNr,"ax",@progbits
.global	moduleBit_to_registerNr
	.type	moduleBit_to_registerNr, @function
moduleBit_to_registerNr:
.LFB34:
	.loc 1 442 0
	.cfi_startproc
.LVL53:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB23:
	.loc 1 444 0
	ldi r25,0
	rjmp .L40
.LVL54:
.L43:
	.loc 1 445 0
	lds r20,registerMap+2
	cp r24,r20
	brlo .L41
	.loc 1 445 0 is_stmt 0 discriminator 1
	mov r22,r24
	ldi r23,0
	ldi r30,lo8(registerMap)
	ldi r31,hi8(registerMap)
	ldd r18,Z+1
	ldi r19,0
	add r18,r20
	adc r19,__zero_reg__
	ld r21,Z
	sub r18,r21
	sbc r19,__zero_reg__
	cp r18,r22
	cpc r19,r23
	brlt .L41
.LVL55:
	.loc 1 447 0 is_stmt 1
	sub r24,r20
	add r24,r21
	ret
.LVL56:
.L41:
	.loc 1 444 0 discriminator 2
	subi r25,lo8(-(1))
.LVL57:
.L40:
	.loc 1 444 0 is_stmt 0 discriminator 1
	cpi r25,lo8(8)
	brlo .L43
.LBE23:
	.loc 1 450 0 is_stmt 1
	ldi r24,lo8(-1)
.LVL58:
	.loc 1 451 0
	ret
	.cfi_endproc
.LFE34:
	.size	moduleBit_to_registerNr, .-moduleBit_to_registerNr
	.section	.text.read_Register,"ax",@progbits
.global	read_Register
	.type	read_Register, @function
read_Register:
.LFB35:
	.loc 1 453 0
	.cfi_startproc
.LVL59:
	push r28
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 456 0
	lds r25,registerCount
	cp r24,r25
	brlo .+2
	rjmp .L50
	mov r28,r22
.LBB24:
	.loc 1 458 0
	call regNr_to_moduleBit
.LVL60:
	.loc 1 459 0
	cpse r24,__zero_reg__
	rjmp .L46
.LVL61:
.LBB25:
	.loc 1 462 0
	mov r18,r25
	andi r18,lo8(31)
.LVL62:
	.loc 1 463 0
	swap r25
.LVL63:
	lsr r25
	andi r25,lo8(7)
.LVL64:
	.loc 1 464 0
	ldi r20,lo8(1)
	ldi r21,0
	rjmp 2f
	1:
	lsl r20
	rol r21
	2:
	dec r25
	brpl 1b
.LVL65:
	.loc 1 465 0
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
.LVL66:
	and r25,r20
	brne .L47
	.loc 1 465 0 is_stmt 0 discriminator 1
	sbrc r28,1
	rjmp .L51
.L47:
	.loc 1 468 0 is_stmt 1
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
.LVL67:
	movw r30,r18
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r18,Z+6
	and r20,r18
.LVL68:
	breq .L49
	.loc 1 468 0 is_stmt 0 discriminator 1
	sbrc r28,0
	rjmp .L52
.L49:
	.loc 1 472 0 is_stmt 1
	tst r25
	breq .L45
	.loc 1 472 0 is_stmt 0 discriminator 1
	tst r20
	breq .L45
	.loc 1 472 0 discriminator 2
	cpi r28,lo8(4)
	brne .L45
	rjmp .L53
.L46:
.LBE25:
.LBE24:
	.loc 1 480 0 is_stmt 1
	ldi r24,0
.LBB27:
	rjmp .L45
.LVL69:
.L51:
.LBB26:
	.loc 1 467 0
	ldi r24,lo8(1)
	rjmp .L45
.LVL70:
.L52:
	.loc 1 471 0
	ldi r24,lo8(1)
	rjmp .L45
.L53:
	.loc 1 473 0
	ldi r24,lo8(1)
	rjmp .L45
.LVL71:
.L50:
.LBE26:
.LBE27:
	.loc 1 480 0
	ldi r24,0
.LVL72:
.L45:
/* epilogue start */
	.loc 1 481 0
	pop r28
	ret
	.cfi_endproc
.LFE35:
	.size	read_Register, .-read_Register
	.section	.text.get_RegisterStatus,"ax",@progbits
.global	get_RegisterStatus
	.type	get_RegisterStatus, @function
get_RegisterStatus:
.LFB36:
	.loc 1 483 0
	.cfi_startproc
.LVL73:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 485 0
	lds r25,registerCount
	cp r24,r25
	brsh .L58
.LBB28:
	.loc 1 487 0
	call regNr_to_moduleBit
.LVL74:
	.loc 1 488 0
	cpse r24,__zero_reg__
	rjmp .L56
.LVL75:
.LBB29:
	.loc 1 491 0
	mov r18,r25
	andi r18,lo8(31)
.LVL76:
	.loc 1 492 0
	mov r19,r25
	swap r19
	lsr r19
	andi r19,lo8(7)
.LVL77:
	.loc 1 493 0
	ldi r24,lo8(1)
	ldi r25,0
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r19
	brpl 1b
.LVL78:
	.loc 1 494 0
	ldi r19,0
.LVL79:
	movw r30,r18
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r20,Z+1
	and r20,r24
	breq .L59
	.loc 1 497 0
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
.LVL80:
	movw r30,r18
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r25,Z+6
.LVL81:
	and r24,r25
.LVL82:
	breq .L55
	.loc 1 500 0
	ldi r24,lo8(1)
	ret
.L56:
.LBE29:
.LBE28:
	.loc 1 506 0
	ldi r24,0
.LBB31:
	ret
.LVL83:
.L59:
.LBB30:
	.loc 1 496 0
	ldi r24,lo8(2)
.LVL84:
	ret
.LVL85:
.L58:
.LBE30:
.LBE31:
	.loc 1 506 0
	ldi r24,0
.LVL86:
.L55:
	.loc 1 507 0
	ret
	.cfi_endproc
.LFE36:
	.size	get_RegisterStatus, .-get_RegisterStatus
	.section	.text.count_Registers,"ax",@progbits
.global	count_Registers
	.type	count_Registers, @function
count_Registers:
.LFB37:
	.loc 1 510 0
	.cfi_startproc
.LVL87:
	push r17
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	mov r17,r24
.LVL88:
.LBB32:
	.loc 1 512 0
	ldi r28,0
.LBE32:
	.loc 1 511 0
	ldi r29,0
.LBB33:
	.loc 1 512 0
	rjmp .L61
.LVL89:
.L63:
	.loc 1 513 0
	mov r22,r17
	mov r24,r28
	call read_Register
.LVL90:
	cpse r24,__zero_reg__
	.loc 1 514 0
	subi r29,lo8(-(1))
.LVL91:
.L62:
	.loc 1 512 0 discriminator 2
	subi r28,lo8(-(1))
.LVL92:
.L61:
	.loc 1 512 0 is_stmt 0 discriminator 1
	cpi r28,lo8(64)
	brlo .L63
.LBE33:
	.loc 1 518 0 is_stmt 1
	mov r24,r29
/* epilogue start */
	pop r29
.LVL93:
	pop r28
.LVL94:
	pop r17
.LVL95:
	ret
	.cfi_endproc
.LFE37:
	.size	count_Registers, .-count_Registers
	.section	.text.read_allRegister,"ax",@progbits
.global	read_allRegister
	.type	read_allRegister, @function
read_allRegister:
.LFB38:
	.loc 1 520 0
	.cfi_startproc
.LVL96:
	push r14
.LCFI4:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI5:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
.LCFI6:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
.LCFI7:
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
.LCFI9:
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r14,r24
.LVL97:
.LBB34:
	.loc 1 524 0
	ldi r28,0
.LBE34:
	.loc 1 523 0
	ldi r29,0
	.loc 1 521 0
	ldi r16,0
.LBB35:
	.loc 1 524 0
	rjmp .L65
.LVL98:
.L69:
	mov r17,r28
	andi r17,lo8(7)
	.loc 1 527 0
	brne .L66
	.loc 1 529 0
	ldi r29,0
.LVL99:
.L66:
	.loc 1 531 0
	lsr r29
.LVL100:
	.loc 1 532 0
	ldi r22,lo8(3)
	mov r24,r28
	call read_Register
.LVL101:
	tst r24
	breq .L67
	.loc 1 533 0
	ori r29,lo8(-128)
.LVL102:
	.loc 1 534 0
	subi r16,lo8(-(1))
.LVL103:
.L67:
	.loc 1 536 0
	cpi r17,lo8(7)
	brne .L68
	.loc 1 538 0
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L68
.LVL104:
	.loc 1 539 0
	movw r30,r14
	st Z,r29
	movw r24,r14
	adiw r24,1
.LVL105:
	movw r14,r24
.LVL106:
.L68:
	.loc 1 524 0 discriminator 2
	subi r28,lo8(-(1))
.LVL107:
.L65:
	.loc 1 524 0 is_stmt 0 discriminator 1
	cpi r28,lo8(64)
	brlo .L69
.LBE35:
	.loc 1 544 0 is_stmt 1
	mov r24,r16
/* epilogue start */
	pop r29
.LVL108:
	pop r28
.LVL109:
	pop r17
	pop r16
.LVL110:
	pop r15
	pop r14
.LVL111:
	ret
	.cfi_endproc
.LFE38:
	.size	read_allRegister, .-read_allRegister
	.section	.text.register_onOff,"ax",@progbits
.global	register_onOff
	.type	register_onOff, @function
register_onOff:
.LFB39:
	.loc 1 547 0
	.cfi_startproc
.LVL112:
	push r28
.LCFI10:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 549 0
	lds r25,registerCount
	cp r24,r25
	brsh .L71
	mov r28,r22
.LBB36:
	.loc 1 551 0
	call regNr_to_moduleBit
.LVL113:
	.loc 1 552 0
	cpse r24,__zero_reg__
	rjmp .L71
.LVL114:
.LBB37:
	.loc 1 555 0
	mov r24,r25
	andi r24,lo8(31)
.LVL115:
	.loc 1 556 0
	swap r25
.LVL116:
	lsr r25
	andi r25,lo8(7)
.LVL117:
	.loc 1 557 0
	sbrs r28,0
	rjmp .L74
	.loc 1 559 0
	ldi r22,lo8(1)
	ldi r23,0
	rjmp 2f
	1:
	lsl r22
	rol r23
	2:
	dec r25
	brpl 1b
	call pipe_on
.LVL118:
	rjmp .L71
.LVL119:
.L74:
	.loc 1 562 0
	ldi r22,lo8(1)
	ldi r23,0
	rjmp 2f
	1:
	lsl r22
	rol r23
	2:
	dec r25
	brpl 1b
	call pipe_off
.LVL120:
.L71:
/* epilogue start */
.LBE37:
.LBE36:
	.loc 1 567 0
	pop r28
	ret
	.cfi_endproc
.LFE39:
	.size	register_onOff, .-register_onOff
	.section	.text.midiInSysEx,"ax",@progbits
.global	midiInSysEx
	.type	midiInSysEx, @function
midiInSysEx:
.LFB28:
	.loc 1 226 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 228 0
	lds r24,midiLastCommand
	cpi r24,lo8(-16)
	brne .L75
	.loc 1 228 0 is_stmt 0 discriminator 1
	lds r24,midiDataByte
	cpi r24,lo8(125)
	brne .L75
	.loc 1 230 0 is_stmt 1
	lds r25,midiDataByte+1
	andi r25,lo8(-16)
	cpi r25,lo8(64)
	breq .L77
	.loc 1 230 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L75
.L77:
	.loc 1 233 0 is_stmt 1
	lds r24,midiDataByte+3
	cpi r24,lo8(-91)
	brne .L75
	.loc 1 233 0 is_stmt 0 discriminator 1
	lds r18,midiDataByteCount
	cpi r18,lo8(4)
	brne .L75
	.loc 1 236 0 is_stmt 1
	ldi r22,lo8(1)
	cpi r25,lo8(64)
	breq .L78
	ldi r22,0
.L78:
	call register_onOff
.LVL121:
.L75:
	ret
	.cfi_endproc
.LFE28:
	.size	midiInSysEx, .-midiInSysEx
	.section	.text.program_toRegister,"ax",@progbits
.global	program_toRegister
	.type	program_toRegister, @function
program_toRegister:
.LFB40:
	.loc 1 569 0
	.cfi_startproc
.LVL122:
	push r11
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI12:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI13:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI14:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI15:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI16:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI17:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI18:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI19:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
.LVL123:
	.loc 1 572 0
	cpi r24,lo8(64)
	brlo .+2
	rjmp .L87
.LVL124:
.LBB38:
	.loc 1 575 0
	mov r14,r24
	mov r15,__zero_reg__
	movw r30,r14
	lsl r30
	rol r31
	movw r24,r14
.LVL125:
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
.LVL126:
.LBB39:
	.loc 1 576 0
	mov r11,__zero_reg__
.LBE39:
	.loc 1 574 0
	ldi r17,0
.LBE38:
	.loc 1 571 0
	ldi r16,0
.LBB42:
.LBB41:
	.loc 1 576 0
	rjmp .L81
.LVL127:
.L86:
	.loc 1 579 0
	movw r12,r30
	ldi r24,-1
	sub r12,r24
	sbc r13,r24
.LVL128:
	ld r28,Z
.LVL129:
.LBB40:
	.loc 1 580 0
	ldi r29,0
	rjmp .L82
.LVL130:
.L85:
	.loc 1 581 0
	mov r24,r28
	andi r24,lo8(1)
	sbrc r28,0
	.loc 1 582 0
	subi r16,lo8(-(1))
.LVL131:
.L83:
	.loc 1 584 0 discriminator 2
	ldi r22,lo8(1)
	cpse r24,__zero_reg__
	rjmp .L84
	ldi r22,0
.L84:
	mov r24,r17
	call register_onOff
.LVL132:
	.loc 1 586 0 discriminator 2
	lsr r28
.LVL133:
	.loc 1 587 0 discriminator 2
	subi r17,lo8(-(1))
.LVL134:
	.loc 1 580 0 discriminator 2
	subi r29,lo8(-(1))
.LVL135:
.L82:
	.loc 1 580 0 is_stmt 0 discriminator 1
	cpi r29,lo8(8)
	brlo .L85
.LBE40:
	.loc 1 576 0 is_stmt 1 discriminator 2
	inc r11
.LVL136:
	.loc 1 579 0 discriminator 2
	movw r30,r12
.LVL137:
.L81:
	.loc 1 576 0 discriminator 1
	ldi r24,lo8(7)
	cp r24,r11
	brsh .L86
.LBE41:
	.loc 1 591 0
	movw r30,r14
.LVL138:
	lsl r30
	rol r31
	lsl r14
	rol r15
	lsl r14
	rol r15
	lsl r14
	rol r15
.LVL139:
	add r30,r14
	adc r31,r15
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
	.loc 1 592 0
	ldd r24,Z+8
	ldd r25,Z+9
	call setAllCouplers
.LVL140:
	rjmp .L80
.LVL141:
.L87:
.LBE42:
	.loc 1 571 0
	ldi r16,0
.LVL142:
.L80:
	.loc 1 595 0
	mov r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
.LVL143:
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	ret
	.cfi_endproc
.LFE40:
	.size	program_toRegister, .-program_toRegister
	.section	.text.midi_ProgramChange,"ax",@progbits
.global	midi_ProgramChange
	.type	midi_ProgramChange, @function
midi_ProgramChange:
.LFB41:
	.loc 1 597 0
	.cfi_startproc
.LVL144:
	push r28
.LCFI20:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI21:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r28,r24
	mov r29,r22
	.loc 1 598 0
	lds r24,midi_Setting+2
.LVL145:
	cpse r24,__zero_reg__
	rjmp .L94
.LBB43:
	rjmp .L90
.LVL146:
.L92:
.LBB44:
	.loc 1 603 0
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,__zero_reg__
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(midiInMap))
	sbci r31,hi8(-(midiInMap))
	ld r25,Z
	cpi r25,lo8(-1)
	brne .L95
	.loc 1 602 0 discriminator 2
	subi r24,lo8(-(1))
.LVL147:
	rjmp .L89
.LVL148:
.L94:
.LBE44:
.LBE43:
	ldi r24,0
.L89:
.LVL149:
.LBB47:
.LBB45:
	.loc 1 602 0 is_stmt 0 discriminator 1
	cpi r24,lo8(4)
	brlo .L92
.LBE45:
	.loc 1 600 0 is_stmt 1
	ldi r24,0
.LVL150:
.LBB46:
	rjmp .L91
.LVL151:
.L95:
	.loc 1 605 0
	ldi r24,lo8(-1)
.LVL152:
.L91:
.LBE46:
	.loc 1 609 0
	cpi r24,lo8(-1)
	brne .L90
	.loc 1 611 0
	mov r24,r29
.LVL153:
	call program_toRegister
.LVL154:
	.loc 1 612 0
	sts midiLastProgram,r29
.L90:
.LBE47:
	.loc 1 616 0
	lds r24,midiThrough
	cpse r28,r24
	rjmp .L88
	.loc 1 618 0
	lds r24,midiThrough+1
	cpi r24,lo8(-1)
	breq .L88
	.loc 1 620 0
	ori r24,lo8(-64)
	call serial1MIDISend
.LVL155:
	.loc 1 622 0
	mov r24,r29
	call serial1MIDISend
.LVL156:
.L88:
/* epilogue start */
	.loc 1 625 0
	pop r29
.LVL157:
	pop r28
.LVL158:
	ret
	.cfi_endproc
.LFE41:
	.size	midi_ProgramChange, .-midi_ProgramChange
	.section	.text.midi_resetRegisters,"ax",@progbits
.global	midi_resetRegisters
	.type	midi_resetRegisters, @function
midi_resetRegisters:
.LFB42:
	.loc 1 628 0
	.cfi_startproc
	push r28
.LCFI22:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL159:
.LBB48:
	.loc 1 629 0
	ldi r28,0
	rjmp .L97
.LVL160:
.L98:
	.loc 1 630 0 discriminator 3
	ldi r22,0
	mov r24,r28
	call register_onOff
.LVL161:
	.loc 1 629 0 discriminator 3
	subi r28,lo8(-(1))
.LVL162:
.L97:
	.loc 1 629 0 is_stmt 0 discriminator 1
	lds r24,registerCount
	cp r28,r24
	brlo .L98
/* epilogue start */
.LBE48:
	.loc 1 632 0 is_stmt 1
	pop r28
.LVL163:
	ret
	.cfi_endproc
.LFE42:
	.size	midi_resetRegisters, .-midi_resetRegisters
	.section	.text.register_toProgram,"ax",@progbits
.global	register_toProgram
	.type	register_toProgram, @function
register_toProgram:
.LFB43:
	.loc 1 634 0
	.cfi_startproc
.LVL164:
	push r16
.LCFI23:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI24:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI25:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI26:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r28,r24
	mov r16,r22
.LVL165:
	.loc 1 638 0
	cpi r24,lo8(64)
	brsh .L102
.LBB49:
	.loc 1 639 0
	mov r18,r24
	ldi r19,0
	movw r24,r18
.LVL166:
	lsl r24
	rol r25
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
.LVL167:
	add r24,r18
	adc r25,r19
.LVL168:
	.loc 1 640 0
	subi r24,lo8(-(programMap))
	sbci r25,hi8(-(programMap))
.LVL169:
	call read_allRegister
.LVL170:
	mov r17,r24
.LVL171:
	rjmp .L100
.LVL172:
.L102:
.LBE49:
	.loc 1 637 0
	ldi r17,0
.LVL173:
.L100:
	.loc 1 642 0
	ldi r29,0
	call getAllCouplers
.LVL174:
	movw r18,r28
	lsl r18
	rol r19
	lsl r28
	rol r29
	lsl r28
	rol r29
	lsl r28
	rol r29
.LVL175:
	add r28,r18
	adc r29,r19
	subi r28,lo8(-(programMap))
	sbci r29,hi8(-(programMap))
	std Y+9,r25
	std Y+8,r24
	.loc 1 643 0
	cpse r16,__zero_reg__
	.loc 1 644 0
	call eeprom_UpdateProg
.LVL176:
.L101:
	.loc 1 647 0
	mov r24,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
.LVL177:
	pop r16
.LVL178:
	ret
	.cfi_endproc
.LFE43:
	.size	register_toProgram, .-register_toProgram
	.section	.text.midi_RegisterMatchProgram,"ax",@progbits
.global	midi_RegisterMatchProgram
	.type	midi_RegisterMatchProgram, @function
midi_RegisterMatchProgram:
.LFB44:
	.loc 1 649 0
	.cfi_startproc
.LVL179:
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
.LVL180:
	.loc 1 653 0
	ldi r25,0
	movw r16,r24
	lsl r16
	rol r17
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
.LVL181:
	add r16,r24
	adc r17,r25
	subi r16,lo8(-(programMap))
	sbci r17,hi8(-(programMap))
.LVL182:
.LBB50:
	.loc 1 656 0
	ldi r28,0
.LBE50:
	.loc 1 654 0
	ldi r29,0
	.loc 1 652 0
	mov r15,__zero_reg__
.LBB51:
	.loc 1 656 0
	rjmp .L104
.LVL183:
.L109:
	.loc 1 657 0
	mov r25,r28
	andi r25,lo8(7)
	brne .L105
.LVL184:
	.loc 1 659 0
	movw r30,r16
	ld r29,Z
.LVL185:
	subi r16,-1
	sbci r17,-1
.LVL186:
.L105:
	.loc 1 661 0
	mov r24,r28
	call get_RegisterStatus
.LVL187:
	.loc 1 662 0
	sbrs r29,0
	rjmp .L106
	.loc 1 664 0
	cpi r24,lo8(2)
	breq .L108
	rjmp .L110
.L106:
	.loc 1 671 0
	cpi r24,lo8(2)
	breq .L111
	.loc 1 674 0
	cpi r24,lo8(1)
	brne .L108
	.loc 1 676 0
	inc r15
.LVL188:
.L108:
	.loc 1 679 0 discriminator 2
	lsr r29
.LVL189:
	.loc 1 656 0 discriminator 2
	subi r28,lo8(-(1))
.LVL190:
.L104:
	.loc 1 656 0 is_stmt 0 discriminator 1
	lds r25,registerCount
	cp r28,r25
	brlo .L109
.LBE51:
	.loc 1 681 0 is_stmt 1
	mov r24,r15
.LBB52:
	rjmp .L107
.LVL191:
.L110:
	.loc 1 666 0
	ldi r24,lo8(-1)
.LVL192:
	rjmp .L107
.LVL193:
.L111:
	.loc 1 673 0
	ldi r24,lo8(-1)
.LVL194:
.L107:
/* epilogue start */
.LBE52:
	.loc 1 682 0
	pop r29
.LVL195:
	pop r28
.LVL196:
	pop r17
	pop r16
.LVL197:
	pop r15
.LVL198:
	ret
	.cfi_endproc
.LFE44:
	.size	midi_RegisterMatchProgram, .-midi_RegisterMatchProgram
	.section	.text.midi_CountRegisterInProgram,"ax",@progbits
.global	midi_CountRegisterInProgram
	.type	midi_CountRegisterInProgram, @function
midi_CountRegisterInProgram:
.LFB45:
	.loc 1 684 0
	.cfi_startproc
.LVL199:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 687 0
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
.LVL200:
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
.LVL201:
.LBB53:
	.loc 1 689 0
	ldi r25,0
.LBE53:
	.loc 1 688 0
	ldi r18,0
	.loc 1 686 0
	ldi r24,0
.LBB54:
	.loc 1 689 0
	rjmp .L113
.LVL202:
.L116:
	.loc 1 690 0
	mov r19,r25
	andi r19,lo8(7)
	brne .L114
.LVL203:
	.loc 1 692 0
	ld r18,Z
.LVL204:
	adiw r30,1
.LVL205:
.L114:
	.loc 1 694 0
	sbrc r18,0
	.loc 1 695 0
	subi r24,lo8(-(1))
.LVL206:
.L115:
	.loc 1 697 0 discriminator 2
	lsr r18
.LVL207:
	.loc 1 689 0 discriminator 2
	subi r25,lo8(-(1))
.LVL208:
.L113:
	.loc 1 689 0 is_stmt 0 discriminator 1
	lds r19,registerCount
	cp r25,r19
	brlo .L116
/* epilogue start */
.LBE54:
	.loc 1 701 0 is_stmt 1
	ret
	.cfi_endproc
.LFE45:
	.size	midi_CountRegisterInProgram, .-midi_CountRegisterInProgram
	.section	.text.init_Midi2Manual,"ax",@progbits
.global	init_Midi2Manual
	.type	init_Midi2Manual, @function
init_Midi2Manual:
.LFB46:
	.loc 1 705 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL209:
.LBB55:
	.loc 1 709 0
	ldi r25,lo8(64)
.LBE55:
	.loc 1 707 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
.LBB56:
	.loc 1 709 0
	rjmp .L118
.LVL210:
.L119:
	.loc 1 711 0 discriminator 3
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 712 0 discriminator 3
	std Z+1,r24
	.loc 1 713 0 discriminator 3
	std Z+3,r24
	.loc 1 714 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 715 0 discriminator 3
	adiw r30,4
.LVL211:
	.loc 1 709 0 discriminator 3
	subi r25,lo8(-(-1))
.LVL212:
.L118:
	.loc 1 709 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L119
.LBE56:
	.loc 1 718 0 is_stmt 1
	call eeprom_ReadMidiInMap
.LVL213:
	cpi r24,lo8(-1)
	brne .L120
	.loc 1 719 0
	sts midiEEPromLoadError,r24
	.loc 1 720 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
	st Z,__zero_reg__
	.loc 1 721 0
	ldi r24,lo8(36)
	std Z+1,r24
	.loc 1 722 0
	std Z+3,r24
	.loc 1 723 0
	ldi r25,lo8(56)
	std Z+2,r25
	.loc 1 724 0
	ldi r18,lo8(1)
	std Z+16,r18
	.loc 1 725 0
	std Z+17,r24
	.loc 1 726 0
	std Z+19,r24
	.loc 1 727 0
	std Z+18,r25
	.loc 1 728 0
	ldi r18,lo8(2)
	std Z+32,r18
	.loc 1 729 0
	std Z+33,r24
	.loc 1 730 0
	std Z+35,r24
	.loc 1 731 0
	std Z+34,r25
	.loc 1 732 0
	ldi r25,lo8(3)
	std Z+48,r25
	.loc 1 733 0
	std Z+49,r24
	.loc 1 734 0
	std Z+51,r24
	.loc 1 735 0
	ldi r24,lo8(30)
	std Z+50,r24
	.loc 1 736 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL214:
.L120:
	.loc 1 738 0
	call eeprom_ReadMidiThrough
.LVL215:
	cpi r24,lo8(-1)
	brne .L117
	.loc 1 739 0
	ldi r30,lo8(midiThrough)
	ldi r31,hi8(midiThrough)
	st Z,r24
	.loc 1 740 0
	std Z+1,r24
	.loc 1 741 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL216:
.L117:
	ret
	.cfi_endproc
.LFE46:
	.size	init_Midi2Manual, .-init_Midi2Manual
	.section	.text.init_Manual2Midi,"ax",@progbits
.global	init_Manual2Midi
	.type	init_Manual2Midi, @function
init_Manual2Midi:
.LFB47:
	.loc 1 745 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL217:
.LBB57:
	.loc 1 747 0
	ldi r18,0
	rjmp .L123
.LVL218:
.L124:
	.loc 1 748 0 discriminator 3
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 749 0 discriminator 3
	std Z+1,r24
	.loc 1 747 0 discriminator 3
	subi r18,lo8(-(1))
.LVL219:
.L123:
	.loc 1 747 0 is_stmt 0 discriminator 1
	mov r24,r18
	ldi r25,0
	sbiw r24,0
	brne .L124
.LBE57:
	.loc 1 751 0 is_stmt 1
	call eeprom_ReadMidiOutMap
.LVL220:
	cpi r24,lo8(-1)
	brne .L122
	.loc 1 752 0
	sts midiEEPromLoadError,r24
	.loc 1 754 0
	ldi r30,lo8(midiOutMap)
	ldi r31,hi8(midiOutMap)
	st Z,__zero_reg__
	.loc 1 755 0
	ldi r25,lo8(1)
	std Z+2,r25
	.loc 1 756 0
	ldi r25,lo8(2)
	std Z+4,r25
	.loc 1 757 0
	ldi r25,lo8(3)
	std Z+6,r25
	.loc 1 758 0
	ldi r30,lo8(midi_Setting)
	ldi r31,hi8(midi_Setting)
	st Z,__zero_reg__
	.loc 1 759 0
	std Z+1,__zero_reg__
	.loc 1 760 0
	std Z+2,r24
	.loc 1 761 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(2)
	ldi r24,lo8(1)
	call log_putError
.LVL221:
.L122:
	ret
	.cfi_endproc
.LFE47:
	.size	init_Manual2Midi, .-init_Manual2Midi
	.section	.text.Manual_to_MidiNote,"ax",@progbits
.global	Manual_to_MidiNote
	.type	Manual_to_MidiNote, @function
Manual_to_MidiNote:
.LFB49:
	.loc 1 805 0
	.cfi_startproc
.LVL222:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	.loc 1 806 0
	ldi r24,lo8(-1)
.LVL223:
	ldi r25,lo8(-1)
	.loc 1 807 0
	cpi r30,lo8(4)
	brsh .L127
	.loc 1 808 0
	ldi r31,0
	lsl r30
	rol r31
.LVL224:
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r18,Z
	cpi r18,lo8(-1)
	breq .L127
	.loc 1 809 0
	mov r24,r18
	.loc 1 810 0
	mov r25,r22
.L127:
	.loc 1 815 0
	ret
	.cfi_endproc
.LFE49:
	.size	Manual_to_MidiNote, .-Manual_to_MidiNote
	.section	.text.Midi_updateManualRange,"ax",@progbits
.global	Midi_updateManualRange
	.type	Midi_updateManualRange, @function
Midi_updateManualRange:
.LFB50:
	.loc 1 819 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL225:
.LBB58:
	.loc 1 820 0
	ldi r23,0
	rjmp .L129
.LVL226:
.L135:
.LBB59:
.LBB60:
	.loc 1 824 0
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
	breq .L130
.LVL227:
	.loc 1 824 0 is_stmt 0 discriminator 1
	movw r30,r18
	lsl r30
	rol r31
	add r30,r18
	adc r31,r19
	movw r18,r24
.LVL228:
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
	breq .L130
	.loc 1 825 0 is_stmt 1
	cp r26,r22
	brsh .L131
	.loc 1 826 0
	mov r22,r26
.LVL229:
.L131:
	.loc 1 828 0
	cp r21,r18
	brsh .L130
	.loc 1 829 0
	mov r21,r18
.LVL230:
.L130:
	.loc 1 832 0
	tst r21
	breq .L132
	.loc 1 832 0 is_stmt 0 discriminator 1
	cpi r22,lo8(-1)
	brne .L133
.L132:
	.loc 1 833 0 is_stmt 1
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 834 0
	std Z+1,r24
	rjmp .L134
.L133:
	.loc 1 836 0
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	st Z,r22
	.loc 1 837 0
	std Z+1,r21
.L134:
	.loc 1 823 0 discriminator 2
	subi r20,lo8(-(1))
.LVL231:
	rjmp .L136
.LVL232:
.L139:
.LBE60:
.LBE59:
	ldi r20,0
	ldi r22,lo8(-1)
	ldi r21,0
.L136:
.LVL233:
.LBB62:
.LBB61:
	.loc 1 823 0 is_stmt 0 discriminator 1
	cpi r20,lo8(4)
	brsh .+2
	rjmp .L135
.LBE61:
.LBE62:
	.loc 1 820 0 is_stmt 1 discriminator 2
	subi r23,lo8(-(1))
.LVL234:
.L129:
	.loc 1 820 0 is_stmt 0 discriminator 1
	cpi r23,lo8(4)
	brlo .L139
/* epilogue start */
.LBE58:
	.loc 1 841 0 is_stmt 1
	ret
	.cfi_endproc
.LFE50:
	.size	Midi_updateManualRange, .-Midi_updateManualRange
	.section	.text.init_Manual2Module,"ax",@progbits
.global	init_Manual2Module
	.type	init_Manual2Module, @function
init_Manual2Module:
.LFB51:
	.loc 1 843 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL235:
.LBB63:
	.loc 1 844 0
	ldi r22,lo8(3)
	rjmp .L141
.LVL236:
.L142:
.LBB64:
	.loc 1 847 0 discriminator 3
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
	.loc 1 848 0 discriminator 3
	adiw r26,1
	st X,r19
	sbiw r26,1
	.loc 1 849 0 discriminator 3
	movw r30,r26
	std Z+2,__zero_reg__
	.loc 1 846 0 discriminator 3
	subi r18,lo8(-(-1))
.LVL237:
	rjmp .L143
.LVL238:
.L145:
.LBE64:
	ldi r18,lo8(3)
.L143:
.LVL239:
.LBB65:
	.loc 1 846 0 is_stmt 0 discriminator 1
	tst r18
	brge .L142
.LBE65:
	.loc 1 844 0 is_stmt 1 discriminator 2
	subi r22,lo8(-(-1))
.LVL240:
.L141:
	.loc 1 844 0 is_stmt 0 discriminator 1
	tst r22
	brge .L145
.LBE63:
	.loc 1 853 0 is_stmt 1
	call eeprom_ReadManualMap
.LVL241:
	cpi r24,lo8(-1)
	brne .L144
	.loc 1 855 0
	sts midiEEPromLoadError,r24
	.loc 1 856 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(3)
	ldi r24,lo8(1)
	call log_putError
.LVL242:
	.loc 1 858 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
	ldi r24,lo8(36)
	st Z,r24
	.loc 1 859 0
	ldi r19,lo8(67)
	std Z+1,r19
	.loc 1 860 0
	std Z+2,__zero_reg__
	.loc 1 861 0
	ldi r18,lo8(68)
	std Z+3,r18
	.loc 1 862 0
	ldi r25,lo8(91)
	std Z+4,r25
	.loc 1 863 0
	ldi r20,lo8(32)
	std Z+5,r20
	.loc 1 864 0
	std Z+12,r24
	.loc 1 865 0
	std Z+13,r19
	.loc 1 866 0
	ldi r20,lo8(64)
	std Z+14,r20
	.loc 1 867 0
	std Z+15,r18
	.loc 1 868 0
	std Z+16,r25
	.loc 1 869 0
	ldi r20,lo8(96)
	std Z+17,r20
	.loc 1 870 0
	std Z+24,r24
	.loc 1 871 0
	std Z+25,r19
	.loc 1 872 0
	ldi r19,lo8(-128)
	std Z+26,r19
	.loc 1 873 0
	std Z+27,r18
	.loc 1 874 0
	std Z+28,r25
	.loc 1 875 0
	ldi r25,lo8(-96)
	std Z+29,r25
	.loc 1 876 0
	std Z+36,r24
	.loc 1 877 0
	ldi r24,lo8(65)
	std Z+37,r24
	.loc 1 878 0
	ldi r24,lo8(-64)
	std Z+38,r24
	.loc 1 879 0
	std Z+48,__zero_reg__
	.loc 1 880 0
	ldi r24,lo8(29)
	std Z+49,r24
	.loc 1 881 0
	ldi r24,lo8(-32)
	std Z+50,r24
.L144:
	.loc 1 883 0
	call Midi_updateManualRange
.LVL243:
	ret
	.cfi_endproc
.LFE51:
	.size	init_Manual2Module, .-init_Manual2Module
	.section	.text.manualNote_to_moduleBit,"ax",@progbits
.global	manualNote_to_moduleBit
	.type	manualNote_to_moduleBit, @function
manualNote_to_moduleBit:
.LFB52:
	.loc 1 887 0
	.cfi_startproc
.LVL244:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 890 0
	cpi r24,lo8(4)
	brsh .L147
.LBB66:
	.loc 1 893 0
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
.LVL245:
	.loc 1 894 0
	ldi r24,lo8(4)
.LVL246:
.L150:
	.loc 1 896 0
	ld r18,Z
	cp r22,r18
	brlo .L148
	.loc 1 896 0 is_stmt 0 discriminator 1
	ldd r25,Z+1
	cp r25,r22
	brlo .L148
	.loc 1 899 0 is_stmt 1
	ldd r25,Z+2
	sub r22,r18
.LVL247:
	.loc 1 900 0
	ldi r24,0
.LVL248:
	add r25,r22
	ret
.LVL249:
.L148:
	.loc 1 902 0
	adiw r30,3
.LVL250:
	.loc 1 903 0
	subi r24,lo8(-(-1))
.LVL251:
	brne .L150
.LVL252:
.L147:
.LBE66:
	.loc 1 907 0
	ldi r24,lo8(-1)
	ldi r25,0
	.loc 1 908 0
	ret
	.cfi_endproc
.LFE52:
	.size	manualNote_to_moduleBit, .-manualNote_to_moduleBit
	.section	.text.moduleBit_to_manualNote,"ax",@progbits
.global	moduleBit_to_manualNote
	.type	moduleBit_to_manualNote, @function
moduleBit_to_manualNote:
.LFB53:
	.loc 1 910 0
	.cfi_startproc
.LVL253:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 917 0
	ldi r27,0
	.loc 1 916 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
.LVL254:
.L156:
.LBB67:
	.loc 1 919 0
	ldi r20,lo8(4)
	rjmp .L152
.LVL255:
.L155:
	.loc 1 920 0
	ldd r21,Z+2
	cp r24,r21
	brlo .L153
	.loc 1 920 0 is_stmt 0 discriminator 1
	mov r22,r24
	ldi r23,0
	ldd r18,Z+1
	ld r26,Z
	ldi r19,0
	sub r18,r26
	sbc r19,__zero_reg__
	add r18,r21
	adc r19,__zero_reg__
	cp r18,r22
	cpc r19,r23
	brlt .L153
.LVL256:
	.loc 1 923 0 is_stmt 1
	mov r25,r24
	sub r25,r21
	.loc 1 924 0
	mov r24,r27
	add r25,r26
	ret
.LVL257:
.L153:
	.loc 1 926 0 discriminator 2
	adiw r30,3
.LVL258:
	.loc 1 919 0 discriminator 2
	subi r20,lo8(-(-1))
.LVL259:
.L152:
	.loc 1 919 0 is_stmt 0 discriminator 1
	cpse r20,__zero_reg__
	rjmp .L155
.LBE67:
	.loc 1 928 0 is_stmt 1
	subi r27,lo8(-(1))
.LVL260:
	.loc 1 929 0
	cpi r27,lo8(5)
	brlo .L156
	.loc 1 933 0
	ldi r24,lo8(-1)
.LVL261:
	ldi r25,0
	.loc 1 934 0
	ret
	.cfi_endproc
.LFE53:
	.size	moduleBit_to_manualNote, .-moduleBit_to_manualNote
	.section	.text.manual_NoteOnOff,"ax",@progbits
.global	manual_NoteOnOff
	.type	manual_NoteOnOff, @function
manual_NoteOnOff:
.LFB54:
	.loc 1 936 0
	.cfi_startproc
.LVL262:
	push r14
.LCFI32:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI33:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
.LCFI34:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
.LCFI35:
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
.LCFI36:
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
.LCFI37:
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r28,r24
	mov r16,r22
	mov r29,r20
	.loc 1 938 0
	call manualNote_to_moduleBit
.LVL263:
	.loc 1 940 0
	mov r20,r25
	swap r20
	lsr r20
	andi r20,lo8(7)
	ldi r18,lo8(1)
	ldi r19,0
	movw r14,r18
	rjmp 2f
	1:
	lsl r14
	rol r15
	2:
	dec r20
	brpl 1b
.LVL264:
	.loc 1 941 0
	mov r17,r25
	andi r17,lo8(31)
.LVL265:
	.loc 1 942 0
	cpse r24,__zero_reg__
	rjmp .L158
	.loc 1 943 0
	lds r24,pipe_Module+1
	and r24,r14
	brne .L159
	.loc 1 943 0 is_stmt 0 discriminator 1
	tst r29
	brlt .L159
.LBB68:
	.loc 1 945 0 is_stmt 1
	andi r29,lo8(127)
.LVL266:
	.loc 1 948 0
	cpi r29,lo8(1)
	brne .L165
	ldi r25,lo8(32)
	rjmp .L160
.L165:
	ldi r25,0
.L160:
	.loc 1 949 0 discriminator 4
	mov r24,r14
	or r25,r17
	call pipeMsgPush
.LVL267:
.L159:
.LBE68:
	.loc 1 951 0
	andi r29,lo8(127)
.LVL268:
	.loc 1 952 0
	brne .L161
	.loc 1 954 0
	mov r22,r14
	mov r24,r17
	call pipe_off
.LVL269:
	rjmp .L158
.L161:
	.loc 1 957 0
	mov r22,r14
	mov r24,r17
	call pipe_on
.LVL270:
.L158:
	.loc 1 962 0
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldd r24,Z+1
	cpi r24,lo8(-1)
	breq .L157
	.loc 1 965 0
	cpi r29,lo8(1)
	breq .L166
	.loc 1 965 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
	tst r25
	breq .L167
	.loc 1 965 0
	ldi r25,lo8(-112)
	rjmp .L163
.L166:
	ldi r25,lo8(-112)
	rjmp .L163
.L167:
	ldi r25,lo8(-128)
.L163:
	.loc 1 965 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL271:
	.loc 1 966 0 is_stmt 1 discriminator 6
	mov r24,r16
	call serial1MIDISend
.LVL272:
	.loc 1 968 0 discriminator 6
	cpse r29,__zero_reg__
	rjmp .L168
	.loc 1 968 0 is_stmt 0
	ldi r24,0
	rjmp .L164
.L168:
	ldi r24,lo8(64)
.L164:
	.loc 1 968 0 discriminator 4
	call serial1MIDISend
.LVL273:
.L157:
/* epilogue start */
	.loc 1 972 0 is_stmt 1
	pop r29
.LVL274:
	pop r28
.LVL275:
	pop r17
.LVL276:
	pop r16
.LVL277:
	pop r15
	pop r14
.LVL278:
	ret
	.cfi_endproc
.LFE54:
	.size	manual_NoteOnOff, .-manual_NoteOnOff
	.section	.text.midiAllNotesOff,"ax",@progbits
.global	midiAllNotesOff
	.type	midiAllNotesOff, @function
midiAllNotesOff:
.LFB23:
	.loc 1 143 0
	.cfi_startproc
.LVL279:
	push r11
.LCFI38:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI39:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI40:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI41:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI42:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI43:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI44:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI45:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI46:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	mov r12,r24
.LVL280:
	.loc 1 144 0
	mov r13,__zero_reg__
	.loc 1 145 0
	rjmp .L170
.LVL281:
.L174:
.LBB69:
	.loc 1 146 0
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
	ld r11,Z
.LVL282:
	.loc 1 148 0
	ldi r24,lo8(3)
	cp r24,r11
	brlo .L171
.LBB70:
	.loc 1 150 0
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
.LVL283:
.LBB71:
	.loc 1 152 0
	ldd r15,Z+2
.LVL284:
	rjmp .L172
.L173:
	.loc 1 153 0 discriminator 3
	clr r14
	inc r14
	add r14,r22
.LVL285:
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
	ldi r20,lo8(-128)
	ld r24,Z
	call manual_NoteOnOff
.LVL286:
	.loc 1 152 0 discriminator 3
	dec r15
.LVL287:
	.loc 1 153 0 discriminator 3
	mov r22,r14
.LVL288:
.L172:
	.loc 1 152 0 discriminator 1
	cpse r15,__zero_reg__
	rjmp .L173
.LBE71:
	.loc 1 155 0
	mov r30,r11
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL289:
	.loc 1 156 0
	cpi r24,lo8(16)
	brsh .L171
	.loc 1 158 0
	ori r24,lo8(-80)
.LVL290:
	call serial1MIDISend
.LVL291:
	.loc 1 159 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL292:
	.loc 1 160 0
	ldi r24,0
	call serial1MIDISend
.LVL293:
.L171:
.LBE70:
	.loc 1 167 0
	inc r13
.LVL294:
.L170:
.LBE69:
	.loc 1 145 0
	ldi r24,lo8(3)
	cp r24,r13
	brlo .+2
	rjmp .L174
/* epilogue start */
	.loc 1 169 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
.LVL295:
	pop r12
.LVL296:
	pop r11
	ret
	.cfi_endproc
.LFE23:
	.size	midiAllNotesOff, .-midiAllNotesOff
	.section	.text.midi_ManualOff,"ax",@progbits
.global	midi_ManualOff
	.type	midi_ManualOff, @function
midi_ManualOff:
.LFB24:
	.loc 1 171 0
	.cfi_startproc
.LVL297:
	push r16
.LCFI47:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI48:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI49:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI50:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r28,r24
	.loc 1 173 0
	cpi r24,lo8(4)
	brsh .L176
	.loc 1 173 0 is_stmt 0 discriminator 1
	mov r16,r24
	ldi r17,0
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ld r29,Z
	cpi r29,lo8(-1)
	breq .L176
	.loc 1 173 0 discriminator 2
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r24,Z+1
.LVL298:
	cpi r24,lo8(-1)
	brne .L177
.LBB72:
	rjmp .L176
.LVL299:
.L178:
	.loc 1 175 0 is_stmt 1 discriminator 3
	ldi r20,lo8(-128)
	mov r22,r29
	mov r24,r28
	call manual_NoteOnOff
.LVL300:
	.loc 1 174 0 discriminator 3
	subi r29,lo8(-(1))
.LVL301:
.L177:
	.loc 1 174 0 is_stmt 0 discriminator 1
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r24,Z+1
	cp r24,r29
	brsh .L178
.LVL302:
.L176:
.LBE72:
	.loc 1 179 0 is_stmt 1
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL303:
	.loc 1 180 0
	cpi r24,lo8(16)
	brsh .L175
	.loc 1 182 0
	ori r24,lo8(-80)
.LVL304:
	call serial1MIDISend
.LVL305:
	.loc 1 183 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL306:
	.loc 1 184 0
	ldi r24,0
	call serial1MIDISend
.LVL307:
.L175:
/* epilogue start */
	.loc 1 187 0
	pop r29
	pop r28
.LVL308:
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
	.loc 1 189 0
	.cfi_startproc
	push r28
.LCFI51:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL309:
.LBB73:
	.loc 1 190 0
	ldi r28,0
	rjmp .L181
.LVL310:
.L182:
	.loc 1 191 0 discriminator 3
	mov r24,r28
	call midi_ManualOff
.LVL311:
	.loc 1 190 0 discriminator 3
	subi r28,lo8(-(1))
.LVL312:
.L181:
	.loc 1 190 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brlo .L182
/* epilogue start */
.LBE73:
	.loc 1 196 0 is_stmt 1
	pop r28
.LVL313:
	ret
	.cfi_endproc
.LFE25:
	.size	midi_AllManualsOff, .-midi_AllManualsOff
	.section	.text.midi_CheckRxActiveSense,"ax",@progbits
.global	midi_CheckRxActiveSense
	.type	midi_CheckRxActiveSense, @function
midi_CheckRxActiveSense:
.LFB26:
	.loc 1 198 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 199 0
	lds r24,midiRxActivceSensing
	tst r24
	breq .L183
	.loc 1 201 0
	lds r24,swTimer+6
	cpse r24,__zero_reg__
	rjmp .L183
	.loc 1 203 0
	call midi_AllManualsOff
.LVL314:
	.loc 1 204 0
	sts midiRxActivceSensing,__zero_reg__
.L183:
	ret
	.cfi_endproc
.LFE26:
	.size	midi_CheckRxActiveSense, .-midi_CheckRxActiveSense
	.section	.text.midiNote_to_Manual,"ax",@progbits
.global	midiNote_to_Manual
	.type	midiNote_to_Manual, @function
midiNote_to_Manual:
.LFB48:
	.loc 1 765 0
	.cfi_startproc
.LVL315:
	push r16
.LCFI52:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI53:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI54:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI55:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r22
	mov r17,r20
	.loc 1 766 0
	mov r29,r24
	andi r29,lo8(15)
.LVL316:
.LBB74:
	.loc 1 768 0
	ldi r28,0
.LBE74:
	.loc 1 767 0
	ldi r25,0
.LBB77:
	.loc 1 768 0
	rjmp .L186
.LVL317:
.L189:
	.loc 1 769 0
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
	brsh .L187
.LVL318:
.LBB75:
	.loc 1 771 0
	movw r26,r30
	ldd r22,Z+1
	mov r23,r16
	sub r23,r22
	mov r22,r23
.LVL319:
	.loc 1 772 0
	brmi .L187
	.loc 1 772 0 is_stmt 0 discriminator 1
	movw r30,r26
	ldd r30,Z+2
	ldi r31,0
	mov r26,r23
	lsl r23
	sbc r27,r27
	cp r26,r30
	cpc r27,r31
	brge .L187
.LVL320:
.LBB76:
	.loc 1 775 0 is_stmt 1
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
.LVL321:
	add r22,r25
.LVL322:
	.loc 1 776 0
	cpi r17,lo8(1)
	brne .L188
	.loc 1 777 0
	sts midiLastInManual,r24
	.loc 1 778 0
	sts midiLastInNote,r22
.L188:
	.loc 1 780 0
	mov r20,r17
.LVL323:
	call manual_NoteOnOff
.LVL324:
	.loc 1 781 0
	ldi r25,lo8(-1)
.LVL325:
.L187:
.LBE76:
.LBE75:
	.loc 1 768 0 discriminator 2
	subi r28,lo8(-(1))
.LVL326:
.L186:
	.loc 1 768 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brsh .+2
	rjmp .L189
.LBE77:
	.loc 1 785 0 is_stmt 1
	cpi r17,lo8(1)
	brne .L190
	.loc 1 785 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L190
	.loc 1 787 0 is_stmt 1
	sts midiLastInNote,r16
	.loc 1 788 0
	sts midiLastInChannel,r29
	.loc 1 789 0
	ldi r24,lo8(-1)
	sts midiLastInManual,r24
.L190:
	.loc 1 792 0
	lds r24,midiThrough
	cpse r29,r24
	rjmp .L185
	.loc 1 794 0
	lds r24,midiThrough+1
	cpi r24,lo8(-1)
	breq .L185
	.loc 1 796 0
	cpi r17,lo8(1)
	breq .L194
	.loc 1 796 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
.LVL327:
	tst r25
	breq .L195
	.loc 1 796 0
	ldi r25,lo8(-112)
	rjmp .L192
.LVL328:
.L194:
	ldi r25,lo8(-112)
.LVL329:
	rjmp .L192
.L195:
	ldi r25,lo8(-128)
.L192:
	.loc 1 796 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL330:
	.loc 1 798 0 is_stmt 1 discriminator 6
	mov r24,r16
	call serial1MIDISend
.LVL331:
	.loc 1 800 0 discriminator 6
	cpse r17,__zero_reg__
	rjmp .L196
	.loc 1 800 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L197
	.loc 1 800 0
	ldi r24,lo8(64)
	rjmp .L193
.L196:
	ldi r24,lo8(64)
	rjmp .L193
.L197:
	ldi r24,0
.L193:
	.loc 1 800 0 discriminator 6
	call serial1MIDISend
.LVL332:
.L185:
/* epilogue start */
	.loc 1 803 0 is_stmt 1
	pop r29
.LVL333:
	pop r28
.LVL334:
	pop r17
.LVL335:
	pop r16
.LVL336:
	ret
	.cfi_endproc
.LFE48:
	.size	midiNote_to_Manual, .-midiNote_to_Manual
	.section	.text.midiIn_Process,"ax",@progbits
.global	midiIn_Process
	.type	midiIn_Process, @function
midiIn_Process:
.LFB29:
	.loc 1 243 0
	.cfi_startproc
.LVL337:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 244 0
	tst r24
	brlt .+2
	rjmp .L199
	.loc 1 247 0
	cpi r24,lo8(-8)
	brlo .L200
	.loc 1 249 0
	cpi r24,lo8(-2)
	brne .L201
	.loc 1 250 0
	ldi r24,lo8(1)
.LVL338:
	sts midiRxActivceSensing,r24
.LBB78:
	.loc 1 251 0
	in r25,__SREG__
.LVL339:
.LBB79:
.LBB80:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE80:
.LBE79:
	.loc 1 251 0
	rjmp .L202
.LVL340:
.L203:
	.loc 1 251 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(25)
.LVL341:
	std Z+6,r24
	std Z+7,__zero_reg__
.LVL342:
	.loc 1 251 0 discriminator 3
	ldi r24,0
.LVL343:
.L202:
	.loc 1 251 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L203
.LVL344:
.LBB81:
.LBB82:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL345:
.LBE82:
.LBE81:
.LBE78:
	ret
.LVL346:
.L201:
	.loc 1 252 0
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L198
	.loc 1 253 0
	call midiAllReset
.LVL347:
	ret
.LVL348:
.L200:
	.loc 1 258 0
	sts midiLastCommand,r24
	.loc 1 259 0
	sts midiDataByteCount,__zero_reg__
	.loc 1 260 0
	ldi r25,lo8(-128)
	add r25,r24
	cpi r25,lo8(64)
	brsh .L205
	.loc 1 262 0
	ldi r24,lo8(2)
.LVL349:
	sts midiDataByteExpected,r24
	ret
.LVL350:
.L205:
	.loc 1 263 0
	ldi r25,lo8(32)
	add r25,r24
	cpi r25,lo8(16)
	brsh .L206
	.loc 1 265 0
	ldi r24,lo8(2)
.LVL351:
	sts midiDataByteExpected,r24
	ret
.LVL352:
.L206:
	.loc 1 266 0
	cpi r24,lo8(-14)
	brne .L207
	.loc 1 268 0
	ldi r24,lo8(2)
.LVL353:
	sts midiDataByteExpected,r24
	ret
.LVL354:
.L207:
	.loc 1 269 0
	cpi r24,lo8(-16)
	brne .L208
	.loc 1 271 0
	ldi r24,lo8(-1)
.LVL355:
	sts midiDataByteExpected,r24
	ret
.LVL356:
.L208:
	.loc 1 272 0
	ldi r25,lo8(64)
	add r25,r24
	cpi r25,lo8(32)
	brsh .L209
	.loc 1 274 0
	ldi r24,lo8(1)
.LVL357:
	sts midiDataByteExpected,r24
	ret
.LVL358:
.L209:
	.loc 1 275 0
	cpi r24,lo8(-15)
	breq .L210
	.loc 1 275 0 is_stmt 0 discriminator 1
	cpi r24,lo8(-13)
	brne .L211
.L210:
	.loc 1 277 0 is_stmt 1
	ldi r24,lo8(1)
.LVL359:
	sts midiDataByteExpected,r24
	ret
.LVL360:
.L211:
	.loc 1 278 0
	cpi r24,lo8(-9)
	brne .+2
	rjmp .L198
	.loc 1 282 0
	sts midiDataByteExpected,__zero_reg__
	ret
.L199:
	.loc 1 288 0
	lds r30,midiDataByteCount
	cpi r30,lo8(8)
	brsh .L212
	.loc 1 290 0
	ldi r25,lo8(1)
	add r25,r30
	sts midiDataByteCount,r25
	ldi r31,0
	subi r30,lo8(-(midiDataByte))
	sbci r31,hi8(-(midiDataByte))
	st Z,r24
.L212:
	.loc 1 292 0
	lds r24,midiDataByteExpected
.LVL361:
	cpi r24,lo8(-1)
	breq .L198
	.loc 1 294 0
	lds r25,midiDataByteCount
	cp r25,r24
	brlo .L198
	.loc 1 296 0
	lds r25,midiLastCommand
	cpi r25,lo8(-16)
	brsh .L213
.LBB83:
	.loc 1 298 0
	mov r24,r25
	andi r24,lo8(15)
.LVL362:
	.loc 1 300 0
	andi r25,lo8(-16)
	cpi r25,lo8(-112)
	breq .L214
	brsh .L215
	cpi r25,lo8(-128)
	breq .L216
	rjmp .L213
.L215:
	cpi r25,lo8(-80)
	breq .L217
	cpi r25,lo8(-64)
	breq .L218
	rjmp .L213
.L216:
.LVL363:
	.loc 1 304 0
	ldi r20,0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL364:
	.loc 1 305 0
	rjmp .L213
.LVL365:
.L214:
	.loc 1 307 0
	lds r25,midiDataByte+1
	cpse r25,__zero_reg__
	rjmp .L220
	.loc 1 309 0
	ldi r20,0
	rjmp .L219
.L220:
	.loc 1 312 0
	ldi r20,lo8(1)
.L219:
.LVL366:
	.loc 1 314 0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL367:
	.loc 1 315 0
	rjmp .L213
.LVL368:
.L217:
	.loc 1 317 0
	lds r25,midiDataByte
	cpi r25,lo8(123)
	brne .L213
	.loc 1 318 0
	call midiAllNotesOff
.LVL369:
	rjmp .L213
.LVL370:
.L218:
	.loc 1 322 0
	lds r22,midiDataByte
	call midi_ProgramChange
.LVL371:
.L213:
.LBE83:
	.loc 1 329 0
	sts midiDataByteCount,__zero_reg__
.L198:
	ret
	.cfi_endproc
.LFE29:
	.size	midiIn_Process, .-midiIn_Process
	.section	.text.proc_ESPmidi,"ax",@progbits
.global	proc_ESPmidi
	.type	proc_ESPmidi, @function
proc_ESPmidi:
.LFB30:
	.loc 1 335 0
	.cfi_startproc
.LVL372:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 339 0
	lds r25,serESPMidiTmp+2
	mov r24,r25
.LVL373:
	andi r24,lo8(15)
.LVL374:
	.loc 1 341 0
	andi r25,lo8(-16)
	cpi r25,lo8(-128)
	breq .L223
	brsh .L224
	tst r25
	breq .L225
	ret
.L224:
	cpi r25,lo8(-112)
	breq .L226
	cpi r25,lo8(-80)
	breq .L227
	ret
.L223:
.LVL375:
	.loc 1 345 0
	ldi r20,0
	lds r22,serESPMidiTmp+1
	call midiNote_to_Manual
.LVL376:
	.loc 1 346 0
	ret
.LVL377:
.L226:
	.loc 1 348 0
	lds r25,serESPMidiTmp
	cpse r25,__zero_reg__
	rjmp .L230
	.loc 1 350 0
	ldi r20,0
	rjmp .L228
.L230:
	.loc 1 353 0
	ldi r20,lo8(1)
.L228:
.LVL378:
	.loc 1 355 0
	lds r22,serESPMidiTmp+1
	call midiNote_to_Manual
.LVL379:
	.loc 1 356 0
	ret
.LVL380:
.L227:
	.loc 1 358 0
	lds r25,serESPMidiTmp+1
	cpi r25,lo8(123)
	brne .L221
	.loc 1 359 0
	call midiAllNotesOff
.LVL381:
	ret
.LVL382:
.L225:
	.loc 1 364 0
	lds r25,serESPMidiTmp+1
	mov r24,r25
.LVL383:
	andi r24,lo8(15)
.LVL384:
	.loc 1 365 0
	andi r25,lo8(-16)
	cpi r25,lo8(-64)
	brne .L221
	.loc 1 367 0
	lds r22,serESPMidiTmp
	call midi_ProgramChange
.LVL385:
.L221:
	ret
	.cfi_endproc
.LFE30:
	.size	proc_ESPmidi, .-proc_ESPmidi
	.section	.text.midiKeyPress_Process,"ax",@progbits
.global	midiKeyPress_Process
	.type	midiKeyPress_Process, @function
midiKeyPress_Process:
.LFB55:
	.loc 1 976 0
	.cfi_startproc
.LVL386:
	push r11
.LCFI56:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI57:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI58:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI59:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI60:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI61:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI62:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI63:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI64:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	mov r29,r24
	mov r28,r25
	.loc 1 977 0
	call serial0USB_logPipeIn
.LVL387:
	.loc 1 978 0
	mov r16,r28
	andi r16,lo8(-32)
.LVL388:
	.loc 1 979 0
	andi r28,lo8(31)
	mov r11,r28
.LVL389:
	.loc 1 983 0
	cpi r16,lo8(32)
	brne .+2
	rjmp .L253
	.loc 1 983 0 is_stmt 0 discriminator 1
	tst r16
	brne .+2
	rjmp .L254
.LBB84:
	rjmp .L231
.LVL390:
.L252:
	.loc 1 987 0 is_stmt 1
	sbrs r29,0
	rjmp .L234
	.loc 1 989 0
	ldi r18,lo8(32)
	mul r28,r18
	movw r24,r0
	clr __zero_reg__
	mov r15,r11
	or r15,r24
	mov r24,r15
	call moduleBit_to_manualNote
.LVL391:
	mov r12,r24
.LVL392:
	mov r14,r25
	.loc 1 991 0
	mov r17,r24
	cpi r24,lo8(-1)
	brne .+2
	rjmp .L235
.LBB85:
	.loc 1 994 0
	mov r22,r25
	call Manual_to_MidiNote
.LVL393:
	mov r13,r25
.LVL394:
	.loc 1 995 0
	cpi r24,lo8(-1)
	breq .L236
	.loc 1 997 0
	cpi r16,lo8(32)
	breq .L255
	.loc 1 997 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
	tst r25
	breq .L256
	.loc 1 997 0
	ldi r25,lo8(-112)
	rjmp .L237
.L255:
	ldi r25,lo8(-112)
	rjmp .L237
.L256:
	ldi r25,lo8(-128)
.L237:
	.loc 1 997 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL395:
	.loc 1 999 0 is_stmt 1 discriminator 6
	mov r24,r13
	call serial1MIDISend
.LVL396:
	.loc 1 1001 0 discriminator 6
	cpse r16,__zero_reg__
	rjmp .L257
	.loc 1 1001 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L258
	.loc 1 1001 0
	ldi r24,lo8(64)
	rjmp .L238
.L257:
	ldi r24,lo8(64)
	rjmp .L238
.L258:
	ldi r24,0
.L238:
	.loc 1 1001 0 discriminator 6
	call serial1MIDISend
.LVL397:
	.loc 1 1003 0 is_stmt 1 discriminator 6
	cpi r16,lo8(32)
	brne .L236
	.loc 1 1005 0
	sts midiLastOutManual,r12
.LVL398:
	.loc 1 1006 0
	sts midiLastOutNote,r14
.LVL399:
.L236:
	.loc 1 1010 0
	ldi r20,lo8(1)
	cpi r16,lo8(32)
	breq .L239
	ldi r20,0
.L239:
	mov r13,r20
.LVL400:
	.loc 1 1012 0
	cpse r17,__zero_reg__
	rjmp .L240
	.loc 1 1013 0
	lds r24,midi_Couplers
	cpi r24,lo8(-1)
	brne .L241
	.loc 1 1014 0
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL401:
.L241:
	.loc 1 1016 0
	lds r24,midi_Couplers+1
	cpi r24,lo8(-1)
	brne .L242
	.loc 1 1017 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL402:
.L242:
	.loc 1 1019 0
	lds r24,midi_Couplers+3
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L235
	.loc 1 1020 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL403:
	rjmp .L235
.L240:
	.loc 1 1022 0
	cpi r17,lo8(1)
	brne .L243
	.loc 1 1023 0
	lds r24,midi_Couplers+2
	cpi r24,lo8(-1)
	brne .L244
	.loc 1 1024 0
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL404:
.L244:
	.loc 1 1026 0
	lds r24,midi_Couplers+4
	cpi r24,lo8(-1)
	brne .L245
	.loc 1 1027 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL405:
.L245:
	.loc 1 1029 0
	lds r24,midi_Couplers+6
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L235
	.loc 1 1030 0
	mov r20,r13
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL406:
	rjmp .L235
.L243:
	.loc 1 1032 0
	cpi r17,lo8(2)
	brne .L246
	.loc 1 1033 0
	lds r24,midi_Couplers+5
	cpi r24,lo8(-1)
	brne .L247
	.loc 1 1034 0
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL407:
.L247:
	.loc 1 1036 0
	lds r24,midi_Couplers+7
	cpi r24,lo8(-1)
	brne .L248
	.loc 1 1037 0
	mov r20,r13
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL408:
.L248:
	.loc 1 1039 0
	lds r24,midi_Couplers+8
	cpi r24,lo8(-1)
	brne .L235
	.loc 1 1040 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL409:
	rjmp .L235
.L246:
	.loc 1 1042 0
	cpi r17,lo8(3)
	brne .L235
	.loc 1 1043 0
	lds r24,midi_Couplers+9
	cpi r24,lo8(-1)
	brne .L249
	.loc 1 1044 0
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL410:
.L249:
	.loc 1 1046 0
	lds r24,midi_Couplers+10
	cpi r24,lo8(-1)
	brne .L250
	.loc 1 1047 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL411:
.L250:
	.loc 1 1049 0
	lds r24,midi_Couplers+11
	cpi r24,lo8(-1)
	brne .L235
	.loc 1 1050 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL412:
.L235:
.LBE85:
	.loc 1 1055 0
	mov r24,r15
	call moduleBit_to_registerNr
.LVL413:
	cpi r16,lo8(32)
	brne .L259
	ldi r18,lo8(-128)
	rjmp .L251
.L259:
	ldi r18,0
.L251:
	.loc 1 1055 0 is_stmt 0 discriminator 4
	or r24,r18
	sts midi_RegisterChanged,r24
.L234:
	.loc 1 1058 0 is_stmt 1 discriminator 2
	lsr r29
.LVL414:
	.loc 1 985 0 discriminator 2
	subi r28,lo8(-(1))
.LVL415:
	rjmp .L232
.LVL416:
.L253:
.LBE84:
	ldi r28,0
.LVL417:
	rjmp .L232
.LVL418:
.L254:
	ldi r28,0
.LVL419:
.L232:
.LBB86:
	.loc 1 985 0 is_stmt 0 discriminator 1
	cpi r28,lo8(8)
	brsh .+2
	rjmp .L252
.LVL420:
.L231:
/* epilogue start */
.LBE86:
	.loc 1 1061 0 is_stmt 1
	pop r29
.LVL421:
	pop r28
	pop r17
	pop r16
.LVL422:
	pop r15
	pop r14
.LVL423:
	pop r13
	pop r12
	pop r11
.LVL424:
	ret
	.cfi_endproc
.LFE55:
	.size	midiKeyPress_Process, .-midiKeyPress_Process
	.section	.text.midiSendAllNotesOff,"ax",@progbits
.global	midiSendAllNotesOff
	.type	midiSendAllNotesOff, @function
midiSendAllNotesOff:
.LFB56:
	.loc 1 1065 0
	.cfi_startproc
	push r28
.LCFI65:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL425:
.LBB87:
	.loc 1 1066 0
	ldi r28,0
	rjmp .L261
.LVL426:
.L263:
.LBB88:
	.loc 1 1067 0
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL427:
	.loc 1 1068 0
	cpi r24,lo8(16)
	brsh .L262
	.loc 1 1069 0
	ori r24,lo8(-80)
.LVL428:
	call serial1MIDISend
.LVL429:
	.loc 1 1070 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL430:
	.loc 1 1071 0
	ldi r24,0
	call serial1MIDISend
.LVL431:
.L262:
.LBE88:
	.loc 1 1066 0 discriminator 2
	subi r28,lo8(-(1))
.LVL432:
.L261:
	.loc 1 1066 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brlo .L263
/* epilogue start */
.LBE87:
	.loc 1 1074 0 is_stmt 1
	pop r28
.LVL433:
	ret
	.cfi_endproc
.LFE56:
	.size	midiSendAllNotesOff, .-midiSendAllNotesOff
	.section	.text.midi_SendActiveSense,"ax",@progbits
.global	midi_SendActiveSense
	.type	midi_SendActiveSense, @function
midi_SendActiveSense:
.LFB57:
	.loc 1 1076 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1077 0
	ldi r24,lo8(-2)
	call serial1MIDISend
.LVL434:
	ret
	.cfi_endproc
.LFE57:
	.size	midi_SendActiveSense, .-midi_SendActiveSense
	.section	.text.midi_CheckTxActiveSense,"ax",@progbits
.global	midi_CheckTxActiveSense
	.type	midi_CheckTxActiveSense, @function
midi_CheckTxActiveSense:
.LFB27:
	.loc 1 209 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 212 0
	lds r24,swTimer+16
	tst r24
	breq .L266
	.loc 1 212 0 is_stmt 0 discriminator 1
	lds r24,swTimer+16
	cpi r24,lo8(-1)
	brne .L265
.L266:
.LBB89:
	.loc 1 214 0 is_stmt 1
	in r25,__SREG__
.LVL435:
.LBB90:
.LBB91:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE91:
.LBE90:
	.loc 1 214 0
	ldi r24,lo8(1)
	rjmp .L268
.LVL436:
.L269:
	.loc 1 214 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(10)
.LVL437:
	std Z+16,r24
	std Z+17,__zero_reg__
.LVL438:
	.loc 1 214 0 discriminator 3
	ldi r24,0
.LVL439:
.L268:
	.loc 1 214 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L269
.LVL440:
.LBB92:
.LBB93:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL441:
.LBE93:
.LBE92:
.LBE89:
	.loc 1 215 0
	lds r24,midi_Setting
.LVL442:
	cpse r24,__zero_reg__
	.loc 1 216 0
	call midi_SendActiveSense
.LVL443:
.L270:
	.loc 1 219 0
	sts midiTxLastCmd,__zero_reg__
.L265:
	ret
	.cfi_endproc
.LFE27:
	.size	midi_CheckTxActiveSense, .-midi_CheckTxActiveSense
.global	midiLastProgram
	.section	.data.midiLastProgram,"aw",@progbits
	.type	midiLastProgram, @object
	.size	midiLastProgram, 1
midiLastProgram:
	.byte	-1
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
	.comm	midiDataByte,8,1
	.comm	midiLastCommand,1,1
	.comm	midi_RegisterChanged,1,1
	.comm	midiThrough,2,1
	.comm	programMap,640,1
	.comm	registerCount,1,1
	.comm	registerMap,24,1
.global	midiEEPromLoadError
	.section	.bss.midiEEPromLoadError,"aw",@nobits
	.type	midiEEPromLoadError, @object
	.size	midiEEPromLoadError, 1
midiEEPromLoadError:
	.zero	1
	.comm	midi_Setting,3,1
.global	midiRxActivceSensing
	.section	.bss.midiRxActivceSensing,"aw",@nobits
	.type	midiRxActivceSensing, @object
	.size	midiRxActivceSensing, 1
midiRxActivceSensing:
	.zero	1
	.comm	midiOutMap,8,1
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
	.file 8 ".././serial.h"
	.file 9 ".././menu.h"
	.file 10 ".././ee_prom.h"
	.file 11 ".././log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1d24
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF204
	.byte	0xc
	.long	.LASF205
	.long	.LASF206
	.long	.Ldebug_ranges0+0x208
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
	.byte	0x4f
	.long	0x112
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0x50
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0x51
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF19
	.byte	0x6
	.byte	0x52
	.long	0xed
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.byte	0xa5
	.long	0x196
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.byte	0xa6
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.byte	0xa7
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.byte	0xa8
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.byte	0xa9
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.byte	0xaa
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.byte	0xab
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0xac
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0xad
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x2
	.long	.LASF28
	.byte	0x6
	.byte	0xae
	.long	0x11d
	.uleb128 0x9
	.byte	0x2
	.byte	0x6
	.byte	0xba
	.long	0x1c6
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.byte	0xbb
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.byte	0xbc
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF31
	.byte	0x6
	.byte	0xbd
	.long	0x1a1
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.byte	0x2f
	.long	0x1f6
	.uleb128 0xa
	.long	.LASF32
	.byte	0x7
	.byte	0x30
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF33
	.byte	0x7
	.byte	0x31
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF34
	.byte	0x7
	.byte	0x32
	.long	0x1d1
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.byte	0x34
	.long	0x226
	.uleb128 0xa
	.long	.LASF35
	.byte	0x7
	.byte	0x35
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF33
	.byte	0x7
	.byte	0x36
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF36
	.byte	0x7
	.byte	0x37
	.long	0x201
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.byte	0x41
	.long	0x256
	.uleb128 0xa
	.long	.LASF37
	.byte	0x7
	.byte	0x42
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x7
	.byte	0x43
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF39
	.byte	0x7
	.byte	0x44
	.long	0x231
	.uleb128 0x9
	.byte	0x3
	.byte	0x7
	.byte	0x46
	.long	0x294
	.uleb128 0xa
	.long	.LASF40
	.byte	0x7
	.byte	0x47
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x7
	.byte	0x48
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF42
	.byte	0x7
	.byte	0x49
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x7
	.byte	0x4a
	.long	0x261
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.byte	0x4d
	.long	0x2c4
	.uleb128 0xa
	.long	.LASF40
	.byte	0x7
	.byte	0x4e
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x7
	.byte	0x4f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF44
	.byte	0x7
	.byte	0x50
	.long	0x29f
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.byte	0x78
	.long	0x310
	.uleb128 0xa
	.long	.LASF35
	.byte	0x7
	.byte	0x79
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF45
	.byte	0x7
	.byte	0x7a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF46
	.byte	0x7
	.byte	0x7b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF47
	.byte	0x7
	.byte	0x7c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x7
	.byte	0x7d
	.long	0x2cf
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.byte	0x81
	.long	0x340
	.uleb128 0xa
	.long	.LASF49
	.byte	0x7
	.byte	0x82
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF50
	.byte	0x7
	.byte	0x83
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x7
	.byte	0x84
	.long	0x31b
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.byte	0x89
	.long	0x370
	.uleb128 0xa
	.long	.LASF32
	.byte	0x7
	.byte	0x8a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF52
	.byte	0x7
	.byte	0x8b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x7
	.byte	0x8d
	.long	0x34b
	.uleb128 0x9
	.byte	0x3
	.byte	0x7
	.byte	0x93
	.long	0x3ae
	.uleb128 0xa
	.long	.LASF54
	.byte	0x7
	.byte	0x94
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF55
	.byte	0x7
	.byte	0x95
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF42
	.byte	0x7
	.byte	0x96
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF56
	.byte	0x7
	.byte	0x97
	.long	0x37b
	.uleb128 0x9
	.byte	0xa
	.byte	0x7
	.byte	0x9b
	.long	0x3de
	.uleb128 0xa
	.long	.LASF57
	.byte	0x7
	.byte	0x9c
	.long	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF58
	.byte	0x7
	.byte	0x9d
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.long	0x3b
	.long	0x3ee
	.uleb128 0x8
	.long	0x82
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x7
	.byte	0x9e
	.long	0x3b9
	.uleb128 0x9
	.byte	0x3
	.byte	0x7
	.byte	0xc9
	.long	0x42c
	.uleb128 0xa
	.long	.LASF60
	.byte	0x7
	.byte	0xca
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF61
	.byte	0x7
	.byte	0xcb
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF62
	.byte	0x7
	.byte	0xcc
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x7
	.byte	0xcd
	.long	0x3f9
	.uleb128 0xb
	.byte	0x2
	.long	0x3b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF64
	.uleb128 0xc
	.long	0x3b
	.uleb128 0x7
	.long	0x294
	.long	0x45f
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	0x310
	.long	0x475
	.uleb128 0x8
	.long	0x82
	.byte	0xf
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	0x370
	.long	0x485
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	0x3ae
	.long	0x495
	.uleb128 0x8
	.long	0x82
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.long	0x3ee
	.long	0x4a5
	.uleb128 0x8
	.long	0x82
	.byte	0x3f
	.byte	0
	.uleb128 0xd
	.long	.LASF207
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0xe
	.long	.LASF208
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x4cb
	.uleb128 0xf
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0x4cb
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x444
	.uleb128 0x10
	.byte	0x1
	.long	.LASF66
	.byte	0x1
	.byte	0x40
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x50d
	.uleb128 0x11
	.long	.LASF65
	.byte	0x1
	.byte	0x42
	.long	0x437
	.long	.LLST0
	.uleb128 0x12
	.long	.Ldebug_ranges0+0
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x43
	.long	0x3b
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF67
	.byte	0x1
	.byte	0x3c
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x530
	.uleb128 0x14
	.long	.LVL4
	.long	0x4d1
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.long	0x3b
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x55e
	.uleb128 0x16
	.long	.LASF69
	.byte	0x1
	.byte	0x4a
	.long	0x3b
	.long	.LLST2
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF70
	.byte	0x1
	.byte	0x5f
	.long	0xb8
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x59a
	.uleb128 0x11
	.long	.LASF68
	.byte	0x1
	.byte	0x60
	.long	0xb8
	.long	.LLST3
	.uleb128 0x11
	.long	.LASF69
	.byte	0x1
	.byte	0x62
	.long	0x3b
	.long	.LLST4
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF71
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x5d3
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.byte	0x6d
	.long	0xb8
	.long	.LLST5
	.uleb128 0x11
	.long	.LASF69
	.byte	0x1
	.byte	0x6e
	.long	0x3b
	.long	.LLST6
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.byte	0x8a
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x5f6
	.uleb128 0x14
	.long	.LVL23
	.long	0x1c71
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF73
	.byte	0x1
	.word	0x17b
	.long	.LFB31
	.long	.LFE31
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x637
	.uleb128 0x1a
	.long	.LASF74
	.byte	0x1
	.word	0x17c
	.long	0x3b
	.long	.LLST7
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x1a
	.long	.LASF75
	.byte	0x1
	.word	0x17d
	.long	0x3b
	.long	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.word	0x186
	.long	.LFB32
	.long	.LFE32
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x6fb
	.uleb128 0x1b
	.long	.LBB17
	.long	.LBE17
	.long	0x66f
	.uleb128 0x1a
	.long	.LASF75
	.byte	0x1
	.word	0x18b
	.long	0x3b
	.long	.LLST9
	.byte	0
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x30
	.long	0x69f
	.uleb128 0x1a
	.long	.LASF77
	.byte	0x1
	.word	0x199
	.long	0x3b
	.long	.LLST10
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x19a
	.long	0x3b
	.long	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL32
	.long	0x1c7e
	.uleb128 0x1d
	.long	.LVL33
	.long	0x1c8b
	.long	0x6ca
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
	.long	0x5f6
	.uleb128 0x14
	.long	.LVL35
	.long	0x1c98
	.uleb128 0x1f
	.long	.LVL43
	.long	0x1c8b
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
	.long	.LASF80
	.byte	0x1
	.word	0x1a3
	.byte	0x1
	.long	0x256
	.long	.LFB33
	.long	.LFE33
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x75f
	.uleb128 0x21
	.long	.LASF78
	.byte	0x1
	.word	0x1a3
	.long	0x3b
	.long	.LLST12
	.uleb128 0x22
	.long	.LASF68
	.byte	0x1
	.word	0x1a5
	.long	0x256
	.uleb128 0x23
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.word	0x1a8
	.long	0x75f
	.long	.LLST13
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x1aa
	.long	0x3b
	.long	.LLST14
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x3ae
	.uleb128 0x20
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.word	0x1ba
	.byte	0x1
	.long	0x3b
	.long	.LFB34
	.long	.LFE34
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x7c2
	.uleb128 0x21
	.long	.LASF83
	.byte	0x1
	.word	0x1ba
	.long	0x3b
	.long	.LLST15
	.uleb128 0x25
	.long	.LASF84
	.byte	0x1
	.word	0x1bb
	.long	0x75f
	.byte	0x6
	.byte	0x3
	.long	registerMap
	.byte	0x9f
	.uleb128 0x23
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x1a
	.long	.LASF85
	.byte	0x1
	.word	0x1bc
	.long	0x3b
	.long	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF86
	.byte	0x1
	.word	0x1c5
	.byte	0x1
	.long	0x3b
	.long	.LFB35
	.long	.LFE35
	.long	.LLST17
	.byte	0x1
	.long	0x86f
	.uleb128 0x21
	.long	.LASF78
	.byte	0x1
	.word	0x1c5
	.long	0x3b
	.long	.LLST18
	.uleb128 0x21
	.long	.LASF87
	.byte	0x1
	.word	0x1c5
	.long	0x3b
	.long	.LLST19
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x22
	.long	.LASF88
	.byte	0x1
	.word	0x1ca
	.long	0x256
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x78
	.long	0x85c
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.word	0x1cd
	.long	0x3b
	.long	.LLST20
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.word	0x1ce
	.long	0x3b
	.long	.LLST21
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.word	0x1cf
	.long	0x3b
	.long	.LLST22
	.uleb128 0x1a
	.long	.LASF92
	.byte	0x1
	.word	0x1d0
	.long	0x3b
	.long	.LLST23
	.byte	0
	.uleb128 0x1f
	.long	.LVL60
	.long	0x6fb
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
	.uleb128 0x20
	.byte	0x1
	.long	.LASF93
	.byte	0x1
	.word	0x1e3
	.byte	0x1
	.long	0x3b
	.long	.LFB36
	.long	.LFE36
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x90c
	.uleb128 0x21
	.long	.LASF78
	.byte	0x1
	.word	0x1e3
	.long	0x3b
	.long	.LLST24
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x22
	.long	.LASF88
	.byte	0x1
	.word	0x1e7
	.long	0x256
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0xa8
	.long	0x8f9
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.word	0x1ea
	.long	0x3b
	.long	.LLST25
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.word	0x1eb
	.long	0x3b
	.long	.LLST26
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.word	0x1ec
	.long	0x3b
	.long	.LLST27
	.uleb128 0x1a
	.long	.LASF92
	.byte	0x1
	.word	0x1ed
	.long	0x3b
	.long	.LLST28
	.byte	0
	.uleb128 0x1f
	.long	.LVL74
	.long	0x6fb
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
	.uleb128 0x26
	.byte	0x1
	.long	.LASF94
	.byte	0x1
	.word	0x1fe
	.byte	0x1
	.long	0x3b
	.long	.LFB37
	.long	.LFE37
	.long	.LLST29
	.byte	0x1
	.long	0x978
	.uleb128 0x21
	.long	.LASF87
	.byte	0x1
	.word	0x1fe
	.long	0x3b
	.long	.LLST30
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x1ff
	.long	0x3b
	.long	.LLST31
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x200
	.long	0x3b
	.long	.LLST32
	.uleb128 0x1f
	.long	.LVL90
	.long	0x7c2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF95
	.byte	0x1
	.word	0x208
	.byte	0x1
	.long	0x3b
	.long	.LFB38
	.long	.LFE38
	.long	.LLST33
	.byte	0x1
	.long	0x9f3
	.uleb128 0x21
	.long	.LASF96
	.byte	0x1
	.word	0x208
	.long	0x437
	.long	.LLST34
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x209
	.long	0x3b
	.long	.LLST35
	.uleb128 0x1a
	.long	.LASF92
	.byte	0x1
	.word	0x20b
	.long	0x3b
	.long	.LLST36
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xd8
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x20c
	.long	0x3b
	.long	.LLST37
	.uleb128 0x1f
	.long	.LVL101
	.long	0x7c2
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
	.uleb128 0x27
	.byte	0x1
	.long	.LASF97
	.byte	0x1
	.word	0x223
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST38
	.byte	0x1
	.long	0xaa6
	.uleb128 0x21
	.long	.LASF78
	.byte	0x1
	.word	0x223
	.long	0x3b
	.long	.LLST39
	.uleb128 0x21
	.long	.LASF98
	.byte	0x1
	.word	0x223
	.long	0x3b
	.long	.LLST40
	.uleb128 0x23
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x22
	.long	.LASF88
	.byte	0x1
	.word	0x227
	.long	0x256
	.uleb128 0x1b
	.long	.LBB37
	.long	.LBE37
	.long	0xa93
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.word	0x22a
	.long	0x3b
	.long	.LLST41
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.word	0x22b
	.long	0x3b
	.long	.LLST42
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.word	0x22c
	.long	0x3b
	.long	.LLST43
	.uleb128 0x14
	.long	.LVL118
	.long	0x1ca5
	.uleb128 0x14
	.long	.LVL120
	.long	0x1cb2
	.byte	0
	.uleb128 0x1f
	.long	.LVL113
	.long	0x6fb
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
	.uleb128 0x10
	.byte	0x1
	.long	.LASF99
	.byte	0x1
	.byte	0xe2
	.long	.LFB28
	.long	.LFE28
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xac9
	.uleb128 0x14
	.long	.LVL121
	.long	0x9f3
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF100
	.byte	0x1
	.word	0x239
	.byte	0x1
	.long	0x3b
	.long	.LFB40
	.long	.LFE40
	.long	.LLST44
	.byte	0x1
	.long	0xb98
	.uleb128 0x21
	.long	.LASF101
	.byte	0x1
	.word	0x239
	.long	0x3b
	.long	.LLST45
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x23b
	.long	0x3b
	.long	.LLST46
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x1a
	.long	.LASF102
	.byte	0x1
	.word	0x23d
	.long	0x3b
	.long	.LLST47
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x23e
	.long	0x3b
	.long	.LLST48
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x1
	.word	0x23f
	.long	0x437
	.long	.LLST49
	.uleb128 0x22
	.long	.LASF58
	.byte	0x1
	.word	0x24e
	.long	0xb8
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x108
	.long	0xb8d
	.uleb128 0x1a
	.long	.LASF104
	.byte	0x1
	.word	0x240
	.long	0x3b
	.long	.LLST50
	.uleb128 0x23
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.word	0x244
	.long	0x3b
	.long	.LLST51
	.uleb128 0x1f
	.long	.LVL132
	.long	0x9f3
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
	.long	.LVL140
	.long	0x59a
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF105
	.byte	0x1
	.word	0x255
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST52
	.byte	0x1
	.long	0xc31
	.uleb128 0x21
	.long	.LASF106
	.byte	0x1
	.word	0x255
	.long	0x3b
	.long	.LLST53
	.uleb128 0x21
	.long	.LASF101
	.byte	0x1
	.word	0x255
	.long	0x3b
	.long	.LLST54
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x120
	.long	0xc17
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x1
	.word	0x258
	.long	0x3b
	.long	.LLST55
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x138
	.long	0xc06
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x1
	.word	0x25a
	.long	0x3b
	.long	.LLST56
	.byte	0
	.uleb128 0x1f
	.long	.LVL154
	.long	0xac9
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL155
	.long	0x1cbf
	.uleb128 0x1f
	.long	.LVL156
	.long	0x1cbf
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF109
	.byte	0x1
	.word	0x274
	.long	.LFB42
	.long	.LFE42
	.long	.LLST57
	.byte	0x1
	.long	0xc79
	.uleb128 0x23
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x275
	.long	0x3b
	.long	.LLST58
	.uleb128 0x1f
	.long	.LVL161
	.long	0x9f3
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
	.uleb128 0x26
	.byte	0x1
	.long	.LASF110
	.byte	0x1
	.word	0x27a
	.byte	0x1
	.long	0x3b
	.long	.LFB43
	.long	.LFE43
	.long	.LLST59
	.byte	0x1
	.long	0xd02
	.uleb128 0x21
	.long	.LASF101
	.byte	0x1
	.word	0x27a
	.long	0x3b
	.long	.LLST60
	.uleb128 0x21
	.long	.LASF111
	.byte	0x1
	.word	0x27a
	.long	0x3b
	.long	.LLST61
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x27d
	.long	0x3b
	.long	.LLST62
	.uleb128 0x1b
	.long	.LBB49
	.long	.LBE49
	.long	0xcef
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x1
	.word	0x27f
	.long	0x437
	.long	.LLST63
	.uleb128 0x14
	.long	.LVL170
	.long	0x978
	.byte	0
	.uleb128 0x14
	.long	.LVL174
	.long	0x55e
	.uleb128 0x14
	.long	.LVL176
	.long	0x1ccc
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF112
	.byte	0x1
	.word	0x289
	.byte	0x1
	.long	0x3b
	.long	.LFB44
	.long	.LFE44
	.long	.LLST64
	.byte	0x1
	.long	0xd96
	.uleb128 0x21
	.long	.LASF101
	.byte	0x1
	.word	0x289
	.long	0x3b
	.long	.LLST65
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x28c
	.long	0x3b
	.long	.LLST66
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x1
	.word	0x28d
	.long	0x437
	.long	.LLST67
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x1
	.word	0x28e
	.long	0x3b
	.long	.LLST68
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x1
	.word	0x28f
	.long	0x3b
	.long	.LLST69
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x158
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x290
	.long	0x3b
	.long	.LLST70
	.uleb128 0x1f
	.long	.LVL187
	.long	0x86f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF116
	.byte	0x1
	.word	0x2ac
	.byte	0x1
	.long	0x3b
	.long	.LFB45
	.long	.LFE45
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xe0a
	.uleb128 0x21
	.long	.LASF101
	.byte	0x1
	.word	0x2ac
	.long	0x3b
	.long	.LLST71
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x2ae
	.long	0x3b
	.long	.LLST72
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x1
	.word	0x2af
	.long	0x437
	.long	.LLST73
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x1
	.word	0x2b0
	.long	0x3b
	.long	.LLST74
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x178
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2b1
	.long	0x3b
	.long	.LLST75
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF117
	.byte	0x1
	.word	0x2c1
	.long	.LFB46
	.long	.LFE46
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xe9f
	.uleb128 0x1a
	.long	.LASF118
	.byte	0x1
	.word	0x2c2
	.long	0xe9f
	.long	.LLST76
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x190
	.long	0xe4c
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2c5
	.long	0x3b
	.long	.LLST77
	.byte	0
	.uleb128 0x14
	.long	.LVL213
	.long	0x1cd9
	.uleb128 0x1d
	.long	.LVL214
	.long	0x1c8b
	.long	0xe77
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
	.uleb128 0x14
	.long	.LVL215
	.long	0x1ce6
	.uleb128 0x1f
	.long	.LVL216
	.long	0x1c8b
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
	.long	0x310
	.uleb128 0x19
	.byte	0x1
	.long	.LASF119
	.byte	0x1
	.word	0x2e9
	.long	.LFB47
	.long	.LFE47
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xf03
	.uleb128 0x1b
	.long	.LBB57
	.long	.LBE57
	.long	0xedb
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2eb
	.long	0x3b
	.long	.LLST78
	.byte	0
	.uleb128 0x14
	.long	.LVL220
	.long	0x1cf3
	.uleb128 0x1f
	.long	.LVL221
	.long	0x1c8b
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
	.long	.LASF120
	.byte	0x1
	.word	0x325
	.byte	0x1
	.long	0x1f6
	.long	.LFB49
	.long	.LFE49
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xf4d
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x325
	.long	0x3b
	.long	.LLST79
	.uleb128 0x29
	.long	.LASF33
	.byte	0x1
	.word	0x325
	.long	0x3b
	.byte	0x1
	.byte	0x66
	.uleb128 0x22
	.long	.LASF68
	.byte	0x1
	.word	0x326
	.long	0x1f6
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF121
	.byte	0x1
	.word	0x333
	.long	.LFB50
	.long	.LFE50
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xfbc
	.uleb128 0x23
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x334
	.long	0x3b
	.long	.LLST80
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1a8
	.uleb128 0x1a
	.long	.LASF122
	.byte	0x1
	.word	0x335
	.long	0x3b
	.long	.LLST81
	.uleb128 0x1a
	.long	.LASF123
	.byte	0x1
	.word	0x336
	.long	0x3b
	.long	.LLST82
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1a8
	.uleb128 0x1a
	.long	.LASF124
	.byte	0x1
	.word	0x337
	.long	0x3b
	.long	.LLST83
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF125
	.byte	0x1
	.word	0x34b
	.long	.LFB51
	.long	.LFE51
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x103b
	.uleb128 0x1b
	.long	.LBB63
	.long	.LBE63
	.long	0x1006
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x34c
	.long	0x29
	.long	.LLST84
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.word	0x34e
	.long	0x29
	.long	.LLST85
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL241
	.long	0x1d00
	.uleb128 0x1d
	.long	.LVL242
	.long	0x1c8b
	.long	0x1031
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
	.long	.LVL243
	.long	0xf4d
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF126
	.byte	0x1
	.word	0x377
	.byte	0x1
	.long	0x256
	.long	.LFB52
	.long	.LFE52
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x10af
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x377
	.long	0x3b
	.long	.LLST86
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x377
	.long	0x3b
	.long	.LLST87
	.uleb128 0x22
	.long	.LASF68
	.byte	0x1
	.word	0x379
	.long	0x256
	.uleb128 0x23
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.word	0x37c
	.long	0x10af
	.long	.LLST88
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x37e
	.long	0x3b
	.long	.LLST89
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x294
	.uleb128 0x20
	.byte	0x1
	.long	.LASF127
	.byte	0x1
	.word	0x38e
	.byte	0x1
	.long	0x226
	.long	.LFB53
	.long	.LFE53
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1129
	.uleb128 0x21
	.long	.LASF38
	.byte	0x1
	.word	0x38e
	.long	0x3b
	.long	.LLST90
	.uleb128 0x22
	.long	.LASF68
	.byte	0x1
	.word	0x392
	.long	0x226
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.word	0x393
	.long	0x10af
	.long	.LLST91
	.uleb128 0x1a
	.long	.LASF35
	.byte	0x1
	.word	0x395
	.long	0x3b
	.long	.LLST92
	.uleb128 0x23
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x397
	.long	0x3b
	.long	.LLST93
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF128
	.byte	0x1
	.word	0x3a8
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST94
	.byte	0x1
	.long	0x1238
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x3a8
	.long	0x3b
	.long	.LLST95
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x3a8
	.long	0x3b
	.long	.LLST96
	.uleb128 0x21
	.long	.LASF98
	.byte	0x1
	.word	0x3a8
	.long	0x3b
	.long	.LLST97
	.uleb128 0x22
	.long	.LASF129
	.byte	0x1
	.word	0x3a9
	.long	0x256
	.uleb128 0x1a
	.long	.LASF130
	.byte	0x1
	.word	0x3ac
	.long	0x3b
	.long	.LLST98
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.word	0x3ad
	.long	0x3b
	.long	.LLST99
	.uleb128 0x1b
	.long	.LBB68
	.long	.LBE68
	.long	0x11c3
	.uleb128 0x22
	.long	.LASF131
	.byte	0x1
	.word	0x3b2
	.long	0xe2
	.uleb128 0x14
	.long	.LVL267
	.long	0x1d0d
	.byte	0
	.uleb128 0x1d
	.long	.LVL263
	.long	0x103b
	.long	0x11dd
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL269
	.long	0x1cb2
	.long	0x11f7
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL270
	.long	0x1ca5
	.long	0x1211
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL271
	.long	0x1cbf
	.uleb128 0x1d
	.long	.LVL272
	.long	0x1cbf
	.long	0x122e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL273
	.long	0x1cbf
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF132
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST100
	.byte	0x1
	.long	0x130a
	.uleb128 0x16
	.long	.LASF106
	.byte	0x1
	.byte	0x8f
	.long	0x3b
	.long	.LLST101
	.uleb128 0x11
	.long	.LASF133
	.byte	0x1
	.byte	0x90
	.long	0x3b
	.long	.LLST102
	.uleb128 0x23
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0x92
	.long	0x3b
	.long	.LLST103
	.uleb128 0x23
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0x96
	.long	0x3b
	.long	.LLST104
	.uleb128 0x11
	.long	.LASF134
	.byte	0x1
	.byte	0x9b
	.long	0x3b
	.long	.LLST105
	.uleb128 0x1b
	.long	.LBB71
	.long	.LBE71
	.long	0x12da
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x98
	.long	0x3b
	.long	.LLST106
	.uleb128 0x1f
	.long	.LVL286
	.long	0x1129
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL291
	.long	0x1cbf
	.uleb128 0x1d
	.long	.LVL292
	.long	0x1cbf
	.long	0x12f7
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL293
	.long	0x1cbf
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF135
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST107
	.byte	0x1
	.long	0x13a8
	.uleb128 0x16
	.long	.LASF35
	.byte	0x1
	.byte	0xab
	.long	0x3b
	.long	.LLST108
	.uleb128 0x11
	.long	.LASF134
	.byte	0x1
	.byte	0xb3
	.long	0x3b
	.long	.LLST109
	.uleb128 0x1b
	.long	.LBB72
	.long	.LBE72
	.long	0x137b
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0xae
	.long	0x3b
	.long	.LLST110
	.uleb128 0x1f
	.long	.LVL300
	.long	0x1129
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
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL305
	.long	0x1cbf
	.uleb128 0x1d
	.long	.LVL306
	.long	0x1cbf
	.long	0x1398
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL307
	.long	0x1cbf
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF136
	.byte	0x1
	.byte	0xbd
	.long	.LFB25
	.long	.LFE25
	.long	.LLST111
	.byte	0x1
	.long	0x13eb
	.uleb128 0x23
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0xbe
	.long	0x3b
	.long	.LLST112
	.uleb128 0x1f
	.long	.LVL311
	.long	0x130a
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
	.long	.LASF137
	.byte	0x1
	.byte	0xc6
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x140e
	.uleb128 0x14
	.long	.LVL314
	.long	0x13a8
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF138
	.byte	0x1
	.word	0x2fd
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST113
	.byte	0x1
	.long	0x14fc
	.uleb128 0x21
	.long	.LASF106
	.byte	0x1
	.word	0x2fd
	.long	0x3b
	.long	.LLST114
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x2fd
	.long	0x3b
	.long	.LLST115
	.uleb128 0x21
	.long	.LASF98
	.byte	0x1
	.word	0x2fd
	.long	0x3b
	.long	.LLST116
	.uleb128 0x1a
	.long	.LASF139
	.byte	0x1
	.word	0x2ff
	.long	0x3b
	.long	.LLST117
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x1d8
	.long	0x14d5
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x300
	.long	0x3b
	.long	.LLST118
	.uleb128 0x23
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x1a
	.long	.LASF140
	.byte	0x1
	.word	0x303
	.long	0x29
	.long	.LLST119
	.uleb128 0x23
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x1a
	.long	.LASF35
	.byte	0x1
	.word	0x306
	.long	0x3b
	.long	.LLST120
	.uleb128 0x1a
	.long	.LASF141
	.byte	0x1
	.word	0x307
	.long	0x3b
	.long	.LLST121
	.uleb128 0x1f
	.long	.LVL324
	.long	0x1129
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
	.uleb128 0x14
	.long	.LVL330
	.long	0x1cbf
	.uleb128 0x1d
	.long	.LVL331
	.long	0x1cbf
	.long	0x14f2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL332
	.long	0x1cbf
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF142
	.byte	0x1
	.byte	0xf3
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x15df
	.uleb128 0x16
	.long	.LASF143
	.byte	0x1
	.byte	0xf3
	.long	0x3b
	.long	.LLST122
	.uleb128 0x1b
	.long	.LBB78
	.long	.LBE78
	.long	0x1579
	.uleb128 0x11
	.long	.LASF144
	.byte	0x1
	.byte	0xfb
	.long	0x3b
	.long	.LLST123
	.uleb128 0x11
	.long	.LASF145
	.byte	0x1
	.byte	0xfb
	.long	0x3b
	.long	.LLST124
	.uleb128 0x2c
	.long	0x4a5
	.long	.LBB79
	.long	.LBE79
	.byte	0x1
	.byte	0xfb
	.uleb128 0x2d
	.long	0x4b2
	.long	.LBB81
	.long	.LBE81
	.byte	0x1
	.byte	0xfb
	.uleb128 0x2e
	.long	0x4bf
	.long	.LLST125
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LBB83
	.long	.LBE83
	.long	0x15d5
	.uleb128 0x1a
	.long	.LASF106
	.byte	0x1
	.word	0x12a
	.long	0x3b
	.long	.LLST126
	.uleb128 0x1a
	.long	.LASF146
	.byte	0x1
	.word	0x12b
	.long	0x3b
	.long	.LLST127
	.uleb128 0x1d
	.long	.LVL364
	.long	0x140e
	.long	0x15b9
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL367
	.long	0x140e
	.uleb128 0x14
	.long	.LVL369
	.long	0x1238
	.uleb128 0x14
	.long	.LVL371
	.long	0xb98
	.byte	0
	.uleb128 0x14
	.long	.LVL347
	.long	0x5d3
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF147
	.byte	0x1
	.word	0x14f
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1659
	.uleb128 0x21
	.long	.LASF148
	.byte	0x1
	.word	0x14f
	.long	0x3b
	.long	.LLST128
	.uleb128 0x1a
	.long	.LASF106
	.byte	0x1
	.word	0x153
	.long	0x3b
	.long	.LLST129
	.uleb128 0x1a
	.long	.LASF146
	.byte	0x1
	.word	0x154
	.long	0x3b
	.long	.LLST130
	.uleb128 0x1d
	.long	.LVL376
	.long	0x140e
	.long	0x163d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL379
	.long	0x140e
	.uleb128 0x14
	.long	.LVL381
	.long	0x1238
	.uleb128 0x14
	.long	.LVL385
	.long	0xb98
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF149
	.byte	0x1
	.word	0x3d0
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST131
	.byte	0x1
	.long	0x18d6
	.uleb128 0x21
	.long	.LASF150
	.byte	0x1
	.word	0x3d0
	.long	0xe2
	.long	.LLST132
	.uleb128 0x1a
	.long	.LASF151
	.byte	0x1
	.word	0x3d2
	.long	0x3b
	.long	.LLST133
	.uleb128 0x1a
	.long	.LASF152
	.byte	0x1
	.word	0x3d3
	.long	0x3b
	.long	.LLST134
	.uleb128 0x1a
	.long	.LASF153
	.byte	0x1
	.word	0x3d4
	.long	0x3b
	.long	.LLST135
	.uleb128 0x1a
	.long	.LASF47
	.byte	0x1
	.word	0x3d5
	.long	0x226
	.long	.LLST136
	.uleb128 0x1a
	.long	.LASF154
	.byte	0x1
	.word	0x3d6
	.long	0x1f6
	.long	.LLST137
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x1f0
	.long	0x18cc
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x3d9
	.long	0x3b
	.long	.LLST138
	.uleb128 0x1b
	.long	.LBB85
	.long	.LBE85
	.long	0x18a7
	.uleb128 0x1a
	.long	.LASF146
	.byte	0x1
	.word	0x3f2
	.long	0x3b
	.long	.LLST139
	.uleb128 0x1d
	.long	.LVL393
	.long	0xf03
	.long	0x1722
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL395
	.long	0x1cbf
	.uleb128 0x1d
	.long	.LVL396
	.long	0x1cbf
	.long	0x173f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL397
	.long	0x1cbf
	.uleb128 0x1d
	.long	.LVL401
	.long	0x1129
	.long	0x1767
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL402
	.long	0x1129
	.long	0x1786
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL403
	.long	0x1129
	.long	0x17a5
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL404
	.long	0x1129
	.long	0x17be
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
	.long	.LVL405
	.long	0x1129
	.long	0x17dd
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL406
	.long	0x1129
	.long	0x17fc
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL407
	.long	0x1129
	.long	0x1815
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
	.long	.LVL408
	.long	0x1129
	.long	0x1834
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL409
	.long	0x1129
	.long	0x1853
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL410
	.long	0x1129
	.long	0x186c
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
	.long	.LVL411
	.long	0x1129
	.long	0x188b
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL412
	.long	0x1129
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
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL391
	.long	0x10b5
	.long	0x18bb
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL413
	.long	0x765
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL387
	.long	0x1d1a
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF155
	.byte	0x1
	.word	0x429
	.long	.LFB56
	.long	.LFE56
	.long	.LLST140
	.byte	0x1
	.long	0x194f
	.uleb128 0x23
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x42a
	.long	0x3b
	.long	.LLST141
	.uleb128 0x23
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x1
	.word	0x42b
	.long	0x3b
	.long	.LLST142
	.uleb128 0x14
	.long	.LVL429
	.long	0x1cbf
	.uleb128 0x1d
	.long	.LVL430
	.long	0x1cbf
	.long	0x193d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL431
	.long	0x1cbf
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
	.long	.LASF157
	.byte	0x1
	.word	0x434
	.long	.LFB57
	.long	.LFE57
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x197a
	.uleb128 0x1f
	.long	.LVL434
	.long	0x1cbf
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
	.long	.LASF158
	.byte	0x1
	.byte	0xd1
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x19f1
	.uleb128 0x1b
	.long	.LBB89
	.long	.LBE89
	.long	0x19e7
	.uleb128 0x11
	.long	.LASF144
	.byte	0x1
	.byte	0xd6
	.long	0x3b
	.long	.LLST143
	.uleb128 0x11
	.long	.LASF145
	.byte	0x1
	.byte	0xd6
	.long	0x3b
	.long	.LLST144
	.uleb128 0x2c
	.long	0x4a5
	.long	.LBB90
	.long	.LBE90
	.byte	0x1
	.byte	0xd6
	.uleb128 0x2d
	.long	0x4b2
	.long	.LBB92
	.long	.LBE92
	.byte	0x1
	.byte	0xd6
	.uleb128 0x2e
	.long	0x4bf
	.long	.LLST145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL443
	.long	0x194f
	.byte	0
	.uleb128 0x7
	.long	0x1a01
	.long	0x1a01
	.uleb128 0x8
	.long	0x82
	.byte	0x8
	.byte	0
	.uleb128 0x30
	.long	0x112
	.uleb128 0x31
	.long	.LASF159
	.byte	0x6
	.byte	0x53
	.long	0x1a13
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	0x19f1
	.uleb128 0x7
	.long	0x196
	.long	0x1a28
	.uleb128 0x8
	.long	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x31
	.long	.LASF160
	.byte	0x6
	.byte	0xaf
	.long	0x1a18
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	.LASF161
	.byte	0x6
	.byte	0xb6
	.long	0x1a42
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	0x3b
	.uleb128 0x31
	.long	.LASF162
	.byte	0x6
	.byte	0xbf
	.long	0x1c6
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0x3b
	.long	0x1a64
	.uleb128 0x8
	.long	0x82
	.byte	0x2
	.byte	0
	.uleb128 0x31
	.long	.LASF163
	.byte	0x8
	.byte	0x35
	.long	0x1a54
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	.LASF164
	.byte	0x8
	.byte	0x9e
	.long	0x1a42
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.long	.LASF165
	.byte	0x1
	.byte	0x2d
	.long	0x449
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	manualMap
	.uleb128 0x7
	.long	0x2c4
	.long	0x1aa0
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x32
	.long	.LASF166
	.byte	0x1
	.byte	0x2e
	.long	0x1a90
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ManualNoteRange
	.uleb128 0x32
	.long	.LASF167
	.byte	0x1
	.byte	0x2f
	.long	0x45f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiInMap
	.uleb128 0x32
	.long	.LASF168
	.byte	0x1
	.byte	0x37
	.long	0x340
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiThrough
	.uleb128 0x32
	.long	.LASF169
	.byte	0x1
	.byte	0x30
	.long	0x475
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiOutMap
	.uleb128 0x32
	.long	.LASF170
	.byte	0x1
	.byte	0x34
	.long	0x485
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerMap
	.uleb128 0x32
	.long	.LASF171
	.byte	0x1
	.byte	0x35
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerCount
	.uleb128 0x32
	.long	.LASF172
	.byte	0x1
	.byte	0x36
	.long	0x495
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	programMap
	.uleb128 0x32
	.long	.LASF173
	.byte	0x1
	.byte	0x38
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_RegisterChanged
	.uleb128 0x32
	.long	.LASF174
	.byte	0x1
	.byte	0x31
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxActivceSensing
	.uleb128 0x32
	.long	.LASF175
	.byte	0x1
	.byte	0x32
	.long	0x42c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Setting
	.uleb128 0x32
	.long	.LASF176
	.byte	0x1
	.byte	0x80
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutNote
	.uleb128 0x32
	.long	.LASF177
	.byte	0x1
	.byte	0x81
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutManual
	.uleb128 0x32
	.long	.LASF178
	.byte	0x1
	.byte	0x82
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInNote
	.uleb128 0x32
	.long	.LASF179
	.byte	0x1
	.byte	0x83
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInChannel
	.uleb128 0x32
	.long	.LASF180
	.byte	0x1
	.byte	0x84
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInManual
	.uleb128 0x32
	.long	.LASF181
	.byte	0x1
	.byte	0x85
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastProgram
	.uleb128 0x7
	.long	0x3b
	.long	0x1bd0
	.uleb128 0x8
	.long	0x82
	.byte	0xb
	.byte	0
	.uleb128 0x32
	.long	.LASF182
	.byte	0x1
	.byte	0x1d
	.long	0x1bc0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Couplers
	.uleb128 0x32
	.long	.LASF183
	.byte	0x1
	.byte	0x1e
	.long	0x1bf4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cplInfo
	.uleb128 0x33
	.uleb128 0x7
	.long	0x3b
	.long	0x1c05
	.uleb128 0x8
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x32
	.long	.LASF184
	.byte	0x9
	.byte	0xad
	.long	0x1bf5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x32
	.long	.LASF185
	.byte	0x1
	.byte	0x33
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiEEPromLoadError
	.uleb128 0x32
	.long	.LASF186
	.byte	0x1
	.byte	0x7b
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastCommand
	.uleb128 0x32
	.long	.LASF187
	.byte	0x1
	.byte	0x7c
	.long	0x3de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByte
	.uleb128 0x32
	.long	.LASF188
	.byte	0x1
	.byte	0x7d
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteCount
	.uleb128 0x32
	.long	.LASF189
	.byte	0x1
	.byte	0x7e
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteExpected
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF190
	.long	.LASF190
	.byte	0x6
	.byte	0x5a
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF191
	.long	.LASF191
	.byte	0xa
	.byte	0x24
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF192
	.long	.LASF192
	.byte	0xb
	.byte	0x32
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF193
	.long	.LASF193
	.byte	0xa
	.byte	0x25
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF194
	.long	.LASF194
	.byte	0x6
	.byte	0xd6
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF195
	.long	.LASF195
	.byte	0x6
	.byte	0xd7
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF196
	.long	.LASF196
	.byte	0x8
	.byte	0x90
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF197
	.long	.LASF197
	.byte	0xa
	.byte	0x2f
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF198
	.long	.LASF198
	.byte	0xa
	.byte	0x20
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF199
	.long	.LASF199
	.byte	0xa
	.byte	0x27
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF200
	.long	.LASF200
	.byte	0xa
	.byte	0x21
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF201
	.long	.LASF201
	.byte	0xa
	.byte	0x1f
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF202
	.long	.LASF202
	.byte	0x5
	.byte	0x46
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF203
	.long	.LASF203
	.byte	0x8
	.byte	0x73
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
	.uleb128 0x29
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.long	.LFE31
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
	.long	.LFE31
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
	.long	.LFE33
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
	.long	.LVL53
	.long	.LVL55
	.word	0x1
	.byte	0x68
	.long	.LVL55
	.long	.LVL56
	.word	0x1
	.byte	0x66
	.long	.LVL56
	.long	.LVL58
	.word	0x1
	.byte	0x68
	.long	.LVL58
	.long	.LFE34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL53
	.long	.LVL54
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL54
	.long	.LFE34
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST17:
	.long	.LFB35
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI0
	.long	.LFE35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST18:
	.long	.LVL59
	.long	.LVL60-1
	.word	0x1
	.byte	0x68
	.long	.LVL60-1
	.long	.LVL71
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL71
	.long	.LVL72
	.word	0x1
	.byte	0x68
	.long	.LVL72
	.long	.LFE35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL59
	.long	.LVL60-1
	.word	0x1
	.byte	0x66
	.long	.LVL60-1
	.long	.LVL71
	.word	0x1
	.byte	0x6c
	.long	.LVL71
	.long	.LVL72
	.word	0x1
	.byte	0x66
	.long	.LVL72
	.long	.LFE35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL61
	.long	.LVL63
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST21:
	.long	.LVL62
	.long	.LVL67
	.word	0x1
	.byte	0x62
	.long	.LVL69
	.long	.LVL70
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST22:
	.long	.LVL64
	.long	.LVL66
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST23:
	.long	.LVL65
	.long	.LVL68
	.word	0x1
	.byte	0x64
	.long	.LVL69
	.long	.LVL70
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST24:
	.long	.LVL73
	.long	.LVL74-1
	.word	0x1
	.byte	0x68
	.long	.LVL74-1
	.long	.LVL85
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL85
	.long	.LVL86
	.word	0x1
	.byte	0x68
	.long	.LVL86
	.long	.LFE36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL75
	.long	.LVL81
	.word	0x1
	.byte	0x69
	.long	.LVL83
	.long	.LVL85
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST26:
	.long	.LVL76
	.long	.LVL80
	.word	0x1
	.byte	0x62
	.long	.LVL80
	.long	.LVL81
	.word	0x5
	.byte	0x89
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL83
	.long	.LVL85
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST27:
	.long	.LVL77
	.long	.LVL79
	.word	0x1
	.byte	0x63
	.long	.LVL79
	.long	.LVL81
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
	.long	.LVL83
	.long	.LVL85
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
.LLST28:
	.long	.LVL78
	.long	.LVL82
	.word	0x1
	.byte	0x68
	.long	.LVL83
	.long	.LVL84
	.word	0x1
	.byte	0x68
	.long	.LVL84
	.long	.LVL85
	.word	0x1e
	.byte	0x31
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
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LFB37
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
	.long	.LFE37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST30:
	.long	.LVL87
	.long	.LVL89
	.word	0x1
	.byte	0x68
	.long	.LVL89
	.long	.LVL95
	.word	0x1
	.byte	0x61
	.long	.LVL95
	.long	.LFE37
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL88
	.long	.LVL89
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL89
	.long	.LVL93
	.word	0x1
	.byte	0x6d
	.long	.LVL93
	.long	.LFE37
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST32:
	.long	.LVL88
	.long	.LVL89
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL89
	.long	.LVL94
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST33:
	.long	.LFB38
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI9
	.long	.LFE38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST34:
	.long	.LVL96
	.long	.LVL98
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL98
	.long	.LVL104
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL104
	.long	.LVL105
	.word	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.long	.LVL105
	.long	.LVL106
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL106
	.long	.LVL111
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST35:
	.long	.LVL97
	.long	.LVL98
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL98
	.long	.LVL110
	.word	0x1
	.byte	0x60
	.long	.LVL110
	.long	.LFE38
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST36:
	.long	.LVL97
	.long	.LVL98
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL98
	.long	.LVL108
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST37:
	.long	.LVL97
	.long	.LVL98
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL98
	.long	.LVL109
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST38:
	.long	.LFB39
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI10
	.long	.LFE39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST39:
	.long	.LVL112
	.long	.LVL113-1
	.word	0x1
	.byte	0x68
	.long	.LVL113-1
	.long	.LFE39
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LVL112
	.long	.LVL113-1
	.word	0x1
	.byte	0x66
	.long	.LVL113-1
	.long	.LVL120
	.word	0x1
	.byte	0x6c
	.long	.LVL120
	.long	.LFE39
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL114
	.long	.LVL116
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST42:
	.long	.LVL115
	.long	.LVL118-1
	.word	0x1
	.byte	0x68
	.long	.LVL119
	.long	.LVL120-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST43:
	.long	.LVL117
	.long	.LVL118-1
	.word	0x1
	.byte	0x69
	.long	.LVL119
	.long	.LVL120-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST44:
	.long	.LFB40
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI19
	.long	.LFE40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST45:
	.long	.LVL122
	.long	.LVL125
	.word	0x1
	.byte	0x68
	.long	.LVL125
	.long	.LVL139
	.word	0x1
	.byte	0x5e
	.long	.LVL139
	.long	.LVL141
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL141
	.long	.LVL142
	.word	0x1
	.byte	0x68
	.long	.LVL142
	.long	.LFE40
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL123
	.long	.LVL127
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL127
	.long	.LVL141
	.word	0x1
	.byte	0x60
	.long	.LVL141
	.long	.LVL142
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL142
	.long	.LVL143
	.word	0x1
	.byte	0x60
	.long	.LVL143
	.long	.LFE40
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST47:
	.long	.LVL129
	.long	.LVL137
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST48:
	.long	.LVL124
	.long	.LVL127
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL127
	.long	.LVL141
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST49:
	.long	.LVL126
	.long	.LVL128
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL128
	.long	.LVL137
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL137
	.long	.LVL138
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
	.long	.LVL126
	.long	.LVL127
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL127
	.long	.LVL141
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST51:
	.long	.LVL129
	.long	.LVL130
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL130
	.long	.LVL137
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST52:
	.long	.LFB41
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
	.long	.LFE41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST53:
	.long	.LVL144
	.long	.LVL145
	.word	0x1
	.byte	0x68
	.long	.LVL145
	.long	.LVL158
	.word	0x1
	.byte	0x6c
	.long	.LVL158
	.long	.LFE41
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST54:
	.long	.LVL144
	.long	.LVL154-1
	.word	0x1
	.byte	0x66
	.long	.LVL154-1
	.long	.LVL157
	.word	0x1
	.byte	0x6d
	.long	.LVL157
	.long	.LFE41
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST55:
	.long	.LVL152
	.long	.LVL153
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST56:
	.long	.LVL146
	.long	.LVL148
	.word	0x1
	.byte	0x68
	.long	.LVL149
	.long	.LVL150
	.word	0x1
	.byte	0x68
	.long	.LVL151
	.long	.LVL152
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST57:
	.long	.LFB42
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI22
	.long	.LFE42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST58:
	.long	.LVL159
	.long	.LVL160
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL160
	.long	.LVL163
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST59:
	.long	.LFB43
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
	.long	.LFE43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST60:
	.long	.LVL164
	.long	.LVL166
	.word	0x1
	.byte	0x68
	.long	.LVL166
	.long	.LVL167
	.word	0x1
	.byte	0x62
	.long	.LVL167
	.long	.LVL172
	.word	0x1
	.byte	0x6c
	.long	.LVL172
	.long	.LVL173
	.word	0x1
	.byte	0x68
	.long	.LVL173
	.long	.LVL175
	.word	0x1
	.byte	0x6c
	.long	.LVL175
	.long	.LFE43
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST61:
	.long	.LVL164
	.long	.LVL170-1
	.word	0x1
	.byte	0x66
	.long	.LVL170-1
	.long	.LVL178
	.word	0x1
	.byte	0x60
	.long	.LVL178
	.long	.LFE43
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST62:
	.long	.LVL165
	.long	.LVL171
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL171
	.long	.LVL172
	.word	0x1
	.byte	0x61
	.long	.LVL172
	.long	.LVL173
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL173
	.long	.LVL177
	.word	0x1
	.byte	0x61
	.long	.LVL177
	.long	.LFE43
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST63:
	.long	.LVL168
	.long	.LVL169
	.word	0x9
	.byte	0x88
	.sleb128 0
	.byte	0x3
	.long	programMap
	.byte	0x22
	.byte	0x9f
	.long	.LVL169
	.long	.LVL170-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST64:
	.long	.LFB44
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
	.long	.LFE44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST65:
	.long	.LVL179
	.long	.LVL181
	.word	0x1
	.byte	0x68
	.long	.LVL181
	.long	.LFE44
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST66:
	.long	.LVL180
	.long	.LVL183
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL183
	.long	.LVL198
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST67:
	.long	.LVL182
	.long	.LVL184
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL184
	.long	.LVL186
	.word	0x3
	.byte	0x80
	.sleb128 1
	.byte	0x9f
	.long	.LVL186
	.long	.LVL197
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
	.long	.LVL182
	.long	.LVL183
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL183
	.long	.LVL195
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST69:
	.long	.LVL187
	.long	.LVL190
	.word	0x1
	.byte	0x68
	.long	.LVL191
	.long	.LVL192
	.word	0x1
	.byte	0x68
	.long	.LVL193
	.long	.LVL194
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST70:
	.long	.LVL182
	.long	.LVL183
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL183
	.long	.LVL196
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST71:
	.long	.LVL199
	.long	.LVL200
	.word	0x1
	.byte	0x68
	.long	.LVL200
	.long	.LFE45
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST72:
	.long	.LVL199
	.long	.LVL202
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL202
	.long	.LFE45
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST73:
	.long	.LVL201
	.long	.LVL203
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL203
	.long	.LVL205
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL205
	.long	.LFE45
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST74:
	.long	.LVL201
	.long	.LVL202
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL202
	.long	.LFE45
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST75:
	.long	.LVL201
	.long	.LVL202
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL202
	.long	.LFE45
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST76:
	.long	.LVL210
	.long	.LVL213-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST77:
	.long	.LVL209
	.long	.LVL210
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	.LVL210
	.long	.LVL213-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST78:
	.long	.LVL217
	.long	.LVL218
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL218
	.long	.LVL220-1
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST79:
	.long	.LVL222
	.long	.LVL223
	.word	0x1
	.byte	0x68
	.long	.LVL223
	.long	.LVL224
	.word	0x1
	.byte	0x6e
	.long	.LVL224
	.long	.LFE49
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST80:
	.long	.LVL225
	.long	.LVL226
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL226
	.long	.LFE50
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST81:
	.long	.LVL226
	.long	.LVL232
	.word	0x1
	.byte	0x65
	.long	.LVL233
	.long	.LVL234
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST82:
	.long	.LVL226
	.long	.LVL232
	.word	0x1
	.byte	0x66
	.long	.LVL233
	.long	.LVL234
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST83:
	.long	.LVL226
	.long	.LVL227
	.word	0x1
	.byte	0x64
	.long	.LVL227
	.long	.LVL228
	.word	0x1
	.byte	0x62
	.long	.LVL228
	.long	.LVL232
	.word	0x1
	.byte	0x64
	.long	.LVL233
	.long	.LVL234
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST84:
	.long	.LVL235
	.long	.LVL236
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL236
	.long	.LVL241-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST85:
	.long	.LVL236
	.long	.LVL238
	.word	0x1
	.byte	0x62
	.long	.LVL239
	.long	.LVL240
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST86:
	.long	.LVL244
	.long	.LVL246
	.word	0x1
	.byte	0x68
	.long	.LVL246
	.long	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST87:
	.long	.LVL244
	.long	.LVL247
	.word	0x1
	.byte	0x66
	.long	.LVL247
	.long	.LVL249
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL249
	.long	.LFE52
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST88:
	.long	.LVL245
	.long	.LVL252
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST89:
	.long	.LVL245
	.long	.LVL246
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL246
	.long	.LVL248
	.word	0x1
	.byte	0x68
	.long	.LVL249
	.long	.LVL252
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST90:
	.long	.LVL253
	.long	.LVL256
	.word	0x1
	.byte	0x68
	.long	.LVL256
	.long	.LVL257
	.word	0x1
	.byte	0x66
	.long	.LVL257
	.long	.LVL261
	.word	0x1
	.byte	0x68
	.long	.LVL261
	.long	.LFE53
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST91:
	.long	.LVL254
	.long	.LFE53
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST92:
	.long	.LVL253
	.long	.LVL254
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL254
	.long	.LFE53
	.word	0x1
	.byte	0x6b
	.long	0
	.long	0
.LLST93:
	.long	.LVL254
	.long	.LVL255
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL255
	.long	.LFE53
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST94:
	.long	.LFB54
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
	.long	.LFE54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST95:
	.long	.LVL262
	.long	.LVL263-1
	.word	0x1
	.byte	0x68
	.long	.LVL263-1
	.long	.LVL275
	.word	0x1
	.byte	0x6c
	.long	.LVL275
	.long	.LFE54
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST96:
	.long	.LVL262
	.long	.LVL263-1
	.word	0x1
	.byte	0x66
	.long	.LVL263-1
	.long	.LVL277
	.word	0x1
	.byte	0x60
	.long	.LVL277
	.long	.LFE54
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST97:
	.long	.LVL262
	.long	.LVL263-1
	.word	0x1
	.byte	0x64
	.long	.LVL263-1
	.long	.LVL274
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST98:
	.long	.LVL264
	.long	.LVL278
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST99:
	.long	.LVL265
	.long	.LVL276
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST100:
	.long	.LFB23
	.long	.LCFI38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI38
	.long	.LCFI39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI39
	.long	.LCFI40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI40
	.long	.LCFI41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI41
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI42
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI43
	.long	.LCFI44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI44
	.long	.LCFI45
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI45
	.long	.LCFI46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI46
	.long	.LFE23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST101:
	.long	.LVL279
	.long	.LVL281
	.word	0x1
	.byte	0x68
	.long	.LVL281
	.long	.LVL296
	.word	0x1
	.byte	0x5c
	.long	.LVL296
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST102:
	.long	.LVL280
	.long	.LVL281
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL281
	.long	.LVL295
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST103:
	.long	.LVL282
	.long	.LVL294
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST104:
	.long	.LVL283
	.long	.LVL285
	.word	0x1
	.byte	0x66
	.long	.LVL285
	.long	.LVL288
	.word	0x1
	.byte	0x5e
	.long	.LVL288
	.long	.LVL291-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST105:
	.long	.LVL289
	.long	.LVL290
	.word	0x1
	.byte	0x68
	.long	.LVL290
	.long	.LVL291-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST106:
	.long	.LVL284
	.long	.LVL293
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST107:
	.long	.LFB24
	.long	.LCFI47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI47
	.long	.LCFI48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI48
	.long	.LCFI49
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI49
	.long	.LCFI50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI50
	.long	.LFE24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST108:
	.long	.LVL297
	.long	.LVL298
	.word	0x1
	.byte	0x68
	.long	.LVL298
	.long	.LVL302
	.word	0x1
	.byte	0x60
	.long	.LVL302
	.long	.LVL308
	.word	0x1
	.byte	0x6c
	.long	.LVL308
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST109:
	.long	.LVL303
	.long	.LVL304
	.word	0x1
	.byte	0x68
	.long	.LVL304
	.long	.LVL305-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST110:
	.long	.LVL299
	.long	.LVL302
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST111:
	.long	.LFB25
	.long	.LCFI51
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI51
	.long	.LFE25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST112:
	.long	.LVL309
	.long	.LVL310
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL310
	.long	.LVL313
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST113:
	.long	.LFB48
	.long	.LCFI52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI52
	.long	.LCFI53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI53
	.long	.LCFI54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI54
	.long	.LCFI55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI55
	.long	.LFE48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST114:
	.long	.LVL315
	.long	.LVL316
	.word	0x1
	.byte	0x68
	.long	.LVL316
	.long	.LVL318
	.word	0x1
	.byte	0x6d
	.long	.LVL318
	.long	.LVL323
	.word	0x1
	.byte	0x64
	.long	.LVL323
	.long	.LVL333
	.word	0x1
	.byte	0x6d
	.long	.LVL333
	.long	.LFE48
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST115:
	.long	.LVL315
	.long	.LVL317
	.word	0x1
	.byte	0x66
	.long	.LVL317
	.long	.LVL336
	.word	0x1
	.byte	0x60
	.long	.LVL336
	.long	.LFE48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST116:
	.long	.LVL315
	.long	.LVL317
	.word	0x1
	.byte	0x64
	.long	.LVL317
	.long	.LVL335
	.word	0x1
	.byte	0x61
	.long	.LVL335
	.long	.LFE48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST117:
	.long	.LVL316
	.long	.LVL317
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL317
	.long	.LVL321
	.word	0x1
	.byte	0x69
	.long	.LVL324
	.long	.LVL325
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL325
	.long	.LVL327
	.word	0x1
	.byte	0x69
	.long	.LVL328
	.long	.LVL329
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST118:
	.long	.LVL316
	.long	.LVL317
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL317
	.long	.LVL318
	.word	0x1
	.byte	0x6c
	.long	.LVL318
	.long	.LVL324-1
	.word	0x1
	.byte	0x62
	.long	.LVL324-1
	.long	.LVL334
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST119:
	.long	.LVL319
	.long	.LVL322
	.word	0x1
	.byte	0x66
	.long	.LVL322
	.long	.LVL324-1
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST120:
	.long	.LVL320
	.long	.LVL324-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST121:
	.long	.LVL322
	.long	.LVL324-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST122:
	.long	.LVL337
	.long	.LVL338
	.word	0x1
	.byte	0x68
	.long	.LVL338
	.long	.LVL346
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL346
	.long	.LVL347-1
	.word	0x1
	.byte	0x68
	.long	.LVL347-1
	.long	.LVL348
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL348
	.long	.LVL349
	.word	0x1
	.byte	0x68
	.long	.LVL349
	.long	.LVL350
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL350
	.long	.LVL351
	.word	0x1
	.byte	0x68
	.long	.LVL351
	.long	.LVL352
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL352
	.long	.LVL353
	.word	0x1
	.byte	0x68
	.long	.LVL353
	.long	.LVL354
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL354
	.long	.LVL355
	.word	0x1
	.byte	0x68
	.long	.LVL355
	.long	.LVL356
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL356
	.long	.LVL357
	.word	0x1
	.byte	0x68
	.long	.LVL357
	.long	.LVL358
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL358
	.long	.LVL359
	.word	0x1
	.byte	0x68
	.long	.LVL359
	.long	.LVL360
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL360
	.long	.LVL361
	.word	0x1
	.byte	0x68
	.long	.LVL361
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST123:
	.long	.LVL339
	.long	.LVL345
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST124:
	.long	.LVL340
	.long	.LVL341
	.word	0x1
	.byte	0x68
	.long	.LVL342
	.long	.LVL343
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL343
	.long	.LVL346
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST125:
	.long	.LVL344
	.long	.LVL345
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+5426
	.sleb128 0
	.long	0
	.long	0
.LLST126:
	.long	.LVL362
	.long	.LVL364-1
	.word	0x1
	.byte	0x68
	.long	.LVL365
	.long	.LVL367-1
	.word	0x1
	.byte	0x68
	.long	.LVL368
	.long	.LVL369-1
	.word	0x1
	.byte	0x68
	.long	.LVL370
	.long	.LVL371-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST127:
	.long	.LVL363
	.long	.LVL365
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL366
	.long	.LVL367-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST128:
	.long	.LVL372
	.long	.LVL373
	.word	0x1
	.byte	0x68
	.long	.LVL373
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST129:
	.long	.LVL374
	.long	.LVL376-1
	.word	0x1
	.byte	0x68
	.long	.LVL377
	.long	.LVL379-1
	.word	0x1
	.byte	0x68
	.long	.LVL380
	.long	.LVL381-1
	.word	0x1
	.byte	0x68
	.long	.LVL382
	.long	.LVL383
	.word	0x1
	.byte	0x68
	.long	.LVL384
	.long	.LVL385-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST130:
	.long	.LVL375
	.long	.LVL377
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL378
	.long	.LVL379-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST131:
	.long	.LFB55
	.long	.LCFI56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI56
	.long	.LCFI57
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI57
	.long	.LCFI58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI58
	.long	.LCFI59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI59
	.long	.LCFI60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI60
	.long	.LCFI61
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI61
	.long	.LCFI62
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI62
	.long	.LCFI63
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI63
	.long	.LCFI64
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI64
	.long	.LFE55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST132:
	.long	.LVL386
	.long	.LVL387-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL389
	.long	.LVL390
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL416
	.long	.LVL417
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL418
	.long	.LVL419
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL420
	.long	.LVL421
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST133:
	.long	.LVL388
	.long	.LVL422
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST134:
	.long	.LVL389
	.long	.LVL424
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST135:
	.long	.LVL389
	.long	.LVL420
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST136:
	.long	.LVL390
	.long	.LVL392
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	.LVL398
	.long	.LVL416
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	.LVL419
	.long	.LVL423
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST137:
	.long	.LVL399
	.long	.LVL400
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST138:
	.long	.LVL390
	.long	.LVL416
	.word	0x1
	.byte	0x6c
	.long	.LVL419
	.long	.LVL420
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST139:
	.long	.LVL400
	.long	.LVL412
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST140:
	.long	.LFB56
	.long	.LCFI65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI65
	.long	.LFE56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST141:
	.long	.LVL425
	.long	.LVL426
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL426
	.long	.LVL433
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST142:
	.long	.LVL427
	.long	.LVL428
	.word	0x1
	.byte	0x68
	.long	.LVL428
	.long	.LVL429-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST143:
	.long	.LVL435
	.long	.LVL441
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST144:
	.long	.LVL436
	.long	.LVL437
	.word	0x1
	.byte	0x68
	.long	.LVL438
	.long	.LVL439
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL439
	.long	.LVL442
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST145:
	.long	.LVL440
	.long	.LVL441
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+6560
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x15c
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
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB40
	.long	.LFE40-.LFB40
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
	.long	.LFB47
	.long	.LFE47-.LFB47
	.long	.LFB49
	.long	.LFE49-.LFB49
	.long	.LFB50
	.long	.LFE50-.LFB50
	.long	.LFB51
	.long	.LFE51-.LFB51
	.long	.LFB52
	.long	.LFE52-.LFB52
	.long	.LFB53
	.long	.LFE53-.LFB53
	.long	.LFB54
	.long	.LFE54-.LFB54
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB48
	.long	.LFE48-.LFB48
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB55
	.long	.LFE55-.LFB55
	.long	.LFB56
	.long	.LFE56-.LFB56
	.long	.LFB57
	.long	.LFE57-.LFB57
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
	.long	.LBB24
	.long	.LBE24
	.long	.LBB27
	.long	.LBE27
	.long	0
	.long	0
	.long	.LBB25
	.long	.LBE25
	.long	.LBB26
	.long	.LBE26
	.long	0
	.long	0
	.long	.LBB28
	.long	.LBE28
	.long	.LBB31
	.long	.LBE31
	.long	0
	.long	0
	.long	.LBB29
	.long	.LBE29
	.long	.LBB30
	.long	.LBE30
	.long	0
	.long	0
	.long	.LBB32
	.long	.LBE32
	.long	.LBB33
	.long	.LBE33
	.long	0
	.long	0
	.long	.LBB34
	.long	.LBE34
	.long	.LBB35
	.long	.LBE35
	.long	0
	.long	0
	.long	.LBB38
	.long	.LBE38
	.long	.LBB42
	.long	.LBE42
	.long	0
	.long	0
	.long	.LBB39
	.long	.LBE39
	.long	.LBB41
	.long	.LBE41
	.long	0
	.long	0
	.long	.LBB43
	.long	.LBE43
	.long	.LBB47
	.long	.LBE47
	.long	0
	.long	0
	.long	.LBB44
	.long	.LBE44
	.long	.LBB45
	.long	.LBE45
	.long	.LBB46
	.long	.LBE46
	.long	0
	.long	0
	.long	.LBB50
	.long	.LBE50
	.long	.LBB51
	.long	.LBE51
	.long	.LBB52
	.long	.LBE52
	.long	0
	.long	0
	.long	.LBB53
	.long	.LBE53
	.long	.LBB54
	.long	.LBE54
	.long	0
	.long	0
	.long	.LBB55
	.long	.LBE55
	.long	.LBB56
	.long	.LBE56
	.long	0
	.long	0
	.long	.LBB59
	.long	.LBE59
	.long	.LBB62
	.long	.LBE62
	.long	0
	.long	0
	.long	.LBB64
	.long	.LBE64
	.long	.LBB65
	.long	.LBE65
	.long	0
	.long	0
	.long	.LBB74
	.long	.LBE74
	.long	.LBB77
	.long	.LBE77
	.long	0
	.long	0
	.long	.LBB84
	.long	.LBE84
	.long	.LBB86
	.long	.LBE86
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
	.long	.LFB28
	.long	.LFE28
	.long	.LFB40
	.long	.LFE40
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
	.long	.LFB47
	.long	.LFE47
	.long	.LFB49
	.long	.LFE49
	.long	.LFB50
	.long	.LFE50
	.long	.LFB51
	.long	.LFE51
	.long	.LFB52
	.long	.LFE52
	.long	.LFB53
	.long	.LFE53
	.long	.LFB54
	.long	.LFE54
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB48
	.long	.LFE48
	.long	.LFB29
	.long	.LFE29
	.long	.LFB30
	.long	.LFE30
	.long	.LFB55
	.long	.LFE55
	.long	.LFB56
	.long	.LFE56
	.long	.LFB57
	.long	.LFE57
	.long	.LFB27
	.long	.LFE27
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF90:
	.string	"bitNr"
.LASF74:
	.string	"count"
.LASF99:
	.string	"midiInSysEx"
.LASF120:
	.string	"Manual_to_MidiNote"
.LASF159:
	.string	"swTimer"
.LASF42:
	.string	"bitStart"
.LASF100:
	.string	"program_toRegister"
.LASF83:
	.string	"modulebit"
.LASF34:
	.string	"ChannelNote_t"
.LASF174:
	.string	"midiRxActivceSensing"
.LASF207:
	.string	"__iCliRetVal"
.LASF190:
	.string	"init_Pipe"
.LASF154:
	.string	"chanNote"
.LASF81:
	.string	"pRange"
.LASF141:
	.string	"manNote"
.LASF122:
	.string	"rangeEnd"
.LASF77:
	.string	"progNr"
.LASF115:
	.string	"actualReg"
.LASF118:
	.string	"pMidiInMap"
.LASF44:
	.string	"ManualNoteRange_t"
.LASF152:
	.string	"shiftBit"
.LASF112:
	.string	"midi_RegisterMatchProgram"
.LASF142:
	.string	"midiIn_Process"
.LASF195:
	.string	"pipe_off"
.LASF9:
	.string	"long long unsigned int"
.LASF158:
	.string	"midi_CheckTxActiveSense"
.LASF173:
	.string	"midi_RegisterChanged"
.LASF50:
	.string	"OutChannel"
.LASF172:
	.string	"programMap"
.LASF15:
	.string	"message8"
.LASF189:
	.string	"midiDataByteExpected"
.LASF169:
	.string	"midiOutMap"
.LASF175:
	.string	"midi_Setting"
.LASF65:
	.string	"pCoupler"
.LASF128:
	.string	"manual_NoteOnOff"
.LASF198:
	.string	"eeprom_ReadMidiInMap"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF177:
	.string	"midiLastOutManual"
.LASF78:
	.string	"regNr"
.LASF52:
	.string	"sw_channel"
.LASF101:
	.string	"program"
.LASF36:
	.string	"ManualNote_t"
.LASF136:
	.string	"midi_AllManualsOff"
.LASF105:
	.string	"midi_ProgramChange"
.LASF204:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF150:
	.string	"pipeMessage"
.LASF119:
	.string	"init_Manual2Midi"
.LASF186:
	.string	"midiLastCommand"
.LASF46:
	.string	"noteRange"
.LASF188:
	.string	"midiDataByteCount"
.LASF6:
	.string	"long int"
.LASF135:
	.string	"midi_ManualOff"
.LASF163:
	.string	"serESPMidiTmp"
.LASF117:
	.string	"init_Midi2Manual"
.LASF146:
	.string	"noteOnOff"
.LASF93:
	.string	"get_RegisterStatus"
.LASF127:
	.string	"moduleBit_to_manualNote"
.LASF72:
	.string	"midiAllReset"
.LASF167:
	.string	"midiInMap"
.LASF4:
	.string	"uint16_t"
.LASF123:
	.string	"rangeStart"
.LASF184:
	.string	"lcdData"
.LASF45:
	.string	"midiNote"
.LASF41:
	.string	"endNote"
.LASF49:
	.string	"InChannel"
.LASF53:
	.string	"MidiOutMap_t"
.LASF194:
	.string	"pipe_on"
.LASF92:
	.string	"mask"
.LASF137:
	.string	"midi_CheckRxActiveSense"
.LASF80:
	.string	"regNr_to_moduleBit"
.LASF25:
	.string	"pipeInM4"
.LASF69:
	.string	"cplNr"
.LASF95:
	.string	"read_allRegister"
.LASF24:
	.string	"pipeInM8"
.LASF124:
	.string	"range"
.LASF132:
	.string	"midiAllNotesOff"
.LASF130:
	.string	"modulNrMask"
.LASF43:
	.string	"ManualMap_t"
.LASF67:
	.string	"init_Midi"
.LASF5:
	.string	"unsigned int"
.LASF111:
	.string	"SaveEEProm"
.LASF197:
	.string	"eeprom_UpdateProg"
.LASF62:
	.string	"AcceptProgChange"
.LASF35:
	.string	"manual"
.LASF151:
	.string	"command"
.LASF7:
	.string	"long unsigned int"
.LASF200:
	.string	"eeprom_ReadMidiOutMap"
.LASF131:
	.string	"myMessage"
.LASF166:
	.string	"ManualNoteRange"
.LASF187:
	.string	"midiDataByte"
.LASF57:
	.string	"registers"
.LASF155:
	.string	"midiSendAllNotesOff"
.LASF144:
	.string	"sreg_save"
.LASF143:
	.string	"midiByte"
.LASF138:
	.string	"midiNote_to_Manual"
.LASF85:
	.string	"section"
.LASF145:
	.string	"__ToDo"
.LASF32:
	.string	"hw_channel"
.LASF183:
	.string	"cplInfo"
.LASF70:
	.string	"getAllCouplers"
.LASF31:
	.string	"Pipe_Module_t"
.LASF40:
	.string	"startNote"
.LASF98:
	.string	"onOff"
.LASF164:
	.string	"midiTxLastCmd"
.LASF16:
	.string	"PipeMessage_t"
.LASF107:
	.string	"channelValid"
.LASF48:
	.string	"MidiInMap_t"
.LASF59:
	.string	"ProgramInfo_t"
.LASF109:
	.string	"midi_resetRegisters"
.LASF38:
	.string	"moduleBit"
.LASF19:
	.string	"Timer"
.LASF75:
	.string	"regSec"
.LASF10:
	.string	"sizetype"
.LASF108:
	.string	"splitCount"
.LASF125:
	.string	"init_Manual2Module"
.LASF103:
	.string	"regBytePtr"
.LASF185:
	.string	"midiEEPromLoadError"
.LASF89:
	.string	"modBit"
.LASF28:
	.string	"Pipe_t"
.LASF47:
	.string	"manualNote"
.LASF121:
	.string	"Midi_updateManualRange"
.LASF26:
	.string	"pipeIn"
.LASF171:
	.string	"registerCount"
.LASF199:
	.string	"eeprom_ReadMidiThrough"
.LASF79:
	.string	"set_Coupler"
.LASF82:
	.string	"moduleBit_to_registerNr"
.LASF20:
	.string	"pipeOutM4"
.LASF102:
	.string	"regBits"
.LASF63:
	.string	"MidiSetting_t"
.LASF11:
	.string	"wordval"
.LASF71:
	.string	"setAllCouplers"
.LASF27:
	.string	"pipeInStat"
.LASF18:
	.string	"prescaler"
.LASF37:
	.string	"error"
.LASF148:
	.string	"midiBytesTransferred"
.LASF58:
	.string	"couplers"
.LASF157:
	.string	"midi_SendActiveSense"
.LASF206:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF84:
	.string	"pSection"
.LASF153:
	.string	"moduleBits"
.LASF193:
	.string	"eeprom_ReadProg"
.LASF3:
	.string	"unsigned char"
.LASF66:
	.string	"midi_CouplerReset"
.LASF168:
	.string	"midiThrough"
.LASF73:
	.string	"registers_CalcCount"
.LASF192:
	.string	"log_putError"
.LASF17:
	.string	"counter"
.LASF202:
	.string	"pipeMsgPush"
.LASF116:
	.string	"midi_CountRegisterInProgram"
.LASF201:
	.string	"eeprom_ReadManualMap"
.LASF56:
	.string	"RegisterMap_t"
.LASF180:
	.string	"midiLastInManual"
.LASF51:
	.string	"MidiThrough_t"
.LASF106:
	.string	"channel"
.LASF147:
	.string	"proc_ESPmidi"
.LASF176:
	.string	"midiLastOutNote"
.LASF191:
	.string	"eeprom_ReadReg"
.LASF182:
	.string	"midi_Couplers"
.LASF13:
	.string	"Word_t"
.LASF161:
	.string	"pipeProcessing"
.LASF179:
	.string	"midiLastInChannel"
.LASF12:
	.string	"byteval"
.LASF156:
	.string	"chan"
.LASF64:
	.string	"char"
.LASF33:
	.string	"note"
.LASF87:
	.string	"mode"
.LASF170:
	.string	"registerMap"
.LASF104:
	.string	"byteNr"
.LASF160:
	.string	"pipe"
.LASF54:
	.string	"startReg"
.LASF196:
	.string	"serial1MIDISend"
.LASF133:
	.string	"splitRange"
.LASF113:
	.string	"progPtr"
.LASF94:
	.string	"count_Registers"
.LASF61:
	.string	"VelZero4Off"
.LASF208:
	.string	"__iRestore"
.LASF0:
	.string	"int8_t"
.LASF29:
	.string	"AssnRead"
.LASF86:
	.string	"read_Register"
.LASF39:
	.string	"ModulBitError_t"
.LASF139:
	.string	"found"
.LASF97:
	.string	"register_onOff"
.LASF140:
	.string	"noteBase0"
.LASF126:
	.string	"manualNote_to_moduleBit"
.LASF114:
	.string	"tempReg"
.LASF55:
	.string	"endReg"
.LASF96:
	.string	"resultPtr"
.LASF162:
	.string	"pipe_Module"
.LASF14:
	.string	"Message16"
.LASF1:
	.string	"uint8_t"
.LASF149:
	.string	"midiKeyPress_Process"
.LASF134:
	.string	"midiChanel"
.LASF88:
	.string	"modBitComplette"
.LASF23:
	.string	"pipeInM12"
.LASF22:
	.string	"pipeInM16"
.LASF165:
	.string	"manualMap"
.LASF129:
	.string	"moduleInfo"
.LASF76:
	.string	"init_Registers"
.LASF30:
	.string	"AssnWrite"
.LASF203:
	.string	"serial0USB_logPipeIn"
.LASF60:
	.string	"TxActivceSense"
.LASF178:
	.string	"midiLastInNote"
.LASF21:
	.string	"pipeOut"
.LASF68:
	.string	"result"
.LASF205:
	.string	".././Midi.c"
.LASF110:
	.string	"register_toProgram"
.LASF181:
	.string	"midiLastProgram"
.LASF91:
	.string	"modulNr"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
