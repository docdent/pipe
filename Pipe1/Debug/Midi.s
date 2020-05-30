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
	.section	.text.midi_RegisterMatchProgram,"ax",@progbits
.global	midi_RegisterMatchProgram
	.type	midi_RegisterMatchProgram, @function
midi_RegisterMatchProgram:
.LFB44:
	.loc 1 658 0
	.cfi_startproc
.LVL121:
	push r15
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI12:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI13:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI14:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI15:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
.LVL122:
	.loc 1 662 0
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
.LVL123:
	add r16,r24
	adc r17,r25
	subi r16,lo8(-(programMap))
	sbci r17,hi8(-(programMap))
.LVL124:
.LBB38:
	.loc 1 665 0
	ldi r28,0
.LBE38:
	.loc 1 663 0
	ldi r29,0
	.loc 1 661 0
	mov r15,__zero_reg__
.LBB39:
	.loc 1 665 0
	rjmp .L80
.LVL125:
.L85:
	.loc 1 666 0
	mov r25,r28
	andi r25,lo8(7)
	brne .L81
.LVL126:
	.loc 1 668 0
	movw r30,r16
	ld r29,Z
.LVL127:
	subi r16,-1
	sbci r17,-1
.LVL128:
.L81:
	.loc 1 670 0
	mov r24,r28
	call get_RegisterStatus
.LVL129:
	.loc 1 671 0
	sbrs r29,0
	rjmp .L82
	.loc 1 673 0
	cpi r24,lo8(2)
	breq .L84
	rjmp .L86
.L82:
	.loc 1 680 0
	cpi r24,lo8(2)
	breq .L87
	.loc 1 683 0
	cpi r24,lo8(1)
	brne .L84
	.loc 1 685 0
	inc r15
.LVL130:
.L84:
	.loc 1 688 0 discriminator 2
	lsr r29
.LVL131:
	.loc 1 665 0 discriminator 2
	subi r28,lo8(-(1))
.LVL132:
.L80:
	.loc 1 665 0 is_stmt 0 discriminator 1
	lds r25,registerCount
	cp r28,r25
	brlo .L85
.LBE39:
	.loc 1 690 0 is_stmt 1
	mov r24,r15
.LBB40:
	rjmp .L83
.LVL133:
.L86:
	.loc 1 675 0
	ldi r24,lo8(-1)
.LVL134:
	rjmp .L83
.LVL135:
.L87:
	.loc 1 682 0
	ldi r24,lo8(-1)
.LVL136:
.L83:
/* epilogue start */
.LBE40:
	.loc 1 691 0
	pop r29
.LVL137:
	pop r28
.LVL138:
	pop r17
	pop r16
.LVL139:
	pop r15
.LVL140:
	ret
	.cfi_endproc
.LFE44:
	.size	midi_RegisterMatchProgram, .-midi_RegisterMatchProgram
	.section	.text.midi_CountRegisterInProgram,"ax",@progbits
.global	midi_CountRegisterInProgram
	.type	midi_CountRegisterInProgram, @function
midi_CountRegisterInProgram:
.LFB45:
	.loc 1 693 0
	.cfi_startproc
.LVL141:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 696 0
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
.LVL142:
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
.LVL143:
.LBB41:
	.loc 1 698 0
	ldi r25,0
.LBE41:
	.loc 1 697 0
	ldi r18,0
	.loc 1 695 0
	ldi r24,0
.LBB42:
	.loc 1 698 0
	rjmp .L89
.LVL144:
.L92:
	.loc 1 699 0
	mov r19,r25
	andi r19,lo8(7)
	brne .L90
.LVL145:
	.loc 1 701 0
	ld r18,Z
.LVL146:
	adiw r30,1
.LVL147:
.L90:
	.loc 1 703 0
	sbrc r18,0
	.loc 1 704 0
	subi r24,lo8(-(1))
.LVL148:
.L91:
	.loc 1 706 0 discriminator 2
	lsr r18
.LVL149:
	.loc 1 698 0 discriminator 2
	subi r25,lo8(-(1))
.LVL150:
.L89:
	.loc 1 698 0 is_stmt 0 discriminator 1
	lds r19,registerCount
	cp r25,r19
	brlo .L92
/* epilogue start */
.LBE42:
	.loc 1 710 0 is_stmt 1
	ret
	.cfi_endproc
.LFE45:
	.size	midi_CountRegisterInProgram, .-midi_CountRegisterInProgram
	.section	.text.prog_set,"ax",@progbits
.global	prog_set
	.type	prog_set, @function
prog_set:
.LFB46:
	.loc 1 716 0
	.cfi_startproc
.LVL151:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 717 0
	lds r25,prog_Display
	cp r25,r24
	breq .L93
	.loc 1 718 0
	sts prog_Display,r24
	.loc 1 719 0
	ldi r24,lo8(-1)
.LVL152:
	sts prog_UpdDisplay,r24
.LVL153:
.L93:
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
.LVL154:
	push r11
.LCFI16:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI17:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI18:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI19:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI20:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI21:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI22:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI23:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI24:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
.LVL155:
	.loc 1 575 0
	cpi r24,lo8(64)
	brlo .+2
	rjmp .L103
	mov r14,r24
.LBB43:
	.loc 1 576 0
	call prog_set
.LVL156:
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
.LVL157:
.LBB44:
	.loc 1 580 0
	mov r11,__zero_reg__
.LBE44:
	.loc 1 578 0
	ldi r17,0
.LBE43:
	.loc 1 574 0
	ldi r16,0
.LBB47:
.LBB46:
	.loc 1 580 0
	rjmp .L97
.LVL158:
.L102:
	.loc 1 583 0
	movw r12,r30
	ldi r24,-1
	sub r12,r24
	sbc r13,r24
.LVL159:
	ld r28,Z
.LVL160:
.LBB45:
	.loc 1 584 0
	ldi r29,0
	rjmp .L98
.LVL161:
.L101:
	.loc 1 585 0
	mov r24,r28
	andi r24,lo8(1)
	sbrc r28,0
	.loc 1 586 0
	subi r16,lo8(-(1))
.LVL162:
.L99:
	.loc 1 588 0 discriminator 2
	ldi r22,lo8(1)
	cpse r24,__zero_reg__
	rjmp .L100
	ldi r22,0
.L100:
	mov r24,r17
	call register_onOff
.LVL163:
	.loc 1 590 0 discriminator 2
	lsr r28
.LVL164:
	.loc 1 591 0 discriminator 2
	subi r17,lo8(-(1))
.LVL165:
	.loc 1 584 0 discriminator 2
	subi r29,lo8(-(1))
.LVL166:
.L98:
	.loc 1 584 0 is_stmt 0 discriminator 1
	cpi r29,lo8(8)
	brlo .L101
.LBE45:
	.loc 1 580 0 is_stmt 1 discriminator 2
	inc r11
.LVL167:
	.loc 1 583 0 discriminator 2
	movw r30,r12
.LVL168:
.L97:
	.loc 1 580 0 discriminator 1
	ldi r24,lo8(7)
	cp r24,r11
	brsh .L102
.LBE46:
	.loc 1 595 0
	movw r30,r14
.LVL169:
	lsl r30
	rol r31
	lsl r14
	rol r15
	lsl r14
	rol r15
	lsl r14
	rol r15
.LVL170:
	add r30,r14
	adc r31,r15
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
	.loc 1 596 0
	ldd r24,Z+8
	ldd r25,Z+9
	call setAllCouplers
.LVL171:
	rjmp .L96
.LVL172:
.L103:
.LBE47:
	.loc 1 574 0
	ldi r16,0
.LVL173:
.L96:
	.loc 1 599 0
	mov r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
.LVL174:
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
.LVL175:
	push r28
.LCFI25:
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
	rjmp .L110
.LBB48:
	rjmp .L106
.LVL176:
.L108:
.LBB49:
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
	brne .L111
	.loc 1 606 0 discriminator 2
	subi r25,lo8(-(1))
.LVL177:
	rjmp .L105
.LVL178:
.L110:
.LBE49:
.LBE48:
	ldi r25,0
.L105:
.LVL179:
.LBB52:
.LBB50:
	.loc 1 606 0 is_stmt 0 discriminator 1
	cpi r25,lo8(4)
	brlo .L108
.LBE50:
	.loc 1 604 0 is_stmt 1
	ldi r24,0
.LVL180:
.LBB51:
	rjmp .L107
.LVL181:
.L111:
	.loc 1 609 0
	ldi r24,lo8(-1)
.LVL182:
.L107:
.LBE51:
	.loc 1 613 0
	cpi r24,lo8(-1)
	brne .L106
	.loc 1 615 0
	mov r24,r28
.LVL183:
	call program_toRegister
.LVL184:
	.loc 1 616 0
	mov r24,r28
	call prog_set
.LVL185:
	.loc 1 617 0
	sts midiLastProgram,r28
.L106:
.LBE52:
	.loc 1 623 0
	lds r24,midiThrough+1
	cpi r24,lo8(-1)
	breq .L104
	.loc 1 625 0
	ori r24,lo8(-64)
	call serial1MIDISend
.LVL186:
	.loc 1 627 0
	mov r24,r28
	call serial1MIDISend
.LVL187:
.L104:
/* epilogue start */
	.loc 1 630 0
	pop r28
.LVL188:
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
.LCFI26:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL189:
.LBB53:
	.loc 1 634 0
	ldi r28,0
	rjmp .L113
.LVL190:
.L114:
	.loc 1 635 0 discriminator 3
	ldi r24,lo8(-1)
	call prog_set
.LVL191:
	.loc 1 636 0 discriminator 3
	ldi r22,0
	mov r24,r28
	call register_onOff
.LVL192:
	.loc 1 634 0 discriminator 3
	subi r28,lo8(-(1))
.LVL193:
.L113:
	.loc 1 634 0 is_stmt 0 discriminator 1
	lds r24,registerCount
	cp r28,r24
	brlo .L114
/* epilogue start */
.LBE53:
	.loc 1 638 0 is_stmt 1
	pop r28
.LVL194:
	ret
	.cfi_endproc
.LFE42:
	.size	midi_resetRegisters, .-midi_resetRegisters
	.section	.text.register_toProgram,"ax",@progbits
.global	register_toProgram
	.type	register_toProgram, @function
register_toProgram:
.LFB43:
	.loc 1 640 0
	.cfi_startproc
.LVL195:
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
	mov r28,r24
	mov r16,r22
	.loc 1 644 0
	call midi_resetRegisters
.LVL196:
	.loc 1 645 0
	call module_WaitOutputInput2Cycles
.LVL197:
	.loc 1 647 0
	cpi r28,lo8(64)
	brsh .L118
.LBB54:
	.loc 1 648 0
	mov r18,r28
	ldi r19,0
	movw r24,r18
	lsl r24
	rol r25
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
	add r24,r18
	adc r25,r19
.LVL198:
	.loc 1 649 0
	subi r24,lo8(-(programMap))
	sbci r25,hi8(-(programMap))
.LVL199:
	call read_allRegister
.LVL200:
	mov r17,r24
.LVL201:
	rjmp .L116
.LVL202:
.L118:
.LBE54:
	.loc 1 646 0
	ldi r17,0
.LVL203:
.L116:
	.loc 1 651 0
	ldi r29,0
	call getAllCouplers
.LVL204:
	movw r18,r28
	lsl r18
	rol r19
	lsl r28
	rol r29
	lsl r28
	rol r29
	lsl r28
	rol r29
.LVL205:
	add r28,r18
	adc r29,r19
	subi r28,lo8(-(programMap))
	sbci r29,hi8(-(programMap))
	std Y+9,r25
	std Y+8,r24
	.loc 1 652 0
	cpse r16,__zero_reg__
	.loc 1 653 0
	call eeprom_UpdateProg
.LVL206:
.L117:
	.loc 1 656 0
	mov r24,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
.LVL207:
	pop r16
.LVL208:
	ret
	.cfi_endproc
.LFE43:
	.size	register_toProgram, .-register_toProgram
	.section	.text.prog_toLcd,"ax",@progbits
.global	prog_toLcd
	.type	prog_toLcd, @function
prog_toLcd:
.LFB47:
	.loc 1 723 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 724 0
	lds r24,prog_Display
	cpi r24,lo8(-1)
	breq .L120
	.loc 1 725 0
	ldi r24,lo8(80)
	call lcd_putc
.LVL209:
	.loc 1 726 0
	ldi r24,lo8(45)
	call lcd_putc
.LVL210:
	.loc 1 727 0
	lds r24,prog_Display
	lsr r24
	lsr r24
	lsr r24
	andi r24,lo8(7)
	subi r24,lo8(-(65))
	call lcd_putc
.LVL211:
	.loc 1 728 0
	lds r24,prog_Display
	andi r24,lo8(7)
	subi r24,lo8(-(49))
	call lcd_putc
.LVL212:
	.loc 1 729 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL213:
	ret
.L120:
	.loc 1 731 0
	ldi r24,lo8(5)
	call lcd_blank
.LVL214:
	ret
	.cfi_endproc
.LFE47:
	.size	prog_toLcd, .-prog_toLcd
	.section	.text.init_RegOut,"ax",@progbits
.global	init_RegOut
	.type	init_RegOut, @function
init_RegOut:
.LFB48:
	.loc 1 739 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 740 0
	call eeprom_ReadRegOut
.LVL215:
	ret
	.cfi_endproc
.LFE48:
	.size	init_RegOut, .-init_RegOut
	.section	.text.reg_toLCD,"ax",@progbits
.global	reg_toLCD
	.type	reg_toLCD, @function
reg_toLCD:
.LFB49:
	.loc 1 745 0
	.cfi_startproc
.LVL216:
	push r14
.LCFI31:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI32:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
.LCFI33:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
.LCFI34:
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
.LCFI35:
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
.LCFI36:
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r15,r24
.LVL217:
.LBB55:
	.loc 1 747 0
	mov r14,__zero_reg__
	rjmp .L124
.LVL218:
.L139:
.LBB56:
	.loc 1 748 0
	mov r16,r14
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
	.loc 1 749 0
	ldd r24,Y+1
.LVL220:
	.loc 1 750 0
	ldi r25,lo8(-33)
	add r25,r24
	cpi r25,lo8(95)
	brsh .L125
	.loc 1 752 0
	call lcd_putc
.LVL221:
	.loc 1 753 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL222:
.L125:
	.loc 1 755 0
	movw r30,r16
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(reg_Out))
	sbci r31,hi8(-(reg_Out))
	ldd r28,Z+2
.LVL223:
	.loc 1 756 0
	cpi r28,lo8(-1)
	breq .+2
	rjmp .L127
.LBE56:
	rjmp .L123
.L138:
.LBB59:
	.loc 1 760 0
	cpse r28,r24
	rjmp .L128
	.loc 1 762 0
	ldi r24,lo8(-1)
	cpse r15,r24
	rjmp .L129
	.loc 1 763 0
	mov r24,r28
	call get_RegisterStatus
.LVL224:
	cpi r24,lo8(1)
	brne .L140
	ldi r24,lo8(11)
	rjmp .L130
.L140:
	ldi r24,lo8(10)
.L130:
	.loc 1 763 0 is_stmt 0 discriminator 4
	call lcd_putc
.LVL225:
	mov r29,r28
	rjmp .L131
.L129:
	.loc 1 765 0 is_stmt 1
	mov r24,r28
	call get_RegisterStatus
.LVL226:
	tst r24
	breq .L141
	ldi r24,lo8(11)
	rjmp .L132
.L141:
	ldi r24,lo8(10)
.L132:
	.loc 1 765 0 is_stmt 0 discriminator 4
	call lcd_putc
.LVL227:
	mov r29,r28
	rjmp .L131
