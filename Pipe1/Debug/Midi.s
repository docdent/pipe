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
	.loc 1 63 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL0:
.LBB13:
	.loc 1 66 0
	ldi r24,0
.LBE13:
	.loc 1 65 0
	ldi r30,lo8(midi_Couplers)
	ldi r31,hi8(midi_Couplers)
.LBB14:
	.loc 1 66 0
	rjmp .L2
.LVL1:
.L3:
	.loc 1 67 0 discriminator 3
	st Z,__zero_reg__
	.loc 1 66 0 discriminator 3
	subi r24,lo8(-(1))
.LVL2:
	.loc 1 67 0 discriminator 3
	adiw r30,1
.LVL3:
.L2:
	.loc 1 66 0 discriminator 1
	cpi r24,lo8(12)
	brlo .L3
/* epilogue start */
.LBE14:
	.loc 1 69 0
	ret
	.cfi_endproc
.LFE18:
	.size	midi_CouplerReset, .-midi_CouplerReset
	.section	.text.init_Midi,"ax",@progbits
.global	init_Midi
	.type	init_Midi, @function
init_Midi:
.LFB17:
	.loc 1 59 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 60 0
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
	.loc 1 73 0
	.cfi_startproc
.LVL5:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 75 0
	cpi r24,lo8(12)
	brsh .L9
	.loc 1 76 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ldi r25,lo8(-1)
	st Z,r25
	.loc 1 78 0
	cpi r24,lo8(6)
	brlo .L7
	.loc 1 80 0
	subi r24,lo8(-(-6))
.LVL6:
	rjmp .L8
.L7:
	.loc 1 83 0
	subi r24,lo8(-(6))
.LVL7:
.L8:
	.loc 1 85 0
	mov r30,r24
	ldi r31,0
	movw r26,r30
	subi r26,lo8(-(midi_Couplers))
	sbci r27,hi8(-(midi_Couplers))
	ld r24,X
.LVL8:
	tst r24
	breq .L6
	.loc 1 87 0
	movw r26,r30
	subi r26,lo8(-(midi_Couplers))
	sbci r27,hi8(-(midi_Couplers))
	st X,__zero_reg__
	.loc 1 88 0
	lsl r30
	rol r31
.LVL9:
	subi r30,lo8(-(cplInfo))
	sbci r31,hi8(-(cplInfo))
	lpm r24,Z
	ret
.LVL10:
.L9:
	.loc 1 91 0
	ldi r24,0
.LVL11:
.L6:
	.loc 1 92 0
	ret
	.cfi_endproc
.LFE19:
	.size	set_Coupler, .-set_Coupler
	.section	.text.getAllCouplers,"ax",@progbits
.global	getAllCouplers
	.type	getAllCouplers, @function
getAllCouplers:
.LFB20:
	.loc 1 94 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 96 0
	ldi r24,0
.LVL12:
	ldi r25,0
.LVL13:
	.loc 1 97 0
	ldi r20,lo8(11)
	rjmp .L12
.LVL14:
.L13:
	.loc 1 104 0
	mov r20,r18
.LVL15:
.L12:
	.loc 1 100 0
	mov r18,r24
.LVL16:
	mov r19,r25
	lsl r18
	rol r19
	mov r24,r18
.LVL17:
	mov r25,r19
	.loc 1 101 0
	mov r30,r20
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ld r21,Z
	cpi r21,lo8(-1)
	brne .L11
	.loc 1 102 0
	ori r24,lo8(1)
.L11:
	.loc 1 104 0
	ldi r18,lo8(-1)
	add r18,r20
.LVL18:
	cpse r20,__zero_reg__
	rjmp .L13
/* epilogue start */
	.loc 1 106 0
	ret
	.cfi_endproc
.LFE20:
	.size	getAllCouplers, .-getAllCouplers
	.section	.text.setAllCouplers,"ax",@progbits
.global	setAllCouplers
	.type	setAllCouplers, @function
setAllCouplers:
.LFB21:
	.loc 1 108 0
	.cfi_startproc
.LVL19:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 109 0
	ldi r20,0
.LVL20:
.L17:
	.loc 1 112 0
	sbrs r24,0
	rjmp .L15
	.loc 1 113 0
	mov r30,r20
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ldi r18,lo8(-1)
	st Z,r18
	rjmp .L16
.L15:
	.loc 1 115 0
	mov r30,r20
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	st Z,__zero_reg__
.L16:
	.loc 1 117 0
	mov r18,r24
	mov r19,r25
	lsr r19
	ror r18
	mov r24,r18
.LVL21:
	mov r25,r19
	.loc 1 118 0
	subi r20,lo8(-(1))
.LVL22:
	cpi r20,lo8(12)
	brlo .L17
/* epilogue start */
	.loc 1 119 0
	ret
	.cfi_endproc
.LFE21:
	.size	setAllCouplers, .-setAllCouplers
	.section	.text.midiAllReset,"ax",@progbits
.global	midiAllReset
	.type	midiAllReset, @function
midiAllReset:
.LFB22:
	.loc 1 137 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 138 0
	ldi r24,lo8(-128)
	sts pipeProcessing,r24
	.loc 1 139 0
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
	.loc 1 357 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL24:
.LBB15:
	.loc 1 359 0
	ldi r18,0
.LBE15:
	.loc 1 358 0
	ldi r19,0
.LBB16:
	.loc 1 359 0
	rjmp .L20
.LVL25:
.L22:
	.loc 1 360 0
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
	.loc 1 360 0 is_stmt 0 discriminator 1
	cp r24,r19
	brlo .L21
	.loc 1 362 0 is_stmt 1
	ldi r19,lo8(1)
.LVL26:
	add r19,r24
.LVL27:
.L21:
	.loc 1 359 0 discriminator 2
	subi r18,lo8(-(1))
.LVL28:
.L20:
	.loc 1 359 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L22
.LBE16:
	.loc 1 365 0 is_stmt 1
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
	.loc 1 368 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 371 0
	ldi r24,lo8(-1)
	sts midi_RegisterChanged,r24
.LVL29:
.LBB17:
	.loc 1 373 0
	ldi r18,0
	rjmp .L24
.LVL30:
.L25:
	.loc 1 374 0 discriminator 3
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
	.loc 1 375 0 discriminator 3
	std Z+1,r24
	.loc 1 376 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 373 0 discriminator 3
	subi r18,lo8(-(1))
.LVL31:
.L24:
	.loc 1 373 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L25
.LBE17:
	.loc 1 378 0 is_stmt 1
	call eeprom_ReadReg
.LVL32:
	cpi r24,lo8(-1)
	brne .L26
	.loc 1 379 0
	sts registerCount,__zero_reg__
	.loc 1 380 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(5)
	ldi r24,lo8(1)
	call log_putError
.LVL33:
	rjmp .L27
.L26:
	.loc 1 382 0
	call registers_CalcCount
.LVL34:
.L27:
	.loc 1 385 0
	call eeprom_ReadProg
.LVL35:
	cpi r24,lo8(-1)
	brne .L23
	rjmp .L32
.LVL36:
.L30:
.LBB18:
.LBB19:
	.loc 1 389 0 discriminator 3
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
	.loc 1 388 0 discriminator 3
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
	.loc 1 388 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L30
.LBE20:
	.loc 1 391 0 is_stmt 1 discriminator 2
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
	.loc 1 387 0 discriminator 2
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
	.loc 1 387 0 is_stmt 0 discriminator 1
	cpi r19,lo8(64)
	brlo .L33
.LBE21:
	.loc 1 393 0 is_stmt 1
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
	.loc 1 397 0
	.cfi_startproc
.LVL44:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 400 0
	lds r25,registerCount
	cp r24,r25
	brsh .L35
	.loc 1 400 0 is_stmt 0 discriminator 1
	cpi r24,lo8(64)
	brsh .L35
	ldi r18,lo8(8)
	ldi r30,lo8(registerMap)
	ldi r31,hi8(registerMap)
.L38:
.LVL45:
.LBB22:
	.loc 1 406 0 is_stmt 1
	ld r19,Z
	cp r24,r19
	brlo .L36
	.loc 1 406 0 is_stmt 0 discriminator 1
	ldd r25,Z+1
	cp r25,r24
	brlo .L36
	.loc 1 409 0 is_stmt 1
	ldd r18,Z+2
.LVL46:
	mov r25,r24
	sub r25,r19
	.loc 1 410 0
	ldi r24,0
.LVL47:
	add r25,r18
	ret
.LVL48:
.L36:
	.loc 1 412 0
	adiw r30,3
.LVL49:
	.loc 1 413 0
	subi r18,lo8(-(-1))
.LVL50:
	brne .L38
.LVL51:
.L35:
.LBE22:
	.loc 1 417 0
	ldi r24,lo8(-1)
.LVL52:
	ldi r25,0
	.loc 1 418 0
	ret
	.cfi_endproc
.LFE33:
	.size	regNr_to_moduleBit, .-regNr_to_moduleBit
	.section	.text.moduleBit_to_registerNr,"ax",@progbits
.global	moduleBit_to_registerNr
	.type	moduleBit_to_registerNr, @function
moduleBit_to_registerNr:
.LFB34:
	.loc 1 420 0
	.cfi_startproc
.LVL53:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB23:
	.loc 1 422 0
	ldi r25,0
	rjmp .L40
.LVL54:
.L43:
	.loc 1 423 0
	lds r20,registerMap+2
	cp r24,r20
	brlo .L41
	.loc 1 423 0 is_stmt 0 discriminator 1
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
	.loc 1 425 0 is_stmt 1
	sub r24,r20
	add r24,r21
	ret
.LVL56:
.L41:
	.loc 1 422 0 discriminator 2
	subi r25,lo8(-(1))
.LVL57:
.L40:
	.loc 1 422 0 is_stmt 0 discriminator 1
	cpi r25,lo8(8)
	brlo .L43
.LBE23:
	.loc 1 428 0 is_stmt 1
	ldi r24,lo8(-1)
.LVL58:
	.loc 1 429 0
	ret
	.cfi_endproc
.LFE34:
	.size	moduleBit_to_registerNr, .-moduleBit_to_registerNr
	.section	.text.read_Register,"ax",@progbits
.global	read_Register
	.type	read_Register, @function
read_Register:
.LFB35:
	.loc 1 431 0
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
	.loc 1 434 0
	lds r25,registerCount
	cp r24,r25
	brlo .+2
	rjmp .L50
	mov r28,r22
.LBB24:
	.loc 1 436 0
	call regNr_to_moduleBit
.LVL60:
	.loc 1 437 0
	cpse r24,__zero_reg__
	rjmp .L46
.LVL61:
.LBB25:
	.loc 1 440 0
	mov r18,r25
	andi r18,lo8(31)
.LVL62:
	.loc 1 441 0
	swap r25
.LVL63:
	lsr r25
	andi r25,lo8(7)
.LVL64:
	.loc 1 442 0
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
	.loc 1 443 0
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
	.loc 1 443 0 is_stmt 0 discriminator 1
	sbrc r28,1
	rjmp .L51
.L47:
	.loc 1 446 0 is_stmt 1
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
	.loc 1 446 0 is_stmt 0 discriminator 1
	sbrc r28,0
	rjmp .L52
.L49:
	.loc 1 450 0 is_stmt 1
	tst r25
	breq .L45
	.loc 1 450 0 is_stmt 0 discriminator 1
	tst r20
	breq .L45
	.loc 1 450 0 discriminator 2
	cpi r28,lo8(4)
	brne .L45
	rjmp .L53
.L46:
.LBE25:
.LBE24:
	.loc 1 458 0 is_stmt 1
	ldi r24,0
.LBB27:
	rjmp .L45
.LVL69:
.L51:
.LBB26:
	.loc 1 445 0
	ldi r24,lo8(1)
	rjmp .L45
.LVL70:
.L52:
	.loc 1 449 0
	ldi r24,lo8(1)
	rjmp .L45
.L53:
	.loc 1 451 0
	ldi r24,lo8(1)
	rjmp .L45
.LVL71:
.L50:
.LBE26:
.LBE27:
	.loc 1 458 0
	ldi r24,0
.LVL72:
.L45:
/* epilogue start */
	.loc 1 459 0
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
	.loc 1 461 0
	.cfi_startproc
.LVL73:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 463 0
	lds r25,registerCount
	cp r24,r25
	brsh .L58
.LBB28:
	.loc 1 465 0
	call regNr_to_moduleBit
.LVL74:
	.loc 1 466 0
	cpse r24,__zero_reg__
	rjmp .L56
.LVL75:
.LBB29:
	.loc 1 469 0
	mov r18,r25
	andi r18,lo8(31)
.LVL76:
	.loc 1 470 0
	mov r19,r25
	swap r19
	lsr r19
	andi r19,lo8(7)
.LVL77:
	.loc 1 471 0
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
	.loc 1 472 0
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
	.loc 1 475 0
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
	.loc 1 478 0
	ldi r24,lo8(1)
	ret
.L56:
.LBE29:
.LBE28:
	.loc 1 484 0
	ldi r24,0
.LBB31:
	ret
.LVL83:
.L59:
.LBB30:
	.loc 1 474 0
	ldi r24,lo8(2)
.LVL84:
	ret
.LVL85:
.L58:
.LBE30:
.LBE31:
	.loc 1 484 0
	ldi r24,0
.LVL86:
.L55:
	.loc 1 485 0
	ret
	.cfi_endproc
.LFE36:
	.size	get_RegisterStatus, .-get_RegisterStatus
	.section	.text.count_Registers,"ax",@progbits
.global	count_Registers
	.type	count_Registers, @function
count_Registers:
.LFB37:
	.loc 1 488 0
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
	.loc 1 490 0
	ldi r28,0
.LBE32:
	.loc 1 489 0
	ldi r29,0
.LBB33:
	.loc 1 490 0
	rjmp .L61
.LVL89:
.L63:
	.loc 1 491 0
	mov r22,r17
	mov r24,r28
	call read_Register
