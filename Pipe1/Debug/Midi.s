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
	.loc 1 66 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL0:
.LBB13:
	.loc 1 69 0
	ldi r24,0
.LBE13:
	.loc 1 68 0
	ldi r30,lo8(midi_Couplers)
	ldi r31,hi8(midi_Couplers)
.LBB14:
	.loc 1 69 0
	rjmp .L2
.LVL1:
.L3:
	.loc 1 70 0 discriminator 3
	st Z,__zero_reg__
	.loc 1 69 0 discriminator 3
	subi r24,lo8(-(1))
.LVL2:
	.loc 1 70 0 discriminator 3
	adiw r30,1
.LVL3:
.L2:
	.loc 1 69 0 discriminator 1
	cpi r24,lo8(12)
	brlo .L3
/* epilogue start */
.LBE14:
	.loc 1 72 0
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
	.loc 1 62 0
	ldi r24,lo8(-1)
	sts prog_Display,r24
	.loc 1 63 0
	sts prog_UpdDisplay,__zero_reg__
	ret
	.cfi_endproc
.LFE17:
	.size	init_Midi, .-init_Midi
	.section	.text.set_Coupler,"ax",@progbits
.global	set_Coupler
	.type	set_Coupler, @function
set_Coupler:
.LFB19:
	.loc 1 76 0
	.cfi_startproc
.LVL5:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 78 0
	cpi r24,lo8(12)
	brsh .L9
	.loc 1 79 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ldi r25,lo8(-1)
	st Z,r25
	.loc 1 81 0
	cpi r24,lo8(6)
	brlo .L7
	.loc 1 83 0
	subi r24,lo8(-(-6))
.LVL6:
	rjmp .L8
.L7:
	.loc 1 86 0
	subi r24,lo8(-(6))
.LVL7:
.L8:
	.loc 1 88 0
	mov r30,r24
	ldi r31,0
	movw r26,r30
	subi r26,lo8(-(midi_Couplers))
	sbci r27,hi8(-(midi_Couplers))
	ld r24,X
.LVL8:
	tst r24
	breq .L6
	.loc 1 90 0
	movw r26,r30
	subi r26,lo8(-(midi_Couplers))
	sbci r27,hi8(-(midi_Couplers))
	st X,__zero_reg__
	.loc 1 91 0
	lsl r30
	rol r31
.LVL9:
	subi r30,lo8(-(cplInfo))
	sbci r31,hi8(-(cplInfo))
	lpm r24,Z
	ret
.LVL10:
.L9:
	.loc 1 94 0
	ldi r24,0
.LVL11:
.L6:
	.loc 1 95 0
	ret
	.cfi_endproc
.LFE19:
	.size	set_Coupler, .-set_Coupler
	.section	.text.getAllCouplers,"ax",@progbits
.global	getAllCouplers
	.type	getAllCouplers, @function
getAllCouplers:
.LFB20:
	.loc 1 97 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 99 0
	ldi r24,0
.LVL12:
	ldi r25,0
.LVL13:
	.loc 1 100 0
	ldi r20,lo8(11)
	rjmp .L12
.LVL14:
.L13:
	.loc 1 107 0
	mov r20,r18
.LVL15:
.L12:
	.loc 1 103 0
	mov r18,r24
.LVL16:
	mov r19,r25
	lsl r18
	rol r19
	mov r24,r18
.LVL17:
	mov r25,r19
	.loc 1 104 0
	mov r30,r20
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ld r21,Z
	cpi r21,lo8(-1)
	brne .L11
	.loc 1 105 0
	ori r24,lo8(1)
.L11:
	.loc 1 107 0
	ldi r18,lo8(-1)
	add r18,r20
.LVL18:
	cpse r20,__zero_reg__
	rjmp .L13
/* epilogue start */
	.loc 1 109 0
	ret
	.cfi_endproc
.LFE20:
	.size	getAllCouplers, .-getAllCouplers
	.section	.text.setAllCouplers,"ax",@progbits
.global	setAllCouplers
	.type	setAllCouplers, @function
setAllCouplers:
.LFB21:
	.loc 1 111 0
	.cfi_startproc
.LVL19:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 112 0
	ldi r20,0
.LVL20:
.L17:
	.loc 1 115 0
	sbrs r24,0
	rjmp .L15
	.loc 1 116 0
	mov r30,r20
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ldi r18,lo8(-1)
	st Z,r18
	rjmp .L16
.L15:
	.loc 1 118 0
	mov r30,r20
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	st Z,__zero_reg__
.L16:
	.loc 1 120 0
	mov r18,r24
	mov r19,r25
	lsr r19
	ror r18
	mov r24,r18
.LVL21:
	mov r25,r19
	.loc 1 121 0
	subi r20,lo8(-(1))
.LVL22:
	cpi r20,lo8(12)
	brlo .L17
/* epilogue start */
	.loc 1 122 0
	ret
	.cfi_endproc
.LFE21:
	.size	setAllCouplers, .-setAllCouplers
	.section	.text.midiAllReset,"ax",@progbits
.global	midiAllReset
	.type	midiAllReset, @function
midiAllReset:
.LFB22:
	.loc 1 140 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 141 0
	ldi r24,lo8(-128)
	sts pipeProcessing,r24
	.loc 1 142 0
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
	.loc 1 381 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL24:
.LBB15:
	.loc 1 383 0
	ldi r18,0
.LBE15:
	.loc 1 382 0
	ldi r19,0
.LBB16:
	.loc 1 383 0
	rjmp .L20
.LVL25:
.L22:
	.loc 1 384 0
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
	.loc 1 384 0 is_stmt 0 discriminator 1
	cp r24,r19
	brlo .L21
	.loc 1 386 0 is_stmt 1
	ldi r19,lo8(1)
.LVL26:
	add r19,r24
.LVL27:
.L21:
	.loc 1 383 0 discriminator 2
	subi r18,lo8(-(1))
.LVL28:
.L20:
	.loc 1 383 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L22
.LBE16:
	.loc 1 389 0 is_stmt 1
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
	.loc 1 392 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 395 0
	ldi r24,lo8(-1)
	sts midi_RegisterChanged,r24
.LVL29:
.LBB17:
	.loc 1 397 0
	ldi r18,0
	rjmp .L24
.LVL30:
.L25:
	.loc 1 398 0 discriminator 3
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
	.loc 1 399 0 discriminator 3
	std Z+1,r24
	.loc 1 400 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 397 0 discriminator 3
	subi r18,lo8(-(1))
.LVL31:
.L24:
	.loc 1 397 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L25
.LBE17:
	.loc 1 402 0 is_stmt 1
	call eeprom_ReadReg
.LVL32:
	cpi r24,lo8(-1)
	brne .L26
	.loc 1 403 0
	sts registerCount,__zero_reg__
	.loc 1 404 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(5)
	ldi r24,lo8(1)
	call log_putError
.LVL33:
	rjmp .L27
.L26:
	.loc 1 406 0
	call registers_CalcCount
.LVL34:
.L27:
	.loc 1 409 0
	call eeprom_ReadProg
.LVL35:
	cpi r24,lo8(-1)
	brne .L23
	rjmp .L32
.LVL36:
.L30:
.LBB18:
.LBB19:
	.loc 1 413 0 discriminator 3
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
	.loc 1 412 0 discriminator 3
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
	.loc 1 412 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L30
.LBE20:
	.loc 1 415 0 is_stmt 1 discriminator 2
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
	.loc 1 411 0 discriminator 2
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
	.loc 1 411 0 is_stmt 0 discriminator 1
	cpi r19,lo8(64)
	brlo .L33
.LBE21:
	.loc 1 417 0 is_stmt 1
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
	.loc 1 421 0
	.cfi_startproc
.LVL44:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 424 0
	lds r25,registerCount
	cp r24,r25
	brsh .L35
	.loc 1 424 0 is_stmt 0 discriminator 1
	cpi r24,lo8(64)
	brsh .L35
	ldi r18,lo8(8)
	ldi r30,lo8(registerMap)
	ldi r31,hi8(registerMap)
.L38:
.LVL45:
.LBB22:
	.loc 1 430 0 is_stmt 1
	ld r19,Z
	cp r24,r19
	brlo .L36
	.loc 1 430 0 is_stmt 0 discriminator 1
	ldd r25,Z+1
	cp r25,r24
	brlo .L36
	.loc 1 433 0 is_stmt 1
	ldd r18,Z+2
.LVL46:
	mov r25,r24
	sub r25,r19
	.loc 1 434 0
	ldi r24,0
.LVL47:
	add r25,r18
	ret
.LVL48:
.L36:
	.loc 1 436 0
	adiw r30,3
.LVL49:
	.loc 1 437 0
	subi r18,lo8(-(-1))
.LVL50:
	brne .L38
.LVL51:
.L35:
.LBE22:
	.loc 1 441 0
	ldi r24,lo8(-1)
.LVL52:
	ldi r25,0
	.loc 1 442 0
	ret
	.cfi_endproc
.LFE33:
	.size	regNr_to_moduleBit, .-regNr_to_moduleBit
	.section	.text.moduleBit_to_registerNr,"ax",@progbits
.global	moduleBit_to_registerNr
	.type	moduleBit_to_registerNr, @function
moduleBit_to_registerNr:
.LFB34:
	.loc 1 444 0
	.cfi_startproc
.LVL53:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB23:
	.loc 1 446 0
	ldi r25,0
	rjmp .L40
.LVL54:
.L43:
	.loc 1 447 0
	lds r20,registerMap+2
	cp r24,r20
	brlo .L41
	.loc 1 447 0 is_stmt 0 discriminator 1
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
	.loc 1 449 0 is_stmt 1
	sub r24,r20
	add r24,r21
	ret
.LVL56:
.L41:
	.loc 1 446 0 discriminator 2
	subi r25,lo8(-(1))
.LVL57:
.L40:
	.loc 1 446 0 is_stmt 0 discriminator 1
	cpi r25,lo8(8)
	brlo .L43
.LBE23:
	.loc 1 452 0 is_stmt 1
	ldi r24,lo8(-1)
.LVL58:
	.loc 1 453 0
	ret
	.cfi_endproc
.LFE34:
	.size	moduleBit_to_registerNr, .-moduleBit_to_registerNr
	.section	.text.read_Register,"ax",@progbits
.global	read_Register
	.type	read_Register, @function
read_Register:
.LFB35:
	.loc 1 455 0
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
	.loc 1 458 0
	lds r25,registerCount
	cp r24,r25
	brlo .+2
	rjmp .L50
	mov r28,r22
.LBB24:
	.loc 1 460 0
	call regNr_to_moduleBit
.LVL60:
	.loc 1 461 0
	cpse r24,__zero_reg__
	rjmp .L46
.LVL61:
.LBB25:
	.loc 1 464 0
	mov r18,r25
	andi r18,lo8(31)
.LVL62:
	.loc 1 465 0
	swap r25
.LVL63:
	lsr r25
	andi r25,lo8(7)
.LVL64:
	.loc 1 466 0
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
	.loc 1 467 0
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
	.loc 1 467 0 is_stmt 0 discriminator 1
	sbrc r28,1
	rjmp .L51
.L47:
	.loc 1 470 0 is_stmt 1
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
	.loc 1 470 0 is_stmt 0 discriminator 1
	sbrc r28,0
	rjmp .L52
.L49:
	.loc 1 474 0 is_stmt 1
	tst r25
	breq .L45
	.loc 1 474 0 is_stmt 0 discriminator 1
	tst r20
	breq .L45
	.loc 1 474 0 discriminator 2
	cpi r28,lo8(4)
	brne .L45
	rjmp .L53
.L46:
.LBE25:
.LBE24:
	.loc 1 482 0 is_stmt 1
	ldi r24,0
.LBB27:
	rjmp .L45
.LVL69:
.L51:
.LBB26:
	.loc 1 469 0
	ldi r24,lo8(1)
	rjmp .L45
.LVL70:
.L52:
	.loc 1 473 0
	ldi r24,lo8(1)
	rjmp .L45
.L53:
	.loc 1 475 0
	ldi r24,lo8(1)
	rjmp .L45
.LVL71:
.L50:
.LBE26:
.LBE27:
	.loc 1 482 0
	ldi r24,0
.LVL72:
.L45:
/* epilogue start */
	.loc 1 483 0
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
	.loc 1 485 0
	.cfi_startproc
.LVL73:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 487 0
	lds r25,registerCount
	cp r24,r25
	brsh .L58
.LBB28:
	.loc 1 489 0
	call regNr_to_moduleBit
.LVL74:
	.loc 1 490 0
	cpse r24,__zero_reg__
	rjmp .L56
.LVL75:
.LBB29:
	.loc 1 493 0
	mov r18,r25
	andi r18,lo8(31)
.LVL76:
	.loc 1 494 0
	mov r19,r25
	swap r19
	lsr r19
	andi r19,lo8(7)
.LVL77:
	.loc 1 495 0
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
	.loc 1 496 0
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
	.loc 1 499 0
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
	.loc 1 502 0
	ldi r24,lo8(1)
	ret
.L56:
.LBE29:
.LBE28:
	.loc 1 508 0
	ldi r24,0
.LBB31:
	ret
.LVL83:
.L59:
.LBB30:
	.loc 1 498 0
	ldi r24,lo8(2)
.LVL84:
	ret
.LVL85:
.L58:
.LBE30:
.LBE31:
	.loc 1 508 0
	ldi r24,0
.LVL86:
.L55:
	.loc 1 509 0
	ret
	.cfi_endproc
.LFE36:
	.size	get_RegisterStatus, .-get_RegisterStatus
	.section	.text.count_Registers,"ax",@progbits
.global	count_Registers
	.type	count_Registers, @function
count_Registers:
.LFB37:
	.loc 1 512 0
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
	.loc 1 514 0
	ldi r28,0
.LBE32:
	.loc 1 513 0
	ldi r29,0
.LBB33:
	.loc 1 514 0
	rjmp .L61
.LVL89:
.L63:
	.loc 1 515 0
	mov r22,r17
	mov r24,r28
	call read_Register
.LVL90:
	cpse r24,__zero_reg__
	.loc 1 516 0
	subi r29,lo8(-(1))
.LVL91:
.L62:
	.loc 1 514 0 discriminator 2
	subi r28,lo8(-(1))
.LVL92:
.L61:
	.loc 1 514 0 is_stmt 0 discriminator 1
	cpi r28,lo8(64)
	brlo .L63
.LBE33:
	.loc 1 520 0 is_stmt 1
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
	.loc 1 522 0
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
	.loc 1 526 0
	ldi r28,0
.LBE34:
	.loc 1 525 0
	ldi r29,0
	.loc 1 523 0
	ldi r16,0
.LBB35:
	.loc 1 526 0
	rjmp .L65
.LVL98:
.L69:
	mov r17,r28
	andi r17,lo8(7)
	.loc 1 529 0
	brne .L66
	.loc 1 531 0
	ldi r29,0
.LVL99:
.L66:
	.loc 1 533 0
	lsr r29
.LVL100:
	.loc 1 534 0
	ldi r22,lo8(3)
	mov r24,r28
	call read_Register
.LVL101:
	tst r24
	breq .L67
	.loc 1 535 0
	ori r29,lo8(-128)
.LVL102:
	.loc 1 536 0
	subi r16,lo8(-(1))
.LVL103:
.L67:
	.loc 1 538 0
	cpi r17,lo8(7)
	brne .L68
	.loc 1 540 0
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L68
.LVL104:
	.loc 1 541 0
	movw r30,r14
	st Z,r29
	movw r24,r14
	adiw r24,1
.LVL105:
	movw r14,r24
.LVL106:
.L68:
	.loc 1 526 0 discriminator 2
	subi r28,lo8(-(1))
.LVL107:
.L65:
	.loc 1 526 0 is_stmt 0 discriminator 1
	cpi r28,lo8(64)
	brlo .L69
.LBE35:
	.loc 1 546 0 is_stmt 1
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
	.loc 1 549 0
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
	.loc 1 551 0
	lds r25,registerCount
	cp r24,r25
	brsh .L71
	mov r28,r22
.LBB36:
	.loc 1 553 0
	call regNr_to_moduleBit
.LVL113:
	.loc 1 554 0
	cpse r24,__zero_reg__
	rjmp .L71
.LVL114:
.LBB37:
	.loc 1 557 0
	mov r24,r25
	andi r24,lo8(31)
.LVL115:
	.loc 1 558 0
	swap r25
.LVL116:
	lsr r25
	andi r25,lo8(7)
.LVL117:
	.loc 1 559 0
	sbrs r28,0
	rjmp .L74
	.loc 1 561 0
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
	.loc 1 564 0
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
	.loc 1 569 0
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
	.loc 1 228 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 230 0
	lds r24,midiLastCommand
	cpi r24,lo8(-16)
	brne .L75
	.loc 1 230 0 is_stmt 0 discriminator 1
	lds r24,midiDataByte
	cpi r24,lo8(125)
	brne .L75
	.loc 1 232 0 is_stmt 1
	lds r25,midiDataByte+1
	andi r25,lo8(-16)
	cpi r25,lo8(64)
	breq .L77
	.loc 1 232 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L75
