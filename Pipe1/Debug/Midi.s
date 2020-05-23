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
	ldd r19,Z+6
	lds r18,pipe_Module
	and r20,r19
.LVL68:
	and r20,r18
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
	swap r25
.LVL77:
	lsr r25
	andi r25,lo8(7)
.LVL78:
	.loc 1 495 0
	ldi r20,lo8(1)
	ldi r21,0
	movw r22,r20
	rjmp 2f
	1:
	lsl r22
	rol r23
	2:
	dec r25
	brpl 1b
	movw r24,r22
.LVL79:
	.loc 1 496 0
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
	ldd r20,Z+1
	and r20,r22
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
	ldd r18,Z+6
	lds r25,pipe_Module
.LVL81:
	and r24,r18
	and r24,r25
	breq .L55
	.loc 1 503 0
	ldi r24,lo8(1)
	ret
.LVL82:
.L56:
.LBE29:
.LBE28:
	.loc 1 509 0
	ldi r24,0
.LBB31:
	ret
.LVL83:
.L59:
.LBB30:
	.loc 1 498 0
	ldi r24,lo8(2)
	ret
.LVL84:
.L58:
.LBE30:
.LBE31:
	.loc 1 509 0
	ldi r24,0
.LVL85:
.L55:
	.loc 1 510 0
	ret
	.cfi_endproc
.LFE36:
	.size	get_RegisterStatus, .-get_RegisterStatus
	.section	.text.count_Registers,"ax",@progbits
.global	count_Registers
	.type	count_Registers, @function
count_Registers:
.LFB37:
	.loc 1 513 0
	.cfi_startproc
.LVL86:
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
.LVL87:
.LBB32:
	.loc 1 515 0
	ldi r28,0
.LBE32:
	.loc 1 514 0
	ldi r29,0
.LBB33:
	.loc 1 515 0
	rjmp .L61
.LVL88:
.L63:
	.loc 1 516 0
	mov r22,r17
	mov r24,r28
	call read_Register
.LVL89:
	cpse r24,__zero_reg__
	.loc 1 517 0
	subi r29,lo8(-(1))
.LVL90:
.L62:
	.loc 1 515 0 discriminator 2
	subi r28,lo8(-(1))
.LVL91:
.L61:
	.loc 1 515 0 is_stmt 0 discriminator 1
	cpi r28,lo8(64)
	brlo .L63
.LBE33:
	.loc 1 521 0 is_stmt 1
	mov r24,r29
/* epilogue start */
	pop r29
.LVL92:
	pop r28
.LVL93:
	pop r17
.LVL94:
	ret
	.cfi_endproc
.LFE37:
	.size	count_Registers, .-count_Registers
	.section	.text.read_allRegister,"ax",@progbits
.global	read_allRegister
	.type	read_allRegister, @function
read_allRegister:
.LFB38:
	.loc 1 523 0
	.cfi_startproc
.LVL95:
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
.LVL96:
.LBB34:
	.loc 1 527 0
	ldi r28,0
.LBE34:
	.loc 1 526 0
	ldi r29,0
	.loc 1 524 0
	ldi r16,0
.LBB35:
	.loc 1 527 0
	rjmp .L65
.LVL97:
.L69:
	mov r17,r28
	andi r17,lo8(7)
	.loc 1 530 0
	brne .L66
	.loc 1 532 0
	ldi r29,0
.LVL98:
.L66:
	.loc 1 534 0
	lsr r29
.LVL99:
	.loc 1 535 0
	ldi r22,lo8(3)
	mov r24,r28
	call read_Register
.LVL100:
	tst r24
	breq .L67
	.loc 1 536 0
	ori r29,lo8(-128)
.LVL101:
	.loc 1 537 0
	subi r16,lo8(-(1))
.LVL102:
.L67:
	.loc 1 539 0
	cpi r17,lo8(7)
	brne .L68
	.loc 1 541 0
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L68
.LVL103:
	.loc 1 542 0
	movw r30,r14
	st Z,r29
	movw r24,r14
	adiw r24,1
.LVL104:
	movw r14,r24
.LVL105:
.L68:
	.loc 1 527 0 discriminator 2
	subi r28,lo8(-(1))
.LVL106:
.L65:
	.loc 1 527 0 is_stmt 0 discriminator 1
	cpi r28,lo8(64)
	brlo .L69
.LBE35:
	.loc 1 547 0 is_stmt 1
	mov r24,r16
/* epilogue start */
	pop r29
.LVL107:
	pop r28
.LVL108:
	pop r17
	pop r16
.LVL109:
	pop r15
	pop r14
.LVL110:
	ret
	.cfi_endproc
.LFE38:
	.size	read_allRegister, .-read_allRegister
	.section	.text.register_onOff,"ax",@progbits
.global	register_onOff
	.type	register_onOff, @function
register_onOff:
.LFB39:
	.loc 1 550 0
	.cfi_startproc
.LVL111:
	push r28
.LCFI10:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 552 0
	lds r25,registerCount
	cp r24,r25
	brsh .L71
	mov r28,r22
.LBB36:
	.loc 1 554 0
	call regNr_to_moduleBit
.LVL112:
	.loc 1 555 0
	cpse r24,__zero_reg__
	rjmp .L71
.LVL113:
.LBB37:
	.loc 1 558 0
	mov r24,r25
	andi r24,lo8(31)
.LVL114:
	.loc 1 559 0
	swap r25
.LVL115:
	lsr r25
	andi r25,lo8(7)
.LVL116:
	.loc 1 560 0
	sbrs r28,0
	rjmp .L74
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
	call pipe_on
.LVL117:
	rjmp .L71
.LVL118:
.L74:
	.loc 1 565 0
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
.LVL119:
.L71:
/* epilogue start */
.LBE37:
.LBE36:
	.loc 1 570 0
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
.LVL120:
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
	.loc 1 640 0
	.cfi_startproc
.LVL121:
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
.LVL122:
	.loc 1 644 0
	cpi r24,lo8(64)
	brsh .L82
.LBB38:
	.loc 1 645 0
	mov r18,r24
	ldi r19,0
	movw r24,r18
.LVL123:
	lsl r24
	rol r25
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
.LVL124:
	add r24,r18
	adc r25,r19
.LVL125:
	.loc 1 646 0
	subi r24,lo8(-(programMap))
	sbci r25,hi8(-(programMap))
.LVL126:
	call read_allRegister
.LVL127:
	mov r17,r24
.LVL128:
	rjmp .L80
.LVL129:
.L82:
.LBE38:
	.loc 1 643 0
	ldi r17,0
.LVL130:
.L80:
	.loc 1 648 0
	ldi r29,0
	call getAllCouplers
.LVL131:
	movw r18,r28
	lsl r18
	rol r19
	lsl r28
	rol r29
	lsl r28
	rol r29
	lsl r28
	rol r29
.LVL132:
	add r28,r18
	adc r29,r19
	subi r28,lo8(-(programMap))
	sbci r29,hi8(-(programMap))
	std Y+9,r25
	std Y+8,r24
	.loc 1 649 0
	cpse r16,__zero_reg__
	.loc 1 650 0
	call eeprom_UpdateProg
.LVL133:
.L81:
	.loc 1 653 0
	mov r24,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
.LVL134:
	pop r16
.LVL135:
	ret
	.cfi_endproc
.LFE43:
	.size	register_toProgram, .-register_toProgram
	.section	.text.midi_RegisterMatchProgram,"ax",@progbits
.global	midi_RegisterMatchProgram
	.type	midi_RegisterMatchProgram, @function
midi_RegisterMatchProgram:
.LFB44:
	.loc 1 655 0
	.cfi_startproc
.LVL136:
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
.LVL137:
	.loc 1 659 0
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
.LVL138:
	add r16,r24
	adc r17,r25
	subi r16,lo8(-(programMap))
	sbci r17,hi8(-(programMap))
.LVL139:
.LBB39:
	.loc 1 662 0
	ldi r28,0
.LBE39:
	.loc 1 660 0
	ldi r29,0
	.loc 1 658 0
	mov r15,__zero_reg__
.LBB40:
	.loc 1 662 0
	rjmp .L84
.LVL140:
.L89:
	.loc 1 663 0
	mov r25,r28
	andi r25,lo8(7)
	brne .L85
.LVL141:
	.loc 1 665 0
	movw r30,r16
	ld r29,Z
.LVL142:
	subi r16,-1
	sbci r17,-1
.LVL143:
.L85:
	.loc 1 667 0
	mov r24,r28
	call get_RegisterStatus
.LVL144:
	.loc 1 668 0
	sbrs r29,0
	rjmp .L86
	.loc 1 670 0
	cpi r24,lo8(2)
	breq .L88
	rjmp .L90
.L86:
	.loc 1 677 0
	cpi r24,lo8(2)
	breq .L91
	.loc 1 680 0
	cpi r24,lo8(1)
	brne .L88
	.loc 1 682 0
	inc r15
.LVL145:
.L88:
	.loc 1 685 0 discriminator 2
	lsr r29
.LVL146:
	.loc 1 662 0 discriminator 2
	subi r28,lo8(-(1))
.LVL147:
.L84:
	.loc 1 662 0 is_stmt 0 discriminator 1
	lds r25,registerCount
	cp r28,r25
	brlo .L89
.LBE40:
	.loc 1 687 0 is_stmt 1
	mov r24,r15
.LBB41:
	rjmp .L87
.LVL148:
.L90:
	.loc 1 672 0
	ldi r24,lo8(-1)
.LVL149:
	rjmp .L87
.LVL150:
.L91:
	.loc 1 679 0
	ldi r24,lo8(-1)
.LVL151:
.L87:
/* epilogue start */
.LBE41:
	.loc 1 688 0
	pop r29
.LVL152:
	pop r28
.LVL153:
	pop r17
	pop r16
.LVL154:
	pop r15
.LVL155:
	ret
	.cfi_endproc
.LFE44:
	.size	midi_RegisterMatchProgram, .-midi_RegisterMatchProgram
	.section	.text.midi_CountRegisterInProgram,"ax",@progbits
.global	midi_CountRegisterInProgram
	.type	midi_CountRegisterInProgram, @function
midi_CountRegisterInProgram:
.LFB45:
	.loc 1 690 0
	.cfi_startproc
.LVL156:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 693 0
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
.LVL157:
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
.LVL158:
.LBB42:
	.loc 1 695 0
	ldi r25,0
.LBE42:
	.loc 1 694 0
	ldi r18,0
	.loc 1 692 0
	ldi r24,0
.LBB43:
	.loc 1 695 0
	rjmp .L93
.LVL159:
.L96:
	.loc 1 696 0
	mov r19,r25
	andi r19,lo8(7)
	brne .L94
.LVL160:
	.loc 1 698 0
	ld r18,Z
.LVL161:
	adiw r30,1
.LVL162:
.L94:
	.loc 1 700 0
	sbrc r18,0
	.loc 1 701 0
	subi r24,lo8(-(1))
.LVL163:
.L95:
	.loc 1 703 0 discriminator 2
	lsr r18
.LVL164:
	.loc 1 695 0 discriminator 2
	subi r25,lo8(-(1))
.LVL165:
.L93:
	.loc 1 695 0 is_stmt 0 discriminator 1
	lds r19,registerCount
	cp r25,r19
	brlo .L96
/* epilogue start */
.LBE43:
	.loc 1 707 0 is_stmt 1
	ret
	.cfi_endproc
.LFE45:
	.size	midi_CountRegisterInProgram, .-midi_CountRegisterInProgram
	.section	.text.prog_set,"ax",@progbits
.global	prog_set
	.type	prog_set, @function
prog_set:
.LFB46:
	.loc 1 713 0
	.cfi_startproc
.LVL166:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 714 0
	lds r25,prog_Display
	cp r25,r24
	breq .L97
	.loc 1 715 0
	sts prog_Display,r24
	.loc 1 716 0
	ldi r24,lo8(-1)
.LVL167:
	sts prog_UpdDisplay,r24
.LVL168:
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
	.loc 1 572 0
	.cfi_startproc
.LVL169:
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
.LVL170:
	.loc 1 575 0
	cpi r24,lo8(64)
	brlo .+2
	rjmp .L107
	mov r14,r24
.LBB44:
	.loc 1 576 0
	call prog_set
.LVL171:
	.loc 1 579 0
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
.LVL172:
.LBB45:
	.loc 1 580 0
	mov r11,__zero_reg__
.LBE45:
	.loc 1 578 0
	ldi r17,0
.LBE44:
	.loc 1 574 0
	ldi r16,0
.LBB48:
.LBB47:
	.loc 1 580 0
	rjmp .L101
.LVL173:
.L106:
	.loc 1 583 0
	movw r12,r30
	ldi r24,-1
	sub r12,r24
	sbc r13,r24
.LVL174:
	ld r28,Z
.LVL175:
.LBB46:
	.loc 1 584 0
	ldi r29,0
	rjmp .L102
.LVL176:
.L105:
	.loc 1 585 0
	mov r24,r28
	andi r24,lo8(1)
	sbrc r28,0
	.loc 1 586 0
	subi r16,lo8(-(1))
.LVL177:
.L103:
	.loc 1 588 0 discriminator 2
	ldi r22,lo8(1)
	cpse r24,__zero_reg__
	rjmp .L104
	ldi r22,0
.L104:
	mov r24,r17
	call register_onOff
.LVL178:
	.loc 1 590 0 discriminator 2
	lsr r28
.LVL179:
	.loc 1 591 0 discriminator 2
	subi r17,lo8(-(1))
.LVL180:
	.loc 1 584 0 discriminator 2
	subi r29,lo8(-(1))
.LVL181:
.L102:
	.loc 1 584 0 is_stmt 0 discriminator 1
	cpi r29,lo8(8)
	brlo .L105
.LBE46:
	.loc 1 580 0 is_stmt 1 discriminator 2
	inc r11
.LVL182:
	.loc 1 583 0 discriminator 2
	movw r30,r12
.LVL183:
.L101:
	.loc 1 580 0 discriminator 1
	ldi r24,lo8(7)
	cp r24,r11
	brsh .L106
.LBE47:
	.loc 1 595 0
	movw r30,r14
.LVL184:
	lsl r30
	rol r31
	lsl r14
	rol r15
	lsl r14
	rol r15
	lsl r14
	rol r15
.LVL185:
	add r30,r14
	adc r31,r15
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
	.loc 1 596 0
	ldd r24,Z+8
	ldd r25,Z+9
	call setAllCouplers
.LVL186:
	rjmp .L100
.LVL187:
.L107:
.LBE48:
	.loc 1 574 0
	ldi r16,0
.LVL188:
.L100:
	.loc 1 599 0
	mov r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
.LVL189:
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
	.loc 1 601 0
	.cfi_startproc
.LVL190:
	push r28
.LCFI29:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r22
	.loc 1 602 0
	lds r25,midi_Setting+2
	cpse r25,__zero_reg__
	rjmp .L114
.LBB49:
	rjmp .L110
.LVL191:
.L112:
.LBB50:
	.loc 1 607 0
	mov r30,r24
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r25
	adc r31,__zero_reg__
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(midiInMap))
	sbci r31,hi8(-(midiInMap))
	ld r18,Z
	cpi r18,lo8(-1)
	brne .L115
	.loc 1 606 0 discriminator 2
	subi r25,lo8(-(1))
.LVL192:
	rjmp .L109
.LVL193:
.L114:
.LBE50:
.LBE49:
	ldi r25,0
.L109:
.LVL194:
.LBB53:
.LBB51:
	.loc 1 606 0 is_stmt 0 discriminator 1
	cpi r25,lo8(4)
	brlo .L112
.LBE51:
	.loc 1 604 0 is_stmt 1
	ldi r24,0
.LVL195:
.LBB52:
	rjmp .L111
.LVL196:
.L115:
	.loc 1 609 0
	ldi r24,lo8(-1)
.LVL197:
.L111:
.LBE52:
	.loc 1 613 0
	cpi r24,lo8(-1)
	brne .L110
	.loc 1 615 0
	mov r24,r28
.LVL198:
	call program_toRegister
.LVL199:
	.loc 1 616 0
	mov r24,r28
	call prog_set
.LVL200:
	.loc 1 617 0
	sts midiLastProgram,r28
.L110:
.LBE53:
	.loc 1 623 0
	lds r24,midiThrough+1
	cpi r24,lo8(-1)
	breq .L108
	.loc 1 625 0
	ori r24,lo8(-64)
	call serial1MIDISend
.LVL201:
	.loc 1 627 0
	mov r24,r28
	call serial1MIDISend
.LVL202:
.L108:
/* epilogue start */
	.loc 1 630 0
	pop r28
.LVL203:
	ret
	.cfi_endproc
.LFE41:
	.size	midi_ProgramChange, .-midi_ProgramChange
	.section	.text.midi_resetRegisters,"ax",@progbits
.global	midi_resetRegisters
	.type	midi_resetRegisters, @function
midi_resetRegisters:
.LFB42:
	.loc 1 633 0
	.cfi_startproc
	push r28
.LCFI30:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL204:
.LBB54:
	.loc 1 634 0
	ldi r28,0
	rjmp .L117
.LVL205:
.L118:
	.loc 1 635 0 discriminator 3
	ldi r24,lo8(-1)
	call prog_set
.LVL206:
	.loc 1 636 0 discriminator 3
	ldi r22,0
	mov r24,r28
	call register_onOff
.LVL207:
	.loc 1 634 0 discriminator 3
	subi r28,lo8(-(1))
.LVL208:
.L117:
	.loc 1 634 0 is_stmt 0 discriminator 1
	lds r24,registerCount
	cp r28,r24
	brlo .L118
/* epilogue start */
.LBE54:
	.loc 1 638 0 is_stmt 1
	pop r28
.LVL209:
	ret
	.cfi_endproc
.LFE42:
	.size	midi_resetRegisters, .-midi_resetRegisters
	.section	.text.prog_toLcd,"ax",@progbits
.global	prog_toLcd
	.type	prog_toLcd, @function
