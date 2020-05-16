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
	.section	.text.reg_toLCD,"ax",@progbits
.global	reg_toLCD
	.type	reg_toLCD, @function
reg_toLCD:
.LFB48:
	.loc 1 735 0
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
.LVL216:
.LBB55:
	.loc 1 737 0
	mov r15,__zero_reg__
	rjmp .L123
.LVL217:
.L132:
.LBB56:
	.loc 1 738 0
	mov r16,r15
	ldi r17,0
	movw r28,r16
	lsl r28
	rol r29
	lsl r28
	rol r29
	subi r28,lo8(-(reg_Out))
	sbci r29,hi8(-(reg_Out))
	movw r30,r28
	adiw r28,1
	lpm r24,Z+
	call lcd_goto
.LVL218:
	.loc 1 739 0
	movw r30,r28
	lpm r24,Z
.LVL219:
	.loc 1 740 0
	ldi r25,lo8(-33)
	add r25,r24
	cpi r25,lo8(95)
	brsh .L124
	.loc 1 742 0
	call lcd_putc
.LVL220:
	.loc 1 743 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL221:
.L124:
	.loc 1 745 0
	movw r30,r16
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(reg_Out+2))
	sbci r31,hi8(-(reg_Out+2))
	lpm r28,Z
.LVL222:
	.loc 1 746 0
	rjmp .L125
.L131:
	.loc 1 747 0
	cpse r28,r24
	rjmp .L126
	.loc 1 749 0
	mov r24,r28
	call get_RegisterStatus
.LVL223:
	tst r24
	breq .L133
	ldi r24,lo8(11)
	rjmp .L127
.L133:
	ldi r24,lo8(10)
.L127:
	.loc 1 749 0 is_stmt 0 discriminator 4
	call lcd_putc
.LVL224:
	mov r29,r28
	rjmp .L128
.L126:
.LBB57:
	.loc 1 752 0 is_stmt 1
	ldi r29,lo8(1)
	add r29,r28
.LVL225:
	mov r24,r28
	call get_RegisterStatus
.LVL226:
	cpse r24,__zero_reg__
	rjmp .L134
	ldi r28,0
	rjmp .L129
.L134:
	ldi r28,lo8(2)
.L129:
.LVL227:
	.loc 1 753 0 discriminator 4
	mov r24,r29
	call get_RegisterStatus
.LVL228:
	ldi r25,lo8(1)
	cpse r24,__zero_reg__
	rjmp .L130
	ldi r25,0
.L130:
	mov r24,r25
	add r24,r28
.LVL229:
	.loc 1 754 0 discriminator 4
	subi r24,lo8(-(12))
.LVL230:
	call lcd_putc
.LVL231:
.L128:
.LBE57:
	.loc 1 756 0
	ldi r28,lo8(1)
	add r28,r29
.LVL232:
.L125:
	.loc 1 746 0
	movw r30,r16
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(reg_Out+3))
	sbci r31,hi8(-(reg_Out+3))
	lpm r24,Z
	cp r24,r28
	brsh .L131
	.loc 1 758 0 discriminator 2
	ldi r24,lo8(32)
	call lcd_putc
.LVL233:
.LBE56:
	.loc 1 737 0 discriminator 2
	inc r15
.LVL234:
.L123:
	.loc 1 737 0 is_stmt 0 discriminator 1
	ldi r31,lo8(5)
	cp r31,r15
	brlo .+2
	rjmp .L132
/* epilogue start */
.LBE55:
	.loc 1 760 0 is_stmt 1
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
.LVL235:
	ret
	.cfi_endproc
.LFE48:
	.size	reg_toLCD, .-reg_toLCD
	.section	.text.reg_ClearOnLCD,"ax",@progbits
.global	reg_ClearOnLCD
	.type	reg_ClearOnLCD, @function
reg_ClearOnLCD:
.LFB49:
	.loc 1 762 0
	.cfi_startproc
	push r14
.LCFI36:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI37:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r17
.LCFI38:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI39:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI40:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
.LVL236:
.LBB58:
	.loc 1 763 0
	ldi r17,0
	rjmp .L136
.LVL237:
.L138:
.LBB59:
	.loc 1 764 0
	mov r28,r17
	ldi r29,0
	lsl r28
	rol r29
	lsl r28
	rol r29
	subi r28,lo8(-(reg_Out))
	sbci r29,hi8(-(reg_Out))
	movw r30,r28
	adiw r30,1
	movw r14,r30
	sbiw r30,1
	lpm r24,Z+
	call lcd_goto
.LVL238:
	.loc 1 765 0
	movw r30,r14
	lpm r18,Z
.LVL239:
	.loc 1 767 0
	adiw r30,2
	lpm r24,Z
	sbiw r30,1
	lpm r25,Z
	sub r24,r25
	subi r24,lo8(-(1))
.LVL240:
	.loc 1 768 0
	ldi r25,0
	adiw r24,1
.LVL241:
	asr r25
	ror r24
.LVL242:
	.loc 1 769 0
	subi r18,lo8(-(-33))
.LVL243:
	cpi r18,lo8(95)
	brsh .L139
	ldi r18,lo8(2)
	rjmp .L137
.L139:
	ldi r18,0
.L137:
.LVL244:
	.loc 1 770 0 discriminator 4
	add r24,r18
.LVL245:
	call lcd_blank
.LVL246:
.LBE59:
	.loc 1 763 0 discriminator 4
	subi r17,lo8(-(1))
.LVL247:
.L136:
	.loc 1 763 0 is_stmt 0 discriminator 2
	cpi r17,lo8(6)
	brlo .L138
/* epilogue start */
.LBE58:
	.loc 1 772 0 is_stmt 1
	pop r29
	pop r28
	pop r17
.LVL248:
	pop r15
	pop r14
	ret
	.cfi_endproc
.LFE49:
	.size	reg_ClearOnLCD, .-reg_ClearOnLCD
	.section	.text.init_Midi2Manual,"ax",@progbits
.global	init_Midi2Manual
	.type	init_Midi2Manual, @function
init_Midi2Manual:
.LFB50:
	.loc 1 776 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL249:
.LBB60:
	.loc 1 780 0
	ldi r25,lo8(64)
.LBE60:
	.loc 1 778 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
.LBB61:
	.loc 1 780 0
	rjmp .L141
.LVL250:
.L142:
	.loc 1 782 0 discriminator 3
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 783 0 discriminator 3
	std Z+1,r24
	.loc 1 784 0 discriminator 3
	std Z+3,r24
	.loc 1 785 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 786 0 discriminator 3
	adiw r30,4
.LVL251:
	.loc 1 780 0 discriminator 3
	subi r25,lo8(-(-1))
.LVL252:
.L141:
	.loc 1 780 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L142
.LBE61:
	.loc 1 789 0 is_stmt 1
	call eeprom_ReadMidiInMap
.LVL253:
	cpi r24,lo8(-1)
	brne .L143
	.loc 1 790 0
	sts midiEEPromLoadError,r24
	.loc 1 791 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
	st Z,__zero_reg__
	.loc 1 792 0
	ldi r24,lo8(36)
	std Z+1,r24
	.loc 1 793 0
	std Z+3,r24
	.loc 1 794 0
	ldi r25,lo8(56)
	std Z+2,r25
	.loc 1 795 0
	ldi r18,lo8(1)
	std Z+16,r18
	.loc 1 796 0
	std Z+17,r24
	.loc 1 797 0
	std Z+19,r24
	.loc 1 798 0
	std Z+18,r25
	.loc 1 799 0
	ldi r18,lo8(2)
	std Z+32,r18
	.loc 1 800 0
	std Z+33,r24
	.loc 1 801 0
	std Z+35,r24
	.loc 1 802 0
	std Z+34,r25
	.loc 1 803 0
	ldi r25,lo8(3)
	std Z+48,r25
	.loc 1 804 0
	std Z+49,r24
	.loc 1 805 0
	std Z+51,r24
	.loc 1 806 0
	ldi r24,lo8(30)
	std Z+50,r24
	.loc 1 807 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL254:
.L143:
	.loc 1 809 0
	call eeprom_ReadMidiThrough
.LVL255:
	cpi r24,lo8(-1)
	brne .L140
	.loc 1 810 0
	ldi r30,lo8(midiThrough)
	ldi r31,hi8(midiThrough)
	st Z,r24
	.loc 1 811 0
	std Z+1,r24
	.loc 1 812 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL256:
.L140:
	ret
	.cfi_endproc
.LFE50:
	.size	init_Midi2Manual, .-init_Midi2Manual
	.section	.text.init_Manual2Midi,"ax",@progbits
.global	init_Manual2Midi
	.type	init_Manual2Midi, @function
init_Manual2Midi:
.LFB51:
	.loc 1 816 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL257:
.LBB62:
	.loc 1 818 0
	ldi r18,0
	rjmp .L146
.LVL258:
.L147:
	.loc 1 819 0 discriminator 3
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 820 0 discriminator 3
	std Z+1,r24
	.loc 1 818 0 discriminator 3
	subi r18,lo8(-(1))
.LVL259:
.L146:
	.loc 1 818 0 is_stmt 0 discriminator 1
	mov r24,r18
	ldi r25,0
	sbiw r24,0
	brne .L147
.LBE62:
	.loc 1 822 0 is_stmt 1
	call eeprom_ReadMidiOutMap
.LVL260:
	cpi r24,lo8(-1)
	brne .L145
	.loc 1 823 0
	sts midiEEPromLoadError,r24
	.loc 1 825 0
	ldi r30,lo8(midiOutMap)
	ldi r31,hi8(midiOutMap)
	st Z,__zero_reg__
	.loc 1 826 0
	ldi r25,lo8(1)
	std Z+2,r25
	.loc 1 827 0
	ldi r25,lo8(2)
	std Z+4,r25
	.loc 1 828 0
	ldi r25,lo8(3)
	std Z+6,r25
	.loc 1 829 0
	ldi r30,lo8(midi_Setting)
	ldi r31,hi8(midi_Setting)
	st Z,__zero_reg__
	.loc 1 830 0
	std Z+1,__zero_reg__
	.loc 1 831 0
	std Z+2,r24
	.loc 1 832 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(2)
	ldi r24,lo8(1)
	call log_putError
.LVL261:
.L145:
	ret
	.cfi_endproc
.LFE51:
	.size	init_Manual2Midi, .-init_Manual2Midi
	.section	.text.Manual_to_MidiNote,"ax",@progbits
.global	Manual_to_MidiNote
	.type	Manual_to_MidiNote, @function
Manual_to_MidiNote:
.LFB53:
	.loc 1 876 0
	.cfi_startproc
.LVL262:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	.loc 1 877 0
	ldi r24,lo8(-1)
.LVL263:
	ldi r25,lo8(-1)
	.loc 1 878 0
	cpi r30,lo8(4)
	brsh .L150
	.loc 1 879 0
	ldi r31,0
	lsl r30
	rol r31
.LVL264:
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r18,Z
	cpi r18,lo8(-1)
	breq .L150
	.loc 1 880 0
	mov r24,r18
	.loc 1 881 0
	mov r25,r22
.L150:
	.loc 1 886 0
	ret
	.cfi_endproc
.LFE53:
	.size	Manual_to_MidiNote, .-Manual_to_MidiNote
	.section	.text.Midi_updateManualRange,"ax",@progbits
.global	Midi_updateManualRange
	.type	Midi_updateManualRange, @function
Midi_updateManualRange:
.LFB54:
	.loc 1 890 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL265:
.LBB63:
	.loc 1 891 0
	ldi r23,0
	rjmp .L152
.LVL266:
.L158:
.LBB64:
.LBB65:
	.loc 1 895 0
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
	breq .L153
.LVL267:
	.loc 1 895 0 is_stmt 0 discriminator 1
	movw r30,r18
	lsl r30
	rol r31
	add r30,r18
	adc r31,r19
	movw r18,r24
.LVL268:
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
	breq .L153
	.loc 1 896 0 is_stmt 1
	cp r26,r22
	brsh .L154
	.loc 1 897 0
	mov r22,r26
.LVL269:
.L154:
	.loc 1 899 0
	cp r21,r18
	brsh .L153
	.loc 1 900 0
	mov r21,r18
.LVL270:
.L153:
	.loc 1 903 0
	tst r21
	breq .L155
	.loc 1 903 0 is_stmt 0 discriminator 1
	cpi r22,lo8(-1)
	brne .L156
.L155:
	.loc 1 904 0 is_stmt 1
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 905 0
	std Z+1,r24
	rjmp .L157
.L156:
	.loc 1 907 0
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	st Z,r22
	.loc 1 908 0
	std Z+1,r21
.L157:
	.loc 1 894 0 discriminator 2
	subi r20,lo8(-(1))
.LVL271:
	rjmp .L159
.LVL272:
.L162:
.LBE65:
.LBE64:
	ldi r20,0
	ldi r22,lo8(-1)
	ldi r21,0
.L159:
.LVL273:
.LBB67:
.LBB66:
	.loc 1 894 0 is_stmt 0 discriminator 1
	cpi r20,lo8(4)
	brsh .+2
	rjmp .L158