.L77:
	.loc 1 235 0 is_stmt 1
	lds r24,midiDataByte+3
	cpi r24,lo8(-91)
	brne .L75
	.loc 1 235 0 is_stmt 0 discriminator 1
	lds r18,midiDataByteCount
	cpi r18,lo8(4)
	brne .L75
	.loc 1 238 0 is_stmt 1
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
	.section	.text.register_toProgram,"ax",@progbits
.global	register_toProgram
	.type	register_toProgram, @function
register_toProgram:
.LFB43:
	.loc 1 639 0
	.cfi_startproc
.LVL122:
	push r16
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI12:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI13:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI14:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r28,r24
	mov r16,r22
.LVL123:
	.loc 1 643 0
	cpi r24,lo8(64)
	brsh .L82
.LBB38:
	.loc 1 644 0
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
	.loc 1 645 0
	subi r24,lo8(-(programMap))
	sbci r25,hi8(-(programMap))
.LVL127:
	call read_allRegister
.LVL128:
	mov r17,r24
.LVL129:
	rjmp .L80
.LVL130:
.L82:
.LBE38:
	.loc 1 642 0
	ldi r17,0
.LVL131:
.L80:
	.loc 1 647 0
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
	.loc 1 648 0
	cpse r16,__zero_reg__
	.loc 1 649 0
	call eeprom_UpdateProg
.LVL134:
.L81:
	.loc 1 652 0
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
.LFE43:
	.size	register_toProgram, .-register_toProgram
	.section	.text.midi_RegisterMatchProgram,"ax",@progbits
.global	midi_RegisterMatchProgram
	.type	midi_RegisterMatchProgram, @function
midi_RegisterMatchProgram:
.LFB44:
	.loc 1 654 0
	.cfi_startproc
.LVL137:
	push r15
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI16:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI17:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI18:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI19:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
.LVL138:
	.loc 1 658 0
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
.LVL139:
	add r16,r24
	adc r17,r25
	subi r16,lo8(-(programMap))
	sbci r17,hi8(-(programMap))
.LVL140:
.LBB39:
	.loc 1 661 0
	ldi r28,0
.LBE39:
	.loc 1 659 0
	ldi r29,0
	.loc 1 657 0
	mov r15,__zero_reg__
.LBB40:
	.loc 1 661 0
	rjmp .L84
.LVL141:
.L89:
	.loc 1 662 0
	mov r25,r28
	andi r25,lo8(7)
	brne .L85
.LVL142:
	.loc 1 664 0
	movw r30,r16
	ld r29,Z
.LVL143:
	subi r16,-1
	sbci r17,-1
.LVL144:
.L85:
	.loc 1 666 0
	mov r24,r28
	call get_RegisterStatus
.LVL145:
	.loc 1 667 0
	sbrs r29,0
	rjmp .L86
	.loc 1 669 0
	cpi r24,lo8(2)
	breq .L88
	rjmp .L90
.L86:
	.loc 1 676 0
	cpi r24,lo8(2)
	breq .L91
	.loc 1 679 0
	cpi r24,lo8(1)
	brne .L88
	.loc 1 681 0
	inc r15
.LVL146:
.L88:
	.loc 1 684 0 discriminator 2
	lsr r29
.LVL147:
	.loc 1 661 0 discriminator 2
	subi r28,lo8(-(1))
.LVL148:
.L84:
	.loc 1 661 0 is_stmt 0 discriminator 1
	lds r25,registerCount
	cp r28,r25
	brlo .L89
.LBE40:
	.loc 1 686 0 is_stmt 1
	mov r24,r15
.LBB41:
	rjmp .L87
.LVL149:
.L90:
	.loc 1 671 0
	ldi r24,lo8(-1)
.LVL150:
	rjmp .L87
.LVL151:
.L91:
	.loc 1 678 0
	ldi r24,lo8(-1)
.LVL152:
.L87:
/* epilogue start */
.LBE41:
	.loc 1 687 0
	pop r29
.LVL153:
	pop r28
.LVL154:
	pop r17
	pop r16
.LVL155:
	pop r15
.LVL156:
	ret
	.cfi_endproc
.LFE44:
	.size	midi_RegisterMatchProgram, .-midi_RegisterMatchProgram
	.section	.text.midi_CountRegisterInProgram,"ax",@progbits
.global	midi_CountRegisterInProgram
	.type	midi_CountRegisterInProgram, @function
midi_CountRegisterInProgram:
.LFB45:
	.loc 1 689 0
	.cfi_startproc
.LVL157:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 692 0
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
.LVL158:
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
.LVL159:
.LBB42:
	.loc 1 694 0
	ldi r25,0
.LBE42:
	.loc 1 693 0
	ldi r18,0
	.loc 1 691 0
	ldi r24,0
.LBB43:
	.loc 1 694 0
	rjmp .L93
.LVL160:
.L96:
	.loc 1 695 0
	mov r19,r25
	andi r19,lo8(7)
	brne .L94
.LVL161:
	.loc 1 697 0
	ld r18,Z
.LVL162:
	adiw r30,1
.LVL163:
.L94:
	.loc 1 699 0
	sbrc r18,0
	.loc 1 700 0
	subi r24,lo8(-(1))
.LVL164:
.L95:
	.loc 1 702 0 discriminator 2
	lsr r18
.LVL165:
	.loc 1 694 0 discriminator 2
	subi r25,lo8(-(1))
.LVL166:
.L93:
	.loc 1 694 0 is_stmt 0 discriminator 1
	lds r19,registerCount
	cp r25,r19
	brlo .L96
/* epilogue start */
.LBE43:
	.loc 1 706 0 is_stmt 1
	ret
	.cfi_endproc
.LFE45:
	.size	midi_CountRegisterInProgram, .-midi_CountRegisterInProgram
	.section	.text.prog_set,"ax",@progbits
.global	prog_set
	.type	prog_set, @function
prog_set:
.LFB46:
	.loc 1 712 0
	.cfi_startproc
.LVL167:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 713 0
	lds r25,prog_Display
	cp r25,r24
	breq .L97
	.loc 1 714 0
	sts prog_Display,r24
	.loc 1 715 0
	ldi r24,lo8(-1)
.LVL168:
	sts prog_UpdDisplay,r24
.LVL169:
.L97:
	ret
	.cfi_endproc
.LFE46:
	.size	prog_set, .-prog_set
	.section	.text.program_toRegister,"ax",@progbits
.global	program_toRegister
	.type	program_toRegister, @function
program_toRegister:
.LFB40:
	.loc 1 571 0
	.cfi_startproc
.LVL170:
	push r11
.LCFI20:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI21:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI22:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI23:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI24:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI25:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI26:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI27:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI28:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
.LVL171:
	.loc 1 574 0
	cpi r24,lo8(64)
	brlo .+2
	rjmp .L107
	mov r14,r24
.LBB44:
	.loc 1 575 0
	call prog_set
.LVL172:
	.loc 1 578 0
	mov r15,__zero_reg__
	movw r30,r14
	lsl r30
	rol r31
	movw r24,r14
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
.LVL173:
.LBB45:
	.loc 1 579 0
	mov r11,__zero_reg__
.LBE45:
	.loc 1 577 0
	ldi r17,0
.LBE44:
	.loc 1 573 0
	ldi r16,0
.LBB48:
.LBB47:
	.loc 1 579 0
	rjmp .L101
.LVL174:
.L106:
	.loc 1 582 0
	movw r12,r30
	ldi r24,-1
	sub r12,r24
	sbc r13,r24
.LVL175:
	ld r28,Z
.LVL176:
.LBB46:
	.loc 1 583 0
	ldi r29,0
	rjmp .L102
.LVL177:
.L105:
	.loc 1 584 0
	mov r24,r28
	andi r24,lo8(1)
	sbrc r28,0
	.loc 1 585 0
	subi r16,lo8(-(1))
.LVL178:
.L103:
	.loc 1 587 0 discriminator 2
	ldi r22,lo8(1)
	cpse r24,__zero_reg__
	rjmp .L104
	ldi r22,0
.L104:
	mov r24,r17
	call register_onOff
.LVL179:
	.loc 1 589 0 discriminator 2
	lsr r28
.LVL180:
	.loc 1 590 0 discriminator 2
	subi r17,lo8(-(1))
.LVL181:
	.loc 1 583 0 discriminator 2
	subi r29,lo8(-(1))
.LVL182:
.L102:
	.loc 1 583 0 is_stmt 0 discriminator 1
	cpi r29,lo8(8)
	brlo .L105
.LBE46:
	.loc 1 579 0 is_stmt 1 discriminator 2
	inc r11
.LVL183:
	.loc 1 582 0 discriminator 2
	movw r30,r12
.LVL184:
.L101:
	.loc 1 579 0 discriminator 1
	ldi r24,lo8(7)
	cp r24,r11
	brsh .L106
.LBE47:
	.loc 1 594 0
	movw r30,r14
.LVL185:
	lsl r30
	rol r31
	lsl r14
	rol r15
	lsl r14
	rol r15
	lsl r14
	rol r15
.LVL186:
	add r30,r14
	adc r31,r15
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
	.loc 1 595 0
	ldd r24,Z+8
	ldd r25,Z+9
	call setAllCouplers
.LVL187:
	rjmp .L100
.LVL188:
.L107:
.LBE48:
	.loc 1 573 0
	ldi r16,0
.LVL189:
.L100:
	.loc 1 598 0
	mov r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
.LVL190:
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
	.loc 1 600 0
	.cfi_startproc
.LVL191:
	push r28
.LCFI29:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI30:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r28,r24
	mov r29,r22
	.loc 1 601 0
	lds r24,midi_Setting+2
.LVL192:
	cpse r24,__zero_reg__
	rjmp .L114
.LBB49:
	rjmp .L110
.LVL193:
.L112:
.LBB50:
	.loc 1 606 0
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
	brne .L115
	.loc 1 605 0 discriminator 2
	subi r24,lo8(-(1))
.LVL194:
	rjmp .L109
.LVL195:
.L114:
.LBE50:
.LBE49:
	ldi r24,0
.L109:
.LVL196:
.LBB53:
.LBB51:
	.loc 1 605 0 is_stmt 0 discriminator 1
	cpi r24,lo8(4)
	brlo .L112
.LBE51:
	.loc 1 603 0 is_stmt 1
	ldi r24,0
.LVL197:
.LBB52:
	rjmp .L111
.LVL198:
.L115:
	.loc 1 608 0
	ldi r24,lo8(-1)
.LVL199:
.L111:
.LBE52:
	.loc 1 612 0
	cpi r24,lo8(-1)
	brne .L110
	.loc 1 614 0
	mov r24,r29
.LVL200:
	call program_toRegister
.LVL201:
	.loc 1 615 0
	mov r24,r29
	call prog_set
.LVL202:
	.loc 1 616 0
	sts midiLastProgram,r29
.L110:
.LBE53:
	.loc 1 620 0
	lds r24,midiThrough
	cpse r28,r24
	rjmp .L108
	.loc 1 622 0
	lds r24,midiThrough+1
	cpi r24,lo8(-1)
	breq .L108
	.loc 1 624 0
	ori r24,lo8(-64)
	call serial1MIDISend
.LVL203:
	.loc 1 626 0
	mov r24,r29
	call serial1MIDISend
.LVL204:
.L108:
/* epilogue start */
	.loc 1 629 0
	pop r29
.LVL205:
	pop r28
.LVL206:
	ret
	.cfi_endproc
.LFE41:
	.size	midi_ProgramChange, .-midi_ProgramChange
	.section	.text.midi_resetRegisters,"ax",@progbits
.global	midi_resetRegisters
	.type	midi_resetRegisters, @function
midi_resetRegisters:
.LFB42:
	.loc 1 632 0
	.cfi_startproc
	push r28
.LCFI31:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL207:
.LBB54:
	.loc 1 633 0
	ldi r28,0
	rjmp .L117
.LVL208:
.L118:
	.loc 1 634 0 discriminator 3
	ldi r24,lo8(-1)
	call prog_set
.LVL209:
	.loc 1 635 0 discriminator 3
	ldi r22,0
	mov r24,r28
	call register_onOff
.LVL210:
	.loc 1 633 0 discriminator 3
	subi r28,lo8(-(1))
.LVL211:
.L117:
	.loc 1 633 0 is_stmt 0 discriminator 1
	lds r24,registerCount
	cp r28,r24
	brlo .L118
/* epilogue start */
.LBE54:
	.loc 1 637 0 is_stmt 1
	pop r28
.LVL212:
	ret
	.cfi_endproc
.LFE42:
	.size	midi_resetRegisters, .-midi_resetRegisters
	.section	.text.prog_toLcd,"ax",@progbits
.global	prog_toLcd
	.type	prog_toLcd, @function
prog_toLcd:
.LFB47:
	.loc 1 719 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 720 0
	lds r24,prog_Display
	cpi r24,lo8(-1)
	breq .L120
	.loc 1 721 0
	ldi r24,lo8(80)
	call lcd_putc
.LVL213:
	.loc 1 722 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL214:
	.loc 1 723 0
	lds r24,prog_Display
	lsr r24
	lsr r24
	lsr r24
	andi r24,lo8(7)
	subi r24,lo8(-(65))
	call lcd_putc
.LVL215:
	.loc 1 724 0
	lds r24,prog_Display
	andi r24,lo8(7)
	subi r24,lo8(-(49))
	call lcd_putc
.LVL216:
	.loc 1 725 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL217:
	ret
.L120:
	.loc 1 727 0
	ldi r24,lo8(5)
	call lcd_blank
.LVL218:
	ret
	.cfi_endproc
.LFE47:
	.size	prog_toLcd, .-prog_toLcd
	.section	.text.init_Midi2Manual,"ax",@progbits
.global	init_Midi2Manual
	.type	init_Midi2Manual, @function
init_Midi2Manual:
.LFB48:
	.loc 1 734 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL219:
.LBB55:
	.loc 1 738 0
	ldi r25,lo8(64)
.LBE55:
	.loc 1 736 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
.LBB56:
	.loc 1 738 0
	rjmp .L123
.LVL220:
.L124:
	.loc 1 740 0 discriminator 3
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 741 0 discriminator 3
	std Z+1,r24
	.loc 1 742 0 discriminator 3
	std Z+3,r24
	.loc 1 743 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 744 0 discriminator 3
	adiw r30,4
.LVL221:
	.loc 1 738 0 discriminator 3
	subi r25,lo8(-(-1))
.LVL222:
.L123:
	.loc 1 738 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L124
.LBE56:
	.loc 1 747 0 is_stmt 1
	call eeprom_ReadMidiInMap
.LVL223:
	cpi r24,lo8(-1)
	brne .L125
	.loc 1 748 0
	sts midiEEPromLoadError,r24
	.loc 1 749 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
	st Z,__zero_reg__
	.loc 1 750 0
	ldi r24,lo8(36)
	std Z+1,r24
	.loc 1 751 0
	std Z+3,r24
	.loc 1 752 0
	ldi r25,lo8(56)
	std Z+2,r25
	.loc 1 753 0
	ldi r18,lo8(1)
	std Z+16,r18
	.loc 1 754 0
	std Z+17,r24
	.loc 1 755 0
	std Z+19,r24
	.loc 1 756 0
	std Z+18,r25
	.loc 1 757 0
	ldi r18,lo8(2)
	std Z+32,r18
	.loc 1 758 0
	std Z+33,r24
	.loc 1 759 0
	std Z+35,r24
	.loc 1 760 0
	std Z+34,r25
	.loc 1 761 0
	ldi r25,lo8(3)
	std Z+48,r25
	.loc 1 762 0
	std Z+49,r24
	.loc 1 763 0
	std Z+51,r24
	.loc 1 764 0
	ldi r24,lo8(30)
	std Z+50,r24
	.loc 1 765 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL224:
.L125:
	.loc 1 767 0
	call eeprom_ReadMidiThrough
.LVL225:
	cpi r24,lo8(-1)
	brne .L122
	.loc 1 768 0
	ldi r30,lo8(midiThrough)
	ldi r31,hi8(midiThrough)
	st Z,r24
	.loc 1 769 0
	std Z+1,r24
	.loc 1 770 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL226:
.L122:
	ret
	.cfi_endproc
.LFE48:
	.size	init_Midi2Manual, .-init_Midi2Manual
	.section	.text.init_Manual2Midi,"ax",@progbits
.global	init_Manual2Midi
	.type	init_Manual2Midi, @function
init_Manual2Midi:
.LFB49:
	.loc 1 774 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL227:
.LBB57:
	.loc 1 776 0
	ldi r18,0
	rjmp .L128
.LVL228:
.L129:
	.loc 1 777 0 discriminator 3
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 778 0 discriminator 3
	std Z+1,r24
	.loc 1 776 0 discriminator 3
	subi r18,lo8(-(1))
.LVL229:
.L128:
	.loc 1 776 0 is_stmt 0 discriminator 1
	mov r24,r18
	ldi r25,0
	sbiw r24,0
	brne .L129