.LVL90:
	cpse r24,__zero_reg__
	.loc 1 492 0
	subi r29,lo8(-(1))
.LVL91:
.L62:
	.loc 1 490 0 discriminator 2
	subi r28,lo8(-(1))
.LVL92:
.L61:
	.loc 1 490 0 is_stmt 0 discriminator 1
	cpi r28,lo8(64)
	brlo .L63
.LBE33:
	.loc 1 496 0 is_stmt 1
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
	.loc 1 498 0
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
	.loc 1 502 0
	ldi r28,0
.LBE34:
	.loc 1 501 0
	ldi r29,0
	.loc 1 499 0
	ldi r16,0
.LBB35:
	.loc 1 502 0
	rjmp .L65
.LVL98:
.L69:
	mov r17,r28
	andi r17,lo8(7)
	.loc 1 505 0
	brne .L66
	.loc 1 507 0
	ldi r29,0
.LVL99:
.L66:
	.loc 1 509 0
	lsr r29
.LVL100:
	.loc 1 510 0
	ldi r22,lo8(3)
	mov r24,r28
	call read_Register
.LVL101:
	tst r24
	breq .L67
	.loc 1 511 0
	ori r29,lo8(-128)
.LVL102:
	.loc 1 512 0
	subi r16,lo8(-(1))
.LVL103:
.L67:
	.loc 1 514 0
	cpi r17,lo8(7)
	brne .L68
	.loc 1 516 0
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L68
.LVL104:
	.loc 1 517 0
	movw r30,r14
	st Z,r29
	movw r24,r14
	adiw r24,1
.LVL105:
	movw r14,r24
.LVL106:
.L68:
	.loc 1 502 0 discriminator 2
	subi r28,lo8(-(1))
.LVL107:
.L65:
	.loc 1 502 0 is_stmt 0 discriminator 1
	cpi r28,lo8(64)
	brlo .L69
.LBE35:
	.loc 1 522 0 is_stmt 1
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
	.loc 1 525 0
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
	.loc 1 527 0
	lds r25,registerCount
	cp r24,r25
	brsh .L71
	mov r28,r22
.LBB36:
	.loc 1 529 0
	call regNr_to_moduleBit
.LVL113:
	.loc 1 530 0
	cpse r24,__zero_reg__
	rjmp .L71
.LVL114:
.LBB37:
	.loc 1 533 0
	mov r24,r25
	andi r24,lo8(31)
.LVL115:
	.loc 1 534 0
	swap r25
.LVL116:
	lsr r25
	andi r25,lo8(7)
.LVL117:
	.loc 1 535 0
	sbrs r28,0
	rjmp .L74
	.loc 1 537 0
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
	.loc 1 540 0
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
	.loc 1 545 0
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
	.loc 1 204 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 206 0
	lds r24,midiLastCommand
	cpi r24,lo8(-16)
	brne .L75
	.loc 1 206 0 is_stmt 0 discriminator 1
	lds r24,midiDataByte
	cpi r24,lo8(125)
	brne .L75
	.loc 1 208 0 is_stmt 1
	lds r25,midiDataByte+1
	andi r25,lo8(-16)
	cpi r25,lo8(64)
	breq .L77
	.loc 1 208 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L75
.L77:
	.loc 1 211 0 is_stmt 1
	lds r24,midiDataByte+3
	cpi r24,lo8(-91)
	brne .L75
	.loc 1 211 0 is_stmt 0 discriminator 1
	lds r18,midiDataByteCount
	cpi r18,lo8(4)
	brne .L75
	.loc 1 214 0 is_stmt 1
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
	.loc 1 547 0
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
	.loc 1 550 0
	cpi r24,lo8(64)
	brlo .+2
	rjmp .L87
.LVL124:
.LBB38:
	.loc 1 553 0
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
	.loc 1 554 0
	mov r11,__zero_reg__
.LBE39:
	.loc 1 552 0
	ldi r17,0
.LBE38:
	.loc 1 549 0
	ldi r16,0
.LBB42:
.LBB41:
	.loc 1 554 0
	rjmp .L81
.LVL127:
.L86:
	.loc 1 557 0
	movw r12,r30
	ldi r24,-1
	sub r12,r24
	sbc r13,r24
.LVL128:
	ld r28,Z
.LVL129:
.LBB40:
	.loc 1 558 0
	ldi r29,0
	rjmp .L82
.LVL130:
.L85:
	.loc 1 559 0
	mov r24,r28
	andi r24,lo8(1)
	sbrc r28,0
	.loc 1 560 0
	subi r16,lo8(-(1))
.LVL131:
.L83:
	.loc 1 562 0 discriminator 2
	ldi r22,lo8(1)
	cpse r24,__zero_reg__
	rjmp .L84
	ldi r22,0
.L84:
	mov r24,r17
	call register_onOff
.LVL132:
	.loc 1 564 0 discriminator 2
	lsr r28
.LVL133:
	.loc 1 565 0 discriminator 2
	subi r17,lo8(-(1))
.LVL134:
	.loc 1 558 0 discriminator 2
	subi r29,lo8(-(1))
.LVL135:
.L82:
	.loc 1 558 0 is_stmt 0 discriminator 1
	cpi r29,lo8(8)
	brlo .L85
.LBE40:
	.loc 1 554 0 is_stmt 1 discriminator 2
	inc r11
.LVL136:
	.loc 1 557 0 discriminator 2
	movw r30,r12
.LVL137:
.L81:
	.loc 1 554 0 discriminator 1
	ldi r24,lo8(7)
	cp r24,r11
	brsh .L86
.LBE41:
	.loc 1 569 0
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
	.loc 1 570 0
	ldd r24,Z+8
	ldd r25,Z+9
	call setAllCouplers
.LVL140:
	rjmp .L80
.LVL141:
.L87:
.LBE42:
	.loc 1 549 0
	ldi r16,0
.LVL142:
.L80:
	.loc 1 573 0
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
	.loc 1 575 0
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
	.loc 1 576 0
	lds r24,midi_Setting+2
.LVL145:
	cpse r24,__zero_reg__
	rjmp .L94
.LBB43:
	rjmp .L90
.LVL146:
.L92:
.LBB44:
	.loc 1 581 0
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
	.loc 1 580 0 discriminator 2
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
	.loc 1 580 0 is_stmt 0 discriminator 1
	cpi r24,lo8(4)
	brlo .L92
.LBE45:
	.loc 1 578 0 is_stmt 1
	ldi r24,0
.LVL150:
.LBB46:
	rjmp .L91
.LVL151:
.L95:
	.loc 1 583 0
	ldi r24,lo8(-1)
.LVL152:
.L91:
.LBE46:
	.loc 1 587 0
	cpi r24,lo8(-1)
	brne .L90
	.loc 1 589 0
	mov r24,r29
.LVL153:
	call program_toRegister
.LVL154:
	.loc 1 590 0
	sts midiLastProgram,r29
.L90:
.LBE47:
	.loc 1 594 0
	lds r24,midiThrough
	cpse r28,r24
	rjmp .L88
	.loc 1 596 0
	lds r24,midiThrough+1
	cpi r24,lo8(-1)
	breq .L88
	.loc 1 598 0
	ori r24,lo8(-64)
	call serial1MIDISend
.LVL155:
	.loc 1 600 0
	mov r24,r29
	call serial1MIDISend
.LVL156:
.L88:
/* epilogue start */
	.loc 1 603 0
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
	.loc 1 606 0
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
	.loc 1 607 0
	ldi r28,0
	rjmp .L97
.LVL160:
.L98:
	.loc 1 608 0 discriminator 3
	ldi r22,0
	mov r24,r28
	call register_onOff
.LVL161:
	.loc 1 607 0 discriminator 3
	subi r28,lo8(-(1))
.LVL162:
.L97:
	.loc 1 607 0 is_stmt 0 discriminator 1
	lds r24,registerCount
	cp r28,r24
	brlo .L98
/* epilogue start */
.LBE48:
	.loc 1 610 0 is_stmt 1
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
	.loc 1 612 0
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
	.loc 1 616 0
	cpi r24,lo8(64)
	brsh .L102
.LBB49:
	.loc 1 617 0
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
	.loc 1 618 0
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
	.loc 1 615 0
	ldi r17,0
.LVL173:
.L100:
	.loc 1 620 0
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
	.loc 1 621 0
	cpse r16,__zero_reg__
	.loc 1 622 0
	call eeprom_UpdateProg
.LVL176:
.L101:
	.loc 1 625 0
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
	.loc 1 627 0
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
	.loc 1 631 0
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
	.loc 1 634 0
	ldi r28,0
.LBE50:
	.loc 1 632 0
	ldi r29,0
	.loc 1 630 0
	mov r15,__zero_reg__
.LBB51:
	.loc 1 634 0
	rjmp .L104
.LVL183:
.L109:
	.loc 1 635 0
	mov r25,r28
	andi r25,lo8(7)
	brne .L105
.LVL184:
	.loc 1 637 0
	movw r30,r16
	ld r29,Z
.LVL185:
	subi r16,-1
	sbci r17,-1
.LVL186:
.L105:
	.loc 1 639 0
	mov r24,r28
	call get_RegisterStatus
.LVL187:
	.loc 1 640 0
	sbrs r29,0
	rjmp .L106
	.loc 1 642 0
	cpi r24,lo8(2)
	breq .L108
	rjmp .L110
.L106:
	.loc 1 649 0
	cpi r24,lo8(2)
	breq .L111
	.loc 1 652 0
	cpi r24,lo8(1)
	brne .L108
	.loc 1 654 0
	inc r15
.LVL188:
.L108:
	.loc 1 657 0 discriminator 2
	lsr r29
.LVL189:
	.loc 1 634 0 discriminator 2
	subi r28,lo8(-(1))
.LVL190:
.L104:
	.loc 1 634 0 is_stmt 0 discriminator 1
	lds r25,registerCount
	cp r28,r25
	brlo .L109
.LBE51:
	.loc 1 659 0 is_stmt 1
	mov r24,r15
.LBB52:
	rjmp .L107
.LVL191:
.L110:
	.loc 1 644 0
	ldi r24,lo8(-1)
.LVL192:
	rjmp .L107
.LVL193:
.L111:
	.loc 1 651 0
	ldi r24,lo8(-1)
.LVL194:
.L107:
/* epilogue start */
.LBE52:
	.loc 1 660 0
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
	.loc 1 662 0
	.cfi_startproc
.LVL199:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 665 0
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
	.loc 1 667 0
	ldi r25,0
.LBE53:
	.loc 1 666 0
	ldi r18,0
	.loc 1 664 0
	ldi r24,0
.LBB54:
	.loc 1 667 0
	rjmp .L113
.LVL202:
.L116:
	.loc 1 668 0
	mov r19,r25
	andi r19,lo8(7)
	brne .L114
.LVL203:
	.loc 1 670 0
	ld r18,Z
.LVL204:
	adiw r30,1
.LVL205:
.L114:
	.loc 1 672 0
	sbrc r18,0
	.loc 1 673 0
	subi r24,lo8(-(1))
.LVL206:
.L115:
	.loc 1 675 0 discriminator 2
	lsr r18
.LVL207:
	.loc 1 667 0 discriminator 2
	subi r25,lo8(-(1))
.LVL208:
.L113:
	.loc 1 667 0 is_stmt 0 discriminator 1
	lds r19,registerCount
	cp r25,r19
	brlo .L116
/* epilogue start */
.LBE54:
	.loc 1 679 0 is_stmt 1
	ret
	.cfi_endproc
.LFE45:
	.size	midi_CountRegisterInProgram, .-midi_CountRegisterInProgram
	.section	.text.init_Midi2Manual,"ax",@progbits
.global	init_Midi2Manual
	.type	init_Midi2Manual, @function
init_Midi2Manual:
.LFB46:
	.loc 1 683 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL209:
.LBB55:
	.loc 1 687 0
	ldi r25,lo8(64)
.LBE55:
	.loc 1 685 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
.LBB56:
	.loc 1 687 0
	rjmp .L118
.LVL210:
.L119:
	.loc 1 689 0 discriminator 3
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 690 0 discriminator 3
	std Z+1,r24
	.loc 1 691 0 discriminator 3
	std Z+3,r24
	.loc 1 692 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 693 0 discriminator 3
	adiw r30,4
.LVL211:
	.loc 1 687 0 discriminator 3
	subi r25,lo8(-(-1))
.LVL212:
.L118:
	.loc 1 687 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L119
.LBE56:
	.loc 1 696 0 is_stmt 1
	call eeprom_ReadMidiInMap
.LVL213:
	cpi r24,lo8(-1)
	brne .L120
	.loc 1 697 0
	sts midiEEPromLoadError,r24
	.loc 1 698 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
	st Z,__zero_reg__
	.loc 1 699 0
	ldi r24,lo8(36)
	std Z+1,r24
	.loc 1 700 0
	std Z+3,r24
	.loc 1 701 0
	ldi r25,lo8(56)
	std Z+2,r25
	.loc 1 702 0
	ldi r18,lo8(1)
	std Z+16,r18
	.loc 1 703 0
	std Z+17,r24
	.loc 1 704 0
	std Z+19,r24
	.loc 1 705 0
	std Z+18,r25
	.loc 1 706 0
	ldi r18,lo8(2)
	std Z+32,r18
	.loc 1 707 0
	std Z+33,r24
	.loc 1 708 0
	std Z+35,r24
	.loc 1 709 0
	std Z+34,r25
	.loc 1 710 0
	ldi r25,lo8(3)
	std Z+48,r25
	.loc 1 711 0
	std Z+49,r24
	.loc 1 712 0
	std Z+51,r24
	.loc 1 713 0
	ldi r24,lo8(30)
	std Z+50,r24
	.loc 1 714 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL214:
.L120:
	.loc 1 716 0
	call eeprom_ReadMidiThrough