.LBE66:
.LBE67:
	.loc 1 891 0 is_stmt 1 discriminator 2
	subi r23,lo8(-(1))
.LVL274:
.L152:
	.loc 1 891 0 is_stmt 0 discriminator 1
	cpi r23,lo8(4)
	brlo .L162
/* epilogue start */
.LBE63:
	.loc 1 912 0 is_stmt 1
	ret
	.cfi_endproc
.LFE54:
	.size	Midi_updateManualRange, .-Midi_updateManualRange
	.section	.text.init_Manual2Module,"ax",@progbits
.global	init_Manual2Module
	.type	init_Manual2Module, @function
init_Manual2Module:
.LFB55:
	.loc 1 914 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL275:
.LBB68:
	.loc 1 915 0
	ldi r22,lo8(3)
	rjmp .L164
.LVL276:
.L165:
.LBB69:
	.loc 1 918 0 discriminator 3
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
	.loc 1 919 0 discriminator 3
	adiw r26,1
	st X,r19
	sbiw r26,1
	.loc 1 920 0 discriminator 3
	movw r30,r26
	std Z+2,__zero_reg__
	.loc 1 917 0 discriminator 3
	subi r18,lo8(-(-1))
.LVL277:
	rjmp .L166
.LVL278:
.L168:
.LBE69:
	ldi r18,lo8(3)
.L166:
.LVL279:
.LBB70:
	.loc 1 917 0 is_stmt 0 discriminator 1
	tst r18
	brge .L165
.LBE70:
	.loc 1 915 0 is_stmt 1 discriminator 2
	subi r22,lo8(-(-1))
.LVL280:
.L164:
	.loc 1 915 0 is_stmt 0 discriminator 1
	tst r22
	brge .L168
.LBE68:
	.loc 1 924 0 is_stmt 1
	call eeprom_ReadManualMap
.LVL281:
	cpi r24,lo8(-1)
	brne .L167
	.loc 1 926 0
	sts midiEEPromLoadError,r24
	.loc 1 927 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(3)
	ldi r24,lo8(1)
	call log_putError
.LVL282:
	.loc 1 929 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
	ldi r24,lo8(36)
	st Z,r24
	.loc 1 930 0
	ldi r19,lo8(67)
	std Z+1,r19
	.loc 1 931 0
	std Z+2,__zero_reg__
	.loc 1 932 0
	ldi r18,lo8(68)
	std Z+3,r18
	.loc 1 933 0
	ldi r25,lo8(91)
	std Z+4,r25
	.loc 1 934 0
	ldi r20,lo8(32)
	std Z+5,r20
	.loc 1 935 0
	std Z+12,r24
	.loc 1 936 0
	std Z+13,r19
	.loc 1 937 0
	ldi r20,lo8(64)
	std Z+14,r20
	.loc 1 938 0
	std Z+15,r18
	.loc 1 939 0
	std Z+16,r25
	.loc 1 940 0
	ldi r20,lo8(96)
	std Z+17,r20
	.loc 1 941 0
	std Z+24,r24
	.loc 1 942 0
	std Z+25,r19
	.loc 1 943 0
	ldi r19,lo8(-128)
	std Z+26,r19
	.loc 1 944 0
	std Z+27,r18
	.loc 1 945 0
	std Z+28,r25
	.loc 1 946 0
	ldi r25,lo8(-96)
	std Z+29,r25
	.loc 1 947 0
	std Z+36,r24
	.loc 1 948 0
	ldi r24,lo8(65)
	std Z+37,r24
	.loc 1 949 0
	ldi r24,lo8(-64)
	std Z+38,r24
	.loc 1 950 0
	std Z+48,__zero_reg__
	.loc 1 951 0
	ldi r24,lo8(29)
	std Z+49,r24
	.loc 1 952 0
	ldi r24,lo8(-32)
	std Z+50,r24
.L167:
	.loc 1 954 0
	call Midi_updateManualRange
.LVL283:
	ret
	.cfi_endproc
.LFE55:
	.size	init_Manual2Module, .-init_Manual2Module
	.section	.text.manualNote_to_moduleBit,"ax",@progbits
.global	manualNote_to_moduleBit
	.type	manualNote_to_moduleBit, @function
manualNote_to_moduleBit:
.LFB56:
	.loc 1 958 0
	.cfi_startproc
.LVL284:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 961 0
	cpi r24,lo8(4)
	brsh .L170
.LBB71:
	.loc 1 964 0
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
.LVL285:
	.loc 1 965 0
	ldi r24,lo8(4)
.LVL286:
.L173:
	.loc 1 967 0
	ld r18,Z
	cp r22,r18
	brlo .L171
	.loc 1 967 0 is_stmt 0 discriminator 1
	ldd r25,Z+1
	cp r25,r22
	brlo .L171
	.loc 1 970 0 is_stmt 1
	ldd r25,Z+2
	sub r22,r18
.LVL287:
	.loc 1 971 0
	ldi r24,0
.LVL288:
	add r25,r22
	ret
.LVL289:
.L171:
	.loc 1 973 0
	adiw r30,3
.LVL290:
	.loc 1 974 0
	subi r24,lo8(-(-1))
.LVL291:
	brne .L173
.LVL292:
.L170:
.LBE71:
	.loc 1 978 0
	ldi r24,lo8(-1)
	ldi r25,0
	.loc 1 979 0
	ret
	.cfi_endproc
.LFE56:
	.size	manualNote_to_moduleBit, .-manualNote_to_moduleBit
	.section	.text.moduleBit_to_manualNote,"ax",@progbits
.global	moduleBit_to_manualNote
	.type	moduleBit_to_manualNote, @function
moduleBit_to_manualNote:
.LFB57:
	.loc 1 981 0
	.cfi_startproc
.LVL293:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 988 0
	ldi r27,0
	.loc 1 987 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
.LVL294:
.L179:
.LBB72:
	.loc 1 990 0
	ldi r20,lo8(4)
	rjmp .L175
.LVL295:
.L178:
	.loc 1 991 0
	ldd r21,Z+2
	cp r24,r21
	brlo .L176
	.loc 1 991 0 is_stmt 0 discriminator 1
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
	brlt .L176
.LVL296:
	.loc 1 994 0 is_stmt 1
	mov r25,r24
	sub r25,r21
	.loc 1 995 0
	mov r24,r27
	add r25,r26
	ret
.LVL297:
.L176:
	.loc 1 997 0 discriminator 2
	adiw r30,3
.LVL298:
	.loc 1 990 0 discriminator 2
	subi r20,lo8(-(-1))
.LVL299:
.L175:
	.loc 1 990 0 is_stmt 0 discriminator 1
	cpse r20,__zero_reg__
	rjmp .L178
.LBE72:
	.loc 1 999 0 is_stmt 1
	subi r27,lo8(-(1))
.LVL300:
	.loc 1 1000 0
	cpi r27,lo8(5)
	brlo .L179
	.loc 1 1004 0
	ldi r24,lo8(-1)
.LVL301:
	ldi r25,0
	.loc 1 1005 0
	ret
	.cfi_endproc
.LFE57:
	.size	moduleBit_to_manualNote, .-moduleBit_to_manualNote
	.section	.text.manual_NoteOnOff,"ax",@progbits
.global	manual_NoteOnOff
	.type	manual_NoteOnOff, @function
manual_NoteOnOff:
.LFB58:
	.loc 1 1007 0
	.cfi_startproc
.LVL302:
	push r14
.LCFI41:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI42:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
.LCFI43:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
.LCFI44:
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
.LCFI45:
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
.LCFI46:
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r28,r24
	mov r16,r22
	mov r29,r20
	.loc 1 1009 0
	call manualNote_to_moduleBit
.LVL303:
	.loc 1 1011 0
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
.LVL304:
	.loc 1 1012 0
	mov r17,r25
	andi r17,lo8(31)
.LVL305:
	.loc 1 1013 0
	cpse r24,__zero_reg__
	rjmp .L181
	.loc 1 1014 0
	lds r24,pipe_Module+1
	and r24,r14
	brne .L182
	.loc 1 1014 0 is_stmt 0 discriminator 1
	tst r29
	brlt .L182
.LBB73:
	.loc 1 1016 0 is_stmt 1
	andi r29,lo8(127)
.LVL306:
	.loc 1 1019 0
	cpi r29,lo8(1)
	brne .L188
	ldi r25,lo8(32)
	rjmp .L183
.L188:
	ldi r25,0
.L183:
	.loc 1 1020 0 discriminator 4
	mov r24,r14
	or r25,r17
	call pipeMsgPush
.LVL307:
.L182:
.LBE73:
	.loc 1 1022 0
	andi r29,lo8(127)
.LVL308:
	.loc 1 1023 0
	brne .L184
	.loc 1 1025 0
	mov r22,r14
	mov r24,r17
	call pipe_off
.LVL309:
	rjmp .L181
.L184:
	.loc 1 1028 0
	mov r22,r14
	mov r24,r17
	call pipe_on
.LVL310:
.L181:
	.loc 1 1033 0
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldd r24,Z+1
	cpi r24,lo8(-1)
	breq .L180
	.loc 1 1036 0
	cpi r29,lo8(1)
	breq .L189
	.loc 1 1036 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
	tst r25
	breq .L190
	.loc 1 1036 0
	ldi r25,lo8(-112)
	rjmp .L186
.L189:
	ldi r25,lo8(-112)
	rjmp .L186
.L190:
	ldi r25,lo8(-128)
.L186:
	.loc 1 1036 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL311:
	.loc 1 1037 0 is_stmt 1 discriminator 6
	mov r24,r16
	call serial1MIDISend
.LVL312:
	.loc 1 1039 0 discriminator 6
	cpse r29,__zero_reg__
	rjmp .L191
	.loc 1 1039 0 is_stmt 0
	ldi r24,0
	rjmp .L187
.L191:
	ldi r24,lo8(64)
.L187:
	.loc 1 1039 0 discriminator 4
	call serial1MIDISend
.LVL313:
.L180:
/* epilogue start */
	.loc 1 1043 0 is_stmt 1
	pop r29
.LVL314:
	pop r28
.LVL315:
	pop r17
.LVL316:
	pop r16
.LVL317:
	pop r15
	pop r14
.LVL318:
	ret
	.cfi_endproc
.LFE58:
	.size	manual_NoteOnOff, .-manual_NoteOnOff
	.section	.text.midiAllNotesOff,"ax",@progbits
.global	midiAllNotesOff
	.type	midiAllNotesOff, @function
midiAllNotesOff:
.LFB23:
	.loc 1 145 0
	.cfi_startproc
.LVL319:
	push r11
.LCFI47:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI48:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI49:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI50:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI51:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI52:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI53:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI54:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI55:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	mov r12,r24
.LVL320:
	.loc 1 146 0
	mov r13,__zero_reg__
	.loc 1 147 0
	rjmp .L193
.LVL321:
.L197:
.LBB74:
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
.LVL322:
	.loc 1 150 0
	ldi r24,lo8(3)
	cp r24,r11
	brlo .L194
.LBB75:
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
.LVL323:
.LBB76:
	.loc 1 154 0
	ldd r15,Z+2
.LVL324:
	rjmp .L195
.L196:
	.loc 1 155 0 discriminator 3
	clr r14
	inc r14
	add r14,r22
.LVL325:
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
.LVL326:
	.loc 1 154 0 discriminator 3
	dec r15
.LVL327:
	.loc 1 155 0 discriminator 3
	mov r22,r14
.LVL328:
.L195:
	.loc 1 154 0 discriminator 1
	cpse r15,__zero_reg__
	rjmp .L196
.LBE76:
	.loc 1 157 0
	mov r30,r11
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL329:
	.loc 1 158 0
	cpi r24,lo8(16)
	brsh .L194
	.loc 1 160 0
	ori r24,lo8(-80)
.LVL330:
	call serial1MIDISend
.LVL331:
	.loc 1 161 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL332:
	.loc 1 162 0
	ldi r24,0
	call serial1MIDISend
.LVL333:
.L194:
.LBE75:
	.loc 1 169 0
	inc r13
.LVL334:
.L193:
.LBE74:
	.loc 1 147 0
	ldi r24,lo8(3)
	cp r24,r13
	brlo .+2
	rjmp .L197
/* epilogue start */
	.loc 1 171 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
.LVL335:
	pop r12
.LVL336:
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
.LVL337:
	push r16
.LCFI56:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI57:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI58:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI59:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r28,r24
	.loc 1 175 0
	cpi r24,lo8(4)
	brsh .L199
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
	breq .L199
	.loc 1 175 0 discriminator 2
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r24,Z+1
.LVL338:
	cpi r24,lo8(-1)
	brne .L200
.LBB77:
	rjmp .L199
.LVL339:
.L201:
	.loc 1 177 0 is_stmt 1 discriminator 3
	ldi r20,lo8(-128)
	mov r22,r29
	mov r24,r28
	call manual_NoteOnOff
.LVL340:
	.loc 1 176 0 discriminator 3
	subi r29,lo8(-(1))