.LBE57:
	.loc 1 780 0 is_stmt 1
	call eeprom_ReadMidiOutMap
.LVL230:
	cpi r24,lo8(-1)
	brne .L127
	.loc 1 781 0
	sts midiEEPromLoadError,r24
	.loc 1 783 0
	ldi r30,lo8(midiOutMap)
	ldi r31,hi8(midiOutMap)
	st Z,__zero_reg__
	.loc 1 784 0
	ldi r25,lo8(1)
	std Z+2,r25
	.loc 1 785 0
	ldi r25,lo8(2)
	std Z+4,r25
	.loc 1 786 0
	ldi r25,lo8(3)
	std Z+6,r25
	.loc 1 787 0
	ldi r30,lo8(midi_Setting)
	ldi r31,hi8(midi_Setting)
	st Z,__zero_reg__
	.loc 1 788 0
	std Z+1,__zero_reg__
	.loc 1 789 0
	std Z+2,r24
	.loc 1 790 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(2)
	ldi r24,lo8(1)
	call log_putError
.LVL231:
.L127:
	ret
	.cfi_endproc
.LFE49:
	.size	init_Manual2Midi, .-init_Manual2Midi
	.section	.text.Manual_to_MidiNote,"ax",@progbits
.global	Manual_to_MidiNote
	.type	Manual_to_MidiNote, @function
Manual_to_MidiNote:
.LFB51:
	.loc 1 834 0
	.cfi_startproc
.LVL232:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	.loc 1 835 0
	ldi r24,lo8(-1)
.LVL233:
	ldi r25,lo8(-1)
	.loc 1 836 0
	cpi r30,lo8(4)
	brsh .L132
	.loc 1 837 0
	ldi r31,0
	lsl r30
	rol r31
.LVL234:
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r18,Z
	cpi r18,lo8(-1)
	breq .L132
	.loc 1 838 0
	mov r24,r18
	.loc 1 839 0
	mov r25,r22
.L132:
	.loc 1 844 0
	ret
	.cfi_endproc
.LFE51:
	.size	Manual_to_MidiNote, .-Manual_to_MidiNote
	.section	.text.Midi_updateManualRange,"ax",@progbits
.global	Midi_updateManualRange
	.type	Midi_updateManualRange, @function
Midi_updateManualRange:
.LFB52:
	.loc 1 848 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL235:
.LBB58:
	.loc 1 849 0
	ldi r23,0
	rjmp .L134
.LVL236:
.L140:
.LBB59:
.LBB60:
	.loc 1 853 0
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
	breq .L135
.LVL237:
	.loc 1 853 0 is_stmt 0 discriminator 1
	movw r30,r18
	lsl r30
	rol r31
	add r30,r18
	adc r31,r19
	movw r18,r24
.LVL238:
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
	breq .L135
	.loc 1 854 0 is_stmt 1
	cp r26,r22
	brsh .L136
	.loc 1 855 0
	mov r22,r26
.LVL239:
.L136:
	.loc 1 857 0
	cp r21,r18
	brsh .L135
	.loc 1 858 0
	mov r21,r18
.LVL240:
.L135:
	.loc 1 861 0
	tst r21
	breq .L137
	.loc 1 861 0 is_stmt 0 discriminator 1
	cpi r22,lo8(-1)
	brne .L138
.L137:
	.loc 1 862 0 is_stmt 1
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 863 0
	std Z+1,r24
	rjmp .L139
.L138:
	.loc 1 865 0
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	st Z,r22
	.loc 1 866 0
	std Z+1,r21
.L139:
	.loc 1 852 0 discriminator 2
	subi r20,lo8(-(1))
.LVL241:
	rjmp .L141
.LVL242:
.L144:
.LBE60:
.LBE59:
	ldi r20,0
	ldi r22,lo8(-1)
	ldi r21,0
.L141:
.LVL243:
.LBB62:
.LBB61:
	.loc 1 852 0 is_stmt 0 discriminator 1
	cpi r20,lo8(4)
	brsh .+2
	rjmp .L140
.LBE61:
.LBE62:
	.loc 1 849 0 is_stmt 1 discriminator 2
	subi r23,lo8(-(1))
.LVL244:
.L134:
	.loc 1 849 0 is_stmt 0 discriminator 1
	cpi r23,lo8(4)
	brlo .L144
/* epilogue start */
.LBE58:
	.loc 1 870 0 is_stmt 1
	ret
	.cfi_endproc
.LFE52:
	.size	Midi_updateManualRange, .-Midi_updateManualRange
	.section	.text.init_Manual2Module,"ax",@progbits
.global	init_Manual2Module
	.type	init_Manual2Module, @function
init_Manual2Module:
.LFB53:
	.loc 1 872 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL245:
.LBB63:
	.loc 1 873 0
	ldi r22,lo8(3)
	rjmp .L146
.LVL246:
.L147:
.LBB64:
	.loc 1 876 0 discriminator 3
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
	.loc 1 877 0 discriminator 3
	adiw r26,1
	st X,r19
	sbiw r26,1
	.loc 1 878 0 discriminator 3
	movw r30,r26
	std Z+2,__zero_reg__
	.loc 1 875 0 discriminator 3
	subi r18,lo8(-(-1))
.LVL247:
	rjmp .L148
.LVL248:
.L150:
.LBE64:
	ldi r18,lo8(3)
.L148:
.LVL249:
.LBB65:
	.loc 1 875 0 is_stmt 0 discriminator 1
	tst r18
	brge .L147
.LBE65:
	.loc 1 873 0 is_stmt 1 discriminator 2
	subi r22,lo8(-(-1))
.LVL250:
.L146:
	.loc 1 873 0 is_stmt 0 discriminator 1
	tst r22
	brge .L150
.LBE63:
	.loc 1 882 0 is_stmt 1
	call eeprom_ReadManualMap
.LVL251:
	cpi r24,lo8(-1)
	brne .L149
	.loc 1 884 0
	sts midiEEPromLoadError,r24
	.loc 1 885 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(3)
	ldi r24,lo8(1)
	call log_putError
.LVL252:
	.loc 1 887 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
	ldi r24,lo8(36)
	st Z,r24
	.loc 1 888 0
	ldi r19,lo8(67)
	std Z+1,r19
	.loc 1 889 0
	std Z+2,__zero_reg__
	.loc 1 890 0
	ldi r18,lo8(68)
	std Z+3,r18
	.loc 1 891 0
	ldi r25,lo8(91)
	std Z+4,r25
	.loc 1 892 0
	ldi r20,lo8(32)
	std Z+5,r20
	.loc 1 893 0
	std Z+12,r24
	.loc 1 894 0
	std Z+13,r19
	.loc 1 895 0
	ldi r20,lo8(64)
	std Z+14,r20
	.loc 1 896 0
	std Z+15,r18
	.loc 1 897 0
	std Z+16,r25
	.loc 1 898 0
	ldi r20,lo8(96)
	std Z+17,r20
	.loc 1 899 0
	std Z+24,r24
	.loc 1 900 0
	std Z+25,r19
	.loc 1 901 0
	ldi r19,lo8(-128)
	std Z+26,r19
	.loc 1 902 0
	std Z+27,r18
	.loc 1 903 0
	std Z+28,r25
	.loc 1 904 0
	ldi r25,lo8(-96)
	std Z+29,r25
	.loc 1 905 0
	std Z+36,r24
	.loc 1 906 0
	ldi r24,lo8(65)
	std Z+37,r24
	.loc 1 907 0
	ldi r24,lo8(-64)
	std Z+38,r24
	.loc 1 908 0
	std Z+48,__zero_reg__
	.loc 1 909 0
	ldi r24,lo8(29)
	std Z+49,r24
	.loc 1 910 0
	ldi r24,lo8(-32)
	std Z+50,r24
.L149:
	.loc 1 912 0
	call Midi_updateManualRange
.LVL253:
	ret
	.cfi_endproc
.LFE53:
	.size	init_Manual2Module, .-init_Manual2Module
	.section	.text.manualNote_to_moduleBit,"ax",@progbits
.global	manualNote_to_moduleBit
	.type	manualNote_to_moduleBit, @function
manualNote_to_moduleBit:
.LFB54:
	.loc 1 916 0
	.cfi_startproc
.LVL254:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 919 0
	cpi r24,lo8(4)
	brsh .L152
.LBB66:
	.loc 1 922 0
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
.LVL255:
	.loc 1 923 0
	ldi r24,lo8(4)
.LVL256:
.L155:
	.loc 1 925 0
	ld r18,Z
	cp r22,r18
	brlo .L153
	.loc 1 925 0 is_stmt 0 discriminator 1
	ldd r25,Z+1
	cp r25,r22
	brlo .L153
	.loc 1 928 0 is_stmt 1
	ldd r25,Z+2
	sub r22,r18
.LVL257:
	.loc 1 929 0
	ldi r24,0
.LVL258:
	add r25,r22
	ret
.LVL259:
.L153:
	.loc 1 931 0
	adiw r30,3
.LVL260:
	.loc 1 932 0
	subi r24,lo8(-(-1))
.LVL261:
	brne .L155
.LVL262:
.L152:
.LBE66:
	.loc 1 936 0
	ldi r24,lo8(-1)
	ldi r25,0
	.loc 1 937 0
	ret
	.cfi_endproc
.LFE54:
	.size	manualNote_to_moduleBit, .-manualNote_to_moduleBit
	.section	.text.moduleBit_to_manualNote,"ax",@progbits
.global	moduleBit_to_manualNote
	.type	moduleBit_to_manualNote, @function
moduleBit_to_manualNote:
.LFB55:
	.loc 1 939 0
	.cfi_startproc
.LVL263:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 946 0
	ldi r27,0
	.loc 1 945 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
.LVL264:
.L161:
.LBB67:
	.loc 1 948 0
	ldi r20,lo8(4)
	rjmp .L157
.LVL265:
.L160:
	.loc 1 949 0
	ldd r21,Z+2
	cp r24,r21
	brlo .L158
	.loc 1 949 0 is_stmt 0 discriminator 1
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
	brlt .L158
.LVL266:
	.loc 1 952 0 is_stmt 1
	mov r25,r24
	sub r25,r21
	.loc 1 953 0
	mov r24,r27
	add r25,r26
	ret
.LVL267:
.L158:
	.loc 1 955 0 discriminator 2
	adiw r30,3
.LVL268:
	.loc 1 948 0 discriminator 2
	subi r20,lo8(-(-1))
.LVL269:
.L157:
	.loc 1 948 0 is_stmt 0 discriminator 1
	cpse r20,__zero_reg__
	rjmp .L160
.LBE67:
	.loc 1 957 0 is_stmt 1
	subi r27,lo8(-(1))
.LVL270:
	.loc 1 958 0
	cpi r27,lo8(5)
	brlo .L161
	.loc 1 962 0
	ldi r24,lo8(-1)
.LVL271:
	ldi r25,0
	.loc 1 963 0
	ret
	.cfi_endproc
.LFE55:
	.size	moduleBit_to_manualNote, .-moduleBit_to_manualNote
	.section	.text.manual_NoteOnOff,"ax",@progbits
.global	manual_NoteOnOff
	.type	manual_NoteOnOff, @function
manual_NoteOnOff:
.LFB56:
	.loc 1 965 0
	.cfi_startproc
.LVL272:
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
	.loc 1 967 0
	call manualNote_to_moduleBit
.LVL273:
	.loc 1 969 0
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
.LVL274:
	.loc 1 970 0
	mov r17,r25
	andi r17,lo8(31)
.LVL275:
	.loc 1 971 0
	cpse r24,__zero_reg__
	rjmp .L163
	.loc 1 972 0
	lds r24,pipe_Module+1
	and r24,r14
	brne .L164
	.loc 1 972 0 is_stmt 0 discriminator 1
	tst r29
	brlt .L164
.LBB68:
	.loc 1 974 0 is_stmt 1
	andi r29,lo8(127)
.LVL276:
	.loc 1 977 0
	cpi r29,lo8(1)
	brne .L170
	ldi r25,lo8(32)
	rjmp .L165
.L170:
	ldi r25,0
.L165:
	.loc 1 978 0 discriminator 4
	mov r24,r14
	or r25,r17
	call pipeMsgPush
.LVL277:
.L164:
.LBE68:
	.loc 1 980 0
	andi r29,lo8(127)
.LVL278:
	.loc 1 981 0
	brne .L166
	.loc 1 983 0
	mov r22,r14
	mov r24,r17
	call pipe_off
.LVL279:
	rjmp .L163
.L166:
	.loc 1 986 0
	mov r22,r14
	mov r24,r17
	call pipe_on
.LVL280:
.L163:
	.loc 1 991 0
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldd r24,Z+1
	cpi r24,lo8(-1)
	breq .L162
	.loc 1 994 0
	cpi r29,lo8(1)
	breq .L171
	.loc 1 994 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
	tst r25
	breq .L172
	.loc 1 994 0
	ldi r25,lo8(-112)
	rjmp .L168
.L171:
	ldi r25,lo8(-112)
	rjmp .L168
.L172:
	ldi r25,lo8(-128)
.L168:
	.loc 1 994 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL281:
	.loc 1 995 0 is_stmt 1 discriminator 6
	mov r24,r16
	call serial1MIDISend
.LVL282:
	.loc 1 997 0 discriminator 6
	cpse r29,__zero_reg__
	rjmp .L173
	.loc 1 997 0 is_stmt 0
	ldi r24,0
	rjmp .L169
.L173:
	ldi r24,lo8(64)
.L169:
	.loc 1 997 0 discriminator 4
	call serial1MIDISend
.LVL283:
.L162:
/* epilogue start */
	.loc 1 1001 0 is_stmt 1
	pop r29
.LVL284:
	pop r28
.LVL285:
	pop r17
.LVL286:
	pop r16
.LVL287:
	pop r15
	pop r14
.LVL288:
	ret
	.cfi_endproc
.LFE56:
	.size	manual_NoteOnOff, .-manual_NoteOnOff
	.section	.text.midiAllNotesOff,"ax",@progbits
.global	midiAllNotesOff
	.type	midiAllNotesOff, @function
midiAllNotesOff:
.LFB23:
	.loc 1 145 0
	.cfi_startproc
.LVL289:
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
.LVL290:
	.loc 1 146 0
	mov r13,__zero_reg__
	.loc 1 147 0
	rjmp .L175
.LVL291:
.L179:
.LBB69:
	.loc 1 148 0
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
.LVL292:
	.loc 1 150 0
	ldi r24,lo8(3)
	cp r24,r11
	brlo .L176
.LBB70:
	.loc 1 152 0
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
.LVL293:
.LBB71:
	.loc 1 154 0
	ldd r15,Z+2
.LVL294:
	rjmp .L177
.L178:
	.loc 1 155 0 discriminator 3
	clr r14
	inc r14
	add r14,r22
.LVL295:
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
.LVL296:
	.loc 1 154 0 discriminator 3
	dec r15
.LVL297:
	.loc 1 155 0 discriminator 3
	mov r22,r14
.LVL298:
.L177:
	.loc 1 154 0 discriminator 1
	cpse r15,__zero_reg__
	rjmp .L178
.LBE71:
	.loc 1 157 0
	mov r30,r11
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL299:
	.loc 1 158 0
	cpi r24,lo8(16)
	brsh .L176
	.loc 1 160 0
	ori r24,lo8(-80)
.LVL300:
	call serial1MIDISend
.LVL301:
	.loc 1 161 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL302:
	.loc 1 162 0
	ldi r24,0
	call serial1MIDISend
.LVL303:
.L176:
.LBE70:
	.loc 1 169 0
	inc r13
.LVL304:
.L175:
.LBE69:
	.loc 1 147 0
	ldi r24,lo8(3)
	cp r24,r13
	brlo .+2
	rjmp .L179
/* epilogue start */
	.loc 1 171 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
.LVL305:
	pop r12
.LVL306:
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
	.loc 1 173 0
	.cfi_startproc
.LVL307:
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
	.loc 1 175 0
	cpi r24,lo8(4)
	brsh .L181
	.loc 1 175 0 is_stmt 0 discriminator 1
	mov r16,r24
	ldi r17,0
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ld r29,Z
	cpi r29,lo8(-1)
	breq .L181
	.loc 1 175 0 discriminator 2
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r24,Z+1
.LVL308:
	cpi r24,lo8(-1)
	brne .L182
.LBB72:
	rjmp .L181
.LVL309:
.L183:
	.loc 1 177 0 is_stmt 1 discriminator 3
	ldi r20,lo8(-128)
	mov r22,r29
	mov r24,r28
	call manual_NoteOnOff
.LVL310:
	.loc 1 176 0 discriminator 3
	subi r29,lo8(-(1))
.LVL311:
.L182:
	.loc 1 176 0 is_stmt 0 discriminator 1
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r24,Z+1
	cp r24,r29
	brsh .L183
.LVL312:
.L181:
.LBE72:
	.loc 1 181 0 is_stmt 1
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL313:
	.loc 1 182 0
	cpi r24,lo8(16)
	brsh .L180
	.loc 1 184 0
	ori r24,lo8(-80)
.LVL314:
	call serial1MIDISend