.L128:
	.loc 1 769 0 is_stmt 1
	ldi r24,lo8(-1)
	cpse r15,r24
	rjmp .L133
.LBB57:
	.loc 1 770 0
	ldi r29,lo8(1)
	add r29,r28
.LVL228:
	mov r24,r28
	call get_RegisterStatus
.LVL229:
	cpi r24,lo8(1)
	brne .L142
	ldi r28,lo8(2)
	rjmp .L134
.L142:
	ldi r28,0
.L134:
.LVL230:
	.loc 1 771 0 discriminator 4
	mov r24,r29
	call get_RegisterStatus
.LVL231:
	ldi r25,lo8(1)
	cpi r24,lo8(1)
	breq .L135
	ldi r25,0
.L135:
	mov r24,r25
	add r24,r28
.LVL232:
	.loc 1 772 0 discriminator 4
	subi r24,lo8(-(12))
.LVL233:
	call lcd_putc
.LVL234:
.LBE57:
	rjmp .L131
.LVL235:
.L133:
.LBB58:
	.loc 1 774 0
	ldi r29,lo8(1)
	add r29,r28
.LVL236:
	mov r24,r28
	call get_RegisterStatus
.LVL237:
	cpse r24,__zero_reg__
	rjmp .L143
	ldi r28,0
	rjmp .L136
.L143:
	ldi r28,lo8(2)
.L136:
.LVL238:
	.loc 1 775 0 discriminator 4
	mov r24,r29
	call get_RegisterStatus
.LVL239:
	ldi r25,lo8(1)
	cpse r24,__zero_reg__
	rjmp .L137
	ldi r25,0
.L137:
	mov r24,r25
	add r24,r28
.LVL240:
	.loc 1 776 0 discriminator 4
	subi r24,lo8(-(12))
.LVL241:
	call lcd_putc
.LVL242:
.L131:
.LBE58:
	.loc 1 779 0
	ldi r28,lo8(1)
	add r28,r29
.LVL243:
.L127:
	.loc 1 759 0
	movw r30,r16
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(reg_Out))
	sbci r31,hi8(-(reg_Out))
	ldd r24,Z+3
	cp r24,r28
	brlo .+2
	rjmp .L138
	.loc 1 781 0 discriminator 2
	ldi r24,lo8(32)
	call lcd_putc
.LVL244:
.LBE59:
	.loc 1 747 0 discriminator 2
	inc r14
.LVL245:
.L124:
	.loc 1 747 0 is_stmt 0 discriminator 1
	ldi r24,lo8(7)
	cp r24,r14
	brlo .+2
	rjmp .L139
.L123:
/* epilogue start */
.LBE55:
	.loc 1 783 0 is_stmt 1
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
.LVL246:
	pop r14
.LVL247:
	ret
	.cfi_endproc
.LFE49:
	.size	reg_toLCD, .-reg_toLCD
	.section	.text.reg_ClearOnLCD,"ax",@progbits
.global	reg_ClearOnLCD
	.type	reg_ClearOnLCD, @function
reg_ClearOnLCD:
.LFB50:
	.loc 1 785 0
	.cfi_startproc
	push r17
.LCFI37:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI38:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI39:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
.LVL248:
.LBB60:
	.loc 1 786 0
	ldi r17,0
	rjmp .L145
.LVL249:
.L147:
.LBB61:
	.loc 1 787 0
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
.LVL250:
	.loc 1 788 0
	ldd r18,Y+1
.LVL251:
	.loc 1 790 0
	ldd r24,Y+3
	ldd r25,Y+2
	sub r24,r25
	subi r24,lo8(-(1))
.LVL252:
	.loc 1 791 0
	ldi r25,0
	adiw r24,1
.LVL253:
	asr r25
	ror r24
.LVL254:
	.loc 1 792 0
	subi r18,lo8(-(-33))
.LVL255:
	cpi r18,lo8(95)
	brsh .L148
	ldi r18,lo8(2)
	rjmp .L146
.L148:
	ldi r18,0
.L146:
.LVL256:
	.loc 1 793 0 discriminator 4
	add r24,r18
.LVL257:
	call lcd_blank
.LVL258:
.LBE61:
	.loc 1 786 0 discriminator 4
	subi r17,lo8(-(1))
.LVL259:
.L145:
	.loc 1 786 0 is_stmt 0 discriminator 2
	cpi r17,lo8(8)
	brlo .L147
/* epilogue start */
.LBE60:
	.loc 1 795 0 is_stmt 1
	pop r29
	pop r28
	pop r17
.LVL260:
	ret
	.cfi_endproc
.LFE50:
	.size	reg_ClearOnLCD, .-reg_ClearOnLCD
	.section	.text.init_Midi2Manual,"ax",@progbits
.global	init_Midi2Manual
	.type	init_Midi2Manual, @function
init_Midi2Manual:
.LFB51:
	.loc 1 799 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL261:
.LBB62:
	.loc 1 803 0
	ldi r25,lo8(64)
.LBE62:
	.loc 1 801 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
.LBB63:
	.loc 1 803 0
	rjmp .L150
.LVL262:
.L151:
	.loc 1 805 0 discriminator 3
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 806 0 discriminator 3
	std Z+1,r24
	.loc 1 807 0 discriminator 3
	std Z+3,r24
	.loc 1 808 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 809 0 discriminator 3
	adiw r30,4
.LVL263:
	.loc 1 803 0 discriminator 3
	subi r25,lo8(-(-1))
.LVL264:
.L150:
	.loc 1 803 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L151
.LBE63:
	.loc 1 812 0 is_stmt 1
	call eeprom_ReadMidiInMap
.LVL265:
	cpi r24,lo8(-1)
	brne .L152
	.loc 1 813 0
	sts midiEEPromLoadError,r24
	.loc 1 814 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
	st Z,__zero_reg__
	.loc 1 815 0
	ldi r24,lo8(36)
	std Z+1,r24
	.loc 1 816 0
	std Z+3,r24
	.loc 1 817 0
	ldi r25,lo8(56)
	std Z+2,r25
	.loc 1 818 0
	ldi r18,lo8(1)
	std Z+16,r18
	.loc 1 819 0
	std Z+17,r24
	.loc 1 820 0
	std Z+19,r24
	.loc 1 821 0
	std Z+18,r25
	.loc 1 822 0
	ldi r18,lo8(2)
	std Z+32,r18
	.loc 1 823 0
	std Z+33,r24
	.loc 1 824 0
	std Z+35,r24
	.loc 1 825 0
	std Z+34,r25
	.loc 1 826 0
	ldi r25,lo8(3)
	std Z+48,r25
	.loc 1 827 0
	std Z+49,r24
	.loc 1 828 0
	std Z+51,r24
	.loc 1 829 0
	ldi r24,lo8(30)
	std Z+50,r24
	.loc 1 830 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL266:
.L152:
	.loc 1 832 0
	call eeprom_ReadMidiThrough
.LVL267:
	cpi r24,lo8(-1)
	brne .L149
	.loc 1 833 0
	ldi r30,lo8(midiThrough)
	ldi r31,hi8(midiThrough)
	st Z,r24
	.loc 1 834 0
	std Z+1,r24
	.loc 1 835 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL268:
.L149:
	ret
	.cfi_endproc
.LFE51:
	.size	init_Midi2Manual, .-init_Midi2Manual
	.section	.text.init_Manual2Midi,"ax",@progbits
.global	init_Manual2Midi
	.type	init_Manual2Midi, @function
init_Manual2Midi:
.LFB52:
	.loc 1 839 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL269:
.LBB64:
	.loc 1 841 0
	ldi r18,0
	rjmp .L155
.LVL270:
.L156:
	.loc 1 842 0 discriminator 3
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 843 0 discriminator 3
	std Z+1,r24
	.loc 1 841 0 discriminator 3
	subi r18,lo8(-(1))
.LVL271:
.L155:
	.loc 1 841 0 is_stmt 0 discriminator 1
	mov r24,r18
	ldi r25,0
	sbiw r24,0
	brne .L156
.LBE64:
	.loc 1 845 0 is_stmt 1
	call eeprom_ReadMidiOutMap
.LVL272:
	cpi r24,lo8(-1)
	brne .L154
	.loc 1 846 0
	sts midiEEPromLoadError,r24
	.loc 1 848 0
	ldi r30,lo8(midiOutMap)
	ldi r31,hi8(midiOutMap)
	st Z,__zero_reg__
	.loc 1 849 0
	ldi r25,lo8(1)
	std Z+2,r25
	.loc 1 850 0
	ldi r25,lo8(2)
	std Z+4,r25
	.loc 1 851 0
	ldi r25,lo8(3)
	std Z+6,r25
	.loc 1 852 0
	ldi r30,lo8(midi_Setting)
	ldi r31,hi8(midi_Setting)
	st Z,__zero_reg__
	.loc 1 853 0
	std Z+1,__zero_reg__
	.loc 1 854 0
	std Z+2,r24
	.loc 1 855 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(2)
	ldi r24,lo8(1)
	call log_putError
.LVL273:
.L154:
	ret
	.cfi_endproc
.LFE52:
	.size	init_Manual2Midi, .-init_Manual2Midi
	.section	.text.Manual_to_MidiNote,"ax",@progbits
.global	Manual_to_MidiNote
	.type	Manual_to_MidiNote, @function
Manual_to_MidiNote:
.LFB54:
	.loc 1 899 0
	.cfi_startproc
.LVL274:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	.loc 1 900 0
	ldi r24,lo8(-1)
.LVL275:
	ldi r25,lo8(-1)
	.loc 1 901 0
	cpi r30,lo8(4)
	brsh .L159
	.loc 1 902 0
	ldi r31,0
	lsl r30
	rol r31
.LVL276:
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r18,Z
	cpi r18,lo8(-1)
	breq .L159
	.loc 1 903 0
	mov r24,r18
	.loc 1 904 0
	mov r25,r22
.L159:
	.loc 1 909 0
	ret
	.cfi_endproc
.LFE54:
	.size	Manual_to_MidiNote, .-Manual_to_MidiNote
	.section	.text.Midi_updateManualRange,"ax",@progbits
.global	Midi_updateManualRange
	.type	Midi_updateManualRange, @function
Midi_updateManualRange:
.LFB55:
	.loc 1 913 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL277:
.LBB65:
	.loc 1 914 0
	ldi r23,0
	rjmp .L161
.LVL278:
.L167:
.LBB66:
.LBB67:
	.loc 1 918 0
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
	breq .L162
.LVL279:
	.loc 1 918 0 is_stmt 0 discriminator 1
	movw r30,r18
	lsl r30
	rol r31
	add r30,r18
	adc r31,r19
	movw r18,r24
.LVL280:
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
	breq .L162
	.loc 1 919 0 is_stmt 1
	cp r26,r22
	brsh .L163
	.loc 1 920 0
	mov r22,r26
.LVL281:
.L163:
	.loc 1 922 0
	cp r21,r18
	brsh .L162
	.loc 1 923 0
	mov r21,r18
.LVL282:
.L162:
	.loc 1 926 0
	tst r21
	breq .L164
	.loc 1 926 0 is_stmt 0 discriminator 1
	cpi r22,lo8(-1)
	brne .L165
.L164:
	.loc 1 927 0 is_stmt 1
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 928 0
	std Z+1,r24
	rjmp .L166
.L165:
	.loc 1 930 0
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	st Z,r22
	.loc 1 931 0
	std Z+1,r21
.L166:
	.loc 1 917 0 discriminator 2
	subi r20,lo8(-(1))
.LVL283:
	rjmp .L168
.LVL284:
.L171:
.LBE67:
.LBE66:
	ldi r20,0
	ldi r22,lo8(-1)
	ldi r21,0
.L168:
.LVL285:
.LBB69:
.LBB68:
	.loc 1 917 0 is_stmt 0 discriminator 1
	cpi r20,lo8(4)
	brsh .+2
	rjmp .L167
.LBE68:
.LBE69:
	.loc 1 914 0 is_stmt 1 discriminator 2
	subi r23,lo8(-(1))
.LVL286:
.L161:
	.loc 1 914 0 is_stmt 0 discriminator 1
	cpi r23,lo8(4)
	brlo .L171
/* epilogue start */
.LBE65:
	.loc 1 935 0 is_stmt 1
	ret
	.cfi_endproc
.LFE55:
	.size	Midi_updateManualRange, .-Midi_updateManualRange
	.section	.text.init_Manual2Module,"ax",@progbits
.global	init_Manual2Module
	.type	init_Manual2Module, @function
init_Manual2Module:
.LFB56:
	.loc 1 937 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL287:
.LBB70:
	.loc 1 938 0
	ldi r22,lo8(3)
	rjmp .L173
.LVL288:
.L174:
.LBB71:
	.loc 1 941 0 discriminator 3
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
	.loc 1 942 0 discriminator 3
	adiw r26,1
	st X,r19
	sbiw r26,1
	.loc 1 943 0 discriminator 3
	movw r30,r26
	std Z+2,__zero_reg__
	.loc 1 940 0 discriminator 3
	subi r18,lo8(-(-1))
.LVL289:
	rjmp .L175
.LVL290:
.L177:
.LBE71:
	ldi r18,lo8(3)
.L175:
.LVL291:
.LBB72:
	.loc 1 940 0 is_stmt 0 discriminator 1
	tst r18
	brge .L174
.LBE72:
	.loc 1 938 0 is_stmt 1 discriminator 2
	subi r22,lo8(-(-1))
.LVL292:
.L173:
	.loc 1 938 0 is_stmt 0 discriminator 1
	tst r22
	brge .L177
.LBE70:
	.loc 1 947 0 is_stmt 1
	call eeprom_ReadManualMap
.LVL293:
	cpi r24,lo8(-1)
	brne .L176
	.loc 1 949 0
	sts midiEEPromLoadError,r24
	.loc 1 950 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(3)
	ldi r24,lo8(1)
	call log_putError
.LVL294:
	.loc 1 952 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
	ldi r24,lo8(36)
	st Z,r24
	.loc 1 953 0
	ldi r19,lo8(67)
	std Z+1,r19
	.loc 1 954 0
	std Z+2,__zero_reg__
	.loc 1 955 0
	ldi r18,lo8(68)
	std Z+3,r18
	.loc 1 956 0
	ldi r25,lo8(91)
	std Z+4,r25
	.loc 1 957 0
	ldi r20,lo8(32)
	std Z+5,r20
	.loc 1 958 0
	std Z+12,r24
	.loc 1 959 0
	std Z+13,r19
	.loc 1 960 0
	ldi r20,lo8(64)
	std Z+14,r20
	.loc 1 961 0
	std Z+15,r18
	.loc 1 962 0
	std Z+16,r25
	.loc 1 963 0
	ldi r20,lo8(96)
	std Z+17,r20
	.loc 1 964 0
	std Z+24,r24
	.loc 1 965 0
	std Z+25,r19
	.loc 1 966 0
	ldi r19,lo8(-128)
	std Z+26,r19
	.loc 1 967 0
	std Z+27,r18
	.loc 1 968 0
	std Z+28,r25
	.loc 1 969 0
	ldi r25,lo8(-96)
	std Z+29,r25
	.loc 1 970 0
	std Z+36,r24
	.loc 1 971 0
	ldi r24,lo8(65)
	std Z+37,r24
	.loc 1 972 0
	ldi r24,lo8(-64)
	std Z+38,r24
	.loc 1 973 0
	std Z+48,__zero_reg__
	.loc 1 974 0
	ldi r24,lo8(29)
	std Z+49,r24
	.loc 1 975 0
	ldi r24,lo8(-32)
	std Z+50,r24
.L176:
	.loc 1 977 0
	call Midi_updateManualRange