.LVL215:
	cpi r24,lo8(-1)
	brne .L117
	.loc 1 717 0
	ldi r30,lo8(midiThrough)
	ldi r31,hi8(midiThrough)
	st Z,r24
	.loc 1 718 0
	std Z+1,r24
	.loc 1 719 0
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
	.loc 1 723 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL217:
.LBB57:
	.loc 1 725 0
	ldi r18,0
	rjmp .L123
.LVL218:
.L124:
	.loc 1 726 0 discriminator 3
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 727 0 discriminator 3
	std Z+1,r24
	.loc 1 725 0 discriminator 3
	subi r18,lo8(-(1))
.LVL219:
.L123:
	.loc 1 725 0 is_stmt 0 discriminator 1
	mov r24,r18
	ldi r25,0
	sbiw r24,0
	brne .L124
.LBE57:
	.loc 1 729 0 is_stmt 1
	call eeprom_ReadMidiOutMap
.LVL220:
	cpi r24,lo8(-1)
	brne .L122
	.loc 1 730 0
	sts midiEEPromLoadError,r24
	.loc 1 732 0
	ldi r30,lo8(midiOutMap)
	ldi r31,hi8(midiOutMap)
	st Z,__zero_reg__
	.loc 1 733 0
	ldi r25,lo8(1)
	std Z+2,r25
	.loc 1 734 0
	ldi r25,lo8(2)
	std Z+4,r25
	.loc 1 735 0
	ldi r25,lo8(3)
	std Z+6,r25
	.loc 1 736 0
	ldi r30,lo8(midi_Setting)
	ldi r31,hi8(midi_Setting)
	st Z,__zero_reg__
	.loc 1 737 0
	std Z+1,__zero_reg__
	.loc 1 738 0
	std Z+2,r24
	.loc 1 739 0
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
	.loc 1 783 0
	.cfi_startproc
.LVL222:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	.loc 1 784 0
	ldi r24,lo8(-1)
.LVL223:
	ldi r25,lo8(-1)
	.loc 1 785 0
	cpi r30,lo8(4)
	brsh .L127
	.loc 1 786 0
	ldi r31,0
	lsl r30
	rol r31
.LVL224:
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r18,Z
	cpi r18,lo8(-1)
	breq .L127
	.loc 1 787 0
	mov r24,r18
	.loc 1 788 0
	mov r25,r22
.L127:
	.loc 1 793 0
	ret
	.cfi_endproc
.LFE49:
	.size	Manual_to_MidiNote, .-Manual_to_MidiNote
	.section	.text.Midi_updateManualRange,"ax",@progbits
.global	Midi_updateManualRange
	.type	Midi_updateManualRange, @function
Midi_updateManualRange:
.LFB50:
	.loc 1 797 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL225:
.LBB58:
	.loc 1 798 0
	ldi r23,0
	rjmp .L129
.LVL226:
.L135:
.LBB59:
.LBB60:
	.loc 1 802 0
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
	.loc 1 802 0 is_stmt 0 discriminator 1
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
	.loc 1 803 0 is_stmt 1
	cp r26,r22
	brsh .L131
	.loc 1 804 0
	mov r22,r26
.LVL229:
.L131:
	.loc 1 806 0
	cp r21,r18
	brsh .L130
	.loc 1 807 0
	mov r21,r18
.LVL230:
.L130:
	.loc 1 810 0
	tst r21
	breq .L132
	.loc 1 810 0 is_stmt 0 discriminator 1
	cpi r22,lo8(-1)
	brne .L133
.L132:
	.loc 1 811 0 is_stmt 1
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 812 0
	std Z+1,r24
	rjmp .L134
.L133:
	.loc 1 814 0
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	st Z,r22
	.loc 1 815 0
	std Z+1,r21
.L134:
	.loc 1 801 0 discriminator 2
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
	.loc 1 801 0 is_stmt 0 discriminator 1
	cpi r20,lo8(4)
	brsh .+2
	rjmp .L135
.LBE61:
.LBE62:
	.loc 1 798 0 is_stmt 1 discriminator 2
	subi r23,lo8(-(1))
.LVL234:
.L129:
	.loc 1 798 0 is_stmt 0 discriminator 1
	cpi r23,lo8(4)
	brlo .L139
/* epilogue start */
.LBE58:
	.loc 1 819 0 is_stmt 1
	ret
	.cfi_endproc
.LFE50:
	.size	Midi_updateManualRange, .-Midi_updateManualRange
	.section	.text.init_Manual2Module,"ax",@progbits
.global	init_Manual2Module
	.type	init_Manual2Module, @function
init_Manual2Module:
.LFB51:
	.loc 1 821 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL235:
.LBB63:
	.loc 1 822 0
	ldi r22,lo8(3)
	rjmp .L141
.LVL236:
.L142:
.LBB64:
	.loc 1 825 0 discriminator 3
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
	.loc 1 826 0 discriminator 3
	adiw r26,1
	st X,r19
	sbiw r26,1
	.loc 1 827 0 discriminator 3
	movw r30,r26
	std Z+2,__zero_reg__
	.loc 1 824 0 discriminator 3
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
	.loc 1 824 0 is_stmt 0 discriminator 1
	tst r18
	brge .L142
.LBE65:
	.loc 1 822 0 is_stmt 1 discriminator 2
	subi r22,lo8(-(-1))
.LVL240:
.L141:
	.loc 1 822 0 is_stmt 0 discriminator 1
	tst r22
	brge .L145
.LBE63:
	.loc 1 831 0 is_stmt 1
	call eeprom_ReadManualMap
.LVL241:
	cpi r24,lo8(-1)
	brne .L144
	.loc 1 833 0
	sts midiEEPromLoadError,r24
	.loc 1 834 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(3)
	ldi r24,lo8(1)
	call log_putError
.LVL242:
	.loc 1 836 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
	ldi r24,lo8(36)
	st Z,r24
	.loc 1 837 0
	ldi r19,lo8(67)
	std Z+1,r19
	.loc 1 838 0
	std Z+2,__zero_reg__
	.loc 1 839 0
	ldi r18,lo8(68)
	std Z+3,r18
	.loc 1 840 0
	ldi r25,lo8(91)
	std Z+4,r25
	.loc 1 841 0
	ldi r20,lo8(32)
	std Z+5,r20
	.loc 1 842 0
	std Z+12,r24
	.loc 1 843 0
	std Z+13,r19
	.loc 1 844 0
	ldi r20,lo8(64)
	std Z+14,r20
	.loc 1 845 0
	std Z+15,r18
	.loc 1 846 0
	std Z+16,r25
	.loc 1 847 0
	ldi r20,lo8(96)
	std Z+17,r20
	.loc 1 848 0
	std Z+24,r24
	.loc 1 849 0
	std Z+25,r19
	.loc 1 850 0
	ldi r19,lo8(-128)
	std Z+26,r19
	.loc 1 851 0
	std Z+27,r18
	.loc 1 852 0
	std Z+28,r25
	.loc 1 853 0
	ldi r25,lo8(-96)
	std Z+29,r25
	.loc 1 854 0
	std Z+36,r24
	.loc 1 855 0
	ldi r24,lo8(65)
	std Z+37,r24
	.loc 1 856 0
	ldi r24,lo8(-64)
	std Z+38,r24
	.loc 1 857 0
	std Z+48,__zero_reg__
	.loc 1 858 0
	ldi r24,lo8(29)
	std Z+49,r24
	.loc 1 859 0
	ldi r24,lo8(-32)
	std Z+50,r24
.L144:
	.loc 1 861 0
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
	.loc 1 865 0
	.cfi_startproc
.LVL244:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 868 0
	cpi r24,lo8(4)
	brsh .L147
.LBB66:
	.loc 1 871 0
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
	.loc 1 872 0
	ldi r24,lo8(4)
.LVL246:
.L150:
	.loc 1 874 0
	ld r18,Z
	cp r22,r18
	brlo .L148
	.loc 1 874 0 is_stmt 0 discriminator 1
	ldd r25,Z+1
	cp r25,r22
	brlo .L148
	.loc 1 877 0 is_stmt 1
	ldd r25,Z+2
	sub r22,r18
.LVL247:
	.loc 1 878 0
	ldi r24,0
.LVL248:
	add r25,r22
	ret
.LVL249:
.L148:
	.loc 1 880 0
	adiw r30,3
.LVL250:
	.loc 1 881 0
	subi r24,lo8(-(-1))
.LVL251:
	brne .L150
.LVL252:
.L147:
.LBE66:
	.loc 1 885 0
	ldi r24,lo8(-1)
	ldi r25,0
	.loc 1 886 0
	ret
	.cfi_endproc
.LFE52:
	.size	manualNote_to_moduleBit, .-manualNote_to_moduleBit
	.section	.text.moduleBit_to_manualNote,"ax",@progbits
.global	moduleBit_to_manualNote
	.type	moduleBit_to_manualNote, @function
moduleBit_to_manualNote:
.LFB53:
	.loc 1 888 0
	.cfi_startproc
.LVL253:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 895 0
	ldi r27,0
	.loc 1 894 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
.LVL254:
.L156:
.LBB67:
	.loc 1 897 0
	ldi r20,lo8(4)
	rjmp .L152
.LVL255:
.L155:
	.loc 1 898 0
	ldd r21,Z+2
	cp r24,r21
	brlo .L153
	.loc 1 898 0 is_stmt 0 discriminator 1
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
	.loc 1 901 0 is_stmt 1
	mov r25,r24
	sub r25,r21
	.loc 1 902 0
	mov r24,r27
	add r25,r26
	ret
.LVL257:
.L153:
	.loc 1 904 0 discriminator 2
	adiw r30,3
.LVL258:
	.loc 1 897 0 discriminator 2
	subi r20,lo8(-(-1))
.LVL259:
.L152:
	.loc 1 897 0 is_stmt 0 discriminator 1
	cpse r20,__zero_reg__
	rjmp .L155
.LBE67:
	.loc 1 906 0 is_stmt 1
	subi r27,lo8(-(1))
.LVL260:
	.loc 1 907 0
	cpi r27,lo8(5)
	brlo .L156
	.loc 1 911 0
	ldi r24,lo8(-1)
.LVL261:
	ldi r25,0
	.loc 1 912 0
	ret
	.cfi_endproc
.LFE53:
	.size	moduleBit_to_manualNote, .-moduleBit_to_manualNote
	.section	.text.manual_NoteOnOff,"ax",@progbits
.global	manual_NoteOnOff
	.type	manual_NoteOnOff, @function
manual_NoteOnOff:
.LFB54:
	.loc 1 914 0
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
	mov r14,r22
	mov r15,r20
	.loc 1 916 0
	call manualNote_to_moduleBit
.LVL263:
	.loc 1 918 0
	mov r18,r25
	swap r18
	lsr r18
	andi r18,lo8(7)
	ldi r16,lo8(1)
	ldi r17,0
	rjmp 2f
	1:
	lsl r16
	rol r17
	2:
	dec r18
	brpl 1b
.LVL264:
	.loc 1 919 0
	mov r29,r25
	andi r29,lo8(31)
.LVL265:
	.loc 1 920 0
	cpse r24,__zero_reg__
	rjmp .L158
	.loc 1 921 0
	cpse r15,__zero_reg__
	rjmp .L159
	.loc 1 923 0
	mov r22,r16
	mov r24,r29
	call pipe_off
.LVL266:
	rjmp .L160
.L159:
	.loc 1 926 0
	mov r22,r16
	mov r24,r29
	call pipe_on
.LVL267:
.L160:
	.loc 1 929 0
	lds r24,pipe_Module+1
	and r24,r16
	brne .L158
.LBB68:
	.loc 1 932 0
	ldi r24,lo8(1)
	cpse r15,r24
	rjmp .L165
	ldi r25,lo8(32)
	rjmp .L161
.L165:
	ldi r25,0
.L161:
	.loc 1 933 0 discriminator 4
	mov r24,r16
	or r25,r29
	call pipeMsgPush
.LVL268:
.L158:
.LBE68:
	.loc 1 937 0
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldd r24,Z+1
	cpi r24,lo8(-1)
	breq .L157
	.loc 1 940 0
	ldi r25,lo8(1)
	cp r15,r25
	breq .L166
	.loc 1 940 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
	tst r25
	breq .L167
	.loc 1 940 0
	ldi r25,lo8(-112)
	rjmp .L163
.L166:
	ldi r25,lo8(-112)
	rjmp .L163
.L167:
	ldi r25,lo8(-128)
.L163:
	.loc 1 940 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL269:
	.loc 1 941 0 is_stmt 1 discriminator 6
	mov r24,r14
	call serial1MIDISend
.LVL270:
	.loc 1 942 0 discriminator 6
	cpse r15,__zero_reg__
	rjmp .L168
	.loc 1 942 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L169
	.loc 1 942 0
	ldi r24,lo8(64)
	rjmp .L164
.L168:
	ldi r24,lo8(64)
	rjmp .L164
.L169:
	ldi r24,0
.L164:
	.loc 1 942 0 discriminator 6
	call serial1MIDISend
.LVL271:
.L157:
/* epilogue start */
	.loc 1 946 0 is_stmt 1
	pop r29
.LVL272:
	pop r28
.LVL273:
	pop r17
	pop r16
.LVL274:
	pop r15
.LVL275:
	pop r14
.LVL276:
	ret
	.cfi_endproc
.LFE54:
	.size	manual_NoteOnOff, .-manual_NoteOnOff
	.section	.text.midiAllNotesOff,"ax",@progbits
.global	midiAllNotesOff
	.type	midiAllNotesOff, @function
midiAllNotesOff:
.LFB23:
	.loc 1 142 0
	.cfi_startproc
.LVL277:
	push r12
.LCFI38:
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
.LCFI39:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI40:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI41:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI42:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI43:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI44:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI45:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r12,r24
.LVL278:
	.loc 1 143 0
	mov r13,__zero_reg__
	.loc 1 144 0
	rjmp .L171