.LVL315:
	.loc 1 185 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL316:
	.loc 1 186 0
	ldi r24,0
	call serial1MIDISend
.LVL317:
.L180:
/* epilogue start */
	.loc 1 189 0
	pop r29
	pop r28
.LVL318:
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
	.loc 1 191 0
	.cfi_startproc
	push r28
.LCFI51:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL319:
.LBB73:
	.loc 1 192 0
	ldi r28,0
	rjmp .L186
.LVL320:
.L187:
	.loc 1 193 0 discriminator 3
	mov r24,r28
	call midi_ManualOff
.LVL321:
	.loc 1 192 0 discriminator 3
	subi r28,lo8(-(1))
.LVL322:
.L186:
	.loc 1 192 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brlo .L187
/* epilogue start */
.LBE73:
	.loc 1 198 0 is_stmt 1
	pop r28
.LVL323:
	ret
	.cfi_endproc
.LFE25:
	.size	midi_AllManualsOff, .-midi_AllManualsOff
	.section	.text.midi_CheckRxActiveSense,"ax",@progbits
.global	midi_CheckRxActiveSense
	.type	midi_CheckRxActiveSense, @function
midi_CheckRxActiveSense:
.LFB26:
	.loc 1 200 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 201 0
	lds r24,midiRxActivceSensing
	tst r24
	breq .L188
	.loc 1 203 0
	lds r24,swTimer+6
	cpse r24,__zero_reg__
	rjmp .L188
	.loc 1 205 0
	call midi_AllManualsOff
.LVL324:
	.loc 1 206 0
	sts midiRxActivceSensing,__zero_reg__
.L188:
	ret
	.cfi_endproc
.LFE26:
	.size	midi_CheckRxActiveSense, .-midi_CheckRxActiveSense
	.section	.text.midiNote_to_Manual,"ax",@progbits
.global	midiNote_to_Manual
	.type	midiNote_to_Manual, @function
midiNote_to_Manual:
.LFB50:
	.loc 1 794 0
	.cfi_startproc
.LVL325:
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
	.loc 1 795 0
	mov r29,r24
	andi r29,lo8(15)
.LVL326:
.LBB74:
	.loc 1 797 0
	ldi r28,0
.LBE74:
	.loc 1 796 0
	ldi r25,0
.LBB77:
	.loc 1 797 0
	rjmp .L191
.LVL327:
.L194:
	.loc 1 798 0
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
	brsh .L192
.LVL328:
.LBB75:
	.loc 1 800 0
	movw r26,r30
	ldd r22,Z+1
	mov r23,r16
	sub r23,r22
	mov r22,r23
.LVL329:
	.loc 1 801 0
	brmi .L192
	.loc 1 801 0 is_stmt 0 discriminator 1
	movw r30,r26
	ldd r30,Z+2
	ldi r31,0
	mov r26,r23
	lsl r23
	sbc r27,r27
	cp r26,r30
	cpc r27,r31
	brge .L192
.LVL330:
.LBB76:
	.loc 1 804 0 is_stmt 1
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
.LVL331:
	add r22,r25
.LVL332:
	.loc 1 805 0
	cpi r17,lo8(1)
	brne .L193
	.loc 1 806 0
	sts midiLastInManual,r24
	.loc 1 807 0
	sts midiLastInNote,r22
.L193:
	.loc 1 809 0
	mov r20,r17
.LVL333:
	call manual_NoteOnOff
.LVL334:
	.loc 1 810 0
	ldi r25,lo8(-1)
.LVL335:
.L192:
.LBE76:
.LBE75:
	.loc 1 797 0 discriminator 2
	subi r28,lo8(-(1))
.LVL336:
.L191:
	.loc 1 797 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brsh .+2
	rjmp .L194
.LBE77:
	.loc 1 814 0 is_stmt 1
	cpi r17,lo8(1)
	brne .L195
	.loc 1 814 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L195
	.loc 1 816 0 is_stmt 1
	sts midiLastInNote,r16
	.loc 1 817 0
	sts midiLastInChannel,r29
	.loc 1 818 0
	ldi r24,lo8(-1)
	sts midiLastInManual,r24
.L195:
	.loc 1 821 0
	lds r24,midiThrough
	cpse r29,r24
	rjmp .L190
	.loc 1 823 0
	lds r24,midiThrough+1
	cpi r24,lo8(-1)
	breq .L190
	.loc 1 825 0
	cpi r17,lo8(1)
	breq .L199
	.loc 1 825 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
.LVL337:
	tst r25
	breq .L200
	.loc 1 825 0
	ldi r25,lo8(-112)
	rjmp .L197
.LVL338:
.L199:
	ldi r25,lo8(-112)
.LVL339:
	rjmp .L197
.L200:
	ldi r25,lo8(-128)
.L197:
	.loc 1 825 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL340:
	.loc 1 827 0 is_stmt 1 discriminator 6
	mov r24,r16
	call serial1MIDISend
.LVL341:
	.loc 1 829 0 discriminator 6
	cpse r17,__zero_reg__
	rjmp .L201
	.loc 1 829 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L202
	.loc 1 829 0
	ldi r24,lo8(64)
	rjmp .L198
.L201:
	ldi r24,lo8(64)
	rjmp .L198
.L202:
	ldi r24,0
.L198:
	.loc 1 829 0 discriminator 6
	call serial1MIDISend
.LVL342:
.L190:
/* epilogue start */
	.loc 1 832 0 is_stmt 1
	pop r29
.LVL343:
	pop r28
.LVL344:
	pop r17
.LVL345:
	pop r16
.LVL346:
	ret
	.cfi_endproc
.LFE50:
	.size	midiNote_to_Manual, .-midiNote_to_Manual
	.section	.text.midiIn_Process,"ax",@progbits
.global	midiIn_Process
	.type	midiIn_Process, @function
midiIn_Process:
.LFB29:
	.loc 1 245 0
	.cfi_startproc
.LVL347:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 246 0
	tst r24
	brlt .+2
	rjmp .L204
	.loc 1 249 0
	cpi r24,lo8(-8)
	brlo .L205
	.loc 1 251 0
	cpi r24,lo8(-2)
	brne .L206
	.loc 1 252 0
	ldi r24,lo8(1)
.LVL348:
	sts midiRxActivceSensing,r24
.LBB78:
	.loc 1 253 0
	in r25,__SREG__
.LVL349:
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
	.loc 1 253 0
	rjmp .L207
.LVL350:
.L208:
	.loc 1 253 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(25)
.LVL351:
	std Z+6,r24
	std Z+7,__zero_reg__
.LVL352:
	.loc 1 253 0 discriminator 3
	ldi r24,0
.LVL353:
.L207:
	.loc 1 253 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L208
.LVL354:
.LBB81:
.LBB82:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL355:
.LBE82:
.LBE81:
.LBE78:
	ret
.LVL356:
.L206:
	.loc 1 254 0
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L203
	.loc 1 255 0
	call midiAllReset
.LVL357:
	ret
.LVL358:
.L205:
	.loc 1 260 0
	sts midiLastCommand,r24
	.loc 1 261 0
	sts midiDataByteCount,__zero_reg__
	.loc 1 262 0
	ldi r25,lo8(-128)
	add r25,r24
	cpi r25,lo8(64)
	brsh .L210
	.loc 1 264 0
	ldi r24,lo8(2)
.LVL359:
	sts midiDataByteExpected,r24
	ret
.LVL360:
.L210:
	.loc 1 265 0
	ldi r25,lo8(32)
	add r25,r24
	cpi r25,lo8(16)
	brsh .L211
	.loc 1 267 0
	ldi r24,lo8(2)
.LVL361:
	sts midiDataByteExpected,r24
	ret
.LVL362:
.L211:
	.loc 1 268 0
	cpi r24,lo8(-14)
	brne .L212
	.loc 1 270 0
	ldi r24,lo8(2)
.LVL363:
	sts midiDataByteExpected,r24
	ret
.LVL364:
.L212:
	.loc 1 271 0
	cpi r24,lo8(-16)
	brne .L213
	.loc 1 273 0
	ldi r24,lo8(-1)
.LVL365:
	sts midiDataByteExpected,r24
	ret
.LVL366:
.L213:
	.loc 1 274 0
	ldi r25,lo8(64)
	add r25,r24
	cpi r25,lo8(32)
	brsh .L214
	.loc 1 276 0
	ldi r24,lo8(1)
.LVL367:
	sts midiDataByteExpected,r24
	ret
.LVL368:
.L214:
	.loc 1 277 0
	cpi r24,lo8(-15)
	breq .L215
	.loc 1 277 0 is_stmt 0 discriminator 1
	cpi r24,lo8(-13)
	brne .L216
.L215:
	.loc 1 279 0 is_stmt 1
	ldi r24,lo8(1)
.LVL369:
	sts midiDataByteExpected,r24
	ret
.LVL370:
.L216:
	.loc 1 280 0
	cpi r24,lo8(-9)
	brne .+2
	rjmp .L203
	.loc 1 284 0
	sts midiDataByteExpected,__zero_reg__
	ret
.L204:
	.loc 1 290 0
	lds r30,midiDataByteCount
	cpi r30,lo8(8)
	brsh .L217
	.loc 1 292 0
	ldi r25,lo8(1)
	add r25,r30
	sts midiDataByteCount,r25
	ldi r31,0
	subi r30,lo8(-(midiDataByte))
	sbci r31,hi8(-(midiDataByte))
	st Z,r24
.L217:
	.loc 1 294 0
	lds r24,midiDataByteExpected
.LVL371:
	cpi r24,lo8(-1)
	breq .L203
	.loc 1 296 0
	lds r25,midiDataByteCount
	cp r25,r24
	brlo .L203
	.loc 1 298 0
	lds r25,midiLastCommand
	cpi r25,lo8(-16)
	brsh .L218
.LBB83:
	.loc 1 300 0
	mov r24,r25
	andi r24,lo8(15)
.LVL372:
	.loc 1 302 0
	andi r25,lo8(-16)
	cpi r25,lo8(-112)
	breq .L219
	brsh .L220
	cpi r25,lo8(-128)
	breq .L221
	rjmp .L218
.L220:
	cpi r25,lo8(-80)
	breq .L222
	cpi r25,lo8(-64)
	breq .L223
	rjmp .L218
.L221:
.LVL373:
	.loc 1 306 0
	ldi r20,0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL374:
	.loc 1 307 0
	rjmp .L218
.LVL375:
.L219:
	.loc 1 309 0
	lds r25,midiDataByte+1
	cpse r25,__zero_reg__
	rjmp .L225
	.loc 1 311 0
	ldi r20,0
	rjmp .L224
.L225:
	.loc 1 314 0
	ldi r20,lo8(1)
.L224:
.LVL376:
	.loc 1 316 0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL377:
	.loc 1 317 0
	rjmp .L218
.LVL378:
.L222:
	.loc 1 319 0
	lds r25,midiDataByte
	cpi r25,lo8(123)
	brne .L218
	.loc 1 320 0
	call midiAllNotesOff
.LVL379:
	rjmp .L218
.LVL380:
.L223:
	.loc 1 324 0
	lds r22,midiDataByte
	call midi_ProgramChange
.LVL381:
.L218:
.LBE83:
	.loc 1 331 0
	sts midiDataByteCount,__zero_reg__
.L203:
	ret
	.cfi_endproc
.LFE29:
	.size	midiIn_Process, .-midiIn_Process
	.section	.text.proc_ESPmidi,"ax",@progbits
.global	proc_ESPmidi
	.type	proc_ESPmidi, @function
proc_ESPmidi:
.LFB30:
	.loc 1 337 0
	.cfi_startproc
.LVL382:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 341 0
	lds r25,serESPMidiTmp+2
	mov r24,r25
.LVL383:
	andi r24,lo8(15)
.LVL384:
	.loc 1 343 0
	andi r25,lo8(-16)
	cpi r25,lo8(-128)
	breq .L228
	brsh .L229
	tst r25
	breq .L230
	ret
.L229:
	cpi r25,lo8(-112)
	breq .L231
	cpi r25,lo8(-80)
	breq .L232
	ret
.L228:
.LVL385:
	.loc 1 347 0
	ldi r20,0
	lds r22,serESPMidiTmp+1
	call midiNote_to_Manual
.LVL386:
	.loc 1 348 0
	ret
.LVL387:
.L231:
	.loc 1 350 0
	lds r25,serESPMidiTmp
	cpse r25,__zero_reg__
	rjmp .L235
	.loc 1 352 0
	ldi r20,0
	rjmp .L233
.L235:
	.loc 1 355 0
	ldi r20,lo8(1)
.L233:
.LVL388:
	.loc 1 357 0
	lds r22,serESPMidiTmp+1
	call midiNote_to_Manual
.LVL389:
	.loc 1 358 0
	ret
.LVL390:
.L232:
	.loc 1 360 0
	lds r25,serESPMidiTmp+1
	cpi r25,lo8(123)
	brne .L226
	.loc 1 361 0
	call midiAllNotesOff
.LVL391:
	ret
.LVL392:
.L230:
	.loc 1 366 0
	lds r25,serESPMidiTmp+1
	mov r24,r25
.LVL393:
	andi r24,lo8(15)
.LVL394:
	.loc 1 367 0
	andi r25,lo8(-16)
	cpi r25,lo8(-64)
	brne .L226
	.loc 1 369 0
	lds r22,serESPMidiTmp
	call midi_ProgramChange
.LVL395:
.L226:
	ret
	.cfi_endproc
.LFE30:
	.size	proc_ESPmidi, .-proc_ESPmidi
	.section	.text.midiKeyPress_Process,"ax",@progbits
.global	midiKeyPress_Process
	.type	midiKeyPress_Process, @function
midiKeyPress_Process:
.LFB57:
	.loc 1 1005 0
	.cfi_startproc
.LVL396:
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
	.loc 1 1006 0
	call serial0USB_logPipeIn
.LVL397:
	.loc 1 1007 0
	mov r16,r28
	andi r16,lo8(-32)
.LVL398:
	.loc 1 1008 0
	andi r28,lo8(31)
	mov r11,r28
.LVL399:
	.loc 1 1012 0
	cpi r16,lo8(32)
	brne .+2
	rjmp .L258
	.loc 1 1012 0 is_stmt 0 discriminator 1
	tst r16
	brne .+2
	rjmp .L259
.LBB84:
	rjmp .L236
.LVL400:
.L257:
	.loc 1 1016 0 is_stmt 1
	sbrs r29,0
	rjmp .L239
	.loc 1 1018 0
	ldi r18,lo8(32)
	mul r28,r18
	movw r24,r0
	clr __zero_reg__
	mov r15,r11
	or r15,r24
	mov r24,r15
	call moduleBit_to_manualNote
.LVL401:
	mov r12,r24
.LVL402:
	mov r14,r25
	.loc 1 1020 0
	mov r17,r24
	cpi r24,lo8(-1)
	brne .+2
	rjmp .L240
.LBB85:
	.loc 1 1023 0
	mov r22,r25
	call Manual_to_MidiNote
.LVL403:
	mov r13,r25
.LVL404:
	.loc 1 1024 0
	cpi r24,lo8(-1)
	breq .L241
	.loc 1 1026 0
	cpi r16,lo8(32)
	breq .L260
	.loc 1 1026 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
	tst r25
	breq .L261
	.loc 1 1026 0
	ldi r25,lo8(-112)
	rjmp .L242
.L260:
	ldi r25,lo8(-112)
	rjmp .L242
.L261:
	ldi r25,lo8(-128)
.L242:
	.loc 1 1026 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL405:
	.loc 1 1028 0 is_stmt 1 discriminator 6
	mov r24,r13
	call serial1MIDISend
.LVL406:
	.loc 1 1030 0 discriminator 6
	cpse r16,__zero_reg__
	rjmp .L262
	.loc 1 1030 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L263
	.loc 1 1030 0
	ldi r24,lo8(64)
	rjmp .L243
.L262:
	ldi r24,lo8(64)
	rjmp .L243
.L263:
	ldi r24,0
.L243:
	.loc 1 1030 0 discriminator 6
	call serial1MIDISend
.LVL407:
	.loc 1 1032 0 is_stmt 1 discriminator 6
	cpi r16,lo8(32)
	brne .L241
	.loc 1 1034 0
	sts midiLastOutManual,r12
.LVL408:
	.loc 1 1035 0
	sts midiLastOutNote,r14
.LVL409:
.L241:
	.loc 1 1039 0
	ldi r20,lo8(1)
	cpi r16,lo8(32)
	breq .L244
	ldi r20,0
.L244:
	mov r13,r20
.LVL410:
	.loc 1 1041 0
	cpse r17,__zero_reg__
	rjmp .L245
	.loc 1 1042 0
	lds r24,midi_Couplers
	cpi r24,lo8(-1)
	brne .L246
	.loc 1 1043 0
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL411:
.L246:
	.loc 1 1045 0
	lds r24,midi_Couplers+1
	cpi r24,lo8(-1)
	brne .L247
	.loc 1 1046 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL412:
.L247:
	.loc 1 1048 0
	lds r24,midi_Couplers+3
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L240
	.loc 1 1049 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL413:
	rjmp .L240