.LVL295:
	ret
	.cfi_endproc
.LFE56:
	.size	init_Manual2Module, .-init_Manual2Module
	.section	.text.manualNote_to_moduleBit,"ax",@progbits
.global	manualNote_to_moduleBit
	.type	manualNote_to_moduleBit, @function
manualNote_to_moduleBit:
.LFB57:
	.loc 1 981 0
	.cfi_startproc
.LVL296:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 984 0
	cpi r24,lo8(4)
	brsh .L179
.LBB73:
	.loc 1 987 0
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
.LVL297:
	.loc 1 988 0
	ldi r24,lo8(4)
.LVL298:
.L182:
	.loc 1 990 0
	ld r18,Z
	cp r22,r18
	brlo .L180
	.loc 1 990 0 is_stmt 0 discriminator 1
	ldd r25,Z+1
	cp r25,r22
	brlo .L180
	.loc 1 993 0 is_stmt 1
	ldd r25,Z+2
	sub r22,r18
.LVL299:
	.loc 1 994 0
	ldi r24,0
.LVL300:
	add r25,r22
	ret
.LVL301:
.L180:
	.loc 1 996 0
	adiw r30,3
.LVL302:
	.loc 1 997 0
	subi r24,lo8(-(-1))
.LVL303:
	brne .L182
.LVL304:
.L179:
.LBE73:
	.loc 1 1001 0
	ldi r24,lo8(-1)
	ldi r25,0
	.loc 1 1002 0
	ret
	.cfi_endproc
.LFE57:
	.size	manualNote_to_moduleBit, .-manualNote_to_moduleBit
	.section	.text.moduleBit_to_manualNote,"ax",@progbits
.global	moduleBit_to_manualNote
	.type	moduleBit_to_manualNote, @function
moduleBit_to_manualNote:
.LFB58:
	.loc 1 1004 0
	.cfi_startproc
.LVL305:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1011 0
	ldi r27,0
	.loc 1 1010 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
.LVL306:
.L188:
.LBB74:
	.loc 1 1013 0
	ldi r20,lo8(4)
	rjmp .L184
.LVL307:
.L187:
	.loc 1 1014 0
	ldd r21,Z+2
	cp r24,r21
	brlo .L185
	.loc 1 1014 0 is_stmt 0 discriminator 1
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
	brlt .L185
.LVL308:
	.loc 1 1017 0 is_stmt 1
	mov r25,r24
	sub r25,r21
	.loc 1 1018 0
	mov r24,r27
	add r25,r26
	ret
.LVL309:
.L185:
	.loc 1 1020 0 discriminator 2
	adiw r30,3
.LVL310:
	.loc 1 1013 0 discriminator 2
	subi r20,lo8(-(-1))
.LVL311:
.L184:
	.loc 1 1013 0 is_stmt 0 discriminator 1
	cpse r20,__zero_reg__
	rjmp .L187
.LBE74:
	.loc 1 1022 0 is_stmt 1
	subi r27,lo8(-(1))
.LVL312:
	.loc 1 1023 0
	cpi r27,lo8(5)
	brlo .L188
	.loc 1 1027 0
	ldi r24,lo8(-1)
.LVL313:
	ldi r25,0
	.loc 1 1028 0
	ret
	.cfi_endproc
.LFE58:
	.size	moduleBit_to_manualNote, .-moduleBit_to_manualNote
	.section	.text.manual_NoteOnOff,"ax",@progbits
.global	manual_NoteOnOff
	.type	manual_NoteOnOff, @function
manual_NoteOnOff:
.LFB59:
	.loc 1 1030 0
	.cfi_startproc
.LVL314:
	push r14
.LCFI40:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI41:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
.LCFI42:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
.LCFI43:
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
.LCFI44:
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
.LCFI45:
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r28,r24
	mov r16,r22
	mov r29,r20
	.loc 1 1032 0
	call manualNote_to_moduleBit
.LVL315:
	.loc 1 1034 0
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
.LVL316:
	.loc 1 1035 0
	mov r17,r25
	andi r17,lo8(31)
.LVL317:
	.loc 1 1036 0
	cpse r24,__zero_reg__
	rjmp .L190
	.loc 1 1037 0
	lds r24,pipe_Module+1
	and r24,r14
	brne .L191
	.loc 1 1037 0 is_stmt 0 discriminator 1
	tst r29
	brlt .L191
.LBB75:
	.loc 1 1039 0 is_stmt 1
	andi r29,lo8(127)
.LVL318:
	.loc 1 1042 0
	cpi r29,lo8(1)
	brne .L197
	ldi r25,lo8(32)
	rjmp .L192
.L197:
	ldi r25,0
.L192:
	.loc 1 1043 0 discriminator 4
	mov r24,r14
	or r25,r17
	call pipeMsgPush
.LVL319:
.L191:
.LBE75:
	.loc 1 1045 0
	andi r29,lo8(127)
.LVL320:
	.loc 1 1046 0
	brne .L193
	.loc 1 1048 0
	mov r22,r14
	mov r24,r17
	call pipe_off
.LVL321:
	rjmp .L190
.L193:
	.loc 1 1051 0
	mov r22,r14
	mov r24,r17
	call pipe_on
.LVL322:
.L190:
	.loc 1 1056 0
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldd r24,Z+1
	cpi r24,lo8(-1)
	breq .L189
	.loc 1 1059 0
	cpi r29,lo8(1)
	breq .L198
	.loc 1 1059 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
	tst r25
	breq .L199
	.loc 1 1059 0
	ldi r25,lo8(-112)
	rjmp .L195
.L198:
	ldi r25,lo8(-112)
	rjmp .L195
.L199:
	ldi r25,lo8(-128)
.L195:
	.loc 1 1059 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL323:
	.loc 1 1060 0 is_stmt 1 discriminator 6
	mov r24,r16
	call serial1MIDISend
.LVL324:
	.loc 1 1062 0 discriminator 6
	cpse r29,__zero_reg__
	rjmp .L200
	.loc 1 1062 0 is_stmt 0
	ldi r24,0
	rjmp .L196
.L200:
	ldi r24,lo8(64)
.L196:
	.loc 1 1062 0 discriminator 4
	call serial1MIDISend
.LVL325:
.L189:
/* epilogue start */
	.loc 1 1066 0 is_stmt 1
	pop r29
.LVL326:
	pop r28
.LVL327:
	pop r17
.LVL328:
	pop r16
.LVL329:
	pop r15
	pop r14
.LVL330:
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
.LVL331:
	push r11
.LCFI46:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI47:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI48:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI49:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI50:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI51:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI52:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI53:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI54:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	mov r12,r24
.LVL332:
	.loc 1 146 0
	mov r13,__zero_reg__
	.loc 1 147 0
	rjmp .L202
.LVL333:
.L206:
.LBB76:
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
.LVL334:
	.loc 1 150 0
	ldi r24,lo8(3)
	cp r24,r11
	brlo .L203
.LBB77:
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
.LVL335:
.LBB78:
	.loc 1 154 0
	ldd r15,Z+2
.LVL336:
	rjmp .L204
.L205:
	.loc 1 155 0 discriminator 3
	clr r14
	inc r14
	add r14,r22
.LVL337:
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
.LVL338:
	.loc 1 154 0 discriminator 3
	dec r15
.LVL339:
	.loc 1 155 0 discriminator 3
	mov r22,r14
.LVL340:
.L204:
	.loc 1 154 0 discriminator 1
	cpse r15,__zero_reg__
	rjmp .L205
.LBE78:
	.loc 1 157 0
	mov r30,r11
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL341:
	.loc 1 158 0
	cpi r24,lo8(16)
	brsh .L203
	.loc 1 160 0
	ori r24,lo8(-80)
.LVL342:
	call serial1MIDISend
.LVL343:
	.loc 1 161 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL344:
	.loc 1 162 0
	ldi r24,0
	call serial1MIDISend
.LVL345:
.L203:
.LBE77:
	.loc 1 169 0
	inc r13
.LVL346:
.L202:
.LBE76:
	.loc 1 147 0
	ldi r24,lo8(3)
	cp r24,r13
	brlo .+2
	rjmp .L206
/* epilogue start */
	.loc 1 171 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
.LVL347:
	pop r12
.LVL348:
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
.LVL349:
	push r16
.LCFI55:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI56:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI57:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI58:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r28,r24
	.loc 1 175 0
	cpi r24,lo8(4)
	brsh .L208
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
	breq .L208
	.loc 1 175 0 discriminator 2
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r24,Z+1
.LVL350:
	cpi r24,lo8(-1)
	brne .L209
.LBB79:
	rjmp .L208
.LVL351:
.L210:
	.loc 1 177 0 is_stmt 1 discriminator 3
	ldi r20,lo8(-128)
	mov r22,r29
	mov r24,r28
	call manual_NoteOnOff
.LVL352:
	.loc 1 176 0 discriminator 3
	subi r29,lo8(-(1))
.LVL353:
.L209:
	.loc 1 176 0 is_stmt 0 discriminator 1
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r24,Z+1
	cp r24,r29
	brsh .L210
.LVL354:
.L208:
.LBE79:
	.loc 1 181 0 is_stmt 1
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL355:
	.loc 1 182 0
	cpi r24,lo8(16)
	brsh .L207
	.loc 1 184 0
	ori r24,lo8(-80)
.LVL356:
	call serial1MIDISend
.LVL357:
	.loc 1 185 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL358:
	.loc 1 186 0
	ldi r24,0
	call serial1MIDISend
.LVL359:
.L207:
/* epilogue start */
	.loc 1 189 0
	pop r29
	pop r28
.LVL360:
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
.LCFI59:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL361:
.LBB80:
	.loc 1 192 0
	ldi r28,0
	rjmp .L213
.LVL362:
.L214:
	.loc 1 193 0 discriminator 3
	mov r24,r28
	call midi_ManualOff
.LVL363:
	.loc 1 192 0 discriminator 3
	subi r28,lo8(-(1))
.LVL364:
.L213:
	.loc 1 192 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brlo .L214
/* epilogue start */
.LBE80:
	.loc 1 198 0 is_stmt 1
	pop r28
.LVL365:
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
	breq .L215
	.loc 1 203 0
	lds r24,swTimer+6
	cpse r24,__zero_reg__
	rjmp .L215
	.loc 1 205 0
	call midi_AllManualsOff
.LVL366:
	.loc 1 206 0
	sts midiRxActivceSensing,__zero_reg__
.L215:
	ret
	.cfi_endproc
.LFE26:
	.size	midi_CheckRxActiveSense, .-midi_CheckRxActiveSense
	.section	.text.midiNote_to_Manual,"ax",@progbits
.global	midiNote_to_Manual
	.type	midiNote_to_Manual, @function
midiNote_to_Manual:
.LFB53:
	.loc 1 859 0
	.cfi_startproc
.LVL367:
	push r16
.LCFI60:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI61:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI62:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI63:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r22
	mov r17,r20
	.loc 1 860 0
	mov r29,r24
	andi r29,lo8(15)
.LVL368:
.LBB81:
	.loc 1 862 0
	ldi r28,0
.LBE81:
	.loc 1 861 0
	ldi r25,0
.LBB84:
	.loc 1 862 0
	rjmp .L218
.LVL369:
.L221:
	.loc 1 863 0
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
	brsh .L219
.LVL370:
.LBB82:
	.loc 1 865 0
	movw r26,r30
	ldd r22,Z+1
	mov r23,r16
	sub r23,r22
	mov r22,r23
.LVL371:
	.loc 1 866 0
	brmi .L219
	.loc 1 866 0 is_stmt 0 discriminator 1
	movw r30,r26
	ldd r30,Z+2
	ldi r31,0
	mov r26,r23
	lsl r23
	sbc r27,r27
	cp r26,r30
	cpc r27,r31
	brge .L219
.LVL372:
.LBB83:
	.loc 1 869 0 is_stmt 1
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
.LVL373:
	add r22,r25
.LVL374:
	.loc 1 870 0
	cpi r17,lo8(1)
	brne .L220
	.loc 1 871 0
	sts midiLastInManual,r24
	.loc 1 872 0
	sts midiLastInNote,r22
.L220:
	.loc 1 874 0
	mov r20,r17
.LVL375:
	call manual_NoteOnOff
.LVL376:
	.loc 1 875 0
	ldi r25,lo8(-1)
.LVL377:
.L219:
.LBE83:
.LBE82:
	.loc 1 862 0 discriminator 2
	subi r28,lo8(-(1))
.LVL378:
.L218:
	.loc 1 862 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brsh .+2
	rjmp .L221
.LBE84:
	.loc 1 879 0 is_stmt 1
	cpi r17,lo8(1)
	brne .L222
	.loc 1 879 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L222
	.loc 1 881 0 is_stmt 1
	sts midiLastInNote,r16
	.loc 1 882 0
	sts midiLastInChannel,r29
	.loc 1 883 0
	ldi r24,lo8(-1)
	sts midiLastInManual,r24
.L222:
	.loc 1 886 0
	lds r24,midiThrough
	cpse r29,r24
	rjmp .L217
	.loc 1 888 0
	lds r24,midiThrough+1
	cpi r24,lo8(-1)
	breq .L217
	.loc 1 890 0
	cpi r17,lo8(1)
	breq .L226
	.loc 1 890 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
.LVL379:
	tst r25
	breq .L227
	.loc 1 890 0
	ldi r25,lo8(-112)
	rjmp .L224
.LVL380:
.L226:
	ldi r25,lo8(-112)
.LVL381:
	rjmp .L224
.L227:
	ldi r25,lo8(-128)
.L224:
	.loc 1 890 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL382:
	.loc 1 892 0 is_stmt 1 discriminator 6
	mov r24,r16
	call serial1MIDISend
.LVL383:
	.loc 1 894 0 discriminator 6
	cpse r17,__zero_reg__
	rjmp .L228
	.loc 1 894 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L229
	.loc 1 894 0
	ldi r24,lo8(64)
	rjmp .L225
.L228:
	ldi r24,lo8(64)
	rjmp .L225
.L229:
	ldi r24,0
.L225:
	.loc 1 894 0 discriminator 6
	call serial1MIDISend
.LVL384:
.L217:
/* epilogue start */
	.loc 1 897 0 is_stmt 1
	pop r29
.LVL385:
	pop r28
.LVL386:
	pop r17
.LVL387:
	pop r16
.LVL388:
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
.LVL389:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 246 0
	tst r24
	brlt .+2
	rjmp .L231
	.loc 1 249 0
	cpi r24,lo8(-8)
	brlo .L232
	.loc 1 251 0
	cpi r24,lo8(-2)
	brne .L233
	.loc 1 252 0
	ldi r24,lo8(1)
.LVL390:
	sts midiRxActivceSensing,r24
.LBB85:
	.loc 1 253 0
	in r25,__SREG__
.LVL391:
.LBB86:
.LBB87:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE87:
.LBE86:
	.loc 1 253 0
	rjmp .L234
.LVL392:
.L235:
	.loc 1 253 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(25)
.LVL393:
	std Z+6,r24
	std Z+7,__zero_reg__
.LVL394:
	.loc 1 253 0 discriminator 3
	ldi r24,0
.LVL395:
.L234:
	.loc 1 253 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L235
.LVL396:
.LBB88:
.LBB89:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL397:
.LBE89:
.LBE88:
.LBE85:
	ret
.LVL398:
.L233:
	.loc 1 254 0
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L230
	.loc 1 255 0
	call midiAllReset
.LVL399:
	ret