prog_toLcd:
.LFB47:
	.loc 1 720 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 721 0
	lds r24,prog_Display
	cpi r24,lo8(-1)
	breq .L120
	.loc 1 722 0
	ldi r24,lo8(80)
	call lcd_putc
.LVL210:
	.loc 1 723 0
	ldi r24,lo8(45)
	call lcd_putc
.LVL211:
	.loc 1 724 0
	lds r24,prog_Display
	lsr r24
	lsr r24
	lsr r24
	andi r24,lo8(7)
	subi r24,lo8(-(65))
	call lcd_putc
.LVL212:
	.loc 1 725 0
	lds r24,prog_Display
	andi r24,lo8(7)
	subi r24,lo8(-(49))
	call lcd_putc
.LVL213:
	.loc 1 726 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL214:
	ret
.L120:
	.loc 1 728 0
	ldi r24,lo8(5)
	call lcd_blank
.LVL215:
	ret
	.cfi_endproc
.LFE47:
	.size	prog_toLcd, .-prog_toLcd
	.section	.text.init_RegOut,"ax",@progbits
.global	init_RegOut
	.type	init_RegOut, @function
init_RegOut:
.LFB48:
	.loc 1 736 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 737 0
	call eeprom_ReadRegOut
.LVL216:
	ret
	.cfi_endproc
.LFE48:
	.size	init_RegOut, .-init_RegOut
	.section	.text.reg_toLCD,"ax",@progbits
.global	reg_toLCD
	.type	reg_toLCD, @function
reg_toLCD:
.LFB49:
	.loc 1 742 0
	.cfi_startproc
	push r15
.LCFI31:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI32:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI33:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI34:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI35:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
.LVL217:
.LBB55:
	.loc 1 744 0
	mov r15,__zero_reg__
	rjmp .L124
.LVL218:
.L134:
.LBB56:
	.loc 1 745 0
	mov r16,r15
	ldi r17,0
	movw r28,r16
	lsl r28
	rol r29
	lsl r28
	rol r29
	subi r28,lo8(-(reg_Out))
	sbci r29,hi8(-(reg_Out))
	ld r24,Y
	call lcd_goto
.LVL219:
	.loc 1 746 0
	ldd r24,Y+1
.LVL220:
	.loc 1 747 0
	ldi r25,lo8(-33)
	add r25,r24
	cpi r25,lo8(95)
	brsh .L125
	.loc 1 749 0
	call lcd_putc
.LVL221:
	.loc 1 750 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL222:
.L125:
	.loc 1 752 0
	movw r30,r16
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(reg_Out))
	sbci r31,hi8(-(reg_Out))
	ldd r28,Z+2
.LVL223:
	.loc 1 753 0
	cpi r28,lo8(-1)
	brne .L127
.LBE56:
	rjmp .L123
.L133:
.LBB58:
	.loc 1 757 0
	cpse r28,r24
	rjmp .L128
	.loc 1 759 0
	mov r24,r28
	call get_RegisterStatus
.LVL224:
	tst r24
	breq .L135
	ldi r24,lo8(11)
	rjmp .L129
.L135:
	ldi r24,lo8(10)
.L129:
	.loc 1 759 0 is_stmt 0 discriminator 4
	call lcd_putc
.LVL225:
	mov r29,r28
	rjmp .L130
.L128:
.LBB57:
	.loc 1 762 0 is_stmt 1
	ldi r29,lo8(1)
	add r29,r28
.LVL226:
	mov r24,r28
	call get_RegisterStatus
.LVL227:
	cpse r24,__zero_reg__
	rjmp .L136
	ldi r28,0
	rjmp .L131
.L136:
	ldi r28,lo8(2)
.L131:
.LVL228:
	.loc 1 763 0 discriminator 4
	mov r24,r29
	call get_RegisterStatus
.LVL229:
	ldi r25,lo8(1)
	cpse r24,__zero_reg__
	rjmp .L132
	ldi r25,0
.L132:
	mov r24,r25
	add r24,r28
.LVL230:
	.loc 1 764 0 discriminator 4
	subi r24,lo8(-(12))
.LVL231:
	call lcd_putc
.LVL232:
.L130:
.LBE57:
	.loc 1 766 0
	ldi r28,lo8(1)
	add r28,r29
.LVL233:
.L127:
	.loc 1 756 0
	movw r30,r16
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(reg_Out))
	sbci r31,hi8(-(reg_Out))
	ldd r24,Z+3
	cp r24,r28
	brsh .L133
	.loc 1 768 0 discriminator 2
	ldi r24,lo8(32)
	call lcd_putc
.LVL234:
.LBE58:
	.loc 1 744 0 discriminator 2
	inc r15
.LVL235:
.L124:
	.loc 1 744 0 is_stmt 0 discriminator 1
	ldi r24,lo8(7)
	cp r24,r15
	brlo .+2
	rjmp .L134
.L123:
/* epilogue start */
.LBE55:
	.loc 1 770 0 is_stmt 1
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
.LVL236:
	ret
	.cfi_endproc
.LFE49:
	.size	reg_toLCD, .-reg_toLCD
	.section	.text.reg_ClearOnLCD,"ax",@progbits
.global	reg_ClearOnLCD
	.type	reg_ClearOnLCD, @function
reg_ClearOnLCD:
.LFB50:
	.loc 1 772 0
	.cfi_startproc
	push r17
.LCFI36:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI37:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI38:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
.LVL237:
.LBB59:
	.loc 1 773 0
	ldi r17,0
	rjmp .L138
.LVL238:
.L140:
.LBB60:
	.loc 1 774 0
	mov r28,r17
	ldi r29,0
	lsl r28
	rol r29
	lsl r28
	rol r29
	subi r28,lo8(-(reg_Out))
	sbci r29,hi8(-(reg_Out))
	ld r24,Y
	call lcd_goto
.LVL239:
	.loc 1 775 0
	ldd r18,Y+1
.LVL240:
	.loc 1 777 0
	ldd r24,Y+3
	ldd r25,Y+2
	sub r24,r25
	subi r24,lo8(-(1))
.LVL241:
	.loc 1 778 0
	ldi r25,0
	adiw r24,1
.LVL242:
	asr r25
	ror r24
.LVL243:
	.loc 1 779 0
	subi r18,lo8(-(-33))
.LVL244:
	cpi r18,lo8(95)
	brsh .L141
	ldi r18,lo8(2)
	rjmp .L139
.L141:
	ldi r18,0
.L139:
.LVL245:
	.loc 1 780 0 discriminator 4
	add r24,r18
.LVL246:
	call lcd_blank
.LVL247:
.LBE60:
	.loc 1 773 0 discriminator 4
	subi r17,lo8(-(1))
.LVL248:
.L138:
	.loc 1 773 0 is_stmt 0 discriminator 2
	cpi r17,lo8(8)
	brlo .L140
/* epilogue start */
.LBE59:
	.loc 1 782 0 is_stmt 1
	pop r29
	pop r28
	pop r17
.LVL249:
	ret
	.cfi_endproc
.LFE50:
	.size	reg_ClearOnLCD, .-reg_ClearOnLCD
	.section	.text.init_Midi2Manual,"ax",@progbits
.global	init_Midi2Manual
	.type	init_Midi2Manual, @function
init_Midi2Manual:
.LFB51:
	.loc 1 786 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL250:
.LBB61:
	.loc 1 790 0
	ldi r25,lo8(64)
.LBE61:
	.loc 1 788 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
.LBB62:
	.loc 1 790 0
	rjmp .L143
.LVL251:
.L144:
	.loc 1 792 0 discriminator 3
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 793 0 discriminator 3
	std Z+1,r24
	.loc 1 794 0 discriminator 3
	std Z+3,r24
	.loc 1 795 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 796 0 discriminator 3
	adiw r30,4
.LVL252:
	.loc 1 790 0 discriminator 3
	subi r25,lo8(-(-1))
.LVL253:
.L143:
	.loc 1 790 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L144
.LBE62:
	.loc 1 799 0 is_stmt 1
	call eeprom_ReadMidiInMap
.LVL254:
	cpi r24,lo8(-1)
	brne .L145
	.loc 1 800 0
	sts midiEEPromLoadError,r24
	.loc 1 801 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
	st Z,__zero_reg__
	.loc 1 802 0
	ldi r24,lo8(36)
	std Z+1,r24
	.loc 1 803 0
	std Z+3,r24
	.loc 1 804 0
	ldi r25,lo8(56)
	std Z+2,r25
	.loc 1 805 0
	ldi r18,lo8(1)
	std Z+16,r18
	.loc 1 806 0
	std Z+17,r24
	.loc 1 807 0
	std Z+19,r24
	.loc 1 808 0
	std Z+18,r25
	.loc 1 809 0
	ldi r18,lo8(2)
	std Z+32,r18
	.loc 1 810 0
	std Z+33,r24
	.loc 1 811 0
	std Z+35,r24
	.loc 1 812 0
	std Z+34,r25
	.loc 1 813 0
	ldi r25,lo8(3)
	std Z+48,r25
	.loc 1 814 0
	std Z+49,r24
	.loc 1 815 0
	std Z+51,r24
	.loc 1 816 0
	ldi r24,lo8(30)
	std Z+50,r24
	.loc 1 817 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL255:
.L145:
	.loc 1 819 0
	call eeprom_ReadMidiThrough
.LVL256:
	cpi r24,lo8(-1)
	brne .L142
	.loc 1 820 0
	ldi r30,lo8(midiThrough)
	ldi r31,hi8(midiThrough)
	st Z,r24
	.loc 1 821 0
	std Z+1,r24
	.loc 1 822 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL257:
.L142:
	ret
	.cfi_endproc
.LFE51:
	.size	init_Midi2Manual, .-init_Midi2Manual
	.section	.text.init_Manual2Midi,"ax",@progbits
.global	init_Manual2Midi
	.type	init_Manual2Midi, @function
init_Manual2Midi:
.LFB52:
	.loc 1 826 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL258:
.LBB63:
	.loc 1 828 0
	ldi r18,0
	rjmp .L148
.LVL259:
.L149:
	.loc 1 829 0 discriminator 3
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 830 0 discriminator 3
	std Z+1,r24
	.loc 1 828 0 discriminator 3
	subi r18,lo8(-(1))
.LVL260:
.L148:
	.loc 1 828 0 is_stmt 0 discriminator 1
	mov r24,r18
	ldi r25,0
	sbiw r24,0
	brne .L149
.LBE63:
	.loc 1 832 0 is_stmt 1
	call eeprom_ReadMidiOutMap
.LVL261:
	cpi r24,lo8(-1)
	brne .L147
	.loc 1 833 0
	sts midiEEPromLoadError,r24
	.loc 1 835 0
	ldi r30,lo8(midiOutMap)
	ldi r31,hi8(midiOutMap)
	st Z,__zero_reg__
	.loc 1 836 0
	ldi r25,lo8(1)
	std Z+2,r25
	.loc 1 837 0
	ldi r25,lo8(2)
	std Z+4,r25
	.loc 1 838 0
	ldi r25,lo8(3)
	std Z+6,r25
	.loc 1 839 0
	ldi r30,lo8(midi_Setting)
	ldi r31,hi8(midi_Setting)
	st Z,__zero_reg__
	.loc 1 840 0
	std Z+1,__zero_reg__
	.loc 1 841 0
	std Z+2,r24
	.loc 1 842 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(2)
	ldi r24,lo8(1)
	call log_putError
.LVL262:
.L147:
	ret
	.cfi_endproc
.LFE52:
	.size	init_Manual2Midi, .-init_Manual2Midi
	.section	.text.Manual_to_MidiNote,"ax",@progbits
.global	Manual_to_MidiNote
	.type	Manual_to_MidiNote, @function
Manual_to_MidiNote:
.LFB54:
	.loc 1 886 0
	.cfi_startproc
.LVL263:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	.loc 1 887 0
	ldi r24,lo8(-1)
.LVL264:
	ldi r25,lo8(-1)
	.loc 1 888 0
	cpi r30,lo8(4)
	brsh .L152
	.loc 1 889 0
	ldi r31,0
	lsl r30
	rol r31
.LVL265:
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r18,Z
	cpi r18,lo8(-1)
	breq .L152
	.loc 1 890 0
	mov r24,r18
	.loc 1 891 0
	mov r25,r22
.L152:
	.loc 1 896 0
	ret
	.cfi_endproc
.LFE54:
	.size	Manual_to_MidiNote, .-Manual_to_MidiNote
	.section	.text.Midi_updateManualRange,"ax",@progbits
.global	Midi_updateManualRange
	.type	Midi_updateManualRange, @function
Midi_updateManualRange:
.LFB55:
	.loc 1 900 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL266:
.LBB64:
	.loc 1 901 0
	ldi r23,0
	rjmp .L154
.LVL267:
.L160:
.LBB65:
.LBB66:
	.loc 1 905 0
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
	breq .L155
.LVL268:
	.loc 1 905 0 is_stmt 0 discriminator 1
	movw r30,r18
	lsl r30
	rol r31
	add r30,r18
	adc r31,r19
	movw r18,r24
.LVL269:
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
	breq .L155
	.loc 1 906 0 is_stmt 1
	cp r26,r22
	brsh .L156
	.loc 1 907 0
	mov r22,r26
.LVL270:
.L156:
	.loc 1 909 0
	cp r21,r18
	brsh .L155
	.loc 1 910 0
	mov r21,r18
.LVL271:
.L155:
	.loc 1 913 0
	tst r21
	breq .L157
	.loc 1 913 0 is_stmt 0 discriminator 1
	cpi r22,lo8(-1)
	brne .L158
.L157:
	.loc 1 914 0 is_stmt 1
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 915 0
	std Z+1,r24
	rjmp .L159
.L158:
	.loc 1 917 0
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	st Z,r22
	.loc 1 918 0
	std Z+1,r21
.L159:
	.loc 1 904 0 discriminator 2
	subi r20,lo8(-(1))
.LVL272:
	rjmp .L161
.LVL273:
.L164:
.LBE66:
.LBE65:
	ldi r20,0
	ldi r22,lo8(-1)
	ldi r21,0
.L161:
.LVL274:
.LBB68:
.LBB67:
	.loc 1 904 0 is_stmt 0 discriminator 1
	cpi r20,lo8(4)
	brsh .+2
	rjmp .L160
.LBE67:
.LBE68:
	.loc 1 901 0 is_stmt 1 discriminator 2
	subi r23,lo8(-(1))
.LVL275:
.L154:
	.loc 1 901 0 is_stmt 0 discriminator 1
	cpi r23,lo8(4)
	brlo .L164
/* epilogue start */
.LBE64:
	.loc 1 922 0 is_stmt 1
	ret
	.cfi_endproc
.LFE55:
	.size	Midi_updateManualRange, .-Midi_updateManualRange
	.section	.text.init_Manual2Module,"ax",@progbits
.global	init_Manual2Module
	.type	init_Manual2Module, @function
init_Manual2Module:
.LFB56:
	.loc 1 924 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL276:
.LBB69:
	.loc 1 925 0
	ldi r22,lo8(3)
	rjmp .L166
.LVL277:
.L167:
.LBB70:
	.loc 1 928 0 discriminator 3
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
	.loc 1 929 0 discriminator 3
	adiw r26,1
	st X,r19
	sbiw r26,1
	.loc 1 930 0 discriminator 3
	movw r30,r26
	std Z+2,__zero_reg__
	.loc 1 927 0 discriminator 3
	subi r18,lo8(-(-1))
.LVL278:
	rjmp .L168
.LVL279:
.L170:
.LBE70:
	ldi r18,lo8(3)
.L168:
.LVL280:
.LBB71:
	.loc 1 927 0 is_stmt 0 discriminator 1
	tst r18
	brge .L167
.LBE71:
	.loc 1 925 0 is_stmt 1 discriminator 2
	subi r22,lo8(-(-1))
.LVL281:
.L166:
	.loc 1 925 0 is_stmt 0 discriminator 1
	tst r22
	brge .L170
.LBE69:
	.loc 1 934 0 is_stmt 1
	call eeprom_ReadManualMap
.LVL282:
	cpi r24,lo8(-1)
	brne .L169
	.loc 1 936 0
	sts midiEEPromLoadError,r24
	.loc 1 937 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(3)
	ldi r24,lo8(1)
	call log_putError
.LVL283:
	.loc 1 939 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
	ldi r24,lo8(36)
	st Z,r24
	.loc 1 940 0
	ldi r19,lo8(67)
	std Z+1,r19
	.loc 1 941 0
	std Z+2,__zero_reg__
	.loc 1 942 0
	ldi r18,lo8(68)
	std Z+3,r18
	.loc 1 943 0
	ldi r25,lo8(91)
	std Z+4,r25
	.loc 1 944 0
	ldi r20,lo8(32)
	std Z+5,r20
	.loc 1 945 0
	std Z+12,r24
	.loc 1 946 0
	std Z+13,r19
	.loc 1 947 0
	ldi r20,lo8(64)
	std Z+14,r20
	.loc 1 948 0
	std Z+15,r18
	.loc 1 949 0
	std Z+16,r25
	.loc 1 950 0
	ldi r20,lo8(96)
	std Z+17,r20
	.loc 1 951 0
	std Z+24,r24
	.loc 1 952 0
	std Z+25,r19
	.loc 1 953 0
	ldi r19,lo8(-128)
	std Z+26,r19
	.loc 1 954 0
	std Z+27,r18
	.loc 1 955 0
	std Z+28,r25
	.loc 1 956 0
	ldi r25,lo8(-96)
	std Z+29,r25
	.loc 1 957 0
	std Z+36,r24
	.loc 1 958 0
	ldi r24,lo8(65)
	std Z+37,r24
	.loc 1 959 0
	ldi r24,lo8(-64)
	std Z+38,r24
	.loc 1 960 0
	std Z+48,__zero_reg__
	.loc 1 961 0
	ldi r24,lo8(29)
	std Z+49,r24
	.loc 1 962 0
	ldi r24,lo8(-32)
	std Z+50,r24
.L169:
	.loc 1 964 0
	call Midi_updateManualRange
.LVL284:
	ret
	.cfi_endproc