.L245:
	.loc 1 1051 0
	cpi r17,lo8(1)
	brne .L248
	.loc 1 1052 0
	lds r24,midi_Couplers+2
	cpi r24,lo8(-1)
	brne .L249
	.loc 1 1053 0
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL414:
.L249:
	.loc 1 1055 0
	lds r24,midi_Couplers+4
	cpi r24,lo8(-1)
	brne .L250
	.loc 1 1056 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL415:
.L250:
	.loc 1 1058 0
	lds r24,midi_Couplers+6
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L240
	.loc 1 1059 0
	mov r20,r13
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL416:
	rjmp .L240
.L248:
	.loc 1 1061 0
	cpi r17,lo8(2)
	brne .L251
	.loc 1 1062 0
	lds r24,midi_Couplers+5
	cpi r24,lo8(-1)
	brne .L252
	.loc 1 1063 0
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL417:
.L252:
	.loc 1 1065 0
	lds r24,midi_Couplers+7
	cpi r24,lo8(-1)
	brne .L253
	.loc 1 1066 0
	mov r20,r13
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL418:
.L253:
	.loc 1 1068 0
	lds r24,midi_Couplers+8
	cpi r24,lo8(-1)
	brne .L240
	.loc 1 1069 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL419:
	rjmp .L240
.L251:
	.loc 1 1071 0
	cpi r17,lo8(3)
	brne .L240
	.loc 1 1072 0
	lds r24,midi_Couplers+9
	cpi r24,lo8(-1)
	brne .L254
	.loc 1 1073 0
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL420:
.L254:
	.loc 1 1075 0
	lds r24,midi_Couplers+10
	cpi r24,lo8(-1)
	brne .L255
	.loc 1 1076 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL421:
.L255:
	.loc 1 1078 0
	lds r24,midi_Couplers+11
	cpi r24,lo8(-1)
	brne .L240
	.loc 1 1079 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL422:
.L240:
.LBE85:
	.loc 1 1084 0
	mov r24,r15
	call moduleBit_to_registerNr
.LVL423:
	cpi r16,lo8(32)
	brne .L264
	ldi r18,lo8(-128)
	rjmp .L256
.L264:
	ldi r18,0
.L256:
	.loc 1 1084 0 is_stmt 0 discriminator 4
	or r24,r18
	sts midi_RegisterChanged,r24
.L239:
	.loc 1 1087 0 is_stmt 1 discriminator 2
	lsr r29
.LVL424:
	.loc 1 1014 0 discriminator 2
	subi r28,lo8(-(1))
.LVL425:
	rjmp .L237
.LVL426:
.L258:
.LBE84:
	ldi r28,0
.LVL427:
	rjmp .L237
.LVL428:
.L259:
	ldi r28,0
.LVL429:
.L237:
.LBB86:
	.loc 1 1014 0 is_stmt 0 discriminator 1
	cpi r28,lo8(8)
	brsh .+2
	rjmp .L257
.LVL430:
.L236:
/* epilogue start */
.LBE86:
	.loc 1 1090 0 is_stmt 1
	pop r29
.LVL431:
	pop r28
	pop r17
	pop r16
.LVL432:
	pop r15
	pop r14
.LVL433:
	pop r13
	pop r12
	pop r11
.LVL434:
	ret
	.cfi_endproc
.LFE57:
	.size	midiKeyPress_Process, .-midiKeyPress_Process
	.section	.text.midiSendAllNotesOff,"ax",@progbits
.global	midiSendAllNotesOff
	.type	midiSendAllNotesOff, @function
midiSendAllNotesOff:
.LFB58:
	.loc 1 1094 0
	.cfi_startproc
	push r28
.LCFI65:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL435:
.LBB87:
	.loc 1 1095 0
	ldi r28,0
	rjmp .L266
.LVL436:
.L268:
.LBB88:
	.loc 1 1096 0
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL437:
	.loc 1 1097 0
	cpi r24,lo8(16)
	brsh .L267
	.loc 1 1098 0
	ori r24,lo8(-80)
.LVL438:
	call serial1MIDISend
.LVL439:
	.loc 1 1099 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL440:
	.loc 1 1100 0
	ldi r24,0
	call serial1MIDISend
.LVL441:
.L267:
.LBE88:
	.loc 1 1095 0 discriminator 2
	subi r28,lo8(-(1))
.LVL442:
.L266:
	.loc 1 1095 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brlo .L268
/* epilogue start */
.LBE87:
	.loc 1 1103 0 is_stmt 1
	pop r28
.LVL443:
	ret
	.cfi_endproc
.LFE58:
	.size	midiSendAllNotesOff, .-midiSendAllNotesOff
	.section	.text.midi_SendActiveSense,"ax",@progbits
.global	midi_SendActiveSense
	.type	midi_SendActiveSense, @function
midi_SendActiveSense:
.LFB59:
	.loc 1 1105 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1106 0
	ldi r24,lo8(-2)
	call serial1MIDISend
.LVL444:
	ret
	.cfi_endproc
.LFE59:
	.size	midi_SendActiveSense, .-midi_SendActiveSense
	.section	.text.midi_CheckTxActiveSense,"ax",@progbits
.global	midi_CheckTxActiveSense
	.type	midi_CheckTxActiveSense, @function
midi_CheckTxActiveSense:
.LFB27:
	.loc 1 211 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 214 0
	lds r24,swTimer+16
	tst r24
	breq .L271
	.loc 1 214 0 is_stmt 0 discriminator 1
	lds r24,swTimer+16
	cpi r24,lo8(-1)
	brne .L270
.L271:
.LBB89:
	.loc 1 216 0 is_stmt 1
	in r25,__SREG__
.LVL445:
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
	.loc 1 216 0
	ldi r24,lo8(1)
	rjmp .L273
.LVL446:
.L274:
	.loc 1 216 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(10)
.LVL447:
	std Z+16,r24
	std Z+17,__zero_reg__
.LVL448:
	.loc 1 216 0 discriminator 3
	ldi r24,0
.LVL449:
.L273:
	.loc 1 216 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L274
.LVL450:
.LBB92:
.LBB93:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL451:
.LBE93:
.LBE92:
.LBE89:
	.loc 1 217 0
	lds r24,midi_Setting
.LVL452:
	cpse r24,__zero_reg__
	.loc 1 218 0
	call midi_SendActiveSense
.LVL453:
.L275:
	.loc 1 221 0
	sts midiTxLastCmd,__zero_reg__
.L270:
	ret
	.cfi_endproc