.LVL341:
.L200:
	.loc 1 176 0 is_stmt 0 discriminator 1
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r24,Z+1
	cp r24,r29
	brsh .L201
.LVL342:
.L199:
.LBE77:
	.loc 1 181 0 is_stmt 1
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL343:
	.loc 1 182 0
	cpi r24,lo8(16)
	brsh .L198
	.loc 1 184 0
	ori r24,lo8(-80)
.LVL344:
	call serial1MIDISend
.LVL345:
	.loc 1 185 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL346:
	.loc 1 186 0
	ldi r24,0
	call serial1MIDISend
.LVL347:
.L198:
/* epilogue start */
	.loc 1 189 0
	pop r29
	pop r28
.LVL348:
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
.LCFI60:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL349:
.LBB78:
	.loc 1 192 0
	ldi r28,0
	rjmp .L204
.LVL350:
.L205:
	.loc 1 193 0 discriminator 3
	mov r24,r28
	call midi_ManualOff
.LVL351:
	.loc 1 192 0 discriminator 3
	subi r28,lo8(-(1))
.LVL352:
.L204:
	.loc 1 192 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brlo .L205
/* epilogue start */
.LBE78:
	.loc 1 198 0 is_stmt 1
	pop r28
.LVL353:
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
	breq .L206
	.loc 1 203 0
	lds r24,swTimer+6
	cpse r24,__zero_reg__
	rjmp .L206
	.loc 1 205 0
	call midi_AllManualsOff
.LVL354:
	.loc 1 206 0
	sts midiRxActivceSensing,__zero_reg__
.L206:
	ret
	.cfi_endproc
.LFE26:
	.size	midi_CheckRxActiveSense, .-midi_CheckRxActiveSense
	.section	.text.midiNote_to_Manual,"ax",@progbits
.global	midiNote_to_Manual
	.type	midiNote_to_Manual, @function
midiNote_to_Manual:
.LFB52:
	.loc 1 836 0
	.cfi_startproc
.LVL355:
	push r16
.LCFI61:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI62:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI63:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI64:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r22
	mov r17,r20
	.loc 1 837 0
	mov r29,r24
	andi r29,lo8(15)
.LVL356:
.LBB79:
	.loc 1 839 0
	ldi r28,0
.LBE79:
	.loc 1 838 0
	ldi r25,0
.LBB82:
	.loc 1 839 0
	rjmp .L209
.LVL357:
.L212:
	.loc 1 840 0
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
	brsh .L210
.LVL358:
.LBB80:
	.loc 1 842 0
	movw r26,r30
	ldd r22,Z+1
	mov r23,r16
	sub r23,r22
	mov r22,r23
.LVL359:
	.loc 1 843 0
	brmi .L210
	.loc 1 843 0 is_stmt 0 discriminator 1
	movw r30,r26
	ldd r30,Z+2
	ldi r31,0
	mov r26,r23
	lsl r23
	sbc r27,r27
	cp r26,r30
	cpc r27,r31
	brge .L210
.LVL360:
.LBB81:
	.loc 1 846 0 is_stmt 1
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
.LVL361:
	add r22,r25
.LVL362:
	.loc 1 847 0
	cpi r17,lo8(1)
	brne .L211
	.loc 1 848 0
	sts midiLastInManual,r24
	.loc 1 849 0
	sts midiLastInNote,r22
.L211:
	.loc 1 851 0
	mov r20,r17
.LVL363:
	call manual_NoteOnOff
.LVL364:
	.loc 1 852 0
	ldi r25,lo8(-1)
.LVL365:
.L210:
.LBE81:
.LBE80:
	.loc 1 839 0 discriminator 2
	subi r28,lo8(-(1))
.LVL366:
.L209:
	.loc 1 839 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brsh .+2
	rjmp .L212
.LBE82:
	.loc 1 856 0 is_stmt 1
	cpi r17,lo8(1)
	brne .L213
	.loc 1 856 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L213
	.loc 1 858 0 is_stmt 1
	sts midiLastInNote,r16
	.loc 1 859 0
	sts midiLastInChannel,r29
	.loc 1 860 0
	ldi r24,lo8(-1)
	sts midiLastInManual,r24
.L213:
	.loc 1 863 0
	lds r24,midiThrough
	cpse r29,r24
	rjmp .L208
	.loc 1 865 0
	lds r24,midiThrough+1
	cpi r24,lo8(-1)
	breq .L208
	.loc 1 867 0
	cpi r17,lo8(1)
	breq .L217
	.loc 1 867 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
.LVL367:
	tst r25
	breq .L218
	.loc 1 867 0
	ldi r25,lo8(-112)
	rjmp .L215
.LVL368:
.L217:
	ldi r25,lo8(-112)
.LVL369:
	rjmp .L215
.L218:
	ldi r25,lo8(-128)
.L215:
	.loc 1 867 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL370:
	.loc 1 869 0 is_stmt 1 discriminator 6
	mov r24,r16
	call serial1MIDISend
.LVL371:
	.loc 1 871 0 discriminator 6
	cpse r17,__zero_reg__
	rjmp .L219
	.loc 1 871 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L220
	.loc 1 871 0
	ldi r24,lo8(64)
	rjmp .L216
.L219:
	ldi r24,lo8(64)
	rjmp .L216
.L220:
	ldi r24,0
.L216:
	.loc 1 871 0 discriminator 6
	call serial1MIDISend
.LVL372:
.L208:
/* epilogue start */
	.loc 1 874 0 is_stmt 1
	pop r29
.LVL373:
	pop r28
.LVL374:
	pop r17
.LVL375:
	pop r16
.LVL376:
	ret
	.cfi_endproc
.LFE52:
	.size	midiNote_to_Manual, .-midiNote_to_Manual
	.section	.text.midiIn_Process,"ax",@progbits
.global	midiIn_Process
	.type	midiIn_Process, @function
midiIn_Process:
.LFB29:
	.loc 1 245 0
	.cfi_startproc
.LVL377:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 246 0
	tst r24
	brlt .+2
	rjmp .L222
	.loc 1 249 0
	cpi r24,lo8(-8)
	brlo .L223
	.loc 1 251 0
	cpi r24,lo8(-2)
	brne .L224
	.loc 1 252 0
	ldi r24,lo8(1)
.LVL378:
	sts midiRxActivceSensing,r24
.LBB83:
	.loc 1 253 0
	in r25,__SREG__
.LVL379:
.LBB84:
.LBB85:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE85:
.LBE84:
	.loc 1 253 0
	rjmp .L225
.LVL380:
.L226:
	.loc 1 253 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(25)
.LVL381:
	std Z+6,r24
	std Z+7,__zero_reg__
.LVL382:
	.loc 1 253 0 discriminator 3
	ldi r24,0
.LVL383:
.L225:
	.loc 1 253 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L226
.LVL384:
.LBB86:
.LBB87:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL385:
.LBE87:
.LBE86:
.LBE83:
	ret
.LVL386:
.L224:
	.loc 1 254 0
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L221
	.loc 1 255 0
	call midiAllReset
.LVL387:
	ret
.LVL388:
.L223:
	.loc 1 260 0
	sts midiLastCommand,r24
	.loc 1 261 0
	sts midiDataByteCount,__zero_reg__
	.loc 1 262 0
	ldi r25,lo8(-128)
	add r25,r24
	cpi r25,lo8(64)
	brsh .L228
	.loc 1 264 0
	ldi r24,lo8(2)
.LVL389:
	sts midiDataByteExpected,r24
	ret
.LVL390:
.L228:
	.loc 1 265 0
	ldi r25,lo8(32)
	add r25,r24
	cpi r25,lo8(16)
	brsh .L229
	.loc 1 267 0
	ldi r24,lo8(2)
.LVL391:
	sts midiDataByteExpected,r24
	ret
.LVL392:
.L229:
	.loc 1 268 0
	cpi r24,lo8(-14)
	brne .L230
	.loc 1 270 0
	ldi r24,lo8(2)
.LVL393:
	sts midiDataByteExpected,r24
	ret
.LVL394:
.L230:
	.loc 1 271 0
	cpi r24,lo8(-16)
	brne .L231
	.loc 1 273 0
	ldi r24,lo8(-1)
.LVL395:
	sts midiDataByteExpected,r24
	ret
.LVL396:
.L231:
	.loc 1 274 0
	ldi r25,lo8(64)
	add r25,r24
	cpi r25,lo8(32)
	brsh .L232
	.loc 1 276 0
	ldi r24,lo8(1)
.LVL397:
	sts midiDataByteExpected,r24
	ret
.LVL398:
.L232:
	.loc 1 277 0
	cpi r24,lo8(-15)
	breq .L233
	.loc 1 277 0 is_stmt 0 discriminator 1
	cpi r24,lo8(-13)
	brne .L234
.L233:
	.loc 1 279 0 is_stmt 1
	ldi r24,lo8(1)
.LVL399:
	sts midiDataByteExpected,r24
	ret
.LVL400:
.L234:
	.loc 1 280 0
	cpi r24,lo8(-9)
	brne .+2
	rjmp .L221
	.loc 1 284 0
	sts midiDataByteExpected,__zero_reg__
	ret
.L222:
	.loc 1 290 0
	lds r30,midiDataByteCount
	cpi r30,lo8(8)
	brsh .L235
	.loc 1 292 0
	ldi r25,lo8(1)
	add r25,r30
	sts midiDataByteCount,r25
	ldi r31,0
	subi r30,lo8(-(midiDataByte))
	sbci r31,hi8(-(midiDataByte))
	st Z,r24
.L235:
	.loc 1 294 0
	lds r24,midiDataByteExpected
.LVL401:
	cpi r24,lo8(-1)
	breq .L221
	.loc 1 296 0
	lds r25,midiDataByteCount
	cp r25,r24
	brlo .L221
	.loc 1 298 0
	lds r25,midiLastCommand
	cpi r25,lo8(-16)
	brsh .L236
.LBB88:
	.loc 1 300 0
	mov r24,r25
	andi r24,lo8(15)
.LVL402:
	.loc 1 302 0
	andi r25,lo8(-16)
	cpi r25,lo8(-112)
	breq .L237
	brsh .L238
	cpi r25,lo8(-128)
	breq .L239
	rjmp .L236
.L238:
	cpi r25,lo8(-80)
	breq .L240
	cpi r25,lo8(-64)
	breq .L241
	rjmp .L236
.L239:
.LVL403:
	.loc 1 306 0
	ldi r20,0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL404:
	.loc 1 307 0
	rjmp .L236
.LVL405:
.L237:
	.loc 1 309 0
	lds r25,midiDataByte+1
	cpse r25,__zero_reg__
	rjmp .L243
	.loc 1 311 0
	ldi r20,0
	rjmp .L242
.L243:
	.loc 1 314 0
	ldi r20,lo8(1)
.L242:
.LVL406:
	.loc 1 316 0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL407:
	.loc 1 317 0
	rjmp .L236
.LVL408:
.L240:
	.loc 1 319 0
	lds r25,midiDataByte
	cpi r25,lo8(123)
	brne .L236
	.loc 1 320 0
	call midiAllNotesOff
.LVL409:
	rjmp .L236
.LVL410:
.L241:
	.loc 1 324 0
	lds r22,midiDataByte
	call midi_ProgramChange
.LVL411:
.L236:
.LBE88:
	.loc 1 331 0
	sts midiDataByteCount,__zero_reg__
.L221:
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
.LVL412:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 341 0
	lds r25,serESPMidiTmp+2
	mov r24,r25
.LVL413:
	andi r24,lo8(15)
.LVL414:
	.loc 1 343 0
	andi r25,lo8(-16)
	cpi r25,lo8(-128)
	breq .L246
	brsh .L247
	tst r25
	breq .L248
	ret
.L247:
	cpi r25,lo8(-112)
	breq .L249
	cpi r25,lo8(-80)
	breq .L250
	ret
.L246:
.LVL415:
	.loc 1 347 0
	ldi r20,0
	lds r22,serESPMidiTmp+1
	call midiNote_to_Manual
.LVL416:
	.loc 1 348 0
	ret
.LVL417:
.L249:
	.loc 1 350 0
	lds r25,serESPMidiTmp
	cpse r25,__zero_reg__
	rjmp .L253
	.loc 1 352 0
	ldi r20,0
	rjmp .L251
.L253:
	.loc 1 355 0
	ldi r20,lo8(1)
.L251:
.LVL418:
	.loc 1 357 0
	lds r22,serESPMidiTmp+1
	call midiNote_to_Manual
.LVL419:
	.loc 1 358 0
	ret
.LVL420:
.L250:
	.loc 1 360 0
	lds r25,serESPMidiTmp+1
	cpi r25,lo8(123)
	brne .L244
	.loc 1 361 0
	call midiAllNotesOff
.LVL421:
	ret
.LVL422:
.L248:
	.loc 1 366 0
	lds r25,serESPMidiTmp+1
	mov r24,r25
.LVL423:
	andi r24,lo8(15)
.LVL424:
	.loc 1 367 0
	andi r25,lo8(-16)
	cpi r25,lo8(-64)
	brne .L244
	.loc 1 369 0
	lds r22,serESPMidiTmp
	call midi_ProgramChange