.LFE56:
	.size	init_Manual2Module, .-init_Manual2Module
	.section	.text.manualNote_to_moduleBit,"ax",@progbits
.global	manualNote_to_moduleBit
	.type	manualNote_to_moduleBit, @function
manualNote_to_moduleBit:
.LFB57:
	.loc 1 968 0
	.cfi_startproc
.LVL285:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 971 0
	cpi r24,lo8(4)
	brsh .L172
.LBB72:
	.loc 1 974 0
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
.LVL286:
	.loc 1 975 0
	ldi r24,lo8(4)
.LVL287:
.L175:
	.loc 1 977 0
	ld r18,Z
	cp r22,r18
	brlo .L173
	.loc 1 977 0 is_stmt 0 discriminator 1
	ldd r25,Z+1
	cp r25,r22
	brlo .L173
	.loc 1 980 0 is_stmt 1
	ldd r25,Z+2
	sub r22,r18
.LVL288:
	.loc 1 981 0
	ldi r24,0
.LVL289:
	add r25,r22
	ret
.LVL290:
.L173:
	.loc 1 983 0
	adiw r30,3
.LVL291:
	.loc 1 984 0
	subi r24,lo8(-(-1))
.LVL292:
	brne .L175
.LVL293:
.L172:
.LBE72:
	.loc 1 988 0
	ldi r24,lo8(-1)
	ldi r25,0
	.loc 1 989 0
	ret
	.cfi_endproc
.LFE57:
	.size	manualNote_to_moduleBit, .-manualNote_to_moduleBit
	.section	.text.moduleBit_to_manualNote,"ax",@progbits
.global	moduleBit_to_manualNote
	.type	moduleBit_to_manualNote, @function
moduleBit_to_manualNote:
.LFB58:
	.loc 1 991 0
	.cfi_startproc
.LVL294:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 998 0
	ldi r27,0
	.loc 1 997 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
.LVL295:
.L181:
.LBB73:
	.loc 1 1000 0
	ldi r20,lo8(4)
	rjmp .L177
.LVL296:
.L180:
	.loc 1 1001 0
	ldd r21,Z+2
	cp r24,r21
	brlo .L178
	.loc 1 1001 0 is_stmt 0 discriminator 1
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
	brlt .L178
.LVL297:
	.loc 1 1004 0 is_stmt 1
	mov r25,r24
	sub r25,r21
	.loc 1 1005 0
	mov r24,r27
	add r25,r26
	ret
.LVL298:
.L178:
	.loc 1 1007 0 discriminator 2
	adiw r30,3
.LVL299:
	.loc 1 1000 0 discriminator 2
	subi r20,lo8(-(-1))
.LVL300:
.L177:
	.loc 1 1000 0 is_stmt 0 discriminator 1
	cpse r20,__zero_reg__
	rjmp .L180
.LBE73:
	.loc 1 1009 0 is_stmt 1
	subi r27,lo8(-(1))
.LVL301:
	.loc 1 1010 0
	cpi r27,lo8(5)
	brlo .L181
	.loc 1 1014 0
	ldi r24,lo8(-1)
.LVL302:
	ldi r25,0
	.loc 1 1015 0
	ret
	.cfi_endproc
.LFE58:
	.size	moduleBit_to_manualNote, .-moduleBit_to_manualNote
	.section	.text.manual_NoteOnOff,"ax",@progbits
.global	manual_NoteOnOff
	.type	manual_NoteOnOff, @function
manual_NoteOnOff:
.LFB59:
	.loc 1 1017 0
	.cfi_startproc
.LVL303:
	push r14
.LCFI39:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI40:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
.LCFI41:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
.LCFI42:
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
.LCFI43:
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
.LCFI44:
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r28,r24
	mov r16,r22
	mov r29,r20
	.loc 1 1019 0
	call manualNote_to_moduleBit
.LVL304:
	.loc 1 1021 0
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
.LVL305:
	.loc 1 1022 0
	mov r17,r25
	andi r17,lo8(31)
.LVL306:
	.loc 1 1023 0
	cpse r24,__zero_reg__
	rjmp .L183
	.loc 1 1024 0
	lds r24,pipe_Module+1
	and r24,r14
	brne .L184
	.loc 1 1024 0 is_stmt 0 discriminator 1
	tst r29
	brlt .L184
.LBB74:
	.loc 1 1026 0 is_stmt 1
	andi r29,lo8(127)
.LVL307:
	.loc 1 1029 0
	cpi r29,lo8(1)
	brne .L190
	ldi r25,lo8(32)
	rjmp .L185
.L190:
	ldi r25,0
.L185:
	.loc 1 1030 0 discriminator 4
	mov r24,r14
	or r25,r17
	call pipeMsgPush
.LVL308:
.L184:
.LBE74:
	.loc 1 1032 0
	andi r29,lo8(127)
.LVL309:
	.loc 1 1033 0
	brne .L186
	.loc 1 1035 0
	mov r22,r14
	mov r24,r17
	call pipe_off
.LVL310:
	rjmp .L183
.L186:
	.loc 1 1038 0
	mov r22,r14
	mov r24,r17
	call pipe_on
.LVL311:
.L183:
	.loc 1 1043 0
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldd r24,Z+1
	cpi r24,lo8(-1)
	breq .L182
	.loc 1 1046 0
	cpi r29,lo8(1)
	breq .L191
	.loc 1 1046 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
	tst r25
	breq .L192
	.loc 1 1046 0
	ldi r25,lo8(-112)
	rjmp .L188
.L191:
	ldi r25,lo8(-112)
	rjmp .L188
.L192:
	ldi r25,lo8(-128)
.L188:
	.loc 1 1046 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL312:
	.loc 1 1047 0 is_stmt 1 discriminator 6
	mov r24,r16
	call serial1MIDISend
.LVL313:
	.loc 1 1049 0 discriminator 6
	cpse r29,__zero_reg__
	rjmp .L193
	.loc 1 1049 0 is_stmt 0
	ldi r24,0
	rjmp .L189
.L193:
	ldi r24,lo8(64)
.L189:
	.loc 1 1049 0 discriminator 4
	call serial1MIDISend
.LVL314:
.L182:
/* epilogue start */
	.loc 1 1053 0 is_stmt 1
	pop r29
.LVL315:
	pop r28
.LVL316:
	pop r17
.LVL317:
	pop r16
.LVL318:
	pop r15
	pop r14
.LVL319:
	ret
	.cfi_endproc
.LFE59:
	.size	manual_NoteOnOff, .-manual_NoteOnOff
	.section	.text.midiAllNotesOff,"ax",@progbits
.global	midiAllNotesOff
	.type	midiAllNotesOff, @function
midiAllNotesOff:
.LFB23:
	.loc 1 145 0
	.cfi_startproc
.LVL320:
	push r11
.LCFI45:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI46:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI47:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI48:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI49:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI50:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI51:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI52:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI53:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	mov r12,r24
.LVL321:
	.loc 1 146 0
	mov r13,__zero_reg__
	.loc 1 147 0
	rjmp .L195
.LVL322:
.L199:
.LBB75:
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
.LVL323:
	.loc 1 150 0
	ldi r24,lo8(3)
	cp r24,r11
	brlo .L196
.LBB76:
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
.LVL324:
.LBB77:
	.loc 1 154 0
	ldd r15,Z+2
.LVL325:
	rjmp .L197
.L198:
	.loc 1 155 0 discriminator 3
	clr r14
	inc r14
	add r14,r22
.LVL326:
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
.LVL327:
	.loc 1 154 0 discriminator 3
	dec r15
.LVL328:
	.loc 1 155 0 discriminator 3
	mov r22,r14
.LVL329:
.L197:
	.loc 1 154 0 discriminator 1
	cpse r15,__zero_reg__
	rjmp .L198
.LBE77:
	.loc 1 157 0
	mov r30,r11
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL330:
	.loc 1 158 0
	cpi r24,lo8(16)
	brsh .L196
	.loc 1 160 0
	ori r24,lo8(-80)
.LVL331:
	call serial1MIDISend
.LVL332:
	.loc 1 161 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL333:
	.loc 1 162 0
	ldi r24,0
	call serial1MIDISend
.LVL334:
.L196:
.LBE76:
	.loc 1 169 0
	inc r13
.LVL335:
.L195:
.LBE75:
	.loc 1 147 0
	ldi r24,lo8(3)
	cp r24,r13
	brlo .+2
	rjmp .L199
/* epilogue start */
	.loc 1 171 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
.LVL336:
	pop r12
.LVL337:
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
.LVL338:
	push r16
.LCFI54:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI55:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI56:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI57:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r28,r24
	.loc 1 175 0
	cpi r24,lo8(4)
	brsh .L201
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
	breq .L201
	.loc 1 175 0 discriminator 2
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r24,Z+1
.LVL339:
	cpi r24,lo8(-1)
	brne .L202
.LBB78:
	rjmp .L201
.LVL340:
.L203:
	.loc 1 177 0 is_stmt 1 discriminator 3
	ldi r20,lo8(-128)
	mov r22,r29
	mov r24,r28
	call manual_NoteOnOff
.LVL341:
	.loc 1 176 0 discriminator 3
	subi r29,lo8(-(1))
.LVL342:
.L202:
	.loc 1 176 0 is_stmt 0 discriminator 1
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r24,Z+1
	cp r24,r29
	brsh .L203
.LVL343:
.L201:
.LBE78:
	.loc 1 181 0 is_stmt 1
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL344:
	.loc 1 182 0
	cpi r24,lo8(16)
	brsh .L200
	.loc 1 184 0
	ori r24,lo8(-80)
.LVL345:
	call serial1MIDISend
.LVL346:
	.loc 1 185 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL347:
	.loc 1 186 0
	ldi r24,0
	call serial1MIDISend
.LVL348:
.L200:
/* epilogue start */
	.loc 1 189 0
	pop r29
	pop r28
.LVL349:
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
.LCFI58:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL350:
.LBB79:
	.loc 1 192 0
	ldi r28,0
	rjmp .L206
.LVL351:
.L207:
	.loc 1 193 0 discriminator 3
	mov r24,r28
	call midi_ManualOff
.LVL352:
	.loc 1 192 0 discriminator 3
	subi r28,lo8(-(1))
.LVL353:
.L206:
	.loc 1 192 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brlo .L207
/* epilogue start */
.LBE79:
	.loc 1 198 0 is_stmt 1
	pop r28
.LVL354:
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
	breq .L208
	.loc 1 203 0
	lds r24,swTimer+6
	cpse r24,__zero_reg__
	rjmp .L208
	.loc 1 205 0
	call midi_AllManualsOff
.LVL355:
	.loc 1 206 0
	sts midiRxActivceSensing,__zero_reg__
.L208:
	ret
	.cfi_endproc
.LFE26:
	.size	midi_CheckRxActiveSense, .-midi_CheckRxActiveSense
	.section	.text.midiNote_to_Manual,"ax",@progbits
.global	midiNote_to_Manual
	.type	midiNote_to_Manual, @function
midiNote_to_Manual:
.LFB53:
	.loc 1 846 0
	.cfi_startproc
.LVL356:
	push r16
.LCFI59:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI60:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI61:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI62:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r22
	mov r17,r20
	.loc 1 847 0
	mov r29,r24
	andi r29,lo8(15)
.LVL357:
.LBB80:
	.loc 1 849 0
	ldi r28,0
.LBE80:
	.loc 1 848 0
	ldi r25,0
.LBB83:
	.loc 1 849 0
	rjmp .L211
.LVL358:
.L214:
	.loc 1 850 0
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
	brsh .L212
.LVL359:
.LBB81:
	.loc 1 852 0
	movw r26,r30
	ldd r22,Z+1
	mov r23,r16
	sub r23,r22
	mov r22,r23
.LVL360:
	.loc 1 853 0
	brmi .L212
	.loc 1 853 0 is_stmt 0 discriminator 1
	movw r30,r26
	ldd r30,Z+2
	ldi r31,0
	mov r26,r23
	lsl r23
	sbc r27,r27
	cp r26,r30
	cpc r27,r31
	brge .L212
.LVL361:
.LBB82:
	.loc 1 856 0 is_stmt 1
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
.LVL362:
	add r22,r25
.LVL363:
	.loc 1 857 0
	cpi r17,lo8(1)
	brne .L213
	.loc 1 858 0
	sts midiLastInManual,r24
	.loc 1 859 0
	sts midiLastInNote,r22
.L213:
	.loc 1 861 0
	mov r20,r17
.LVL364:
	call manual_NoteOnOff
.LVL365:
	.loc 1 862 0
	ldi r25,lo8(-1)
.LVL366:
.L212:
.LBE82:
.LBE81:
	.loc 1 849 0 discriminator 2
	subi r28,lo8(-(1))
.LVL367:
.L211:
	.loc 1 849 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brsh .+2
	rjmp .L214
.LBE83:
	.loc 1 866 0 is_stmt 1
	cpi r17,lo8(1)
	brne .L215
	.loc 1 866 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L215
	.loc 1 868 0 is_stmt 1
	sts midiLastInNote,r16
	.loc 1 869 0
	sts midiLastInChannel,r29
	.loc 1 870 0
	ldi r24,lo8(-1)
	sts midiLastInManual,r24
.L215:
	.loc 1 873 0
	lds r24,midiThrough
	cpse r29,r24
	rjmp .L210
	.loc 1 875 0
	lds r24,midiThrough+1
	cpi r24,lo8(-1)
	breq .L210
	.loc 1 877 0
	cpi r17,lo8(1)
	breq .L219
	.loc 1 877 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
.LVL368:
	tst r25
	breq .L220
	.loc 1 877 0
	ldi r25,lo8(-112)
	rjmp .L217
.LVL369:
.L219:
	ldi r25,lo8(-112)
.LVL370:
	rjmp .L217
.L220:
	ldi r25,lo8(-128)
.L217:
	.loc 1 877 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL371:
	.loc 1 879 0 is_stmt 1 discriminator 6
	mov r24,r16
	call serial1MIDISend
.LVL372:
	.loc 1 881 0 discriminator 6
	cpse r17,__zero_reg__
	rjmp .L221
	.loc 1 881 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L222
	.loc 1 881 0
	ldi r24,lo8(64)
	rjmp .L218
.L221:
	ldi r24,lo8(64)
	rjmp .L218
.L222:
	ldi r24,0
.L218:
	.loc 1 881 0 discriminator 6
	call serial1MIDISend
.LVL373:
.L210:
/* epilogue start */
	.loc 1 884 0 is_stmt 1
	pop r29
.LVL374:
	pop r28
.LVL375:
	pop r17
.LVL376:
	pop r16
.LVL377:
	ret
	.cfi_endproc
.LFE53:
	.size	midiNote_to_Manual, .-midiNote_to_Manual
	.section	.text.midiIn_Process,"ax",@progbits
.global	midiIn_Process
	.type	midiIn_Process, @function
midiIn_Process:
.LFB29:
	.loc 1 245 0
	.cfi_startproc
.LVL378:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 246 0
	tst r24
	brlt .+2
	rjmp .L224
	.loc 1 249 0
	cpi r24,lo8(-8)
	brlo .L225
	.loc 1 251 0
	cpi r24,lo8(-2)
	brne .L226
	.loc 1 252 0
	ldi r24,lo8(1)
.LVL379:
	sts midiRxActivceSensing,r24
.LBB84:
	.loc 1 253 0
	in r25,__SREG__
.LVL380:
.LBB85:
.LBB86:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE86:
.LBE85:
	.loc 1 253 0
	rjmp .L227
.LVL381:
.L228:
	.loc 1 253 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(25)
.LVL382:
	std Z+6,r24
	std Z+7,__zero_reg__
.LVL383:
	.loc 1 253 0 discriminator 3
	ldi r24,0
.LVL384:
.L227:
	.loc 1 253 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L228
.LVL385:
.LBB87:
.LBB88:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL386:
.LBE88:
.LBE87:
.LBE84:
	ret
.LVL387:
.L226:
	.loc 1 254 0
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L223
	.loc 1 255 0
	call midiAllReset
.LVL388:
	ret
.LVL389:
.L225:
	.loc 1 260 0
	sts midiLastCommand,r24
	.loc 1 261 0
	sts midiDataByteCount,__zero_reg__
	.loc 1 262 0
	ldi r25,lo8(-128)
	add r25,r24
	cpi r25,lo8(64)
	brsh .L230
	.loc 1 264 0
	ldi r24,lo8(2)
.LVL390:
	sts midiDataByteExpected,r24
	ret
.LVL391:
.L230:
	.loc 1 265 0
	ldi r25,lo8(32)
	add r25,r24
	cpi r25,lo8(16)
	brsh .L231
	.loc 1 267 0
	ldi r24,lo8(2)
.LVL392:
	sts midiDataByteExpected,r24
	ret
.LVL393:
.L231:
	.loc 1 268 0
	cpi r24,lo8(-14)
	brne .L232
	.loc 1 270 0
	ldi r24,lo8(2)
.LVL394:
	sts midiDataByteExpected,r24
	ret
.LVL395:
.L232:
	.loc 1 271 0
	cpi r24,lo8(-16)
	brne .L233
	.loc 1 273 0
	ldi r24,lo8(-1)
.LVL396:
	sts midiDataByteExpected,r24
	ret
.LVL397:
.L233:
	.loc 1 274 0
	ldi r25,lo8(64)
	add r25,r24
	cpi r25,lo8(32)
	brsh .L234
	.loc 1 276 0
	ldi r24,lo8(1)
.LVL398:
	sts midiDataByteExpected,r24
	ret
.LVL399:
.L234:
	.loc 1 277 0
	cpi r24,lo8(-15)
	breq .L235
	.loc 1 277 0 is_stmt 0 discriminator 1
	cpi r24,lo8(-13)
	brne .L236
.L235:
	.loc 1 279 0 is_stmt 1
	ldi r24,lo8(1)
.LVL400:
	sts midiDataByteExpected,r24
	ret
.LVL401:
.L236:
	.loc 1 280 0
	cpi r24,lo8(-9)
	brne .+2
	rjmp .L223
	.loc 1 284 0
	sts midiDataByteExpected,__zero_reg__
	ret