.LFE27:
	.size	midi_CheckTxActiveSense, .-midi_CheckTxActiveSense
	.comm	prog_UpdDisplay,1,1
	.comm	prog_Display,1,1
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
	.file 12 ".././lcd_u.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1e44
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF211
	.byte	0xc
	.long	.LASF212
	.long	.LASF213
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
	.byte	0xd1
	.long	0x42c
	.uleb128 0xa
	.long	.LASF60
	.byte	0x7
	.byte	0xd2
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF61
	.byte	0x7
	.byte	0xd3
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF62
	.byte	0x7
	.byte	0xd4
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x7
	.byte	0xd5
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
	.long	.LASF214
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0xe
	.long	.LASF215
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
	.byte	0x42
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
	.byte	0x44
	.long	0x437
	.long	.LLST0
	.uleb128 0x12
	.long	.Ldebug_ranges0+0
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x45
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
	.byte	0x4c
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
	.byte	0x4c
	.long	0x3b
	.long	.LLST2
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF70
	.byte	0x1
	.byte	0x61
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
	.byte	0x62
	.long	0xb8
	.long	.LLST3
	.uleb128 0x11
	.long	.LASF69
	.byte	0x1
	.byte	0x64
	.long	0x3b
	.long	.LLST4
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF71
	.byte	0x1
	.byte	0x6f
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
	.byte	0x6f
	.long	0xb8
	.long	.LLST5
	.uleb128 0x11
	.long	.LASF69
	.byte	0x1
	.byte	0x70
	.long	0x3b
	.long	.LLST6
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.byte	0x8c
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
	.long	0x1d77
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF73
	.byte	0x1
	.word	0x17d
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
	.word	0x17e
	.long	0x3b
	.long	.LLST7
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x1a
	.long	.LASF75
	.byte	0x1
	.word	0x17f
	.long	0x3b
	.long	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.word	0x188
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
	.word	0x18d
	.long	0x3b
	.long	.LLST9
	.byte	0
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x30
	.long	0x69f
	.uleb128 0x1a
	.long	.LASF77
	.byte	0x1
	.word	0x19b
	.long	0x3b
	.long	.LLST10
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x19c
	.long	0x3b
	.long	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL32
	.long	0x1d84
	.uleb128 0x1d
	.long	.LVL33
	.long	0x1d91
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
	.long	0x1d9e
	.uleb128 0x1f
	.long	.LVL43
	.long	0x1d91
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
	.word	0x1a5
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
	.word	0x1a5
	.long	0x3b
	.long	.LLST12
	.uleb128 0x22
	.long	.LASF68
	.byte	0x1
	.word	0x1a7
	.long	0x256
	.uleb128 0x23
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.word	0x1aa
	.long	0x75f
	.long	.LLST13
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x1ac
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
	.word	0x1bc
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
	.word	0x1bc
	.long	0x3b
	.long	.LLST15
	.uleb128 0x25
	.long	.LASF84
	.byte	0x1
	.word	0x1bd
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
	.word	0x1be
	.long	0x3b
	.long	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF86
	.byte	0x1
	.word	0x1c7
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
	.word	0x1c7
	.long	0x3b
	.long	.LLST18
	.uleb128 0x21
	.long	.LASF87
	.byte	0x1
	.word	0x1c7
	.long	0x3b
	.long	.LLST19
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x22
	.long	.LASF88
	.byte	0x1
	.word	0x1cc
	.long	0x256
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x78
	.long	0x85c
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.word	0x1cf
	.long	0x3b
	.long	.LLST20
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.word	0x1d0
	.long	0x3b
	.long	.LLST21
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.word	0x1d1
	.long	0x3b
	.long	.LLST22
	.uleb128 0x1a
	.long	.LASF92
	.byte	0x1
	.word	0x1d2
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
	.word	0x1e5
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
	.word	0x1e5
	.long	0x3b
	.long	.LLST24
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x22
	.long	.LASF88
	.byte	0x1
	.word	0x1e9
	.long	0x256
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0xa8
	.long	0x8f9
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.word	0x1ec
	.long	0x3b
	.long	.LLST25
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.word	0x1ed
	.long	0x3b
	.long	.LLST26
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.word	0x1ee
	.long	0x3b
	.long	.LLST27
	.uleb128 0x1a
	.long	.LASF92
	.byte	0x1
	.word	0x1ef
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
	.word	0x200
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
	.word	0x200
	.long	0x3b
	.long	.LLST30
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x201
	.long	0x3b
	.long	.LLST31
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x202
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
	.word	0x20a
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
	.word	0x20a
	.long	0x437
	.long	.LLST34
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x20b
	.long	0x3b
	.long	.LLST35
	.uleb128 0x1a
	.long	.LASF92
	.byte	0x1
	.word	0x20d
	.long	0x3b
	.long	.LLST36
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xd8
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x20e
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
	.word	0x225
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST38
	.byte	0x1
	.long	0xaa6
	.uleb128 0x21
	.long	.LASF78
	.byte	0x1
	.word	0x225
	.long	0x3b
	.long	.LLST39
	.uleb128 0x21
	.long	.LASF98
	.byte	0x1
	.word	0x225
	.long	0x3b
	.long	.LLST40
	.uleb128 0x23
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x22
	.long	.LASF88
	.byte	0x1
	.word	0x229
	.long	0x256
	.uleb128 0x1b
	.long	.LBB37
	.long	.LBE37
	.long	0xa93
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.word	0x22c
	.long	0x3b
	.long	.LLST41
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.word	0x22d
	.long	0x3b
	.long	.LLST42
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.word	0x22e
	.long	0x3b
	.long	.LLST43
	.uleb128 0x14
	.long	.LVL118
	.long	0x1dab
	.uleb128 0x14
	.long	.LVL120
	.long	0x1db8
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
	.byte	0xe4
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
	.word	0x27f
	.byte	0x1
	.long	0x3b
	.long	.LFB43
	.long	.LFE43
	.long	.LLST44
	.byte	0x1
	.long	0xb52
	.uleb128 0x21
	.long	.LASF101
	.byte	0x1
	.word	0x27f
	.long	0x3b
	.long	.LLST45
	.uleb128 0x21
	.long	.LASF102
	.byte	0x1
	.word	0x27f
	.long	0x3b
	.long	.LLST46
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x282
	.long	0x3b
	.long	.LLST47
	.uleb128 0x1b
	.long	.LBB38
	.long	.LBE38
	.long	0xb3f
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x1
	.word	0x284
	.long	0x437
	.long	.LLST48
	.uleb128 0x14
	.long	.LVL128
	.long	0x978
	.byte	0
	.uleb128 0x14
	.long	.LVL132
	.long	0x55e
	.uleb128 0x14
	.long	.LVL134
	.long	0x1dc5
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF104
	.byte	0x1
	.word	0x28e
	.byte	0x1
	.long	0x3b
	.long	.LFB44
	.long	.LFE44
	.long	.LLST49
	.byte	0x1
	.long	0xbe6
	.uleb128 0x21
	.long	.LASF101
	.byte	0x1
	.word	0x28e
	.long	0x3b
	.long	.LLST50
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x291
	.long	0x3b
	.long	.LLST51
	.uleb128 0x1a
	.long	.LASF105
	.byte	0x1
	.word	0x292
	.long	0x437
	.long	.LLST52
	.uleb128 0x1a
	.long	.LASF106
	.byte	0x1
	.word	0x293
	.long	0x3b
	.long	.LLST53
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x1
	.word	0x294
	.long	0x3b
	.long	.LLST54
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x295
	.long	0x3b
	.long	.LLST55
	.uleb128 0x1f
	.long	.LVL145
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
	.long	.LASF108
	.byte	0x1
	.word	0x2b1
	.byte	0x1
	.long	0x3b
	.long	.LFB45
	.long	.LFE45
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xc5a
	.uleb128 0x21
	.long	.LASF101
	.byte	0x1
	.word	0x2b1
	.long	0x3b
	.long	.LLST56
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x2b3
	.long	0x3b
	.long	.LLST57
	.uleb128 0x1a
	.long	.LASF105
	.byte	0x1
	.word	0x2b4
	.long	0x437
	.long	.LLST58
	.uleb128 0x1a
	.long	.LASF106
	.byte	0x1
	.word	0x2b5
	.long	0x3b
	.long	.LLST59
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x110
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2b6
	.long	0x3b
	.long	.LLST60
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF109
	.byte	0x1
	.word	0x2c8
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xc86
	.uleb128 0x21
	.long	.LASF110
	.byte	0x1
	.word	0x2c8
	.long	0x3b
	.long	.LLST61
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF111
	.byte	0x1
	.word	0x23b
	.byte	0x1
	.long	0x3b
	.long	.LFB40
	.long	.LFE40
	.long	.LLST62
	.byte	0x1
	.long	0xd69
	.uleb128 0x21
	.long	.LASF101
	.byte	0x1
	.word	0x23b
	.long	0x3b
	.long	.LLST63
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x23d
	.long	0x3b
	.long	.LLST64
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x128
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x1
	.word	0x240
	.long	0x3b
	.long	.LLST65
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x241
	.long	0x3b
	.long	.LLST66
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x1
	.word	0x242
	.long	0x437
	.long	.LLST67
	.uleb128 0x22
	.long	.LASF58
	.byte	0x1
	.word	0x251
	.long	0xb8
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x140
	.long	0xd4a
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x1
	.word	0x243
	.long	0x3b
	.long	.LLST68
	.uleb128 0x23
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.word	0x247
	.long	0x3b
	.long	.LLST69
	.uleb128 0x1f
	.long	.LVL179
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
	.uleb128 0x1d
	.long	.LVL172
	.long	0xc5a
	.long	0xd5e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL187
	.long	0x59a
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF114
	.byte	0x1
	.word	0x258
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST70
	.byte	0x1
	.long	0xe16
	.uleb128 0x21
	.long	.LASF115
	.byte	0x1
	.word	0x258
	.long	0x3b
	.long	.LLST71
	.uleb128 0x21
	.long	.LASF101
	.byte	0x1
	.word	0x258
	.long	0x3b
	.long	.LLST72
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x158
	.long	0xdfc
	.uleb128 0x1a
	.long	.LASF116
	.byte	0x1
	.word	0x25b
	.long	0x3b
	.long	.LLST73
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x170
	.long	0xdd7
	.uleb128 0x1a
	.long	.LASF117
	.byte	0x1
	.word	0x25d
	.long	0x3b
	.long	.LLST74
	.byte	0
	.uleb128 0x1d
	.long	.LVL201
	.long	0xc86
	.long	0xdeb
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL202
	.long	0xc5a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL203
	.long	0x1dd2
	.uleb128 0x1f
	.long	.LVL204
	.long	0x1dd2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF118
	.byte	0x1
	.word	0x278
	.long	.LFB42
	.long	.LFE42
	.long	.LLST75
	.byte	0x1
	.long	0xe72
	.uleb128 0x23
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x279
	.long	0x3b
	.long	.LLST76
	.uleb128 0x1d
	.long	.LVL209
	.long	0xc5a
	.long	0xe5b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1f
	.long	.LVL210
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
	.uleb128 0x19
	.byte	0x1
	.long	.LASF119
	.byte	0x1
	.word	0x2cf
	.long	.LFB47
	.long	.LFE47
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xeea
	.uleb128 0x1d
	.long	.LVL213
	.long	0x1ddf
	.long	0xea0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x1d
	.long	.LVL214
	.long	0x1ddf
	.long	0xeb4
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x14
	.long	.LVL215
	.long	0x1ddf
	.uleb128 0x14
	.long	.LVL216
	.long	0x1ddf
	.uleb128 0x1d
	.long	.LVL217
	.long	0x1ddf
	.long	0xeda
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1f
	.long	.LVL218
	.long	0x1dec
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF120
	.byte	0x1
	.word	0x2de
	.long	.LFB48
	.long	.LFE48
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xf7f
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x1
	.word	0x2df
	.long	0xf7f
	.long	.LLST77
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x190
	.long	0xf2c
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2e2
	.long	0x3b
	.long	.LLST78
	.byte	0
	.uleb128 0x14
	.long	.LVL223
	.long	0x1df9
	.uleb128 0x1d
	.long	.LVL224
	.long	0x1d91
	.long	0xf57
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
	.long	.LVL225
	.long	0x1e06
	.uleb128 0x1f
	.long	.LVL226
	.long	0x1d91
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
	.long	.LASF122
	.byte	0x1
	.word	0x306
	.long	.LFB49
	.long	.LFE49
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xfe3
	.uleb128 0x1b
	.long	.LBB57
	.long	.LBE57
	.long	0xfbb
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x308
	.long	0x3b
	.long	.LLST79
	.byte	0
	.uleb128 0x14
	.long	.LVL230
	.long	0x1e13
	.uleb128 0x1f
	.long	.LVL231
	.long	0x1d91
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
	.long	.LASF123
	.byte	0x1
	.word	0x342
	.byte	0x1
	.long	0x1f6
	.long	.LFB51
	.long	.LFE51
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x102d
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x342
	.long	0x3b
	.long	.LLST80
	.uleb128 0x2a
	.long	.LASF33
	.byte	0x1
	.word	0x342
	.long	0x3b
	.byte	0x1
	.byte	0x66
	.uleb128 0x22
	.long	.LASF68
	.byte	0x1
	.word	0x343
	.long	0x1f6
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF124
	.byte	0x1
	.word	0x350
	.long	.LFB52
	.long	.LFE52
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x109c
	.uleb128 0x23
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x351
	.long	0x3b
	.long	.LLST81
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1a8
	.uleb128 0x1a
	.long	.LASF125
	.byte	0x1
	.word	0x352
	.long	0x3b
	.long	.LLST82
	.uleb128 0x1a
	.long	.LASF126
	.byte	0x1
	.word	0x353
	.long	0x3b
	.long	.LLST83
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1a8
	.uleb128 0x1a
	.long	.LASF127
	.byte	0x1
	.word	0x354
	.long	0x3b
	.long	.LLST84
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF128
	.byte	0x1
	.word	0x368
	.long	.LFB53
	.long	.LFE53
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x111b
	.uleb128 0x1b
	.long	.LBB63
	.long	.LBE63
	.long	0x10e6
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x369
	.long	0x29
	.long	.LLST85
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.word	0x36b
	.long	0x29
	.long	.LLST86
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL251
	.long	0x1e20
	.uleb128 0x1d
	.long	.LVL252
	.long	0x1d91
	.long	0x1111
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
	.long	.LVL253
	.long	0x102d
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF129
	.byte	0x1
	.word	0x394
	.byte	0x1
	.long	0x256
	.long	.LFB54
	.long	.LFE54
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x118f
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x394
	.long	0x3b
	.long	.LLST87
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x394
	.long	0x3b
	.long	.LLST88
	.uleb128 0x22
	.long	.LASF68
	.byte	0x1
	.word	0x396
	.long	0x256
	.uleb128 0x23
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.word	0x399
	.long	0x118f
	.long	.LLST89
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x39b
	.long	0x3b
	.long	.LLST90
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x294
	.uleb128 0x20
	.byte	0x1
	.long	.LASF130
	.byte	0x1
	.word	0x3ab
	.byte	0x1
	.long	0x226
	.long	.LFB55
	.long	.LFE55
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1209
	.uleb128 0x21
	.long	.LASF38
	.byte	0x1
	.word	0x3ab
	.long	0x3b
	.long	.LLST91
	.uleb128 0x22
	.long	.LASF68
	.byte	0x1
	.word	0x3af
	.long	0x226
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.word	0x3b0
	.long	0x118f
	.long	.LLST92
	.uleb128 0x1a
	.long	.LASF35
	.byte	0x1
	.word	0x3b2
	.long	0x3b
	.long	.LLST93
	.uleb128 0x23
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x3b4
	.long	0x3b
	.long	.LLST94
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF131
	.byte	0x1
	.word	0x3c5
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.long	.LLST95
	.byte	0x1
	.long	0x1318
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x3c5
	.long	0x3b
	.long	.LLST96
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x3c5
	.long	0x3b
	.long	.LLST97
	.uleb128 0x21
	.long	.LASF98
	.byte	0x1
	.word	0x3c5
	.long	0x3b
	.long	.LLST98
	.uleb128 0x22
	.long	.LASF132
	.byte	0x1
	.word	0x3c6
	.long	0x256
	.uleb128 0x1a
	.long	.LASF133
	.byte	0x1
	.word	0x3c9
	.long	0x3b
	.long	.LLST99
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.word	0x3ca
	.long	0x3b
	.long	.LLST100
	.uleb128 0x1b
	.long	.LBB68
	.long	.LBE68
	.long	0x12a3
	.uleb128 0x22
	.long	.LASF134
	.byte	0x1
	.word	0x3cf
	.long	0xe2
	.uleb128 0x14
	.long	.LVL277
	.long	0x1e2d
	.byte	0
	.uleb128 0x1d
	.long	.LVL273
	.long	0x111b
	.long	0x12bd
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
	.long	.LVL279
	.long	0x1db8
	.long	0x12d7
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
	.long	.LVL280
	.long	0x1dab
	.long	0x12f1
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
	.long	.LVL281
	.long	0x1dd2
	.uleb128 0x1d
	.long	.LVL282
	.long	0x1dd2
	.long	0x130e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL283
	.long	0x1dd2
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF135
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST101
	.byte	0x1
	.long	0x13ea
	.uleb128 0x16
	.long	.LASF115
	.byte	0x1
	.byte	0x91
	.long	0x3b
	.long	.LLST102
	.uleb128 0x11
	.long	.LASF136
	.byte	0x1
	.byte	0x92
	.long	0x3b
	.long	.LLST103
	.uleb128 0x23
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0x94
	.long	0x3b
	.long	.LLST104
	.uleb128 0x23
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0x98
	.long	0x3b
	.long	.LLST105
	.uleb128 0x11
	.long	.LASF137
	.byte	0x1
	.byte	0x9d
	.long	0x3b
	.long	.LLST106
	.uleb128 0x1b
	.long	.LBB71
	.long	.LBE71
	.long	0x13ba
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.long	0x3b
	.long	.LLST107
	.uleb128 0x1f
	.long	.LVL296
	.long	0x1209
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL301
	.long	0x1dd2
	.uleb128 0x1d
	.long	.LVL302
	.long	0x1dd2
	.long	0x13d7
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL303
	.long	0x1dd2
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
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF138
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST108
	.byte	0x1
	.long	0x1488
	.uleb128 0x16
	.long	.LASF35
	.byte	0x1
	.byte	0xad
	.long	0x3b
	.long	.LLST109
	.uleb128 0x11
	.long	.LASF137
	.byte	0x1
	.byte	0xb5
	.long	0x3b
	.long	.LLST110
	.uleb128 0x1b
	.long	.LBB72
	.long	.LBE72
	.long	0x145b
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0xb0
	.long	0x3b
	.long	.LLST111
	.uleb128 0x1f
	.long	.LVL310
	.long	0x1209
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
	.long	.LVL315
	.long	0x1dd2
	.uleb128 0x1d
	.long	.LVL316
	.long	0x1dd2
	.long	0x1478
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL317
	.long	0x1dd2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF139
	.byte	0x1
	.byte	0xbf
	.long	.LFB25
	.long	.LFE25
	.long	.LLST112
	.byte	0x1
	.long	0x14cb
	.uleb128 0x23
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0xc0
	.long	0x3b
	.long	.LLST113
	.uleb128 0x1f
	.long	.LVL321
	.long	0x13ea
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
	.long	.LASF140
	.byte	0x1
	.byte	0xc8
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x14ee
	.uleb128 0x14
	.long	.LVL324
	.long	0x1488
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF141
	.byte	0x1
	.word	0x31a
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.long	.LLST114
	.byte	0x1
	.long	0x15dc
	.uleb128 0x21
	.long	.LASF115
	.byte	0x1
	.word	0x31a
	.long	0x3b
	.long	.LLST115
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x31a
	.long	0x3b
	.long	.LLST116
	.uleb128 0x21
	.long	.LASF98
	.byte	0x1
	.word	0x31a
	.long	0x3b
	.long	.LLST117
	.uleb128 0x1a
	.long	.LASF142
	.byte	0x1
	.word	0x31c
	.long	0x3b
	.long	.LLST118
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x1d8
	.long	0x15b5
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x31d
	.long	0x3b
	.long	.LLST119
	.uleb128 0x23
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x1a
	.long	.LASF143
	.byte	0x1
	.word	0x320
	.long	0x29
	.long	.LLST120
	.uleb128 0x23
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x1a
	.long	.LASF35
	.byte	0x1
	.word	0x323
	.long	0x3b
	.long	.LLST121
	.uleb128 0x1a
	.long	.LASF144
	.byte	0x1
	.word	0x324
	.long	0x3b
	.long	.LLST122
	.uleb128 0x1f
	.long	.LVL334
	.long	0x1209
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
	.long	.LVL340
	.long	0x1dd2
	.uleb128 0x1d
	.long	.LVL341
	.long	0x1dd2
	.long	0x15d2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL342
	.long	0x1dd2
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF145
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x16bf
	.uleb128 0x16
	.long	.LASF146
	.byte	0x1
	.byte	0xf5
	.long	0x3b
	.long	.LLST123
	.uleb128 0x1b
	.long	.LBB78
	.long	.LBE78
	.long	0x1659
	.uleb128 0x11
	.long	.LASF147
	.byte	0x1
	.byte	0xfd
	.long	0x3b
	.long	.LLST124
	.uleb128 0x11
	.long	.LASF148
	.byte	0x1
	.byte	0xfd
	.long	0x3b
	.long	.LLST125
	.uleb128 0x2d
	.long	0x4a5
	.long	.LBB79
	.long	.LBE79
	.byte	0x1
	.byte	0xfd
	.uleb128 0x2e
	.long	0x4b2
	.long	.LBB81
	.long	.LBE81
	.byte	0x1
	.byte	0xfd
	.uleb128 0x2f
	.long	0x4bf
	.long	.LLST126
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LBB83
	.long	.LBE83
	.long	0x16b5
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x1
	.word	0x12c
	.long	0x3b
	.long	.LLST127
	.uleb128 0x1a
	.long	.LASF149
	.byte	0x1
	.word	0x12d
	.long	0x3b
	.long	.LLST128
	.uleb128 0x1d
	.long	.LVL374
	.long	0x14ee
	.long	0x1699
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL377
	.long	0x14ee
	.uleb128 0x14
	.long	.LVL379
	.long	0x1318
	.uleb128 0x14
	.long	.LVL381
	.long	0xd69
	.byte	0
	.uleb128 0x14
	.long	.LVL357
	.long	0x5d3
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF150
	.byte	0x1
	.word	0x151
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1739
	.uleb128 0x21
	.long	.LASF151
	.byte	0x1
	.word	0x151
	.long	0x3b
	.long	.LLST129
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x1
	.word	0x155
	.long	0x3b
	.long	.LLST130
	.uleb128 0x1a
	.long	.LASF149
	.byte	0x1
	.word	0x156
	.long	0x3b
	.long	.LLST131
	.uleb128 0x1d
	.long	.LVL386
	.long	0x14ee
	.long	0x171d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL389
	.long	0x14ee
	.uleb128 0x14
	.long	.LVL391
	.long	0x1318
	.uleb128 0x14
	.long	.LVL395
	.long	0xd69
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF152
	.byte	0x1
	.word	0x3ed
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.long	.LLST132
	.byte	0x1
	.long	0x19b6
	.uleb128 0x21
	.long	.LASF153
	.byte	0x1
	.word	0x3ed
	.long	0xe2
	.long	.LLST133
	.uleb128 0x1a
	.long	.LASF154
	.byte	0x1
	.word	0x3ef
	.long	0x3b
	.long	.LLST134
	.uleb128 0x1a
	.long	.LASF155
	.byte	0x1
	.word	0x3f0
	.long	0x3b
	.long	.LLST135
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x1
	.word	0x3f1
	.long	0x3b
	.long	.LLST136
	.uleb128 0x1a
	.long	.LASF47
	.byte	0x1
	.word	0x3f2
	.long	0x226
	.long	.LLST137
	.uleb128 0x1a
	.long	.LASF157
	.byte	0x1
	.word	0x3f3
	.long	0x1f6
	.long	.LLST138
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x1f0
	.long	0x19ac
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x3f6
	.long	0x3b
	.long	.LLST139
	.uleb128 0x1b
	.long	.LBB85
	.long	.LBE85
	.long	0x1987
	.uleb128 0x1a
	.long	.LASF149
	.byte	0x1
	.word	0x40f
	.long	0x3b
	.long	.LLST140
	.uleb128 0x1d
	.long	.LVL403
	.long	0xfe3
	.long	0x1802
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
	.long	.LVL405
	.long	0x1dd2
	.uleb128 0x1d
	.long	.LVL406
	.long	0x1dd2
	.long	0x181f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL407
	.long	0x1dd2
	.uleb128 0x1d
	.long	.LVL411
	.long	0x1209
	.long	0x1847
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
	.long	.LVL412
	.long	0x1209
	.long	0x1866
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
	.long	.LVL413
	.long	0x1209
	.long	0x1885
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
	.long	.LVL414
	.long	0x1209
	.long	0x189e
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
	.long	.LVL415
	.long	0x1209
	.long	0x18bd
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
	.long	.LVL416
	.long	0x1209
	.long	0x18dc
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
	.long	.LVL417
	.long	0x1209
	.long	0x18f5
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
	.long	.LVL418
	.long	0x1209
	.long	0x1914
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
	.long	.LVL419
	.long	0x1209
	.long	0x1933
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
	.long	.LVL420
	.long	0x1209
	.long	0x194c
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
	.long	.LVL421
	.long	0x1209
	.long	0x196b
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
	.long	.LVL422
	.long	0x1209
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
	.long	.LVL401
	.long	0x1195
	.long	0x199b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL423
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
	.long	.LVL397
	.long	0x1e3a
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF158
	.byte	0x1
	.word	0x446
	.long	.LFB58
	.long	.LFE58
	.long	.LLST141
	.byte	0x1
	.long	0x1a2f
	.uleb128 0x23
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x447
	.long	0x3b
	.long	.LLST142
	.uleb128 0x23
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x1a
	.long	.LASF159
	.byte	0x1
	.word	0x448
	.long	0x3b
	.long	.LLST143
	.uleb128 0x14
	.long	.LVL439
	.long	0x1dd2
	.uleb128 0x1d
	.long	.LVL440
	.long	0x1dd2
	.long	0x1a1d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL441
	.long	0x1dd2
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
	.long	.LASF160
	.byte	0x1
	.word	0x451
	.long	.LFB59
	.long	.LFE59
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1a5a
	.uleb128 0x1f
	.long	.LVL444
	.long	0x1dd2
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
	.long	.LASF161
	.byte	0x1
	.byte	0xd3
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1ad1
	.uleb128 0x1b
	.long	.LBB89
	.long	.LBE89
	.long	0x1ac7
	.uleb128 0x11
	.long	.LASF147
	.byte	0x1
	.byte	0xd8
	.long	0x3b
	.long	.LLST144
	.uleb128 0x11
	.long	.LASF148
	.byte	0x1
	.byte	0xd8
	.long	0x3b
	.long	.LLST145
	.uleb128 0x2d
	.long	0x4a5
	.long	.LBB90
	.long	.LBE90
	.byte	0x1
	.byte	0xd8
	.uleb128 0x2e
	.long	0x4b2
	.long	.LBB92
	.long	.LBE92
	.byte	0x1
	.byte	0xd8
	.uleb128 0x2f
	.long	0x4bf
	.long	.LLST146
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL453
	.long	0x1a2f
	.byte	0
	.uleb128 0x7
	.long	0x1ae1
	.long	0x1ae1
	.uleb128 0x8
	.long	0x82
	.byte	0x8
	.byte	0
	.uleb128 0x30
	.long	0x112
	.uleb128 0x31
	.long	.LASF162
	.byte	0x6
	.byte	0x53
	.long	0x1af3
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	0x1ad1
	.uleb128 0x7
	.long	0x196
	.long	0x1b08
	.uleb128 0x8
	.long	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x31
	.long	.LASF163
	.byte	0x6
	.byte	0xaf
	.long	0x1af8
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	.LASF164
	.byte	0x6
	.byte	0xb6
	.long	0x1b22
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	0x3b
	.uleb128 0x31
	.long	.LASF165
	.byte	0x6
	.byte	0xbf
	.long	0x1c6
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0x3b
	.long	0x1b44
	.uleb128 0x8
	.long	0x82
	.byte	0x2
	.byte	0
	.uleb128 0x31
	.long	.LASF166
	.byte	0x8
	.byte	0x35
	.long	0x1b34
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	.LASF167
	.byte	0x8
	.byte	0xa1
	.long	0x1b22
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.long	.LASF168
	.byte	0x1
	.byte	0x2d
	.long	0x449
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	manualMap
	.uleb128 0x7
	.long	0x2c4
	.long	0x1b80
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x32
	.long	.LASF169
	.byte	0x1
	.byte	0x2e
	.long	0x1b70
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ManualNoteRange
	.uleb128 0x32
	.long	.LASF170
	.byte	0x1
	.byte	0x2f
	.long	0x45f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiInMap
	.uleb128 0x32
	.long	.LASF171
	.byte	0x1
	.byte	0x37
	.long	0x340
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiThrough
	.uleb128 0x32
	.long	.LASF172
	.byte	0x1
	.byte	0x30
	.long	0x475
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiOutMap
	.uleb128 0x32
	.long	.LASF173
	.byte	0x1
	.byte	0x34
	.long	0x485
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerMap
	.uleb128 0x32
	.long	.LASF174
	.byte	0x1
	.byte	0x35
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerCount
	.uleb128 0x32
	.long	.LASF175
	.byte	0x1
	.byte	0x36
	.long	0x495
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	programMap
	.uleb128 0x32
	.long	.LASF176
	.byte	0x1
	.byte	0x38
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_RegisterChanged
	.uleb128 0x33
	.long	.LASF177
	.byte	0x1
	.word	0x2c5
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	prog_Display
	.uleb128 0x33
	.long	.LASF178
	.byte	0x1
	.word	0x2c6
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	prog_UpdDisplay
	.uleb128 0x32
	.long	.LASF179
	.byte	0x1
	.byte	0x31
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxActivceSensing
	.uleb128 0x32
	.long	.LASF180
	.byte	0x1
	.byte	0x32
	.long	0x42c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Setting
	.uleb128 0x32
	.long	.LASF181
	.byte	0x1
	.byte	0x82
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutNote
	.uleb128 0x32
	.long	.LASF182
	.byte	0x1
	.byte	0x83
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutManual
	.uleb128 0x32
	.long	.LASF183
	.byte	0x1
	.byte	0x84
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInNote
	.uleb128 0x32
	.long	.LASF184
	.byte	0x1
	.byte	0x85
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInChannel
	.uleb128 0x32
	.long	.LASF185
	.byte	0x1
	.byte	0x86
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInManual
	.uleb128 0x32
	.long	.LASF186
	.byte	0x1
	.byte	0x87
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastProgram
	.uleb128 0x7
	.long	0x3b
	.long	0x1cd6
	.uleb128 0x8
	.long	0x82
	.byte	0xb
	.byte	0
	.uleb128 0x32
	.long	.LASF187
	.byte	0x1
	.byte	0x1d
	.long	0x1cc6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Couplers
	.uleb128 0x32
	.long	.LASF188
	.byte	0x1
	.byte	0x1e
	.long	0x1cfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cplInfo
	.uleb128 0x34
	.uleb128 0x7
	.long	0x3b
	.long	0x1d0b
	.uleb128 0x8
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x32
	.long	.LASF189
	.byte	0x9
	.byte	0xaf
	.long	0x1cfb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x32
	.long	.LASF190
	.byte	0x1
	.byte	0x33
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiEEPromLoadError
	.uleb128 0x32
	.long	.LASF191
	.byte	0x1
	.byte	0x7d
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastCommand
	.uleb128 0x32
	.long	.LASF192
	.byte	0x1
	.byte	0x7e
	.long	0x3de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByte
	.uleb128 0x32
	.long	.LASF193
	.byte	0x1
	.byte	0x7f
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteCount
	.uleb128 0x32
	.long	.LASF194
	.byte	0x1
	.byte	0x80
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteExpected
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF195
	.long	.LASF195
	.byte	0x6
	.byte	0x5a
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF196
	.long	.LASF196
	.byte	0xa
	.byte	0x24
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF197
	.long	.LASF197
	.byte	0xb
	.byte	0x32
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF198
	.long	.LASF198
	.byte	0xa
	.byte	0x25
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF199
	.long	.LASF199
	.byte	0x6
	.byte	0xd6
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF200
	.long	.LASF200
	.byte	0x6
	.byte	0xd7
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF201
	.long	.LASF201
	.byte	0xa
	.byte	0x2f
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF202
	.long	.LASF202
	.byte	0x8
	.byte	0x90
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF203
	.long	.LASF203
	.byte	0xc
	.byte	0x79
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF204
	.long	.LASF204
	.byte	0x4
	.byte	0x2d
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF205
	.long	.LASF205
	.byte	0xa
	.byte	0x20
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF206
	.long	.LASF206
	.byte	0xa
	.byte	0x27
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF207
	.long	.LASF207
	.byte	0xa
	.byte	0x21
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF208
	.long	.LASF208
	.byte	0xa
	.byte	0x1f
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF209
	.long	.LASF209
	.byte	0x5
	.byte	0x46
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF210
	.long	.LASF210
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
	.uleb128 0x2a
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x34
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.long	.LFB43
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
	.long	.LFE43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST45:
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
	.long	.LFE43
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL122
	.long	.LVL128-1
	.word	0x1
	.byte	0x66
	.long	.LVL128-1
	.long	.LVL136
	.word	0x1
	.byte	0x60
	.long	.LVL136
	.long	.LFE43
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
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
	.long	.LFE43
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST48:
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
.LLST49:
	.long	.LFB44
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
	.long	.LFE44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST50:
	.long	.LVL137
	.long	.LVL139
	.word	0x1
	.byte	0x68
	.long	.LVL139
	.long	.LFE44
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LVL138
	.long	.LVL141
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL141
	.long	.LVL156
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST52:
	.long	.LVL140
	.long	.LVL142
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL142
	.long	.LVL144
	.word	0x3
	.byte	0x80
	.sleb128 1
	.byte	0x9f
	.long	.LVL144
	.long	.LVL155
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST53:
	.long	.LVL140
	.long	.LVL141
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL141
	.long	.LVL153
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST54:
	.long	.LVL145
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
.LLST55:
	.long	.LVL140
	.long	.LVL141
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL141
	.long	.LVL154
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST56:
	.long	.LVL157
	.long	.LVL158
	.word	0x1
	.byte	0x68
	.long	.LVL158
	.long	.LFE45
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST57:
	.long	.LVL157
	.long	.LVL160
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL160
	.long	.LFE45
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST58:
	.long	.LVL159
	.long	.LVL161
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL161
	.long	.LVL163
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL163
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
.LLST59:
	.long	.LVL159
	.long	.LVL160
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL160
	.long	.LFE45
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST60:
	.long	.LVL159
	.long	.LVL160
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL160
	.long	.LFE45
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST61:
	.long	.LVL167
	.long	.LVL168
	.word	0x1
	.byte	0x68
	.long	.LVL168
	.long	.LVL169
	.word	0x5
	.byte	0x3
	.long	prog_Display
	.long	.LVL169
	.long	.LFE46
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST62:
	.long	.LFB40
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
	.sleb128 6
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI28
	.long	.LFE40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST63:
	.long	.LVL170
	.long	.LVL172-1
	.word	0x1
	.byte	0x68
	.long	.LVL172-1
	.long	.LVL186
	.word	0x1
	.byte	0x5e
	.long	.LVL186
	.long	.LVL188
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL188
	.long	.LVL189
	.word	0x1
	.byte	0x68
	.long	.LVL189
	.long	.LFE40
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST64:
	.long	.LVL171
	.long	.LVL174
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL174
	.long	.LVL188
	.word	0x1
	.byte	0x60
	.long	.LVL188
	.long	.LVL189
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL189
	.long	.LVL190
	.word	0x1
	.byte	0x60
	.long	.LVL190
	.long	.LFE40
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST65:
	.long	.LVL176
	.long	.LVL184
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST66:
	.long	.LVL172
	.long	.LVL174
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL174
	.long	.LVL188
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST67:
	.long	.LVL173
	.long	.LVL175
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL175
	.long	.LVL184
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL184
	.long	.LVL185
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST68:
	.long	.LVL173
	.long	.LVL174
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL174
	.long	.LVL188
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST69:
	.long	.LVL176
	.long	.LVL177
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL177
	.long	.LVL184
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST70:
	.long	.LFB41
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI29
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI30
	.long	.LFE41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST71:
	.long	.LVL191
	.long	.LVL192
	.word	0x1
	.byte	0x68
	.long	.LVL192
	.long	.LVL206
	.word	0x1
	.byte	0x6c
	.long	.LVL206
	.long	.LFE41
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST72:
	.long	.LVL191
	.long	.LVL201-1
	.word	0x1
	.byte	0x66
	.long	.LVL201-1
	.long	.LVL205
	.word	0x1
	.byte	0x6d
	.long	.LVL205
	.long	.LFE41
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST73:
	.long	.LVL199
	.long	.LVL200
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST74:
	.long	.LVL193
	.long	.LVL195
	.word	0x1
	.byte	0x68
	.long	.LVL196
	.long	.LVL197
	.word	0x1
	.byte	0x68
	.long	.LVL198
	.long	.LVL199
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST75:
	.long	.LFB42
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI31
	.long	.LFE42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST76:
	.long	.LVL207
	.long	.LVL208
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL208
	.long	.LVL212
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST77:
	.long	.LVL220
	.long	.LVL223-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST78:
	.long	.LVL219
	.long	.LVL220
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	.LVL220
	.long	.LVL223-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST79:
	.long	.LVL227
	.long	.LVL228
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL228
	.long	.LVL230-1
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST80:
	.long	.LVL232
	.long	.LVL233
	.word	0x1
	.byte	0x68
	.long	.LVL233
	.long	.LVL234
	.word	0x1
	.byte	0x6e
	.long	.LVL234
	.long	.LFE51
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST81:
	.long	.LVL235
	.long	.LVL236
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL236
	.long	.LFE52
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST82:
	.long	.LVL236
	.long	.LVL242
	.word	0x1
	.byte	0x65
	.long	.LVL243
	.long	.LVL244
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST83:
	.long	.LVL236
	.long	.LVL242
	.word	0x1
	.byte	0x66
	.long	.LVL243
	.long	.LVL244
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST84:
	.long	.LVL236
	.long	.LVL237
	.word	0x1
	.byte	0x64
	.long	.LVL237
	.long	.LVL238
	.word	0x1
	.byte	0x62
	.long	.LVL238
	.long	.LVL242
	.word	0x1
	.byte	0x64
	.long	.LVL243
	.long	.LVL244
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST85:
	.long	.LVL245
	.long	.LVL246
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL246
	.long	.LVL251-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST86:
	.long	.LVL246
	.long	.LVL248
	.word	0x1
	.byte	0x62
	.long	.LVL249
	.long	.LVL250
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST87:
	.long	.LVL254
	.long	.LVL256
	.word	0x1
	.byte	0x68
	.long	.LVL256
	.long	.LFE54
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST88:
	.long	.LVL254
	.long	.LVL257
	.word	0x1
	.byte	0x66
	.long	.LVL257
	.long	.LVL259
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL259
	.long	.LFE54
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST89:
	.long	.LVL255
	.long	.LVL262
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST90:
	.long	.LVL255
	.long	.LVL256
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL256
	.long	.LVL258
	.word	0x1
	.byte	0x68
	.long	.LVL259
	.long	.LVL262
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST91:
	.long	.LVL263
	.long	.LVL266
	.word	0x1
	.byte	0x68
	.long	.LVL266
	.long	.LVL267
	.word	0x1
	.byte	0x66
	.long	.LVL267
	.long	.LVL271
	.word	0x1
	.byte	0x68
	.long	.LVL271
	.long	.LFE55
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST92:
	.long	.LVL264
	.long	.LFE55
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST93:
	.long	.LVL263
	.long	.LVL264
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL264
	.long	.LFE55
	.word	0x1
	.byte	0x6b
	.long	0
	.long	0