.LVL279:
.L175:
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
	ld r24,Z
	cpi r24,lo8(4)
	brsh .L172
.LBB69:
	.loc 1 148 0
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
.LVL280:
.LBB70:
	.loc 1 150 0
	ldd r15,Z+2
.LVL281:
	rjmp .L173
.L174:
	.loc 1 151 0 discriminator 3
	clr r14
	inc r14
	add r14,r22
.LVL282:
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
.LVL283:
	.loc 1 150 0 discriminator 3
	dec r15
.LVL284:
	.loc 1 151 0 discriminator 3
	mov r22,r14
.LVL285:
.L173:
	.loc 1 150 0 discriminator 1
	cpse r15,__zero_reg__
	rjmp .L174
.LVL286:
.L172:
.LBE70:
.LBE69:
	.loc 1 154 0
	inc r13
.LVL287:
.L171:
	.loc 1 144 0
	ldi r24,lo8(3)
	cp r24,r13
	brlo .+2
	rjmp .L175
/* epilogue start */
	.loc 1 156 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
.LVL288:
	pop r12
.LVL289:
	ret
	.cfi_endproc
.LFE23:
	.size	midiAllNotesOff, .-midiAllNotesOff
	.section	.text.midi_ManualOff,"ax",@progbits
.global	midi_ManualOff
	.type	midi_ManualOff, @function
midi_ManualOff:
.LFB24:
	.loc 1 158 0
	.cfi_startproc
.LVL290:
	push r16
.LCFI46:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI47:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI48:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI49:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 160 0
	cpi r24,lo8(4)
	brsh .L176
	.loc 1 160 0 is_stmt 0 discriminator 1
	mov r16,r24
	ldi r17,0
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ld r28,Z
	cpi r28,lo8(-1)
	breq .L176
	mov r29,r24
	.loc 1 160 0 discriminator 2
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r24,Z+1
.LVL291:
	cpi r24,lo8(-1)
	brne .L178
.LBB71:
	rjmp .L176
.LVL292:
.L179:
	.loc 1 162 0 is_stmt 1 discriminator 3
	ldi r20,0
	mov r22,r28
	mov r24,r29
	call manual_NoteOnOff
.LVL293:
	.loc 1 161 0 discriminator 3
	subi r28,lo8(-(1))
.LVL294:
.L178:
	.loc 1 161 0 is_stmt 0 discriminator 1
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r25,Z+1
	cp r25,r28
	brsh .L179
.LVL295:
.L176:
/* epilogue start */
.LBE71:
	.loc 1 165 0 is_stmt 1
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
	.loc 1 167 0
	.cfi_startproc
	push r28
.LCFI50:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL296:
.LBB72:
	.loc 1 168 0
	ldi r28,0
	rjmp .L181
.LVL297:
.L182:
	.loc 1 169 0 discriminator 3
	mov r24,r28
	call midi_ManualOff
.LVL298:
	.loc 1 168 0 discriminator 3
	subi r28,lo8(-(1))
.LVL299:
.L181:
	.loc 1 168 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brlo .L182
/* epilogue start */
.LBE72:
	.loc 1 174 0 is_stmt 1
	pop r28
.LVL300:
	ret
	.cfi_endproc
.LFE25:
	.size	midi_AllManualsOff, .-midi_AllManualsOff
	.section	.text.midi_CheckRxActiveSense,"ax",@progbits
.global	midi_CheckRxActiveSense
	.type	midi_CheckRxActiveSense, @function
midi_CheckRxActiveSense:
.LFB26:
	.loc 1 176 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 177 0
	lds r24,midiRxActivceSensing
	tst r24
	breq .L183
	.loc 1 179 0
	lds r24,swTimer+6
	cpse r24,__zero_reg__
	rjmp .L183
	.loc 1 181 0
	call midi_AllManualsOff
.LVL301:
	.loc 1 182 0
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
	.loc 1 743 0
	.cfi_startproc
.LVL302:
	push r16
.LCFI51:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI52:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI53:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI54:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r22
	mov r17,r20
	.loc 1 744 0
	mov r29,r24
	andi r29,lo8(15)
.LVL303:
.LBB73:
	.loc 1 746 0
	ldi r28,0
.LBE73:
	.loc 1 745 0
	ldi r25,0
.LBB76:
	.loc 1 746 0
	rjmp .L186
.LVL304:
.L189:
	.loc 1 747 0
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
.LVL305:
.LBB74:
	.loc 1 749 0
	movw r26,r30
	ldd r22,Z+1
	mov r23,r16
	sub r23,r22
	mov r22,r23
.LVL306:
	.loc 1 750 0
	brmi .L187
	.loc 1 750 0 is_stmt 0 discriminator 1
	movw r30,r26
	ldd r30,Z+2
	ldi r31,0
	mov r26,r23
	lsl r23
	sbc r27,r27
	cp r26,r30
	cpc r27,r31
	brge .L187
.LVL307:
.LBB75:
	.loc 1 753 0 is_stmt 1
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
.LVL308:
	add r22,r25
.LVL309:
	.loc 1 754 0
	cpi r17,lo8(1)
	brne .L188
	.loc 1 755 0
	sts midiLastInManual,r24
	.loc 1 756 0
	sts midiLastInNote,r22
.L188:
	.loc 1 758 0
	mov r20,r17
.LVL310:
	call manual_NoteOnOff
.LVL311:
	.loc 1 759 0
	ldi r25,lo8(-1)
.LVL312:
.L187:
.LBE75:
.LBE74:
	.loc 1 746 0 discriminator 2
	subi r28,lo8(-(1))
.LVL313:
.L186:
	.loc 1 746 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brsh .+2
	rjmp .L189
.LBE76:
	.loc 1 763 0 is_stmt 1
	cpi r17,lo8(1)
	brne .L190
	.loc 1 763 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L190
	.loc 1 765 0 is_stmt 1
	sts midiLastInNote,r16
	.loc 1 766 0
	sts midiLastInChannel,r29
	.loc 1 767 0
	ldi r24,lo8(-1)
	sts midiLastInManual,r24
.L190:
	.loc 1 770 0
	lds r24,midiThrough
	cpse r29,r24
	rjmp .L185
	.loc 1 772 0
	lds r24,midiThrough+1
	cpi r24,lo8(-1)
	breq .L185
	.loc 1 774 0
	cpi r17,lo8(1)
	breq .L194
	.loc 1 774 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
.LVL314:
	tst r25
	breq .L195
	.loc 1 774 0
	ldi r25,lo8(-112)
	rjmp .L192
.LVL315:
.L194:
	ldi r25,lo8(-112)
.LVL316:
	rjmp .L192
.L195:
	ldi r25,lo8(-128)
.L192:
	.loc 1 774 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL317:
	.loc 1 776 0 is_stmt 1 discriminator 6
	mov r24,r16
	call serial1MIDISend
.LVL318:
	.loc 1 778 0 discriminator 6
	cpse r17,__zero_reg__
	rjmp .L196
	.loc 1 778 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L197
	.loc 1 778 0
	ldi r24,lo8(64)
	rjmp .L193
.L196:
	ldi r24,lo8(64)
	rjmp .L193
.L197:
	ldi r24,0
.L193:
	.loc 1 778 0 discriminator 6
	call serial1MIDISend
.LVL319:
.L185:
/* epilogue start */
	.loc 1 781 0 is_stmt 1
	pop r29
.LVL320:
	pop r28
.LVL321:
	pop r17
.LVL322:
	pop r16
.LVL323:
	ret
	.cfi_endproc
.LFE48:
	.size	midiNote_to_Manual, .-midiNote_to_Manual
	.section	.text.midiIn_Process,"ax",@progbits
.global	midiIn_Process
	.type	midiIn_Process, @function
midiIn_Process:
.LFB29:
	.loc 1 221 0
	.cfi_startproc
.LVL324:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 222 0
	tst r24
	brlt .+2
	rjmp .L199
	.loc 1 225 0
	cpi r24,lo8(-8)
	brlo .L200
	.loc 1 227 0
	cpi r24,lo8(-2)
	brne .L201
	.loc 1 228 0
	ldi r24,lo8(1)
.LVL325:
	sts midiRxActivceSensing,r24
.LBB77:
	.loc 1 229 0
	in r25,__SREG__
.LVL326:
.LBB78:
.LBB79:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE79:
.LBE78:
	.loc 1 229 0
	rjmp .L202
.LVL327:
.L203:
	.loc 1 229 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(25)
.LVL328:
	std Z+6,r24
	std Z+7,__zero_reg__
.LVL329:
	.loc 1 229 0 discriminator 3
	ldi r24,0
.LVL330:
.L202:
	.loc 1 229 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L203
.LVL331:
.LBB80:
.LBB81:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL332:
.LBE81:
.LBE80:
.LBE77:
	ret
.LVL333:
.L201:
	.loc 1 230 0
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L198
	.loc 1 231 0
	call midiAllReset
.LVL334:
	ret
.LVL335:
.L200:
	.loc 1 236 0
	sts midiLastCommand,r24
	.loc 1 237 0
	sts midiDataByteCount,__zero_reg__
	.loc 1 238 0
	ldi r25,lo8(-128)
	add r25,r24
	cpi r25,lo8(64)
	brsh .L205
	.loc 1 240 0
	ldi r24,lo8(2)
.LVL336:
	sts midiDataByteExpected,r24
	ret
.LVL337:
.L205:
	.loc 1 241 0
	ldi r25,lo8(32)
	add r25,r24
	cpi r25,lo8(16)
	brsh .L206
	.loc 1 243 0
	ldi r24,lo8(2)
.LVL338:
	sts midiDataByteExpected,r24
	ret
.LVL339:
.L206:
	.loc 1 244 0
	cpi r24,lo8(-14)
	brne .L207
	.loc 1 246 0
	ldi r24,lo8(2)
.LVL340:
	sts midiDataByteExpected,r24
	ret
.LVL341:
.L207:
	.loc 1 247 0
	cpi r24,lo8(-16)
	brne .L208
	.loc 1 249 0
	ldi r24,lo8(-1)
.LVL342:
	sts midiDataByteExpected,r24
	ret
.LVL343:
.L208:
	.loc 1 250 0
	ldi r25,lo8(64)
	add r25,r24
	cpi r25,lo8(32)
	brsh .L209
	.loc 1 252 0
	ldi r24,lo8(1)
.LVL344:
	sts midiDataByteExpected,r24
	ret
.LVL345:
.L209:
	.loc 1 253 0
	cpi r24,lo8(-15)
	breq .L210
	.loc 1 253 0 is_stmt 0 discriminator 1
	cpi r24,lo8(-13)
	brne .L211
.L210:
	.loc 1 255 0 is_stmt 1
	ldi r24,lo8(1)
.LVL346:
	sts midiDataByteExpected,r24
	ret
.LVL347:
.L211:
	.loc 1 256 0
	cpi r24,lo8(-9)
	brne .+2
	rjmp .L198
	.loc 1 260 0
	sts midiDataByteExpected,__zero_reg__
	ret
.L199:
	.loc 1 266 0
	lds r30,midiDataByteCount
	cpi r30,lo8(8)
	brsh .L212
	.loc 1 268 0
	ldi r25,lo8(1)
	add r25,r30
	sts midiDataByteCount,r25
	ldi r31,0
	subi r30,lo8(-(midiDataByte))
	sbci r31,hi8(-(midiDataByte))
	st Z,r24
.L212:
	.loc 1 270 0
	lds r24,midiDataByteExpected
.LVL348:
	cpi r24,lo8(-1)
	breq .L198
	.loc 1 272 0
	lds r25,midiDataByteCount
	cp r25,r24
	brlo .L198
	.loc 1 274 0
	lds r25,midiLastCommand
	cpi r25,lo8(-16)
	brsh .L213
.LBB82:
	.loc 1 276 0
	mov r24,r25
	andi r24,lo8(15)
.LVL349:
	.loc 1 278 0
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
.LVL350:
	.loc 1 282 0
	ldi r20,0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL351:
	.loc 1 283 0
	rjmp .L213
.LVL352:
.L214:
	.loc 1 285 0
	lds r25,midiDataByte+1
	cpse r25,__zero_reg__
	rjmp .L220
	.loc 1 287 0
	ldi r20,0
	rjmp .L219
.L220:
	.loc 1 290 0
	ldi r20,lo8(1)
.L219:
.LVL353:
	.loc 1 292 0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL354:
	.loc 1 293 0
	rjmp .L213
.LVL355:
.L217:
	.loc 1 295 0
	lds r25,midiDataByte
	cpi r25,lo8(123)
	brne .L213
	.loc 1 296 0
	call midiAllNotesOff
.LVL356:
	rjmp .L213
.LVL357:
.L218:
	.loc 1 300 0
	lds r22,midiDataByte
	call midi_ProgramChange
.LVL358:
.L213:
.LBE82:
	.loc 1 307 0
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
	.loc 1 313 0
	.cfi_startproc
.LVL359:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 317 0
	lds r25,serESPMidiTmp+2
	mov r24,r25
.LVL360:
	andi r24,lo8(15)
.LVL361:
	.loc 1 319 0
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
.LVL362:
	.loc 1 323 0
	ldi r20,0
	lds r22,serESPMidiTmp+1
	call midiNote_to_Manual
.LVL363:
	.loc 1 324 0
	ret
.LVL364:
.L226:
	.loc 1 326 0
	lds r25,serESPMidiTmp
	cpse r25,__zero_reg__
	rjmp .L230
	.loc 1 328 0
	ldi r20,0
	rjmp .L228
.L230:
	.loc 1 331 0
	ldi r20,lo8(1)
.L228:
.LVL365:
	.loc 1 333 0
	lds r22,serESPMidiTmp+1
	call midiNote_to_Manual
.LVL366:
	.loc 1 334 0
	ret
.LVL367:
.L227:
	.loc 1 336 0
	lds r25,serESPMidiTmp+1
	cpi r25,lo8(123)
	brne .L221
	.loc 1 337 0
	call midiAllNotesOff