.L224:
	.loc 1 290 0
	lds r30,midiDataByteCount
	cpi r30,lo8(8)
	brsh .L237
	.loc 1 292 0
	ldi r25,lo8(1)
	add r25,r30
	sts midiDataByteCount,r25
	ldi r31,0
	subi r30,lo8(-(midiDataByte))
	sbci r31,hi8(-(midiDataByte))
	st Z,r24
.L237:
	.loc 1 294 0
	lds r24,midiDataByteExpected
.LVL402:
	cpi r24,lo8(-1)
	breq .L223
	.loc 1 296 0
	lds r25,midiDataByteCount
	cp r25,r24
	brlo .L223
	.loc 1 298 0
	lds r25,midiLastCommand
	cpi r25,lo8(-16)
	brsh .L238
.LBB89:
	.loc 1 300 0
	mov r24,r25
	andi r24,lo8(15)
.LVL403:
	.loc 1 302 0
	andi r25,lo8(-16)
	cpi r25,lo8(-112)
	breq .L239
	brsh .L240
	cpi r25,lo8(-128)
	breq .L241
	rjmp .L238
.L240:
	cpi r25,lo8(-80)
	breq .L242
	cpi r25,lo8(-64)
	breq .L243
	rjmp .L238
.L241:
.LVL404:
	.loc 1 306 0
	ldi r20,0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL405:
	.loc 1 307 0
	rjmp .L238
.LVL406:
.L239:
	.loc 1 309 0
	lds r25,midiDataByte+1
	cpse r25,__zero_reg__
	rjmp .L245
	.loc 1 311 0
	ldi r20,0
	rjmp .L244
.L245:
	.loc 1 314 0
	ldi r20,lo8(1)
.L244:
.LVL407:
	.loc 1 316 0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL408:
	.loc 1 317 0
	rjmp .L238
.LVL409:
.L242:
	.loc 1 319 0
	lds r25,midiDataByte
	cpi r25,lo8(123)
	brne .L238
	.loc 1 320 0
	call midiAllNotesOff
.LVL410:
	rjmp .L238
.LVL411:
.L243:
	.loc 1 324 0
	lds r22,midiDataByte
	call midi_ProgramChange
.LVL412:
.L238:
.LBE89:
	.loc 1 331 0
	sts midiDataByteCount,__zero_reg__
.L223:
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
.LVL413:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 341 0
	lds r25,serESPMidiTmp+2
	mov r24,r25
.LVL414:
	andi r24,lo8(15)
.LVL415:
	.loc 1 343 0
	andi r25,lo8(-16)
	cpi r25,lo8(-128)
	breq .L248
	brsh .L249
	tst r25
	breq .L250
	ret
.L249:
	cpi r25,lo8(-112)
	breq .L251
	cpi r25,lo8(-80)
	breq .L252
	ret
.L248:
.LVL416:
	.loc 1 347 0
	ldi r20,0
	lds r22,serESPMidiTmp+1
	call midiNote_to_Manual
.LVL417:
	.loc 1 348 0
	ret
.LVL418:
.L251:
	.loc 1 350 0
	lds r25,serESPMidiTmp
	cpse r25,__zero_reg__
	rjmp .L255
	.loc 1 352 0
	ldi r20,0
	rjmp .L253
.L255:
	.loc 1 355 0
	ldi r20,lo8(1)
.L253:
.LVL419:
	.loc 1 357 0
	lds r22,serESPMidiTmp+1
	call midiNote_to_Manual
.LVL420:
	.loc 1 358 0
	ret
.LVL421:
.L252:
	.loc 1 360 0
	lds r25,serESPMidiTmp+1
	cpi r25,lo8(123)
	brne .L246
	.loc 1 361 0
	call midiAllNotesOff
.LVL422:
	ret
.LVL423:
.L250:
	.loc 1 366 0
	lds r25,serESPMidiTmp+1
	mov r24,r25
.LVL424:
	andi r24,lo8(15)
.LVL425:
	.loc 1 367 0
	andi r25,lo8(-16)
	cpi r25,lo8(-64)
	brne .L246
	.loc 1 369 0
	lds r22,serESPMidiTmp
	call midi_ProgramChange
.LVL426:
.L246:
	ret
	.cfi_endproc
.LFE30:
	.size	proc_ESPmidi, .-proc_ESPmidi
	.section	.text.midiKeyPress_Process,"ax",@progbits
.global	midiKeyPress_Process
	.type	midiKeyPress_Process, @function
midiKeyPress_Process:
.LFB60:
	.loc 1 1057 0
	.cfi_startproc
.LVL427:
	push r11
.LCFI63:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI64:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI65:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI66:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI67:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI68:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI69:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI70:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI71:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	mov r29,r24
	mov r28,r25
	.loc 1 1058 0
	call serial0USB_logPipeIn
.LVL428:
	.loc 1 1059 0
	mov r16,r28
	andi r16,lo8(-32)
.LVL429:
	.loc 1 1060 0
	andi r28,lo8(31)
	mov r11,r28
.LVL430:
	.loc 1 1064 0
	cpi r16,lo8(32)
	brne .+2
	rjmp .L278
	.loc 1 1064 0 is_stmt 0 discriminator 1
	tst r16
	brne .+2
	rjmp .L279
.LBB90:
	rjmp .L256
.LVL431:
.L277:
	.loc 1 1068 0 is_stmt 1
	sbrs r29,0
	rjmp .L259
	.loc 1 1070 0
	ldi r18,lo8(32)
	mul r28,r18
	movw r24,r0
	clr __zero_reg__
	mov r15,r11
	or r15,r24
	mov r24,r15
	call moduleBit_to_manualNote
.LVL432:
	mov r12,r24
.LVL433:
	mov r14,r25
	.loc 1 1072 0
	mov r17,r24
	cpi r24,lo8(-1)
	brne .+2
	rjmp .L260
.LBB91:
	.loc 1 1075 0
	mov r22,r25
	call Manual_to_MidiNote
.LVL434:
	mov r13,r25
.LVL435:
	.loc 1 1076 0
	cpi r24,lo8(-1)
	breq .L261
	.loc 1 1078 0
	cpi r16,lo8(32)
	breq .L280
	.loc 1 1078 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
	tst r25
	breq .L281
	.loc 1 1078 0
	ldi r25,lo8(-112)
	rjmp .L262
.L280:
	ldi r25,lo8(-112)
	rjmp .L262
.L281:
	ldi r25,lo8(-128)
.L262:
	.loc 1 1078 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL436:
	.loc 1 1080 0 is_stmt 1 discriminator 6
	mov r24,r13
	call serial1MIDISend
.LVL437:
	.loc 1 1082 0 discriminator 6
	cpse r16,__zero_reg__
	rjmp .L282
	.loc 1 1082 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L283
	.loc 1 1082 0
	ldi r24,lo8(64)
	rjmp .L263
.L282:
	ldi r24,lo8(64)
	rjmp .L263
.L283:
	ldi r24,0
.L263:
	.loc 1 1082 0 discriminator 6
	call serial1MIDISend
.LVL438:
	.loc 1 1084 0 is_stmt 1 discriminator 6
	cpi r16,lo8(32)
	brne .L261
	.loc 1 1086 0
	sts midiLastOutManual,r12
.LVL439:
	.loc 1 1087 0
	sts midiLastOutNote,r14
.LVL440:
.L261:
	.loc 1 1091 0
	ldi r20,lo8(1)
	cpi r16,lo8(32)
	breq .L264
	ldi r20,0
.L264:
	mov r13,r20
.LVL441:
	.loc 1 1093 0
	cpse r17,__zero_reg__
	rjmp .L265
	.loc 1 1094 0
	lds r24,midi_Couplers
	cpi r24,lo8(-1)
	brne .L266
	.loc 1 1095 0
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL442:
.L266:
	.loc 1 1097 0
	lds r24,midi_Couplers+1
	cpi r24,lo8(-1)
	brne .L267
	.loc 1 1098 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL443:
.L267:
	.loc 1 1100 0
	lds r24,midi_Couplers+3
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L260
	.loc 1 1101 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL444:
	rjmp .L260
.L265:
	.loc 1 1103 0
	cpi r17,lo8(1)
	brne .L268
	.loc 1 1104 0
	lds r24,midi_Couplers+2
	cpi r24,lo8(-1)
	brne .L269
	.loc 1 1105 0
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL445:
.L269:
	.loc 1 1107 0
	lds r24,midi_Couplers+4
	cpi r24,lo8(-1)
	brne .L270
	.loc 1 1108 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL446:
.L270:
	.loc 1 1110 0
	lds r24,midi_Couplers+6
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L260
	.loc 1 1111 0
	mov r20,r13
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL447:
	rjmp .L260
.L268:
	.loc 1 1113 0
	cpi r17,lo8(2)
	brne .L271
	.loc 1 1114 0
	lds r24,midi_Couplers+5
	cpi r24,lo8(-1)
	brne .L272
	.loc 1 1115 0
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL448:
.L272:
	.loc 1 1117 0
	lds r24,midi_Couplers+7
	cpi r24,lo8(-1)
	brne .L273
	.loc 1 1118 0
	mov r20,r13
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL449:
.L273:
	.loc 1 1120 0
	lds r24,midi_Couplers+8
	cpi r24,lo8(-1)
	brne .L260
	.loc 1 1121 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL450:
	rjmp .L260
.L271:
	.loc 1 1123 0
	cpi r17,lo8(3)
	brne .L260
	.loc 1 1124 0
	lds r24,midi_Couplers+9
	cpi r24,lo8(-1)
	brne .L274
	.loc 1 1125 0
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL451:
.L274:
	.loc 1 1127 0
	lds r24,midi_Couplers+10
	cpi r24,lo8(-1)
	brne .L275
	.loc 1 1128 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL452:
.L275:
	.loc 1 1130 0
	lds r24,midi_Couplers+11
	cpi r24,lo8(-1)
	brne .L260
	.loc 1 1131 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL453:
.L260:
.LBE91:
	.loc 1 1136 0
	mov r24,r15
	call moduleBit_to_registerNr
.LVL454:
	cpi r16,lo8(32)
	brne .L284
	ldi r18,lo8(-128)
	rjmp .L276
.L284:
	ldi r18,0
.L276:
	.loc 1 1136 0 is_stmt 0 discriminator 4
	or r24,r18
	sts midi_RegisterChanged,r24
.L259:
	.loc 1 1139 0 is_stmt 1 discriminator 2
	lsr r29
.LVL455:
	.loc 1 1066 0 discriminator 2
	subi r28,lo8(-(1))
.LVL456:
	rjmp .L257
.LVL457:
.L278:
.LBE90:
	ldi r28,0
.LVL458:
	rjmp .L257
.LVL459:
.L279:
	ldi r28,0
.LVL460:
.L257:
.LBB92:
	.loc 1 1066 0 is_stmt 0 discriminator 1
	cpi r28,lo8(8)
	brsh .+2
	rjmp .L277
.LVL461:
.L256:
/* epilogue start */
.LBE92:
	.loc 1 1142 0 is_stmt 1
	pop r29
.LVL462:
	pop r28
	pop r17
	pop r16
.LVL463:
	pop r15
	pop r14
.LVL464:
	pop r13
	pop r12
	pop r11
.LVL465:
	ret
	.cfi_endproc
.LFE60:
	.size	midiKeyPress_Process, .-midiKeyPress_Process
	.section	.text.midiSendAllNotesOff,"ax",@progbits
.global	midiSendAllNotesOff
	.type	midiSendAllNotesOff, @function
midiSendAllNotesOff:
.LFB61:
	.loc 1 1146 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1147 0
	lds r24,midiThrough+1
	cpi r24,lo8(16)
	brsh .L285
	.loc 1 1148 0
	ori r24,lo8(-80)
	call serial1MIDISend
.LVL466:
	.loc 1 1149 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL467:
	.loc 1 1150 0
	ldi r24,0
	call serial1MIDISend
.LVL468:
.L285:
	ret
	.cfi_endproc
.LFE61:
	.size	midiSendAllNotesOff, .-midiSendAllNotesOff
	.section	.text.midi_SendActiveSense,"ax",@progbits
.global	midi_SendActiveSense
	.type	midi_SendActiveSense, @function
midi_SendActiveSense:
.LFB62:
	.loc 1 1162 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1163 0
	ldi r24,lo8(-2)
	call serial1MIDISend
.LVL469:
	ret
	.cfi_endproc
.LFE62:
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
	breq .L289
	.loc 1 214 0 is_stmt 0 discriminator 1
	lds r24,swTimer+16
	cpi r24,lo8(-1)
	brne .L288
.L289:
.LBB93:
	.loc 1 216 0 is_stmt 1
	in r25,__SREG__
.LVL470:
.LBB94:
.LBB95:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE95:
.LBE94:
	.loc 1 216 0
	ldi r24,lo8(1)
	rjmp .L291
.LVL471:
.L292:
	.loc 1 216 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(10)
.LVL472:
	std Z+16,r24
	std Z+17,__zero_reg__
.LVL473:
	.loc 1 216 0 discriminator 3
	ldi r24,0
.LVL474:
.L291:
	.loc 1 216 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L292
.LVL475:
.LBB96:
.LBB97:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL476:
.LBE97:
.LBE96:
.LBE93:
	.loc 1 217 0
	lds r24,midi_Setting
.LVL477:
	cpse r24,__zero_reg__
	.loc 1 218 0
	call midi_SendActiveSense
.LVL478:
.L293:
	.loc 1 221 0
	sts midiTxLastCmd,__zero_reg__
.L288:
	ret
	.cfi_endproc
.LFE27:
	.size	midi_CheckTxActiveSense, .-midi_CheckTxActiveSense
.global	reg_Out
	.section	.data.reg_Out,"aw",@progbits
	.type	reg_Out, @object
	.size	reg_Out, 32