.LLST94:
	.long	.LVL264
	.long	.LVL265
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL265
	.long	.LFE55
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST95:
	.long	.LFB56
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
	.long	.LFE56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST96:
	.long	.LVL272
	.long	.LVL273-1
	.word	0x1
	.byte	0x68
	.long	.LVL273-1
	.long	.LVL285
	.word	0x1
	.byte	0x6c
	.long	.LVL285
	.long	.LFE56
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST97:
	.long	.LVL272
	.long	.LVL273-1
	.word	0x1
	.byte	0x66
	.long	.LVL273-1
	.long	.LVL287
	.word	0x1
	.byte	0x60
	.long	.LVL287
	.long	.LFE56
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST98:
	.long	.LVL272
	.long	.LVL273-1
	.word	0x1
	.byte	0x64
	.long	.LVL273-1
	.long	.LVL284
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST99:
	.long	.LVL274
	.long	.LVL288
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST100:
	.long	.LVL275
	.long	.LVL286
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST101:
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
.LLST102:
	.long	.LVL289
	.long	.LVL291
	.word	0x1
	.byte	0x68
	.long	.LVL291
	.long	.LVL306
	.word	0x1
	.byte	0x5c
	.long	.LVL306
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST103:
	.long	.LVL290
	.long	.LVL291
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL291
	.long	.LVL305
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST104:
	.long	.LVL292
	.long	.LVL304
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST105:
	.long	.LVL293
	.long	.LVL295
	.word	0x1
	.byte	0x66
	.long	.LVL295
	.long	.LVL298
	.word	0x1
	.byte	0x5e
	.long	.LVL298
	.long	.LVL301-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST106:
	.long	.LVL299
	.long	.LVL300
	.word	0x1
	.byte	0x68
	.long	.LVL300
	.long	.LVL301-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST107:
	.long	.LVL294
	.long	.LVL303
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST108:
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
.LLST109:
	.long	.LVL307
	.long	.LVL308
	.word	0x1
	.byte	0x68
	.long	.LVL308
	.long	.LVL312
	.word	0x1
	.byte	0x60
	.long	.LVL312
	.long	.LVL318
	.word	0x1
	.byte	0x6c
	.long	.LVL318
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST110:
	.long	.LVL313
	.long	.LVL314
	.word	0x1
	.byte	0x68
	.long	.LVL314
	.long	.LVL315-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST111:
	.long	.LVL309
	.long	.LVL312
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST112:
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
.LLST113:
	.long	.LVL319
	.long	.LVL320
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL320
	.long	.LVL323
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST114:
	.long	.LFB50
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
	.long	.LFE50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST115:
	.long	.LVL325
	.long	.LVL326
	.word	0x1
	.byte	0x68
	.long	.LVL326
	.long	.LVL328
	.word	0x1
	.byte	0x6d
	.long	.LVL328
	.long	.LVL333
	.word	0x1
	.byte	0x64
	.long	.LVL333
	.long	.LVL343
	.word	0x1
	.byte	0x6d
	.long	.LVL343
	.long	.LFE50
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST116:
	.long	.LVL325
	.long	.LVL327
	.word	0x1
	.byte	0x66
	.long	.LVL327
	.long	.LVL346
	.word	0x1
	.byte	0x60
	.long	.LVL346
	.long	.LFE50
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST117:
	.long	.LVL325
	.long	.LVL327
	.word	0x1
	.byte	0x64
	.long	.LVL327
	.long	.LVL345
	.word	0x1
	.byte	0x61
	.long	.LVL345
	.long	.LFE50
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST118:
	.long	.LVL326
	.long	.LVL327
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL327
	.long	.LVL331
	.word	0x1
	.byte	0x69
	.long	.LVL334
	.long	.LVL335
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL335
	.long	.LVL337
	.word	0x1
	.byte	0x69
	.long	.LVL338
	.long	.LVL339
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST119:
	.long	.LVL326
	.long	.LVL327
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL327
	.long	.LVL328
	.word	0x1
	.byte	0x6c
	.long	.LVL328
	.long	.LVL334-1
	.word	0x1
	.byte	0x62
	.long	.LVL334-1
	.long	.LVL344
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST120:
	.long	.LVL329
	.long	.LVL332
	.word	0x1
	.byte	0x66
	.long	.LVL332
	.long	.LVL334-1
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST121:
	.long	.LVL330
	.long	.LVL334-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST122:
	.long	.LVL332
	.long	.LVL334-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST123:
	.long	.LVL347
	.long	.LVL348
	.word	0x1
	.byte	0x68
	.long	.LVL348
	.long	.LVL356
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL356
	.long	.LVL357-1
	.word	0x1
	.byte	0x68
	.long	.LVL357-1
	.long	.LVL358
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
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
	.long	.LVL362
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL362
	.long	.LVL363
	.word	0x1
	.byte	0x68
	.long	.LVL363
	.long	.LVL364
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL364
	.long	.LVL365
	.word	0x1
	.byte	0x68
	.long	.LVL365
	.long	.LVL366
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL366
	.long	.LVL367
	.word	0x1
	.byte	0x68
	.long	.LVL367
	.long	.LVL368
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL368
	.long	.LVL369
	.word	0x1
	.byte	0x68
	.long	.LVL369
	.long	.LVL370
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL370
	.long	.LVL371
	.word	0x1
	.byte	0x68
	.long	.LVL371
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST124:
	.long	.LVL349
	.long	.LVL355
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST125:
	.long	.LVL350
	.long	.LVL351
	.word	0x1
	.byte	0x68
	.long	.LVL352
	.long	.LVL353
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL353
	.long	.LVL356
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST126:
	.long	.LVL354
	.long	.LVL355
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+5650
	.sleb128 0
	.long	0
	.long	0