.LVL400:
.L232:
	.loc 1 260 0
	sts midiLastCommand,r24
	.loc 1 261 0
	sts midiDataByteCount,__zero_reg__
	.loc 1 262 0
	ldi r25,lo8(-128)
	add r25,r24
	cpi r25,lo8(64)
	brsh .L237
	.loc 1 264 0
	ldi r24,lo8(2)
.LVL401:
	sts midiDataByteExpected,r24
	ret
.LVL402:
.L237:
	.loc 1 265 0
	ldi r25,lo8(32)
	add r25,r24
	cpi r25,lo8(16)
	brsh .L238
	.loc 1 267 0
	ldi r24,lo8(2)
.LVL403:
	sts midiDataByteExpected,r24
	ret
.LVL404:
.L238:
	.loc 1 268 0
	cpi r24,lo8(-14)
	brne .L239
	.loc 1 270 0
	ldi r24,lo8(2)
.LVL405:
	sts midiDataByteExpected,r24
	ret
.LVL406:
.L239:
	.loc 1 271 0
	cpi r24,lo8(-16)
	brne .L240
	.loc 1 273 0
	ldi r24,lo8(-1)
.LVL407:
	sts midiDataByteExpected,r24
	ret
.LVL408:
.L240:
	.loc 1 274 0
	ldi r25,lo8(64)
	add r25,r24
	cpi r25,lo8(32)
	brsh .L241
	.loc 1 276 0
	ldi r24,lo8(1)
.LVL409:
	sts midiDataByteExpected,r24
	ret
.LVL410:
.L241:
	.loc 1 277 0
	cpi r24,lo8(-15)
	breq .L242
	.loc 1 277 0 is_stmt 0 discriminator 1
	cpi r24,lo8(-13)
	brne .L243
.L242:
	.loc 1 279 0 is_stmt 1
	ldi r24,lo8(1)
.LVL411:
	sts midiDataByteExpected,r24
	ret
.LVL412:
.L243:
	.loc 1 280 0
	cpi r24,lo8(-9)
	brne .+2
	rjmp .L230
	.loc 1 284 0
	sts midiDataByteExpected,__zero_reg__
	ret
.L231:
	.loc 1 290 0
	lds r30,midiDataByteCount
	cpi r30,lo8(8)
	brsh .L244
	.loc 1 292 0
	ldi r25,lo8(1)
	add r25,r30
	sts midiDataByteCount,r25
	ldi r31,0
	subi r30,lo8(-(midiDataByte))
	sbci r31,hi8(-(midiDataByte))
	st Z,r24
.L244:
	.loc 1 294 0
	lds r24,midiDataByteExpected
.LVL413:
	cpi r24,lo8(-1)
	breq .L230
	.loc 1 296 0
	lds r25,midiDataByteCount
	cp r25,r24
	brlo .L230
	.loc 1 298 0
	lds r25,midiLastCommand
	cpi r25,lo8(-16)
	brsh .L245
.LBB90:
	.loc 1 300 0
	mov r24,r25
	andi r24,lo8(15)
.LVL414:
	.loc 1 302 0
	andi r25,lo8(-16)
	cpi r25,lo8(-112)
	breq .L246
	brsh .L247
	cpi r25,lo8(-128)
	breq .L248
	rjmp .L245
.L247:
	cpi r25,lo8(-80)
	breq .L249
	cpi r25,lo8(-64)
	breq .L250
	rjmp .L245
.L248:
.LVL415:
	.loc 1 306 0
	ldi r20,0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL416:
	.loc 1 307 0
	rjmp .L245
.LVL417:
.L246:
	.loc 1 309 0
	lds r25,midiDataByte+1
	cpse r25,__zero_reg__
	rjmp .L252
	.loc 1 311 0
	ldi r20,0
	rjmp .L251
.L252:
	.loc 1 314 0
	ldi r20,lo8(1)
.L251:
.LVL418:
	.loc 1 316 0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL419:
	.loc 1 317 0
	rjmp .L245
.LVL420:
.L249:
	.loc 1 319 0
	lds r25,midiDataByte
	cpi r25,lo8(123)
	brne .L245
	.loc 1 320 0
	call midiAllNotesOff
.LVL421:
	rjmp .L245
.LVL422:
.L250:
	.loc 1 324 0
	lds r22,midiDataByte
	call midi_ProgramChange
.LVL423:
.L245:
.LBE90:
	.loc 1 331 0
	sts midiDataByteCount,__zero_reg__
.L230:
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
.LVL424:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 341 0
	lds r25,serESPMidiTmp+2
	mov r24,r25
.LVL425:
	andi r24,lo8(15)
.LVL426:
	.loc 1 343 0
	andi r25,lo8(-16)
	cpi r25,lo8(-128)
	breq .L255
	brsh .L256
	tst r25
	breq .L257
	ret
.L256:
	cpi r25,lo8(-112)
	breq .L258
	cpi r25,lo8(-80)
	breq .L259
	ret
.L255:
.LVL427:
	.loc 1 347 0
	ldi r20,0
	lds r22,serESPMidiTmp+1
	call midiNote_to_Manual
.LVL428:
	.loc 1 348 0
	ret
.LVL429:
.L258:
	.loc 1 350 0
	lds r25,serESPMidiTmp
	cpse r25,__zero_reg__
	rjmp .L262
	.loc 1 352 0
	ldi r20,0
	rjmp .L260
.L262:
	.loc 1 355 0
	ldi r20,lo8(1)
.L260:
.LVL430:
	.loc 1 357 0
	lds r22,serESPMidiTmp+1
	call midiNote_to_Manual
.LVL431:
	.loc 1 358 0
	ret
.LVL432:
.L259:
	.loc 1 360 0
	lds r25,serESPMidiTmp+1
	cpi r25,lo8(123)
	brne .L253
	.loc 1 361 0
	call midiAllNotesOff
.LVL433:
	ret
.LVL434:
.L257:
	.loc 1 366 0
	lds r25,serESPMidiTmp+1
	mov r24,r25
.LVL435:
	andi r24,lo8(15)
.LVL436:
	.loc 1 367 0
	andi r25,lo8(-16)
	cpi r25,lo8(-64)
	brne .L253
	.loc 1 369 0
	lds r22,serESPMidiTmp
	call midi_ProgramChange
.LVL437:
.L253:
	ret
	.cfi_endproc
.LFE30:
	.size	proc_ESPmidi, .-proc_ESPmidi
	.section	.text.midiKeyPress_Process,"ax",@progbits
.global	midiKeyPress_Process
	.type	midiKeyPress_Process, @function
midiKeyPress_Process:
.LFB60:
	.loc 1 1070 0
	.cfi_startproc
.LVL438:
	push r11
.LCFI64:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI65:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI66:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI67:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI68:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI69:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI70:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI71:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI72:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	mov r29,r24
	mov r28,r25
	.loc 1 1071 0
	call serial0USB_logPipeIn
.LVL439:
	.loc 1 1072 0
	mov r16,r28
	andi r16,lo8(-32)
.LVL440:
	.loc 1 1073 0
	andi r28,lo8(31)
	mov r11,r28
.LVL441:
	.loc 1 1077 0
	cpi r16,lo8(32)
	brne .+2
	rjmp .L285
	.loc 1 1077 0 is_stmt 0 discriminator 1
	tst r16
	brne .+2
	rjmp .L286
.LBB91:
	rjmp .L263
.LVL442:
.L284:
	.loc 1 1081 0 is_stmt 1
	sbrs r29,0
	rjmp .L266
	.loc 1 1083 0
	ldi r18,lo8(32)
	mul r28,r18
	movw r24,r0
	clr __zero_reg__
	mov r15,r11
	or r15,r24
	mov r24,r15
	call moduleBit_to_manualNote
.LVL443:
	mov r12,r24
.LVL444:
	mov r14,r25
	.loc 1 1085 0
	mov r17,r24
	cpi r24,lo8(-1)
	brne .+2
	rjmp .L267
.LBB92:
	.loc 1 1088 0
	mov r22,r25
	call Manual_to_MidiNote
.LVL445:
	mov r13,r25
.LVL446:
	.loc 1 1089 0
	cpi r24,lo8(-1)
	breq .L268
	.loc 1 1091 0
	cpi r16,lo8(32)
	breq .L287
	.loc 1 1091 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
	tst r25
	breq .L288
	.loc 1 1091 0
	ldi r25,lo8(-112)
	rjmp .L269
.L287:
	ldi r25,lo8(-112)
	rjmp .L269
.L288:
	ldi r25,lo8(-128)
.L269:
	.loc 1 1091 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL447:
	.loc 1 1093 0 is_stmt 1 discriminator 6
	mov r24,r13
	call serial1MIDISend
.LVL448:
	.loc 1 1095 0 discriminator 6
	cpse r16,__zero_reg__
	rjmp .L289
	.loc 1 1095 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L290
	.loc 1 1095 0
	ldi r24,lo8(64)
	rjmp .L270
.L289:
	ldi r24,lo8(64)
	rjmp .L270
.L290:
	ldi r24,0
.L270:
	.loc 1 1095 0 discriminator 6
	call serial1MIDISend
.LVL449:
	.loc 1 1097 0 is_stmt 1 discriminator 6
	cpi r16,lo8(32)
	brne .L268
	.loc 1 1099 0
	sts midiLastOutManual,r12
.LVL450:
	.loc 1 1100 0
	sts midiLastOutNote,r14
.LVL451:
.L268:
	.loc 1 1104 0
	ldi r20,lo8(1)
	cpi r16,lo8(32)
	breq .L271
	ldi r20,0
.L271:
	mov r13,r20
.LVL452:
	.loc 1 1106 0
	cpse r17,__zero_reg__
	rjmp .L272
	.loc 1 1107 0
	lds r24,midi_Couplers
	cpi r24,lo8(-1)
	brne .L273
	.loc 1 1108 0
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL453:
.L273:
	.loc 1 1110 0
	lds r24,midi_Couplers+1
	cpi r24,lo8(-1)
	brne .L274
	.loc 1 1111 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL454:
.L274:
	.loc 1 1113 0
	lds r24,midi_Couplers+3
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L267
	.loc 1 1114 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL455:
	rjmp .L267
.L272:
	.loc 1 1116 0
	cpi r17,lo8(1)
	brne .L275
	.loc 1 1117 0
	lds r24,midi_Couplers+2
	cpi r24,lo8(-1)
	brne .L276
	.loc 1 1118 0
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL456:
.L276:
	.loc 1 1120 0
	lds r24,midi_Couplers+4
	cpi r24,lo8(-1)
	brne .L277
	.loc 1 1121 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL457:
.L277:
	.loc 1 1123 0
	lds r24,midi_Couplers+6
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L267
	.loc 1 1124 0
	mov r20,r13
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL458:
	rjmp .L267
.L275:
	.loc 1 1126 0
	cpi r17,lo8(2)
	brne .L278
	.loc 1 1127 0
	lds r24,midi_Couplers+5
	cpi r24,lo8(-1)
	brne .L279
	.loc 1 1128 0
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL459:
.L279:
	.loc 1 1130 0
	lds r24,midi_Couplers+7
	cpi r24,lo8(-1)
	brne .L280
	.loc 1 1131 0
	mov r20,r13
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL460:
.L280:
	.loc 1 1133 0
	lds r24,midi_Couplers+8
	cpi r24,lo8(-1)
	brne .L267
	.loc 1 1134 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL461:
	rjmp .L267
.L278:
	.loc 1 1136 0
	cpi r17,lo8(3)
	brne .L267
	.loc 1 1137 0
	lds r24,midi_Couplers+9
	cpi r24,lo8(-1)
	brne .L281
	.loc 1 1138 0
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL462:
.L281:
	.loc 1 1140 0
	lds r24,midi_Couplers+10
	cpi r24,lo8(-1)
	brne .L282
	.loc 1 1141 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL463:
.L282:
	.loc 1 1143 0
	lds r24,midi_Couplers+11
	cpi r24,lo8(-1)
	brne .L267
	.loc 1 1144 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL464:
.L267:
.LBE92:
	.loc 1 1149 0
	mov r24,r15
	call moduleBit_to_registerNr
.LVL465:
	cpi r16,lo8(32)
	brne .L291
	ldi r18,lo8(-128)
	rjmp .L283
.L291:
	ldi r18,0
.L283:
	.loc 1 1149 0 is_stmt 0 discriminator 4
	or r24,r18
	sts midi_RegisterChanged,r24
.L266:
	.loc 1 1152 0 is_stmt 1 discriminator 2
	lsr r29
.LVL466:
	.loc 1 1079 0 discriminator 2
	subi r28,lo8(-(1))
.LVL467:
	rjmp .L264
.LVL468:
.L285:
.LBE91:
	ldi r28,0
.LVL469:
	rjmp .L264
.LVL470:
.L286:
	ldi r28,0
.LVL471:
.L264:
.LBB93:
	.loc 1 1079 0 is_stmt 0 discriminator 1
	cpi r28,lo8(8)
	brsh .+2
	rjmp .L284
.LVL472:
.L263:
/* epilogue start */
.LBE93:
	.loc 1 1155 0 is_stmt 1
	pop r29
.LVL473:
	pop r28
	pop r17
	pop r16
.LVL474:
	pop r15
	pop r14
.LVL475:
	pop r13
	pop r12
	pop r11
.LVL476:
	ret
	.cfi_endproc
.LFE60:
	.size	midiKeyPress_Process, .-midiKeyPress_Process
	.section	.text.midiSendAllNotesOff,"ax",@progbits
.global	midiSendAllNotesOff
	.type	midiSendAllNotesOff, @function
midiSendAllNotesOff:
.LFB61:
	.loc 1 1159 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1160 0
	lds r24,midiThrough+1
	cpi r24,lo8(16)
	brsh .L292
	.loc 1 1161 0
	ori r24,lo8(-80)
	call serial1MIDISend
.LVL477:
	.loc 1 1162 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL478:
	.loc 1 1163 0
	ldi r24,0
	call serial1MIDISend
.LVL479:
.L292:
	ret
	.cfi_endproc
.LFE61:
	.size	midiSendAllNotesOff, .-midiSendAllNotesOff
	.section	.text.midi_SendActiveSense,"ax",@progbits
.global	midi_SendActiveSense
	.type	midi_SendActiveSense, @function
midi_SendActiveSense:
.LFB62:
	.loc 1 1175 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1176 0
	ldi r24,lo8(-2)
	call serial1MIDISend
.LVL480:
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
	breq .L296
	.loc 1 214 0 is_stmt 0 discriminator 1
	lds r24,swTimer+16
	cpi r24,lo8(-1)
	brne .L295
.L296:
.LBB94:
	.loc 1 216 0 is_stmt 1
	in r25,__SREG__
.LVL481:
.LBB95:
.LBB96:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE96:
.LBE95:
	.loc 1 216 0
	ldi r24,lo8(1)
	rjmp .L298
.LVL482:
.L299:
	.loc 1 216 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(10)
.LVL483:
	std Z+16,r24
	std Z+17,__zero_reg__
.LVL484:
	.loc 1 216 0 discriminator 3
	ldi r24,0
.LVL485:
.L298:
	.loc 1 216 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L299
.LVL486:
.LBB97:
.LBB98:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL487:
.LBE98:
.LBE97:
.LBE94:
	.loc 1 217 0
	lds r24,midi_Setting
.LVL488:
	cpse r24,__zero_reg__
	.loc 1 218 0
	call midi_SendActiveSense
.LVL489:
.L300:
	.loc 1 221 0
	sts midiTxLastCmd,__zero_reg__