.LVL425:
.L244:
	ret
	.cfi_endproc
.LFE30:
	.size	proc_ESPmidi, .-proc_ESPmidi
	.section	.text.midiKeyPress_Process,"ax",@progbits
.global	midiKeyPress_Process
	.type	midiKeyPress_Process, @function
midiKeyPress_Process:
.LFB59:
	.loc 1 1047 0
	.cfi_startproc
.LVL426:
	push r11
.LCFI65:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI66:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI67:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI68:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI69:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI70:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI71:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI72:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI73:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	mov r29,r24
	mov r28,r25
	.loc 1 1048 0
	call serial0USB_logPipeIn
.LVL427:
	.loc 1 1049 0
	mov r16,r28
	andi r16,lo8(-32)
.LVL428:
	.loc 1 1050 0
	andi r28,lo8(31)
	mov r11,r28
.LVL429:
	.loc 1 1054 0
	cpi r16,lo8(32)
	brne .+2
	rjmp .L276
	.loc 1 1054 0 is_stmt 0 discriminator 1
	tst r16
	brne .+2
	rjmp .L277
.LBB89:
	rjmp .L254
.LVL430:
.L275:
	.loc 1 1058 0 is_stmt 1
	sbrs r29,0
	rjmp .L257
	.loc 1 1060 0
	ldi r18,lo8(32)
	mul r28,r18
	movw r24,r0
	clr __zero_reg__
	mov r15,r11
	or r15,r24
	mov r24,r15
	call moduleBit_to_manualNote
.LVL431:
	mov r12,r24
.LVL432:
	mov r14,r25
	.loc 1 1062 0
	mov r17,r24
	cpi r24,lo8(-1)
	brne .+2
	rjmp .L258
.LBB90:
	.loc 1 1065 0
	mov r22,r25
	call Manual_to_MidiNote
.LVL433:
	mov r13,r25
.LVL434:
	.loc 1 1066 0
	cpi r24,lo8(-1)
	breq .L259
	.loc 1 1068 0
	cpi r16,lo8(32)
	breq .L278
	.loc 1 1068 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
	tst r25
	breq .L279
	.loc 1 1068 0
	ldi r25,lo8(-112)
	rjmp .L260
.L278:
	ldi r25,lo8(-112)
	rjmp .L260
.L279:
	ldi r25,lo8(-128)
.L260:
	.loc 1 1068 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL435:
	.loc 1 1070 0 is_stmt 1 discriminator 6
	mov r24,r13
	call serial1MIDISend
.LVL436:
	.loc 1 1072 0 discriminator 6
	cpse r16,__zero_reg__
	rjmp .L280
	.loc 1 1072 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L281
	.loc 1 1072 0
	ldi r24,lo8(64)
	rjmp .L261
.L280:
	ldi r24,lo8(64)
	rjmp .L261
.L281:
	ldi r24,0
.L261:
	.loc 1 1072 0 discriminator 6
	call serial1MIDISend
.LVL437:
	.loc 1 1074 0 is_stmt 1 discriminator 6
	cpi r16,lo8(32)
	brne .L259
	.loc 1 1076 0
	sts midiLastOutManual,r12
.LVL438:
	.loc 1 1077 0
	sts midiLastOutNote,r14
.LVL439:
.L259:
	.loc 1 1081 0
	ldi r20,lo8(1)
	cpi r16,lo8(32)
	breq .L262
	ldi r20,0
.L262:
	mov r13,r20
.LVL440:
	.loc 1 1083 0
	cpse r17,__zero_reg__
	rjmp .L263
	.loc 1 1084 0
	lds r24,midi_Couplers
	cpi r24,lo8(-1)
	brne .L264
	.loc 1 1085 0
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL441:
.L264:
	.loc 1 1087 0
	lds r24,midi_Couplers+1
	cpi r24,lo8(-1)
	brne .L265
	.loc 1 1088 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL442:
.L265:
	.loc 1 1090 0
	lds r24,midi_Couplers+3
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L258
	.loc 1 1091 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL443:
	rjmp .L258
.L263:
	.loc 1 1093 0
	cpi r17,lo8(1)
	brne .L266
	.loc 1 1094 0
	lds r24,midi_Couplers+2
	cpi r24,lo8(-1)
	brne .L267
	.loc 1 1095 0
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL444:
.L267:
	.loc 1 1097 0
	lds r24,midi_Couplers+4
	cpi r24,lo8(-1)
	brne .L268
	.loc 1 1098 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL445:
.L268:
	.loc 1 1100 0
	lds r24,midi_Couplers+6
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L258
	.loc 1 1101 0
	mov r20,r13
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL446:
	rjmp .L258
.L266:
	.loc 1 1103 0
	cpi r17,lo8(2)
	brne .L269
	.loc 1 1104 0
	lds r24,midi_Couplers+5
	cpi r24,lo8(-1)
	brne .L270
	.loc 1 1105 0
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL447:
.L270:
	.loc 1 1107 0
	lds r24,midi_Couplers+7
	cpi r24,lo8(-1)
	brne .L271
	.loc 1 1108 0
	mov r20,r13
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL448:
.L271:
	.loc 1 1110 0
	lds r24,midi_Couplers+8
	cpi r24,lo8(-1)
	brne .L258
	.loc 1 1111 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL449:
	rjmp .L258
.L269:
	.loc 1 1113 0
	cpi r17,lo8(3)
	brne .L258
	.loc 1 1114 0
	lds r24,midi_Couplers+9
	cpi r24,lo8(-1)
	brne .L272
	.loc 1 1115 0
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL450:
.L272:
	.loc 1 1117 0
	lds r24,midi_Couplers+10
	cpi r24,lo8(-1)
	brne .L273
	.loc 1 1118 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL451:
.L273:
	.loc 1 1120 0
	lds r24,midi_Couplers+11
	cpi r24,lo8(-1)
	brne .L258
	.loc 1 1121 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL452:
.L258:
.LBE90:
	.loc 1 1126 0
	mov r24,r15
	call moduleBit_to_registerNr
.LVL453:
	cpi r16,lo8(32)
	brne .L282
	ldi r18,lo8(-128)
	rjmp .L274
.L282:
	ldi r18,0
.L274:
	.loc 1 1126 0 is_stmt 0 discriminator 4
	or r24,r18
	sts midi_RegisterChanged,r24
.L257:
	.loc 1 1129 0 is_stmt 1 discriminator 2
	lsr r29
.LVL454:
	.loc 1 1056 0 discriminator 2
	subi r28,lo8(-(1))
.LVL455:
	rjmp .L255
.LVL456:
.L276:
.LBE89:
	ldi r28,0
.LVL457:
	rjmp .L255
.LVL458:
.L277:
	ldi r28,0
.LVL459:
.L255:
.LBB91:
	.loc 1 1056 0 is_stmt 0 discriminator 1
	cpi r28,lo8(8)
	brsh .+2
	rjmp .L275
.LVL460:
.L254:
/* epilogue start */
.LBE91:
	.loc 1 1132 0 is_stmt 1
	pop r29
.LVL461:
	pop r28
	pop r17
	pop r16
.LVL462:
	pop r15
	pop r14
.LVL463:
	pop r13
	pop r12
	pop r11
.LVL464:
	ret
	.cfi_endproc
.LFE59:
	.size	midiKeyPress_Process, .-midiKeyPress_Process
	.section	.text.midiSendAllNotesOff,"ax",@progbits
.global	midiSendAllNotesOff
	.type	midiSendAllNotesOff, @function
midiSendAllNotesOff:
.LFB60:
	.loc 1 1136 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1137 0
	lds r24,midiThrough+1
	cpi r24,lo8(16)
	brsh .L283
	.loc 1 1138 0
	ori r24,lo8(-80)
	call serial1MIDISend
.LVL465:
	.loc 1 1139 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL466:
	.loc 1 1140 0
	ldi r24,0
	call serial1MIDISend
.LVL467:
.L283:
	ret
	.cfi_endproc
.LFE60:
	.size	midiSendAllNotesOff, .-midiSendAllNotesOff
	.section	.text.midi_SendActiveSense,"ax",@progbits
.global	midi_SendActiveSense
	.type	midi_SendActiveSense, @function
midi_SendActiveSense:
.LFB61:
	.loc 1 1152 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1153 0
	ldi r24,lo8(-2)
	call serial1MIDISend
.LVL468:
	ret
	.cfi_endproc
.LFE61:
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
	breq .L287
	.loc 1 214 0 is_stmt 0 discriminator 1
	lds r24,swTimer+16
	cpi r24,lo8(-1)
	brne .L286
.L287:
.LBB92:
	.loc 1 216 0 is_stmt 1
	in r25,__SREG__
.LVL469:
.LBB93:
.LBB94:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE94:
.LBE93:
	.loc 1 216 0
	ldi r24,lo8(1)
	rjmp .L289
.LVL470:
.L290:
	.loc 1 216 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(10)
.LVL471:
	std Z+16,r24
	std Z+17,__zero_reg__
.LVL472:
	.loc 1 216 0 discriminator 3
	ldi r24,0
.LVL473:
.L289:
	.loc 1 216 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L290
.LVL474:
.LBB95:
.LBB96:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL475:
.LBE96:
.LBE95:
.LBE92:
	.loc 1 217 0
	lds r24,midi_Setting
.LVL476:
	cpse r24,__zero_reg__
	.loc 1 218 0
	call midi_SendActiveSense
.LVL477:
.L291:
	.loc 1 221 0
	sts midiTxLastCmd,__zero_reg__
.L286:
	ret
	.cfi_endproc
.LFE27:
	.size	midi_CheckTxActiveSense, .-midi_CheckTxActiveSense