.LVL368:
	ret
.LVL369:
.L225:
	.loc 1 342 0
	lds r25,serESPMidiTmp+1
	mov r24,r25
.LVL370:
	andi r24,lo8(15)
.LVL371:
	.loc 1 343 0
	andi r25,lo8(-16)
	cpi r25,lo8(-64)
	brne .L221
	.loc 1 345 0
	lds r22,serESPMidiTmp
	call midi_ProgramChange
.LVL372:
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
	.loc 1 950 0
	.cfi_startproc
.LVL373:
	push r11
.LCFI55:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI56:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI57:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI58:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI59:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI60:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI61:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI62:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI63:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	mov r29,r24
	mov r28,r25
	.loc 1 951 0
	call serial0USB_logPipeIn
.LVL374:
	.loc 1 952 0
	mov r16,r28
	andi r16,lo8(-32)
.LVL375:
	.loc 1 953 0
	andi r28,lo8(31)
	mov r11,r28
.LVL376:
	.loc 1 957 0
	cpi r16,lo8(32)
	brne .+2
	rjmp .L253
	.loc 1 957 0 is_stmt 0 discriminator 1
	tst r16
	brne .+2
	rjmp .L254
.LBB83:
	rjmp .L231
.LVL377:
.L252:
	.loc 1 961 0 is_stmt 1
	sbrs r29,0
	rjmp .L234
	.loc 1 963 0
	ldi r18,lo8(32)
	mul r28,r18
	movw r24,r0
	clr __zero_reg__
	mov r15,r11
	or r15,r24
	mov r24,r15
	call moduleBit_to_manualNote
.LVL378:
	mov r12,r24
.LVL379:
	mov r14,r25
	.loc 1 965 0
	mov r17,r24
	cpi r24,lo8(-1)
	brne .+2
	rjmp .L235
.LBB84:
	.loc 1 968 0
	mov r22,r25
	call Manual_to_MidiNote
.LVL380:
	mov r13,r25
.LVL381:
	.loc 1 969 0
	cpi r24,lo8(-1)
	breq .L236
	.loc 1 971 0
	cpi r16,lo8(32)
	breq .L255
	.loc 1 971 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
	tst r25
	breq .L256
	.loc 1 971 0
	ldi r25,lo8(-112)
	rjmp .L237
.L255:
	ldi r25,lo8(-112)
	rjmp .L237
.L256:
	ldi r25,lo8(-128)
.L237:
	.loc 1 971 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL382:
	.loc 1 973 0 is_stmt 1 discriminator 6
	mov r24,r13
	call serial1MIDISend
.LVL383:
	.loc 1 975 0 discriminator 6
	cpse r16,__zero_reg__
	rjmp .L257
	.loc 1 975 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L258
	.loc 1 975 0
	ldi r24,lo8(64)
	rjmp .L238
.L257:
	ldi r24,lo8(64)
	rjmp .L238
.L258:
	ldi r24,0
.L238:
	.loc 1 975 0 discriminator 6
	call serial1MIDISend
.LVL384:
	.loc 1 977 0 is_stmt 1 discriminator 6
	cpi r16,lo8(32)
	brne .L236
	.loc 1 979 0
	sts midiLastOutManual,r12
.LVL385:
	.loc 1 980 0
	sts midiLastOutNote,r14
.LVL386:
.L236:
	.loc 1 984 0
	ldi r20,lo8(1)
	cpi r16,lo8(32)
	breq .L239
	ldi r20,0
.L239:
	mov r13,r20
.LVL387:
	.loc 1 986 0
	cpse r17,__zero_reg__
	rjmp .L240
	.loc 1 987 0
	lds r24,midi_Couplers
	cpi r24,lo8(-1)
	brne .L241
	.loc 1 988 0
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL388:
.L241:
	.loc 1 990 0
	lds r24,midi_Couplers+1
	cpi r24,lo8(-1)
	brne .L242
	.loc 1 991 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL389:
.L242:
	.loc 1 993 0
	lds r24,midi_Couplers+3
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L235
	.loc 1 994 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL390:
	rjmp .L235
.L240:
	.loc 1 996 0
	cpi r17,lo8(1)
	brne .L243
	.loc 1 997 0
	lds r24,midi_Couplers+2
	cpi r24,lo8(-1)
	brne .L244
	.loc 1 998 0
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL391:
.L244:
	.loc 1 1000 0
	lds r24,midi_Couplers+4
	cpi r24,lo8(-1)
	brne .L245
	.loc 1 1001 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL392:
.L245:
	.loc 1 1003 0
	lds r24,midi_Couplers+6
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L235
	.loc 1 1004 0
	mov r20,r13
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL393:
	rjmp .L235
.L243:
	.loc 1 1006 0
	cpi r17,lo8(2)
	brne .L246
	.loc 1 1007 0
	lds r24,midi_Couplers+5
	cpi r24,lo8(-1)
	brne .L247
	.loc 1 1008 0
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL394:
.L247:
	.loc 1 1010 0
	lds r24,midi_Couplers+7
	cpi r24,lo8(-1)
	brne .L248
	.loc 1 1011 0
	mov r20,r13
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL395:
.L248:
	.loc 1 1013 0
	lds r24,midi_Couplers+8
	cpi r24,lo8(-1)
	brne .L235
	.loc 1 1014 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL396:
	rjmp .L235
.L246:
	.loc 1 1016 0
	cpi r17,lo8(3)
	brne .L235
	.loc 1 1017 0
	lds r24,midi_Couplers+9
	cpi r24,lo8(-1)
	brne .L249
	.loc 1 1018 0
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL397:
.L249:
	.loc 1 1020 0
	lds r24,midi_Couplers+10
	cpi r24,lo8(-1)
	brne .L250
	.loc 1 1021 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL398:
.L250:
	.loc 1 1023 0
	lds r24,midi_Couplers+11
	cpi r24,lo8(-1)
	brne .L235
	.loc 1 1024 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL399:
.L235:
.LBE84:
	.loc 1 1029 0
	mov r24,r15
	call moduleBit_to_registerNr
.LVL400:
	cpi r16,lo8(32)
	brne .L259
	ldi r18,lo8(-128)
	rjmp .L251
.L259:
	ldi r18,0
.L251:
	.loc 1 1029 0 is_stmt 0 discriminator 4
	or r24,r18
	sts midi_RegisterChanged,r24
.L234:
	.loc 1 1032 0 is_stmt 1 discriminator 2
	lsr r29
.LVL401:
	.loc 1 959 0 discriminator 2
	subi r28,lo8(-(1))
.LVL402:
	rjmp .L232
.LVL403:
.L253:
.LBE83:
	ldi r28,0
.LVL404:
	rjmp .L232
.LVL405:
.L254:
	ldi r28,0
.LVL406:
.L232:
.LBB85:
	.loc 1 959 0 is_stmt 0 discriminator 1
	cpi r28,lo8(8)
	brsh .+2
	rjmp .L252
.LVL407:
.L231:
/* epilogue start */
.LBE85:
	.loc 1 1035 0 is_stmt 1
	pop r29
.LVL408:
	pop r28
	pop r17
	pop r16
.LVL409:
	pop r15
	pop r14
.LVL410:
	pop r13
	pop r12
	pop r11
.LVL411:
	ret
	.cfi_endproc
.LFE55:
	.size	midiKeyPress_Process, .-midiKeyPress_Process
	.section	.text.midiSendAllNotesOff,"ax",@progbits
.global	midiSendAllNotesOff
	.type	midiSendAllNotesOff, @function
midiSendAllNotesOff:
.LFB56:
	.loc 1 1039 0
	.cfi_startproc
	push r28
.LCFI64:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL412:
.LBB86:
	.loc 1 1040 0
	ldi r28,0
	rjmp .L261
.LVL413:
.L263:
.LBB87:
	.loc 1 1041 0
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL414:
	.loc 1 1042 0
	cpi r24,lo8(16)
	brsh .L262
	.loc 1 1043 0
	ori r24,lo8(-80)
.LVL415:
	call serial1MIDISend
.LVL416:
	.loc 1 1044 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL417:
	.loc 1 1045 0
	ldi r24,0
	call serial1MIDISend
.LVL418:
.L262:
.LBE87:
	.loc 1 1040 0 discriminator 2
	subi r28,lo8(-(1))
.LVL419:
.L261:
	.loc 1 1040 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brlo .L263
/* epilogue start */
.LBE86:
	.loc 1 1048 0 is_stmt 1
	pop r28
.LVL420:
	ret
	.cfi_endproc
.LFE56:
	.size	midiSendAllNotesOff, .-midiSendAllNotesOff
	.section	.text.midi_SendActiveSense,"ax",@progbits
.global	midi_SendActiveSense
	.type	midi_SendActiveSense, @function
midi_SendActiveSense:
.LFB57:
	.loc 1 1050 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1051 0
	ldi r24,lo8(-2)
	call serial1MIDISend
.LVL421:
	ret
	.cfi_endproc
.LFE57:
	.size	midi_SendActiveSense, .-midi_SendActiveSense
	.section	.text.midi_CheckTxActiveSense,"ax",@progbits
.global	midi_CheckTxActiveSense
	.type	midi_CheckTxActiveSense, @function
midi_CheckTxActiveSense:
.LFB27:
	.loc 1 187 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 190 0
	lds r24,swTimer+16
	tst r24
	breq .L266
	.loc 1 190 0 is_stmt 0 discriminator 1
	lds r24,swTimer+16
	cpi r24,lo8(-1)
	brne .L265
.L266:
.LBB88:
	.loc 1 192 0 is_stmt 1
	in r25,__SREG__
.LVL422:
.LBB89:
.LBB90:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE90:
.LBE89:
	.loc 1 192 0
	ldi r24,lo8(1)
	rjmp .L268
.LVL423:
.L269:
	.loc 1 192 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(10)
.LVL424:
	std Z+16,r24
	std Z+17,__zero_reg__
.LVL425:
	.loc 1 192 0 discriminator 3
	ldi r24,0
.LVL426:
.L268:
	.loc 1 192 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L269
.LVL427:
.LBB91:
.LBB92:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL428:
.LBE92:
.LBE91:
.LBE88:
	.loc 1 193 0
	lds r24,midi_Setting
.LVL429:
	cpse r24,__zero_reg__
	.loc 1 194 0
	call midi_SendActiveSense