reg_Out:
	.byte	65
	.byte	49
	.byte	10
	.byte	14
	.byte	70
	.byte	32
	.byte	15
	.byte	18
	.byte	74
	.byte	50
	.byte	20
	.byte	24
	.byte	79
	.byte	32
	.byte	25
	.byte	29
	.byte	21
	.byte	80
	.byte	0
	.byte	4
	.byte	26
	.byte	32
	.byte	5
	.byte	9
	.byte	0
	.byte	32
	.byte	-1
	.byte	-1
	.byte	0
	.byte	32
	.byte	-1
	.byte	-1
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
	.long	0x2029
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF224
	.byte	0xc
	.long	.LASF225
	.long	.LASF226
	.long	.Ldebug_ranges0+0x220
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
	.byte	0x4
	.byte	0x7
	.byte	0xa5
	.long	0x43a
	.uleb128 0xa
	.long	.LASF60
	.byte	0x7
	.byte	0xa6
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF61
	.byte	0x7
	.byte	0xa7
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF62
	.byte	0x7
	.byte	0xa8
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF63
	.byte	0x7
	.byte	0xa9
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x7
	.byte	0xaa
	.long	0x3f9
	.uleb128 0x9
	.byte	0x3
	.byte	0x7
	.byte	0xe0
	.long	0x478
	.uleb128 0xa
	.long	.LASF65
	.byte	0x7
	.byte	0xe1
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF66
	.byte	0x7
	.byte	0xe2
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF67
	.byte	0x7
	.byte	0xe3
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF68
	.byte	0x7
	.byte	0xe4
	.long	0x445
	.uleb128 0xb
	.byte	0x2
	.long	0x3b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF69
	.uleb128 0xc
	.long	0x3b
	.uleb128 0x7
	.long	0x294
	.long	0x4ab
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	0x310
	.long	0x4c1
	.uleb128 0x8
	.long	0x82
	.byte	0xf
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	0x370
	.long	0x4d1
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	0x3ae
	.long	0x4e1
	.uleb128 0x8
	.long	0x82
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.long	0x3ee
	.long	0x4f1
	.uleb128 0x8
	.long	0x82
	.byte	0x3f
	.byte	0
	.uleb128 0x7
	.long	0x43a
	.long	0x501
	.uleb128 0x8
	.long	0x82
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	.LASF227
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0xe
	.long	.LASF228
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x527
	.uleb128 0xf
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0x527
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x490
	.uleb128 0x10
	.byte	0x1
	.long	.LASF71
	.byte	0x1
	.byte	0x42
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x569
	.uleb128 0x11
	.long	.LASF70
	.byte	0x1
	.byte	0x44
	.long	0x483
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
	.long	.LASF72
	.byte	0x1
	.byte	0x3c
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x58c
	.uleb128 0x14
	.long	.LVL4
	.long	0x52d
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF84
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
	.long	0x5ba
	.uleb128 0x16
	.long	.LASF74
	.byte	0x1
	.byte	0x4c
	.long	0x3b
	.long	.LLST2
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF75
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
	.long	0x5f6
	.uleb128 0x11
	.long	.LASF73
	.byte	0x1
	.byte	0x62
	.long	0xb8
	.long	.LLST3
	.uleb128 0x11
	.long	.LASF74
	.byte	0x1
	.byte	0x64
	.long	0x3b
	.long	.LLST4
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF76
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
	.long	0x62f
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.byte	0x6f
	.long	0xb8
	.long	.LLST5
	.uleb128 0x11
	.long	.LASF74
	.byte	0x1
	.byte	0x70
	.long	0x3b
	.long	.LLST6
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF77
	.byte	0x1
	.byte	0x8c
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x652
	.uleb128 0x14
	.long	.LVL23
	.long	0x1f42
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF78
	.byte	0x1
	.word	0x17d
	.long	.LFB31
	.long	.LFE31
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x693
	.uleb128 0x1a
	.long	.LASF79
	.byte	0x1
	.word	0x17e
	.long	0x3b
	.long	.LLST7
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x1a
	.long	.LASF80
	.byte	0x1
	.word	0x17f
	.long	0x3b
	.long	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF81
	.byte	0x1
	.word	0x188
	.long	.LFB32
	.long	.LFE32
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x757
	.uleb128 0x1b
	.long	.LBB17
	.long	.LBE17
	.long	0x6cb
	.uleb128 0x1a
	.long	.LASF80
	.byte	0x1
	.word	0x18d
	.long	0x3b
	.long	.LLST9
	.byte	0
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x30
	.long	0x6fb
	.uleb128 0x1a
	.long	.LASF82
	.byte	0x1
	.word	0x19b
	.long	0x3b
	.long	.LLST10
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x1a
	.long	.LASF83
	.byte	0x1
	.word	0x19c
	.long	0x3b
	.long	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL32
	.long	0x1f4f
	.uleb128 0x1d
	.long	.LVL33
	.long	0x1f5c
	.long	0x726
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
	.long	0x652
	.uleb128 0x14
	.long	.LVL35
	.long	0x1f69
	.uleb128 0x1f
	.long	.LVL43
	.long	0x1f5c
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
	.long	.LASF85
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
	.long	0x7bb
	.uleb128 0x21
	.long	.LASF83
	.byte	0x1
	.word	0x1a5
	.long	0x3b
	.long	.LLST12
	.uleb128 0x22
	.long	.LASF73
	.byte	0x1
	.word	0x1a7
	.long	0x256
	.uleb128 0x23
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.word	0x1aa
	.long	0x7bb
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
	.long	.LASF87
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
	.long	0x81e
	.uleb128 0x21
	.long	.LASF88
	.byte	0x1
	.word	0x1bc
	.long	0x3b
	.long	.LLST15
	.uleb128 0x25
	.long	.LASF89
	.byte	0x1
	.word	0x1bd
	.long	0x7bb
	.byte	0x6
	.byte	0x3
	.long	registerMap
	.byte	0x9f
	.uleb128 0x23
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.word	0x1be
	.long	0x3b
	.long	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF91
	.byte	0x1
	.word	0x1c7
	.byte	0x1
	.long	0x3b
	.long	.LFB35
	.long	.LFE35
	.long	.LLST17
	.byte	0x1
	.long	0x8cb
	.uleb128 0x21
	.long	.LASF83
	.byte	0x1
	.word	0x1c7
	.long	0x3b
	.long	.LLST18
	.uleb128 0x21
	.long	.LASF92
	.byte	0x1
	.word	0x1c7
	.long	0x3b
	.long	.LLST19
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x22
	.long	.LASF93
	.byte	0x1
	.word	0x1cc
	.long	0x256
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x78
	.long	0x8b8
	.uleb128 0x1a
	.long	.LASF94
	.byte	0x1
	.word	0x1cf
	.long	0x3b
	.long	.LLST20
	.uleb128 0x1a
	.long	.LASF95
	.byte	0x1
	.word	0x1d0
	.long	0x3b
	.long	.LLST21
	.uleb128 0x1a
	.long	.LASF96
	.byte	0x1
	.word	0x1d1
	.long	0x3b
	.long	.LLST22
	.uleb128 0x1a
	.long	.LASF97
	.byte	0x1
	.word	0x1d2
	.long	0x3b
	.long	.LLST23
	.byte	0
	.uleb128 0x1f
	.long	.LVL60
	.long	0x757
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
	.long	.LASF98
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
	.long	0x968
	.uleb128 0x21
	.long	.LASF83
	.byte	0x1
	.word	0x1e5
	.long	0x3b
	.long	.LLST24
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x22
	.long	.LASF93
	.byte	0x1
	.word	0x1e9
	.long	0x256
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0xa8
	.long	0x955
	.uleb128 0x1a
	.long	.LASF94
	.byte	0x1
	.word	0x1ec
	.long	0x3b
	.long	.LLST25
	.uleb128 0x1a
	.long	.LASF95
	.byte	0x1
	.word	0x1ed
	.long	0x3b
	.long	.LLST26
	.uleb128 0x1a
	.long	.LASF96
	.byte	0x1
	.word	0x1ee
	.long	0x3b
	.long	.LLST27
	.uleb128 0x1a
	.long	.LASF97
	.byte	0x1
	.word	0x1ef
	.long	0x3b
	.long	.LLST28
	.byte	0
	.uleb128 0x1f
	.long	.LVL74
	.long	0x757
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
	.long	.LASF99
	.byte	0x1
	.word	0x201
	.byte	0x1
	.long	0x3b
	.long	.LFB37
	.long	.LFE37
	.long	.LLST29
	.byte	0x1
	.long	0x9d4
	.uleb128 0x21
	.long	.LASF92
	.byte	0x1
	.word	0x201
	.long	0x3b
	.long	.LLST30
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.word	0x202
	.long	0x3b
	.long	.LLST31
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x1a
	.long	.LASF83
	.byte	0x1
	.word	0x203
	.long	0x3b
	.long	.LLST32
	.uleb128 0x1f
	.long	.LVL89
	.long	0x81e
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
	.long	.LASF100
	.byte	0x1
	.word	0x20b
	.byte	0x1
	.long	0x3b
	.long	.LFB38
	.long	.LFE38
	.long	.LLST33
	.byte	0x1
	.long	0xa4f
	.uleb128 0x21
	.long	.LASF101
	.byte	0x1
	.word	0x20b
	.long	0x483
	.long	.LLST34
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.word	0x20c
	.long	0x3b
	.long	.LLST35
	.uleb128 0x1a
	.long	.LASF97
	.byte	0x1
	.word	0x20e
	.long	0x3b
	.long	.LLST36
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xd8
	.uleb128 0x1a
	.long	.LASF83
	.byte	0x1
	.word	0x20f
	.long	0x3b
	.long	.LLST37
	.uleb128 0x1f
	.long	.LVL100
	.long	0x81e
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
	.long	.LASF102
	.byte	0x1
	.word	0x226
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST38
	.byte	0x1
	.long	0xb02
	.uleb128 0x21
	.long	.LASF83
	.byte	0x1
	.word	0x226
	.long	0x3b
	.long	.LLST39
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.word	0x226
	.long	0x3b
	.long	.LLST40
	.uleb128 0x23
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x22
	.long	.LASF93
	.byte	0x1
	.word	0x22a
	.long	0x256
	.uleb128 0x1b
	.long	.LBB37
	.long	.LBE37
	.long	0xaef
	.uleb128 0x1a
	.long	.LASF94
	.byte	0x1
	.word	0x22d
	.long	0x3b
	.long	.LLST41
	.uleb128 0x1a
	.long	.LASF95
	.byte	0x1
	.word	0x22e
	.long	0x3b
	.long	.LLST42
	.uleb128 0x1a
	.long	.LASF96
	.byte	0x1
	.word	0x22f
	.long	0x3b
	.long	.LLST43
	.uleb128 0x14
	.long	.LVL117
	.long	0x1f76
	.uleb128 0x14
	.long	.LVL119
	.long	0x1f83
	.byte	0
	.uleb128 0x1f
	.long	.LVL112
	.long	0x757
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
	.long	.LASF104
	.byte	0x1
	.byte	0xe4
	.long	.LFB28
	.long	.LFE28
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xb25
	.uleb128 0x14
	.long	.LVL120
	.long	0xa4f
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF105
	.byte	0x1
	.word	0x280
	.byte	0x1
	.long	0x3b
	.long	.LFB43
	.long	.LFE43
	.long	.LLST44
	.byte	0x1
	.long	0xbae
	.uleb128 0x21
	.long	.LASF106
	.byte	0x1
	.word	0x280
	.long	0x3b
	.long	.LLST45
	.uleb128 0x21
	.long	.LASF107
	.byte	0x1
	.word	0x280
	.long	0x3b
	.long	.LLST46
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.word	0x283
	.long	0x3b
	.long	.LLST47
	.uleb128 0x1b
	.long	.LBB38
	.long	.LBE38
	.long	0xb9b
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x1
	.word	0x285
	.long	0x483
	.long	.LLST48
	.uleb128 0x14
	.long	.LVL127
	.long	0x9d4
	.byte	0
	.uleb128 0x14
	.long	.LVL131
	.long	0x5ba
	.uleb128 0x14
	.long	.LVL133
	.long	0x1f90
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF109
	.byte	0x1
	.word	0x28f
	.byte	0x1
	.long	0x3b
	.long	.LFB44
	.long	.LFE44
	.long	.LLST49
	.byte	0x1
	.long	0xc42
	.uleb128 0x21
	.long	.LASF106
	.byte	0x1
	.word	0x28f
	.long	0x3b
	.long	.LLST50
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.word	0x292
	.long	0x3b
	.long	.LLST51
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x1
	.word	0x293
	.long	0x483
	.long	.LLST52
	.uleb128 0x1a
	.long	.LASF111
	.byte	0x1
	.word	0x294
	.long	0x3b
	.long	.LLST53
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x1
	.word	0x295
	.long	0x3b
	.long	.LLST54
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x296
	.long	0x3b
	.long	.LLST55
	.uleb128 0x1f
	.long	.LVL144
	.long	0x8cb
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
	.long	.LASF113
	.byte	0x1
	.word	0x2b2
	.byte	0x1
	.long	0x3b
	.long	.LFB45
	.long	.LFE45
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xcb6
	.uleb128 0x21
	.long	.LASF106
	.byte	0x1
	.word	0x2b2
	.long	0x3b
	.long	.LLST56
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.word	0x2b4
	.long	0x3b
	.long	.LLST57
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x1
	.word	0x2b5
	.long	0x483
	.long	.LLST58
	.uleb128 0x1a
	.long	.LASF111
	.byte	0x1
	.word	0x2b6
	.long	0x3b
	.long	.LLST59
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x110
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2b7
	.long	0x3b
	.long	.LLST60
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF114
	.byte	0x1
	.word	0x2c9
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xce2
	.uleb128 0x21
	.long	.LASF115
	.byte	0x1
	.word	0x2c9
	.long	0x3b
	.long	.LLST61
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF116
	.byte	0x1
	.word	0x23c
	.byte	0x1
	.long	0x3b
	.long	.LFB40
	.long	.LFE40
	.long	.LLST62
	.byte	0x1
	.long	0xdc5
	.uleb128 0x21
	.long	.LASF106
	.byte	0x1
	.word	0x23c
	.long	0x3b
	.long	.LLST63
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.word	0x23e
	.long	0x3b
	.long	.LLST64
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x128
	.uleb128 0x1a
	.long	.LASF117
	.byte	0x1
	.word	0x241
	.long	0x3b
	.long	.LLST65
	.uleb128 0x1a
	.long	.LASF83
	.byte	0x1
	.word	0x242
	.long	0x3b
	.long	.LLST66
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x1
	.word	0x243
	.long	0x483
	.long	.LLST67
	.uleb128 0x22
	.long	.LASF58
	.byte	0x1
	.word	0x252
	.long	0xb8
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x140
	.long	0xda6
	.uleb128 0x1a
	.long	.LASF118
	.byte	0x1
	.word	0x244
	.long	0x3b
	.long	.LLST68
	.uleb128 0x23
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x1a
	.long	.LASF95
	.byte	0x1
	.word	0x248
	.long	0x3b
	.long	.LLST69
	.uleb128 0x1f
	.long	.LVL178
	.long	0xa4f
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
	.long	.LVL171
	.long	0xcb6
	.long	0xdba
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL186
	.long	0x5f6
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF119
	.byte	0x1
	.word	0x259
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST70
	.byte	0x1
	.long	0xe72
	.uleb128 0x21
	.long	.LASF120
	.byte	0x1
	.word	0x259
	.long	0x3b
	.long	.LLST71
	.uleb128 0x21
	.long	.LASF106
	.byte	0x1
	.word	0x259
	.long	0x3b
	.long	.LLST72
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x158
	.long	0xe58
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x1
	.word	0x25c
	.long	0x3b
	.long	.LLST73
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x170
	.long	0xe33
	.uleb128 0x1a
	.long	.LASF122
	.byte	0x1
	.word	0x25e
	.long	0x3b
	.long	.LLST74
	.byte	0
	.uleb128 0x1d
	.long	.LVL199
	.long	0xce2
	.long	0xe47
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL200
	.long	0xcb6
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL201
	.long	0x1f9d
	.uleb128 0x1f
	.long	.LVL202
	.long	0x1f9d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF123
	.byte	0x1
	.word	0x279
	.long	.LFB42
	.long	.LFE42
	.long	.LLST75
	.byte	0x1
	.long	0xece
	.uleb128 0x23
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x27a
	.long	0x3b
	.long	.LLST76
	.uleb128 0x1d
	.long	.LVL206
	.long	0xcb6
	.long	0xeb7
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1f
	.long	.LVL207
	.long	0xa4f
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
	.long	.LASF124
	.byte	0x1
	.word	0x2d0
	.long	.LFB47
	.long	.LFE47
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xf46
	.uleb128 0x1d
	.long	.LVL210
	.long	0x1faa
	.long	0xefc
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x1d
	.long	.LVL211
	.long	0x1faa
	.long	0xf10
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x14
	.long	.LVL212
	.long	0x1faa
	.uleb128 0x14
	.long	.LVL213
	.long	0x1faa
	.uleb128 0x1d
	.long	.LVL214
	.long	0x1faa
	.long	0xf36
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1f
	.long	.LVL215
	.long	0x1fb7
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF125
	.byte	0x1
	.word	0x2e0
	.long	.LFB48
	.long	.LFE48
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xf6a
	.uleb128 0x14
	.long	.LVL216
	.long	0x1fc4
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF126
	.byte	0x1
	.word	0x2e6
	.long	.LFB49
	.long	.LFE49
	.long	.LLST77
	.byte	0x1
	.long	0x1065
	.uleb128 0x23
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2e8
	.long	0x3b
	.long	.LLST78
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x190
	.uleb128 0x1a
	.long	.LASF127
	.byte	0x1
	.word	0x2ea
	.long	0x489
	.long	.LLST79
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.word	0x2f0
	.long	0x3b
	.long	.LLST80
	.uleb128 0x1b
	.long	.LBB57
	.long	.LBE57
	.long	0x100f
	.uleb128 0x1a
	.long	.LASF128
	.byte	0x1
	.word	0x2fa
	.long	0x3b
	.long	.LLST81
	.uleb128 0x1d
	.long	.LVL227
	.long	0x8cb
	.long	0xff1
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL229
	.long	0x8cb
	.long	0x1005
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL232
	.long	0x1faa
	.byte	0
	.uleb128 0x14
	.long	.LVL219
	.long	0x1fd1
	.uleb128 0x14
	.long	.LVL221
	.long	0x1faa
	.uleb128 0x1d
	.long	.LVL222
	.long	0x1faa
	.long	0x1035
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1d
	.long	.LVL224
	.long	0x8cb
	.long	0x1049
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL225
	.long	0x1faa
	.uleb128 0x1f
	.long	.LVL234
	.long	0x1faa
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF129
	.byte	0x1
	.word	0x304
	.long	.LFB50
	.long	.LFE50
	.long	.LLST82
	.byte	0x1
	.long	0x10d4
	.uleb128 0x23
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x305
	.long	0x3b
	.long	.LLST83
	.uleb128 0x23
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x1a
	.long	.LASF127
	.byte	0x1
	.word	0x307
	.long	0x489
	.long	.LLST84
	.uleb128 0x1a
	.long	.LASF130
	.byte	0x1
	.word	0x308
	.long	0x3b
	.long	.LLST85
	.uleb128 0x14
	.long	.LVL239
	.long	0x1fd1
	.uleb128 0x14
	.long	.LVL247
	.long	0x1fb7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF131
	.byte	0x1
	.word	0x312
	.long	.LFB51
	.long	.LFE51
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1169
	.uleb128 0x1a
	.long	.LASF132
	.byte	0x1
	.word	0x313
	.long	0x1169
	.long	.LLST86
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x1a8
	.long	0x1116
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x316
	.long	0x3b
	.long	.LLST87
	.byte	0
	.uleb128 0x14
	.long	.LVL254
	.long	0x1fde
	.uleb128 0x1d
	.long	.LVL255
	.long	0x1f5c
	.long	0x1141
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
	.long	.LVL256
	.long	0x1feb
	.uleb128 0x1f
	.long	.LVL257
	.long	0x1f5c
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
	.long	.LASF133
	.byte	0x1
	.word	0x33a
	.long	.LFB52
	.long	.LFE52
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x11cd
	.uleb128 0x1b
	.long	.LBB63
	.long	.LBE63
	.long	0x11a5
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x33c
	.long	0x3b
	.long	.LLST88
	.byte	0
	.uleb128 0x14
	.long	.LVL261
	.long	0x1ff8
	.uleb128 0x1f
	.long	.LVL262
	.long	0x1f5c
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
	.long	.LASF134
	.byte	0x1
	.word	0x376
	.byte	0x1
	.long	0x1f6
	.long	.LFB54
	.long	.LFE54
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1217
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x376
	.long	0x3b
	.long	.LLST89
	.uleb128 0x2a
	.long	.LASF33
	.byte	0x1
	.word	0x376
	.long	0x3b
	.byte	0x1
	.byte	0x66
	.uleb128 0x22
	.long	.LASF73
	.byte	0x1
	.word	0x377
	.long	0x1f6
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF135
	.byte	0x1
	.word	0x384
	.long	.LFB55
	.long	.LFE55
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1286
	.uleb128 0x23
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x385
	.long	0x3b
	.long	.LLST90
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x1a
	.long	.LASF136
	.byte	0x1
	.word	0x386
	.long	0x3b
	.long	.LLST91
	.uleb128 0x1a
	.long	.LASF137
	.byte	0x1
	.word	0x387
	.long	0x3b
	.long	.LLST92
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x1a
	.long	.LASF138
	.byte	0x1
	.word	0x388
	.long	0x3b
	.long	.LLST93
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF139
	.byte	0x1
	.word	0x39c
	.long	.LFB56
	.long	.LFE56
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1305
	.uleb128 0x1b
	.long	.LBB69
	.long	.LBE69
	.long	0x12d0
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x39d
	.long	0x29
	.long	.LLST94
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1d8
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.word	0x39f
	.long	0x29
	.long	.LLST95
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL282
	.long	0x2005
	.uleb128 0x1d
	.long	.LVL283
	.long	0x1f5c
	.long	0x12fb
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
	.long	.LVL284
	.long	0x1217
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF140
	.byte	0x1
	.word	0x3c8
	.byte	0x1
	.long	0x256
	.long	.LFB57
	.long	.LFE57
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1379
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x3c8
	.long	0x3b
	.long	.LLST96
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x3c8
	.long	0x3b
	.long	.LLST97
	.uleb128 0x22
	.long	.LASF73
	.byte	0x1
	.word	0x3ca
	.long	0x256
	.uleb128 0x23
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.word	0x3cd
	.long	0x1379
	.long	.LLST98
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x3cf
	.long	0x3b
	.long	.LLST99
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x294
	.uleb128 0x20
	.byte	0x1
	.long	.LASF141
	.byte	0x1
	.word	0x3df
	.byte	0x1
	.long	0x226
	.long	.LFB58
	.long	.LFE58
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x13f3
	.uleb128 0x21
	.long	.LASF38
	.byte	0x1
	.word	0x3df
	.long	0x3b
	.long	.LLST100
	.uleb128 0x22
	.long	.LASF73
	.byte	0x1
	.word	0x3e3
	.long	0x226
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.word	0x3e4
	.long	0x1379
	.long	.LLST101
	.uleb128 0x1a
	.long	.LASF35
	.byte	0x1
	.word	0x3e6
	.long	0x3b
	.long	.LLST102
	.uleb128 0x23
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x3e8
	.long	0x3b
	.long	.LLST103
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF142
	.byte	0x1
	.word	0x3f9
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST104
	.byte	0x1
	.long	0x1502
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x3f9
	.long	0x3b
	.long	.LLST105
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x3f9
	.long	0x3b
	.long	.LLST106
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.word	0x3f9
	.long	0x3b
	.long	.LLST107
	.uleb128 0x22
	.long	.LASF143
	.byte	0x1
	.word	0x3fa
	.long	0x256
	.uleb128 0x1a
	.long	.LASF144
	.byte	0x1
	.word	0x3fd
	.long	0x3b
	.long	.LLST108
	.uleb128 0x1a
	.long	.LASF95
	.byte	0x1
	.word	0x3fe
	.long	0x3b
	.long	.LLST109
	.uleb128 0x1b
	.long	.LBB74
	.long	.LBE74
	.long	0x148d
	.uleb128 0x22
	.long	.LASF145
	.byte	0x1
	.word	0x403
	.long	0xe2
	.uleb128 0x14
	.long	.LVL308
	.long	0x2012
	.byte	0
	.uleb128 0x1d
	.long	.LVL304
	.long	0x1305
	.long	0x14a7
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
	.long	.LVL310
	.long	0x1f83
	.long	0x14c1
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
	.long	.LVL311
	.long	0x1f76
	.long	0x14db
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
	.long	.LVL312
	.long	0x1f9d
	.uleb128 0x1d
	.long	.LVL313
	.long	0x1f9d
	.long	0x14f8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL314
	.long	0x1f9d
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF146
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST110
	.byte	0x1
	.long	0x15d4
	.uleb128 0x16
	.long	.LASF120
	.byte	0x1
	.byte	0x91
	.long	0x3b
	.long	.LLST111
	.uleb128 0x11
	.long	.LASF147
	.byte	0x1
	.byte	0x92
	.long	0x3b
	.long	.LLST112
	.uleb128 0x23
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0x94
	.long	0x3b
	.long	.LLST113
	.uleb128 0x23
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0x98
	.long	0x3b
	.long	.LLST114
	.uleb128 0x11
	.long	.LASF148
	.byte	0x1
	.byte	0x9d
	.long	0x3b
	.long	.LLST115
	.uleb128 0x1b
	.long	.LBB77
	.long	.LBE77
	.long	0x15a4
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.long	0x3b
	.long	.LLST116
	.uleb128 0x1f
	.long	.LVL327
	.long	0x13f3
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL332
	.long	0x1f9d
	.uleb128 0x1d
	.long	.LVL333
	.long	0x1f9d
	.long	0x15c1
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL334
	.long	0x1f9d
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
	.long	.LASF149
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST117
	.byte	0x1
	.long	0x1672
	.uleb128 0x16
	.long	.LASF35
	.byte	0x1
	.byte	0xad
	.long	0x3b
	.long	.LLST118
	.uleb128 0x11
	.long	.LASF148
	.byte	0x1
	.byte	0xb5
	.long	0x3b
	.long	.LLST119
	.uleb128 0x1b
	.long	.LBB78
	.long	.LBE78
	.long	0x1645
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0xb0
	.long	0x3b
	.long	.LLST120
	.uleb128 0x1f
	.long	.LVL341
	.long	0x13f3
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
	.long	.LVL346
	.long	0x1f9d
	.uleb128 0x1d
	.long	.LVL347
	.long	0x1f9d
	.long	0x1662
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL348
	.long	0x1f9d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF150
	.byte	0x1
	.byte	0xbf
	.long	.LFB25
	.long	.LFE25
	.long	.LLST121
	.byte	0x1
	.long	0x16b5
	.uleb128 0x23
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0xc0
	.long	0x3b
	.long	.LLST122
	.uleb128 0x1f
	.long	.LVL352
	.long	0x15d4
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
	.long	.LASF151
	.byte	0x1
	.byte	0xc8
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x16d8
	.uleb128 0x14
	.long	.LVL355
	.long	0x1672
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF152
	.byte	0x1
	.word	0x34e
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST123
	.byte	0x1
	.long	0x17c6
	.uleb128 0x21
	.long	.LASF120
	.byte	0x1
	.word	0x34e
	.long	0x3b
	.long	.LLST124
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x34e
	.long	0x3b
	.long	.LLST125
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.word	0x34e
	.long	0x3b
	.long	.LLST126
	.uleb128 0x1a
	.long	.LASF153
	.byte	0x1
	.word	0x350
	.long	0x3b
	.long	.LLST127
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x1f0
	.long	0x179f
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x351
	.long	0x3b
	.long	.LLST128
	.uleb128 0x23
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x1a
	.long	.LASF154
	.byte	0x1
	.word	0x354
	.long	0x29
	.long	.LLST129
	.uleb128 0x23
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x1a
	.long	.LASF35
	.byte	0x1
	.word	0x357
	.long	0x3b
	.long	.LLST130
	.uleb128 0x1a
	.long	.LASF155
	.byte	0x1
	.word	0x358
	.long	0x3b
	.long	.LLST131
	.uleb128 0x1f
	.long	.LVL365
	.long	0x13f3
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
	.long	.LVL371
	.long	0x1f9d
	.uleb128 0x1d
	.long	.LVL372
	.long	0x1f9d
	.long	0x17bc
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL373
	.long	0x1f9d
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF156
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
	.long	0x18a9
	.uleb128 0x16
	.long	.LASF157
	.byte	0x1
	.byte	0xf5
	.long	0x3b
	.long	.LLST132
	.uleb128 0x1b
	.long	.LBB84
	.long	.LBE84
	.long	0x1843
	.uleb128 0x11
	.long	.LASF158
	.byte	0x1
	.byte	0xfd
	.long	0x3b
	.long	.LLST133
	.uleb128 0x11
	.long	.LASF159
	.byte	0x1
	.byte	0xfd
	.long	0x3b
	.long	.LLST134
	.uleb128 0x2d
	.long	0x501
	.long	.LBB85
	.long	.LBE85
	.byte	0x1
	.byte	0xfd
	.uleb128 0x2e
	.long	0x50e
	.long	.LBB87
	.long	.LBE87
	.byte	0x1
	.byte	0xfd
	.uleb128 0x2f
	.long	0x51b
	.long	.LLST135
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LBB89
	.long	.LBE89
	.long	0x189f
	.uleb128 0x1a
	.long	.LASF120
	.byte	0x1
	.word	0x12c
	.long	0x3b
	.long	.LLST136
	.uleb128 0x1a
	.long	.LASF160
	.byte	0x1
	.word	0x12d
	.long	0x3b
	.long	.LLST137
	.uleb128 0x1d
	.long	.LVL405
	.long	0x16d8
	.long	0x1883
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL408
	.long	0x16d8
	.uleb128 0x14
	.long	.LVL410
	.long	0x1502
	.uleb128 0x14
	.long	.LVL412
	.long	0xdc5
	.byte	0
	.uleb128 0x14
	.long	.LVL388
	.long	0x62f
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF161
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
	.long	0x1923
	.uleb128 0x21
	.long	.LASF162
	.byte	0x1
	.word	0x151
	.long	0x3b
	.long	.LLST138
	.uleb128 0x1a
	.long	.LASF120
	.byte	0x1
	.word	0x155
	.long	0x3b
	.long	.LLST139
	.uleb128 0x1a
	.long	.LASF160
	.byte	0x1
	.word	0x156
	.long	0x3b
	.long	.LLST140
	.uleb128 0x1d
	.long	.LVL417
	.long	0x16d8
	.long	0x1907
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL420
	.long	0x16d8
	.uleb128 0x14
	.long	.LVL422
	.long	0x1502
	.uleb128 0x14
	.long	.LVL426
	.long	0xdc5
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF163
	.byte	0x1
	.word	0x421
	.byte	0x1
	.long	.LFB60
	.long	.LFE60
	.long	.LLST141
	.byte	0x1
	.long	0x1ba0
	.uleb128 0x21
	.long	.LASF164
	.byte	0x1
	.word	0x421
	.long	0xe2
	.long	.LLST142
	.uleb128 0x1a
	.long	.LASF165
	.byte	0x1
	.word	0x423
	.long	0x3b
	.long	.LLST143
	.uleb128 0x1a
	.long	.LASF166
	.byte	0x1
	.word	0x424
	.long	0x3b
	.long	.LLST144
	.uleb128 0x1a
	.long	.LASF167
	.byte	0x1
	.word	0x425
	.long	0x3b
	.long	.LLST145
	.uleb128 0x1a
	.long	.LASF47
	.byte	0x1
	.word	0x426
	.long	0x226
	.long	.LLST146
	.uleb128 0x1a
	.long	.LASF168
	.byte	0x1
	.word	0x427
	.long	0x1f6
	.long	.LLST147
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x208
	.long	0x1b96
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x42a
	.long	0x3b
	.long	.LLST148
	.uleb128 0x1b
	.long	.LBB91
	.long	.LBE91
	.long	0x1b71
	.uleb128 0x1a
	.long	.LASF160
	.byte	0x1
	.word	0x443
	.long	0x3b
	.long	.LLST149
	.uleb128 0x1d
	.long	.LVL434
	.long	0x11cd
	.long	0x19ec
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
	.long	.LVL436
	.long	0x1f9d
	.uleb128 0x1d
	.long	.LVL437
	.long	0x1f9d
	.long	0x1a09
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL438
	.long	0x1f9d
	.uleb128 0x1d
	.long	.LVL442
	.long	0x13f3
	.long	0x1a31
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
	.long	.LVL443
	.long	0x13f3
	.long	0x1a50
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
	.long	.LVL444
	.long	0x13f3
	.long	0x1a6f
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
	.long	.LVL445
	.long	0x13f3
	.long	0x1a88
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
	.long	.LVL446
	.long	0x13f3
	.long	0x1aa7
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
	.long	.LVL447
	.long	0x13f3
	.long	0x1ac6
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
	.long	.LVL448
	.long	0x13f3
	.long	0x1adf
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
	.long	.LVL449
	.long	0x13f3
	.long	0x1afe
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
	.long	.LVL450
	.long	0x13f3
	.long	0x1b1d
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
	.long	.LVL451
	.long	0x13f3
	.long	0x1b36
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
	.long	.LVL452
	.long	0x13f3
	.long	0x1b55
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
	.long	.LVL453
	.long	0x13f3
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
	.long	.LVL432
	.long	0x137f
	.long	0x1b85
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL454
	.long	0x7c1
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL428
	.long	0x201f
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF169
	.byte	0x1
	.word	0x47a
	.long	.LFB61
	.long	.LFE61
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1be7
	.uleb128 0x14
	.long	.LVL466
	.long	0x1f9d
	.uleb128 0x1d
	.long	.LVL467
	.long	0x1f9d
	.long	0x1bd7
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL468
	.long	0x1f9d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF170
	.byte	0x1
	.word	0x48a
	.long	.LFB62
	.long	.LFE62
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1c12
	.uleb128 0x1f
	.long	.LVL469
	.long	0x1f9d
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
	.long	.LASF171
	.byte	0x1
	.byte	0xd3
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1c89
	.uleb128 0x1b
	.long	.LBB93
	.long	.LBE93
	.long	0x1c7f
	.uleb128 0x11
	.long	.LASF158
	.byte	0x1
	.byte	0xd8
	.long	0x3b
	.long	.LLST150
	.uleb128 0x11
	.long	.LASF159
	.byte	0x1
	.byte	0xd8
	.long	0x3b
	.long	.LLST151
	.uleb128 0x2d
	.long	0x501
	.long	.LBB94
	.long	.LBE94
	.byte	0x1
	.byte	0xd8
	.uleb128 0x2e
	.long	0x50e
	.long	.LBB96
	.long	.LBE96
	.byte	0x1
	.byte	0xd8
	.uleb128 0x2f
	.long	0x51b
	.long	.LLST152
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL478
	.long	0x1be7
	.byte	0
	.uleb128 0x7
	.long	0x1c99
	.long	0x1c99
	.uleb128 0x8
	.long	0x82
	.byte	0x8
	.byte	0
	.uleb128 0x30
	.long	0x112
	.uleb128 0x31
	.long	.LASF172
	.byte	0x6
	.byte	0x53
	.long	0x1cab
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	0x1c89
	.uleb128 0x7
	.long	0x196
	.long	0x1cc0
	.uleb128 0x8
	.long	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x31
	.long	.LASF173
	.byte	0x6
	.byte	0xaf
	.long	0x1cb0
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	.LASF174
	.byte	0x6
	.byte	0xb6
	.long	0x1cda
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	0x3b
	.uleb128 0x31
	.long	.LASF175
	.byte	0x6
	.byte	0xbf
	.long	0x1c6
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0x3b
	.long	0x1cfc
	.uleb128 0x8
	.long	0x82
	.byte	0x2
	.byte	0
	.uleb128 0x31
	.long	.LASF176
	.byte	0x8
	.byte	0x35
	.long	0x1cec
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	.LASF177
	.byte	0x8
	.byte	0xa1
	.long	0x1cda
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.long	.LASF178
	.byte	0x1
	.byte	0x2d
	.long	0x495
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	manualMap
	.uleb128 0x7
	.long	0x2c4
	.long	0x1d38
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x32
	.long	.LASF179
	.byte	0x1
	.byte	0x2e
	.long	0x1d28
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ManualNoteRange
	.uleb128 0x32
	.long	.LASF180
	.byte	0x1
	.byte	0x2f
	.long	0x4ab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiInMap
	.uleb128 0x32
	.long	.LASF181
	.byte	0x1
	.byte	0x37
	.long	0x340
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiThrough
	.uleb128 0x32
	.long	.LASF182
	.byte	0x1
	.byte	0x30
	.long	0x4c1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiOutMap
	.uleb128 0x32
	.long	.LASF183
	.byte	0x1
	.byte	0x34
	.long	0x4d1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerMap
	.uleb128 0x32
	.long	.LASF184
	.byte	0x1
	.byte	0x35
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerCount
	.uleb128 0x32
	.long	.LASF185
	.byte	0x1
	.byte	0x36
	.long	0x4e1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	programMap
	.uleb128 0x32
	.long	.LASF186
	.byte	0x1
	.byte	0x38
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_RegisterChanged
	.uleb128 0x33
	.long	.LASF187
	.byte	0x1
	.word	0x2dc
	.long	0x4f1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	reg_Out
	.uleb128 0x33
	.long	.LASF188
	.byte	0x1
	.word	0x2c6
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	prog_Display
	.uleb128 0x33
	.long	.LASF189
	.byte	0x1
	.word	0x2c7
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	prog_UpdDisplay
	.uleb128 0x32
	.long	.LASF190
	.byte	0x1
	.byte	0x31
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxActivceSensing
	.uleb128 0x32
	.long	.LASF191
	.byte	0x1
	.byte	0x32
	.long	0x478
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Setting
	.uleb128 0x32
	.long	.LASF192
	.byte	0x1
	.byte	0x82
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutNote
	.uleb128 0x32
	.long	.LASF193
	.byte	0x1
	.byte	0x83
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutManual
	.uleb128 0x32
	.long	.LASF194
	.byte	0x1
	.byte	0x84
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInNote
	.uleb128 0x32
	.long	.LASF195
	.byte	0x1
	.byte	0x85
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInChannel
	.uleb128 0x32
	.long	.LASF196
	.byte	0x1
	.byte	0x86
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInManual
	.uleb128 0x32
	.long	.LASF197
	.byte	0x1
	.byte	0x87
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastProgram
	.uleb128 0x7
	.long	0x3b
	.long	0x1ea1
	.uleb128 0x8
	.long	0x82
	.byte	0xb
	.byte	0
	.uleb128 0x32
	.long	.LASF198
	.byte	0x1
	.byte	0x1d
	.long	0x1e91
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Couplers
	.uleb128 0x32
	.long	.LASF199
	.byte	0x1
	.byte	0x1e
	.long	0x1ec5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cplInfo
	.uleb128 0x34
	.uleb128 0x7
	.long	0x3b
	.long	0x1ed6
	.uleb128 0x8
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x32
	.long	.LASF200
	.byte	0x9
	.byte	0xaf
	.long	0x1ec6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x32
	.long	.LASF201
	.byte	0x1
	.byte	0x33
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiEEPromLoadError
	.uleb128 0x32
	.long	.LASF202
	.byte	0x1
	.byte	0x7d
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastCommand
	.uleb128 0x32
	.long	.LASF203
	.byte	0x1
	.byte	0x7e
	.long	0x3de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByte
	.uleb128 0x32
	.long	.LASF204
	.byte	0x1
	.byte	0x7f
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteCount
	.uleb128 0x32
	.long	.LASF205
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
	.long	.LASF206
	.long	.LASF206
	.byte	0x6
	.byte	0x5a
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF207
	.long	.LASF207
	.byte	0xa
	.byte	0x24
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF208
	.long	.LASF208
	.byte	0xb
	.byte	0x32
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF209
	.long	.LASF209
	.byte	0xa
	.byte	0x26
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF210
	.long	.LASF210
	.byte	0x6
	.byte	0xd6
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF211
	.long	.LASF211
	.byte	0x6
	.byte	0xd7
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF212
	.long	.LASF212
	.byte	0xa
	.byte	0x31
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF213
	.long	.LASF213
	.byte	0x8
	.byte	0x90
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF214
	.long	.LASF214
	.byte	0xc
	.byte	0x7f
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF215
	.long	.LASF215
	.byte	0x4
	.byte	0x2d
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF216
	.long	.LASF216
	.byte	0xa
	.byte	0x25
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF217
	.long	.LASF217
	.byte	0xc
	.byte	0x7e
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF218
	.long	.LASF218
	.byte	0xa
	.byte	0x20
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF219
	.long	.LASF219
	.byte	0xa
	.byte	0x28
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF220
	.long	.LASF220
	.byte	0xa
	.byte	0x21
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF221
	.long	.LASF221
	.byte	0xa
	.byte	0x1f
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF222
	.long	.LASF222
	.byte	0x5
	.byte	0x46
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF223
	.long	.LASF223
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
	.long	.LVL84
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL84
	.long	.LVL85
	.word	0x1
	.byte	0x68
	.long	.LVL85
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
	.long	.LVL77
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST26:
	.long	.LVL76
	.long	.LVL80
	.word	0x1
	.byte	0x62
	.long	.LVL83
	.long	.LVL84
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST27:
	.long	.LVL78
	.long	.LVL81
	.word	0x1
	.byte	0x69
	.long	.LVL83
	.long	.LVL84
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST28:
	.long	.LVL79
	.long	.LVL82
	.word	0x1
	.byte	0x66
	.long	.LVL83
	.long	.LVL84
	.word	0x1
	.byte	0x66
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
	.long	.LVL86
	.long	.LVL88
	.word	0x1
	.byte	0x68
	.long	.LVL88
	.long	.LVL94
	.word	0x1
	.byte	0x61
	.long	.LVL94
	.long	.LFE37
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL87
	.long	.LVL88
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL88
	.long	.LVL92
	.word	0x1
	.byte	0x6d
	.long	.LVL92
	.long	.LFE37
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST32:
	.long	.LVL87
	.long	.LVL88
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL88
	.long	.LVL93
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
	.long	.LVL95
	.long	.LVL97
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL97
	.long	.LVL103
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL103
	.long	.LVL104
	.word	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.long	.LVL104
	.long	.LVL105
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL105
	.long	.LVL110
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
	.long	.LVL96
	.long	.LVL97
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL97
	.long	.LVL109
	.word	0x1
	.byte	0x60
	.long	.LVL109
	.long	.LFE38
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST36:
	.long	.LVL96
	.long	.LVL97
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL97
	.long	.LVL107
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST37:
	.long	.LVL96
	.long	.LVL97
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL97
	.long	.LVL108
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
	.long	.LVL111
	.long	.LVL112-1
	.word	0x1
	.byte	0x68
	.long	.LVL112-1
	.long	.LFE39
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LVL111
	.long	.LVL112-1
	.word	0x1
	.byte	0x66
	.long	.LVL112-1
	.long	.LVL119
	.word	0x1
	.byte	0x6c
	.long	.LVL119
	.long	.LFE39
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL113
	.long	.LVL115
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST42:
	.long	.LVL114
	.long	.LVL117-1
	.word	0x1
	.byte	0x68
	.long	.LVL118
	.long	.LVL119-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST43:
	.long	.LVL116
	.long	.LVL117-1
	.word	0x1
	.byte	0x69
	.long	.LVL118
	.long	.LVL119-1
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
	.long	.LVL121
	.long	.LVL123
	.word	0x1
	.byte	0x68
	.long	.LVL123
	.long	.LVL124
	.word	0x1
	.byte	0x62
	.long	.LVL124
	.long	.LVL129
	.word	0x1
	.byte	0x6c
	.long	.LVL129
	.long	.LVL130
	.word	0x1
	.byte	0x68
	.long	.LVL130
	.long	.LVL132
	.word	0x1
	.byte	0x6c
	.long	.LVL132
	.long	.LFE43
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL121
	.long	.LVL127-1
	.word	0x1
	.byte	0x66
	.long	.LVL127-1
	.long	.LVL135
	.word	0x1
	.byte	0x60
	.long	.LVL135
	.long	.LFE43
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
	.long	.LVL122
	.long	.LVL128
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL128
	.long	.LVL129
	.word	0x1
	.byte	0x61
	.long	.LVL129
	.long	.LVL130
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL130
	.long	.LVL134
	.word	0x1
	.byte	0x61
	.long	.LVL134
	.long	.LFE43
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST48:
	.long	.LVL125
	.long	.LVL126
	.word	0x9
	.byte	0x88
	.sleb128 0
	.byte	0x3
	.long	programMap
	.byte	0x22
	.byte	0x9f
	.long	.LVL126
	.long	.LVL127-1
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
	.long	.LVL136
	.long	.LVL138
	.word	0x1
	.byte	0x68
	.long	.LVL138
	.long	.LFE44
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LVL137
	.long	.LVL140
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL140
	.long	.LVL155
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST52:
	.long	.LVL139
	.long	.LVL141
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL141
	.long	.LVL143
	.word	0x3
	.byte	0x80
	.sleb128 1
	.byte	0x9f
	.long	.LVL143
	.long	.LVL154
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
	.long	.LVL139
	.long	.LVL140
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL140
	.long	.LVL152
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST54:
	.long	.LVL144
	.long	.LVL147
	.word	0x1
	.byte	0x68
	.long	.LVL148
	.long	.LVL149
	.word	0x1
	.byte	0x68
	.long	.LVL150
	.long	.LVL151
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST55:
	.long	.LVL139
	.long	.LVL140
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL140
	.long	.LVL153
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST56:
	.long	.LVL156
	.long	.LVL157
	.word	0x1
	.byte	0x68
	.long	.LVL157
	.long	.LFE45
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST57:
	.long	.LVL156
	.long	.LVL159
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL159
	.long	.LFE45
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST58:
	.long	.LVL158
	.long	.LVL160
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL160
	.long	.LVL162
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL162
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
	.long	.LVL158
	.long	.LVL159
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL159
	.long	.LFE45
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST60:
	.long	.LVL158
	.long	.LVL159
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL159
	.long	.LFE45
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST61:
	.long	.LVL166
	.long	.LVL167
	.word	0x1
	.byte	0x68
	.long	.LVL167
	.long	.LVL168
	.word	0x5
	.byte	0x3
	.long	prog_Display
	.long	.LVL168
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
	.long	.LVL169
	.long	.LVL171-1
	.word	0x1
	.byte	0x68
	.long	.LVL171-1
	.long	.LVL185
	.word	0x1
	.byte	0x5e
	.long	.LVL185
	.long	.LVL187
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL187
	.long	.LVL188
	.word	0x1
	.byte	0x68
	.long	.LVL188
	.long	.LFE40
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST64:
	.long	.LVL170
	.long	.LVL173
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL173
	.long	.LVL187
	.word	0x1
	.byte	0x60
	.long	.LVL187
	.long	.LVL188
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL188
	.long	.LVL189
	.word	0x1
	.byte	0x60
	.long	.LVL189
	.long	.LFE40
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST65:
	.long	.LVL175
	.long	.LVL183
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST66:
	.long	.LVL171
	.long	.LVL173
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL173
	.long	.LVL187
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST67:
	.long	.LVL172
	.long	.LVL174
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL174
	.long	.LVL183
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL183
	.long	.LVL184
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
	.long	.LVL172
	.long	.LVL173
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL173
	.long	.LVL187
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST69:
	.long	.LVL175
	.long	.LVL176
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL176
	.long	.LVL183
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
	.long	.LFE41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST71:
	.long	.LVL190
	.long	.LVL195
	.word	0x1
	.byte	0x68
	.long	.LVL195
	.long	.LVL196
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL196
	.long	.LVL197
	.word	0x1
	.byte	0x68
	.long	.LVL197
	.long	.LFE41
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST72:
	.long	.LVL190
	.long	.LVL199-1
	.word	0x1
	.byte	0x66
	.long	.LVL199-1
	.long	.LVL203
	.word	0x1
	.byte	0x6c
	.long	.LVL203
	.long	.LFE41
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST73:
	.long	.LVL197
	.long	.LVL198
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST74:
	.long	.LVL191
	.long	.LVL193
	.word	0x1
	.byte	0x69
	.long	.LVL194
	.long	.LVL199-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST75:
	.long	.LFB42
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI30
	.long	.LFE42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST76:
	.long	.LVL204
	.long	.LVL205
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL205
	.long	.LVL209
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST77:
	.long	.LFB49
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
	.long	.LFE49
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST78:
	.long	.LVL217
	.long	.LVL218
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL218
	.long	.LVL236
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST79:
	.long	.LVL220
	.long	.LVL221-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST80:
	.long	.LVL223
	.long	.LVL226
	.word	0x1
	.byte	0x6c
	.long	.LVL226
	.long	.LVL233
	.word	0x1
	.byte	0x6d
	.long	.LVL233
	.long	.LVL235
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST81:
	.long	.LVL228
	.long	.LVL230
	.word	0x1
	.byte	0x6c
	.long	.LVL230
	.long	.LVL231
	.word	0x1
	.byte	0x68
	.long	.LVL231
	.long	.LVL232-1
	.word	0x3
	.byte	0x88
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST82:
	.long	.LFB50
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
	.long	.LFE50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST83:
	.long	.LVL237
	.long	.LVL238
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL238
	.long	.LVL249
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST84:
	.long	.LVL240
	.long	.LVL244
	.word	0x1
	.byte	0x62
	.long	.LVL244
	.long	.LVL247-1
	.word	0x2
	.byte	0x8c
	.sleb128 1
	.long	0
	.long	0