.global	reg_Out
	.section	.progmem.data.reg_Out,"a",@progbits
	.type	reg_Out, @object
	.size	reg_Out, 24
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
	.long	0x1fc8
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF217
	.byte	0xc
	.long	.LASF218
	.long	.LASF219
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF60
	.uleb128 0x9
	.byte	0x3
	.byte	0x7
	.byte	0xdb
	.long	0x433
	.uleb128 0xa
	.long	.LASF61
	.byte	0x7
	.byte	0xdc
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF62
	.byte	0x7
	.byte	0xdd
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF63
	.byte	0x7
	.byte	0xde
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x7
	.byte	0xdf
	.long	0x400
	.uleb128 0xb
	.byte	0x2
	.long	0x3b
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
	.long	.LASF220
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0xe
	.long	.LASF221
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
	.long	0x43e
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
	.long	0x1eee
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
	.long	0x1efb
	.uleb128 0x1d
	.long	.LVL33
	.long	0x1f08
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
	.long	0x1f15
	.uleb128 0x1f
	.long	.LVL43
	.long	0x1f08
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
	.word	0x201
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
	.word	0x201
	.long	0x3b
	.long	.LLST30
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x202
	.long	0x3b
	.long	.LLST31
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x203
	.long	0x3b
	.long	.LLST32
	.uleb128 0x1f
	.long	.LVL89
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
	.word	0x20b
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
	.word	0x20b
	.long	0x43e
	.long	.LLST34
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x20c
	.long	0x3b
	.long	.LLST35
	.uleb128 0x1a
	.long	.LASF92
	.byte	0x1
	.word	0x20e
	.long	0x3b
	.long	.LLST36
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xd8
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x20f
	.long	0x3b
	.long	.LLST37
	.uleb128 0x1f
	.long	.LVL100
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
	.word	0x226
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST38
	.byte	0x1
	.long	0xaa6
	.uleb128 0x21
	.long	.LASF78
	.byte	0x1
	.word	0x226
	.long	0x3b
	.long	.LLST39
	.uleb128 0x21
	.long	.LASF98
	.byte	0x1
	.word	0x226
	.long	0x3b
	.long	.LLST40
	.uleb128 0x23
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x22
	.long	.LASF88
	.byte	0x1
	.word	0x22a
	.long	0x256
	.uleb128 0x1b
	.long	.LBB37
	.long	.LBE37
	.long	0xa93
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.word	0x22d
	.long	0x3b
	.long	.LLST41
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.word	0x22e
	.long	0x3b
	.long	.LLST42
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.word	0x22f
	.long	0x3b
	.long	.LLST43
	.uleb128 0x14
	.long	.LVL117
	.long	0x1f22
	.uleb128 0x14
	.long	.LVL119
	.long	0x1f2f
	.byte	0
	.uleb128 0x1f
	.long	.LVL112
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
	.long	.LVL120
	.long	0x9f3
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF100
	.byte	0x1
	.word	0x280
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
	.word	0x280
	.long	0x3b
	.long	.LLST45
	.uleb128 0x21
	.long	.LASF102
	.byte	0x1
	.word	0x280
	.long	0x3b
	.long	.LLST46
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x283
	.long	0x3b
	.long	.LLST47
	.uleb128 0x1b
	.long	.LBB38
	.long	.LBE38
	.long	0xb3f
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x1
	.word	0x285
	.long	0x43e
	.long	.LLST48
	.uleb128 0x14
	.long	.LVL127
	.long	0x978
	.byte	0
	.uleb128 0x14
	.long	.LVL131
	.long	0x55e
	.uleb128 0x14
	.long	.LVL133
	.long	0x1f3c
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF104
	.byte	0x1
	.word	0x28f
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
	.word	0x28f
	.long	0x3b
	.long	.LLST50
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x292
	.long	0x3b
	.long	.LLST51
	.uleb128 0x1a
	.long	.LASF105
	.byte	0x1
	.word	0x293
	.long	0x43e
	.long	.LLST52
	.uleb128 0x1a
	.long	.LASF106
	.byte	0x1
	.word	0x294
	.long	0x3b
	.long	.LLST53
	.uleb128 0x1a
	.long	.LASF107
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
	.long	0xc5a
	.uleb128 0x21
	.long	.LASF101
	.byte	0x1
	.word	0x2b2
	.long	0x3b
	.long	.LLST56
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x2b4
	.long	0x3b
	.long	.LLST57
	.uleb128 0x1a
	.long	.LASF105
	.byte	0x1
	.word	0x2b5
	.long	0x43e
	.long	.LLST58
	.uleb128 0x1a
	.long	.LASF106
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
	.long	.LASF109
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
	.long	0xc86
	.uleb128 0x21
	.long	.LASF110
	.byte	0x1
	.word	0x2c9
	.long	0x3b
	.long	.LLST61
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF111
	.byte	0x1
	.word	0x23c
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
	.word	0x23c
	.long	0x3b
	.long	.LLST63
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x23e
	.long	0x3b
	.long	.LLST64
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x128
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x1
	.word	0x241
	.long	0x3b
	.long	.LLST65
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x242
	.long	0x3b
	.long	.LLST66
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x1
	.word	0x243
	.long	0x43e
	.long	.LLST67
	.uleb128 0x22
	.long	.LASF58
	.byte	0x1
	.word	0x252
	.long	0xb8
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x140
	.long	0xd4a
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x1
	.word	0x244
	.long	0x3b
	.long	.LLST68
	.uleb128 0x23
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.word	0x248
	.long	0x3b
	.long	.LLST69
	.uleb128 0x1f
	.long	.LVL178
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
	.long	.LVL171
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
	.long	.LVL186
	.long	0x59a
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF114
	.byte	0x1
	.word	0x259
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST70
	.byte	0x1
	.long	0xe16
	.uleb128 0x21
	.long	.LASF115
	.byte	0x1
	.word	0x259
	.long	0x3b
	.long	.LLST71
	.uleb128 0x21
	.long	.LASF101
	.byte	0x1
	.word	0x259
	.long	0x3b
	.long	.LLST72
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x158
	.long	0xdfc
	.uleb128 0x1a
	.long	.LASF116
	.byte	0x1
	.word	0x25c
	.long	0x3b
	.long	.LLST73
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x170
	.long	0xdd7
	.uleb128 0x1a
	.long	.LASF117
	.byte	0x1
	.word	0x25e
	.long	0x3b
	.long	.LLST74
	.byte	0
	.uleb128 0x1d
	.long	.LVL199
	.long	0xc86
	.long	0xdeb
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL200
	.long	0xc5a
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
	.long	0x1f49
	.uleb128 0x1f
	.long	.LVL202
	.long	0x1f49
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
	.long	.LASF118
	.byte	0x1
	.word	0x279
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
	.word	0x27a
	.long	0x3b
	.long	.LLST76
	.uleb128 0x1d
	.long	.LVL206
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
	.long	.LVL207
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
	.word	0x2d0
	.long	.LFB47
	.long	.LFE47
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xeea
	.uleb128 0x1d
	.long	.LVL210
	.long	0x1f56
	.long	0xea0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x1d
	.long	.LVL211
	.long	0x1f56
	.long	0xeb4
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x14
	.long	.LVL212
	.long	0x1f56
	.uleb128 0x14
	.long	.LVL213
	.long	0x1f56
	.uleb128 0x1d
	.long	.LVL214
	.long	0x1f56
	.long	0xeda
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1f
	.long	.LVL215
	.long	0x1f63
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF120
	.byte	0x1
	.word	0x2df
	.long	.LFB48
	.long	.LFE48
	.long	.LLST77
	.byte	0x1
	.long	0x1003
	.uleb128 0x23
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2e1
	.long	0x3b
	.long	.LLST78
	.uleb128 0x23
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x1
	.word	0x2e3
	.long	0x3f9
	.long	.LLST79
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.word	0x2e9
	.long	0x3b
	.long	.LLST80
	.uleb128 0x1b
	.long	.LBB57
	.long	.LBE57
	.long	0xf93
	.uleb128 0x1a
	.long	.LASF122
	.byte	0x1
	.word	0x2f0
	.long	0x3b
	.long	.LLST81
	.uleb128 0x1d
	.long	.LVL226
	.long	0x86f
	.long	0xf75
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL228
	.long	0x86f
	.long	0xf89
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL231
	.long	0x1f56
	.byte	0
	.uleb128 0x1d
	.long	.LVL218
	.long	0x1f70
	.long	0xfa9
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.long	.LVL220
	.long	0x1f56
	.long	0xfbf
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.long	.LVL221
	.long	0x1f56
	.long	0xfd3
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1d
	.long	.LVL223
	.long	0x86f
	.long	0xfe7
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL224
	.long	0x1f56
	.uleb128 0x1f
	.long	.LVL233
	.long	0x1f56
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
	.long	.LASF123
	.byte	0x1
	.word	0x2fa
	.long	.LFB49
	.long	.LFE49
	.long	.LLST82
	.byte	0x1
	.long	0x107f
	.uleb128 0x23
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2fb
	.long	0x3b
	.long	.LLST83
	.uleb128 0x23
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x1
	.word	0x2fd
	.long	0x3f9
	.long	.LLST84
	.uleb128 0x1a
	.long	.LASF124
	.byte	0x1
	.word	0x2fe
	.long	0x3b
	.long	.LLST85
	.uleb128 0x1d
	.long	.LVL238
	.long	0x1f70
	.long	0x1073
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.long	.LVL246
	.long	0x1f63
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF125
	.byte	0x1
	.word	0x308
	.long	.LFB50
	.long	.LFE50
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1114
	.uleb128 0x1a
	.long	.LASF126
	.byte	0x1
	.word	0x309
	.long	0x1114
	.long	.LLST86
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x190
	.long	0x10c1
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x30c
	.long	0x3b
	.long	.LLST87
	.byte	0
	.uleb128 0x14
	.long	.LVL253
	.long	0x1f7d
	.uleb128 0x1d
	.long	.LVL254
	.long	0x1f08
	.long	0x10ec
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
	.long	.LVL255
	.long	0x1f8a
	.uleb128 0x1f
	.long	.LVL256
	.long	0x1f08
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
	.long	.LASF127
	.byte	0x1
	.word	0x330
	.long	.LFB51
	.long	.LFE51
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1178
	.uleb128 0x1b
	.long	.LBB62
	.long	.LBE62
	.long	0x1150
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x332
	.long	0x3b
	.long	.LLST88
	.byte	0
	.uleb128 0x14
	.long	.LVL260
	.long	0x1f97
	.uleb128 0x1f
	.long	.LVL261
	.long	0x1f08
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
	.long	.LASF128
	.byte	0x1
	.word	0x36c
	.byte	0x1
	.long	0x1f6
	.long	.LFB53
	.long	.LFE53
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x11c2
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x36c
	.long	0x3b
	.long	.LLST89
	.uleb128 0x2a
	.long	.LASF33
	.byte	0x1
	.word	0x36c
	.long	0x3b
	.byte	0x1
	.byte	0x66
	.uleb128 0x22
	.long	.LASF68
	.byte	0x1
	.word	0x36d
	.long	0x1f6
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF129
	.byte	0x1
	.word	0x37a
	.long	.LFB54
	.long	.LFE54
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1231
	.uleb128 0x23
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x37b
	.long	0x3b
	.long	.LLST90
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1a8
	.uleb128 0x1a
	.long	.LASF130
	.byte	0x1
	.word	0x37c
	.long	0x3b
	.long	.LLST91
	.uleb128 0x1a
	.long	.LASF131
	.byte	0x1
	.word	0x37d
	.long	0x3b
	.long	.LLST92
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1a8
	.uleb128 0x1a
	.long	.LASF132
	.byte	0x1
	.word	0x37e
	.long	0x3b
	.long	.LLST93
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF133
	.byte	0x1
	.word	0x392
	.long	.LFB55
	.long	.LFE55
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x12b0
	.uleb128 0x1b
	.long	.LBB68
	.long	.LBE68
	.long	0x127b
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x393
	.long	0x29
	.long	.LLST94
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.word	0x395
	.long	0x29
	.long	.LLST95
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL281
	.long	0x1fa4
	.uleb128 0x1d
	.long	.LVL282
	.long	0x1f08
	.long	0x12a6
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
	.long	.LVL283
	.long	0x11c2
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF134
	.byte	0x1
	.word	0x3be
	.byte	0x1
	.long	0x256
	.long	.LFB56
	.long	.LFE56
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1324
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x3be
	.long	0x3b
	.long	.LLST96
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x3be
	.long	0x3b
	.long	.LLST97
	.uleb128 0x22
	.long	.LASF68
	.byte	0x1
	.word	0x3c0
	.long	0x256
	.uleb128 0x23
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.word	0x3c3
	.long	0x1324
	.long	.LLST98
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x3c5
	.long	0x3b
	.long	.LLST99
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x294
	.uleb128 0x20
	.byte	0x1
	.long	.LASF135
	.byte	0x1
	.word	0x3d5
	.byte	0x1
	.long	0x226
	.long	.LFB57
	.long	.LFE57
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x139e
	.uleb128 0x21
	.long	.LASF38
	.byte	0x1
	.word	0x3d5
	.long	0x3b
	.long	.LLST100
	.uleb128 0x22
	.long	.LASF68
	.byte	0x1
	.word	0x3d9
	.long	0x226
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.word	0x3da
	.long	0x1324
	.long	.LLST101
	.uleb128 0x1a
	.long	.LASF35
	.byte	0x1
	.word	0x3dc
	.long	0x3b
	.long	.LLST102
	.uleb128 0x23
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x3de
	.long	0x3b
	.long	.LLST103
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF136
	.byte	0x1
	.word	0x3ef
	.byte	0x1
	.long	.LFB58
	.long	.LFE58
	.long	.LLST104
	.byte	0x1
	.long	0x14ad
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x3ef
	.long	0x3b
	.long	.LLST105
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x3ef
	.long	0x3b
	.long	.LLST106
	.uleb128 0x21
	.long	.LASF98
	.byte	0x1
	.word	0x3ef
	.long	0x3b
	.long	.LLST107
	.uleb128 0x22
	.long	.LASF137
	.byte	0x1
	.word	0x3f0
	.long	0x256
	.uleb128 0x1a
	.long	.LASF138
	.byte	0x1
	.word	0x3f3
	.long	0x3b
	.long	.LLST108
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.word	0x3f4
	.long	0x3b
	.long	.LLST109
	.uleb128 0x1b
	.long	.LBB73
	.long	.LBE73
	.long	0x1438
	.uleb128 0x22
	.long	.LASF139
	.byte	0x1
	.word	0x3f9
	.long	0xe2
	.uleb128 0x14
	.long	.LVL307
	.long	0x1fb1
	.byte	0
	.uleb128 0x1d
	.long	.LVL303
	.long	0x12b0
	.long	0x1452
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
	.long	.LVL309
	.long	0x1f2f
	.long	0x146c
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
	.long	.LVL310
	.long	0x1f22
	.long	0x1486
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
	.long	.LVL311
	.long	0x1f49
	.uleb128 0x1d
	.long	.LVL312
	.long	0x1f49
	.long	0x14a3
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL313
	.long	0x1f49
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF140
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST110
	.byte	0x1
	.long	0x157f
	.uleb128 0x16
	.long	.LASF115
	.byte	0x1
	.byte	0x91
	.long	0x3b
	.long	.LLST111
	.uleb128 0x11
	.long	.LASF141
	.byte	0x1
	.byte	0x92
	.long	0x3b
	.long	.LLST112
	.uleb128 0x23
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0x94
	.long	0x3b
	.long	.LLST113
	.uleb128 0x23
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0x98
	.long	0x3b
	.long	.LLST114
	.uleb128 0x11
	.long	.LASF142
	.byte	0x1
	.byte	0x9d
	.long	0x3b
	.long	.LLST115
	.uleb128 0x1b
	.long	.LBB76
	.long	.LBE76
	.long	0x154f
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.long	0x3b
	.long	.LLST116
	.uleb128 0x1f
	.long	.LVL326
	.long	0x139e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL331
	.long	0x1f49
	.uleb128 0x1d
	.long	.LVL332
	.long	0x1f49
	.long	0x156c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL333
	.long	0x1f49
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
	.long	.LASF143
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST117
	.byte	0x1
	.long	0x161d
	.uleb128 0x16
	.long	.LASF35
	.byte	0x1
	.byte	0xad
	.long	0x3b
	.long	.LLST118
	.uleb128 0x11
	.long	.LASF142
	.byte	0x1
	.byte	0xb5
	.long	0x3b
	.long	.LLST119
	.uleb128 0x1b
	.long	.LBB77
	.long	.LBE77
	.long	0x15f0
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0xb0
	.long	0x3b
	.long	.LLST120
	.uleb128 0x1f
	.long	.LVL340
	.long	0x139e
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
	.long	.LVL345
	.long	0x1f49
	.uleb128 0x1d
	.long	.LVL346
	.long	0x1f49
	.long	0x160d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL347
	.long	0x1f49
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF144
	.byte	0x1
	.byte	0xbf
	.long	.LFB25
	.long	.LFE25
	.long	.LLST121
	.byte	0x1
	.long	0x1660
	.uleb128 0x23
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0xc0
	.long	0x3b
	.long	.LLST122
	.uleb128 0x1f
	.long	.LVL351
	.long	0x157f
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
	.long	.LASF145
	.byte	0x1
	.byte	0xc8
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1683
	.uleb128 0x14
	.long	.LVL354
	.long	0x161d
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF146
	.byte	0x1
	.word	0x344
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.long	.LLST123
	.byte	0x1
	.long	0x1771
	.uleb128 0x21
	.long	.LASF115
	.byte	0x1
	.word	0x344
	.long	0x3b
	.long	.LLST124
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x344
	.long	0x3b
	.long	.LLST125
	.uleb128 0x21
	.long	.LASF98
	.byte	0x1
	.word	0x344
	.long	0x3b
	.long	.LLST126
	.uleb128 0x1a
	.long	.LASF147
	.byte	0x1
	.word	0x346
	.long	0x3b
	.long	.LLST127
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x1d8
	.long	0x174a
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x347
	.long	0x3b
	.long	.LLST128
	.uleb128 0x23
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x1a
	.long	.LASF148
	.byte	0x1
	.word	0x34a
	.long	0x29
	.long	.LLST129
	.uleb128 0x23
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x1a
	.long	.LASF35
	.byte	0x1
	.word	0x34d
	.long	0x3b
	.long	.LLST130
	.uleb128 0x1a
	.long	.LASF149
	.byte	0x1
	.word	0x34e
	.long	0x3b
	.long	.LLST131
	.uleb128 0x1f
	.long	.LVL364
	.long	0x139e
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
	.long	.LVL370
	.long	0x1f49
	.uleb128 0x1d
	.long	.LVL371
	.long	0x1f49
	.long	0x1767
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL372
	.long	0x1f49
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF150
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
	.long	0x1854
	.uleb128 0x16
	.long	.LASF151
	.byte	0x1
	.byte	0xf5
	.long	0x3b
	.long	.LLST132
	.uleb128 0x1b
	.long	.LBB83
	.long	.LBE83
	.long	0x17ee
	.uleb128 0x11
	.long	.LASF152
	.byte	0x1
	.byte	0xfd
	.long	0x3b
	.long	.LLST133
	.uleb128 0x11
	.long	.LASF153
	.byte	0x1
	.byte	0xfd
	.long	0x3b
	.long	.LLST134
	.uleb128 0x2d
	.long	0x4a5
	.long	.LBB84
	.long	.LBE84
	.byte	0x1
	.byte	0xfd
	.uleb128 0x2e
	.long	0x4b2
	.long	.LBB86
	.long	.LBE86
	.byte	0x1
	.byte	0xfd
	.uleb128 0x2f
	.long	0x4bf
	.long	.LLST135
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LBB88
	.long	.LBE88
	.long	0x184a
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x1
	.word	0x12c
	.long	0x3b
	.long	.LLST136
	.uleb128 0x1a
	.long	.LASF154
	.byte	0x1
	.word	0x12d
	.long	0x3b
	.long	.LLST137
	.uleb128 0x1d
	.long	.LVL404
	.long	0x1683
	.long	0x182e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL407
	.long	0x1683
	.uleb128 0x14
	.long	.LVL409
	.long	0x14ad
	.uleb128 0x14
	.long	.LVL411
	.long	0xd69
	.byte	0
	.uleb128 0x14
	.long	.LVL387
	.long	0x5d3
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF155
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
	.long	0x18ce
	.uleb128 0x21
	.long	.LASF156
	.byte	0x1
	.word	0x151
	.long	0x3b
	.long	.LLST138
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x1
	.word	0x155
	.long	0x3b
	.long	.LLST139
	.uleb128 0x1a
	.long	.LASF154
	.byte	0x1
	.word	0x156
	.long	0x3b
	.long	.LLST140
	.uleb128 0x1d
	.long	.LVL416
	.long	0x1683
	.long	0x18b2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL419
	.long	0x1683
	.uleb128 0x14
	.long	.LVL421
	.long	0x14ad
	.uleb128 0x14
	.long	.LVL425
	.long	0xd69
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF157
	.byte	0x1
	.word	0x417
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST141
	.byte	0x1
	.long	0x1b4b
	.uleb128 0x21
	.long	.LASF158
	.byte	0x1
	.word	0x417
	.long	0xe2
	.long	.LLST142
	.uleb128 0x1a
	.long	.LASF159
	.byte	0x1
	.word	0x419
	.long	0x3b
	.long	.LLST143
	.uleb128 0x1a
	.long	.LASF160
	.byte	0x1
	.word	0x41a
	.long	0x3b
	.long	.LLST144
	.uleb128 0x1a
	.long	.LASF161
	.byte	0x1
	.word	0x41b
	.long	0x3b
	.long	.LLST145
	.uleb128 0x1a
	.long	.LASF47
	.byte	0x1
	.word	0x41c
	.long	0x226
	.long	.LLST146
	.uleb128 0x1a
	.long	.LASF162
	.byte	0x1
	.word	0x41d
	.long	0x1f6
	.long	.LLST147
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x1f0
	.long	0x1b41
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x420
	.long	0x3b
	.long	.LLST148
	.uleb128 0x1b
	.long	.LBB90
	.long	.LBE90
	.long	0x1b1c
	.uleb128 0x1a
	.long	.LASF154
	.byte	0x1
	.word	0x439
	.long	0x3b
	.long	.LLST149
	.uleb128 0x1d
	.long	.LVL433
	.long	0x1178
	.long	0x1997
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
	.long	.LVL435
	.long	0x1f49
	.uleb128 0x1d
	.long	.LVL436
	.long	0x1f49
	.long	0x19b4
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL437
	.long	0x1f49
	.uleb128 0x1d
	.long	.LVL441
	.long	0x139e
	.long	0x19dc
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
	.long	.LVL442
	.long	0x139e
	.long	0x19fb
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
	.long	.LVL443
	.long	0x139e
	.long	0x1a1a
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
	.long	.LVL444
	.long	0x139e
	.long	0x1a33
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
	.long	.LVL445
	.long	0x139e
	.long	0x1a52
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
	.long	.LVL446
	.long	0x139e
	.long	0x1a71
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
	.long	.LVL447
	.long	0x139e
	.long	0x1a8a
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
	.long	.LVL448
	.long	0x139e
	.long	0x1aa9
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
	.long	.LVL449
	.long	0x139e
	.long	0x1ac8
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
	.long	.LVL450
	.long	0x139e
	.long	0x1ae1
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
	.long	.LVL451
	.long	0x139e
	.long	0x1b00
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
	.long	.LVL452
	.long	0x139e
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
	.long	.LVL431
	.long	0x132a
	.long	0x1b30
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL453
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
	.long	.LVL427
	.long	0x1fbe
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF163
	.byte	0x1
	.word	0x470
	.long	.LFB60
	.long	.LFE60
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1b92
	.uleb128 0x14
	.long	.LVL465
	.long	0x1f49
	.uleb128 0x1d
	.long	.LVL466
	.long	0x1f49
	.long	0x1b82
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL467
	.long	0x1f49
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF164
	.byte	0x1
	.word	0x480
	.long	.LFB61
	.long	.LFE61
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1bbd
	.uleb128 0x1f
	.long	.LVL468
	.long	0x1f49
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
	.long	.LASF165
	.byte	0x1
	.byte	0xd3
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1c34
	.uleb128 0x1b
	.long	.LBB92
	.long	.LBE92
	.long	0x1c2a
	.uleb128 0x11
	.long	.LASF152
	.byte	0x1
	.byte	0xd8
	.long	0x3b
	.long	.LLST150
	.uleb128 0x11
	.long	.LASF153
	.byte	0x1
	.byte	0xd8
	.long	0x3b
	.long	.LLST151
	.uleb128 0x2d
	.long	0x4a5
	.long	.LBB93
	.long	.LBE93
	.byte	0x1
	.byte	0xd8
	.uleb128 0x2e
	.long	0x4b2
	.long	.LBB95
	.long	.LBE95
	.byte	0x1
	.byte	0xd8
	.uleb128 0x2f
	.long	0x4bf
	.long	.LLST152
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL477
	.long	0x1b92
	.byte	0
	.uleb128 0x7
	.long	0x1c44
	.long	0x1c44
	.uleb128 0x8
	.long	0x82
	.byte	0x8
	.byte	0
	.uleb128 0x30
	.long	0x112
	.uleb128 0x31
	.long	.LASF166
	.byte	0x6
	.byte	0x53
	.long	0x1c56
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	0x1c34
	.uleb128 0x7
	.long	0x196
	.long	0x1c6b
	.uleb128 0x8
	.long	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x31
	.long	.LASF167
	.byte	0x6
	.byte	0xaf
	.long	0x1c5b
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	.LASF168
	.byte	0x6
	.byte	0xb6
	.long	0x1c85
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	0x3b
	.uleb128 0x31
	.long	.LASF169
	.byte	0x6
	.byte	0xbf
	.long	0x1c6
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0x3b
	.long	0x1ca7
	.uleb128 0x8
	.long	0x82
	.byte	0x2
	.byte	0
	.uleb128 0x31
	.long	.LASF170
	.byte	0x8
	.byte	0x35
	.long	0x1c97
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	.LASF171
	.byte	0x8
	.byte	0xa1
	.long	0x1c85
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.long	.LASF172
	.byte	0x1
	.byte	0x2d
	.long	0x449
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	manualMap
	.uleb128 0x7
	.long	0x2c4
	.long	0x1ce3
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x32
	.long	.LASF173
	.byte	0x1
	.byte	0x2e
	.long	0x1cd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ManualNoteRange
	.uleb128 0x32
	.long	.LASF174
	.byte	0x1
	.byte	0x2f
	.long	0x45f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiInMap
	.uleb128 0x32
	.long	.LASF175
	.byte	0x1
	.byte	0x37
	.long	0x340
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiThrough
	.uleb128 0x32
	.long	.LASF176
	.byte	0x1
	.byte	0x30
	.long	0x475
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiOutMap
	.uleb128 0x32
	.long	.LASF177
	.byte	0x1
	.byte	0x34
	.long	0x485
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerMap
	.uleb128 0x32
	.long	.LASF178
	.byte	0x1
	.byte	0x35
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerCount
	.uleb128 0x32
	.long	.LASF179
	.byte	0x1
	.byte	0x36
	.long	0x495
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	programMap
	.uleb128 0x32
	.long	.LASF180
	.byte	0x1
	.byte	0x38
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_RegisterChanged
	.uleb128 0x33
	.long	.LASF181
	.byte	0x1
	.word	0x2c6
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	prog_Display
	.uleb128 0x33
	.long	.LASF182
	.byte	0x1
	.word	0x2c7
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	prog_UpdDisplay
	.uleb128 0x33
	.long	.LASF183
	.byte	0x1
	.word	0x2dc
	.long	0x1dac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	reg_Out
	.uleb128 0x34
	.uleb128 0x32
	.long	.LASF184
	.byte	0x1
	.byte	0x31
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxActivceSensing
	.uleb128 0x32
	.long	.LASF185
	.byte	0x1
	.byte	0x32
	.long	0x433
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Setting
	.uleb128 0x32
	.long	.LASF186
	.byte	0x1
	.byte	0x82
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutNote
	.uleb128 0x32
	.long	.LASF187
	.byte	0x1
	.byte	0x83
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutManual
	.uleb128 0x32
	.long	.LASF188
	.byte	0x1
	.byte	0x84
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInNote
	.uleb128 0x32
	.long	.LASF189
	.byte	0x1
	.byte	0x85
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInChannel
	.uleb128 0x32
	.long	.LASF190
	.byte	0x1
	.byte	0x86
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInManual
	.uleb128 0x32
	.long	.LASF191
	.byte	0x1
	.byte	0x87
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastProgram
	.uleb128 0x7
	.long	0x3b
	.long	0x1e4d
	.uleb128 0x8
	.long	0x82
	.byte	0xb
	.byte	0
	.uleb128 0x32
	.long	.LASF192
	.byte	0x1
	.byte	0x1d
	.long	0x1e3d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Couplers
	.uleb128 0x32
	.long	.LASF193
	.byte	0x1
	.byte	0x1e
	.long	0x1e71
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cplInfo
	.uleb128 0x34
	.uleb128 0x7
	.long	0x3b
	.long	0x1e82
	.uleb128 0x8
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x32
	.long	.LASF194
	.byte	0x9
	.byte	0xaf
	.long	0x1e72
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x32
	.long	.LASF195
	.byte	0x1
	.byte	0x33
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiEEPromLoadError
	.uleb128 0x32
	.long	.LASF196
	.byte	0x1
	.byte	0x7d
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastCommand
	.uleb128 0x32
	.long	.LASF197
	.byte	0x1
	.byte	0x7e
	.long	0x3de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByte
	.uleb128 0x32
	.long	.LASF198
	.byte	0x1
	.byte	0x7f
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteCount
	.uleb128 0x32
	.long	.LASF199
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
	.long	.LASF200
	.long	.LASF200
	.byte	0x6
	.byte	0x5a
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF201
	.long	.LASF201
	.byte	0xa
	.byte	0x24
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF202
	.long	.LASF202
	.byte	0xb
	.byte	0x32
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF203
	.long	.LASF203
	.byte	0xa
	.byte	0x25
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF204
	.long	.LASF204
	.byte	0x6
	.byte	0xd6
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF205
	.long	.LASF205
	.byte	0x6
	.byte	0xd7
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF206
	.long	.LASF206
	.byte	0xa
	.byte	0x2f
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF207
	.long	.LASF207
	.byte	0x8
	.byte	0x90
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF208
	.long	.LASF208
	.byte	0xc
	.byte	0x7f
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF209
	.long	.LASF209
	.byte	0x4
	.byte	0x2d
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF210
	.long	.LASF210
	.byte	0xc
	.byte	0x7e
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF211
	.long	.LASF211
	.byte	0xa
	.byte	0x20
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF212
	.long	.LASF212
	.byte	0xa
	.byte	0x27
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF213
	.long	.LASF213
	.byte	0xa
	.byte	0x21
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF214
	.long	.LASF214
	.byte	0xa
	.byte	0x1f
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF215
	.long	.LASF215
	.byte	0x5
	.byte	0x46
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF216
	.long	.LASF216
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
	.long	.LFB48
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
	.long	.LFE48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST78:
	.long	.LVL216
	.long	.LVL217
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL217
	.long	.LVL235
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST79:
	.long	.LVL219
	.long	.LVL220-1
	.word	0x1
	.byte	0x68
	.long	.LVL220-1
	.long	.LVL222
	.word	0x2
	.byte	0x8c
	.sleb128 0
	.long	.LVL222
	.long	.LVL234
	.word	0xa
	.byte	0x80
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.long	reg_Out+1
	.byte	0x22
	.long	0
	.long	0