.L295:
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
	.long	0x20c5
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF226
	.byte	0xc
	.long	.LASF227
	.long	.LASF228
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
	.byte	0x53
	.long	0x112
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0x54
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0x55
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF19
	.byte	0x6
	.byte	0x56
	.long	0xed
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.byte	0xa9
	.long	0x196
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.byte	0xaa
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.byte	0xab
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.byte	0xac
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.byte	0xad
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.byte	0xae
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.byte	0xaf
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0xb0
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0xb1
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x2
	.long	.LASF28
	.byte	0x6
	.byte	0xb2
	.long	0x11d
	.uleb128 0x9
	.byte	0x2
	.byte	0x6
	.byte	0xbe
	.long	0x1c6
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.byte	0xbf
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.byte	0xc0
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF31
	.byte	0x6
	.byte	0xc1
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
	.long	.LASF229
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0xe
	.long	.LASF230
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
	.long	0x1fd1
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
	.long	0x1fde
	.uleb128 0x1d
	.long	.LVL33
	.long	0x1feb
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
	.long	0x1ff8
	.uleb128 0x1f
	.long	.LVL43
	.long	0x1feb
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
	.long	0x2005
	.uleb128 0x14
	.long	.LVL119
	.long	0x2012
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
	.word	0x292
	.byte	0x1
	.long	0x3b
	.long	.LFB44
	.long	.LFE44
	.long	.LLST44
	.byte	0x1
	.long	0xbb9
	.uleb128 0x21
	.long	.LASF106
	.byte	0x1
	.word	0x292
	.long	0x3b
	.long	.LLST45
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.word	0x295
	.long	0x3b
	.long	.LLST46
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x1
	.word	0x296
	.long	0x483
	.long	.LLST47
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x1
	.word	0x297
	.long	0x3b
	.long	.LLST48
	.uleb128 0x1a
	.long	.LASF109
	.byte	0x1
	.word	0x298
	.long	0x3b
	.long	.LLST49
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x299
	.long	0x3b
	.long	.LLST50
	.uleb128 0x1f
	.long	.LVL129
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
	.long	.LASF110
	.byte	0x1
	.word	0x2b5
	.byte	0x1
	.long	0x3b
	.long	.LFB45
	.long	.LFE45
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xc2d
	.uleb128 0x21
	.long	.LASF106
	.byte	0x1
	.word	0x2b5
	.long	0x3b
	.long	.LLST51
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.word	0x2b7
	.long	0x3b
	.long	.LLST52
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x1
	.word	0x2b8
	.long	0x483
	.long	.LLST53
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x1
	.word	0x2b9
	.long	0x3b
	.long	.LLST54
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x110
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2ba
	.long	0x3b
	.long	.LLST55
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF111
	.byte	0x1
	.word	0x2cc
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xc59
	.uleb128 0x21
	.long	.LASF112
	.byte	0x1
	.word	0x2cc
	.long	0x3b
	.long	.LLST56
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF113
	.byte	0x1
	.word	0x23c
	.byte	0x1
	.long	0x3b
	.long	.LFB40
	.long	.LFE40
	.long	.LLST57
	.byte	0x1
	.long	0xd3c
	.uleb128 0x21
	.long	.LASF106
	.byte	0x1
	.word	0x23c
	.long	0x3b
	.long	.LLST58
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.word	0x23e
	.long	0x3b
	.long	.LLST59
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x128
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x1
	.word	0x241
	.long	0x3b
	.long	.LLST60
	.uleb128 0x1a
	.long	.LASF83
	.byte	0x1
	.word	0x242
	.long	0x3b
	.long	.LLST61
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x1
	.word	0x243
	.long	0x483
	.long	.LLST62
	.uleb128 0x22
	.long	.LASF58
	.byte	0x1
	.word	0x252
	.long	0xb8
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x140
	.long	0xd1d
	.uleb128 0x1a
	.long	.LASF116
	.byte	0x1
	.word	0x244
	.long	0x3b
	.long	.LLST63
	.uleb128 0x23
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x1a
	.long	.LASF95
	.byte	0x1
	.word	0x248
	.long	0x3b
	.long	.LLST64
	.uleb128 0x1f
	.long	.LVL163
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
	.long	.LVL156
	.long	0xc2d
	.long	0xd31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL171
	.long	0x5f6
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF117
	.byte	0x1
	.word	0x259
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST65
	.byte	0x1
	.long	0xde9
	.uleb128 0x21
	.long	.LASF118
	.byte	0x1
	.word	0x259
	.long	0x3b
	.long	.LLST66
	.uleb128 0x21
	.long	.LASF106
	.byte	0x1
	.word	0x259
	.long	0x3b
	.long	.LLST67
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x158
	.long	0xdcf
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x1
	.word	0x25c
	.long	0x3b
	.long	.LLST68
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x170
	.long	0xdaa
	.uleb128 0x1a
	.long	.LASF120
	.byte	0x1
	.word	0x25e
	.long	0x3b
	.long	.LLST69
	.byte	0
	.uleb128 0x1d
	.long	.LVL184
	.long	0xc59
	.long	0xdbe
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL185
	.long	0xc2d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL186
	.long	0x201f
	.uleb128 0x1f
	.long	.LVL187
	.long	0x201f
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
	.long	.LASF121
	.byte	0x1
	.word	0x279
	.long	.LFB42
	.long	.LFE42
	.long	.LLST70
	.byte	0x1
	.long	0xe45
	.uleb128 0x23
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x27a
	.long	0x3b
	.long	.LLST71
	.uleb128 0x1d
	.long	.LVL191
	.long	0xc2d
	.long	0xe2e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1f
	.long	.LVL192
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
	.uleb128 0x26
	.byte	0x1
	.long	.LASF122
	.byte	0x1
	.word	0x280
	.byte	0x1
	.long	0x3b
	.long	.LFB43
	.long	.LFE43
	.long	.LLST72
	.byte	0x1
	.long	0xee0
	.uleb128 0x21
	.long	.LASF106
	.byte	0x1
	.word	0x280
	.long	0x3b
	.long	.LLST73
	.uleb128 0x21
	.long	.LASF123
	.byte	0x1
	.word	0x280
	.long	0x3b
	.long	.LLST74
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.word	0x286
	.long	0x3b
	.long	.LLST75
	.uleb128 0x1b
	.long	.LBB54
	.long	.LBE54
	.long	0xebb
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x1
	.word	0x288
	.long	0x483
	.long	.LLST76
	.uleb128 0x14
	.long	.LVL200
	.long	0x9d4
	.byte	0
	.uleb128 0x14
	.long	.LVL196
	.long	0xde9
	.uleb128 0x14
	.long	.LVL197
	.long	0x202c
	.uleb128 0x14
	.long	.LVL204
	.long	0x5ba
	.uleb128 0x14
	.long	.LVL206
	.long	0x2039
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF124
	.byte	0x1
	.word	0x2d3
	.long	.LFB47
	.long	.LFE47
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xf58
	.uleb128 0x1d
	.long	.LVL209
	.long	0x2046
	.long	0xf0e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x1d
	.long	.LVL210
	.long	0x2046
	.long	0xf22
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x14
	.long	.LVL211
	.long	0x2046
	.uleb128 0x14
	.long	.LVL212
	.long	0x2046
	.uleb128 0x1d
	.long	.LVL213
	.long	0x2046
	.long	0xf48
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1f
	.long	.LVL214
	.long	0x2053
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
	.word	0x2e3
	.long	.LFB48
	.long	.LFE48
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xf7c
	.uleb128 0x14
	.long	.LVL215
	.long	0x2060
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF126
	.byte	0x1
	.word	0x2e9
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST77
	.byte	0x1
	.long	0x10f4
	.uleb128 0x21
	.long	.LASF127
	.byte	0x1
	.word	0x2e9
	.long	0x3b
	.long	.LLST78
	.uleb128 0x23
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2eb
	.long	0x3b
	.long	.LLST79
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x190
	.uleb128 0x1a
	.long	.LASF128
	.byte	0x1
	.word	0x2ed
	.long	0x489
	.long	.LLST80
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.word	0x2f3
	.long	0x3b
	.long	.LLST81
	.uleb128 0x1b
	.long	.LBB57
	.long	.LBE57
	.long	0x1032
	.uleb128 0x1a
	.long	.LASF129
	.byte	0x1
	.word	0x302
	.long	0x3b
	.long	.LLST82
	.uleb128 0x1d
	.long	.LVL229
	.long	0x8cb
	.long	0x1014
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL231
	.long	0x8cb
	.long	0x1028
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL234
	.long	0x2046
	.byte	0
	.uleb128 0x1b
	.long	.LBB58
	.long	.LBE58
	.long	0x1081
	.uleb128 0x1a
	.long	.LASF129
	.byte	0x1
	.word	0x306
	.long	0x3b
	.long	.LLST83
	.uleb128 0x1d
	.long	.LVL237
	.long	0x8cb
	.long	0x1063
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL239
	.long	0x8cb
	.long	0x1077
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL242
	.long	0x2046
	.byte	0
	.uleb128 0x14
	.long	.LVL219
	.long	0x206d
	.uleb128 0x14
	.long	.LVL221
	.long	0x2046
	.uleb128 0x1d
	.long	.LVL222
	.long	0x2046
	.long	0x10a7
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
	.long	0x10bb
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL225
	.long	0x2046
	.uleb128 0x1d
	.long	.LVL226
	.long	0x8cb
	.long	0x10d8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL227
	.long	0x2046
	.uleb128 0x1f
	.long	.LVL244
	.long	0x2046
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
	.long	.LASF130
	.byte	0x1
	.word	0x311
	.long	.LFB50
	.long	.LFE50
	.long	.LLST84
	.byte	0x1
	.long	0x1163
	.uleb128 0x23
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x312
	.long	0x3b
	.long	.LLST85
	.uleb128 0x23
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x1a
	.long	.LASF128
	.byte	0x1
	.word	0x314
	.long	0x489
	.long	.LLST86
	.uleb128 0x1a
	.long	.LASF131
	.byte	0x1
	.word	0x315
	.long	0x3b
	.long	.LLST87
	.uleb128 0x14
	.long	.LVL250
	.long	0x206d
	.uleb128 0x14
	.long	.LVL258
	.long	0x2053
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF132
	.byte	0x1
	.word	0x31f
	.long	.LFB51
	.long	.LFE51
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x11f8
	.uleb128 0x1a
	.long	.LASF133
	.byte	0x1
	.word	0x320
	.long	0x11f8
	.long	.LLST88
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x1a8
	.long	0x11a5
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x323
	.long	0x3b
	.long	.LLST89
	.byte	0
	.uleb128 0x14
	.long	.LVL265
	.long	0x207a
	.uleb128 0x1d
	.long	.LVL266
	.long	0x1feb
	.long	0x11d0
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
	.long	.LVL267
	.long	0x2087
	.uleb128 0x1f
	.long	.LVL268
	.long	0x1feb
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
	.long	.LASF134
	.byte	0x1
	.word	0x347
	.long	.LFB52
	.long	.LFE52
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x125c
	.uleb128 0x1b
	.long	.LBB64
	.long	.LBE64
	.long	0x1234
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x349
	.long	0x3b
	.long	.LLST90
	.byte	0
	.uleb128 0x14
	.long	.LVL272
	.long	0x2094
	.uleb128 0x1f
	.long	.LVL273
	.long	0x1feb
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
	.long	.LASF135
	.byte	0x1
	.word	0x383
	.byte	0x1
	.long	0x1f6
	.long	.LFB54
	.long	.LFE54
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x12a6
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x383
	.long	0x3b
	.long	.LLST91
	.uleb128 0x2a
	.long	.LASF33
	.byte	0x1
	.word	0x383
	.long	0x3b
	.byte	0x1
	.byte	0x66
	.uleb128 0x22
	.long	.LASF73
	.byte	0x1
	.word	0x384
	.long	0x1f6
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF136
	.byte	0x1
	.word	0x391
	.long	.LFB55
	.long	.LFE55
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1315
	.uleb128 0x23
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x392
	.long	0x3b
	.long	.LLST92
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x1a
	.long	.LASF137
	.byte	0x1
	.word	0x393
	.long	0x3b
	.long	.LLST93
	.uleb128 0x1a
	.long	.LASF138
	.byte	0x1
	.word	0x394
	.long	0x3b
	.long	.LLST94
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x1a
	.long	.LASF139
	.byte	0x1
	.word	0x395
	.long	0x3b
	.long	.LLST95
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF140
	.byte	0x1
	.word	0x3a9
	.long	.LFB56
	.long	.LFE56
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1394
	.uleb128 0x1b
	.long	.LBB70
	.long	.LBE70
	.long	0x135f
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x3aa
	.long	0x29
	.long	.LLST96
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1d8
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.word	0x3ac
	.long	0x29
	.long	.LLST97
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL293
	.long	0x20a1
	.uleb128 0x1d
	.long	.LVL294
	.long	0x1feb
	.long	0x138a
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
	.long	.LVL295
	.long	0x12a6
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF141
	.byte	0x1
	.word	0x3d5
	.byte	0x1
	.long	0x256
	.long	.LFB57
	.long	.LFE57
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1408
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x3d5
	.long	0x3b
	.long	.LLST98
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x3d5
	.long	0x3b
	.long	.LLST99
	.uleb128 0x22
	.long	.LASF73
	.byte	0x1
	.word	0x3d7
	.long	0x256
	.uleb128 0x23
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.word	0x3da
	.long	0x1408
	.long	.LLST100
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x3dc
	.long	0x3b
	.long	.LLST101
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x294
	.uleb128 0x20
	.byte	0x1
	.long	.LASF142
	.byte	0x1
	.word	0x3ec
	.byte	0x1
	.long	0x226
	.long	.LFB58
	.long	.LFE58
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1482
	.uleb128 0x21
	.long	.LASF38
	.byte	0x1
	.word	0x3ec
	.long	0x3b
	.long	.LLST102
	.uleb128 0x22
	.long	.LASF73
	.byte	0x1
	.word	0x3f0
	.long	0x226
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.word	0x3f1
	.long	0x1408
	.long	.LLST103
	.uleb128 0x1a
	.long	.LASF35
	.byte	0x1
	.word	0x3f3
	.long	0x3b
	.long	.LLST104
	.uleb128 0x23
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x3f5
	.long	0x3b
	.long	.LLST105
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF143
	.byte	0x1
	.word	0x406
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST106
	.byte	0x1
	.long	0x1591
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x406
	.long	0x3b
	.long	.LLST107
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x406
	.long	0x3b
	.long	.LLST108
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.word	0x406
	.long	0x3b
	.long	.LLST109
	.uleb128 0x22
	.long	.LASF144
	.byte	0x1
	.word	0x407
	.long	0x256
	.uleb128 0x1a
	.long	.LASF145
	.byte	0x1
	.word	0x40a
	.long	0x3b
	.long	.LLST110
	.uleb128 0x1a
	.long	.LASF95
	.byte	0x1
	.word	0x40b
	.long	0x3b
	.long	.LLST111
	.uleb128 0x1b
	.long	.LBB75
	.long	.LBE75
	.long	0x151c
	.uleb128 0x22
	.long	.LASF146
	.byte	0x1
	.word	0x410
	.long	0xe2
	.uleb128 0x14
	.long	.LVL319
	.long	0x20ae
	.byte	0
	.uleb128 0x1d
	.long	.LVL315
	.long	0x1394
	.long	0x1536
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
	.long	.LVL321
	.long	0x2012
	.long	0x1550
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
	.long	.LVL322
	.long	0x2005
	.long	0x156a
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
	.long	.LVL323
	.long	0x201f
	.uleb128 0x1d
	.long	.LVL324
	.long	0x201f
	.long	0x1587
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL325
	.long	0x201f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF147
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST112
	.byte	0x1
	.long	0x1663
	.uleb128 0x16
	.long	.LASF118
	.byte	0x1
	.byte	0x91
	.long	0x3b
	.long	.LLST113
	.uleb128 0x11
	.long	.LASF148
	.byte	0x1
	.byte	0x92
	.long	0x3b
	.long	.LLST114
	.uleb128 0x23
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0x94
	.long	0x3b
	.long	.LLST115
	.uleb128 0x23
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0x98
	.long	0x3b
	.long	.LLST116
	.uleb128 0x11
	.long	.LASF149
	.byte	0x1
	.byte	0x9d
	.long	0x3b
	.long	.LLST117
	.uleb128 0x1b
	.long	.LBB78
	.long	.LBE78
	.long	0x1633
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.long	0x3b
	.long	.LLST118
	.uleb128 0x1f
	.long	.LVL338
	.long	0x1482
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL343
	.long	0x201f
	.uleb128 0x1d
	.long	.LVL344
	.long	0x201f
	.long	0x1650
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL345
	.long	0x201f
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
	.long	.LASF150
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST119
	.byte	0x1
	.long	0x1701
	.uleb128 0x16
	.long	.LASF35
	.byte	0x1
	.byte	0xad
	.long	0x3b
	.long	.LLST120
	.uleb128 0x11
	.long	.LASF149
	.byte	0x1
	.byte	0xb5
	.long	0x3b
	.long	.LLST121
	.uleb128 0x1b
	.long	.LBB79
	.long	.LBE79
	.long	0x16d4
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0xb0
	.long	0x3b
	.long	.LLST122
	.uleb128 0x1f
	.long	.LVL352
	.long	0x1482
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
	.long	.LVL357
	.long	0x201f
	.uleb128 0x1d
	.long	.LVL358
	.long	0x201f
	.long	0x16f1
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL359
	.long	0x201f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF151
	.byte	0x1
	.byte	0xbf
	.long	.LFB25
	.long	.LFE25
	.long	.LLST123
	.byte	0x1
	.long	0x1744
	.uleb128 0x23
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0xc0
	.long	0x3b
	.long	.LLST124
	.uleb128 0x1f
	.long	.LVL363
	.long	0x1663
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
	.long	.LASF152
	.byte	0x1
	.byte	0xc8
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1767
	.uleb128 0x14
	.long	.LVL366
	.long	0x1701
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF153
	.byte	0x1
	.word	0x35b
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST125
	.byte	0x1
	.long	0x1855
	.uleb128 0x21
	.long	.LASF118
	.byte	0x1
	.word	0x35b
	.long	0x3b
	.long	.LLST126
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x35b
	.long	0x3b
	.long	.LLST127
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.word	0x35b
	.long	0x3b
	.long	.LLST128
	.uleb128 0x1a
	.long	.LASF154
	.byte	0x1
	.word	0x35d
	.long	0x3b
	.long	.LLST129
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x1f0
	.long	0x182e
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x35e
	.long	0x3b
	.long	.LLST130
	.uleb128 0x23
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x1a
	.long	.LASF155
	.byte	0x1
	.word	0x361
	.long	0x29
	.long	.LLST131
	.uleb128 0x23
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x1a
	.long	.LASF35
	.byte	0x1
	.word	0x364
	.long	0x3b
	.long	.LLST132
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x1
	.word	0x365
	.long	0x3b
	.long	.LLST133
	.uleb128 0x1f
	.long	.LVL376
	.long	0x1482
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
	.long	.LVL382
	.long	0x201f
	.uleb128 0x1d
	.long	.LVL383
	.long	0x201f
	.long	0x184b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL384
	.long	0x201f
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF157
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
	.long	0x1938
	.uleb128 0x16
	.long	.LASF158
	.byte	0x1
	.byte	0xf5
	.long	0x3b
	.long	.LLST134
	.uleb128 0x1b
	.long	.LBB85
	.long	.LBE85
	.long	0x18d2
	.uleb128 0x11
	.long	.LASF159
	.byte	0x1
	.byte	0xfd
	.long	0x3b
	.long	.LLST135
	.uleb128 0x11
	.long	.LASF160
	.byte	0x1
	.byte	0xfd
	.long	0x3b
	.long	.LLST136
	.uleb128 0x2d
	.long	0x501
	.long	.LBB86
	.long	.LBE86
	.byte	0x1
	.byte	0xfd
	.uleb128 0x2e
	.long	0x50e
	.long	.LBB88
	.long	.LBE88
	.byte	0x1
	.byte	0xfd
	.uleb128 0x2f
	.long	0x51b
	.long	.LLST137
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LBB90
	.long	.LBE90
	.long	0x192e
	.uleb128 0x1a
	.long	.LASF118
	.byte	0x1
	.word	0x12c
	.long	0x3b
	.long	.LLST138
	.uleb128 0x1a
	.long	.LASF161
	.byte	0x1
	.word	0x12d
	.long	0x3b
	.long	.LLST139
	.uleb128 0x1d
	.long	.LVL416
	.long	0x1767
	.long	0x1912
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL419
	.long	0x1767
	.uleb128 0x14
	.long	.LVL421
	.long	0x1591
	.uleb128 0x14
	.long	.LVL423
	.long	0xd3c
	.byte	0
	.uleb128 0x14
	.long	.LVL399
	.long	0x62f
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF162
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
	.long	0x19b2
	.uleb128 0x21
	.long	.LASF163
	.byte	0x1
	.word	0x151
	.long	0x3b
	.long	.LLST140
	.uleb128 0x1a
	.long	.LASF118
	.byte	0x1
	.word	0x155
	.long	0x3b
	.long	.LLST141
	.uleb128 0x1a
	.long	.LASF161
	.byte	0x1
	.word	0x156
	.long	0x3b
	.long	.LLST142
	.uleb128 0x1d
	.long	.LVL428
	.long	0x1767
	.long	0x1996
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL431
	.long	0x1767
	.uleb128 0x14
	.long	.LVL433
	.long	0x1591
	.uleb128 0x14
	.long	.LVL437
	.long	0xd3c
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF164
	.byte	0x1
	.word	0x42e
	.byte	0x1
	.long	.LFB60
	.long	.LFE60
	.long	.LLST143
	.byte	0x1
	.long	0x1c2f
	.uleb128 0x21
	.long	.LASF165
	.byte	0x1
	.word	0x42e
	.long	0xe2
	.long	.LLST144
	.uleb128 0x1a
	.long	.LASF166
	.byte	0x1
	.word	0x430
	.long	0x3b
	.long	.LLST145
	.uleb128 0x1a
	.long	.LASF167
	.byte	0x1
	.word	0x431
	.long	0x3b
	.long	.LLST146
	.uleb128 0x1a
	.long	.LASF168
	.byte	0x1
	.word	0x432
	.long	0x3b
	.long	.LLST147
	.uleb128 0x1a
	.long	.LASF47
	.byte	0x1
	.word	0x433
	.long	0x226
	.long	.LLST148
	.uleb128 0x1a
	.long	.LASF169
	.byte	0x1
	.word	0x434
	.long	0x1f6
	.long	.LLST149
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x208
	.long	0x1c25
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x437
	.long	0x3b
	.long	.LLST150
	.uleb128 0x1b
	.long	.LBB92
	.long	.LBE92
	.long	0x1c00
	.uleb128 0x1a
	.long	.LASF161
	.byte	0x1
	.word	0x450
	.long	0x3b
	.long	.LLST151
	.uleb128 0x1d
	.long	.LVL445
	.long	0x125c
	.long	0x1a7b
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
	.long	.LVL447
	.long	0x201f
	.uleb128 0x1d
	.long	.LVL448
	.long	0x201f
	.long	0x1a98
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL449
	.long	0x201f
	.uleb128 0x1d
	.long	.LVL453
	.long	0x1482
	.long	0x1ac0
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
	.long	.LVL454
	.long	0x1482
	.long	0x1adf
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
	.long	.LVL455
	.long	0x1482
	.long	0x1afe
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
	.long	.LVL456
	.long	0x1482
	.long	0x1b17
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
	.long	.LVL457
	.long	0x1482
	.long	0x1b36
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
	.long	.LVL458
	.long	0x1482
	.long	0x1b55
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
	.long	.LVL459
	.long	0x1482
	.long	0x1b6e
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
	.long	.LVL460
	.long	0x1482
	.long	0x1b8d
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
	.long	.LVL461
	.long	0x1482
	.long	0x1bac
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
	.long	.LVL462
	.long	0x1482
	.long	0x1bc5
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
	.long	.LVL463
	.long	0x1482
	.long	0x1be4
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
	.long	.LVL464
	.long	0x1482
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
	.long	.LVL443
	.long	0x140e
	.long	0x1c14
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL465
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
	.long	.LVL439
	.long	0x20bb
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF170
	.byte	0x1
	.word	0x487
	.long	.LFB61
	.long	.LFE61
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1c76
	.uleb128 0x14
	.long	.LVL477
	.long	0x201f
	.uleb128 0x1d
	.long	.LVL478
	.long	0x201f
	.long	0x1c66
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL479
	.long	0x201f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF171
	.byte	0x1
	.word	0x497
	.long	.LFB62
	.long	.LFE62
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1ca1
	.uleb128 0x1f
	.long	.LVL480
	.long	0x201f
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
	.long	.LASF172
	.byte	0x1
	.byte	0xd3
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1d18
	.uleb128 0x1b
	.long	.LBB94
	.long	.LBE94
	.long	0x1d0e
	.uleb128 0x11
	.long	.LASF159
	.byte	0x1
	.byte	0xd8
	.long	0x3b
	.long	.LLST152
	.uleb128 0x11
	.long	.LASF160
	.byte	0x1
	.byte	0xd8
	.long	0x3b
	.long	.LLST153
	.uleb128 0x2d
	.long	0x501
	.long	.LBB95
	.long	.LBE95
	.byte	0x1
	.byte	0xd8
	.uleb128 0x2e
	.long	0x50e
	.long	.LBB97
	.long	.LBE97
	.byte	0x1
	.byte	0xd8
	.uleb128 0x2f
	.long	0x51b
	.long	.LLST154
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL489
	.long	0x1c76
	.byte	0
	.uleb128 0x7
	.long	0x1d28
	.long	0x1d28
	.uleb128 0x8
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x30
	.long	0x112
	.uleb128 0x31
	.long	.LASF173
	.byte	0x6
	.byte	0x57
	.long	0x1d3a
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	0x1d18
	.uleb128 0x7
	.long	0x196
	.long	0x1d4f
	.uleb128 0x8
	.long	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x31
	.long	.LASF174
	.byte	0x6
	.byte	0xb3
	.long	0x1d3f
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	.LASF175
	.byte	0x6
	.byte	0xba
	.long	0x1d69
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	0x3b
	.uleb128 0x31
	.long	.LASF176
	.byte	0x6
	.byte	0xc3
	.long	0x1c6
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0x3b
	.long	0x1d8b
	.uleb128 0x8
	.long	0x82
	.byte	0x2
	.byte	0
	.uleb128 0x31
	.long	.LASF177
	.byte	0x8
	.byte	0x35
	.long	0x1d7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	.LASF178
	.byte	0x8
	.byte	0xa1
	.long	0x1d69
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.long	.LASF179
	.byte	0x1
	.byte	0x2d
	.long	0x495
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	manualMap
	.uleb128 0x7
	.long	0x2c4
	.long	0x1dc7
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x32
	.long	.LASF180
	.byte	0x1
	.byte	0x2e
	.long	0x1db7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ManualNoteRange
	.uleb128 0x32
	.long	.LASF181
	.byte	0x1
	.byte	0x2f
	.long	0x4ab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiInMap
	.uleb128 0x32
	.long	.LASF182
	.byte	0x1
	.byte	0x37
	.long	0x340
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiThrough
	.uleb128 0x32
	.long	.LASF183
	.byte	0x1
	.byte	0x30
	.long	0x4c1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiOutMap
	.uleb128 0x32
	.long	.LASF184
	.byte	0x1
	.byte	0x34
	.long	0x4d1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerMap
	.uleb128 0x32
	.long	.LASF185
	.byte	0x1
	.byte	0x35
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerCount
	.uleb128 0x32
	.long	.LASF186
	.byte	0x1
	.byte	0x36
	.long	0x4e1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	programMap
	.uleb128 0x32
	.long	.LASF187
	.byte	0x1
	.byte	0x38
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_RegisterChanged
	.uleb128 0x33
	.long	.LASF188
	.byte	0x1
	.word	0x2df
	.long	0x4f1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	reg_Out
	.uleb128 0x33
	.long	.LASF189
	.byte	0x1
	.word	0x2c9
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	prog_Display
	.uleb128 0x33
	.long	.LASF190
	.byte	0x1
	.word	0x2ca
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	prog_UpdDisplay
	.uleb128 0x32
	.long	.LASF191
	.byte	0x1
	.byte	0x31
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxActivceSensing
	.uleb128 0x32
	.long	.LASF192
	.byte	0x1
	.byte	0x32
	.long	0x478
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Setting
	.uleb128 0x32
	.long	.LASF193
	.byte	0x1
	.byte	0x82
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutNote
	.uleb128 0x32
	.long	.LASF194
	.byte	0x1
	.byte	0x83
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutManual
	.uleb128 0x32
	.long	.LASF195
	.byte	0x1
	.byte	0x84
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInNote
	.uleb128 0x32
	.long	.LASF196
	.byte	0x1
	.byte	0x85
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInChannel
	.uleb128 0x32
	.long	.LASF197
	.byte	0x1
	.byte	0x86
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInManual
	.uleb128 0x32
	.long	.LASF198
	.byte	0x1
	.byte	0x87
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastProgram
	.uleb128 0x7
	.long	0x3b
	.long	0x1f30
	.uleb128 0x8
	.long	0x82
	.byte	0xb
	.byte	0
	.uleb128 0x32
	.long	.LASF199
	.byte	0x1
	.byte	0x1d
	.long	0x1f20
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Couplers
	.uleb128 0x32
	.long	.LASF200
	.byte	0x1
	.byte	0x1e
	.long	0x1f54
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cplInfo
	.uleb128 0x34
	.uleb128 0x7
	.long	0x3b
	.long	0x1f65
	.uleb128 0x8
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x32
	.long	.LASF201
	.byte	0x9
	.byte	0xaf
	.long	0x1f55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x32
	.long	.LASF202
	.byte	0x1
	.byte	0x33
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiEEPromLoadError
	.uleb128 0x32
	.long	.LASF203
	.byte	0x1
	.byte	0x7d
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastCommand
	.uleb128 0x32
	.long	.LASF204
	.byte	0x1
	.byte	0x7e
	.long	0x3de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByte
	.uleb128 0x32
	.long	.LASF205
	.byte	0x1
	.byte	0x7f
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteCount
	.uleb128 0x32
	.long	.LASF206
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
	.long	.LASF207
	.long	.LASF207
	.byte	0x6
	.byte	0x5e
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF208
	.long	.LASF208
	.byte	0xa
	.byte	0x24
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF209
	.long	.LASF209
	.byte	0xb
	.byte	0x32
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF210
	.long	.LASF210
	.byte	0xa
	.byte	0x26
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF211
	.long	.LASF211
	.byte	0x6
	.byte	0xda
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF212
	.long	.LASF212
	.byte	0x6
	.byte	0xdb
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
	.byte	0x6
	.byte	0xd1
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF215
	.long	.LASF215
	.byte	0xa
	.byte	0x31
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF216
	.long	.LASF216
	.byte	0xc
	.byte	0x7f
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF217
	.long	.LASF217
	.byte	0x4
	.byte	0x2d
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF218
	.long	.LASF218
	.byte	0xa
	.byte	0x25
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF219
	.long	.LASF219
	.byte	0xc
	.byte	0x7e
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF220
	.long	.LASF220
	.byte	0xa
	.byte	0x20
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF221
	.long	.LASF221
	.byte	0xa
	.byte	0x28
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF222
	.long	.LASF222
	.byte	0xa
	.byte	0x21
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF223
	.long	.LASF223
	.byte	0xa
	.byte	0x1f
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF224
	.long	.LASF224
	.byte	0x5
	.byte	0x46
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF225
	.long	.LASF225
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
	.long	.LFB44
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
	.long	.LFE44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST45:
	.long	.LVL121
	.long	.LVL123
	.word	0x1
	.byte	0x68
	.long	.LVL123
	.long	.LFE44
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL122
	.long	.LVL125
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL125
	.long	.LVL140
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST47:
	.long	.LVL124
	.long	.LVL126
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL126
	.long	.LVL128
	.word	0x3
	.byte	0x80
	.sleb128 1
	.byte	0x9f
	.long	.LVL128
	.long	.LVL139
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST48:
	.long	.LVL124
	.long	.LVL125
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL125
	.long	.LVL137
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST49:
	.long	.LVL129
	.long	.LVL132
	.word	0x1
	.byte	0x68
	.long	.LVL133
	.long	.LVL134
	.word	0x1
	.byte	0x68
	.long	.LVL135
	.long	.LVL136
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST50:
	.long	.LVL124
	.long	.LVL125
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL125
	.long	.LVL138
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST51:
	.long	.LVL141
	.long	.LVL142
	.word	0x1
	.byte	0x68
	.long	.LVL142
	.long	.LFE45
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST52:
	.long	.LVL141
	.long	.LVL144
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL144
	.long	.LFE45
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST53:
	.long	.LVL143
	.long	.LVL145
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL145
	.long	.LVL147
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL147
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
.LLST54:
	.long	.LVL143
	.long	.LVL144
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL144
	.long	.LFE45
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST55:
	.long	.LVL143
	.long	.LVL144
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL144
	.long	.LFE45
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST56:
	.long	.LVL151
	.long	.LVL152
	.word	0x1
	.byte	0x68
	.long	.LVL152
	.long	.LVL153
	.word	0x5
	.byte	0x3
	.long	prog_Display
	.long	.LVL153
	.long	.LFE46
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST57:
	.long	.LFB40
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI24
	.long	.LFE40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST58:
	.long	.LVL154
	.long	.LVL156-1
	.word	0x1
	.byte	0x68
	.long	.LVL156-1
	.long	.LVL170
	.word	0x1
	.byte	0x5e
	.long	.LVL170
	.long	.LVL172
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL172
	.long	.LVL173
	.word	0x1
	.byte	0x68
	.long	.LVL173
	.long	.LFE40
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST59:
	.long	.LVL155
	.long	.LVL158
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL158
	.long	.LVL172
	.word	0x1
	.byte	0x60
	.long	.LVL172
	.long	.LVL173
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL173
	.long	.LVL174
	.word	0x1
	.byte	0x60
	.long	.LVL174
	.long	.LFE40
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST60:
	.long	.LVL160
	.long	.LVL168
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST61:
	.long	.LVL156
	.long	.LVL158
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL158
	.long	.LVL172
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST62:
	.long	.LVL157
	.long	.LVL159
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL159
	.long	.LVL168
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL168
	.long	.LVL169
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST63:
	.long	.LVL157
	.long	.LVL158
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL158
	.long	.LVL172
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST64:
	.long	.LVL160
	.long	.LVL161
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL161
	.long	.LVL168
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST65:
	.long	.LFB41
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI25
	.long	.LFE41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST66:
	.long	.LVL175
	.long	.LVL180
	.word	0x1
	.byte	0x68
	.long	.LVL180
	.long	.LVL181
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL181
	.long	.LVL182
	.word	0x1
	.byte	0x68
	.long	.LVL182
	.long	.LFE41
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST67:
	.long	.LVL175
	.long	.LVL184-1
	.word	0x1
	.byte	0x66
	.long	.LVL184-1
	.long	.LVL188
	.word	0x1
	.byte	0x6c
	.long	.LVL188
	.long	.LFE41
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST68:
	.long	.LVL182
	.long	.LVL183
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST69:
	.long	.LVL176
	.long	.LVL178
	.word	0x1
	.byte	0x69
	.long	.LVL179
	.long	.LVL184-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST70:
	.long	.LFB42
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI26
	.long	.LFE42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST71:
	.long	.LVL189
	.long	.LVL190
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL190
	.long	.LVL194
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST72:
	.long	.LFB43
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
	.long	.LFE43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST73:
	.long	.LVL195
	.long	.LVL196-1
	.word	0x1
	.byte	0x68
	.long	.LVL196-1
	.long	.LVL205
	.word	0x1
	.byte	0x6c
	.long	.LVL205
	.long	.LFE43
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST74:
	.long	.LVL195
	.long	.LVL196-1
	.word	0x1
	.byte	0x66
	.long	.LVL196-1
	.long	.LVL208
	.word	0x1
	.byte	0x60
	.long	.LVL208
	.long	.LFE43
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST75:
	.long	.LVL197
	.long	.LVL201
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL201
	.long	.LVL202
	.word	0x1
	.byte	0x61
	.long	.LVL202
	.long	.LVL203
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL203
	.long	.LVL207
	.word	0x1
	.byte	0x61
	.long	.LVL207
	.long	.LFE43
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST76:
	.long	.LVL198
	.long	.LVL199
	.word	0x9
	.byte	0x88
	.sleb128 0
	.byte	0x3
	.long	programMap
	.byte	0x22
	.byte	0x9f
	.long	.LVL199
	.long	.LVL200-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
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
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI36
	.long	.LFE49
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST78:
	.long	.LVL216
	.long	.LVL218
	.word	0x1
	.byte	0x68
	.long	.LVL218
	.long	.LVL246
	.word	0x1
	.byte	0x5f
	.long	.LVL246
	.long	.LFE49
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST79:
	.long	.LVL217
	.long	.LVL218
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL218
	.long	.LVL247
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST80:
	.long	.LVL220
	.long	.LVL221-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST81:
	.long	.LVL223
	.long	.LVL228
	.word	0x1
	.byte	0x6c
	.long	.LVL228
	.long	.LVL235
	.word	0x1
	.byte	0x6d
	.long	.LVL235
	.long	.LVL236
	.word	0x1
	.byte	0x6c
	.long	.LVL236
	.long	.LVL243
	.word	0x1
	.byte	0x6d
	.long	.LVL243
	.long	.LVL245
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST82:
	.long	.LVL230
	.long	.LVL232
	.word	0x1
	.byte	0x6c
	.long	.LVL232
	.long	.LVL233
	.word	0x1
	.byte	0x68
	.long	.LVL233
	.long	.LVL234-1
	.word	0x3
	.byte	0x88
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST83:
	.long	.LVL238
	.long	.LVL240
	.word	0x1
	.byte	0x6c
	.long	.LVL240
	.long	.LVL241
	.word	0x1
	.byte	0x68
	.long	.LVL241
	.long	.LVL242-1
	.word	0x3
	.byte	0x88
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST84:
	.long	.LFB50
	.long	.LCFI37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI37
	.long	.LCFI38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI38
	.long	.LCFI39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI39
	.long	.LFE50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST85:
	.long	.LVL248
	.long	.LVL249
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL249
	.long	.LVL260
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST86:
	.long	.LVL251
	.long	.LVL255
	.word	0x1
	.byte	0x62
	.long	.LVL255
	.long	.LVL258-1
	.word	0x2
	.byte	0x8c
	.sleb128 1
	.long	0
	.long	0