.LLST85:
	.long	.LVL241
	.long	.LVL242
	.word	0x1
	.byte	0x68
	.long	.LVL242
	.long	.LVL243
	.word	0xc
	.byte	0x8c
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x8c
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL243
	.long	.LVL245
	.word	0x1
	.byte	0x68
	.long	.LVL245
	.long	.LVL246
	.word	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST86:
	.long	.LVL251
	.long	.LVL254-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST87:
	.long	.LVL250
	.long	.LVL251
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	.LVL251
	.long	.LVL254-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST88:
	.long	.LVL258
	.long	.LVL259
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL259
	.long	.LVL261-1
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST89:
	.long	.LVL263
	.long	.LVL264
	.word	0x1
	.byte	0x68
	.long	.LVL264
	.long	.LVL265
	.word	0x1
	.byte	0x6e
	.long	.LVL265
	.long	.LFE54
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST90:
	.long	.LVL266
	.long	.LVL267
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL267
	.long	.LFE55
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST91:
	.long	.LVL267
	.long	.LVL273
	.word	0x1
	.byte	0x65
	.long	.LVL274
	.long	.LVL275
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST92:
	.long	.LVL267
	.long	.LVL273
	.word	0x1
	.byte	0x66
	.long	.LVL274
	.long	.LVL275
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST93:
	.long	.LVL267
	.long	.LVL268
	.word	0x1
	.byte	0x64
	.long	.LVL268
	.long	.LVL269
	.word	0x1
	.byte	0x62
	.long	.LVL269
	.long	.LVL273
	.word	0x1
	.byte	0x64
	.long	.LVL274
	.long	.LVL275
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST94:
	.long	.LVL276
	.long	.LVL277
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL277
	.long	.LVL282-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST95:
	.long	.LVL277
	.long	.LVL279
	.word	0x1
	.byte	0x62
	.long	.LVL280
	.long	.LVL281
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST96:
	.long	.LVL285
	.long	.LVL287
	.word	0x1
	.byte	0x68
	.long	.LVL287
	.long	.LFE57
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST97:
	.long	.LVL285
	.long	.LVL288
	.word	0x1
	.byte	0x66
	.long	.LVL288
	.long	.LVL290
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL290
	.long	.LFE57
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST98:
	.long	.LVL286
	.long	.LVL293
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST99:
	.long	.LVL286
	.long	.LVL287
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL287
	.long	.LVL289
	.word	0x1
	.byte	0x68
	.long	.LVL290
	.long	.LVL293
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST100:
	.long	.LVL294
	.long	.LVL297
	.word	0x1
	.byte	0x68
	.long	.LVL297
	.long	.LVL298
	.word	0x1
	.byte	0x66
	.long	.LVL298
	.long	.LVL302
	.word	0x1
	.byte	0x68
	.long	.LVL302
	.long	.LFE58
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST101:
	.long	.LVL295
	.long	.LFE58
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST102:
	.long	.LVL294
	.long	.LVL295
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL295
	.long	.LFE58
	.word	0x1
	.byte	0x6b
	.long	0
	.long	0