.LLST80:
	.long	.LVL222
	.long	.LVL225
	.word	0x1
	.byte	0x6c
	.long	.LVL225
	.long	.LVL232
	.word	0x1
	.byte	0x6d
	.long	.LVL232
	.long	.LVL234
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST81:
	.long	.LVL227
	.long	.LVL229
	.word	0x1
	.byte	0x6c
	.long	.LVL229
	.long	.LVL230
	.word	0x1
	.byte	0x68
	.long	.LVL230
	.long	.LVL231-1
	.word	0x3
	.byte	0x88
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST82:
	.long	.LFB49
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
	.long	.LCFI40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI40
	.long	.LFE49
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST83:
	.long	.LVL236
	.long	.LVL237
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL237
	.long	.LVL248
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST84:
	.long	.LVL239
	.long	.LVL243
	.word	0x1
	.byte	0x62
	.long	.LVL243
	.long	.LVL247
	.word	0x2
	.byte	0x7e
	.sleb128 0
	.long	0
	.long	0
.LLST85:
	.long	.LVL240
	.long	.LVL241
	.word	0x1
	.byte	0x68
	.long	.LVL241
	.long	.LVL242
	.word	0xc
	.byte	0x8e
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8e
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL242
	.long	.LVL244
	.word	0x1
	.byte	0x68
	.long	.LVL244
	.long	.LVL245
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
	.long	.LVL250
	.long	.LVL253-1
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
	.long	.LVL249
	.long	.LVL250
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	.LVL250
	.long	.LVL253-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST88:
	.long	.LVL257
	.long	.LVL258
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL258
	.long	.LVL260-1
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST89:
	.long	.LVL262
	.long	.LVL263
	.word	0x1
	.byte	0x68
	.long	.LVL263
	.long	.LVL264
	.word	0x1
	.byte	0x6e
	.long	.LVL264
	.long	.LFE53
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST90:
	.long	.LVL265
	.long	.LVL266
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL266
	.long	.LFE54
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST91:
	.long	.LVL266
	.long	.LVL272
	.word	0x1
	.byte	0x65
	.long	.LVL273
	.long	.LVL274
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST92:
	.long	.LVL266
	.long	.LVL272
	.word	0x1
	.byte	0x66
	.long	.LVL273
	.long	.LVL274
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST93:
	.long	.LVL266
	.long	.LVL267
	.word	0x1
	.byte	0x64
	.long	.LVL267
	.long	.LVL268
	.word	0x1
	.byte	0x62
	.long	.LVL268
	.long	.LVL272
	.word	0x1
	.byte	0x64
	.long	.LVL273
	.long	.LVL274
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST94:
	.long	.LVL275
	.long	.LVL276
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL276
	.long	.LVL281-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST95:
	.long	.LVL276
	.long	.LVL278
	.word	0x1
	.byte	0x62
	.long	.LVL279
	.long	.LVL280
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST96:
	.long	.LVL284
	.long	.LVL286
	.word	0x1
	.byte	0x68
	.long	.LVL286
	.long	.LFE56
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST97:
	.long	.LVL284
	.long	.LVL287
	.word	0x1
	.byte	0x66
	.long	.LVL287
	.long	.LVL289
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL289
	.long	.LFE56
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST98:
	.long	.LVL285
	.long	.LVL292
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
	.long	.LVL285
	.long	.LVL286
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL286
	.long	.LVL288
	.word	0x1
	.byte	0x68
	.long	.LVL289
	.long	.LVL292
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST100:
	.long	.LVL293
	.long	.LVL296
	.word	0x1
	.byte	0x68
	.long	.LVL296
	.long	.LVL297
	.word	0x1
	.byte	0x66
	.long	.LVL297
	.long	.LVL301
	.word	0x1
	.byte	0x68
	.long	.LVL301
	.long	.LFE57
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST101:
	.long	.LVL294
	.long	.LFE57
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
	.long	.LVL293
	.long	.LVL294
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL294
	.long	.LFE57
	.word	0x1
	.byte	0x6b
	.long	0
	.long	0