.LVL430:
.L270:
	.loc 1 197 0
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
	.long	0x1c8c
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF203
	.byte	0xc
	.long	.LASF204
	.long	.LASF205
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
	.byte	0x76
	.long	0x310
	.uleb128 0xa
	.long	.LASF35
	.byte	0x7
	.byte	0x77
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF45
	.byte	0x7
	.byte	0x78
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF46
	.byte	0x7
	.byte	0x79
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF47
	.byte	0x7
	.byte	0x7a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x7
	.byte	0x7b
	.long	0x2cf
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.byte	0x7f
	.long	0x340
	.uleb128 0xa
	.long	.LASF49
	.byte	0x7
	.byte	0x80
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF50
	.byte	0x7
	.byte	0x81
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x7
	.byte	0x82
	.long	0x31b
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.byte	0x87
	.long	0x370
	.uleb128 0xa
	.long	.LASF32
	.byte	0x7
	.byte	0x88
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF52
	.byte	0x7
	.byte	0x89
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x7
	.byte	0x8b
	.long	0x34b
	.uleb128 0x9
	.byte	0x3
	.byte	0x7
	.byte	0x91
	.long	0x3ae
	.uleb128 0xa
	.long	.LASF54
	.byte	0x7
	.byte	0x92
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF55
	.byte	0x7
	.byte	0x93
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF42
	.byte	0x7
	.byte	0x94
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF56
	.byte	0x7
	.byte	0x95
	.long	0x37b
	.uleb128 0x9
	.byte	0xa
	.byte	0x7
	.byte	0x99
	.long	0x3de
	.uleb128 0xa
	.long	.LASF57
	.byte	0x7
	.byte	0x9a
	.long	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF58
	.byte	0x7
	.byte	0x9b
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
	.byte	0x9c
	.long	0x3b9
	.uleb128 0x9
	.byte	0x3
	.byte	0x7
	.byte	0xc7
	.long	0x42c
	.uleb128 0xa
	.long	.LASF60
	.byte	0x7
	.byte	0xc8
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF61
	.byte	0x7
	.byte	0xc9
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF62
	.byte	0x7
	.byte	0xca
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x7
	.byte	0xcb
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
	.long	.LASF206
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0xe
	.long	.LASF207
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
	.byte	0x3f
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
	.byte	0x41
	.long	0x437
	.long	.LLST0
	.uleb128 0x12
	.long	.Ldebug_ranges0+0
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x42
	.long	0x3b
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF67
	.byte	0x1
	.byte	0x3b
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
	.byte	0x49
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
	.byte	0x49
	.long	0x3b
	.long	.LLST2
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF70
	.byte	0x1
	.byte	0x5e
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
	.byte	0x5f
	.long	0xb8
	.long	.LLST3
	.uleb128 0x11
	.long	.LASF69
	.byte	0x1
	.byte	0x61
	.long	0x3b
	.long	.LLST4
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF71
	.byte	0x1
	.byte	0x6c
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
	.byte	0x6c
	.long	0xb8
	.long	.LLST5
	.uleb128 0x11
	.long	.LASF69
	.byte	0x1
	.byte	0x6d
	.long	0x3b
	.long	.LLST6
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.byte	0x89
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
	.long	0x1bd9
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF73
	.byte	0x1
	.word	0x165
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
	.word	0x166
	.long	0x3b
	.long	.LLST7
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x1a
	.long	.LASF75
	.byte	0x1
	.word	0x167
	.long	0x3b
	.long	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.word	0x170
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
	.word	0x175
	.long	0x3b
	.long	.LLST9
	.byte	0
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x30
	.long	0x69f
	.uleb128 0x1a
	.long	.LASF77
	.byte	0x1
	.word	0x183
	.long	0x3b
	.long	.LLST10
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x184
	.long	0x3b
	.long	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL32
	.long	0x1be6
	.uleb128 0x1d
	.long	.LVL33
	.long	0x1bf3
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
	.long	0x1c00
	.uleb128 0x1f
	.long	.LVL43
	.long	0x1bf3
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
	.word	0x18d
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
	.word	0x18d
	.long	0x3b
	.long	.LLST12
	.uleb128 0x22
	.long	.LASF68
	.byte	0x1
	.word	0x18f
	.long	0x256
	.uleb128 0x23
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.word	0x192
	.long	0x75f
	.long	.LLST13
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x194
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
	.word	0x1a4
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
	.word	0x1a4
	.long	0x3b
	.long	.LLST15
	.uleb128 0x25
	.long	.LASF84
	.byte	0x1
	.word	0x1a5
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
	.word	0x1a6
	.long	0x3b
	.long	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF86
	.byte	0x1
	.word	0x1af
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
	.word	0x1af
	.long	0x3b
	.long	.LLST18
	.uleb128 0x21
	.long	.LASF87
	.byte	0x1
	.word	0x1af
	.long	0x3b
	.long	.LLST19
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x22
	.long	.LASF88
	.byte	0x1
	.word	0x1b4
	.long	0x256
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x78
	.long	0x85c
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.word	0x1b7
	.long	0x3b
	.long	.LLST20
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.word	0x1b8
	.long	0x3b
	.long	.LLST21
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.word	0x1b9
	.long	0x3b
	.long	.LLST22
	.uleb128 0x1a
	.long	.LASF92
	.byte	0x1
	.word	0x1ba
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
	.word	0x1cd
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
	.word	0x1cd
	.long	0x3b
	.long	.LLST24
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x22
	.long	.LASF88
	.byte	0x1
	.word	0x1d1
	.long	0x256
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0xa8
	.long	0x8f9
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.word	0x1d4
	.long	0x3b
	.long	.LLST25
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.word	0x1d5
	.long	0x3b
	.long	.LLST26
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.word	0x1d6
	.long	0x3b
	.long	.LLST27
	.uleb128 0x1a
	.long	.LASF92
	.byte	0x1
	.word	0x1d7
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
	.word	0x1e8
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
	.word	0x1e8
	.long	0x3b
	.long	.LLST30
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x1e9
	.long	0x3b
	.long	.LLST31
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x1ea
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
	.word	0x1f2
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
	.word	0x1f2
	.long	0x437
	.long	.LLST34
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x1f3
	.long	0x3b
	.long	.LLST35
	.uleb128 0x1a
	.long	.LASF92
	.byte	0x1
	.word	0x1f5
	.long	0x3b
	.long	.LLST36
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xd8
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x1f6
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
	.word	0x20d
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST38
	.byte	0x1
	.long	0xaa6
	.uleb128 0x21
	.long	.LASF78
	.byte	0x1
	.word	0x20d
	.long	0x3b
	.long	.LLST39
	.uleb128 0x21
	.long	.LASF98
	.byte	0x1
	.word	0x20d
	.long	0x3b
	.long	.LLST40
	.uleb128 0x23
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x22
	.long	.LASF88
	.byte	0x1
	.word	0x211
	.long	0x256
	.uleb128 0x1b
	.long	.LBB37
	.long	.LBE37
	.long	0xa93
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.word	0x214
	.long	0x3b
	.long	.LLST41
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.word	0x215
	.long	0x3b
	.long	.LLST42
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.word	0x216
	.long	0x3b
	.long	.LLST43
	.uleb128 0x14
	.long	.LVL118
	.long	0x1c0d
	.uleb128 0x14
	.long	.LVL120
	.long	0x1c1a
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
	.byte	0xcc
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
	.word	0x223
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
	.word	0x223
	.long	0x3b
	.long	.LLST45
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x225
	.long	0x3b
	.long	.LLST46
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x1a
	.long	.LASF102
	.byte	0x1
	.word	0x227
	.long	0x3b
	.long	.LLST47
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x228
	.long	0x3b
	.long	.LLST48
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x1
	.word	0x229
	.long	0x437
	.long	.LLST49
	.uleb128 0x22
	.long	.LASF58
	.byte	0x1
	.word	0x238
	.long	0xb8
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x108
	.long	0xb8d
	.uleb128 0x1a
	.long	.LASF104
	.byte	0x1
	.word	0x22a
	.long	0x3b
	.long	.LLST50
	.uleb128 0x23
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.word	0x22e
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
	.word	0x23f
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST52
	.byte	0x1
	.long	0xc31
	.uleb128 0x21
	.long	.LASF106
	.byte	0x1
	.word	0x23f
	.long	0x3b
	.long	.LLST53
	.uleb128 0x21
	.long	.LASF101
	.byte	0x1
	.word	0x23f
	.long	0x3b
	.long	.LLST54
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x120
	.long	0xc17
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x1
	.word	0x242
	.long	0x3b
	.long	.LLST55
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x138
	.long	0xc06
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x1
	.word	0x244
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
	.long	0x1c27
	.uleb128 0x1f
	.long	.LVL156
	.long	0x1c27
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
	.word	0x25e
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
	.word	0x25f
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
	.word	0x264
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
	.word	0x264
	.long	0x3b
	.long	.LLST60
	.uleb128 0x21
	.long	.LASF111
	.byte	0x1
	.word	0x264
	.long	0x3b
	.long	.LLST61
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x267
	.long	0x3b
	.long	.LLST62
	.uleb128 0x1b
	.long	.LBB49
	.long	.LBE49
	.long	0xcef
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x1
	.word	0x269
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
	.long	0x1c34
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF112
	.byte	0x1
	.word	0x273
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
	.word	0x273
	.long	0x3b
	.long	.LLST65
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x276
	.long	0x3b
	.long	.LLST66
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x1
	.word	0x277
	.long	0x437
	.long	.LLST67
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x1
	.word	0x278
	.long	0x3b
	.long	.LLST68
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x1
	.word	0x279
	.long	0x3b
	.long	.LLST69
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x158
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x27a
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
	.word	0x296
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
	.word	0x296
	.long	0x3b
	.long	.LLST71
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.word	0x298
	.long	0x3b
	.long	.LLST72
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x1
	.word	0x299
	.long	0x437
	.long	.LLST73
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x1
	.word	0x29a
	.long	0x3b
	.long	.LLST74
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x178
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x29b
	.long	0x3b
	.long	.LLST75
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF117
	.byte	0x1
	.word	0x2ab
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
	.word	0x2ac
	.long	0xe9f
	.long	.LLST76
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x190
	.long	0xe4c
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2af
	.long	0x3b
	.long	.LLST77
	.byte	0
	.uleb128 0x14
	.long	.LVL213
	.long	0x1c41
	.uleb128 0x1d
	.long	.LVL214
	.long	0x1bf3
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
	.long	0x1c4e
	.uleb128 0x1f
	.long	.LVL216
	.long	0x1bf3
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
	.word	0x2d3
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
	.word	0x2d5
	.long	0x3b
	.long	.LLST78
	.byte	0
	.uleb128 0x14
	.long	.LVL220
	.long	0x1c5b
	.uleb128 0x1f
	.long	.LVL221
	.long	0x1bf3
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
	.word	0x30f
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
	.word	0x30f
	.long	0x3b
	.long	.LLST79
	.uleb128 0x29
	.long	.LASF33
	.byte	0x1
	.word	0x30f
	.long	0x3b
	.byte	0x1
	.byte	0x66
	.uleb128 0x22
	.long	.LASF68
	.byte	0x1
	.word	0x310
	.long	0x1f6
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF121
	.byte	0x1
	.word	0x31d
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
	.word	0x31e
	.long	0x3b
	.long	.LLST80
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1a8
	.uleb128 0x1a
	.long	.LASF122
	.byte	0x1
	.word	0x31f
	.long	0x3b
	.long	.LLST81
	.uleb128 0x1a
	.long	.LASF123
	.byte	0x1
	.word	0x320
	.long	0x3b
	.long	.LLST82
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1a8
	.uleb128 0x1a
	.long	.LASF124
	.byte	0x1
	.word	0x321
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
	.word	0x335
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
	.word	0x336
	.long	0x29
	.long	.LLST84
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.word	0x338
	.long	0x29
	.long	.LLST85
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL241
	.long	0x1c68
	.uleb128 0x1d
	.long	.LVL242
	.long	0x1bf3
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
	.word	0x361
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
	.word	0x361
	.long	0x3b
	.long	.LLST86
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x361
	.long	0x3b
	.long	.LLST87
	.uleb128 0x22
	.long	.LASF68
	.byte	0x1
	.word	0x363
	.long	0x256
	.uleb128 0x23
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.word	0x366
	.long	0x10af
	.long	.LLST88
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x368
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
	.word	0x378
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
	.word	0x378
	.long	0x3b
	.long	.LLST90
	.uleb128 0x22
	.long	.LASF68
	.byte	0x1
	.word	0x37c
	.long	0x226
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.word	0x37d
	.long	0x10af
	.long	.LLST91
	.uleb128 0x1a
	.long	.LASF35
	.byte	0x1
	.word	0x37f
	.long	0x3b
	.long	.LLST92
	.uleb128 0x23
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x381
	.long	0x3b
	.long	.LLST93
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF128
	.byte	0x1
	.word	0x392
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST94
	.byte	0x1
	.long	0x1238
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x392
	.long	0x3b
	.long	.LLST95
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x392
	.long	0x3b
	.long	.LLST96
	.uleb128 0x21
	.long	.LASF98
	.byte	0x1
	.word	0x392
	.long	0x3b
	.long	.LLST97
	.uleb128 0x22
	.long	.LASF129
	.byte	0x1
	.word	0x393
	.long	0x256
	.uleb128 0x1a
	.long	.LASF130
	.byte	0x1
	.word	0x396
	.long	0x3b
	.long	.LLST98
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.word	0x397
	.long	0x3b
	.long	.LLST99
	.uleb128 0x1b
	.long	.LBB68
	.long	.LBE68
	.long	0x11c3
	.uleb128 0x22
	.long	.LASF131
	.byte	0x1
	.word	0x3a2
	.long	0xe2
	.uleb128 0x14
	.long	.LVL268
	.long	0x1c75
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
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL266
	.long	0x1c1a
	.long	0x11f7
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL267
	.long	0x1c0d
	.long	0x1211
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL269
	.long	0x1c27
	.uleb128 0x1d
	.long	.LVL270
	.long	0x1c27
	.long	0x122e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL271
	.long	0x1c27
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF132
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST100
	.byte	0x1
	.long	0x12b1
	.uleb128 0x16
	.long	.LASF106
	.byte	0x1
	.byte	0x8e
	.long	0x3b
	.long	.LLST101
	.uleb128 0x11
	.long	.LASF133
	.byte	0x1
	.byte	0x8f
	.long	0x3b
	.long	.LLST102
	.uleb128 0x23
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0x94
	.long	0x3b
	.long	.LLST103
	.uleb128 0x23
	.long	.LBB70
	.long	.LBE70
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x96
	.long	0x3b
	.long	.LLST104
	.uleb128 0x1f
	.long	.LVL283
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
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF134
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST105
	.byte	0x1
	.long	0x1310
	.uleb128 0x16
	.long	.LASF35
	.byte	0x1
	.byte	0x9e
	.long	0x3b
	.long	.LLST106
	.uleb128 0x23
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0xa1
	.long	0x3b
	.long	.LLST107
	.uleb128 0x1f
	.long	.LVL293
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
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF135
	.byte	0x1
	.byte	0xa7
	.long	.LFB25
	.long	.LFE25
	.long	.LLST108
	.byte	0x1
	.long	0x1353
	.uleb128 0x23
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0xa8
	.long	0x3b
	.long	.LLST109
	.uleb128 0x1f
	.long	.LVL298
	.long	0x12b1
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
	.long	.LASF136
	.byte	0x1
	.byte	0xb0
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1376
	.uleb128 0x14
	.long	.LVL301
	.long	0x1310
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF137
	.byte	0x1
	.word	0x2e7
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.long	.LLST110
	.byte	0x1
	.long	0x1464
	.uleb128 0x21
	.long	.LASF106
	.byte	0x1
	.word	0x2e7
	.long	0x3b
	.long	.LLST111
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x2e7
	.long	0x3b
	.long	.LLST112
	.uleb128 0x21
	.long	.LASF98
	.byte	0x1
	.word	0x2e7
	.long	0x3b
	.long	.LLST113
	.uleb128 0x1a
	.long	.LASF138
	.byte	0x1
	.word	0x2e9
	.long	0x3b
	.long	.LLST114
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x1d8
	.long	0x143d
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2ea
	.long	0x3b
	.long	.LLST115
	.uleb128 0x23
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x1a
	.long	.LASF139
	.byte	0x1
	.word	0x2ed
	.long	0x29
	.long	.LLST116
	.uleb128 0x23
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x1a
	.long	.LASF35
	.byte	0x1
	.word	0x2f0
	.long	0x3b
	.long	.LLST117
	.uleb128 0x1a
	.long	.LASF140
	.byte	0x1
	.word	0x2f1
	.long	0x3b
	.long	.LLST118
	.uleb128 0x1f
	.long	.LVL311
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
	.long	.LVL317
	.long	0x1c27
	.uleb128 0x1d
	.long	.LVL318
	.long	0x1c27
	.long	0x145a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL319
	.long	0x1c27
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF141
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1547
	.uleb128 0x16
	.long	.LASF142
	.byte	0x1
	.byte	0xdd
	.long	0x3b
	.long	.LLST119
	.uleb128 0x1b
	.long	.LBB77
	.long	.LBE77
	.long	0x14e1
	.uleb128 0x11
	.long	.LASF143
	.byte	0x1
	.byte	0xe5
	.long	0x3b
	.long	.LLST120
	.uleb128 0x11
	.long	.LASF144
	.byte	0x1
	.byte	0xe5
	.long	0x3b
	.long	.LLST121
	.uleb128 0x2c
	.long	0x4a5
	.long	.LBB78
	.long	.LBE78
	.byte	0x1
	.byte	0xe5
	.uleb128 0x2d
	.long	0x4b2
	.long	.LBB80
	.long	.LBE80
	.byte	0x1
	.byte	0xe5
	.uleb128 0x2e
	.long	0x4bf
	.long	.LLST122
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LBB82
	.long	.LBE82
	.long	0x153d
	.uleb128 0x1a
	.long	.LASF106
	.byte	0x1
	.word	0x114
	.long	0x3b
	.long	.LLST123
	.uleb128 0x1a
	.long	.LASF145
	.byte	0x1
	.word	0x115
	.long	0x3b
	.long	.LLST124
	.uleb128 0x1d
	.long	.LVL351
	.long	0x1376
	.long	0x1521
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL354
	.long	0x1376
	.uleb128 0x14
	.long	.LVL356
	.long	0x1238
	.uleb128 0x14
	.long	.LVL358
	.long	0xb98
	.byte	0
	.uleb128 0x14
	.long	.LVL334
	.long	0x5d3
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF146
	.byte	0x1
	.word	0x139
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x15c1
	.uleb128 0x21
	.long	.LASF147
	.byte	0x1
	.word	0x139
	.long	0x3b
	.long	.LLST125
	.uleb128 0x1a
	.long	.LASF106
	.byte	0x1
	.word	0x13d
	.long	0x3b
	.long	.LLST126
	.uleb128 0x1a
	.long	.LASF145
	.byte	0x1
	.word	0x13e
	.long	0x3b
	.long	.LLST127
	.uleb128 0x1d
	.long	.LVL363
	.long	0x1376
	.long	0x15a5
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL366
	.long	0x1376
	.uleb128 0x14
	.long	.LVL368
	.long	0x1238
	.uleb128 0x14
	.long	.LVL372
	.long	0xb98
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF148
	.byte	0x1
	.word	0x3b6
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST128
	.byte	0x1
	.long	0x183e
	.uleb128 0x21
	.long	.LASF149
	.byte	0x1
	.word	0x3b6
	.long	0xe2
	.long	.LLST129
	.uleb128 0x1a
	.long	.LASF150
	.byte	0x1
	.word	0x3b8
	.long	0x3b
	.long	.LLST130
	.uleb128 0x1a
	.long	.LASF151
	.byte	0x1
	.word	0x3b9
	.long	0x3b
	.long	.LLST131
	.uleb128 0x1a
	.long	.LASF152
	.byte	0x1
	.word	0x3ba
	.long	0x3b
	.long	.LLST132
	.uleb128 0x1a
	.long	.LASF47
	.byte	0x1
	.word	0x3bb
	.long	0x226
	.long	.LLST133
	.uleb128 0x1a
	.long	.LASF153
	.byte	0x1
	.word	0x3bc
	.long	0x1f6
	.long	.LLST134
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x1f0
	.long	0x1834
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x3bf
	.long	0x3b
	.long	.LLST135
	.uleb128 0x1b
	.long	.LBB84
	.long	.LBE84
	.long	0x180f
	.uleb128 0x1a
	.long	.LASF145
	.byte	0x1
	.word	0x3d8
	.long	0x3b
	.long	.LLST136
	.uleb128 0x1d
	.long	.LVL380
	.long	0xf03
	.long	0x168a
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
	.long	.LVL382
	.long	0x1c27
	.uleb128 0x1d
	.long	.LVL383
	.long	0x1c27
	.long	0x16a7
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL384
	.long	0x1c27
	.uleb128 0x1d
	.long	.LVL388
	.long	0x1129
	.long	0x16cf
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
	.long	.LVL389
	.long	0x1129
	.long	0x16ee
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
	.long	.LVL390
	.long	0x1129
	.long	0x170d
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
	.long	.LVL391
	.long	0x1129
	.long	0x1726
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
	.long	.LVL392
	.long	0x1129
	.long	0x1745
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
	.long	.LVL393
	.long	0x1129
	.long	0x1764
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
	.long	.LVL394
	.long	0x1129
	.long	0x177d
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
	.long	.LVL395
	.long	0x1129
	.long	0x179c
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
	.long	.LVL396
	.long	0x1129
	.long	0x17bb
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
	.long	.LVL397
	.long	0x1129
	.long	0x17d4
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
	.long	.LVL398
	.long	0x1129
	.long	0x17f3
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
	.long	.LVL399
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
	.long	.LVL378
	.long	0x10b5
	.long	0x1823
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL400
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
	.long	.LVL374
	.long	0x1c82
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF154
	.byte	0x1
	.word	0x40f
	.long	.LFB56
	.long	.LFE56
	.long	.LLST137
	.byte	0x1
	.long	0x18b7
	.uleb128 0x23
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x410
	.long	0x3b
	.long	.LLST138
	.uleb128 0x23
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x1a
	.long	.LASF155
	.byte	0x1
	.word	0x411
	.long	0x3b
	.long	.LLST139
	.uleb128 0x14
	.long	.LVL416
	.long	0x1c27
	.uleb128 0x1d
	.long	.LVL417
	.long	0x1c27
	.long	0x18a5
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL418
	.long	0x1c27
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
	.long	.LASF156
	.byte	0x1
	.word	0x41a
	.long	.LFB57
	.long	.LFE57
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x18e2
	.uleb128 0x1f
	.long	.LVL421
	.long	0x1c27
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
	.long	.LASF157
	.byte	0x1
	.byte	0xbb
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1959
	.uleb128 0x1b
	.long	.LBB88
	.long	.LBE88
	.long	0x194f
	.uleb128 0x11
	.long	.LASF143
	.byte	0x1
	.byte	0xc0
	.long	0x3b
	.long	.LLST140
	.uleb128 0x11
	.long	.LASF144
	.byte	0x1
	.byte	0xc0
	.long	0x3b
	.long	.LLST141
	.uleb128 0x2c
	.long	0x4a5
	.long	.LBB89
	.long	.LBE89
	.byte	0x1
	.byte	0xc0
	.uleb128 0x2d
	.long	0x4b2
	.long	.LBB91
	.long	.LBE91
	.byte	0x1
	.byte	0xc0
	.uleb128 0x2e
	.long	0x4bf
	.long	.LLST142
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL430
	.long	0x18b7
	.byte	0
	.uleb128 0x7
	.long	0x1969
	.long	0x1969
	.uleb128 0x8
	.long	0x82
	.byte	0x8
	.byte	0
	.uleb128 0x30
	.long	0x112
	.uleb128 0x31
	.long	.LASF158
	.byte	0x6
	.byte	0x53
	.long	0x197b
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	0x1959
	.uleb128 0x7
	.long	0x196
	.long	0x1990
	.uleb128 0x8
	.long	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x31
	.long	.LASF159
	.byte	0x6
	.byte	0xaf
	.long	0x1980
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	.LASF160
	.byte	0x6
	.byte	0xb6
	.long	0x19aa
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	0x3b
	.uleb128 0x31
	.long	.LASF161
	.byte	0x6
	.byte	0xbf
	.long	0x1c6
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0x3b
	.long	0x19cc
	.uleb128 0x8
	.long	0x82
	.byte	0x2
	.byte	0
	.uleb128 0x31
	.long	.LASF162
	.byte	0x8
	.byte	0x35
	.long	0x19bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	.LASF163
	.byte	0x8
	.byte	0x9e
	.long	0x19aa
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.long	.LASF164
	.byte	0x1
	.byte	0x2c
	.long	0x449
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	manualMap
	.uleb128 0x7
	.long	0x2c4
	.long	0x1a08
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x32
	.long	.LASF165
	.byte	0x1
	.byte	0x2d
	.long	0x19f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ManualNoteRange
	.uleb128 0x32
	.long	.LASF166
	.byte	0x1
	.byte	0x2e
	.long	0x45f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiInMap
	.uleb128 0x32
	.long	.LASF167
	.byte	0x1
	.byte	0x36
	.long	0x340
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiThrough
	.uleb128 0x32
	.long	.LASF168
	.byte	0x1
	.byte	0x2f
	.long	0x475
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiOutMap
	.uleb128 0x32
	.long	.LASF169
	.byte	0x1
	.byte	0x33
	.long	0x485
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerMap
	.uleb128 0x32
	.long	.LASF170
	.byte	0x1
	.byte	0x34
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerCount
	.uleb128 0x32
	.long	.LASF171
	.byte	0x1
	.byte	0x35
	.long	0x495
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	programMap
	.uleb128 0x32
	.long	.LASF172
	.byte	0x1
	.byte	0x37
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_RegisterChanged
	.uleb128 0x32
	.long	.LASF173
	.byte	0x1
	.byte	0x30
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxActivceSensing
	.uleb128 0x32
	.long	.LASF174
	.byte	0x1
	.byte	0x31
	.long	0x42c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Setting
	.uleb128 0x32
	.long	.LASF175
	.byte	0x1
	.byte	0x7f
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutNote
	.uleb128 0x32
	.long	.LASF176
	.byte	0x1
	.byte	0x80
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutManual
	.uleb128 0x32
	.long	.LASF177
	.byte	0x1
	.byte	0x81
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInNote
	.uleb128 0x32
	.long	.LASF178
	.byte	0x1
	.byte	0x82
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInChannel
	.uleb128 0x32
	.long	.LASF179
	.byte	0x1
	.byte	0x83
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInManual
	.uleb128 0x32
	.long	.LASF180
	.byte	0x1
	.byte	0x84
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastProgram
	.uleb128 0x7
	.long	0x3b
	.long	0x1b38
	.uleb128 0x8
	.long	0x82
	.byte	0xb
	.byte	0
	.uleb128 0x32
	.long	.LASF181
	.byte	0x1
	.byte	0x1c
	.long	0x1b28
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Couplers
	.uleb128 0x32
	.long	.LASF182
	.byte	0x1
	.byte	0x1d
	.long	0x1b5c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cplInfo
	.uleb128 0x33
	.uleb128 0x7
	.long	0x3b
	.long	0x1b6d
	.uleb128 0x8
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x32
	.long	.LASF183
	.byte	0x9
	.byte	0xad
	.long	0x1b5d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x32
	.long	.LASF184
	.byte	0x1
	.byte	0x32
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiEEPromLoadError
	.uleb128 0x32
	.long	.LASF185
	.byte	0x1
	.byte	0x7a
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastCommand
	.uleb128 0x32
	.long	.LASF186
	.byte	0x1
	.byte	0x7b
	.long	0x3de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByte
	.uleb128 0x32
	.long	.LASF187
	.byte	0x1
	.byte	0x7c
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteCount
	.uleb128 0x32
	.long	.LASF188
	.byte	0x1
	.byte	0x7d
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteExpected
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF189
	.long	.LASF189
	.byte	0x6
	.byte	0x5a
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF190
	.long	.LASF190
	.byte	0xa
	.byte	0x24
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF191
	.long	.LASF191
	.byte	0xb
	.byte	0x32
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF192
	.long	.LASF192
	.byte	0xa
	.byte	0x25
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF193
	.long	.LASF193
	.byte	0x6
	.byte	0xd6
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF194
	.long	.LASF194
	.byte	0x6
	.byte	0xd7
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF195
	.long	.LASF195
	.byte	0x8
	.byte	0x90
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF196
	.long	.LASF196
	.byte	0xa
	.byte	0x2f
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF197
	.long	.LASF197
	.byte	0xa
	.byte	0x20
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF198
	.long	.LASF198
	.byte	0xa
	.byte	0x27
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF199
	.long	.LASF199
	.byte	0xa
	.byte	0x21
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF200
	.long	.LASF200
	.byte	0xa
	.byte	0x1f
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF201
	.long	.LASF201
	.byte	0x5
	.byte	0x46
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF202
	.long	.LASF202
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
	.long	.LVL273
	.word	0x1
	.byte	0x6c
	.long	.LVL273
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
	.long	.LVL276
	.word	0x1
	.byte	0x5e
	.long	.LVL276
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
	.long	.LVL275
	.word	0x1
	.byte	0x5f
	.long	.LVL275
	.long	.LFE54
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST98:
	.long	.LVL264
	.long	.LVL274
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST99:
	.long	.LVL265
	.long	.LVL272
	.word	0x1
	.byte	0x6d
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
	.long	.LFE23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST101:
	.long	.LVL277
	.long	.LVL279
	.word	0x1
	.byte	0x68
	.long	.LVL279
	.long	.LVL289
	.word	0x1
	.byte	0x5c
	.long	.LVL289
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST102:
	.long	.LVL278
	.long	.LVL279
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL279
	.long	.LVL288
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST103:
	.long	.LVL280
	.long	.LVL282
	.word	0x1
	.byte	0x66
	.long	.LVL282
	.long	.LVL285
	.word	0x1
	.byte	0x5e
	.long	.LVL285
	.long	.LVL286
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST104:
	.long	.LVL281
	.long	.LVL286
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST105:
	.long	.LFB24
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
	.long	.LFE24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST106:
	.long	.LVL290
	.long	.LVL291
	.word	0x1
	.byte	0x68
	.long	.LVL291
	.long	.LVL295
	.word	0x1
	.byte	0x60
	.long	.LVL295
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST107:
	.long	.LVL292
	.long	.LVL295
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST108:
	.long	.LFB25
	.long	.LCFI50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI50
	.long	.LFE25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST109:
	.long	.LVL296
	.long	.LVL297
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL297
	.long	.LVL300
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST110:
	.long	.LFB48
	.long	.LCFI51
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI51
	.long	.LCFI52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI52
	.long	.LCFI53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI53
	.long	.LCFI54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI54
	.long	.LFE48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST111:
	.long	.LVL302
	.long	.LVL303
	.word	0x1
	.byte	0x68
	.long	.LVL303
	.long	.LVL305
	.word	0x1
	.byte	0x6d
	.long	.LVL305
	.long	.LVL310
	.word	0x1
	.byte	0x64
	.long	.LVL310
	.long	.LVL320
	.word	0x1
	.byte	0x6d
	.long	.LVL320
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
.LLST112:
	.long	.LVL302
	.long	.LVL304
	.word	0x1
	.byte	0x66
	.long	.LVL304
	.long	.LVL323
	.word	0x1
	.byte	0x60
	.long	.LVL323
	.long	.LFE48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST113:
	.long	.LVL302
	.long	.LVL304
	.word	0x1
	.byte	0x64
	.long	.LVL304
	.long	.LVL322
	.word	0x1
	.byte	0x61
	.long	.LVL322
	.long	.LFE48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST114:
	.long	.LVL303
	.long	.LVL304
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL304
	.long	.LVL308
	.word	0x1
	.byte	0x69
	.long	.LVL311
	.long	.LVL312
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL312
	.long	.LVL314
	.word	0x1
	.byte	0x69
	.long	.LVL315
	.long	.LVL316
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST115:
	.long	.LVL303
	.long	.LVL304
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL304
	.long	.LVL305
	.word	0x1
	.byte	0x6c
	.long	.LVL305
	.long	.LVL311-1
	.word	0x1
	.byte	0x62
	.long	.LVL311-1
	.long	.LVL321
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST116:
	.long	.LVL306
	.long	.LVL309
	.word	0x1
	.byte	0x66
	.long	.LVL309
	.long	.LVL311-1
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST117:
	.long	.LVL307
	.long	.LVL311-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST118:
	.long	.LVL309
	.long	.LVL311-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST119:
	.long	.LVL324
	.long	.LVL325
	.word	0x1
	.byte	0x68
	.long	.LVL325
	.long	.LVL333
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL333
	.long	.LVL334-1
	.word	0x1
	.byte	0x68
	.long	.LVL334-1
	.long	.LVL335
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL335
	.long	.LVL336
	.word	0x1
	.byte	0x68
	.long	.LVL336
	.long	.LVL337
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL337
	.long	.LVL338
	.word	0x1
	.byte	0x68
	.long	.LVL338
	.long	.LVL339
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL339
	.long	.LVL340
	.word	0x1
	.byte	0x68
	.long	.LVL340
	.long	.LVL341
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL341
	.long	.LVL342
	.word	0x1
	.byte	0x68
	.long	.LVL342
	.long	.LVL343
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL343
	.long	.LVL344
	.word	0x1
	.byte	0x68
	.long	.LVL344
	.long	.LVL345
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL345
	.long	.LVL346
	.word	0x1
	.byte	0x68
	.long	.LVL346
	.long	.LVL347
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL347
	.long	.LVL348
	.word	0x1
	.byte	0x68
	.long	.LVL348
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST120:
	.long	.LVL326
	.long	.LVL332
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST121:
	.long	.LVL327
	.long	.LVL328
	.word	0x1
	.byte	0x68
	.long	.LVL329
	.long	.LVL330
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL330
	.long	.LVL333
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST122:
	.long	.LVL331
	.long	.LVL332
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+5274
	.sleb128 0
	.long	0
	.long	0