.LLST103:
	.long	.LVL295
	.long	.LVL296
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL296
	.long	.LFE58
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST104:
	.long	.LFB59
	.long	.LCFI39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI39
	.long	.LCFI40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI40
	.long	.LCFI41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI41
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI42
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI43
	.long	.LCFI44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI44
	.long	.LFE59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST105:
	.long	.LVL303
	.long	.LVL304-1
	.word	0x1
	.byte	0x68
	.long	.LVL304-1
	.long	.LVL316
	.word	0x1
	.byte	0x6c
	.long	.LVL316
	.long	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST106:
	.long	.LVL303
	.long	.LVL304-1
	.word	0x1
	.byte	0x66
	.long	.LVL304-1
	.long	.LVL318
	.word	0x1
	.byte	0x60
	.long	.LVL318
	.long	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST107:
	.long	.LVL303
	.long	.LVL304-1
	.word	0x1
	.byte	0x64
	.long	.LVL304-1
	.long	.LVL315
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST108:
	.long	.LVL305
	.long	.LVL319
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST109:
	.long	.LVL306
	.long	.LVL317
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST110:
	.long	.LFB23
	.long	.LCFI45
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI45
	.long	.LCFI46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI46
	.long	.LCFI47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI47
	.long	.LCFI48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI48
	.long	.LCFI49
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI49
	.long	.LCFI50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI50
	.long	.LCFI51
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI51
	.long	.LCFI52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI52
	.long	.LCFI53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI53
	.long	.LFE23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST111:
	.long	.LVL320
	.long	.LVL322
	.word	0x1
	.byte	0x68
	.long	.LVL322
	.long	.LVL337
	.word	0x1
	.byte	0x5c
	.long	.LVL337
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST112:
	.long	.LVL321
	.long	.LVL322
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL322
	.long	.LVL336
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST113:
	.long	.LVL323
	.long	.LVL335
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST114:
	.long	.LVL324
	.long	.LVL326
	.word	0x1
	.byte	0x66
	.long	.LVL326
	.long	.LVL329
	.word	0x1
	.byte	0x5e
	.long	.LVL329
	.long	.LVL332-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST115:
	.long	.LVL330
	.long	.LVL331
	.word	0x1
	.byte	0x68
	.long	.LVL331
	.long	.LVL332-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST116:
	.long	.LVL325
	.long	.LVL334
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST117:
	.long	.LFB24
	.long	.LCFI54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI54
	.long	.LCFI55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI55
	.long	.LCFI56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI56
	.long	.LCFI57
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI57
	.long	.LFE24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST118:
	.long	.LVL338
	.long	.LVL339
	.word	0x1
	.byte	0x68
	.long	.LVL339
	.long	.LVL343
	.word	0x1
	.byte	0x60
	.long	.LVL343
	.long	.LVL349
	.word	0x1
	.byte	0x6c
	.long	.LVL349
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST119:
	.long	.LVL344
	.long	.LVL345
	.word	0x1
	.byte	0x68
	.long	.LVL345
	.long	.LVL346-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST120:
	.long	.LVL340
	.long	.LVL343
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST121:
	.long	.LFB25
	.long	.LCFI58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI58
	.long	.LFE25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST122:
	.long	.LVL350
	.long	.LVL351
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL351
	.long	.LVL354
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST123:
	.long	.LFB53
	.long	.LCFI59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI59
	.long	.LCFI60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI60
	.long	.LCFI61
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI61
	.long	.LCFI62
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI62
	.long	.LFE53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST124:
	.long	.LVL356
	.long	.LVL357
	.word	0x1
	.byte	0x68
	.long	.LVL357
	.long	.LVL359
	.word	0x1
	.byte	0x6d
	.long	.LVL359
	.long	.LVL364
	.word	0x1
	.byte	0x64
	.long	.LVL364
	.long	.LVL374
	.word	0x1
	.byte	0x6d
	.long	.LVL374
	.long	.LFE53
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST125:
	.long	.LVL356
	.long	.LVL358
	.word	0x1
	.byte	0x66
	.long	.LVL358
	.long	.LVL377
	.word	0x1
	.byte	0x60
	.long	.LVL377
	.long	.LFE53
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST126:
	.long	.LVL356
	.long	.LVL358
	.word	0x1
	.byte	0x64
	.long	.LVL358
	.long	.LVL376
	.word	0x1
	.byte	0x61
	.long	.LVL376
	.long	.LFE53
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST127:
	.long	.LVL357
	.long	.LVL358
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL358
	.long	.LVL362
	.word	0x1
	.byte	0x69
	.long	.LVL365
	.long	.LVL366
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL366
	.long	.LVL368
	.word	0x1
	.byte	0x69
	.long	.LVL369
	.long	.LVL370
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST128:
	.long	.LVL357
	.long	.LVL358
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL358
	.long	.LVL359
	.word	0x1
	.byte	0x6c
	.long	.LVL359
	.long	.LVL365-1
	.word	0x1
	.byte	0x62
	.long	.LVL365-1
	.long	.LVL375
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST129:
	.long	.LVL360
	.long	.LVL363
	.word	0x1
	.byte	0x66
	.long	.LVL363
	.long	.LVL365-1
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST130:
	.long	.LVL361
	.long	.LVL365-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST131:
	.long	.LVL363
	.long	.LVL365-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST132:
	.long	.LVL378
	.long	.LVL379
	.word	0x1
	.byte	0x68
	.long	.LVL379
	.long	.LVL387
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL387
	.long	.LVL388-1
	.word	0x1
	.byte	0x68
	.long	.LVL388-1
	.long	.LVL389
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL389
	.long	.LVL390
	.word	0x1
	.byte	0x68
	.long	.LVL390
	.long	.LVL391
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL391
	.long	.LVL392
	.word	0x1
	.byte	0x68
	.long	.LVL392
	.long	.LVL393
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL393
	.long	.LVL394
	.word	0x1
	.byte	0x68
	.long	.LVL394
	.long	.LVL395
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL395
	.long	.LVL396
	.word	0x1
	.byte	0x68
	.long	.LVL396
	.long	.LVL397
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL397
	.long	.LVL398
	.word	0x1
	.byte	0x68
	.long	.LVL398
	.long	.LVL399
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL399
	.long	.LVL400
	.word	0x1
	.byte	0x68
	.long	.LVL400
	.long	.LVL401
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL401
	.long	.LVL402
	.word	0x1
	.byte	0x68
	.long	.LVL402
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST133:
	.long	.LVL380
	.long	.LVL386
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST134:
	.long	.LVL381
	.long	.LVL382
	.word	0x1
	.byte	0x68
	.long	.LVL383
	.long	.LVL384
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL384
	.long	.LVL387
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST135:
	.long	.LVL385
	.long	.LVL386
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+6140
	.sleb128 0
	.long	0
	.long	0