.LLST103:
	.long	.LVL294
	.long	.LVL295
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL295
	.long	.LFE57
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST104:
	.long	.LFB58
	.long	.LCFI41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI41
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI42
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI43
	.long	.LCFI44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI44
	.long	.LCFI45
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI45
	.long	.LCFI46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI46
	.long	.LFE58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST105:
	.long	.LVL302
	.long	.LVL303-1
	.word	0x1
	.byte	0x68
	.long	.LVL303-1
	.long	.LVL315
	.word	0x1
	.byte	0x6c
	.long	.LVL315
	.long	.LFE58
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST106:
	.long	.LVL302
	.long	.LVL303-1
	.word	0x1
	.byte	0x66
	.long	.LVL303-1
	.long	.LVL317
	.word	0x1
	.byte	0x60
	.long	.LVL317
	.long	.LFE58
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST107:
	.long	.LVL302
	.long	.LVL303-1
	.word	0x1
	.byte	0x64
	.long	.LVL303-1
	.long	.LVL314
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST108:
	.long	.LVL304
	.long	.LVL318
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST109:
	.long	.LVL305
	.long	.LVL316
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST110:
	.long	.LFB23
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
	.long	.LCFI51
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI51
	.long	.LCFI52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI52
	.long	.LCFI53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI53
	.long	.LCFI54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI54
	.long	.LCFI55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI55
	.long	.LFE23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST111:
	.long	.LVL319
	.long	.LVL321
	.word	0x1
	.byte	0x68
	.long	.LVL321
	.long	.LVL336
	.word	0x1
	.byte	0x5c
	.long	.LVL336
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST112:
	.long	.LVL320
	.long	.LVL321
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL321
	.long	.LVL335
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST113:
	.long	.LVL322
	.long	.LVL334
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST114:
	.long	.LVL323
	.long	.LVL325
	.word	0x1
	.byte	0x66
	.long	.LVL325
	.long	.LVL328
	.word	0x1
	.byte	0x5e
	.long	.LVL328
	.long	.LVL331-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST115:
	.long	.LVL329
	.long	.LVL330
	.word	0x1
	.byte	0x68
	.long	.LVL330
	.long	.LVL331-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST116:
	.long	.LVL324
	.long	.LVL333
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST117:
	.long	.LFB24
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
	.long	.LFE24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST118:
	.long	.LVL337
	.long	.LVL338
	.word	0x1
	.byte	0x68
	.long	.LVL338
	.long	.LVL342
	.word	0x1
	.byte	0x60
	.long	.LVL342
	.long	.LVL348
	.word	0x1
	.byte	0x6c
	.long	.LVL348
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST119:
	.long	.LVL343
	.long	.LVL344
	.word	0x1
	.byte	0x68
	.long	.LVL344
	.long	.LVL345-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST120:
	.long	.LVL339
	.long	.LVL342
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST121:
	.long	.LFB25
	.long	.LCFI60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI60
	.long	.LFE25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST122:
	.long	.LVL349
	.long	.LVL350
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL350
	.long	.LVL353
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST123:
	.long	.LFB52
	.long	.LCFI61
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI61
	.long	.LCFI62
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI62
	.long	.LCFI63
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI63
	.long	.LCFI64
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI64
	.long	.LFE52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST124:
	.long	.LVL355
	.long	.LVL356
	.word	0x1
	.byte	0x68
	.long	.LVL356
	.long	.LVL358
	.word	0x1
	.byte	0x6d
	.long	.LVL358
	.long	.LVL363
	.word	0x1
	.byte	0x64
	.long	.LVL363
	.long	.LVL373
	.word	0x1
	.byte	0x6d
	.long	.LVL373
	.long	.LFE52
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
	.long	.LVL355
	.long	.LVL357
	.word	0x1
	.byte	0x66
	.long	.LVL357
	.long	.LVL376
	.word	0x1
	.byte	0x60
	.long	.LVL376
	.long	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST126:
	.long	.LVL355
	.long	.LVL357
	.word	0x1
	.byte	0x64
	.long	.LVL357
	.long	.LVL375
	.word	0x1
	.byte	0x61
	.long	.LVL375
	.long	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST127:
	.long	.LVL356
	.long	.LVL357
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL357
	.long	.LVL361
	.word	0x1
	.byte	0x69
	.long	.LVL364
	.long	.LVL365
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL365
	.long	.LVL367
	.word	0x1
	.byte	0x69
	.long	.LVL368
	.long	.LVL369
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST128:
	.long	.LVL356
	.long	.LVL357
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL357
	.long	.LVL358
	.word	0x1
	.byte	0x6c
	.long	.LVL358
	.long	.LVL364-1
	.word	0x1
	.byte	0x62
	.long	.LVL364-1
	.long	.LVL374
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST129:
	.long	.LVL359
	.long	.LVL362
	.word	0x1
	.byte	0x66
	.long	.LVL362
	.long	.LVL364-1
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST130:
	.long	.LVL360
	.long	.LVL364-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST131:
	.long	.LVL362
	.long	.LVL364-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST132:
	.long	.LVL377
	.long	.LVL378
	.word	0x1
	.byte	0x68
	.long	.LVL378
	.long	.LVL386
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL386
	.long	.LVL387-1
	.word	0x1
	.byte	0x68
	.long	.LVL387-1
	.long	.LVL388
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL388
	.long	.LVL389
	.word	0x1
	.byte	0x68
	.long	.LVL389
	.long	.LVL390
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL390
	.long	.LVL391
	.word	0x1
	.byte	0x68
	.long	.LVL391
	.long	.LVL392
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL392
	.long	.LVL393
	.word	0x1
	.byte	0x68
	.long	.LVL393
	.long	.LVL394
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL394
	.long	.LVL395
	.word	0x1
	.byte	0x68
	.long	.LVL395
	.long	.LVL396
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL396
	.long	.LVL397
	.word	0x1
	.byte	0x68
	.long	.LVL397
	.long	.LVL398
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL398
	.long	.LVL399
	.word	0x1
	.byte	0x68
	.long	.LVL399
	.long	.LVL400
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL400
	.long	.LVL401
	.word	0x1
	.byte	0x68
	.long	.LVL401
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST133:
	.long	.LVL379
	.long	.LVL385
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST134:
	.long	.LVL380
	.long	.LVL381
	.word	0x1
	.byte	0x68
	.long	.LVL382
	.long	.LVL383
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL383
	.long	.LVL386
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST135:
	.long	.LVL384
	.long	.LVL385
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+6055
	.sleb128 0
	.long	0
	.long	0