.LLST123:
	.long	.LVL349
	.long	.LVL351-1
	.word	0x1
	.byte	0x68
	.long	.LVL352
	.long	.LVL354-1
	.word	0x1
	.byte	0x68
	.long	.LVL355
	.long	.LVL356-1
	.word	0x1
	.byte	0x68
	.long	.LVL357
	.long	.LVL358-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST124:
	.long	.LVL350
	.long	.LVL352
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL353
	.long	.LVL354-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST125:
	.long	.LVL359
	.long	.LVL360
	.word	0x1
	.byte	0x68
	.long	.LVL360
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST126:
	.long	.LVL361
	.long	.LVL363-1
	.word	0x1
	.byte	0x68
	.long	.LVL364
	.long	.LVL366-1
	.word	0x1
	.byte	0x68
	.long	.LVL367
	.long	.LVL368-1
	.word	0x1
	.byte	0x68
	.long	.LVL369
	.long	.LVL370
	.word	0x1
	.byte	0x68
	.long	.LVL371
	.long	.LVL372-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST127:
	.long	.LVL362
	.long	.LVL364
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL365
	.long	.LVL366-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST128:
	.long	.LFB55
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
	.long	.LCFI59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI59
	.long	.LCFI60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI60
	.long	.LCFI61
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI61
	.long	.LCFI62
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI62
	.long	.LCFI63
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI63
	.long	.LFE55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST129:
	.long	.LVL373
	.long	.LVL374-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL376
	.long	.LVL377
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL403
	.long	.LVL404
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL405
	.long	.LVL406
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL407
	.long	.LVL408
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST130:
	.long	.LVL375
	.long	.LVL409
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST131:
	.long	.LVL376
	.long	.LVL411
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST132:
	.long	.LVL376
	.long	.LVL407
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST133:
	.long	.LVL377
	.long	.LVL379
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	.LVL385
	.long	.LVL403
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	.LVL406
	.long	.LVL410
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST134:
	.long	.LVL386
	.long	.LVL387
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST135:
	.long	.LVL377
	.long	.LVL403
	.word	0x1
	.byte	0x6c
	.long	.LVL406
	.long	.LVL407
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST136:
	.long	.LVL387
	.long	.LVL399
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST137:
	.long	.LFB56
	.long	.LCFI64
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI64
	.long	.LFE56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST138:
	.long	.LVL412
	.long	.LVL413
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL413
	.long	.LVL420
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST139:
	.long	.LVL414
	.long	.LVL415
	.word	0x1
	.byte	0x68
	.long	.LVL415
	.long	.LVL416-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST140:
	.long	.LVL422
	.long	.LVL428
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST141:
	.long	.LVL423
	.long	.LVL424
	.word	0x1
	.byte	0x68
	.long	.LVL425
	.long	.LVL426
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL426
	.long	.LVL429
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST142:
	.long	.LVL427
	.long	.LVL428
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+6408
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
	.long	.LBB73
	.long	.LBE73
	.long	.LBB76
	.long	.LBE76
	.long	0
	.long	0
	.long	.LBB83
	.long	.LBE83
	.long	.LBB85
	.long	.LBE85
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
.LASF158:
	.string	"swTimer"