.LLST127:
	.long	.LVL372
	.long	.LVL374-1
	.word	0x1
	.byte	0x68
	.long	.LVL375
	.long	.LVL377-1
	.word	0x1
	.byte	0x68
	.long	.LVL378
	.long	.LVL379-1
	.word	0x1
	.byte	0x68
	.long	.LVL380
	.long	.LVL381-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST128:
	.long	.LVL373
	.long	.LVL375
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL376
	.long	.LVL377-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST129:
	.long	.LVL382
	.long	.LVL383
	.word	0x1
	.byte	0x68
	.long	.LVL383
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST130:
	.long	.LVL384
	.long	.LVL386-1
	.word	0x1
	.byte	0x68
	.long	.LVL387
	.long	.LVL389-1
	.word	0x1
	.byte	0x68
	.long	.LVL390
	.long	.LVL391-1
	.word	0x1
	.byte	0x68
	.long	.LVL392
	.long	.LVL393
	.word	0x1
	.byte	0x68
	.long	.LVL394
	.long	.LVL395-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST131:
	.long	.LVL385
	.long	.LVL387
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL388
	.long	.LVL389-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST132:
	.long	.LFB57
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
	.long	.LFE57
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST133:
	.long	.LVL396
	.long	.LVL397-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL399
	.long	.LVL400
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL426
	.long	.LVL427
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL428
	.long	.LVL429
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL430
	.long	.LVL431
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST134:
	.long	.LVL398
	.long	.LVL432
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST135:
	.long	.LVL399
	.long	.LVL434
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST136:
	.long	.LVL399
	.long	.LVL430
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST137:
	.long	.LVL400
	.long	.LVL402
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	.LVL408
	.long	.LVL426
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	.LVL429
	.long	.LVL433
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST138:
	.long	.LVL409
	.long	.LVL410
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST139:
	.long	.LVL400
	.long	.LVL426
	.word	0x1
	.byte	0x6c
	.long	.LVL429
	.long	.LVL430
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST140:
	.long	.LVL410
	.long	.LVL422
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST141:
	.long	.LFB58
	.long	.LCFI65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI65
	.long	.LFE58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST142:
	.long	.LVL435
	.long	.LVL436
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL436
	.long	.LVL443
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST143:
	.long	.LVL437
	.long	.LVL438
	.word	0x1
	.byte	0x68
	.long	.LVL438
	.long	.LVL439-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST144:
	.long	.LVL445
	.long	.LVL451
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST145:
	.long	.LVL446
	.long	.LVL447
	.word	0x1
	.byte	0x68
	.long	.LVL448
	.long	.LVL449
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL449
	.long	.LVL452
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST146:
	.long	.LVL450
	.long	.LVL451
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+6784
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x16c
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
	.long	.LFB43
	.long	.LFE43-.LFB43
	.long	.LFB44
	.long	.LFE44-.LFB44
	.long	.LFB45
	.long	.LFE45-.LFB45
	.long	.LFB46
	.long	.LFE46-.LFB46
	.long	.LFB40
	.long	.LFE40-.LFB40
	.long	.LFB41
	.long	.LFE41-.LFB41
	.long	.LFB42
	.long	.LFE42-.LFB42
	.long	.LFB47
	.long	.LFE47-.LFB47
	.long	.LFB48
	.long	.LFE48-.LFB48
	.long	.LFB49
	.long	.LFE49-.LFB49
	.long	.LFB51
	.long	.LFE51-.LFB51
	.long	.LFB52
	.long	.LFE52-.LFB52
	.long	.LFB53
	.long	.LFE53-.LFB53
	.long	.LFB54
	.long	.LFE54-.LFB54
	.long	.LFB55
	.long	.LFE55-.LFB55
	.long	.LFB56
	.long	.LFE56-.LFB56
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB50
	.long	.LFE50-.LFB50
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB57
	.long	.LFE57-.LFB57
	.long	.LFB58
	.long	.LFE58-.LFB58
	.long	.LFB59
	.long	.LFE59-.LFB59
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
	.long	.LBB39
	.long	.LBE39
	.long	.LBB40
	.long	.LBE40
	.long	.LBB41
	.long	.LBE41
	.long	0
	.long	0
	.long	.LBB42
	.long	.LBE42
	.long	.LBB43
	.long	.LBE43
	.long	0
	.long	0
	.long	.LBB44
	.long	.LBE44
	.long	.LBB48
	.long	.LBE48
	.long	0
	.long	0
	.long	.LBB45
	.long	.LBE45
	.long	.LBB47
	.long	.LBE47
	.long	0
	.long	0
	.long	.LBB49
	.long	.LBE49
	.long	.LBB53
	.long	.LBE53
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
	.long	.LFB43
	.long	.LFE43
	.long	.LFB44
	.long	.LFE44
	.long	.LFB45
	.long	.LFE45
	.long	.LFB46
	.long	.LFE46
	.long	.LFB40
	.long	.LFE40
	.long	.LFB41
	.long	.LFE41
	.long	.LFB42
	.long	.LFE42
	.long	.LFB47
	.long	.LFE47
	.long	.LFB48
	.long	.LFE48
	.long	.LFB49
	.long	.LFE49
	.long	.LFB51
	.long	.LFE51
	.long	.LFB52
	.long	.LFE52
	.long	.LFB53
	.long	.LFE53
	.long	.LFB54
	.long	.LFE54
	.long	.LFB55
	.long	.LFE55
	.long	.LFB56
	.long	.LFE56
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB50
	.long	.LFE50
	.long	.LFB29
	.long	.LFE29
	.long	.LFB30
	.long	.LFE30
	.long	.LFB57
	.long	.LFE57
	.long	.LFB58
	.long	.LFE58
	.long	.LFB59
	.long	.LFE59
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
.LASF123:
	.string	"Manual_to_MidiNote"
.LASF162:
	.string	"swTimer"
.LASF42:
	.string	"bitStart"
.LASF111:
	.string	"program_toRegister"
.LASF83:
	.string	"modulebit"
.LASF34:
	.string	"ChannelNote_t"
.LASF109:
	.string	"prog_set"
.LASF214:
	.string	"__iCliRetVal"
.LASF195:
	.string	"init_Pipe"
.LASF157:
	.string	"chanNote"
.LASF81:
	.string	"pRange"
.LASF144:
	.string	"manNote"
.LASF125:
	.string	"rangeEnd"
.LASF77:
	.string	"progNr"
.LASF107:
	.string	"actualReg"
.LASF121:
	.string	"pMidiInMap"
.LASF44:
	.string	"ManualNoteRange_t"
.LASF155:
	.string	"shiftBit"
.LASF104:
	.string	"midi_RegisterMatchProgram"
.LASF145:
	.string	"midiIn_Process"
.LASF200:
	.string	"pipe_off"
.LASF9:
	.string	"long long unsigned int"
.LASF161:
	.string	"midi_CheckTxActiveSense"
.LASF176:
	.string	"midi_RegisterChanged"
.LASF50:
	.string	"OutChannel"
.LASF175:
	.string	"programMap"
.LASF15:
	.string	"message8"
.LASF194:
	.string	"midiDataByteExpected"
.LASF172:
	.string	"midiOutMap"
.LASF180:
	.string	"midi_Setting"
.LASF65:
	.string	"pCoupler"
.LASF131:
	.string	"manual_NoteOnOff"
.LASF205:
	.string	"eeprom_ReadMidiInMap"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF182:
	.string	"midiLastOutManual"
.LASF78:
	.string	"regNr"
.LASF52:
	.string	"sw_channel"
.LASF101:
	.string	"program"
.LASF36:
	.string	"ManualNote_t"
.LASF139:
	.string	"midi_AllManualsOff"
.LASF114:
	.string	"midi_ProgramChange"
.LASF211:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF153:
	.string	"pipeMessage"
.LASF122:
	.string	"init_Manual2Midi"
.LASF191:
	.string	"midiLastCommand"
.LASF46:
	.string	"noteRange"
.LASF193:
	.string	"midiDataByteCount"
.LASF6:
	.string	"long int"
.LASF138:
	.string	"midi_ManualOff"
.LASF166:
	.string	"serESPMidiTmp"
.LASF120:
	.string	"init_Midi2Manual"
.LASF179:
	.string	"midiRxActivceSensing"
.LASF149:
	.string	"noteOnOff"
.LASF93:
	.string	"get_RegisterStatus"
.LASF130:
	.string	"moduleBit_to_manualNote"
.LASF119:
	.string	"prog_toLcd"
.LASF72:
	.string	"midiAllReset"
.LASF170:
	.string	"midiInMap"
.LASF4:
	.string	"uint16_t"
.LASF126:
	.string	"rangeStart"
.LASF189:
	.string	"lcdData"
.LASF45:
	.string	"midiNote"
.LASF41:
	.string	"endNote"
.LASF49:
	.string	"InChannel"
.LASF53:
	.string	"MidiOutMap_t"
.LASF199:
	.string	"pipe_on"
.LASF92:
	.string	"mask"
.LASF140:
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
.LASF127:
	.string	"range"
.LASF135:
	.string	"midiAllNotesOff"
.LASF133:
	.string	"modulNrMask"
.LASF43:
	.string	"ManualMap_t"
.LASF67:
	.string	"init_Midi"
.LASF5:
	.string	"unsigned int"
.LASF102:
	.string	"SaveEEProm"
.LASF201:
	.string	"eeprom_UpdateProg"
.LASF62:
	.string	"AcceptProgChange"
.LASF35:
	.string	"manual"
.LASF154:
	.string	"command"
.LASF110:
	.string	"prog"
.LASF203:
	.string	"lcd_putc"
.LASF7:
	.string	"long unsigned int"
.LASF207:
	.string	"eeprom_ReadMidiOutMap"
.LASF134:
	.string	"myMessage"
.LASF169:
	.string	"ManualNoteRange"
.LASF192:
	.string	"midiDataByte"
.LASF57:
	.string	"registers"
.LASF158:
	.string	"midiSendAllNotesOff"
.LASF147:
	.string	"sreg_save"
.LASF146:
	.string	"midiByte"
.LASF141:
	.string	"midiNote_to_Manual"
.LASF85:
	.string	"section"
.LASF148:
	.string	"__ToDo"
.LASF32:
	.string	"hw_channel"
.LASF188:
	.string	"cplInfo"
.LASF70:
	.string	"getAllCouplers"
.LASF31:
	.string	"Pipe_Module_t"
.LASF40:
	.string	"startNote"
.LASF98:
	.string	"onOff"
.LASF167:
	.string	"midiTxLastCmd"
.LASF16:
	.string	"PipeMessage_t"
.LASF116:
	.string	"channelValid"
.LASF48:
	.string	"MidiInMap_t"
.LASF59:
	.string	"ProgramInfo_t"
.LASF118:
	.string	"midi_resetRegisters"
.LASF38:
	.string	"moduleBit"
.LASF204:
	.string	"lcd_blank"
.LASF19:
	.string	"Timer"
.LASF75:
	.string	"regSec"
.LASF10:
	.string	"sizetype"
.LASF117:
	.string	"splitCount"
.LASF128:
	.string	"init_Manual2Module"
.LASF103:
	.string	"regBytePtr"
.LASF190:
	.string	"midiEEPromLoadError"
.LASF89:
	.string	"modBit"
.LASF28:
	.string	"Pipe_t"
.LASF47:
	.string	"manualNote"
.LASF124:
	.string	"Midi_updateManualRange"
.LASF26:
	.string	"pipeIn"
.LASF174:
	.string	"registerCount"
.LASF206:
	.string	"eeprom_ReadMidiThrough"
.LASF79:
	.string	"set_Coupler"
.LASF82:
	.string	"moduleBit_to_registerNr"
.LASF20:
	.string	"pipeOutM4"
.LASF112:
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
.LASF151:
	.string	"midiBytesTransferred"
.LASF58:
	.string	"couplers"
.LASF160:
	.string	"midi_SendActiveSense"
.LASF213:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF84:
	.string	"pSection"
.LASF156:
	.string	"moduleBits"
.LASF198:
	.string	"eeprom_ReadProg"
.LASF210:
	.string	"serial0USB_logPipeIn"
.LASF3:
	.string	"unsigned char"
.LASF66:
	.string	"midi_CouplerReset"
.LASF171:
	.string	"midiThrough"
.LASF73:
	.string	"registers_CalcCount"
.LASF197:
	.string	"log_putError"
.LASF17:
	.string	"counter"
.LASF209:
	.string	"pipeMsgPush"
.LASF108:
	.string	"midi_CountRegisterInProgram"
.LASF208:
	.string	"eeprom_ReadManualMap"
.LASF56:
	.string	"RegisterMap_t"
.LASF185:
	.string	"midiLastInManual"
.LASF51:
	.string	"MidiThrough_t"
.LASF115:
	.string	"channel"
.LASF150:
	.string	"proc_ESPmidi"
.LASF181:
	.string	"midiLastOutNote"
.LASF196:
	.string	"eeprom_ReadReg"
.LASF187:
	.string	"midi_Couplers"
.LASF13:
	.string	"Word_t"
.LASF164:
	.string	"pipeProcessing"
.LASF184:
	.string	"midiLastInChannel"
.LASF12:
	.string	"byteval"
.LASF159:
	.string	"chan"
.LASF64:
	.string	"char"
.LASF33:
	.string	"note"
.LASF87:
	.string	"mode"
.LASF173:
	.string	"registerMap"
.LASF113:
	.string	"byteNr"
.LASF163:
	.string	"pipe"
.LASF54:
	.string	"startReg"
.LASF202:
	.string	"serial1MIDISend"
.LASF136:
	.string	"splitRange"
.LASF105:
	.string	"progPtr"
.LASF94:
	.string	"count_Registers"
.LASF61:
	.string	"VelZero4Off"
.LASF215:
	.string	"__iRestore"
.LASF178:
	.string	"prog_UpdDisplay"
.LASF0:
	.string	"int8_t"
.LASF29:
	.string	"AssnRead"
.LASF86:
	.string	"read_Register"
.LASF39:
	.string	"ModulBitError_t"
.LASF142:
	.string	"found"
.LASF97:
	.string	"register_onOff"
.LASF143:
	.string	"noteBase0"
.LASF129:
	.string	"manualNote_to_moduleBit"
.LASF106:
	.string	"tempReg"
.LASF55:
	.string	"endReg"
.LASF96:
	.string	"resultPtr"
.LASF165:
	.string	"pipe_Module"
.LASF14:
	.string	"Message16"
.LASF1:
	.string	"uint8_t"
.LASF152:
	.string	"midiKeyPress_Process"
.LASF137:
	.string	"midiChanel"
.LASF88:
	.string	"modBitComplette"
.LASF23:
	.string	"pipeInM12"
.LASF22:
	.string	"pipeInM16"
.LASF168:
	.string	"manualMap"
.LASF132:
	.string	"moduleInfo"
.LASF76:
	.string	"init_Registers"
.LASF30:
	.string	"AssnWrite"
.LASF177:
	.string	"prog_Display"
.LASF60:
	.string	"TxActivceSense"
.LASF183:
	.string	"midiLastInNote"
.LASF21:
	.string	"pipeOut"
.LASF68:
	.string	"result"
.LASF212:
	.string	".././Midi.c"
.LASF100:
	.string	"register_toProgram"
.LASF186:
	.string	"midiLastProgram"
.LASF91:
	.string	"modulNr"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