.LLST136:
	.long	.LVL403
	.long	.LVL405-1
	.word	0x1
	.byte	0x68
	.long	.LVL406
	.long	.LVL408-1
	.word	0x1
	.byte	0x68
	.long	.LVL409
	.long	.LVL410-1
	.word	0x1
	.byte	0x68
	.long	.LVL411
	.long	.LVL412-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST137:
	.long	.LVL404
	.long	.LVL406
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL407
	.long	.LVL408-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST138:
	.long	.LVL413
	.long	.LVL414
	.word	0x1
	.byte	0x68
	.long	.LVL414
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST139:
	.long	.LVL415
	.long	.LVL417-1
	.word	0x1
	.byte	0x68
	.long	.LVL418
	.long	.LVL420-1
	.word	0x1
	.byte	0x68
	.long	.LVL421
	.long	.LVL422-1
	.word	0x1
	.byte	0x68
	.long	.LVL423
	.long	.LVL424
	.word	0x1
	.byte	0x68
	.long	.LVL425
	.long	.LVL426-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST140:
	.long	.LVL416
	.long	.LVL418
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL419
	.long	.LVL420-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST141:
	.long	.LFB60
	.long	.LCFI63
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI63
	.long	.LCFI64
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI64
	.long	.LCFI65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI65
	.long	.LCFI66
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI66
	.long	.LCFI67
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI67
	.long	.LCFI68
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI68
	.long	.LCFI69
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI69
	.long	.LCFI70
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI70
	.long	.LCFI71
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI71
	.long	.LFE60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST142:
	.long	.LVL427
	.long	.LVL428-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
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
	.long	.LVL457
	.long	.LVL458
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL459
	.long	.LVL460
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL461
	.long	.LVL462
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST143:
	.long	.LVL429
	.long	.LVL463
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST144:
	.long	.LVL430
	.long	.LVL465
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST145:
	.long	.LVL430
	.long	.LVL461
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST146:
	.long	.LVL431
	.long	.LVL433
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	.LVL439
	.long	.LVL457
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	.LVL460
	.long	.LVL464
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST147:
	.long	.LVL440
	.long	.LVL441
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST148:
	.long	.LVL431
	.long	.LVL457
	.word	0x1
	.byte	0x6c
	.long	.LVL460
	.long	.LVL461
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST149:
	.long	.LVL441
	.long	.LVL453
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST150:
	.long	.LVL470
	.long	.LVL476
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST151:
	.long	.LVL471
	.long	.LVL472
	.word	0x1
	.byte	0x68
	.long	.LVL473
	.long	.LVL474
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL474
	.long	.LVL477
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST152:
	.long	.LVL475
	.long	.LVL476
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+7224
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x184
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
	.long	.LFB50
	.long	.LFE50-.LFB50
	.long	.LFB51
	.long	.LFE51-.LFB51
	.long	.LFB52
	.long	.LFE52-.LFB52
	.long	.LFB54
	.long	.LFE54-.LFB54
	.long	.LFB55
	.long	.LFE55-.LFB55
	.long	.LFB56
	.long	.LFE56-.LFB56
	.long	.LFB57
	.long	.LFE57-.LFB57
	.long	.LFB58
	.long	.LFE58-.LFB58
	.long	.LFB59
	.long	.LFE59-.LFB59
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB53
	.long	.LFE53-.LFB53
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB60
	.long	.LFE60-.LFB60
	.long	.LFB61
	.long	.LFE61-.LFB61
	.long	.LFB62
	.long	.LFE62-.LFB62
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
	.long	.LBB56
	.long	.LBE56
	.long	.LBB58
	.long	.LBE58
	.long	0
	.long	0
	.long	.LBB61
	.long	.LBE61
	.long	.LBB62
	.long	.LBE62
	.long	0
	.long	0
	.long	.LBB65
	.long	.LBE65
	.long	.LBB68
	.long	.LBE68
	.long	0
	.long	0
	.long	.LBB70
	.long	.LBE70
	.long	.LBB71
	.long	.LBE71
	.long	0
	.long	0
	.long	.LBB80
	.long	.LBE80
	.long	.LBB83
	.long	.LBE83
	.long	0
	.long	0
	.long	.LBB90
	.long	.LBE90
	.long	.LBB92
	.long	.LBE92
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
	.long	.LFB50
	.long	.LFE50
	.long	.LFB51
	.long	.LFE51
	.long	.LFB52
	.long	.LFE52
	.long	.LFB54
	.long	.LFE54
	.long	.LFB55
	.long	.LFE55
	.long	.LFB56
	.long	.LFE56
	.long	.LFB57
	.long	.LFE57
	.long	.LFB58
	.long	.LFE58
	.long	.LFB59
	.long	.LFE59
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB53
	.long	.LFE53
	.long	.LFB29
	.long	.LFE29
	.long	.LFB30
	.long	.LFE30
	.long	.LFB60
	.long	.LFE60
	.long	.LFB61
	.long	.LFE61
	.long	.LFB62
	.long	.LFE62
	.long	.LFB27
	.long	.LFE27
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF95:
	.string	"bitNr"
.LASF79:
	.string	"count"
.LASF104:
	.string	"midiInSysEx"
.LASF134:
	.string	"Manual_to_MidiNote"
.LASF172:
	.string	"swTimer"
.LASF42:
	.string	"bitStart"
.LASF116:
	.string	"program_toRegister"
.LASF88:
	.string	"modulebit"
.LASF34:
	.string	"ChannelNote_t"
.LASF114:
	.string	"prog_set"
.LASF227:
	.string	"__iCliRetVal"
.LASF206:
	.string	"init_Pipe"
.LASF168:
	.string	"chanNote"
.LASF86:
	.string	"pRange"
.LASF155:
	.string	"manNote"
.LASF136:
	.string	"rangeEnd"
.LASF82:
	.string	"progNr"
.LASF112:
	.string	"actualReg"
.LASF132:
	.string	"pMidiInMap"
.LASF44:
	.string	"ManualNoteRange_t"
.LASF166:
	.string	"shiftBit"
.LASF109:
	.string	"midi_RegisterMatchProgram"
.LASF156:
	.string	"midiIn_Process"
.LASF211:
	.string	"pipe_off"
.LASF9:
	.string	"long long unsigned int"
.LASF171:
	.string	"midi_CheckTxActiveSense"
.LASF186:
	.string	"midi_RegisterChanged"
.LASF50:
	.string	"OutChannel"
.LASF185:
	.string	"programMap"
.LASF130:
	.string	"spaceCount"
.LASF15:
	.string	"message8"
.LASF205:
	.string	"midiDataByteExpected"
.LASF182:
	.string	"midiOutMap"
.LASF126:
	.string	"reg_toLCD"
.LASF70:
	.string	"pCoupler"
.LASF142:
	.string	"manual_NoteOnOff"
.LASF129:
	.string	"reg_ClearOnLCD"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF193:
	.string	"midiLastOutManual"
.LASF83:
	.string	"regNr"
.LASF52:
	.string	"sw_channel"
.LASF106:
	.string	"program"
.LASF36:
	.string	"ManualNote_t"
.LASF150:
	.string	"midi_AllManualsOff"
.LASF119:
	.string	"midi_ProgramChange"
.LASF224:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF164:
	.string	"pipeMessage"
.LASF133:
	.string	"init_Manual2Midi"
.LASF202:
	.string	"midiLastCommand"
.LASF46:
	.string	"noteRange"
.LASF204:
	.string	"midiDataByteCount"
.LASF6:
	.string	"long int"
.LASF149:
	.string	"midi_ManualOff"
.LASF176:
	.string	"serESPMidiTmp"
.LASF131:
	.string	"init_Midi2Manual"
.LASF190:
	.string	"midiRxActivceSensing"
.LASF160:
	.string	"noteOnOff"
.LASF63:
	.string	"regEnd"
.LASF141:
	.string	"moduleBit_to_manualNote"
.LASF187:
	.string	"reg_Out"
.LASF124:
	.string	"prog_toLcd"
.LASF77:
	.string	"midiAllReset"
.LASF180:
	.string	"midiInMap"
.LASF4:
	.string	"uint16_t"
.LASF137:
	.string	"rangeStart"
.LASF200:
	.string	"lcdData"
.LASF45:
	.string	"midiNote"
.LASF41:
	.string	"endNote"
.LASF49:
	.string	"InChannel"
.LASF125:
	.string	"init_RegOut"
.LASF53:
	.string	"MidiOutMap_t"
.LASF210:
	.string	"pipe_on"
.LASF97:
	.string	"mask"
.LASF151:
	.string	"midi_CheckRxActiveSense"
.LASF191:
	.string	"midi_Setting"
.LASF85:
	.string	"regNr_to_moduleBit"
.LASF25:
	.string	"pipeInM4"
.LASF74:
	.string	"cplNr"
.LASF100:
	.string	"read_allRegister"
.LASF24:
	.string	"pipeInM8"
.LASF138:
	.string	"range"
.LASF146:
	.string	"midiAllNotesOff"
.LASF144:
	.string	"modulNrMask"
.LASF43:
	.string	"ManualMap_t"
.LASF72:
	.string	"init_Midi"
.LASF5:
	.string	"unsigned int"
.LASF107:
	.string	"SaveEEProm"
.LASF212:
	.string	"eeprom_UpdateProg"
.LASF67:
	.string	"AcceptProgChange"
.LASF35:
	.string	"manual"
.LASF165:
	.string	"command"
.LASF115:
	.string	"prog"
.LASF214:
	.string	"lcd_putc"
.LASF7:
	.string	"long unsigned int"
.LASF220:
	.string	"eeprom_ReadMidiOutMap"
.LASF145:
	.string	"myMessage"
.LASF179:
	.string	"ManualNoteRange"
.LASF203:
	.string	"midiDataByte"
.LASF57:
	.string	"registers"
.LASF169:
	.string	"midiSendAllNotesOff"
.LASF158:
	.string	"sreg_save"
.LASF157:
	.string	"midiByte"
.LASF98:
	.string	"get_RegisterStatus"
.LASF152:
	.string	"midiNote_to_Manual"
.LASF90:
	.string	"section"
.LASF61:
	.string	"manualChar"
.LASF32:
	.string	"hw_channel"
.LASF199:
	.string	"cplInfo"
.LASF75:
	.string	"getAllCouplers"
.LASF31:
	.string	"Pipe_Module_t"
.LASF40:
	.string	"startNote"
.LASF103:
	.string	"onOff"
.LASF177:
	.string	"midiTxLastCmd"
.LASF16:
	.string	"PipeMessage_t"
.LASF121:
	.string	"channelValid"
.LASF48:
	.string	"MidiInMap_t"
.LASF59:
	.string	"ProgramInfo_t"
.LASF123:
	.string	"midi_resetRegisters"
.LASF38:
	.string	"moduleBit"
.LASF215:
	.string	"lcd_blank"
.LASF19:
	.string	"Timer"
.LASF80:
	.string	"regSec"
.LASF10:
	.string	"sizetype"
.LASF122:
	.string	"splitCount"
.LASF139:
	.string	"init_Manual2Module"
.LASF159:
	.string	"__ToDo"
.LASF127:
	.string	"myChar"
.LASF108:
	.string	"regBytePtr"
.LASF201:
	.string	"midiEEPromLoadError"
.LASF94:
	.string	"modBit"
.LASF28:
	.string	"Pipe_t"
.LASF47:
	.string	"manualNote"
.LASF135:
	.string	"Midi_updateManualRange"
.LASF26:
	.string	"pipeIn"
.LASF184:
	.string	"registerCount"
.LASF219:
	.string	"eeprom_ReadMidiThrough"
.LASF84:
	.string	"set_Coupler"
.LASF60:
	.string	"cursor"
.LASF20:
	.string	"pipeOutM4"
.LASF218:
	.string	"eeprom_ReadMidiInMap"
.LASF117:
	.string	"regBits"
.LASF216:
	.string	"eeprom_ReadRegOut"
.LASF68:
	.string	"MidiSetting_t"
.LASF11:
	.string	"wordval"
.LASF76:
	.string	"setAllCouplers"
.LASF27:
	.string	"pipeInStat"
.LASF18:
	.string	"prescaler"
.LASF37:
	.string	"error"
.LASF162:
	.string	"midiBytesTransferred"
.LASF58:
	.string	"couplers"
.LASF170:
	.string	"midi_SendActiveSense"
.LASF226:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF89:
	.string	"pSection"
.LASF167:
	.string	"moduleBits"
.LASF209:
	.string	"eeprom_ReadProg"
.LASF223:
	.string	"serial0USB_logPipeIn"
.LASF3:
	.string	"unsigned char"
.LASF71:
	.string	"midi_CouplerReset"
.LASF181:
	.string	"midiThrough"
.LASF78:
	.string	"registers_CalcCount"
.LASF208:
	.string	"log_putError"
.LASF17:
	.string	"counter"
.LASF222:
	.string	"pipeMsgPush"
.LASF113:
	.string	"midi_CountRegisterInProgram"
.LASF221:
	.string	"eeprom_ReadManualMap"
.LASF56:
	.string	"RegisterMap_t"
.LASF196:
	.string	"midiLastInManual"
.LASF51:
	.string	"MidiThrough_t"
.LASF120:
	.string	"channel"
.LASF161:
	.string	"proc_ESPmidi"
.LASF192:
	.string	"midiLastOutNote"
.LASF207:
	.string	"eeprom_ReadReg"
.LASF198:
	.string	"midi_Couplers"
.LASF13:
	.string	"Word_t"
.LASF174:
	.string	"pipeProcessing"
.LASF195:
	.string	"midiLastInChannel"
.LASF12:
	.string	"byteval"
.LASF69:
	.string	"char"
.LASF33:
	.string	"note"
.LASF92:
	.string	"mode"
.LASF183:
	.string	"registerMap"
.LASF118:
	.string	"byteNr"
.LASF128:
	.string	"addChar"
.LASF173:
	.string	"pipe"
.LASF54:
	.string	"startReg"
.LASF213:
	.string	"serial1MIDISend"
.LASF147:
	.string	"splitRange"
.LASF110:
	.string	"progPtr"
.LASF217:
	.string	"lcd_goto"
.LASF99:
	.string	"count_Registers"
.LASF66:
	.string	"VelZero4Off"
.LASF62:
	.string	"regStart"
.LASF228:
	.string	"__iRestore"
.LASF189:
	.string	"prog_UpdDisplay"
.LASF0:
	.string	"int8_t"
.LASF64:
	.string	"RegOut_t"
.LASF29:
	.string	"AssnRead"
.LASF91:
	.string	"read_Register"
.LASF39:
	.string	"ModulBitError_t"
.LASF153:
	.string	"found"
.LASF102:
	.string	"register_onOff"
.LASF154:
	.string	"noteBase0"
.LASF140:
	.string	"manualNote_to_moduleBit"
.LASF111:
	.string	"tempReg"
.LASF55:
	.string	"endReg"
.LASF101:
	.string	"resultPtr"
.LASF175:
	.string	"pipe_Module"
.LASF14:
	.string	"Message16"
.LASF1:
	.string	"uint8_t"
.LASF163:
	.string	"midiKeyPress_Process"
.LASF148:
	.string	"midiChanel"
.LASF93:
	.string	"modBitComplette"
.LASF23:
	.string	"pipeInM12"
.LASF22:
	.string	"pipeInM16"
.LASF178:
	.string	"manualMap"
.LASF143:
	.string	"moduleInfo"
.LASF81:
	.string	"init_Registers"
.LASF30:
	.string	"AssnWrite"
.LASF188:
	.string	"prog_Display"
.LASF65:
	.string	"TxActivceSense"
.LASF194:
	.string	"midiLastInNote"
.LASF21:
	.string	"pipeOut"
.LASF87:
	.string	"moduleBit_to_registerNr"
.LASF73:
	.string	"result"
.LASF225:
	.string	".././Midi.c"
.LASF105:
	.string	"register_toProgram"
.LASF197:
	.string	"midiLastProgram"
.LASF96:
	.string	"modulNr"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