.LLST87:
	.long	.LVL252
	.long	.LVL253
	.word	0x1
	.byte	0x68
	.long	.LVL253
	.long	.LVL254
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
	.long	.LVL254
	.long	.LVL256
	.word	0x1
	.byte	0x68
	.long	.LVL256
	.long	.LVL257
	.word	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST88:
	.long	.LVL262
	.long	.LVL265-1
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
	.long	.LVL261
	.long	.LVL262
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	.LVL262
	.long	.LVL265-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST90:
	.long	.LVL269
	.long	.LVL270
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL270
	.long	.LVL272-1
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST91:
	.long	.LVL274
	.long	.LVL275
	.word	0x1
	.byte	0x68
	.long	.LVL275
	.long	.LVL276
	.word	0x1
	.byte	0x6e
	.long	.LVL276
	.long	.LFE54
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST92:
	.long	.LVL277
	.long	.LVL278
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL278
	.long	.LFE55
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST93:
	.long	.LVL278
	.long	.LVL284
	.word	0x1
	.byte	0x65
	.long	.LVL285
	.long	.LVL286
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST94:
	.long	.LVL278
	.long	.LVL284
	.word	0x1
	.byte	0x66
	.long	.LVL285
	.long	.LVL286
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST95:
	.long	.LVL278
	.long	.LVL279
	.word	0x1
	.byte	0x64
	.long	.LVL279
	.long	.LVL280
	.word	0x1
	.byte	0x62
	.long	.LVL280
	.long	.LVL284
	.word	0x1
	.byte	0x64
	.long	.LVL285
	.long	.LVL286
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST96:
	.long	.LVL287
	.long	.LVL288
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL288
	.long	.LVL293-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST97:
	.long	.LVL288
	.long	.LVL290
	.word	0x1
	.byte	0x62
	.long	.LVL291
	.long	.LVL292
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST98:
	.long	.LVL296
	.long	.LVL298
	.word	0x1
	.byte	0x68
	.long	.LVL298
	.long	.LFE57
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST99:
	.long	.LVL296
	.long	.LVL299
	.word	0x1
	.byte	0x66
	.long	.LVL299
	.long	.LVL301
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL301
	.long	.LFE57
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST100:
	.long	.LVL297
	.long	.LVL304
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST101:
	.long	.LVL297
	.long	.LVL298
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL298
	.long	.LVL300
	.word	0x1
	.byte	0x68
	.long	.LVL301
	.long	.LVL304
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST102:
	.long	.LVL305
	.long	.LVL308
	.word	0x1
	.byte	0x68
	.long	.LVL308
	.long	.LVL309
	.word	0x1
	.byte	0x66
	.long	.LVL309
	.long	.LVL313
	.word	0x1
	.byte	0x68
	.long	.LVL313
	.long	.LFE58
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST103:
	.long	.LVL306
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
.LLST104:
	.long	.LVL305
	.long	.LVL306
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL306
	.long	.LFE58
	.word	0x1
	.byte	0x6b
	.long	0
	.long	0