.LASF42:
	.string	"bitStart"
.LASF100:
	.string	"program_toRegister"
.LASF83:
	.string	"modulebit"
.LASF34:
	.string	"ChannelNote_t"
.LASF173:
	.string	"midiRxActivceSensing"
.LASF206:
	.string	"__iCliRetVal"
.LASF189:
	.string	"init_Pipe"
.LASF153:
	.string	"chanNote"
.LASF81:
	.string	"pRange"
.LASF140:
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
.LASF151:
	.string	"shiftBit"
.LASF112:
	.string	"midi_RegisterMatchProgram"
.LASF141:
	.string	"midiIn_Process"
.LASF194:
	.string	"pipe_off"
.LASF9:
	.string	"long long unsigned int"
.LASF157:
	.string	"midi_CheckTxActiveSense"
.LASF172:
	.string	"midi_RegisterChanged"
.LASF50:
	.string	"OutChannel"
.LASF171:
	.string	"programMap"
.LASF15:
	.string	"message8"
.LASF188:
	.string	"midiDataByteExpected"
.LASF168:
	.string	"midiOutMap"
.LASF174:
	.string	"midi_Setting"
.LASF65:
	.string	"pCoupler"
.LASF128:
	.string	"manual_NoteOnOff"
.LASF197:
	.string	"eeprom_ReadMidiInMap"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF176:
	.string	"midiLastOutManual"
.LASF78:
	.string	"regNr"
.LASF52:
	.string	"sw_channel"
.LASF101:
	.string	"program"
.LASF36:
	.string	"ManualNote_t"
.LASF135:
	.string	"midi_AllManualsOff"
.LASF105:
	.string	"midi_ProgramChange"
.LASF203:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF149:
	.string	"pipeMessage"
.LASF119:
	.string	"init_Manual2Midi"
.LASF185:
	.string	"midiLastCommand"
.LASF46:
	.string	"noteRange"
.LASF187:
	.string	"midiDataByteCount"
.LASF6:
	.string	"long int"
.LASF134:
	.string	"midi_ManualOff"
.LASF162:
	.string	"serESPMidiTmp"
.LASF117:
	.string	"init_Midi2Manual"
.LASF145:
	.string	"noteOnOff"
.LASF93:
	.string	"get_RegisterStatus"
.LASF127:
	.string	"moduleBit_to_manualNote"
.LASF72:
	.string	"midiAllReset"
.LASF166:
	.string	"midiInMap"
.LASF4:
	.string	"uint16_t"
.LASF123:
	.string	"rangeStart"
.LASF183:
	.string	"lcdData"
.LASF45:
	.string	"midiNote"
.LASF41:
	.string	"endNote"
.LASF49:
	.string	"InChannel"
.LASF53:
	.string	"MidiOutMap_t"
.LASF193:
	.string	"pipe_on"
.LASF92:
	.string	"mask"
.LASF136:
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
.LASF196:
	.string	"eeprom_UpdateProg"
.LASF62:
	.string	"AcceptProgChange"
.LASF35:
	.string	"manual"
.LASF150:
	.string	"command"
.LASF7:
	.string	"long unsigned int"
.LASF199:
	.string	"eeprom_ReadMidiOutMap"
.LASF131:
	.string	"myMessage"
.LASF165:
	.string	"ManualNoteRange"
.LASF186:
	.string	"midiDataByte"
.LASF57:
	.string	"registers"
.LASF154:
	.string	"midiSendAllNotesOff"
.LASF143:
	.string	"sreg_save"
.LASF142:
	.string	"midiByte"
.LASF137:
	.string	"midiNote_to_Manual"
.LASF85:
	.string	"section"
.LASF144:
	.string	"__ToDo"
.LASF32:
	.string	"hw_channel"
.LASF182:
	.string	"cplInfo"
.LASF70:
	.string	"getAllCouplers"
.LASF31:
	.string	"Pipe_Module_t"
.LASF40:
	.string	"startNote"
.LASF98:
	.string	"onOff"
.LASF163:
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
.LASF184:
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
.LASF170:
	.string	"registerCount"
.LASF198:
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
.LASF147:
	.string	"midiBytesTransferred"
.LASF58:
	.string	"couplers"
.LASF156:
	.string	"midi_SendActiveSense"
.LASF205:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF84:
	.string	"pSection"
.LASF152:
	.string	"moduleBits"
.LASF192:
	.string	"eeprom_ReadProg"
.LASF3:
	.string	"unsigned char"
.LASF66:
	.string	"midi_CouplerReset"
.LASF167:
	.string	"midiThrough"
.LASF73:
	.string	"registers_CalcCount"
.LASF191:
	.string	"log_putError"
.LASF17:
	.string	"counter"
.LASF201:
	.string	"pipeMsgPush"
.LASF116:
	.string	"midi_CountRegisterInProgram"
.LASF200:
	.string	"eeprom_ReadManualMap"
.LASF56:
	.string	"RegisterMap_t"
.LASF179:
	.string	"midiLastInManual"
.LASF51:
	.string	"MidiThrough_t"
.LASF106:
	.string	"channel"
.LASF146:
	.string	"proc_ESPmidi"
.LASF175:
	.string	"midiLastOutNote"
.LASF190:
	.string	"eeprom_ReadReg"
.LASF181:
	.string	"midi_Couplers"
.LASF13:
	.string	"Word_t"
.LASF160:
	.string	"pipeProcessing"
.LASF178:
	.string	"midiLastInChannel"
.LASF12:
	.string	"byteval"
.LASF155:
	.string	"chan"
.LASF64:
	.string	"char"
.LASF33:
	.string	"note"
.LASF87:
	.string	"mode"
.LASF169:
	.string	"registerMap"
.LASF104:
	.string	"byteNr"
.LASF159:
	.string	"pipe"
.LASF54:
	.string	"startReg"
.LASF195:
	.string	"serial1MIDISend"
.LASF133:
	.string	"splitRange"
.LASF113:
	.string	"progPtr"
.LASF94:
	.string	"count_Registers"
.LASF61:
	.string	"VelZero4Off"
.LASF207:
	.string	"__iRestore"
.LASF0:
	.string	"int8_t"
.LASF29:
	.string	"AssnRead"
.LASF86:
	.string	"read_Register"
.LASF39:
	.string	"ModulBitError_t"
.LASF138:
	.string	"found"
.LASF97:
	.string	"register_onOff"
.LASF139:
	.string	"noteBase0"
.LASF126:
	.string	"manualNote_to_moduleBit"
.LASF114:
	.string	"tempReg"
.LASF55:
	.string	"endReg"
.LASF96:
	.string	"resultPtr"
.LASF161:
	.string	"pipe_Module"
.LASF14:
	.string	"Message16"
.LASF1:
	.string	"uint8_t"
.LASF148:
	.string	"midiKeyPress_Process"
.LASF88:
	.string	"modBitComplette"
.LASF23:
	.string	"pipeInM12"
.LASF22:
	.string	"pipeInM16"
.LASF164:
	.string	"manualMap"
.LASF129:
	.string	"moduleInfo"
.LASF76:
	.string	"init_Registers"
.LASF30:
	.string	"AssnWrite"
.LASF202:
	.string	"serial0USB_logPipeIn"
.LASF60:
	.string	"TxActivceSense"
.LASF177:
	.string	"midiLastInNote"
.LASF21:
	.string	"pipeOut"
.LASF68:
	.string	"result"
.LASF204:
	.string	".././Midi.c"
.LASF110:
	.string	"register_toProgram"
.LASF180:
	.string	"midiLastProgram"
.LASF91:
	.string	"modulNr"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