.LLST136:
	.long	.LVL402
	.long	.LVL404-1
	.word	0x1
	.byte	0x68
	.long	.LVL405
	.long	.LVL407-1
	.word	0x1
	.byte	0x68
	.long	.LVL408
	.long	.LVL409-1
	.word	0x1
	.byte	0x68
	.long	.LVL410
	.long	.LVL411-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST137:
	.long	.LVL403
	.long	.LVL405
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL406
	.long	.LVL407-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST138:
	.long	.LVL412
	.long	.LVL413
	.word	0x1
	.byte	0x68
	.long	.LVL413
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST139:
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
	.long	.LVL423
	.word	0x1
	.byte	0x68
	.long	.LVL424
	.long	.LVL425-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST140:
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
.LLST141:
	.long	.LFB59
	.long	.LCFI65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI65
	.long	.LCFI66
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI66
	.long	.LCFI67
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI67
	.long	.LCFI68
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI68
	.long	.LCFI69
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI69
	.long	.LCFI70
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI70
	.long	.LCFI71
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI71
	.long	.LCFI72
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI72
	.long	.LCFI73
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI73
	.long	.LFE59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST142:
	.long	.LVL426
	.long	.LVL427-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL429
	.long	.LVL430
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL456
	.long	.LVL457
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL458
	.long	.LVL459
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL460
	.long	.LVL461
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
	.long	.LVL428
	.long	.LVL462
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST144:
	.long	.LVL429
	.long	.LVL464
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST145:
	.long	.LVL429
	.long	.LVL460
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST146:
	.long	.LVL430
	.long	.LVL432
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	.LVL438
	.long	.LVL456
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	.LVL459
	.long	.LVL463
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
	.long	.LVL439
	.long	.LVL440
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
	.long	.LVL430
	.long	.LVL456
	.word	0x1
	.byte	0x6c
	.long	.LVL459
	.long	.LVL460
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST149:
	.long	.LVL440
	.long	.LVL452
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST150:
	.long	.LVL469
	.long	.LVL475
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST151:
	.long	.LVL470
	.long	.LVL471
	.word	0x1
	.byte	0x68
	.long	.LVL472
	.long	.LVL473
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL473
	.long	.LVL476
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST152:
	.long	.LVL474
	.long	.LVL475
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+7139
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x17c
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
	.long	.LFB53
	.long	.LFE53-.LFB53
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
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB52
	.long	.LFE52-.LFB52
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB59
	.long	.LFE59-.LFB59
	.long	.LFB60
	.long	.LFE60-.LFB60
	.long	.LFB61
	.long	.LFE61-.LFB61
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
	.long	.LBB60
	.long	.LBE60
	.long	.LBB61
	.long	.LBE61
	.long	0
	.long	0
	.long	.LBB64
	.long	.LBE64
	.long	.LBB67
	.long	.LBE67
	.long	0
	.long	0
	.long	.LBB69
	.long	.LBE69
	.long	.LBB70
	.long	.LBE70
	.long	0
	.long	0
	.long	.LBB79
	.long	.LBE79
	.long	.LBB82
	.long	.LBE82
	.long	0
	.long	0
	.long	.LBB89
	.long	.LBE89
	.long	.LBB91
	.long	.LBE91
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
	.long	.LFB53
	.long	.LFE53
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
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB52
	.long	.LFE52
	.long	.LFB29
	.long	.LFE29
	.long	.LFB30
	.long	.LFE30
	.long	.LFB59
	.long	.LFE59
	.long	.LFB60
	.long	.LFE60
	.long	.LFB61
	.long	.LFE61
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
.LASF128:
	.string	"Manual_to_MidiNote"
.LASF166:
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
.LASF220:
	.string	"__iCliRetVal"
.LASF200:
	.string	"init_Pipe"
.LASF162:
	.string	"chanNote"
.LASF81:
	.string	"pRange"
.LASF149:
	.string	"manNote"
.LASF130:
	.string	"rangeEnd"
.LASF77:
	.string	"progNr"
.LASF107:
	.string	"actualReg"
.LASF126:
	.string	"pMidiInMap"
.LASF44:
	.string	"ManualNoteRange_t"
.LASF160:
	.string	"shiftBit"
.LASF104:
	.string	"midi_RegisterMatchProgram"
.LASF150:
	.string	"midiIn_Process"
.LASF205:
	.string	"pipe_off"
.LASF9:
	.string	"long long unsigned int"
.LASF165:
	.string	"midi_CheckTxActiveSense"
.LASF180:
	.string	"midi_RegisterChanged"
.LASF50:
	.string	"OutChannel"
.LASF179:
	.string	"programMap"
.LASF124:
	.string	"spaceCount"
.LASF15:
	.string	"message8"
.LASF199:
	.string	"midiDataByteExpected"
.LASF176:
	.string	"midiOutMap"
.LASF120:
	.string	"reg_toLCD"
.LASF65:
	.string	"pCoupler"
.LASF136:
	.string	"manual_NoteOnOff"
.LASF123:
	.string	"reg_ClearOnLCD"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF187:
	.string	"midiLastOutManual"
.LASF78:
	.string	"regNr"
.LASF52:
	.string	"sw_channel"
.LASF101:
	.string	"program"
.LASF36:
	.string	"ManualNote_t"
.LASF144:
	.string	"midi_AllManualsOff"
.LASF114:
	.string	"midi_ProgramChange"
.LASF217:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF158:
	.string	"pipeMessage"
.LASF127:
	.string	"init_Manual2Midi"
.LASF196:
	.string	"midiLastCommand"
.LASF46:
	.string	"noteRange"
.LASF198:
	.string	"midiDataByteCount"
.LASF6:
	.string	"long int"
.LASF143:
	.string	"midi_ManualOff"
.LASF170:
	.string	"serESPMidiTmp"
.LASF125:
	.string	"init_Midi2Manual"
.LASF184:
	.string	"midiRxActivceSensing"
.LASF154:
	.string	"noteOnOff"
.LASF93:
	.string	"get_RegisterStatus"
.LASF135:
	.string	"moduleBit_to_manualNote"
.LASF183:
	.string	"reg_Out"
.LASF119:
	.string	"prog_toLcd"
.LASF72:
	.string	"midiAllReset"
.LASF174:
	.string	"midiInMap"
.LASF4:
	.string	"uint16_t"
.LASF131:
	.string	"rangeStart"
.LASF194:
	.string	"lcdData"
.LASF45:
	.string	"midiNote"
.LASF41:
	.string	"endNote"
.LASF49:
	.string	"InChannel"
.LASF53:
	.string	"MidiOutMap_t"
.LASF204:
	.string	"pipe_on"
.LASF92:
	.string	"mask"
.LASF145:
	.string	"midi_CheckRxActiveSense"
.LASF185:
	.string	"midi_Setting"
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
.LASF132:
	.string	"range"
.LASF140:
	.string	"midiAllNotesOff"
.LASF138:
	.string	"modulNrMask"
.LASF43:
	.string	"ManualMap_t"
.LASF67:
	.string	"init_Midi"
.LASF5:
	.string	"unsigned int"
.LASF102:
	.string	"SaveEEProm"
.LASF206:
	.string	"eeprom_UpdateProg"
.LASF63:
	.string	"AcceptProgChange"
.LASF35:
	.string	"manual"
.LASF159:
	.string	"command"
.LASF110:
	.string	"prog"
.LASF208:
	.string	"lcd_putc"
.LASF7:
	.string	"long unsigned int"
.LASF213:
	.string	"eeprom_ReadMidiOutMap"
.LASF139:
	.string	"myMessage"
.LASF173:
	.string	"ManualNoteRange"
.LASF197:
	.string	"midiDataByte"
.LASF57:
	.string	"registers"
.LASF163:
	.string	"midiSendAllNotesOff"
.LASF152:
	.string	"sreg_save"
.LASF151:
	.string	"midiByte"
.LASF146:
	.string	"midiNote_to_Manual"
.LASF85:
	.string	"section"
.LASF153:
	.string	"__ToDo"
.LASF32:
	.string	"hw_channel"
.LASF193:
	.string	"cplInfo"
.LASF70:
	.string	"getAllCouplers"
.LASF31:
	.string	"Pipe_Module_t"
.LASF40:
	.string	"startNote"
.LASF98:
	.string	"onOff"
.LASF171:
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
.LASF209:
	.string	"lcd_blank"
.LASF19:
	.string	"Timer"
.LASF75:
	.string	"regSec"
.LASF10:
	.string	"sizetype"
.LASF117:
	.string	"splitCount"
.LASF133:
	.string	"init_Manual2Module"
.LASF121:
	.string	"myChar"
.LASF103:
	.string	"regBytePtr"
.LASF195:
	.string	"midiEEPromLoadError"
.LASF89:
	.string	"modBit"
.LASF28:
	.string	"Pipe_t"
.LASF47:
	.string	"manualNote"
.LASF129:
	.string	"Midi_updateManualRange"
.LASF26:
	.string	"pipeIn"
.LASF178:
	.string	"registerCount"
.LASF212:
	.string	"eeprom_ReadMidiThrough"
.LASF79:
	.string	"set_Coupler"
.LASF82:
	.string	"moduleBit_to_registerNr"
.LASF20:
	.string	"pipeOutM4"
.LASF211:
	.string	"eeprom_ReadMidiInMap"
.LASF112:
	.string	"regBits"
.LASF64:
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
.LASF156:
	.string	"midiBytesTransferred"
.LASF58:
	.string	"couplers"
.LASF164:
	.string	"midi_SendActiveSense"
.LASF219:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF84:
	.string	"pSection"
.LASF161:
	.string	"moduleBits"
.LASF203:
	.string	"eeprom_ReadProg"
.LASF216:
	.string	"serial0USB_logPipeIn"
.LASF3:
	.string	"unsigned char"
.LASF66:
	.string	"midi_CouplerReset"
.LASF175:
	.string	"midiThrough"
.LASF73:
	.string	"registers_CalcCount"
.LASF202:
	.string	"log_putError"
.LASF17:
	.string	"counter"
.LASF215:
	.string	"pipeMsgPush"
.LASF108:
	.string	"midi_CountRegisterInProgram"
.LASF214:
	.string	"eeprom_ReadManualMap"
.LASF56:
	.string	"RegisterMap_t"
.LASF190:
	.string	"midiLastInManual"
.LASF51:
	.string	"MidiThrough_t"
.LASF115:
	.string	"channel"
.LASF155:
	.string	"proc_ESPmidi"
.LASF186:
	.string	"midiLastOutNote"
.LASF201:
	.string	"eeprom_ReadReg"
.LASF192:
	.string	"midi_Couplers"
.LASF13:
	.string	"Word_t"
.LASF168:
	.string	"pipeProcessing"
.LASF189:
	.string	"midiLastInChannel"
.LASF12:
	.string	"byteval"
.LASF60:
	.string	"char"
.LASF33:
	.string	"note"
.LASF87:
	.string	"mode"
.LASF177:
	.string	"registerMap"
.LASF113:
	.string	"byteNr"
.LASF122:
	.string	"addChar"
.LASF167:
	.string	"pipe"
.LASF54:
	.string	"startReg"
.LASF207:
	.string	"serial1MIDISend"
.LASF141:
	.string	"splitRange"
.LASF105:
	.string	"progPtr"
.LASF210:
	.string	"lcd_goto"
.LASF94:
	.string	"count_Registers"
.LASF62:
	.string	"VelZero4Off"
.LASF221:
	.string	"__iRestore"
.LASF182:
	.string	"prog_UpdDisplay"
.LASF0:
	.string	"int8_t"
.LASF29:
	.string	"AssnRead"
.LASF86:
	.string	"read_Register"
.LASF39:
	.string	"ModulBitError_t"
.LASF147:
	.string	"found"
.LASF97:
	.string	"register_onOff"
.LASF148:
	.string	"noteBase0"
.LASF134:
	.string	"manualNote_to_moduleBit"
.LASF106:
	.string	"tempReg"
.LASF55:
	.string	"endReg"
.LASF96:
	.string	"resultPtr"
.LASF169:
	.string	"pipe_Module"
.LASF14:
	.string	"Message16"
.LASF1:
	.string	"uint8_t"
.LASF157:
	.string	"midiKeyPress_Process"
.LASF142:
	.string	"midiChanel"
.LASF88:
	.string	"modBitComplette"
.LASF23:
	.string	"pipeInM12"
.LASF22:
	.string	"pipeInM16"
.LASF172:
	.string	"manualMap"
.LASF137:
	.string	"moduleInfo"
.LASF76:
	.string	"init_Registers"
.LASF30:
	.string	"AssnWrite"
.LASF181:
	.string	"prog_Display"
.LASF61:
	.string	"TxActivceSense"
.LASF188:
	.string	"midiLastInNote"
.LASF21:
	.string	"pipeOut"
.LASF68:
	.string	"result"
.LASF218:
	.string	".././Midi.c"
.LASF100:
	.string	"register_toProgram"
.LASF191:
	.string	"midiLastProgram"
.LASF91:
	.string	"modulNr"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