.LLST105:
	.long	.LVL306
	.long	.LVL307
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL307
	.long	.LFE58
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST106:
	.long	.LFB59
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
	.long	.LFE59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST107:
	.long	.LVL314
	.long	.LVL315-1
	.word	0x1
	.byte	0x68
	.long	.LVL315-1
	.long	.LVL327
	.word	0x1
	.byte	0x6c
	.long	.LVL327
	.long	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST108:
	.long	.LVL314
	.long	.LVL315-1
	.word	0x1
	.byte	0x66
	.long	.LVL315-1
	.long	.LVL329
	.word	0x1
	.byte	0x60
	.long	.LVL329
	.long	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST109:
	.long	.LVL314
	.long	.LVL315-1
	.word	0x1
	.byte	0x64
	.long	.LVL315-1
	.long	.LVL326
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST110:
	.long	.LVL316
	.long	.LVL330
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST111:
	.long	.LVL317
	.long	.LVL328
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST112:
	.long	.LFB23
	.long	.LCFI46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI46
	.long	.LCFI47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI47
	.long	.LCFI48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI48
	.long	.LCFI49
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI49
	.long	.LCFI50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI50
	.long	.LCFI51
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI51
	.long	.LCFI52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI52
	.long	.LCFI53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI53
	.long	.LCFI54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI54
	.long	.LFE23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST113:
	.long	.LVL331
	.long	.LVL333
	.word	0x1
	.byte	0x68
	.long	.LVL333
	.long	.LVL348
	.word	0x1
	.byte	0x5c
	.long	.LVL348
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST114:
	.long	.LVL332
	.long	.LVL333
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL333
	.long	.LVL347
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST115:
	.long	.LVL334
	.long	.LVL346
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST116:
	.long	.LVL335
	.long	.LVL337
	.word	0x1
	.byte	0x66
	.long	.LVL337
	.long	.LVL340
	.word	0x1
	.byte	0x5e
	.long	.LVL340
	.long	.LVL343-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST117:
	.long	.LVL341
	.long	.LVL342
	.word	0x1
	.byte	0x68
	.long	.LVL342
	.long	.LVL343-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST118:
	.long	.LVL336
	.long	.LVL345
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST119:
	.long	.LFB24
	.long	.LCFI55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI55
	.long	.LCFI56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI56
	.long	.LCFI57
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI57
	.long	.LCFI58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI58
	.long	.LFE24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST120:
	.long	.LVL349
	.long	.LVL350
	.word	0x1
	.byte	0x68
	.long	.LVL350
	.long	.LVL354
	.word	0x1
	.byte	0x60
	.long	.LVL354
	.long	.LVL360
	.word	0x1
	.byte	0x6c
	.long	.LVL360
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST121:
	.long	.LVL355
	.long	.LVL356
	.word	0x1
	.byte	0x68
	.long	.LVL356
	.long	.LVL357-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST122:
	.long	.LVL351
	.long	.LVL354
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST123:
	.long	.LFB25
	.long	.LCFI59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI59
	.long	.LFE25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST124:
	.long	.LVL361
	.long	.LVL362
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL362
	.long	.LVL365
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST125:
	.long	.LFB53
	.long	.LCFI60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI60
	.long	.LCFI61
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI61
	.long	.LCFI62
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI62
	.long	.LCFI63
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI63
	.long	.LFE53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST126:
	.long	.LVL367
	.long	.LVL368
	.word	0x1
	.byte	0x68
	.long	.LVL368
	.long	.LVL370
	.word	0x1
	.byte	0x6d
	.long	.LVL370
	.long	.LVL375
	.word	0x1
	.byte	0x64
	.long	.LVL375
	.long	.LVL385
	.word	0x1
	.byte	0x6d
	.long	.LVL385
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
.LLST127:
	.long	.LVL367
	.long	.LVL369
	.word	0x1
	.byte	0x66
	.long	.LVL369
	.long	.LVL388
	.word	0x1
	.byte	0x60
	.long	.LVL388
	.long	.LFE53
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST128:
	.long	.LVL367
	.long	.LVL369
	.word	0x1
	.byte	0x64
	.long	.LVL369
	.long	.LVL387
	.word	0x1
	.byte	0x61
	.long	.LVL387
	.long	.LFE53
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST129:
	.long	.LVL368
	.long	.LVL369
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL369
	.long	.LVL373
	.word	0x1
	.byte	0x69
	.long	.LVL376
	.long	.LVL377
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL377
	.long	.LVL379
	.word	0x1
	.byte	0x69
	.long	.LVL380
	.long	.LVL381
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST130:
	.long	.LVL368
	.long	.LVL369
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL369
	.long	.LVL370
	.word	0x1
	.byte	0x6c
	.long	.LVL370
	.long	.LVL376-1
	.word	0x1
	.byte	0x62
	.long	.LVL376-1
	.long	.LVL386
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST131:
	.long	.LVL371
	.long	.LVL374
	.word	0x1
	.byte	0x66
	.long	.LVL374
	.long	.LVL376-1
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST132:
	.long	.LVL372
	.long	.LVL376-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST133:
	.long	.LVL374
	.long	.LVL376-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST134:
	.long	.LVL389
	.long	.LVL390
	.word	0x1
	.byte	0x68
	.long	.LVL390
	.long	.LVL398
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL398
	.long	.LVL399-1
	.word	0x1
	.byte	0x68
	.long	.LVL399-1
	.long	.LVL400
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL400
	.long	.LVL401
	.word	0x1
	.byte	0x68
	.long	.LVL401
	.long	.LVL402
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL402
	.long	.LVL403
	.word	0x1
	.byte	0x68
	.long	.LVL403
	.long	.LVL404
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL404
	.long	.LVL405
	.word	0x1
	.byte	0x68
	.long	.LVL405
	.long	.LVL406
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL406
	.long	.LVL407
	.word	0x1
	.byte	0x68
	.long	.LVL407
	.long	.LVL408
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL408
	.long	.LVL409
	.word	0x1
	.byte	0x68
	.long	.LVL409
	.long	.LVL410
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL410
	.long	.LVL411
	.word	0x1
	.byte	0x68
	.long	.LVL411
	.long	.LVL412
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL412
	.long	.LVL413
	.word	0x1
	.byte	0x68
	.long	.LVL413
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST135:
	.long	.LVL391
	.long	.LVL397
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST136:
	.long	.LVL392
	.long	.LVL393
	.word	0x1
	.byte	0x68
	.long	.LVL394
	.long	.LVL395
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL395
	.long	.LVL398
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST137:
	.long	.LVL396
	.long	.LVL397
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+6283
	.sleb128 0
	.long	0
	.long	0
.LLST138:
	.long	.LVL414
	.long	.LVL416-1
	.word	0x1
	.byte	0x68
	.long	.LVL417
	.long	.LVL419-1
	.word	0x1
	.byte	0x68
	.long	.LVL420
	.long	.LVL421-1
	.word	0x1
	.byte	0x68
	.long	.LVL422
	.long	.LVL423-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST139:
	.long	.LVL415
	.long	.LVL417
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL418
	.long	.LVL419-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST140:
	.long	.LVL424
	.long	.LVL425
	.word	0x1
	.byte	0x68
	.long	.LVL425
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST141:
	.long	.LVL426
	.long	.LVL428-1
	.word	0x1
	.byte	0x68
	.long	.LVL429
	.long	.LVL431-1
	.word	0x1
	.byte	0x68
	.long	.LVL432
	.long	.LVL433-1
	.word	0x1
	.byte	0x68
	.long	.LVL434
	.long	.LVL435
	.word	0x1
	.byte	0x68
	.long	.LVL436
	.long	.LVL437-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST142:
	.long	.LVL427
	.long	.LVL429
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL430
	.long	.LVL431-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST143:
	.long	.LFB60
	.long	.LCFI64
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI64
	.long	.LCFI65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI65
	.long	.LCFI66
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI66
	.long	.LCFI67
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI67
	.long	.LCFI68
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI68
	.long	.LCFI69
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI69
	.long	.LCFI70
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI70
	.long	.LCFI71
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI71
	.long	.LCFI72
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI72
	.long	.LFE60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST144:
	.long	.LVL438
	.long	.LVL439-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL441
	.long	.LVL442
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL468
	.long	.LVL469
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL470
	.long	.LVL471
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL472
	.long	.LVL473
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST145:
	.long	.LVL440
	.long	.LVL474
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST146:
	.long	.LVL441
	.long	.LVL476
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST147:
	.long	.LVL441
	.long	.LVL472
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST148:
	.long	.LVL442
	.long	.LVL444
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	.LVL450
	.long	.LVL468
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	.LVL471
	.long	.LVL475
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST149:
	.long	.LVL451
	.long	.LVL452
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST150:
	.long	.LVL442
	.long	.LVL468
	.word	0x1
	.byte	0x6c
	.long	.LVL471
	.long	.LVL472
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST151:
	.long	.LVL452
	.long	.LVL464
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST152:
	.long	.LVL481
	.long	.LVL487
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST153:
	.long	.LVL482
	.long	.LVL483
	.word	0x1
	.byte	0x68
	.long	.LVL484
	.long	.LVL485
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL485
	.long	.LVL488
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST154:
	.long	.LVL486
	.long	.LVL487
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+7367
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
	.long	.LFB43
	.long	.LFE43-.LFB43
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
	.long	.LBB38
	.long	.LBE38
	.long	.LBB39
	.long	.LBE39
	.long	.LBB40
	.long	.LBE40
	.long	0
	.long	0
	.long	.LBB41
	.long	.LBE41
	.long	.LBB42
	.long	.LBE42
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
	.long	.LBB46
	.long	.LBE46
	.long	0
	.long	0
	.long	.LBB48
	.long	.LBE48
	.long	.LBB52
	.long	.LBE52
	.long	0
	.long	0
	.long	.LBB49
	.long	.LBE49
	.long	.LBB50
	.long	.LBE50
	.long	.LBB51
	.long	.LBE51
	.long	0
	.long	0
	.long	.LBB56
	.long	.LBE56
	.long	.LBB59
	.long	.LBE59
	.long	0
	.long	0
	.long	.LBB62
	.long	.LBE62
	.long	.LBB63
	.long	.LBE63
	.long	0
	.long	0
	.long	.LBB66
	.long	.LBE66
	.long	.LBB69
	.long	.LBE69
	.long	0
	.long	0
	.long	.LBB71
	.long	.LBE71
	.long	.LBB72
	.long	.LBE72
	.long	0
	.long	0
	.long	.LBB81
	.long	.LBE81
	.long	.LBB84
	.long	.LBE84
	.long	0
	.long	0
	.long	.LBB91
	.long	.LBE91
	.long	.LBB93
	.long	.LBE93
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
	.long	.LFB43
	.long	.LFE43
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
.LASF135:
	.string	"Manual_to_MidiNote"
.LASF173:
	.string	"swTimer"
.LASF42:
	.string	"bitStart"
.LASF113:
	.string	"program_toRegister"
.LASF88:
	.string	"modulebit"
.LASF34:
	.string	"ChannelNote_t"
.LASF111:
	.string	"prog_set"
.LASF229:
	.string	"__iCliRetVal"
.LASF207:
	.string	"init_Pipe"
.LASF169:
	.string	"chanNote"
.LASF86:
	.string	"pRange"
.LASF156:
	.string	"manNote"
.LASF137:
	.string	"rangeEnd"
.LASF82:
	.string	"progNr"
.LASF109:
	.string	"actualReg"
.LASF133:
	.string	"pMidiInMap"
.LASF44:
	.string	"ManualNoteRange_t"
.LASF167:
	.string	"shiftBit"
.LASF105:
	.string	"midi_RegisterMatchProgram"
.LASF157:
	.string	"midiIn_Process"
.LASF212:
	.string	"pipe_off"
.LASF9:
	.string	"long long unsigned int"
.LASF172:
	.string	"midi_CheckTxActiveSense"
.LASF187:
	.string	"midi_RegisterChanged"
.LASF50:
	.string	"OutChannel"
.LASF186:
	.string	"programMap"
.LASF131:
	.string	"spaceCount"
.LASF15:
	.string	"message8"
.LASF206:
	.string	"midiDataByteExpected"
.LASF183:
	.string	"midiOutMap"
.LASF126:
	.string	"reg_toLCD"
.LASF70:
	.string	"pCoupler"
.LASF143:
	.string	"manual_NoteOnOff"
.LASF130:
	.string	"reg_ClearOnLCD"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF194:
	.string	"midiLastOutManual"
.LASF83:
	.string	"regNr"
.LASF52:
	.string	"sw_channel"
.LASF106:
	.string	"program"
.LASF36:
	.string	"ManualNote_t"
.LASF151:
	.string	"midi_AllManualsOff"
.LASF117:
	.string	"midi_ProgramChange"
.LASF226:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF165:
	.string	"pipeMessage"
.LASF134:
	.string	"init_Manual2Midi"
.LASF203:
	.string	"midiLastCommand"
.LASF46:
	.string	"noteRange"
.LASF205:
	.string	"midiDataByteCount"
.LASF6:
	.string	"long int"
.LASF150:
	.string	"midi_ManualOff"
.LASF177:
	.string	"serESPMidiTmp"
.LASF132:
	.string	"init_Midi2Manual"
.LASF191:
	.string	"midiRxActivceSensing"
.LASF161:
	.string	"noteOnOff"
.LASF63:
	.string	"regEnd"
.LASF142:
	.string	"moduleBit_to_manualNote"
.LASF188:
	.string	"reg_Out"
.LASF124:
	.string	"prog_toLcd"
.LASF77:
	.string	"midiAllReset"
.LASF181:
	.string	"midiInMap"
.LASF4:
	.string	"uint16_t"
.LASF138:
	.string	"rangeStart"
.LASF201:
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
.LASF211:
	.string	"pipe_on"
.LASF97:
	.string	"mask"
.LASF152:
	.string	"midi_CheckRxActiveSense"
.LASF192:
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
.LASF139:
	.string	"range"
.LASF147:
	.string	"midiAllNotesOff"
.LASF145:
	.string	"modulNrMask"
.LASF43:
	.string	"ManualMap_t"
.LASF72:
	.string	"init_Midi"
.LASF5:
	.string	"unsigned int"
.LASF214:
	.string	"module_WaitOutputInput2Cycles"
.LASF123:
	.string	"SaveEEProm"
.LASF215:
	.string	"eeprom_UpdateProg"
.LASF67:
	.string	"AcceptProgChange"
.LASF35:
	.string	"manual"
.LASF166:
	.string	"command"
.LASF112:
	.string	"prog"
.LASF216:
	.string	"lcd_putc"
.LASF7:
	.string	"long unsigned int"
.LASF222:
	.string	"eeprom_ReadMidiOutMap"
.LASF146:
	.string	"myMessage"
.LASF180:
	.string	"ManualNoteRange"
.LASF204:
	.string	"midiDataByte"
.LASF57:
	.string	"registers"
.LASF170:
	.string	"midiSendAllNotesOff"
.LASF159:
	.string	"sreg_save"
.LASF158:
	.string	"midiByte"
.LASF98:
	.string	"get_RegisterStatus"
.LASF153:
	.string	"midiNote_to_Manual"
.LASF90:
	.string	"section"
.LASF61:
	.string	"manualChar"
.LASF32:
	.string	"hw_channel"
.LASF200:
	.string	"cplInfo"
.LASF75:
	.string	"getAllCouplers"
.LASF31:
	.string	"Pipe_Module_t"
.LASF40:
	.string	"startNote"
.LASF103:
	.string	"onOff"
.LASF178:
	.string	"midiTxLastCmd"
.LASF16:
	.string	"PipeMessage_t"
.LASF119:
	.string	"channelValid"
.LASF48:
	.string	"MidiInMap_t"
.LASF59:
	.string	"ProgramInfo_t"
.LASF121:
	.string	"midi_resetRegisters"
.LASF38:
	.string	"moduleBit"
.LASF217:
	.string	"lcd_blank"
.LASF19:
	.string	"Timer"
.LASF80:
	.string	"regSec"
.LASF10:
	.string	"sizetype"
.LASF120:
	.string	"splitCount"
.LASF140:
	.string	"init_Manual2Module"
.LASF160:
	.string	"__ToDo"
.LASF128:
	.string	"myChar"
.LASF115:
	.string	"regBytePtr"
.LASF202:
	.string	"midiEEPromLoadError"
.LASF94:
	.string	"modBit"
.LASF28:
	.string	"Pipe_t"
.LASF47:
	.string	"manualNote"
.LASF162:
	.string	"proc_ESPmidi"
.LASF136:
	.string	"Midi_updateManualRange"
.LASF26:
	.string	"pipeIn"
.LASF185:
	.string	"registerCount"
.LASF221:
	.string	"eeprom_ReadMidiThrough"
.LASF84:
	.string	"set_Coupler"
.LASF60:
	.string	"cursor"
.LASF20:
	.string	"pipeOutM4"
.LASF220:
	.string	"eeprom_ReadMidiInMap"
.LASF114:
	.string	"regBits"
.LASF218:
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
.LASF163:
	.string	"midiBytesTransferred"
.LASF58:
	.string	"couplers"
.LASF171:
	.string	"midi_SendActiveSense"
.LASF228:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF89:
	.string	"pSection"
.LASF168:
	.string	"moduleBits"
.LASF210:
	.string	"eeprom_ReadProg"
.LASF225:
	.string	"serial0USB_logPipeIn"
.LASF3:
	.string	"unsigned char"
.LASF71:
	.string	"midi_CouplerReset"
.LASF182:
	.string	"midiThrough"
.LASF78:
	.string	"registers_CalcCount"
.LASF209:
	.string	"log_putError"
.LASF17:
	.string	"counter"
.LASF224:
	.string	"pipeMsgPush"
.LASF110:
	.string	"midi_CountRegisterInProgram"
.LASF223:
	.string	"eeprom_ReadManualMap"
.LASF56:
	.string	"RegisterMap_t"
.LASF197:
	.string	"midiLastInManual"
.LASF51:
	.string	"MidiThrough_t"
.LASF118:
	.string	"channel"
.LASF127:
	.string	"readHWonly"
.LASF193:
	.string	"midiLastOutNote"
.LASF208:
	.string	"eeprom_ReadReg"
.LASF199:
	.string	"midi_Couplers"
.LASF13:
	.string	"Word_t"
.LASF175:
	.string	"pipeProcessing"
.LASF196:
	.string	"midiLastInChannel"
.LASF12:
	.string	"byteval"
.LASF69:
	.string	"char"
.LASF33:
	.string	"note"
.LASF92:
	.string	"mode"
.LASF184:
	.string	"registerMap"
.LASF116:
	.string	"byteNr"
.LASF129:
	.string	"addChar"
.LASF174:
	.string	"pipe"
.LASF54:
	.string	"startReg"
.LASF213:
	.string	"serial1MIDISend"
.LASF148:
	.string	"splitRange"
.LASF107:
	.string	"progPtr"
.LASF219:
	.string	"lcd_goto"
.LASF99:
	.string	"count_Registers"
.LASF66:
	.string	"VelZero4Off"
.LASF62:
	.string	"regStart"
.LASF230:
	.string	"__iRestore"
.LASF190:
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
.LASF154:
	.string	"found"
.LASF102:
	.string	"register_onOff"
.LASF155:
	.string	"noteBase0"
.LASF141:
	.string	"manualNote_to_moduleBit"
.LASF108:
	.string	"tempReg"
.LASF55:
	.string	"endReg"
.LASF101:
	.string	"resultPtr"
.LASF176:
	.string	"pipe_Module"
.LASF14:
	.string	"Message16"
.LASF1:
	.string	"uint8_t"
.LASF164:
	.string	"midiKeyPress_Process"
.LASF149:
	.string	"midiChanel"
.LASF93:
	.string	"modBitComplette"
.LASF23:
	.string	"pipeInM12"
.LASF22:
	.string	"pipeInM16"
.LASF179:
	.string	"manualMap"
.LASF144:
	.string	"moduleInfo"
.LASF81:
	.string	"init_Registers"
.LASF30:
	.string	"AssnWrite"
.LASF189:
	.string	"prog_Display"
.LASF65:
	.string	"TxActivceSense"
.LASF195:
	.string	"midiLastInNote"
.LASF21:
	.string	"pipeOut"
.LASF87:
	.string	"moduleBit_to_registerNr"
.LASF73:
	.string	"result"
.LASF227:
	.string	".././Midi.c"
.LASF122:
	.string	"register_toProgram"
.LASF198:
	.string	"midiLastProgram"
.LASF96:
	.string	"modulNr"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
