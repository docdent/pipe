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
	.loc 1 68 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL0:
.LBB13:
	.loc 1 71 0
	ldi r24,0
.LBE13:
	.loc 1 70 0
	ldi r30,lo8(midi_Couplers)
	ldi r31,hi8(midi_Couplers)
.LBB14:
	.loc 1 71 0
	rjmp .L2
.LVL1:
.L3:
	.loc 1 72 0 discriminator 3
	st Z,__zero_reg__
	.loc 1 71 0 discriminator 3
	subi r24,lo8(-(1))
.LVL2:
	.loc 1 72 0 discriminator 3
	adiw r30,1
.LVL3:
.L2:
	.loc 1 71 0 discriminator 1
	cpi r24,lo8(12)
	brlo .L3
/* epilogue start */
.LBE14:
	.loc 1 74 0
	ret
	.cfi_endproc
.LFE18:
	.size	midi_CouplerReset, .-midi_CouplerReset
	.section	.text.init_Midi,"ax",@progbits
.global	init_Midi
	.type	init_Midi, @function
init_Midi:
.LFB17:
	.loc 1 62 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 63 0
	call midi_CouplerReset
.LVL4:
	.loc 1 64 0
	ldi r24,lo8(-1)
	sts prog_Display,r24
	.loc 1 65 0
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
	.loc 1 78 0
	.cfi_startproc
.LVL5:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 80 0
	cpi r24,lo8(12)
	brsh .L9
	.loc 1 81 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ldi r25,lo8(-1)
	st Z,r25
	.loc 1 83 0
	cpi r24,lo8(6)
	brlo .L7
	.loc 1 85 0
	subi r24,lo8(-(-6))
.LVL6:
	rjmp .L8
.L7:
	.loc 1 88 0
	subi r24,lo8(-(6))
.LVL7:
.L8:
	.loc 1 90 0
	ldi r25,0
	movw r30,r24
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ld r18,Z
	tst r18
	breq .L10
	.loc 1 92 0
	movw r30,r24
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	st Z,__zero_reg__
	.loc 1 93 0
	lsl r24
	rol r25
.LVL8:
	movw r30,r24
	subi r30,lo8(-(cplInfo))
	sbci r31,hi8(-(cplInfo))
	lpm r24,Z
	ret
.LVL9:
.L9:
	.loc 1 96 0
	ldi r24,lo8(-1)
.LVL10:
	ret
.LVL11:
.L10:
	ldi r24,lo8(-1)
.LVL12:
	.loc 1 97 0
	ret
	.cfi_endproc
.LFE19:
	.size	set_Coupler, .-set_Coupler
	.section	.text.getAllCouplers,"ax",@progbits
.global	getAllCouplers
	.type	getAllCouplers, @function
getAllCouplers:
.LFB20:
	.loc 1 99 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 101 0
	ldi r24,0
.LVL13:
	ldi r25,0
.LVL14:
	.loc 1 102 0
	ldi r20,lo8(11)
	rjmp .L13
.LVL15:
.L14:
	.loc 1 109 0
	mov r20,r18
.LVL16:
.L13:
	.loc 1 105 0
	mov r18,r24
.LVL17:
	mov r19,r25
	lsl r18
	rol r19
	mov r24,r18
.LVL18:
	mov r25,r19
	.loc 1 106 0
	mov r30,r20
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ld r21,Z
	cpi r21,lo8(-1)
	brne .L12
	.loc 1 107 0
	ori r24,lo8(1)
.L12:
	.loc 1 109 0
	ldi r18,lo8(-1)
	add r18,r20
.LVL19:
	cpse r20,__zero_reg__
	rjmp .L14
/* epilogue start */
	.loc 1 111 0
	ret
	.cfi_endproc
.LFE20:
	.size	getAllCouplers, .-getAllCouplers
	.section	.text.setAllCouplers,"ax",@progbits
.global	setAllCouplers
	.type	setAllCouplers, @function
setAllCouplers:
.LFB21:
	.loc 1 113 0
	.cfi_startproc
.LVL20:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 114 0
	ldi r20,0
.LVL21:
.L18:
	.loc 1 117 0
	sbrs r24,0
	rjmp .L16
	.loc 1 118 0
	mov r30,r20
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ldi r18,lo8(-1)
	st Z,r18
	rjmp .L17
.L16:
	.loc 1 120 0
	mov r30,r20
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	st Z,__zero_reg__
.L17:
	.loc 1 122 0
	mov r18,r24
	mov r19,r25
	lsr r19
	ror r18
	mov r24,r18
.LVL22:
	mov r25,r19
	.loc 1 123 0
	subi r20,lo8(-(1))
.LVL23:
	cpi r20,lo8(12)
	brlo .L18
/* epilogue start */
	.loc 1 124 0
	ret
	.cfi_endproc
.LFE21:
	.size	setAllCouplers, .-setAllCouplers
	.section	.text.midiAllReset,"ax",@progbits
.global	midiAllReset
	.type	midiAllReset, @function
midiAllReset:
.LFB22:
	.loc 1 144 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 145 0
	ldi r24,lo8(-128)
	sts pipeProcessing,r24
	.loc 1 146 0
	call init_Pipe
.LVL24:
	ret
	.cfi_endproc
.LFE22:
	.size	midiAllReset, .-midiAllReset
	.section	.text.registers_CalcCount,"ax",@progbits
.global	registers_CalcCount
	.type	registers_CalcCount, @function
registers_CalcCount:
.LFB31:
	.loc 1 392 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL25:
.LBB15:
	.loc 1 394 0
	ldi r18,0
.LBE15:
	.loc 1 393 0
	ldi r19,0
.LBB16:
	.loc 1 394 0
	rjmp .L21
.LVL26:
.L23:
	.loc 1 395 0
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
	breq .L22
	.loc 1 395 0 is_stmt 0 discriminator 1
	cp r24,r19
	brlo .L22
	.loc 1 397 0 is_stmt 1
	ldi r19,lo8(1)
.LVL27:
	add r19,r24
.LVL28:
.L22:
	.loc 1 394 0 discriminator 2
	subi r18,lo8(-(1))
.LVL29:
.L21:
	.loc 1 394 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L23
.LBE16:
	.loc 1 400 0 is_stmt 1
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
	.loc 1 403 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 406 0
	ldi r24,lo8(-1)
	sts midi_RegisterChanged,r24
.LVL30:
.LBB17:
	.loc 1 408 0
	ldi r18,0
	rjmp .L25
.LVL31:
.L26:
	.loc 1 409 0 discriminator 3
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
	.loc 1 410 0 discriminator 3
	std Z+1,r24
	.loc 1 411 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 408 0 discriminator 3
	subi r18,lo8(-(1))
.LVL32:
.L25:
	.loc 1 408 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L26
.LBE17:
	.loc 1 413 0 is_stmt 1
	call eeprom_ReadReg
.LVL33:
	cpi r24,lo8(-1)
	brne .L27
	.loc 1 414 0
	sts registerCount,__zero_reg__
	.loc 1 415 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(5)
	ldi r24,lo8(1)
	call log_putError
.LVL34:
	rjmp .L28
.L27:
	.loc 1 417 0
	call registers_CalcCount
.LVL35:
.L28:
	.loc 1 420 0
	call eeprom_ReadProg
.LVL36:
	cpi r24,lo8(-1)
	brne .L30
	rjmp .L34
.LVL37:
.L31:
.LBB18:
.LBB19:
	.loc 1 424 0 discriminator 3
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
	.loc 1 423 0 discriminator 3
	subi r18,lo8(-(1))
.LVL38:
	rjmp .L32
.LVL39:
.L35:
.LBE19:
	ldi r18,0
.L32:
.LVL40:
.LBB20:
	.loc 1 423 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L31
.LBE20:
	.loc 1 426 0 is_stmt 1 discriminator 2
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
	.loc 1 422 0 discriminator 2
	subi r19,lo8(-(1))
.LVL41:
	rjmp .L29
.LVL42:
.L34:
.LBE18:
	ldi r19,0
.L29:
.LVL43:
.LBB21:
	.loc 1 422 0 is_stmt 0 discriminator 1
	cpi r19,lo8(64)
	brlo .L35
.LBE21:
	.loc 1 428 0 is_stmt 1
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(6)
	ldi r24,lo8(1)
	call log_putError
.LVL44:
.L30:
	.loc 1 431 0
	call eeprom_ReadCCreg
.LVL45:
	cpi r24,lo8(-1)
	brne .L24
	.loc 1 432 0
	ldi r30,lo8(midi_ccReg)
	ldi r31,hi8(midi_ccReg)
	std Z+1,r24
	.loc 1 433 0
	st Z,r24
	.loc 1 434 0
	std Z+3,r24
	.loc 1 435 0
	std Z+2,r24
	.loc 1 436 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(10)
	ldi r24,lo8(1)
	call log_putError
.LVL46:
.L24:
	ret
	.cfi_endproc
.LFE32:
	.size	init_Registers, .-init_Registers
	.section	.text.regNr_to_moduleBit,"ax",@progbits
.global	regNr_to_moduleBit
	.type	regNr_to_moduleBit, @function
regNr_to_moduleBit:
.LFB33:
	.loc 1 440 0
	.cfi_startproc
.LVL47:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 443 0
	lds r25,registerCount
	cp r24,r25
	brsh .L37
	.loc 1 443 0 is_stmt 0 discriminator 1
	cpi r24,lo8(64)
	brsh .L37
	ldi r18,lo8(8)
	ldi r30,lo8(registerMap)
	ldi r31,hi8(registerMap)
.L40:
.LVL48:
.LBB22:
	.loc 1 449 0 is_stmt 1
	ld r19,Z
	cp r24,r19
	brlo .L38
	.loc 1 449 0 is_stmt 0 discriminator 1
	ldd r25,Z+1
	cp r25,r24
	brlo .L38
	.loc 1 452 0 is_stmt 1
	ldd r18,Z+2
.LVL49:
	mov r25,r24
	sub r25,r19
	.loc 1 453 0
	ldi r24,0
.LVL50:
	add r25,r18
	ret
.LVL51:
.L38:
	.loc 1 455 0
	adiw r30,3
.LVL52:
	.loc 1 456 0
	subi r18,lo8(-(-1))
.LVL53:
	brne .L40
.LVL54:
.L37:
.LBE22:
	.loc 1 460 0
	ldi r24,lo8(-1)
.LVL55:
	ldi r25,0
	.loc 1 461 0
	ret
	.cfi_endproc
.LFE33:
	.size	regNr_to_moduleBit, .-regNr_to_moduleBit
	.section	.text.moduleBit_to_registerNr,"ax",@progbits
.global	moduleBit_to_registerNr
	.type	moduleBit_to_registerNr, @function
moduleBit_to_registerNr:
.LFB34:
	.loc 1 463 0
	.cfi_startproc
.LVL56:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB23:
	.loc 1 465 0
	ldi r25,0
	rjmp .L42
.LVL57:
.L45:
	.loc 1 466 0
	lds r20,registerMap+2
	cp r24,r20
	brlo .L43
	.loc 1 466 0 is_stmt 0 discriminator 1
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
	brlt .L43
.LVL58:
	.loc 1 468 0 is_stmt 1
	sub r24,r20
	add r24,r21
	ret
.LVL59:
.L43:
	.loc 1 465 0 discriminator 2
	subi r25,lo8(-(1))
.LVL60:
.L42:
	.loc 1 465 0 is_stmt 0 discriminator 1
	cpi r25,lo8(8)
	brlo .L45
.LBE23:
	.loc 1 471 0 is_stmt 1
	ldi r24,lo8(-1)
.LVL61:
	.loc 1 472 0
	ret
	.cfi_endproc
.LFE34:
	.size	moduleBit_to_registerNr, .-moduleBit_to_registerNr
	.section	.text.read_Register,"ax",@progbits
.global	read_Register
	.type	read_Register, @function
read_Register:
.LFB35:
	.loc 1 474 0
	.cfi_startproc
.LVL62:
	push r28
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 477 0
	lds r25,registerCount
	cp r24,r25
	brlo .+2
	rjmp .L52
	mov r28,r22
.LBB24:
	.loc 1 479 0
	call regNr_to_moduleBit
.LVL63:
	.loc 1 480 0
	cpse r24,__zero_reg__
	rjmp .L48
.LVL64:
.LBB25:
	.loc 1 483 0
	mov r18,r25
	andi r18,lo8(31)
.LVL65:
	.loc 1 484 0
	swap r25
.LVL66:
	lsr r25
	andi r25,lo8(7)
.LVL67:
	.loc 1 485 0
	ldi r20,lo8(1)
	ldi r21,0
	rjmp 2f
	1:
	lsl r20
	rol r21
	2:
	dec r25
	brpl 1b
.LVL68:
	.loc 1 486 0
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
.LVL69:
	and r25,r20
	brne .L49
	.loc 1 486 0 is_stmt 0 discriminator 1
	sbrc r28,1
	rjmp .L53
.L49:
	.loc 1 489 0 is_stmt 1
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
.LVL70:
	movw r30,r18
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r19,Z+6
	lds r18,pipe_Module
	and r20,r19
.LVL71:
	and r20,r18
	breq .L51
	.loc 1 489 0 is_stmt 0 discriminator 1
	sbrc r28,0
	rjmp .L54
.L51:
	.loc 1 493 0 is_stmt 1
	tst r25
	breq .L47
	.loc 1 493 0 is_stmt 0 discriminator 1
	tst r20
	breq .L47
	.loc 1 493 0 discriminator 2
	cpi r28,lo8(4)
	brne .L47
	rjmp .L55
.L48:
.LBE25:
.LBE24:
	.loc 1 501 0 is_stmt 1
	ldi r24,0
.LBB27:
	rjmp .L47
.LVL72:
.L53:
.LBB26:
	.loc 1 488 0
	ldi r24,lo8(1)
	rjmp .L47
.LVL73:
.L54:
	.loc 1 492 0
	ldi r24,lo8(1)
	rjmp .L47
.L55:
	.loc 1 494 0
	ldi r24,lo8(1)
	rjmp .L47
.LVL74:
.L52:
.LBE26:
.LBE27:
	.loc 1 501 0
	ldi r24,0
.LVL75:
.L47:
/* epilogue start */
	.loc 1 502 0
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
	.loc 1 504 0
	.cfi_startproc
.LVL76:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 508 0
	lds r25,registerCount
	cp r24,r25
	brsh .L60
.LBB28:
	.loc 1 510 0
	call regNr_to_moduleBit
.LVL77:
	.loc 1 511 0
	cpse r24,__zero_reg__
	rjmp .L61
.LVL78:
.LBB29:
	.loc 1 514 0
	mov r18,r25
	andi r18,lo8(31)
.LVL79:
	.loc 1 515 0
	swap r25
.LVL80:
	lsr r25
	andi r25,lo8(7)
.LVL81:
	.loc 1 516 0
	ldi r20,lo8(1)
	ldi r21,0
	rjmp 2f
	1:
	lsl r20
	rol r21
	2:
	dec r25
	brpl 1b
.LVL82:
	.loc 1 517 0
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
	ldd r24,Z+1
	and r24,r20
	breq .L62
.LBE29:
.LBE28:
	.loc 1 507 0
	ldi r24,0
	rjmp .L59
.L62:
.LBB31:
.LBB30:
	.loc 1 519 0
	ldi r24,lo8(2)
.L59:
.LVL83:
	.loc 1 521 0
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
.LVL84:
	movw r30,r18
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r18,Z+6
	lds r25,pipe_Module
.LVL85:
	and r20,r18
.LVL86:
	and r20,r25
	breq .L57
	.loc 1 525 0
	ori r24,lo8(1)
.LVL87:
	ret
.LVL88:
.L61:
.LBE30:
.LBE31:
	.loc 1 507 0
	ldi r24,0
	ret
.LVL89:
.L60:
	ldi r24,0
.LVL90:
.L57:
	.loc 1 530 0
	ret
	.cfi_endproc
.LFE36:
	.size	get_RegisterStatus, .-get_RegisterStatus
	.section	.text.count_Registers,"ax",@progbits
.global	count_Registers
	.type	count_Registers, @function
count_Registers:
.LFB37:
	.loc 1 533 0
	.cfi_startproc
.LVL91:
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
.LVL92:
.LBB32:
	.loc 1 535 0
	ldi r28,0
.LBE32:
	.loc 1 534 0
	ldi r29,0
.LBB33:
	.loc 1 535 0
	rjmp .L64
.LVL93:
.L66:
	.loc 1 536 0
	mov r22,r17
	mov r24,r28
	call read_Register
.LVL94:
	cpse r24,__zero_reg__
	.loc 1 537 0
	subi r29,lo8(-(1))
.LVL95:
.L65:
	.loc 1 535 0 discriminator 2
	subi r28,lo8(-(1))
.LVL96:
.L64:
	.loc 1 535 0 is_stmt 0 discriminator 1
	cpi r28,lo8(64)
	brlo .L66
.LBE33:
	.loc 1 541 0 is_stmt 1
	mov r24,r29
/* epilogue start */
	pop r29
.LVL97:
	pop r28
.LVL98:
	pop r17
.LVL99:
	ret
	.cfi_endproc
.LFE37:
	.size	count_Registers, .-count_Registers
	.section	.text.read_allRegister,"ax",@progbits
.global	read_allRegister
	.type	read_allRegister, @function
read_allRegister:
.LFB38:
	.loc 1 543 0
	.cfi_startproc
.LVL100:
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
.LVL101:
.LBB34:
	.loc 1 547 0
	ldi r28,0
.LBE34:
	.loc 1 546 0
	ldi r29,0
	.loc 1 544 0
	ldi r16,0
.LBB35:
	.loc 1 547 0
	rjmp .L68
.LVL102:
.L72:
	mov r17,r28
	andi r17,lo8(7)
	.loc 1 550 0
	brne .L69
	.loc 1 552 0
	ldi r29,0
.LVL103:
.L69:
	.loc 1 554 0
	lsr r29
.LVL104:
	.loc 1 555 0
	ldi r22,lo8(3)
	mov r24,r28
	call read_Register
.LVL105:
	tst r24
	breq .L70
	.loc 1 556 0
	ori r29,lo8(-128)
.LVL106:
	.loc 1 557 0
	subi r16,lo8(-(1))
.LVL107:
.L70:
	.loc 1 559 0
	cpi r17,lo8(7)
	brne .L71
	.loc 1 561 0
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L71
.LVL108:
	.loc 1 562 0
	movw r30,r14
	st Z,r29
	movw r24,r14
	adiw r24,1
.LVL109:
	movw r14,r24
.LVL110:
.L71:
	.loc 1 547 0 discriminator 2
	subi r28,lo8(-(1))
.LVL111:
.L68:
	.loc 1 547 0 is_stmt 0 discriminator 1
	cpi r28,lo8(64)
	brlo .L72
.LBE35:
	.loc 1 567 0 is_stmt 1
	mov r24,r16
/* epilogue start */
	pop r29
.LVL112:
	pop r28
.LVL113:
	pop r17
	pop r16
.LVL114:
	pop r15
	pop r14
.LVL115:
	ret
	.cfi_endproc
.LFE38:
	.size	read_allRegister, .-read_allRegister
	.section	.text.register_onOff,"ax",@progbits
.global	register_onOff
	.type	register_onOff, @function
register_onOff:
.LFB39:
	.loc 1 570 0
	.cfi_startproc
.LVL116:
	push r28
.LCFI10:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 572 0
	lds r25,registerCount
	cp r24,r25
	brsh .L74
	mov r28,r22
.LBB36:
	.loc 1 574 0
	call regNr_to_moduleBit
.LVL117:
	.loc 1 575 0
	cpse r24,__zero_reg__
	rjmp .L74
.LVL118:
.LBB37:
	.loc 1 578 0
	mov r24,r25
	andi r24,lo8(31)
.LVL119:
	.loc 1 579 0
	swap r25
.LVL120:
	lsr r25
	andi r25,lo8(7)
.LVL121:
	.loc 1 580 0
	sbrs r28,0
	rjmp .L77
	.loc 1 582 0
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
.LVL122:
	rjmp .L74
.LVL123:
.L77:
	.loc 1 585 0
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
.LVL124:
.L74:
/* epilogue start */
.LBE37:
.LBE36:
	.loc 1 590 0
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
	.loc 1 230 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 232 0
	lds r24,midiLastCommand
	cpi r24,lo8(-16)
	brne .L78
	.loc 1 232 0 is_stmt 0 discriminator 1
	lds r24,midiDataByte
	cpi r24,lo8(125)
	brne .L78
	.loc 1 234 0 is_stmt 1
	lds r25,midiDataByte+1
	andi r25,lo8(-16)
	cpi r25,lo8(64)
	breq .L80
	.loc 1 234 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L78
.L80:
	.loc 1 237 0 is_stmt 1
	lds r24,midiDataByte+3
	cpi r24,lo8(-91)
	brne .L78
	.loc 1 237 0 is_stmt 0 discriminator 1
	lds r18,midiDataByteCount
	cpi r18,lo8(4)
	brne .L78
	.loc 1 240 0 is_stmt 1
	ldi r22,lo8(1)
	cpi r25,lo8(64)
	breq .L81
	ldi r22,0
.L81:
	call register_onOff
.LVL125:
.L78:
	ret
	.cfi_endproc
.LFE28:
	.size	midiInSysEx, .-midiInSysEx
	.section	.text.midi_RegisterMatchProgram,"ax",@progbits
.global	midi_RegisterMatchProgram
	.type	midi_RegisterMatchProgram, @function
midi_RegisterMatchProgram:
.LFB44:
	.loc 1 678 0
	.cfi_startproc
.LVL126:
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
.LVL127:
	.loc 1 682 0
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
.LVL128:
	add r16,r24
	adc r17,r25
	subi r16,lo8(-(programMap))
	sbci r17,hi8(-(programMap))
.LVL129:
.LBB38:
	.loc 1 685 0
	ldi r28,0
.LBE38:
	.loc 1 683 0
	ldi r29,0
	.loc 1 681 0
	mov r15,__zero_reg__
.LBB39:
	.loc 1 685 0
	rjmp .L83
.LVL130:
.L88:
	.loc 1 686 0
	mov r25,r28
	andi r25,lo8(7)
	brne .L84
.LVL131:
	.loc 1 688 0
	movw r30,r16
	ld r29,Z
.LVL132:
	subi r16,-1
	sbci r17,-1
.LVL133:
.L84:
	.loc 1 690 0
	mov r24,r28
	call get_RegisterStatus
.LVL134:
	.loc 1 691 0
	sbrs r29,0
	rjmp .L85
	.loc 1 693 0
	sbrc r24,1
	rjmp .L87
	rjmp .L89
.L85:
	.loc 1 700 0
	sbrc r24,1
	rjmp .L90
	.loc 1 703 0
	sbrc r24,0
	.loc 1 705 0
	inc r15
.LVL135:
.L87:
	.loc 1 708 0 discriminator 2
	lsr r29
.LVL136:
	.loc 1 685 0 discriminator 2
	subi r28,lo8(-(1))
.LVL137:
.L83:
	.loc 1 685 0 is_stmt 0 discriminator 1
	lds r25,registerCount
	cp r28,r25
	brlo .L88
.LBE39:
	.loc 1 710 0 is_stmt 1
	mov r24,r15
.LBB40:
	rjmp .L86
.LVL138:
.L89:
	.loc 1 695 0
	ldi r24,lo8(-1)
.LVL139:
	rjmp .L86
.LVL140:
.L90:
	.loc 1 702 0
	ldi r24,lo8(-1)
.LVL141:
.L86:
/* epilogue start */
.LBE40:
	.loc 1 711 0
	pop r29
.LVL142:
	pop r28
.LVL143:
	pop r17
	pop r16
.LVL144:
	pop r15
.LVL145:
	ret
	.cfi_endproc
.LFE44:
	.size	midi_RegisterMatchProgram, .-midi_RegisterMatchProgram
	.section	.text.midi_CountRegisterInProgram,"ax",@progbits
.global	midi_CountRegisterInProgram
	.type	midi_CountRegisterInProgram, @function
midi_CountRegisterInProgram:
.LFB45:
	.loc 1 713 0
	.cfi_startproc
.LVL146:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 716 0
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
.LVL147:
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
.LVL148:
.LBB41:
	.loc 1 718 0
	ldi r25,0
.LBE41:
	.loc 1 717 0
	ldi r18,0
	.loc 1 715 0
	ldi r24,0
.LBB42:
	.loc 1 718 0
	rjmp .L92
.LVL149:
.L95:
	.loc 1 719 0
	mov r19,r25
	andi r19,lo8(7)
	brne .L93
.LVL150:
	.loc 1 721 0
	ld r18,Z
.LVL151:
	adiw r30,1
.LVL152:
.L93:
	.loc 1 723 0
	sbrc r18,0
	.loc 1 724 0
	subi r24,lo8(-(1))
.LVL153:
.L94:
	.loc 1 726 0 discriminator 2
	lsr r18
.LVL154:
	.loc 1 718 0 discriminator 2
	subi r25,lo8(-(1))
.LVL155:
.L92:
	.loc 1 718 0 is_stmt 0 discriminator 1
	lds r19,registerCount
	cp r25,r19
	brlo .L95
/* epilogue start */
.LBE42:
	.loc 1 730 0 is_stmt 1
	ret
	.cfi_endproc
.LFE45:
	.size	midi_CountRegisterInProgram, .-midi_CountRegisterInProgram
	.section	.text.midiSendRegOn,"ax",@progbits
.global	midiSendRegOn
	.type	midiSendRegOn, @function
midiSendRegOn:
.LFB46:
	.loc 1 732 0
	.cfi_startproc
.LVL156:
	push r28
.LCFI16:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 733 0
	lds r25,midi_ccReg+2
	tst r25
	brlt .L96
	.loc 1 733 0 is_stmt 0 discriminator 1
	lds r22,midiThrough+1
	cpi r22,lo8(16)
	brsh .L96
	mov r28,r24
	.loc 1 734 0 is_stmt 1
	ldi r24,lo8(-80)
.LVL157:
	call serial1MIDISendCmd
.LVL158:
	.loc 1 735 0
	lds r24,midi_ccReg+2
	call serial1MIDISendData
.LVL159:
	.loc 1 736 0
	mov r24,r28
	call serial1MIDISendData
.LVL160:
.L96:
/* epilogue start */
	.loc 1 738 0
	pop r28
	ret
	.cfi_endproc
.LFE46:
	.size	midiSendRegOn, .-midiSendRegOn
	.section	.text.midiSendRegOff,"ax",@progbits
.global	midiSendRegOff
	.type	midiSendRegOff, @function
midiSendRegOff:
.LFB47:
	.loc 1 740 0
	.cfi_startproc
.LVL161:
	push r28
.LCFI17:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 741 0
	lds r25,midi_ccReg+3
	tst r25
	brlt .L98
	.loc 1 741 0 is_stmt 0 discriminator 1
	lds r22,midiThrough+1
	cpi r22,lo8(16)
	brsh .L98
	mov r28,r24
	.loc 1 742 0 is_stmt 1
	ldi r24,lo8(-80)
.LVL162:
	call serial1MIDISendCmd
.LVL163:
	.loc 1 743 0
	lds r24,midi_ccReg+3
	call serial1MIDISendData
.LVL164:
	.loc 1 744 0
	mov r24,r28
	call serial1MIDISendData
.LVL165:
.L98:
/* epilogue start */
	.loc 1 746 0
	pop r28
	ret
	.cfi_endproc
.LFE47:
	.size	midiSendRegOff, .-midiSendRegOff
	.section	.text.prog_set,"ax",@progbits
.global	prog_set
	.type	prog_set, @function
prog_set:
.LFB48:
	.loc 1 754 0
	.cfi_startproc
.LVL166:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 755 0
	lds r25,prog_Display
	cp r25,r24
	breq .L100
	.loc 1 756 0
	sts prog_Display,r24
	.loc 1 757 0
	ldi r24,lo8(-1)
.LVL167:
	sts prog_UpdDisplay,r24
.LVL168:
.L100:
	ret
	.cfi_endproc
.LFE48:
	.size	prog_set, .-prog_set
	.section	.text.program_toRegister,"ax",@progbits
.global	program_toRegister
	.type	program_toRegister, @function
program_toRegister:
.LFB40:
	.loc 1 592 0
	.cfi_startproc
.LVL169:
	push r11
.LCFI18:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI19:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI20:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI21:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI22:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI23:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI24:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI25:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI26:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
.LVL170:
	.loc 1 595 0
	cpi r24,lo8(64)
	brlo .+2
	rjmp .L110
	mov r14,r24
.LBB43:
	.loc 1 596 0
	call prog_set
.LVL171:
	.loc 1 599 0
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
.LBB44:
	.loc 1 600 0
	mov r11,__zero_reg__
.LBE44:
	.loc 1 598 0
	ldi r17,0
.LBE43:
	.loc 1 594 0
	ldi r16,0
.LBB47:
.LBB46:
	.loc 1 600 0
	rjmp .L104
.LVL173:
.L109:
	.loc 1 603 0
	movw r12,r30
	ldi r24,-1
	sub r12,r24
	sbc r13,r24
.LVL174:
	ld r28,Z
.LVL175:
.LBB45:
	.loc 1 604 0
	ldi r29,0
	rjmp .L105
.LVL176:
.L108:
	.loc 1 605 0
	mov r24,r28
	andi r24,lo8(1)
	sbrc r28,0
	.loc 1 606 0
	subi r16,lo8(-(1))
.LVL177:
.L106:
	.loc 1 608 0 discriminator 2
	ldi r22,lo8(1)
	cpse r24,__zero_reg__
	rjmp .L107
	ldi r22,0
.L107:
	mov r24,r17
	call register_onOff
.LVL178:
	.loc 1 610 0 discriminator 2
	lsr r28
.LVL179:
	.loc 1 611 0 discriminator 2
	subi r17,lo8(-(1))
.LVL180:
	.loc 1 604 0 discriminator 2
	subi r29,lo8(-(1))
.LVL181:
.L105:
	.loc 1 604 0 is_stmt 0 discriminator 1
	cpi r29,lo8(8)
	brlo .L108
.LBE45:
	.loc 1 600 0 is_stmt 1 discriminator 2
	inc r11
.LVL182:
	.loc 1 603 0 discriminator 2
	movw r30,r12
.LVL183:
.L104:
	.loc 1 600 0 discriminator 1
	ldi r24,lo8(7)
	cp r24,r11
	brsh .L109
.LBE46:
	.loc 1 615 0
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
	.loc 1 616 0
	ldd r24,Z+8
	ldd r25,Z+9
	call setAllCouplers
.LVL186:
	rjmp .L103
.LVL187:
.L110:
.LBE47:
	.loc 1 594 0
	ldi r16,0
.LVL188:
.L103:
	.loc 1 619 0
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
	.loc 1 621 0
	.cfi_startproc
.LVL190:
	push r28
.LCFI27:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r22
	.loc 1 622 0
	lds r25,midi_Setting+2
	cpse r25,__zero_reg__
	rjmp .L117
.LBB48:
	rjmp .L113
.LVL191:
.L115:
.LBB49:
	.loc 1 627 0
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
	brne .L118
	.loc 1 626 0 discriminator 2
	subi r25,lo8(-(1))
.LVL192:
	rjmp .L112
.LVL193:
.L117:
.LBE49:
.LBE48:
	ldi r25,0
.L112:
.LVL194:
.LBB52:
.LBB50:
	.loc 1 626 0 is_stmt 0 discriminator 1
	cpi r25,lo8(4)
	brlo .L115
.LBE50:
	.loc 1 624 0 is_stmt 1
	ldi r24,0
.LVL195:
.LBB51:
	rjmp .L114
.LVL196:
.L118:
	.loc 1 629 0
	ldi r24,lo8(-1)
.LVL197:
.L114:
.LBE51:
	.loc 1 633 0
	cpi r24,lo8(-1)
	brne .L113
	.loc 1 635 0
	mov r24,r28
.LVL198:
	call program_toRegister
.LVL199:
	.loc 1 636 0
	mov r24,r28
	call prog_set
.LVL200:
	.loc 1 637 0
	sts midiLastProgram,r28
.L113:
.LBE52:
	.loc 1 643 0
	lds r22,midiThrough+1
	cpi r22,lo8(-1)
	breq .L111
	.loc 1 645 0
	ldi r24,lo8(-64)
	call serial1MIDISendCmd
.LVL201:
	.loc 1 647 0
	mov r24,r28
	call serial1MIDISendData
.LVL202:
.L111:
/* epilogue start */
	.loc 1 650 0
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
	.loc 1 653 0
	.cfi_startproc
	push r28
.LCFI28:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL204:
.LBB53:
	.loc 1 654 0
	ldi r28,0
	rjmp .L120
.LVL205:
.L121:
	.loc 1 655 0 discriminator 3
	ldi r24,lo8(-1)
	call prog_set
.LVL206:
	.loc 1 656 0 discriminator 3
	ldi r22,0
	mov r24,r28
	call register_onOff
.LVL207:
	.loc 1 654 0 discriminator 3
	subi r28,lo8(-(1))
.LVL208:
.L120:
	.loc 1 654 0 is_stmt 0 discriminator 1
	lds r24,registerCount
	cp r28,r24
	brlo .L121
/* epilogue start */
.LBE53:
	.loc 1 658 0 is_stmt 1
	pop r28
.LVL209:
	ret
	.cfi_endproc
.LFE42:
	.size	midi_resetRegisters, .-midi_resetRegisters
	.section	.text.register_toProgram,"ax",@progbits
.global	register_toProgram
	.type	register_toProgram, @function
register_toProgram:
.LFB43:
	.loc 1 660 0
	.cfi_startproc
.LVL210:
	push r16
.LCFI29:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI30:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI31:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI32:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r28,r24
	mov r16,r22
	.loc 1 664 0
	call midi_resetRegisters
.LVL211:
	.loc 1 665 0
	call module_WaitOutputInput2Cycles
.LVL212:
	.loc 1 667 0
	cpi r28,lo8(64)
	brsh .L125
.LBB54:
	.loc 1 668 0
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
.LVL213:
	.loc 1 669 0
	subi r24,lo8(-(programMap))
	sbci r25,hi8(-(programMap))
.LVL214:
	call read_allRegister
.LVL215:
	mov r17,r24
.LVL216:
	rjmp .L123
.LVL217:
.L125:
.LBE54:
	.loc 1 666 0
	ldi r17,0
.LVL218:
.L123:
	.loc 1 671 0
	ldi r29,0
	call getAllCouplers
.LVL219:
	movw r18,r28
	lsl r18
	rol r19
	lsl r28
	rol r29
	lsl r28
	rol r29
	lsl r28
	rol r29
.LVL220:
	add r28,r18
	adc r29,r19
	subi r28,lo8(-(programMap))
	sbci r29,hi8(-(programMap))
	std Y+9,r25
	std Y+8,r24
	.loc 1 672 0
	cpse r16,__zero_reg__
	.loc 1 673 0
	call eeprom_UpdateProg
.LVL221:
.L124:
	.loc 1 676 0
	mov r24,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
.LVL222:
	pop r16
.LVL223:
	ret
	.cfi_endproc
.LFE43:
	.size	register_toProgram, .-register_toProgram
	.section	.text.prog_toLcd,"ax",@progbits
.global	prog_toLcd
	.type	prog_toLcd, @function
prog_toLcd:
.LFB49:
	.loc 1 761 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 762 0
	lds r24,prog_Display
	cpi r24,lo8(64)
	brsh .L127
	.loc 1 763 0
	ldi r24,lo8(80)
	call lcd_putc
.LVL224:
	.loc 1 764 0
	ldi r24,lo8(45)
	call lcd_putc
.LVL225:
	.loc 1 765 0
	lds r24,prog_Display
	lsr r24
	lsr r24
	lsr r24
	andi r24,lo8(7)
	subi r24,lo8(-(65))
	call lcd_putc
.LVL226:
	.loc 1 766 0
	lds r24,prog_Display
	andi r24,lo8(7)
	subi r24,lo8(-(49))
	call lcd_putc
.LVL227:
	.loc 1 767 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL228:
	ret
.L127:
	.loc 1 769 0
	ldi r24,lo8(5)
	call lcd_blank
.LVL229:
	ret
	.cfi_endproc
.LFE49:
	.size	prog_toLcd, .-prog_toLcd
	.section	.text.init_RegOut,"ax",@progbits
.global	init_RegOut
	.type	init_RegOut, @function
init_RegOut:
.LFB50:
	.loc 1 777 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 778 0
	call eeprom_ReadRegOut
.LVL230:
	cpi r24,lo8(-1)
	brne .L129
	.loc 1 780 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(9)
	ldi r24,lo8(1)
	call log_putError
.LVL231:
.L129:
	ret
	.cfi_endproc
.LFE50:
	.size	init_RegOut, .-init_RegOut
	.section	.text.reg_toLCD,"ax",@progbits
.global	reg_toLCD
	.type	reg_toLCD, @function
reg_toLCD:
.LFB51:
	.loc 1 783 0
	.cfi_startproc
.LVL232:
	push r14
.LCFI33:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI34:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
.LCFI35:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
.LCFI36:
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
.LCFI37:
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
.LCFI38:
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r15,r24
.LVL233:
.LBB55:
	.loc 1 785 0
	mov r14,__zero_reg__
	rjmp .L132
.LVL234:
.L144:
.LBB56:
	.loc 1 786 0
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
.LVL235:
	.loc 1 787 0
	ldd r24,Y+1
.LVL236:
	.loc 1 788 0
	ldi r25,lo8(-33)
	add r25,r24
	cpi r25,lo8(95)
	brsh .L133
	.loc 1 790 0
	call lcd_putc
.LVL237:
	.loc 1 791 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL238:
.L133:
	.loc 1 793 0
	movw r30,r16
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(reg_Out))
	sbci r31,hi8(-(reg_Out))
	ldd r28,Z+2
.LVL239:
	.loc 1 794 0
	cpi r28,lo8(-1)
	breq .+2
	rjmp .L135
.LBE56:
	rjmp .L131
.L143:
.LBB59:
	.loc 1 798 0
	cpse r28,r24
	rjmp .L136
	.loc 1 800 0
	ldi r24,lo8(-1)
	cpse r15,r24
	rjmp .L137
	.loc 1 801 0
	mov r24,r28
	call get_RegisterStatus
.LVL240:
	sbrs r24,0
	rjmp .L145
	ldi r24,lo8(11)
	rjmp .L138
.L145:
	ldi r24,lo8(10)
.L138:
	.loc 1 801 0 is_stmt 0 discriminator 4
	call lcd_putc
.LVL241:
	mov r29,r28
	rjmp .L139
.L137:
	.loc 1 803 0 is_stmt 1
	mov r24,r28
	call get_RegisterStatus
.LVL242:
	sbrs r24,1
	rjmp .L146
	ldi r24,lo8(11)
	rjmp .L140
.L146:
	ldi r24,lo8(10)
.L140:
	.loc 1 803 0 is_stmt 0 discriminator 4
	call lcd_putc
.LVL243:
	mov r29,r28
	rjmp .L139
.L136:
	.loc 1 807 0 is_stmt 1
	ldi r24,lo8(-1)
	cpse r15,r24
	rjmp .L141
.LBB57:
	.loc 1 808 0
	ldi r29,lo8(1)
	add r29,r28
.LVL244:
	mov r24,r28
	call get_RegisterStatus
.LVL245:
	sbrs r24,0
	rjmp .L147
	ldi r28,lo8(2)
	rjmp .L142
.L147:
	ldi r28,0
.L142:
.LVL246:
	.loc 1 809 0 discriminator 4
	mov r24,r29
	call get_RegisterStatus
.LVL247:
	andi r24,lo8(1)
	add r24,r28
.LVL248:
	.loc 1 810 0 discriminator 4
	subi r24,lo8(-(12))
.LVL249:
	call lcd_putc
.LVL250:
.LBE57:
	rjmp .L139
.LVL251:
.L141:
.LBB58:
	.loc 1 812 0
	ldi r29,lo8(1)
	add r29,r28
.LVL252:
	mov r24,r28
	call get_RegisterStatus
.LVL253:
	mov r28,r24
	andi r28,lo8(2)
.LVL254:
	.loc 1 813 0
	mov r24,r29
	call get_RegisterStatus
.LVL255:
	lsr r24
	andi r24,1
	add r24,r28
.LVL256:
	.loc 1 814 0
	subi r24,lo8(-(12))
.LVL257:
	call lcd_putc
.LVL258:
.L139:
.LBE58:
	.loc 1 817 0
	ldi r28,lo8(1)
	add r28,r29
.LVL259:
.L135:
	.loc 1 797 0
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
	rjmp .L143
	.loc 1 819 0 discriminator 2
	ldi r24,lo8(32)
	call lcd_putc
.LVL260:
.LBE59:
	.loc 1 785 0 discriminator 2
	inc r14
.LVL261:
.L132:
	.loc 1 785 0 is_stmt 0 discriminator 1
	ldi r24,lo8(7)
	cp r24,r14
	brlo .+2
	rjmp .L144
.L131:
/* epilogue start */
.LBE55:
	.loc 1 821 0 is_stmt 1
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
.LVL262:
	pop r14
.LVL263:
	ret
	.cfi_endproc
.LFE51:
	.size	reg_toLCD, .-reg_toLCD
	.section	.text.reg_ClearOnLCD,"ax",@progbits
.global	reg_ClearOnLCD
	.type	reg_ClearOnLCD, @function
reg_ClearOnLCD:
.LFB52:
	.loc 1 823 0
	.cfi_startproc
	push r17
.LCFI39:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI40:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI41:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
.LVL264:
.LBB60:
	.loc 1 825 0
	ldi r17,0
	rjmp .L149
.LVL265:
.L151:
.LBB61:
	.loc 1 826 0
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
.LVL266:
	.loc 1 827 0
	ldd r18,Y+1
.LVL267:
	.loc 1 829 0
	ldd r24,Y+3
	ldd r25,Y+2
	sub r24,r25
	subi r24,lo8(-(1))
.LVL268:
	.loc 1 830 0
	ldi r25,0
	adiw r24,1
.LVL269:
	asr r25
	ror r24
.LVL270:
	.loc 1 831 0
	subi r18,lo8(-(-33))
.LVL271:
	cpi r18,lo8(95)
	brsh .L152
	ldi r18,lo8(2)
	rjmp .L150
.L152:
	ldi r18,0
.L150:
.LVL272:
	.loc 1 832 0 discriminator 4
	add r24,r18
.LVL273:
	call lcd_blank
.LVL274:
.LBE61:
	.loc 1 825 0 discriminator 4
	subi r17,lo8(-(1))
.LVL275:
.L149:
	.loc 1 825 0 is_stmt 0 discriminator 2
	cpi r17,lo8(8)
	brlo .L151
/* epilogue start */
.LBE60:
	.loc 1 834 0 is_stmt 1
	pop r29
	pop r28
	pop r17
.LVL276:
	ret
	.cfi_endproc
.LFE52:
	.size	reg_ClearOnLCD, .-reg_ClearOnLCD
	.section	.text.init_Midi2Manual,"ax",@progbits
.global	init_Midi2Manual
	.type	init_Midi2Manual, @function
init_Midi2Manual:
.LFB53:
	.loc 1 838 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL277:
.LBB62:
	.loc 1 842 0
	ldi r25,lo8(64)
.LBE62:
	.loc 1 840 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
.LBB63:
	.loc 1 842 0
	rjmp .L154
.LVL278:
.L155:
	.loc 1 844 0 discriminator 3
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 845 0 discriminator 3
	std Z+1,r24
	.loc 1 846 0 discriminator 3
	std Z+3,r24
	.loc 1 847 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 848 0 discriminator 3
	adiw r30,4
.LVL279:
	.loc 1 842 0 discriminator 3
	subi r25,lo8(-(-1))
.LVL280:
.L154:
	.loc 1 842 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L155
.LBE63:
	.loc 1 851 0 is_stmt 1
	call eeprom_ReadMidiInMap
.LVL281:
	cpi r24,lo8(-1)
	brne .L156
	.loc 1 852 0
	sts midiEEPromLoadError,r24
	.loc 1 853 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
	st Z,__zero_reg__
	.loc 1 854 0
	ldi r24,lo8(36)
	std Z+1,r24
	.loc 1 855 0
	std Z+3,r24
	.loc 1 856 0
	ldi r25,lo8(56)
	std Z+2,r25
	.loc 1 857 0
	ldi r18,lo8(1)
	std Z+16,r18
	.loc 1 858 0
	std Z+17,r24
	.loc 1 859 0
	std Z+19,r24
	.loc 1 860 0
	std Z+18,r25
	.loc 1 861 0
	ldi r18,lo8(2)
	std Z+32,r18
	.loc 1 862 0
	std Z+33,r24
	.loc 1 863 0
	std Z+35,r24
	.loc 1 864 0
	std Z+34,r25
	.loc 1 865 0
	ldi r25,lo8(3)
	std Z+48,r25
	.loc 1 866 0
	std Z+49,r24
	.loc 1 867 0
	std Z+51,r24
	.loc 1 868 0
	ldi r24,lo8(30)
	std Z+50,r24
	.loc 1 869 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL282:
.L156:
	.loc 1 871 0
	call eeprom_ReadMidiThrough
.LVL283:
	cpi r24,lo8(-1)
	brne .L153
	.loc 1 872 0
	ldi r30,lo8(midiThrough)
	ldi r31,hi8(midiThrough)
	st Z,r24
	.loc 1 873 0
	std Z+1,r24
	.loc 1 874 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL284:
.L153:
	ret
	.cfi_endproc
.LFE53:
	.size	init_Midi2Manual, .-init_Midi2Manual
	.section	.text.init_Manual2Midi,"ax",@progbits
.global	init_Manual2Midi
	.type	init_Manual2Midi, @function
init_Manual2Midi:
.LFB54:
	.loc 1 878 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL285:
.LBB64:
	.loc 1 880 0
	ldi r18,0
	rjmp .L159
.LVL286:
.L160:
	.loc 1 881 0 discriminator 3
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 882 0 discriminator 3
	std Z+1,r24
	.loc 1 880 0 discriminator 3
	subi r18,lo8(-(1))
.LVL287:
.L159:
	.loc 1 880 0 is_stmt 0 discriminator 1
	mov r24,r18
	ldi r25,0
	sbiw r24,0
	brne .L160
.LBE64:
	.loc 1 885 0 is_stmt 1
	call eeprom_ReadMidiOutMap
.LVL288:
	cpi r24,lo8(-1)
	brne .L158
	.loc 1 886 0
	sts midiEEPromLoadError,r24
	.loc 1 888 0
	ldi r30,lo8(midiOutMap)
	ldi r31,hi8(midiOutMap)
	st Z,__zero_reg__
	.loc 1 889 0
	ldi r25,lo8(1)
	std Z+2,r25
	.loc 1 890 0
	ldi r25,lo8(2)
	std Z+4,r25
	.loc 1 891 0
	ldi r25,lo8(3)
	std Z+6,r25
	.loc 1 892 0
	ldi r30,lo8(midi_Setting)
	ldi r31,hi8(midi_Setting)
	st Z,__zero_reg__
	.loc 1 893 0
	std Z+1,__zero_reg__
	.loc 1 894 0
	std Z+2,r24
	.loc 1 895 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(2)
	ldi r24,lo8(1)
	call log_putError
.LVL289:
.L158:
	ret
	.cfi_endproc
.LFE54:
	.size	init_Manual2Midi, .-init_Manual2Midi
	.section	.text.Manual_to_MidiNote,"ax",@progbits
.global	Manual_to_MidiNote
	.type	Manual_to_MidiNote, @function
Manual_to_MidiNote:
.LFB56:
	.loc 1 941 0
	.cfi_startproc
.LVL290:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	.loc 1 943 0
	ldi r24,lo8(-1)
.LVL291:
	ldi r25,lo8(-1)
	.loc 1 944 0
	cpi r30,lo8(4)
	brsh .L163
	.loc 1 945 0
	ldi r31,0
	lsl r30
	rol r31
.LVL292:
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r18,Z
	cpi r18,lo8(-1)
	breq .L163
	.loc 1 946 0
	mov r24,r18
	.loc 1 947 0
	mov r25,r22
.L163:
	.loc 1 952 0
	ret
	.cfi_endproc
.LFE56:
	.size	Manual_to_MidiNote, .-Manual_to_MidiNote
	.section	.text.Midi_updateManualRange,"ax",@progbits
.global	Midi_updateManualRange
	.type	Midi_updateManualRange, @function
Midi_updateManualRange:
.LFB57:
	.loc 1 956 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL293:
.LBB65:
	.loc 1 957 0
	ldi r23,0
	rjmp .L165
.LVL294:
.L171:
.LBB66:
.LBB67:
	.loc 1 961 0
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
	breq .L166
.LVL295:
	.loc 1 961 0 is_stmt 0 discriminator 1
	movw r30,r18
	lsl r30
	rol r31
	add r30,r18
	adc r31,r19
	movw r18,r24
.LVL296:
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
	breq .L166
	.loc 1 962 0 is_stmt 1
	cp r26,r22
	brsh .L167
	.loc 1 963 0
	mov r22,r26
.LVL297:
.L167:
	.loc 1 965 0
	cp r21,r18
	brsh .L166
	.loc 1 966 0
	mov r21,r18
.LVL298:
.L166:
	.loc 1 970 0
	tst r21
	breq .L168
	.loc 1 970 0 is_stmt 0 discriminator 1
	cpi r22,lo8(-1)
	brne .L169
.L168:
	.loc 1 972 0 is_stmt 1
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 973 0
	std Z+1,r24
	rjmp .L170
.L169:
	.loc 1 976 0
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	st Z,r22
	.loc 1 977 0
	std Z+1,r21
.L170:
	.loc 1 960 0 discriminator 2
	subi r20,lo8(-(1))
.LVL299:
	rjmp .L172
.LVL300:
.L175:
.LBE67:
.LBE66:
	ldi r20,0
	ldi r22,lo8(-1)
	ldi r21,0
.L172:
.LVL301:
.LBB69:
.LBB68:
	.loc 1 960 0 is_stmt 0 discriminator 1
	cpi r20,lo8(4)
	brsh .+2
	rjmp .L171
.LBE68:
.LBE69:
	.loc 1 957 0 is_stmt 1 discriminator 2
	subi r23,lo8(-(1))
.LVL302:
.L165:
	.loc 1 957 0 is_stmt 0 discriminator 1
	cpi r23,lo8(4)
	brlo .L175
/* epilogue start */
.LBE65:
	.loc 1 981 0 is_stmt 1
	ret
	.cfi_endproc
.LFE57:
	.size	Midi_updateManualRange, .-Midi_updateManualRange
	.section	.text.init_Manual2Module,"ax",@progbits
.global	init_Manual2Module
	.type	init_Manual2Module, @function
init_Manual2Module:
.LFB58:
	.loc 1 983 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL303:
.LBB70:
	.loc 1 984 0
	ldi r22,lo8(3)
	rjmp .L177
.LVL304:
.L178:
.LBB71:
	.loc 1 987 0 discriminator 3
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
	.loc 1 988 0 discriminator 3
	adiw r26,1
	st X,r19
	sbiw r26,1
	.loc 1 989 0 discriminator 3
	movw r30,r26
	std Z+2,__zero_reg__
	.loc 1 986 0 discriminator 3
	subi r18,lo8(-(-1))
.LVL305:
	rjmp .L179
.LVL306:
.L181:
.LBE71:
	ldi r18,lo8(3)
.L179:
.LVL307:
.LBB72:
	.loc 1 986 0 is_stmt 0 discriminator 1
	tst r18
	brge .L178
.LBE72:
	.loc 1 984 0 is_stmt 1 discriminator 2
	subi r22,lo8(-(-1))
.LVL308:
.L177:
	.loc 1 984 0 is_stmt 0 discriminator 1
	tst r22
	brge .L181
.LBE70:
	.loc 1 993 0 is_stmt 1
	call eeprom_ReadManualMap
.LVL309:
	cpi r24,lo8(-1)
	brne .L180
	.loc 1 995 0
	sts midiEEPromLoadError,r24
	.loc 1 996 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(3)
	ldi r24,lo8(1)
	call log_putError
.LVL310:
	.loc 1 998 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
	ldi r24,lo8(36)
	st Z,r24
	.loc 1 999 0
	ldi r19,lo8(67)
	std Z+1,r19
	.loc 1 1000 0
	std Z+2,__zero_reg__
	.loc 1 1001 0
	ldi r18,lo8(68)
	std Z+3,r18
	.loc 1 1002 0
	ldi r25,lo8(91)
	std Z+4,r25
	.loc 1 1003 0
	ldi r20,lo8(32)
	std Z+5,r20
	.loc 1 1004 0
	std Z+12,r24
	.loc 1 1005 0
	std Z+13,r19
	.loc 1 1006 0
	ldi r20,lo8(64)
	std Z+14,r20
	.loc 1 1007 0
	std Z+15,r18
	.loc 1 1008 0
	std Z+16,r25
	.loc 1 1009 0
	ldi r20,lo8(96)
	std Z+17,r20
	.loc 1 1010 0
	std Z+24,r24
	.loc 1 1011 0
	std Z+25,r19
	.loc 1 1012 0
	ldi r19,lo8(-128)
	std Z+26,r19
	.loc 1 1013 0
	std Z+27,r18
	.loc 1 1014 0
	std Z+28,r25
	.loc 1 1015 0
	ldi r25,lo8(-96)
	std Z+29,r25
	.loc 1 1016 0
	std Z+36,r24
	.loc 1 1017 0
	ldi r24,lo8(65)
	std Z+37,r24
	.loc 1 1018 0
	ldi r24,lo8(-64)
	std Z+38,r24
	.loc 1 1019 0
	std Z+48,__zero_reg__
	.loc 1 1020 0
	ldi r24,lo8(29)
	std Z+49,r24
	.loc 1 1021 0
	ldi r24,lo8(-32)
	std Z+50,r24
.L180:
	.loc 1 1023 0
	call Midi_updateManualRange
.LVL311:
	ret
	.cfi_endproc
.LFE58:
	.size	init_Manual2Module, .-init_Manual2Module
	.section	.text.manualNote_to_moduleBit,"ax",@progbits
.global	manualNote_to_moduleBit
	.type	manualNote_to_moduleBit, @function
manualNote_to_moduleBit:
.LFB59:
	.loc 1 1027 0
	.cfi_startproc
.LVL312:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1030 0
	cpi r24,lo8(4)
	brsh .L183
.LBB73:
	.loc 1 1033 0
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
.LVL313:
	.loc 1 1034 0
	ldi r24,lo8(4)
.LVL314:
.L186:
	.loc 1 1036 0
	ld r18,Z
	cp r22,r18
	brlo .L184
	.loc 1 1036 0 is_stmt 0 discriminator 1
	ldd r25,Z+1
	cp r25,r22
	brlo .L184
	.loc 1 1039 0 is_stmt 1
	ldd r25,Z+2
	sub r22,r18
.LVL315:
	.loc 1 1040 0
	ldi r24,0
.LVL316:
	add r25,r22
	ret
.LVL317:
.L184:
	.loc 1 1042 0
	adiw r30,3
.LVL318:
	.loc 1 1043 0
	subi r24,lo8(-(-1))
.LVL319:
	brne .L186
.LVL320:
.L183:
.LBE73:
	.loc 1 1047 0
	ldi r24,lo8(-1)
	ldi r25,0
	.loc 1 1048 0
	ret
	.cfi_endproc
.LFE59:
	.size	manualNote_to_moduleBit, .-manualNote_to_moduleBit
	.section	.text.moduleBit_to_manualNote,"ax",@progbits
.global	moduleBit_to_manualNote
	.type	moduleBit_to_manualNote, @function
moduleBit_to_manualNote:
.LFB60:
	.loc 1 1050 0
	.cfi_startproc
.LVL321:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1057 0
	ldi r23,0
	.loc 1 1056 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
.LVL322:
.L192:
.LBB74:
	.loc 1 1059 0
	ldi r18,lo8(4)
	rjmp .L188
.LVL323:
.L191:
	.loc 1 1060 0
	ld r19,Z
	cpi r19,lo8(-1)
	breq .L189
	.loc 1 1062 0
	ldd r22,Z+2
	cp r24,r22
	brlo .L189
	.loc 1 1062 0 is_stmt 0 discriminator 1
	mov r26,r24
	ldi r27,0
	ldd r20,Z+1
	ldi r21,0
	sub r20,r19
	sbc r21,__zero_reg__
	add r20,r22
	adc r21,__zero_reg__
	cp r20,r26
	cpc r21,r27
	brlt .L189
	.loc 1 1065 0 is_stmt 1
	mov r25,r24
	sub r25,r22
	.loc 1 1066 0
	mov r24,r23
.LVL324:
	add r25,r19
	ret
.LVL325:
.L189:
	.loc 1 1069 0 discriminator 2
	adiw r30,3
.LVL326:
	.loc 1 1059 0 discriminator 2
	subi r18,lo8(-(-1))
.LVL327:
.L188:
	.loc 1 1059 0 is_stmt 0 discriminator 1
	cpse r18,__zero_reg__
	rjmp .L191
.LBE74:
	.loc 1 1071 0 is_stmt 1
	subi r23,lo8(-(1))
.LVL328:
	.loc 1 1072 0
	cpi r23,lo8(5)
	brlo .L192
	.loc 1 1074 0
	ldi r24,lo8(-1)
.LVL329:
	ldi r25,0
	.loc 1 1075 0
	ret
	.cfi_endproc
.LFE60:
	.size	moduleBit_to_manualNote, .-moduleBit_to_manualNote
	.section	.text.manual_NoteOnOff,"ax",@progbits
.global	manual_NoteOnOff
	.type	manual_NoteOnOff, @function
manual_NoteOnOff:
.LFB61:
	.loc 1 1077 0
	.cfi_startproc
.LVL330:
	push r14
.LCFI42:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI43:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
.LCFI44:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
.LCFI45:
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
.LCFI46:
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
.LCFI47:
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	mov r28,r24
	mov r16,r22
	mov r29,r20
	.loc 1 1080 0
	call manualNote_to_moduleBit
.LVL331:
	.loc 1 1082 0
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
.LVL332:
	.loc 1 1083 0
	mov r17,r25
	andi r17,lo8(31)
.LVL333:
	.loc 1 1084 0
	cpse r24,__zero_reg__
	rjmp .L194
	.loc 1 1085 0
	lds r24,pipe_Module+1
	and r24,r14
	brne .L195
	.loc 1 1085 0 is_stmt 0 discriminator 1
	tst r29
	brlt .L195
.LBB75:
	.loc 1 1087 0 is_stmt 1
	andi r29,lo8(127)
.LVL334:
	.loc 1 1090 0
	cpi r29,lo8(1)
	brne .L201
	ldi r25,lo8(32)
	rjmp .L196
.L201:
	ldi r25,0
.L196:
	.loc 1 1091 0 discriminator 4
	mov r24,r14
	or r25,r17
	call pipeMsgPush
.LVL335:
.L195:
.LBE75:
	.loc 1 1093 0
	andi r29,lo8(127)
.LVL336:
	.loc 1 1094 0
	brne .L197
	.loc 1 1096 0
	mov r22,r14
	mov r24,r17
	call pipe_off
.LVL337:
	rjmp .L194
.L197:
	.loc 1 1099 0
	mov r22,r14
	mov r24,r17
	call pipe_on
.LVL338:
.L194:
	.loc 1 1104 0
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldd r22,Z+1
	cpi r22,lo8(-1)
	breq .L193
	.loc 1 1107 0
	cpi r29,lo8(1)
	breq .L202
	.loc 1 1107 0 is_stmt 0 discriminator 2
	lds r24,midi_Setting+1
	tst r24
	breq .L203
	.loc 1 1107 0
	ldi r24,lo8(-112)
	rjmp .L199
.L202:
	ldi r24,lo8(-112)
	rjmp .L199
.L203:
	ldi r24,lo8(-128)
.L199:
	.loc 1 1107 0 discriminator 6
	call serial1MIDISendCmd
.LVL339:
	.loc 1 1108 0 is_stmt 1 discriminator 6
	mov r24,r16
	call serial1MIDISendData
.LVL340:
	.loc 1 1110 0 discriminator 6
	cpse r29,__zero_reg__
	rjmp .L204
	.loc 1 1110 0 is_stmt 0
	ldi r24,0
	rjmp .L200
.L204:
	ldi r24,lo8(64)
.L200:
	.loc 1 1110 0 discriminator 4
	call serial1MIDISendData
.LVL341:
.L193:
/* epilogue start */
	.loc 1 1114 0 is_stmt 1
	pop r29
.LVL342:
	pop r28
.LVL343:
	pop r17
.LVL344:
	pop r16
.LVL345:
	pop r15
	pop r14
.LVL346:
	ret
	.cfi_endproc
.LFE61:
	.size	manual_NoteOnOff, .-manual_NoteOnOff
	.section	.text.midiAllNotesOff,"ax",@progbits
.global	midiAllNotesOff
	.type	midiAllNotesOff, @function
midiAllNotesOff:
.LFB23:
	.loc 1 149 0
	.cfi_startproc
.LVL347:
	push r11
.LCFI48:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI49:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI50:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI51:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI52:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI53:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI54:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI55:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI56:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	mov r12,r24
.LVL348:
	.loc 1 150 0
	mov r13,__zero_reg__
	.loc 1 151 0
	rjmp .L206
.LVL349:
.L210:
.LBB76:
	.loc 1 152 0
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
.LVL350:
	.loc 1 154 0
	ldi r24,lo8(3)
	cp r24,r11
	brlo .L207
.LBB77:
	.loc 1 156 0
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
.LVL351:
.LBB78:
	.loc 1 158 0
	ldd r15,Z+2
.LVL352:
	rjmp .L208
.L209:
	.loc 1 159 0 discriminator 3
	clr r14
	inc r14
	add r14,r22
.LVL353:
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
.LVL354:
	.loc 1 158 0 discriminator 3
	dec r15
.LVL355:
	.loc 1 159 0 discriminator 3
	mov r22,r14
.LVL356:
.L208:
	.loc 1 158 0 discriminator 1
	cpse r15,__zero_reg__
	rjmp .L209
.LBE78:
	.loc 1 161 0
	mov r30,r11
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r22,Z
.LVL357:
	.loc 1 162 0
	cpi r22,lo8(16)
	brsh .L207
	.loc 1 164 0
	ldi r24,lo8(-80)
	call serial1MIDISendCmd
.LVL358:
	.loc 1 165 0
	ldi r24,lo8(123)
	call serial1MIDISendData
.LVL359:
	.loc 1 166 0
	ldi r24,0
	call serial1MIDISendData
.LVL360:
.L207:
.LBE77:
	.loc 1 173 0
	inc r13
.LVL361:
.L206:
.LBE76:
	.loc 1 151 0
	ldi r24,lo8(3)
	cp r24,r13
	brlo .+2
	rjmp .L210
/* epilogue start */
	.loc 1 175 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
.LVL362:
	pop r12
.LVL363:
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
	.loc 1 177 0
	.cfi_startproc
.LVL364:
	push r16
.LCFI57:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI58:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI59:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI60:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r28,r24
	.loc 1 179 0
	cpi r24,lo8(4)
	brsh .L212
	.loc 1 179 0 is_stmt 0 discriminator 1
	mov r16,r24
	ldi r17,0
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ld r29,Z
	cpi r29,lo8(-1)
	breq .L212
	.loc 1 179 0 discriminator 2
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r24,Z+1
.LVL365:
	cpi r24,lo8(-1)
	brne .L213
.LBB79:
	rjmp .L212
.LVL366:
.L214:
	.loc 1 181 0 is_stmt 1 discriminator 3
	ldi r20,lo8(-128)
	mov r22,r29
	mov r24,r28
	call manual_NoteOnOff
.LVL367:
	.loc 1 180 0 discriminator 3
	subi r29,lo8(-(1))
.LVL368:
.L213:
	.loc 1 180 0 is_stmt 0 discriminator 1
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r24,Z+1
	cp r24,r29
	brsh .L214
.LVL369:
.L212:
.LBE79:
	.loc 1 185 0 is_stmt 1
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r22,Z
.LVL370:
	.loc 1 186 0
	cpi r22,lo8(16)
	brsh .L211
	.loc 1 188 0
	ldi r24,lo8(-80)
	call serial1MIDISendCmd
.LVL371:
	.loc 1 189 0
	ldi r24,lo8(123)
	call serial1MIDISendData
.LVL372:
	.loc 1 190 0
	ldi r24,0
	call serial1MIDISendData
.LVL373:
.L211:
/* epilogue start */
	.loc 1 192 0
	pop r29
	pop r28
.LVL374:
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
	.loc 1 194 0
	.cfi_startproc
	push r28
.LCFI61:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL375:
.LBB80:
	.loc 1 195 0
	ldi r28,0
	rjmp .L217
.LVL376:
.L218:
	.loc 1 196 0 discriminator 3
	mov r24,r28
	call midi_ManualOff
.LVL377:
	.loc 1 195 0 discriminator 3
	subi r28,lo8(-(1))
.LVL378:
.L217:
	.loc 1 195 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brlo .L218
/* epilogue start */
.LBE80:
	.loc 1 198 0 is_stmt 1
	pop r28
.LVL379:
	ret
	.cfi_endproc
.LFE25:
	.size	midi_AllManualsOff, .-midi_AllManualsOff
	.section	.text.midi_CheckRxActiveSense,"ax",@progbits
.global	midi_CheckRxActiveSense
	.type	midi_CheckRxActiveSense, @function
midi_CheckRxActiveSense:
.LFB26:
	.loc 1 202 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 203 0
	lds r24,midiRxActivceSensing
	tst r24
	breq .L219
	.loc 1 205 0
	lds r24,swTimer+6
	cpse r24,__zero_reg__
	rjmp .L219
	.loc 1 207 0
	call midi_AllManualsOff
.LVL380:
	.loc 1 208 0
	sts midiRxActivceSensing,__zero_reg__
.L219:
	ret
	.cfi_endproc
.LFE26:
	.size	midi_CheckRxActiveSense, .-midi_CheckRxActiveSense
	.section	.text.midiNote_to_Manual,"ax",@progbits
.global	midiNote_to_Manual
	.type	midiNote_to_Manual, @function
midiNote_to_Manual:
.LFB55:
	.loc 1 899 0
	.cfi_startproc
.LVL381:
	push r16
.LCFI62:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI63:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI64:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI65:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r22
	mov r17,r20
	.loc 1 902 0
	mov r29,r24
	andi r29,lo8(15)
.LVL382:
.LBB81:
	.loc 1 904 0
	ldi r28,0
.LBE81:
	.loc 1 903 0
	ldi r25,0
.LBB84:
	.loc 1 904 0
	rjmp .L222
.LVL383:
.L225:
	.loc 1 905 0
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
	brsh .L223
.LVL384:
.LBB82:
	.loc 1 907 0
	movw r26,r30
	ldd r22,Z+1
	mov r23,r16
	sub r23,r22
	mov r22,r23
.LVL385:
	.loc 1 908 0
	brmi .L223
	.loc 1 908 0 is_stmt 0 discriminator 1
	movw r30,r26
	ldd r30,Z+2
	ldi r31,0
	mov r26,r23
	lsl r23
	sbc r27,r27
	cp r26,r30
	cpc r27,r31
	brge .L223
.LVL386:
.LBB83:
	.loc 1 911 0 is_stmt 1
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
.LVL387:
	add r22,r25
.LVL388:
	.loc 1 912 0
	cpi r17,lo8(1)
	brne .L224
	.loc 1 913 0
	sts midiLastInManual,r24
	.loc 1 914 0
	sts midiLastInNote,r22
.L224:
	.loc 1 916 0
	mov r20,r17
.LVL389:
	call manual_NoteOnOff
.LVL390:
	.loc 1 917 0
	ldi r25,lo8(-1)
.LVL391:
.L223:
.LBE83:
.LBE82:
	.loc 1 904 0 discriminator 2
	subi r28,lo8(-(1))
.LVL392:
.L222:
	.loc 1 904 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brsh .+2
	rjmp .L225
.LBE84:
	.loc 1 921 0 is_stmt 1
	cpi r17,lo8(1)
	brne .L226
	.loc 1 921 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L226
	.loc 1 923 0 is_stmt 1
	sts midiLastInNote,r16
	.loc 1 924 0
	sts midiLastInChannel,r29
	.loc 1 925 0
	ldi r24,lo8(-1)
	sts midiLastInManual,r24
.L226:
	.loc 1 928 0
	lds r24,midiThrough
	cpse r29,r24
	rjmp .L221
	.loc 1 930 0
	lds r22,midiThrough+1
	cpi r22,lo8(-1)
	breq .L221
	.loc 1 932 0
	cpi r17,lo8(1)
	breq .L230
	.loc 1 932 0 is_stmt 0 discriminator 2
	lds r24,midi_Setting+1
	tst r24
	breq .L231
	.loc 1 932 0
	ldi r24,lo8(-112)
	rjmp .L228
.L230:
	ldi r24,lo8(-112)
	rjmp .L228
.L231:
	ldi r24,lo8(-128)
.L228:
	.loc 1 932 0 discriminator 6
	call serial1MIDISendCmd
.LVL393:
	.loc 1 934 0 is_stmt 1 discriminator 6
	mov r24,r16
	call serial1MIDISendData
.LVL394:
	.loc 1 936 0 discriminator 6
	cpse r17,__zero_reg__
	rjmp .L232
	.loc 1 936 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L233
	.loc 1 936 0
	ldi r24,lo8(64)
	rjmp .L229
.L232:
	ldi r24,lo8(64)
	rjmp .L229
.L233:
	ldi r24,0
.L229:
	.loc 1 936 0 discriminator 6
	call serial1MIDISendData
.LVL395:
.L221:
/* epilogue start */
	.loc 1 939 0 is_stmt 1
	pop r29
.LVL396:
	pop r28
.LVL397:
	pop r17
.LVL398:
	pop r16
.LVL399:
	ret
	.cfi_endproc
.LFE55:
	.size	midiNote_to_Manual, .-midiNote_to_Manual
	.section	.text.midiIn_Process,"ax",@progbits
.global	midiIn_Process
	.type	midiIn_Process, @function
midiIn_Process:
.LFB29:
	.loc 1 247 0
	.cfi_startproc
.LVL400:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 250 0
	tst r24
	brlt .+2
	rjmp .L235
	.loc 1 253 0
	cpi r24,lo8(-8)
	brlo .L236
	.loc 1 255 0
	cpi r24,lo8(-2)
	brne .L237
	.loc 1 256 0
	ldi r24,lo8(1)
.LVL401:
	sts midiRxActivceSensing,r24
.LBB85:
	.loc 1 257 0
	in r25,__SREG__
.LVL402:
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
	.loc 1 257 0
	rjmp .L238
.LVL403:
.L239:
	.loc 1 257 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(25)
.LVL404:
	std Z+6,r24
	std Z+7,__zero_reg__
.LVL405:
	.loc 1 257 0 discriminator 3
	ldi r24,0
.LVL406:
.L238:
	.loc 1 257 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L239
.LVL407:
.LBB88:
.LBB89:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL408:
.LBE89:
.LBE88:
.LBE85:
	ret
.LVL409:
.L237:
	.loc 1 258 0
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L234
	.loc 1 259 0
	call midiAllReset
.LVL410:
	ret
.LVL411:
.L236:
	.loc 1 264 0
	sts midiLastCommand,r24
	.loc 1 265 0
	sts midiDataByteCount,__zero_reg__
	.loc 1 266 0
	ldi r25,lo8(-128)
	add r25,r24
	cpi r25,lo8(64)
	brsh .L241
	.loc 1 268 0
	ldi r24,lo8(2)
.LVL412:
	sts midiDataByteExpected,r24
	ret
.LVL413:
.L241:
	.loc 1 269 0
	ldi r25,lo8(32)
	add r25,r24
	cpi r25,lo8(16)
	brsh .L242
	.loc 1 271 0
	ldi r24,lo8(2)
.LVL414:
	sts midiDataByteExpected,r24
	ret
.LVL415:
.L242:
	.loc 1 272 0
	cpi r24,lo8(-14)
	brne .L243
	.loc 1 274 0
	ldi r24,lo8(2)
.LVL416:
	sts midiDataByteExpected,r24
	ret
.LVL417:
.L243:
	.loc 1 275 0
	cpi r24,lo8(-16)
	brne .L244
	.loc 1 277 0
	ldi r24,lo8(-1)
.LVL418:
	sts midiDataByteExpected,r24
	ret
.LVL419:
.L244:
	.loc 1 278 0
	ldi r25,lo8(64)
	add r25,r24
	cpi r25,lo8(32)
	brsh .L245
	.loc 1 280 0
	ldi r24,lo8(1)
.LVL420:
	sts midiDataByteExpected,r24
	ret
.LVL421:
.L245:
	.loc 1 281 0
	cpi r24,lo8(-15)
	breq .L246
	.loc 1 281 0 is_stmt 0 discriminator 1
	cpi r24,lo8(-13)
	brne .L247
.L246:
	.loc 1 283 0 is_stmt 1
	ldi r24,lo8(1)
.LVL422:
	sts midiDataByteExpected,r24
	ret
.LVL423:
.L247:
	.loc 1 284 0
	cpi r24,lo8(-9)
	brne .+2
	rjmp .L234
	.loc 1 288 0
	sts midiDataByteExpected,__zero_reg__
	ret
.L235:
	.loc 1 294 0
	lds r30,midiDataByteCount
	cpi r30,lo8(8)
	brsh .L248
	.loc 1 296 0
	ldi r25,lo8(1)
	add r25,r30
	sts midiDataByteCount,r25
	ldi r31,0
	subi r30,lo8(-(midiDataByte))
	sbci r31,hi8(-(midiDataByte))
	st Z,r24
.L248:
	.loc 1 298 0
	lds r24,midiDataByteExpected
.LVL424:
	cpi r24,lo8(-1)
	brne .+2
	rjmp .L234
	.loc 1 300 0
	lds r25,midiDataByteCount
	cp r25,r24
	brsh .+2
	rjmp .L234
	.loc 1 302 0
	lds r25,midiLastCommand
	cpi r25,lo8(-16)
	brlo .+2
	rjmp .L249
.LBB90:
	.loc 1 304 0
	mov r24,r25
	andi r24,lo8(15)
.LVL425:
	.loc 1 306 0
	andi r25,lo8(-16)
	cpi r25,lo8(-112)
	breq .L250
	brsh .L251
	cpi r25,lo8(-128)
	breq .L252
	rjmp .L249
.L251:
	cpi r25,lo8(-80)
	breq .L253
	cpi r25,lo8(-64)
	breq .L254
	rjmp .L249
.L252:
.LVL426:
	.loc 1 310 0
	ldi r20,0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL427:
	.loc 1 311 0
	rjmp .L249
.LVL428:
.L250:
	.loc 1 313 0
	lds r25,midiDataByte+1
	cpse r25,__zero_reg__
	rjmp .L259
	.loc 1 315 0
	ldi r20,0
	rjmp .L255
.L259:
	.loc 1 318 0
	ldi r20,lo8(1)
.L255:
.LVL429:
	.loc 1 320 0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL430:
	.loc 1 321 0
	rjmp .L249
.LVL431:
.L253:
	.loc 1 323 0
	lds r25,midiDataByte
	cpi r25,lo8(123)
	brne .L256
	.loc 1 324 0
	call midiAllNotesOff
.LVL432:
	rjmp .L249
.LVL433:
.L256:
	.loc 1 325 0
	lds r24,midi_ccReg
.LVL434:
	cpse r25,r24
	rjmp .L257
	.loc 1 327 0
	ldi r22,lo8(1)
	lds r24,midiDataByte+1
	call register_onOff
.LVL435:
	rjmp .L249
.LVL436:
.L257:
	.loc 1 328 0
	lds r24,midi_ccReg+1
	cpse r25,r24
	rjmp .L258
	.loc 1 329 0
	ldi r22,0
	lds r24,midiDataByte+1
	call register_onOff
.LVL437:
	rjmp .L249
.LVL438:
.L258:
	.loc 1 330 0
	cpi r25,lo8(121)
	brne .L249
	.loc 1 331 0
	call midi_resetRegisters
.LVL439:
	rjmp .L249
.LVL440:
.L254:
	.loc 1 335 0
	lds r22,midiDataByte
	call midi_ProgramChange
.LVL441:
.L249:
.LBE90:
	.loc 1 342 0
	sts midiDataByteCount,__zero_reg__
.L234:
	ret
	.cfi_endproc
.LFE29:
	.size	midiIn_Process, .-midiIn_Process
	.section	.text.proc_ESPmidi,"ax",@progbits
.global	proc_ESPmidi
	.type	proc_ESPmidi, @function
proc_ESPmidi:
.LFB30:
	.loc 1 348 0
	.cfi_startproc
.LVL442:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 352 0
	lds r25,serESPMidiTmp+2
	mov r24,r25
.LVL443:
	andi r24,lo8(15)
.LVL444:
	.loc 1 354 0
	andi r25,lo8(-16)
	cpi r25,lo8(-128)
	breq .L262
	brsh .L263
	tst r25
	breq .L264
	ret
.L263:
	cpi r25,lo8(-112)
	breq .L265
	cpi r25,lo8(-80)
	breq .L266
	ret
.L262:
.LVL445:
	.loc 1 358 0
	ldi r20,0
	lds r22,serESPMidiTmp+1
	call midiNote_to_Manual
.LVL446:
	.loc 1 359 0
	ret
.LVL447:
.L265:
	.loc 1 361 0
	lds r25,serESPMidiTmp
	cpse r25,__zero_reg__
	rjmp .L269
	.loc 1 363 0
	ldi r20,0
	rjmp .L267
.L269:
	.loc 1 366 0
	ldi r20,lo8(1)
.L267:
.LVL448:
	.loc 1 368 0
	lds r22,serESPMidiTmp+1
	call midiNote_to_Manual
.LVL449:
	.loc 1 369 0
	ret
.LVL450:
.L266:
	.loc 1 371 0
	lds r25,serESPMidiTmp+1
	cpi r25,lo8(123)
	brne .L260
	.loc 1 372 0
	call midiAllNotesOff
.LVL451:
	ret
.LVL452:
.L264:
	.loc 1 377 0
	lds r25,serESPMidiTmp+1
	mov r24,r25
.LVL453:
	andi r24,lo8(15)
.LVL454:
	.loc 1 378 0
	andi r25,lo8(-16)
	cpi r25,lo8(-64)
	brne .L260
	.loc 1 380 0
	lds r22,serESPMidiTmp
	call midi_ProgramChange
.LVL455:
.L260:
	ret
	.cfi_endproc
.LFE30:
	.size	proc_ESPmidi, .-proc_ESPmidi
	.section	.text.midiKeyPress_Process,"ax",@progbits
.global	midiKeyPress_Process
	.type	midiKeyPress_Process, @function
midiKeyPress_Process:
.LFB62:
	.loc 1 1118 0
	.cfi_startproc
.LVL456:
	push r9
.LCFI66:
	.cfi_def_cfa_offset 4
	.cfi_offset 9, -3
	push r10
.LCFI67:
	.cfi_def_cfa_offset 5
	.cfi_offset 10, -4
	push r11
.LCFI68:
	.cfi_def_cfa_offset 6
	.cfi_offset 11, -5
	push r12
.LCFI69:
	.cfi_def_cfa_offset 7
	.cfi_offset 12, -6
	push r13
.LCFI70:
	.cfi_def_cfa_offset 8
	.cfi_offset 13, -7
	push r14
.LCFI71:
	.cfi_def_cfa_offset 9
	.cfi_offset 14, -8
	push r15
.LCFI72:
	.cfi_def_cfa_offset 10
	.cfi_offset 15, -9
	push r16
.LCFI73:
	.cfi_def_cfa_offset 11
	.cfi_offset 16, -10
	push r17
.LCFI74:
	.cfi_def_cfa_offset 12
	.cfi_offset 17, -11
	push r28
.LCFI75:
	.cfi_def_cfa_offset 13
	.cfi_offset 28, -12
	push r29
.LCFI76:
	.cfi_def_cfa_offset 14
	.cfi_offset 29, -13
/* prologue: function */
/* frame size = 0 */
/* stack size = 11 */
.L__stack_usage = 11
	mov r29,r24
	mov r28,r25
	.loc 1 1123 0
	call serial0USB_logPipeIn
.LVL457:
	.loc 1 1124 0
	mov r24,r28
	andi r24,lo8(-32)
	mov r10,r24
.LVL458:
	.loc 1 1125 0
	andi r28,lo8(31)
	mov r13,r28
.LVL459:
	.loc 1 1130 0
	ldi r25,lo8(32)
	cp r24,r25
	brne .+2
	rjmp .L294
	.loc 1 1130 0 is_stmt 0 discriminator 1
	tst r24
	brne .+2
	rjmp .L295
.LBB91:
	rjmp .L270
.LVL460:
.L293:
	.loc 1 1134 0 is_stmt 1
	sbrs r29,0
	rjmp .L273
	.loc 1 1136 0
	mov r14,r28
	mov r15,__zero_reg__
	movw r24,r14
	lsl r24
	rol r25
	swap r24
	swap r25
	andi r25,0xf0
	eor r25,r24
	andi r24,0xf0
	eor r25,r24
	mov r17,r13
	or r17,r24
	mov r24,r17
	call moduleBit_to_manualNote
.LVL461:
	mov r12,r24
.LVL462:
	mov r9,r25
	.loc 1 1138 0
	mov r16,r24
	cpi r24,lo8(-1)
	brne .+2
	rjmp .L274
.LVL463:
.LBB92:
	.loc 1 1142 0
	mov r22,r25
	call Manual_to_MidiNote
.LVL464:
	mov r17,r25
.LVL465:
	.loc 1 1143 0
	cpi r24,lo8(16)
	brsh .L275
	.loc 1 1145 0
	ldi r25,lo8(32)
	cpse r10,r25
	rjmp .L276
	.loc 1 1147 0
	mov r22,r24
	ldi r24,lo8(-112)
	call serial1MIDISendCmd
.LVL466:
	.loc 1 1148 0
	mov r24,r17
	call serial1MIDISendData
.LVL467:
	.loc 1 1149 0
	ldi r24,lo8(64)
	call serial1MIDISendData
.LVL468:
	.loc 1 1150 0
	sts midiLastOutManual,r12
.LVL469:
	.loc 1 1151 0
	sts midiLastOutNote,r9
	rjmp .L275
.LVL470:
.L276:
	.loc 1 1152 0
	lds r25,midi_Setting+1
	tst r25
	breq .L277
	.loc 1 1154 0
	mov r22,r24
	ldi r24,lo8(-112)
	call serial1MIDISendCmd
.LVL471:
	.loc 1 1155 0
	mov r24,r17
	call serial1MIDISendData
.LVL472:
	.loc 1 1156 0
	ldi r24,0
	call serial1MIDISendData
.LVL473:
	rjmp .L275
.L277:
	.loc 1 1158 0
	mov r22,r24
	ldi r24,lo8(-128)
	call serial1MIDISendCmd
.LVL474:
	.loc 1 1159 0
	mov r24,r17
	call serial1MIDISendData
.LVL475:
	.loc 1 1160 0
	ldi r24,0
	call serial1MIDISendData
.LVL476:
.L275:
	.loc 1 1164 0
	ldi r20,lo8(1)
	ldi r24,lo8(32)
.LVL477:
	cpse r10,r24
	ldi r20,0
.L278:
	mov r17,r20
.LVL478:
	.loc 1 1166 0
	cpse r16,__zero_reg__
	rjmp .L279
	.loc 1 1167 0
	lds r24,midi_Couplers
	cpi r24,lo8(-1)
	brne .L280
	.loc 1 1168 0
	mov r22,r9
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL479:
.L280:
	.loc 1 1170 0
	lds r24,midi_Couplers+1
	cpi r24,lo8(-1)
	brne .L281
	.loc 1 1171 0
	mov r20,r17
	mov r22,r9
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL480:
.L281:
	.loc 1 1173 0
	lds r24,midi_Couplers+3
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L296
	.loc 1 1174 0
	mov r20,r17
	mov r22,r9
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL481:
	.loc 1 1141 0
	clr r11
	dec r11
	rjmp .L282
.L279:
	.loc 1 1176 0
	cpi r16,lo8(1)
	brne .L283
	.loc 1 1177 0
	lds r24,midi_Couplers+2
	cpi r24,lo8(-1)
	brne .L284
	.loc 1 1178 0
	mov r22,r9
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL482:
.L284:
	.loc 1 1180 0
	lds r24,midi_Couplers+4
	cpi r24,lo8(-1)
	brne .L285
	.loc 1 1181 0
	mov r20,r17
	mov r22,r9
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL483:
.L285:
	.loc 1 1183 0
	lds r24,midi_Couplers+6
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L297
	.loc 1 1184 0
	mov r20,r17
	mov r22,r9
	ldi r24,0
	call manual_NoteOnOff
.LVL484:
	.loc 1 1141 0
	clr r11
	dec r11
	rjmp .L282
.L283:
	.loc 1 1186 0
	cpi r16,lo8(2)
	brne .L286
	.loc 1 1187 0
	lds r24,midi_Couplers+5
	cpi r24,lo8(-1)
	brne .L287
	.loc 1 1188 0
	mov r22,r9
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL485:
.L287:
	.loc 1 1190 0
	lds r24,midi_Couplers+7
	cpi r24,lo8(-1)
	brne .L288
	.loc 1 1191 0
	mov r20,r17
	mov r22,r9
	ldi r24,0
	call manual_NoteOnOff
.LVL486:
.L288:
	.loc 1 1193 0
	lds r24,midi_Couplers+8
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L298
	.loc 1 1194 0
	mov r20,r17
	mov r22,r9
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL487:
	.loc 1 1141 0
	clr r11
	dec r11
	rjmp .L282
.L286:
	.loc 1 1196 0
	cpi r16,lo8(3)
	brne .L299
	.loc 1 1197 0
	lds r24,midi_Couplers+9
	cpi r24,lo8(-1)
	brne .L289
	.loc 1 1198 0
	mov r22,r9
	ldi r24,0
	call manual_NoteOnOff
.LVL488:
.L289:
	.loc 1 1200 0
	lds r24,midi_Couplers+10
	cpi r24,lo8(-1)
	brne .L290
	.loc 1 1201 0
	mov r20,r17
	mov r22,r9
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL489:
.L290:
	.loc 1 1203 0
	lds r24,midi_Couplers+11
	cpi r24,lo8(-1)
	brne .L300
	.loc 1 1204 0
	mov r20,r17
	mov r22,r9
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL490:
	.loc 1 1141 0
	clr r11
	dec r11
	rjmp .L282
.LVL491:
.L274:
.LBE92:
.LBB93:
	.loc 1 1209 0
	mov r24,r17
	call moduleBit_to_registerNr
.LVL492:
	mov r17,r24
.LVL493:
	.loc 1 1210 0
	cpi r24,lo8(64)
	brsh .L282
.LVL494:
	.loc 1 1214 0
	ldi r25,lo8(32)
	cpse r10,r25
	rjmp .L291
	.loc 1 1215 0
	call midiSendRegOn
.LVL495:
	.loc 1 1216 0
	ori r17,lo8(-128)
.LVL496:
	rjmp .L292
.L291:
	.loc 1 1218 0
	call midiSendRegOff
.LVL497:
.L292:
	.loc 1 1220 0
	sts midi_RegisterChanged,r17
	.loc 1 1212 0
	clr r11
	dec r11
	rjmp .L282
.LVL498:
.L296:
.LBE93:
.LBB94:
	.loc 1 1141 0
	clr r11
	dec r11
	rjmp .L282
.L297:
	clr r11
	dec r11
	rjmp .L282
.L298:
	clr r11
	dec r11
	rjmp .L282
.L299:
	clr r11
	dec r11
	rjmp .L282
.L300:
	clr r11
	dec r11
.LVL499:
.L282:
.LBE94:
	.loc 1 1223 0
	cpse r11,__zero_reg__
	rjmp .L273
	.loc 1 1225 0
	mov r21,r14
	clr r20
	or r20,r13
	ldi r22,lo8(1)
	ldi r24,lo8(2)
	call log_putWarning
.LVL500:
.L273:
	.loc 1 1228 0 discriminator 2
	lsr r29
.LVL501:
	.loc 1 1132 0 discriminator 2
	subi r28,lo8(-(1))
.LVL502:
	rjmp .L271
.LVL503:
.L294:
.LBE91:
	ldi r28,0
.LVL504:
	mov r11,__zero_reg__
	rjmp .L271
.LVL505:
.L295:
	ldi r28,0
.LVL506:
	mov r11,__zero_reg__
.LVL507:
.L271:
.LBB95:
	.loc 1 1132 0 is_stmt 0 discriminator 1
	cpi r28,lo8(8)
	brsh .+2
	rjmp .L293
.LVL508:
.L270:
/* epilogue start */
.LBE95:
	.loc 1 1231 0 is_stmt 1
	pop r29
.LVL509:
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
.LVL510:
	pop r12
.LVL511:
	pop r11
	pop r10
.LVL512:
	pop r9
	ret
	.cfi_endproc
.LFE62:
	.size	midiKeyPress_Process, .-midiKeyPress_Process
	.section	.text.midiSendAllNotesOff,"ax",@progbits
.global	midiSendAllNotesOff
	.type	midiSendAllNotesOff, @function
midiSendAllNotesOff:
.LFB63:
	.loc 1 1235 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1236 0
	lds r22,midiThrough+1
	cpi r22,lo8(16)
	brsh .L301
	.loc 1 1237 0
	ldi r24,lo8(-80)
	call serial1MIDISendCmd
.LVL513:
	.loc 1 1238 0
	ldi r24,lo8(123)
	call serial1MIDISendData
.LVL514:
	.loc 1 1239 0
	ldi r24,0
	call serial1MIDISendData
.LVL515:
.L301:
	ret
	.cfi_endproc
.LFE63:
	.size	midiSendAllNotesOff, .-midiSendAllNotesOff
	.section	.text.midi_SendActiveSense,"ax",@progbits
.global	midi_SendActiveSense
	.type	midi_SendActiveSense, @function
midi_SendActiveSense:
.LFB64:
	.loc 1 1251 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1252 0
	ldi r22,0
	ldi r24,lo8(-2)
	call serial1MIDISendCmd
.LVL516:
	ret
	.cfi_endproc
.LFE64:
	.size	midi_SendActiveSense, .-midi_SendActiveSense
	.section	.text.midi_CheckTxActiveSense,"ax",@progbits
.global	midi_CheckTxActiveSense
	.type	midi_CheckTxActiveSense, @function
midi_CheckTxActiveSense:
.LFB27:
	.loc 1 213 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 216 0
	lds r24,swTimer+16
	tst r24
	breq .L305
	.loc 1 216 0 is_stmt 0 discriminator 1
	lds r24,swTimer+16
	cpi r24,lo8(-1)
	brne .L304
.L305:
.LBB96:
	.loc 1 218 0 is_stmt 1
	in r25,__SREG__
.LVL517:
.LBB97:
.LBB98:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE98:
.LBE97:
	.loc 1 218 0
	ldi r24,lo8(1)
	rjmp .L307
.LVL518:
.L308:
	.loc 1 218 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(10)
.LVL519:
	std Z+16,r24
	std Z+17,__zero_reg__
.LVL520:
	.loc 1 218 0 discriminator 3
	ldi r24,0
.LVL521:
.L307:
	.loc 1 218 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L308
.LVL522:
.LBB99:
.LBB100:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL523:
.LBE100:
.LBE99:
.LBE96:
	.loc 1 219 0
	lds r24,midi_Setting
.LVL524:
	cpse r24,__zero_reg__
	.loc 1 220 0
	call midi_SendActiveSense
.LVL525:
.L309:
	.loc 1 223 0
	sts midiTxLastCmd,__zero_reg__
.L304:
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
	.comm	midi_ccReg,4,1
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
	.long	0x23a9
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF238
	.byte	0xc
	.long	.LASF239
	.long	.LASF240
	.long	.Ldebug_ranges0+0x238
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
	.byte	0x57
	.long	0x112
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0x58
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0x59
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF19
	.byte	0x6
	.byte	0x5a
	.long	0xed
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.byte	0xad
	.long	0x196
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.byte	0xae
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.byte	0xaf
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.byte	0xb0
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.byte	0xb1
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.byte	0xb2
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.byte	0xb3
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0xb4
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0xb5
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x2
	.long	.LASF28
	.byte	0x6
	.byte	0xb6
	.long	0x11d
	.uleb128 0x9
	.byte	0x2
	.byte	0x6
	.byte	0xc2
	.long	0x1c6
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.byte	0xc3
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.byte	0xc4
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF31
	.byte	0x6
	.byte	0xc5
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
	.byte	0x4
	.byte	0x7
	.byte	0xc5
	.long	0x486
	.uleb128 0xa
	.long	.LASF65
	.byte	0x7
	.byte	0xc6
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF66
	.byte	0x7
	.byte	0xc7
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF67
	.byte	0x7
	.byte	0xc8
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF68
	.byte	0x7
	.byte	0xc9
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF69
	.byte	0x7
	.byte	0xca
	.long	0x445
	.uleb128 0x9
	.byte	0x3
	.byte	0x7
	.byte	0xeb
	.long	0x4c4
	.uleb128 0xa
	.long	.LASF70
	.byte	0x7
	.byte	0xec
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF71
	.byte	0x7
	.byte	0xed
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF72
	.byte	0x7
	.byte	0xee
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x7
	.byte	0xef
	.long	0x491
	.uleb128 0xb
	.byte	0x2
	.long	0x3b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF74
	.uleb128 0xc
	.long	0x3b
	.uleb128 0x7
	.long	0x294
	.long	0x4f7
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	0x310
	.long	0x50d
	.uleb128 0x8
	.long	0x82
	.byte	0xf
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	0x370
	.long	0x51d
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	0x3ae
	.long	0x52d
	.uleb128 0x8
	.long	0x82
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.long	0x3ee
	.long	0x53d
	.uleb128 0x8
	.long	0x82
	.byte	0x3f
	.byte	0
	.uleb128 0x7
	.long	0x43a
	.long	0x54d
	.uleb128 0x8
	.long	0x82
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	.LASF241
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0xe
	.long	.LASF242
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x573
	.uleb128 0xf
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0x573
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x4dc
	.uleb128 0x10
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.byte	0x44
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x5b5
	.uleb128 0x11
	.long	.LASF75
	.byte	0x1
	.byte	0x46
	.long	0x4cf
	.long	.LLST0
	.uleb128 0x12
	.long	.Ldebug_ranges0+0
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x47
	.long	0x3b
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF77
	.byte	0x1
	.byte	0x3e
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x5d8
	.uleb128 0x14
	.long	.LVL4
	.long	0x579
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF89
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.long	0x3b
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x606
	.uleb128 0x16
	.long	.LASF79
	.byte	0x1
	.byte	0x4e
	.long	0x3b
	.long	.LLST2
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.byte	0x63
	.long	0xb8
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x642
	.uleb128 0x11
	.long	.LASF78
	.byte	0x1
	.byte	0x64
	.long	0xb8
	.long	.LLST3
	.uleb128 0x11
	.long	.LASF79
	.byte	0x1
	.byte	0x66
	.long	0x3b
	.long	.LLST4
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF81
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x67b
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.byte	0x71
	.long	0xb8
	.long	.LLST5
	.uleb128 0x11
	.long	.LASF79
	.byte	0x1
	.byte	0x72
	.long	0x3b
	.long	.LLST6
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.byte	0x90
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x69e
	.uleb128 0x14
	.long	.LVL24
	.long	0x228e
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF83
	.byte	0x1
	.word	0x188
	.long	.LFB31
	.long	.LFE31
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x6df
	.uleb128 0x1a
	.long	.LASF84
	.byte	0x1
	.word	0x189
	.long	0x3b
	.long	.LLST7
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x1a
	.long	.LASF85
	.byte	0x1
	.word	0x18a
	.long	0x3b
	.long	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF86
	.byte	0x1
	.word	0x193
	.long	.LFB32
	.long	.LFE32
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x7ce
	.uleb128 0x1b
	.long	.LBB17
	.long	.LBE17
	.long	0x717
	.uleb128 0x1a
	.long	.LASF85
	.byte	0x1
	.word	0x198
	.long	0x3b
	.long	.LLST9
	.byte	0
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x30
	.long	0x747
	.uleb128 0x1a
	.long	.LASF87
	.byte	0x1
	.word	0x1a6
	.long	0x3b
	.long	.LLST10
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.word	0x1a7
	.long	0x3b
	.long	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL33
	.long	0x229b
	.uleb128 0x1d
	.long	.LVL34
	.long	0x22a8
	.long	0x772
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
	.long	.LVL35
	.long	0x69e
	.uleb128 0x14
	.long	.LVL36
	.long	0x22b5
	.uleb128 0x1d
	.long	.LVL44
	.long	0x22a8
	.long	0x7a6
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
	.uleb128 0x14
	.long	.LVL45
	.long	0x22c2
	.uleb128 0x1f
	.long	.LVL46
	.long	0x22a8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x3a
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
	.long	.LASF90
	.byte	0x1
	.word	0x1b8
	.byte	0x1
	.long	0x256
	.long	.LFB33
	.long	.LFE33
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x832
	.uleb128 0x21
	.long	.LASF88
	.byte	0x1
	.word	0x1b8
	.long	0x3b
	.long	.LLST12
	.uleb128 0x22
	.long	.LASF78
	.byte	0x1
	.word	0x1ba
	.long	0x256
	.uleb128 0x23
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.word	0x1bd
	.long	0x832
	.long	.LLST13
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x1bf
	.long	0x3b
	.long	.LLST14
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x3ae
	.uleb128 0x20
	.byte	0x1
	.long	.LASF92
	.byte	0x1
	.word	0x1cf
	.byte	0x1
	.long	0x3b
	.long	.LFB34
	.long	.LFE34
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x895
	.uleb128 0x21
	.long	.LASF93
	.byte	0x1
	.word	0x1cf
	.long	0x3b
	.long	.LLST15
	.uleb128 0x25
	.long	.LASF94
	.byte	0x1
	.word	0x1d0
	.long	0x832
	.byte	0x6
	.byte	0x3
	.long	registerMap
	.byte	0x9f
	.uleb128 0x23
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x1a
	.long	.LASF95
	.byte	0x1
	.word	0x1d1
	.long	0x3b
	.long	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF96
	.byte	0x1
	.word	0x1da
	.byte	0x1
	.long	0x3b
	.long	.LFB35
	.long	.LFE35
	.long	.LLST17
	.byte	0x1
	.long	0x942
	.uleb128 0x21
	.long	.LASF88
	.byte	0x1
	.word	0x1da
	.long	0x3b
	.long	.LLST18
	.uleb128 0x21
	.long	.LASF97
	.byte	0x1
	.word	0x1da
	.long	0x3b
	.long	.LLST19
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x22
	.long	.LASF98
	.byte	0x1
	.word	0x1df
	.long	0x256
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x78
	.long	0x92f
	.uleb128 0x1a
	.long	.LASF99
	.byte	0x1
	.word	0x1e2
	.long	0x3b
	.long	.LLST20
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.word	0x1e3
	.long	0x3b
	.long	.LLST21
	.uleb128 0x1a
	.long	.LASF101
	.byte	0x1
	.word	0x1e4
	.long	0x3b
	.long	.LLST22
	.uleb128 0x1a
	.long	.LASF102
	.byte	0x1
	.word	0x1e5
	.long	0x3b
	.long	.LLST23
	.byte	0
	.uleb128 0x1f
	.long	.LVL63
	.long	0x7ce
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
	.long	.LASF103
	.byte	0x1
	.word	0x1f8
	.byte	0x1
	.long	0x3b
	.long	.LFB36
	.long	.LFE36
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x9ef
	.uleb128 0x21
	.long	.LASF88
	.byte	0x1
	.word	0x1f8
	.long	0x3b
	.long	.LLST24
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x1fb
	.long	0x3b
	.long	.LLST25
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x22
	.long	.LASF98
	.byte	0x1
	.word	0x1fe
	.long	0x256
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0xa8
	.long	0x9dc
	.uleb128 0x1a
	.long	.LASF99
	.byte	0x1
	.word	0x201
	.long	0x3b
	.long	.LLST26
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.word	0x202
	.long	0x3b
	.long	.LLST27
	.uleb128 0x1a
	.long	.LASF101
	.byte	0x1
	.word	0x203
	.long	0x3b
	.long	.LLST28
	.uleb128 0x1a
	.long	.LASF102
	.byte	0x1
	.word	0x204
	.long	0x3b
	.long	.LLST29
	.byte	0
	.uleb128 0x1f
	.long	.LVL77
	.long	0x7ce
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
	.long	.LASF104
	.byte	0x1
	.word	0x215
	.byte	0x1
	.long	0x3b
	.long	.LFB37
	.long	.LFE37
	.long	.LLST30
	.byte	0x1
	.long	0xa5b
	.uleb128 0x21
	.long	.LASF97
	.byte	0x1
	.word	0x215
	.long	0x3b
	.long	.LLST31
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x216
	.long	0x3b
	.long	.LLST32
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.word	0x217
	.long	0x3b
	.long	.LLST33
	.uleb128 0x1f
	.long	.LVL94
	.long	0x895
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
	.long	.LASF105
	.byte	0x1
	.word	0x21f
	.byte	0x1
	.long	0x3b
	.long	.LFB38
	.long	.LFE38
	.long	.LLST34
	.byte	0x1
	.long	0xad6
	.uleb128 0x21
	.long	.LASF106
	.byte	0x1
	.word	0x21f
	.long	0x4cf
	.long	.LLST35
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x220
	.long	0x3b
	.long	.LLST36
	.uleb128 0x1a
	.long	.LASF102
	.byte	0x1
	.word	0x222
	.long	0x3b
	.long	.LLST37
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xd8
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.word	0x223
	.long	0x3b
	.long	.LLST38
	.uleb128 0x1f
	.long	.LVL105
	.long	0x895
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
	.long	.LASF107
	.byte	0x1
	.word	0x23a
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST39
	.byte	0x1
	.long	0xb89
	.uleb128 0x21
	.long	.LASF88
	.byte	0x1
	.word	0x23a
	.long	0x3b
	.long	.LLST40
	.uleb128 0x21
	.long	.LASF108
	.byte	0x1
	.word	0x23a
	.long	0x3b
	.long	.LLST41
	.uleb128 0x23
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x22
	.long	.LASF98
	.byte	0x1
	.word	0x23e
	.long	0x256
	.uleb128 0x1b
	.long	.LBB37
	.long	.LBE37
	.long	0xb76
	.uleb128 0x1a
	.long	.LASF99
	.byte	0x1
	.word	0x241
	.long	0x3b
	.long	.LLST42
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.word	0x242
	.long	0x3b
	.long	.LLST43
	.uleb128 0x1a
	.long	.LASF101
	.byte	0x1
	.word	0x243
	.long	0x3b
	.long	.LLST44
	.uleb128 0x14
	.long	.LVL122
	.long	0x22cf
	.uleb128 0x14
	.long	.LVL124
	.long	0x22dc
	.byte	0
	.uleb128 0x1f
	.long	.LVL117
	.long	0x7ce
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
	.long	.LASF109
	.byte	0x1
	.byte	0xe6
	.long	.LFB28
	.long	.LFE28
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xbac
	.uleb128 0x14
	.long	.LVL125
	.long	0xad6
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF110
	.byte	0x1
	.word	0x2a6
	.byte	0x1
	.long	0x3b
	.long	.LFB44
	.long	.LFE44
	.long	.LLST45
	.byte	0x1
	.long	0xc40
	.uleb128 0x21
	.long	.LASF111
	.byte	0x1
	.word	0x2a6
	.long	0x3b
	.long	.LLST46
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x2a9
	.long	0x3b
	.long	.LLST47
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x1
	.word	0x2aa
	.long	0x4cf
	.long	.LLST48
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x1
	.word	0x2ab
	.long	0x3b
	.long	.LLST49
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x1
	.word	0x2ac
	.long	0x3b
	.long	.LLST50
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2ad
	.long	0x3b
	.long	.LLST51
	.uleb128 0x1f
	.long	.LVL134
	.long	0x942
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
	.long	.LASF115
	.byte	0x1
	.word	0x2c9
	.byte	0x1
	.long	0x3b
	.long	.LFB45
	.long	.LFE45
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xcb4
	.uleb128 0x21
	.long	.LASF111
	.byte	0x1
	.word	0x2c9
	.long	0x3b
	.long	.LLST52
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x2cb
	.long	0x3b
	.long	.LLST53
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x1
	.word	0x2cc
	.long	0x4cf
	.long	.LLST54
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x1
	.word	0x2cd
	.long	0x3b
	.long	.LLST55
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x110
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2ce
	.long	0x3b
	.long	.LLST56
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF116
	.byte	0x1
	.word	0x2dc
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.long	.LLST57
	.byte	0x1
	.long	0xd0d
	.uleb128 0x21
	.long	.LASF88
	.byte	0x1
	.word	0x2dc
	.long	0x3b
	.long	.LLST58
	.uleb128 0x1d
	.long	.LVL158
	.long	0x22e9
	.long	0xcf3
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xb0
	.byte	0
	.uleb128 0x14
	.long	.LVL159
	.long	0x22f6
	.uleb128 0x1f
	.long	.LVL160
	.long	0x22f6
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF117
	.byte	0x1
	.word	0x2e4
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST59
	.byte	0x1
	.long	0xd66
	.uleb128 0x21
	.long	.LASF88
	.byte	0x1
	.word	0x2e4
	.long	0x3b
	.long	.LLST60
	.uleb128 0x1d
	.long	.LVL163
	.long	0x22e9
	.long	0xd4c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xb0
	.byte	0
	.uleb128 0x14
	.long	.LVL164
	.long	0x22f6
	.uleb128 0x1f
	.long	.LVL165
	.long	0x22f6
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF118
	.byte	0x1
	.word	0x2f2
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xd92
	.uleb128 0x21
	.long	.LASF119
	.byte	0x1
	.word	0x2f2
	.long	0x3b
	.long	.LLST61
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF120
	.byte	0x1
	.word	0x250
	.byte	0x1
	.long	0x3b
	.long	.LFB40
	.long	.LFE40
	.long	.LLST62
	.byte	0x1
	.long	0xe75
	.uleb128 0x21
	.long	.LASF111
	.byte	0x1
	.word	0x250
	.long	0x3b
	.long	.LLST63
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x252
	.long	0x3b
	.long	.LLST64
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x128
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x1
	.word	0x255
	.long	0x3b
	.long	.LLST65
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.word	0x256
	.long	0x3b
	.long	.LLST66
	.uleb128 0x1a
	.long	.LASF122
	.byte	0x1
	.word	0x257
	.long	0x4cf
	.long	.LLST67
	.uleb128 0x22
	.long	.LASF58
	.byte	0x1
	.word	0x266
	.long	0xb8
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x140
	.long	0xe56
	.uleb128 0x1a
	.long	.LASF123
	.byte	0x1
	.word	0x258
	.long	0x3b
	.long	.LLST68
	.uleb128 0x23
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.word	0x25c
	.long	0x3b
	.long	.LLST69
	.uleb128 0x1f
	.long	.LVL178
	.long	0xad6
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
	.long	0xd66
	.long	0xe6a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL186
	.long	0x642
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF124
	.byte	0x1
	.word	0x26d
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST70
	.byte	0x1
	.long	0xf2d
	.uleb128 0x21
	.long	.LASF125
	.byte	0x1
	.word	0x26d
	.long	0x3b
	.long	.LLST71
	.uleb128 0x21
	.long	.LASF111
	.byte	0x1
	.word	0x26d
	.long	0x3b
	.long	.LLST72
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x158
	.long	0xf08
	.uleb128 0x1a
	.long	.LASF126
	.byte	0x1
	.word	0x270
	.long	0x3b
	.long	.LLST73
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x170
	.long	0xee3
	.uleb128 0x1a
	.long	.LASF127
	.byte	0x1
	.word	0x272
	.long	0x3b
	.long	.LLST74
	.byte	0
	.uleb128 0x1d
	.long	.LVL199
	.long	0xd92
	.long	0xef7
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL200
	.long	0xd66
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL201
	.long	0x22e9
	.long	0xf1c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xc0
	.byte	0
	.uleb128 0x1f
	.long	.LVL202
	.long	0x22f6
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
	.long	.LASF128
	.byte	0x1
	.word	0x28d
	.long	.LFB42
	.long	.LFE42
	.long	.LLST75
	.byte	0x1
	.long	0xf89
	.uleb128 0x23
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x28e
	.long	0x3b
	.long	.LLST76
	.uleb128 0x1d
	.long	.LVL206
	.long	0xd66
	.long	0xf72
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1f
	.long	.LVL207
	.long	0xad6
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
	.long	.LASF129
	.byte	0x1
	.word	0x294
	.byte	0x1
	.long	0x3b
	.long	.LFB43
	.long	.LFE43
	.long	.LLST77
	.byte	0x1
	.long	0x1024
	.uleb128 0x21
	.long	.LASF111
	.byte	0x1
	.word	0x294
	.long	0x3b
	.long	.LLST78
	.uleb128 0x21
	.long	.LASF130
	.byte	0x1
	.word	0x294
	.long	0x3b
	.long	.LLST79
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x29a
	.long	0x3b
	.long	.LLST80
	.uleb128 0x1b
	.long	.LBB54
	.long	.LBE54
	.long	0xfff
	.uleb128 0x1a
	.long	.LASF122
	.byte	0x1
	.word	0x29c
	.long	0x4cf
	.long	.LLST81
	.uleb128 0x14
	.long	.LVL215
	.long	0xa5b
	.byte	0
	.uleb128 0x14
	.long	.LVL211
	.long	0xf2d
	.uleb128 0x14
	.long	.LVL212
	.long	0x2303
	.uleb128 0x14
	.long	.LVL219
	.long	0x606
	.uleb128 0x14
	.long	.LVL221
	.long	0x2310
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF131
	.byte	0x1
	.word	0x2f9
	.long	.LFB49
	.long	.LFE49
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x109c
	.uleb128 0x1d
	.long	.LVL224
	.long	0x231d
	.long	0x1052
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x1d
	.long	.LVL225
	.long	0x231d
	.long	0x1066
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x14
	.long	.LVL226
	.long	0x231d
	.uleb128 0x14
	.long	.LVL227
	.long	0x231d
	.uleb128 0x1d
	.long	.LVL228
	.long	0x231d
	.long	0x108c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1f
	.long	.LVL229
	.long	0x232a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF132
	.byte	0x1
	.word	0x309
	.long	.LFB50
	.long	.LFE50
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x10de
	.uleb128 0x14
	.long	.LVL230
	.long	0x2337
	.uleb128 0x1f
	.long	.LVL231
	.long	0x22a8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x39
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
	.uleb128 0x27
	.byte	0x1
	.long	.LASF133
	.byte	0x1
	.word	0x30f
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.long	.LLST82
	.byte	0x1
	.long	0x1256
	.uleb128 0x21
	.long	.LASF134
	.byte	0x1
	.word	0x30f
	.long	0x3b
	.long	.LLST83
	.uleb128 0x23
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x311
	.long	0x3b
	.long	.LLST84
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x190
	.uleb128 0x1a
	.long	.LASF135
	.byte	0x1
	.word	0x313
	.long	0x4d5
	.long	.LLST85
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.word	0x319
	.long	0x3b
	.long	.LLST86
	.uleb128 0x1b
	.long	.LBB57
	.long	.LBE57
	.long	0x1194
	.uleb128 0x1a
	.long	.LASF136
	.byte	0x1
	.word	0x328
	.long	0x3b
	.long	.LLST87
	.uleb128 0x1d
	.long	.LVL245
	.long	0x942
	.long	0x1176
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL247
	.long	0x942
	.long	0x118a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL250
	.long	0x231d
	.byte	0
	.uleb128 0x1b
	.long	.LBB58
	.long	.LBE58
	.long	0x11e3
	.uleb128 0x1a
	.long	.LASF136
	.byte	0x1
	.word	0x32c
	.long	0x3b
	.long	.LLST88
	.uleb128 0x1d
	.long	.LVL253
	.long	0x942
	.long	0x11c5
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL255
	.long	0x942
	.long	0x11d9
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL258
	.long	0x231d
	.byte	0
	.uleb128 0x14
	.long	.LVL235
	.long	0x2344
	.uleb128 0x14
	.long	.LVL237
	.long	0x231d
	.uleb128 0x1d
	.long	.LVL238
	.long	0x231d
	.long	0x1209
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1d
	.long	.LVL240
	.long	0x942
	.long	0x121d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL241
	.long	0x231d
	.uleb128 0x1d
	.long	.LVL242
	.long	0x942
	.long	0x123a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL243
	.long	0x231d
	.uleb128 0x1f
	.long	.LVL260
	.long	0x231d
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
	.long	.LASF137
	.byte	0x1
	.word	0x337
	.long	.LFB52
	.long	.LFE52
	.long	.LLST89
	.byte	0x1
	.long	0x12c5
	.uleb128 0x23
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x339
	.long	0x3b
	.long	.LLST90
	.uleb128 0x23
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x1a
	.long	.LASF135
	.byte	0x1
	.word	0x33b
	.long	0x4d5
	.long	.LLST91
	.uleb128 0x1a
	.long	.LASF138
	.byte	0x1
	.word	0x33c
	.long	0x3b
	.long	.LLST92
	.uleb128 0x14
	.long	.LVL266
	.long	0x2344
	.uleb128 0x14
	.long	.LVL274
	.long	0x232a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF139
	.byte	0x1
	.word	0x346
	.long	.LFB53
	.long	.LFE53
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x135a
	.uleb128 0x1a
	.long	.LASF140
	.byte	0x1
	.word	0x347
	.long	0x135a
	.long	.LLST93
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x1a8
	.long	0x1307
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x34a
	.long	0x3b
	.long	.LLST94
	.byte	0
	.uleb128 0x14
	.long	.LVL281
	.long	0x2351
	.uleb128 0x1d
	.long	.LVL282
	.long	0x22a8
	.long	0x1332
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
	.long	.LVL283
	.long	0x235e
	.uleb128 0x1f
	.long	.LVL284
	.long	0x22a8
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
	.long	.LASF141
	.byte	0x1
	.word	0x36e
	.long	.LFB54
	.long	.LFE54
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x13be
	.uleb128 0x1b
	.long	.LBB64
	.long	.LBE64
	.long	0x1396
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x370
	.long	0x3b
	.long	.LLST95
	.byte	0
	.uleb128 0x14
	.long	.LVL288
	.long	0x236b
	.uleb128 0x1f
	.long	.LVL289
	.long	0x22a8
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
	.long	.LASF142
	.byte	0x1
	.word	0x3ad
	.byte	0x1
	.long	0x1f6
	.long	.LFB56
	.long	.LFE56
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1408
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x3ad
	.long	0x3b
	.long	.LLST96
	.uleb128 0x2a
	.long	.LASF33
	.byte	0x1
	.word	0x3ad
	.long	0x3b
	.byte	0x1
	.byte	0x66
	.uleb128 0x22
	.long	.LASF78
	.byte	0x1
	.word	0x3af
	.long	0x1f6
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF143
	.byte	0x1
	.word	0x3bc
	.long	.LFB57
	.long	.LFE57
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1477
	.uleb128 0x23
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x3bd
	.long	0x3b
	.long	.LLST97
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x1a
	.long	.LASF144
	.byte	0x1
	.word	0x3be
	.long	0x3b
	.long	.LLST98
	.uleb128 0x1a
	.long	.LASF145
	.byte	0x1
	.word	0x3bf
	.long	0x3b
	.long	.LLST99
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x1a
	.long	.LASF146
	.byte	0x1
	.word	0x3c0
	.long	0x3b
	.long	.LLST100
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF147
	.byte	0x1
	.word	0x3d7
	.long	.LFB58
	.long	.LFE58
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x14f6
	.uleb128 0x1b
	.long	.LBB70
	.long	.LBE70
	.long	0x14c1
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x3d8
	.long	0x29
	.long	.LLST101
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1d8
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.word	0x3da
	.long	0x29
	.long	.LLST102
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL309
	.long	0x2378
	.uleb128 0x1d
	.long	.LVL310
	.long	0x22a8
	.long	0x14ec
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
	.long	.LVL311
	.long	0x1408
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF148
	.byte	0x1
	.word	0x403
	.byte	0x1
	.long	0x256
	.long	.LFB59
	.long	.LFE59
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x156a
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x403
	.long	0x3b
	.long	.LLST103
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x403
	.long	0x3b
	.long	.LLST104
	.uleb128 0x22
	.long	.LASF78
	.byte	0x1
	.word	0x405
	.long	0x256
	.uleb128 0x23
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.word	0x408
	.long	0x156a
	.long	.LLST105
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x40a
	.long	0x3b
	.long	.LLST106
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x294
	.uleb128 0x20
	.byte	0x1
	.long	.LASF149
	.byte	0x1
	.word	0x41a
	.byte	0x1
	.long	0x226
	.long	.LFB60
	.long	.LFE60
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x15e4
	.uleb128 0x21
	.long	.LASF38
	.byte	0x1
	.word	0x41a
	.long	0x3b
	.long	.LLST107
	.uleb128 0x22
	.long	.LASF78
	.byte	0x1
	.word	0x41e
	.long	0x226
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.word	0x41f
	.long	0x156a
	.long	.LLST108
	.uleb128 0x1a
	.long	.LASF35
	.byte	0x1
	.word	0x421
	.long	0x3b
	.long	.LLST109
	.uleb128 0x23
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x423
	.long	0x3b
	.long	.LLST110
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF150
	.byte	0x1
	.word	0x435
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.long	.LLST111
	.byte	0x1
	.long	0x16f3
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x435
	.long	0x3b
	.long	.LLST112
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x435
	.long	0x3b
	.long	.LLST113
	.uleb128 0x21
	.long	.LASF108
	.byte	0x1
	.word	0x435
	.long	0x3b
	.long	.LLST114
	.uleb128 0x22
	.long	.LASF151
	.byte	0x1
	.word	0x437
	.long	0x256
	.uleb128 0x1a
	.long	.LASF152
	.byte	0x1
	.word	0x43a
	.long	0x3b
	.long	.LLST115
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.word	0x43b
	.long	0x3b
	.long	.LLST116
	.uleb128 0x1b
	.long	.LBB75
	.long	.LBE75
	.long	0x167e
	.uleb128 0x22
	.long	.LASF153
	.byte	0x1
	.word	0x440
	.long	0xe2
	.uleb128 0x14
	.long	.LVL335
	.long	0x2385
	.byte	0
	.uleb128 0x1d
	.long	.LVL331
	.long	0x14f6
	.long	0x1698
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
	.long	.LVL337
	.long	0x22dc
	.long	0x16b2
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
	.long	.LVL338
	.long	0x22cf
	.long	0x16cc
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
	.long	.LVL339
	.long	0x22e9
	.uleb128 0x1d
	.long	.LVL340
	.long	0x22f6
	.long	0x16e9
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL341
	.long	0x22f6
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF154
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST117
	.byte	0x1
	.long	0x17d0
	.uleb128 0x16
	.long	.LASF125
	.byte	0x1
	.byte	0x95
	.long	0x3b
	.long	.LLST118
	.uleb128 0x11
	.long	.LASF155
	.byte	0x1
	.byte	0x96
	.long	0x3b
	.long	.LLST119
	.uleb128 0x23
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0x98
	.long	0x3b
	.long	.LLST120
	.uleb128 0x23
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0x9c
	.long	0x3b
	.long	.LLST121
	.uleb128 0x11
	.long	.LASF156
	.byte	0x1
	.byte	0xa1
	.long	0x3b
	.long	.LLST122
	.uleb128 0x1b
	.long	.LBB78
	.long	.LBE78
	.long	0x1795
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x9e
	.long	0x3b
	.long	.LLST123
	.uleb128 0x1f
	.long	.LVL354
	.long	0x15e4
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL358
	.long	0x22e9
	.long	0x17a9
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xb0
	.byte	0
	.uleb128 0x1d
	.long	.LVL359
	.long	0x22f6
	.long	0x17bd
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL360
	.long	0x22f6
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
	.long	.LASF157
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST124
	.byte	0x1
	.long	0x1879
	.uleb128 0x16
	.long	.LASF35
	.byte	0x1
	.byte	0xb1
	.long	0x3b
	.long	.LLST125
	.uleb128 0x11
	.long	.LASF156
	.byte	0x1
	.byte	0xb9
	.long	0x3b
	.long	.LLST126
	.uleb128 0x1b
	.long	.LBB79
	.long	.LBE79
	.long	0x1841
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0xb4
	.long	0x3b
	.long	.LLST127
	.uleb128 0x1f
	.long	.LVL367
	.long	0x15e4
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
	.uleb128 0x1d
	.long	.LVL371
	.long	0x22e9
	.long	0x1855
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xb0
	.byte	0
	.uleb128 0x1d
	.long	.LVL372
	.long	0x22f6
	.long	0x1869
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL373
	.long	0x22f6
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF158
	.byte	0x1
	.byte	0xc2
	.long	.LFB25
	.long	.LFE25
	.long	.LLST128
	.byte	0x1
	.long	0x18bc
	.uleb128 0x23
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0xc3
	.long	0x3b
	.long	.LLST129
	.uleb128 0x1f
	.long	.LVL377
	.long	0x17d0
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
	.long	.LASF159
	.byte	0x1
	.byte	0xca
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x18df
	.uleb128 0x14
	.long	.LVL380
	.long	0x1879
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF160
	.byte	0x1
	.word	0x383
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.long	.LLST130
	.byte	0x1
	.long	0x19cd
	.uleb128 0x21
	.long	.LASF125
	.byte	0x1
	.word	0x383
	.long	0x3b
	.long	.LLST131
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x383
	.long	0x3b
	.long	.LLST132
	.uleb128 0x21
	.long	.LASF108
	.byte	0x1
	.word	0x383
	.long	0x3b
	.long	.LLST133
	.uleb128 0x1a
	.long	.LASF161
	.byte	0x1
	.word	0x387
	.long	0x3b
	.long	.LLST134
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x1f0
	.long	0x19a6
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x388
	.long	0x3b
	.long	.LLST135
	.uleb128 0x23
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x1a
	.long	.LASF162
	.byte	0x1
	.word	0x38b
	.long	0x29
	.long	.LLST136
	.uleb128 0x23
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x1a
	.long	.LASF35
	.byte	0x1
	.word	0x38e
	.long	0x3b
	.long	.LLST137
	.uleb128 0x1a
	.long	.LASF163
	.byte	0x1
	.word	0x38f
	.long	0x3b
	.long	.LLST138
	.uleb128 0x1f
	.long	.LVL390
	.long	0x15e4
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
	.long	.LVL393
	.long	0x22e9
	.uleb128 0x1d
	.long	.LVL394
	.long	0x22f6
	.long	0x19c3
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL395
	.long	0x22f6
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF164
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1ae3
	.uleb128 0x16
	.long	.LASF165
	.byte	0x1
	.byte	0xf7
	.long	0x3b
	.long	.LLST139
	.uleb128 0x1b
	.long	.LBB85
	.long	.LBE85
	.long	0x1a4e
	.uleb128 0x1a
	.long	.LASF166
	.byte	0x1
	.word	0x101
	.long	0x3b
	.long	.LLST140
	.uleb128 0x1a
	.long	.LASF167
	.byte	0x1
	.word	0x101
	.long	0x3b
	.long	.LLST141
	.uleb128 0x2d
	.long	0x54d
	.long	.LBB86
	.long	.LBE86
	.byte	0x1
	.word	0x101
	.uleb128 0x2e
	.long	0x55a
	.long	.LBB88
	.long	.LBE88
	.byte	0x1
	.word	0x101
	.uleb128 0x2f
	.long	0x567
	.long	.LLST142
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LBB90
	.long	.LBE90
	.long	0x1ad9
	.uleb128 0x1a
	.long	.LASF125
	.byte	0x1
	.word	0x130
	.long	0x3b
	.long	.LLST143
	.uleb128 0x1a
	.long	.LASF168
	.byte	0x1
	.word	0x131
	.long	0x3b
	.long	.LLST144
	.uleb128 0x1d
	.long	.LVL427
	.long	0x18df
	.long	0x1a8e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL430
	.long	0x18df
	.uleb128 0x14
	.long	.LVL432
	.long	0x16f3
	.uleb128 0x1d
	.long	.LVL435
	.long	0xad6
	.long	0x1ab3
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.long	.LVL437
	.long	0xad6
	.long	0x1ac6
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL439
	.long	0xf2d
	.uleb128 0x14
	.long	.LVL441
	.long	0xe75
	.byte	0
	.uleb128 0x14
	.long	.LVL410
	.long	0x67b
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF169
	.byte	0x1
	.word	0x15c
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1b5d
	.uleb128 0x21
	.long	.LASF170
	.byte	0x1
	.word	0x15c
	.long	0x3b
	.long	.LLST145
	.uleb128 0x1a
	.long	.LASF125
	.byte	0x1
	.word	0x160
	.long	0x3b
	.long	.LLST146
	.uleb128 0x1a
	.long	.LASF168
	.byte	0x1
	.word	0x161
	.long	0x3b
	.long	.LLST147
	.uleb128 0x1d
	.long	.LVL446
	.long	0x18df
	.long	0x1b41
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL449
	.long	0x18df
	.uleb128 0x14
	.long	.LVL451
	.long	0x16f3
	.uleb128 0x14
	.long	.LVL455
	.long	0xe75
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF171
	.byte	0x1
	.word	0x45e
	.byte	0x1
	.long	.LFB62
	.long	.LFE62
	.long	.LLST148
	.byte	0x1
	.long	0x1eca
	.uleb128 0x21
	.long	.LASF172
	.byte	0x1
	.word	0x45e
	.long	0xe2
	.long	.LLST149
	.uleb128 0x1a
	.long	.LASF173
	.byte	0x1
	.word	0x464
	.long	0x3b
	.long	.LLST150
	.uleb128 0x1a
	.long	.LASF174
	.byte	0x1
	.word	0x465
	.long	0x3b
	.long	.LLST151
	.uleb128 0x1a
	.long	.LASF175
	.byte	0x1
	.word	0x466
	.long	0x3b
	.long	.LLST152
	.uleb128 0x1a
	.long	.LASF176
	.byte	0x1
	.word	0x467
	.long	0x3b
	.long	.LLST153
	.uleb128 0x1a
	.long	.LASF47
	.byte	0x1
	.word	0x468
	.long	0x226
	.long	.LLST154
	.uleb128 0x1a
	.long	.LASF177
	.byte	0x1
	.word	0x469
	.long	0x1f6
	.long	.LLST155
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x208
	.long	0x1ec0
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x46c
	.long	0x3b
	.long	.LLST156
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x220
	.long	0x1e48
	.uleb128 0x1a
	.long	.LASF168
	.byte	0x1
	.word	0x48c
	.long	0x3b
	.long	.LLST157
	.uleb128 0x1d
	.long	.LVL464
	.long	0x13be
	.long	0x1c32
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
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL466
	.long	0x22e9
	.long	0x1c46
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x90
	.byte	0
	.uleb128 0x1d
	.long	.LVL467
	.long	0x22f6
	.long	0x1c5a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL468
	.long	0x22f6
	.long	0x1c6e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x1d
	.long	.LVL471
	.long	0x22e9
	.long	0x1c82
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x90
	.byte	0
	.uleb128 0x1d
	.long	.LVL472
	.long	0x22f6
	.long	0x1c96
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL473
	.long	0x22f6
	.long	0x1caa
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL474
	.long	0x22e9
	.long	0x1cbe
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.uleb128 0x1d
	.long	.LVL475
	.long	0x22f6
	.long	0x1cd2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL476
	.long	0x22f6
	.long	0x1ce6
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL479
	.long	0x15e4
	.long	0x1d05
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL480
	.long	0x15e4
	.long	0x1d24
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL481
	.long	0x15e4
	.long	0x1d43
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL482
	.long	0x15e4
	.long	0x1d5c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL483
	.long	0x15e4
	.long	0x1d7b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL484
	.long	0x15e4
	.long	0x1d9b
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
	.byte	0x79
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL485
	.long	0x15e4
	.long	0x1db4
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL486
	.long	0x15e4
	.long	0x1dd4
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
	.byte	0x79
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL487
	.long	0x15e4
	.long	0x1df3
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL488
	.long	0x15e4
	.long	0x1e0d
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
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL489
	.long	0x15e4
	.long	0x1e2c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL490
	.long	0x15e4
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LBB93
	.long	.LBE93
	.long	0x1e97
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.word	0x4b9
	.long	0x3b
	.long	.LLST158
	.uleb128 0x1d
	.long	.LVL492
	.long	0x838
	.long	0x1e79
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL495
	.long	0xcb4
	.long	0x1e8d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL497
	.long	0xd0d
	.byte	0
	.uleb128 0x1d
	.long	.LVL461
	.long	0x1570
	.long	0x1eab
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL500
	.long	0x2392
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
	.uleb128 0x14
	.long	.LVL457
	.long	0x239f
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF178
	.byte	0x1
	.word	0x4d3
	.long	.LFB63
	.long	.LFE63
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1f1c
	.uleb128 0x1d
	.long	.LVL513
	.long	0x22e9
	.long	0x1ef8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xb0
	.byte	0
	.uleb128 0x1d
	.long	.LVL514
	.long	0x22f6
	.long	0x1f0c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL515
	.long	0x22f6
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF179
	.byte	0x1
	.word	0x4e3
	.long	.LFB64
	.long	.LFE64
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1f4c
	.uleb128 0x1f
	.long	.LVL516
	.long	0x22e9
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xfe
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF180
	.byte	0x1
	.byte	0xd5
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1fc3
	.uleb128 0x1b
	.long	.LBB96
	.long	.LBE96
	.long	0x1fb9
	.uleb128 0x11
	.long	.LASF166
	.byte	0x1
	.byte	0xda
	.long	0x3b
	.long	.LLST159
	.uleb128 0x11
	.long	.LASF167
	.byte	0x1
	.byte	0xda
	.long	0x3b
	.long	.LLST160
	.uleb128 0x30
	.long	0x54d
	.long	.LBB97
	.long	.LBE97
	.byte	0x1
	.byte	0xda
	.uleb128 0x31
	.long	0x55a
	.long	.LBB99
	.long	.LBE99
	.byte	0x1
	.byte	0xda
	.uleb128 0x2f
	.long	0x567
	.long	.LLST161
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL525
	.long	0x1f1c
	.byte	0
	.uleb128 0x7
	.long	0x1fd3
	.long	0x1fd3
	.uleb128 0x8
	.long	0x82
	.byte	0xa
	.byte	0
	.uleb128 0x32
	.long	0x112
	.uleb128 0x33
	.long	.LASF181
	.byte	0x6
	.byte	0x5b
	.long	0x1fe5
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.long	0x1fc3
	.uleb128 0x7
	.long	0x196
	.long	0x1ffa
	.uleb128 0x8
	.long	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x33
	.long	.LASF182
	.byte	0x6
	.byte	0xb7
	.long	0x1fea
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF183
	.byte	0x6
	.byte	0xbe
	.long	0x2014
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.long	0x3b
	.uleb128 0x33
	.long	.LASF184
	.byte	0x6
	.byte	0xc7
	.long	0x1c6
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0x3b
	.long	0x2036
	.uleb128 0x8
	.long	0x82
	.byte	0x2
	.byte	0
	.uleb128 0x33
	.long	.LASF185
	.byte	0x8
	.byte	0x35
	.long	0x2026
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF186
	.byte	0x8
	.byte	0xa4
	.long	0x2014
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF187
	.byte	0x1
	.byte	0x2e
	.long	0x4e1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	manualMap
	.uleb128 0x7
	.long	0x2c4
	.long	0x2072
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x34
	.long	.LASF188
	.byte	0x1
	.byte	0x2f
	.long	0x2062
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ManualNoteRange
	.uleb128 0x34
	.long	.LASF189
	.byte	0x1
	.byte	0x30
	.long	0x4f7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiInMap
	.uleb128 0x34
	.long	.LASF190
	.byte	0x1
	.byte	0x38
	.long	0x340
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiThrough
	.uleb128 0x34
	.long	.LASF191
	.byte	0x1
	.byte	0x31
	.long	0x50d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiOutMap
	.uleb128 0x34
	.long	.LASF192
	.byte	0x1
	.byte	0x35
	.long	0x51d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerMap
	.uleb128 0x34
	.long	.LASF193
	.byte	0x1
	.byte	0x36
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerCount
	.uleb128 0x34
	.long	.LASF194
	.byte	0x1
	.byte	0x37
	.long	0x52d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	programMap
	.uleb128 0x34
	.long	.LASF195
	.byte	0x1
	.byte	0x39
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_RegisterChanged
	.uleb128 0x35
	.long	.LASF196
	.byte	0x1
	.word	0x305
	.long	0x53d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	reg_Out
	.uleb128 0x34
	.long	.LASF197
	.byte	0x1
	.byte	0x3a
	.long	0x486
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_ccReg
	.uleb128 0x35
	.long	.LASF198
	.byte	0x1
	.word	0x2ef
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	prog_Display
	.uleb128 0x35
	.long	.LASF199
	.byte	0x1
	.word	0x2f0
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	prog_UpdDisplay
	.uleb128 0x34
	.long	.LASF200
	.byte	0x1
	.byte	0x32
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxActivceSensing
	.uleb128 0x34
	.long	.LASF201
	.byte	0x1
	.byte	0x33
	.long	0x4c4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Setting
	.uleb128 0x34
	.long	.LASF202
	.byte	0x1
	.byte	0x84
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutNote
	.uleb128 0x34
	.long	.LASF203
	.byte	0x1
	.byte	0x85
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutManual
	.uleb128 0x34
	.long	.LASF204
	.byte	0x1
	.byte	0x86
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInNote
	.uleb128 0x34
	.long	.LASF205
	.byte	0x1
	.byte	0x87
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInChannel
	.uleb128 0x34
	.long	.LASF206
	.byte	0x1
	.byte	0x88
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInManual
	.uleb128 0x34
	.long	.LASF207
	.byte	0x1
	.byte	0x89
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastProgram
	.uleb128 0x7
	.long	0x3b
	.long	0x21ed
	.uleb128 0x8
	.long	0x82
	.byte	0xb
	.byte	0
	.uleb128 0x34
	.long	.LASF208
	.byte	0x1
	.byte	0x1d
	.long	0x21dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Couplers
	.uleb128 0x34
	.long	.LASF209
	.byte	0x1
	.byte	0x1e
	.long	0x2211
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cplInfo
	.uleb128 0x36
	.uleb128 0x7
	.long	0x3b
	.long	0x2222
	.uleb128 0x8
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x34
	.long	.LASF210
	.byte	0x9
	.byte	0xaf
	.long	0x2212
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x34
	.long	.LASF211
	.byte	0x1
	.byte	0x34
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiEEPromLoadError
	.uleb128 0x34
	.long	.LASF212
	.byte	0x1
	.byte	0x7f
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastCommand
	.uleb128 0x34
	.long	.LASF213
	.byte	0x1
	.byte	0x80
	.long	0x3de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByte
	.uleb128 0x34
	.long	.LASF214
	.byte	0x1
	.byte	0x81
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteCount
	.uleb128 0x34
	.long	.LASF215
	.byte	0x1
	.byte	0x82
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteExpected
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF216
	.long	.LASF216
	.byte	0x6
	.byte	0x62
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF217
	.long	.LASF217
	.byte	0xa
	.byte	0x24
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF218
	.long	.LASF218
	.byte	0xb
	.byte	0x32
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF219
	.long	.LASF219
	.byte	0xa
	.byte	0x26
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF220
	.long	.LASF220
	.byte	0xa
	.byte	0x29
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF221
	.long	.LASF221
	.byte	0x6
	.byte	0xde
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF222
	.long	.LASF222
	.byte	0x6
	.byte	0xdf
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF223
	.long	.LASF223
	.byte	0x8
	.byte	0x91
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF224
	.long	.LASF224
	.byte	0x8
	.byte	0x92
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF225
	.long	.LASF225
	.byte	0x6
	.byte	0xd5
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF226
	.long	.LASF226
	.byte	0xa
	.byte	0x32
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF227
	.long	.LASF227
	.byte	0xc
	.byte	0x84
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF228
	.long	.LASF228
	.byte	0x4
	.byte	0x25
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF229
	.long	.LASF229
	.byte	0xa
	.byte	0x25
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF230
	.long	.LASF230
	.byte	0xc
	.byte	0x83
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF231
	.long	.LASF231
	.byte	0xa
	.byte	0x20
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF232
	.long	.LASF232
	.byte	0xa
	.byte	0x28
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF233
	.long	.LASF233
	.byte	0xa
	.byte	0x21
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF234
	.long	.LASF234
	.byte	0xa
	.byte	0x1f
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF235
	.long	.LASF235
	.byte	0x5
	.byte	0x46
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF236
	.long	.LASF236
	.byte	0xb
	.byte	0x33
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF237
	.long	.LASF237
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.long	.LVL9
	.long	.LVL10
	.word	0x1
	.byte	0x68
	.long	.LVL10
	.long	.LVL11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST3:
	.long	.LVL17
	.long	.LVL18
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
	.long	.LVL14
	.long	.LVL15
	.word	0x2
	.byte	0x3b
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.word	0x1
	.byte	0x62
	.long	.LVL16
	.long	.LVL19
	.word	0x1
	.byte	0x64
	.long	.LVL19
	.long	.LFE20
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST5:
	.long	.LVL20
	.long	.LVL22
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
	.long	.LVL20
	.long	.LVL21
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL21
	.long	.LFE21
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST7:
	.long	.LVL25
	.long	.LVL26
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL26
	.long	.LVL27
	.word	0x1
	.byte	0x63
	.long	.LVL28
	.long	.LFE31
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST8:
	.long	.LVL25
	.long	.LVL26
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL26
	.long	.LFE31
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST9:
	.long	.LVL30
	.long	.LVL31
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL31
	.long	.LVL33-1
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST10:
	.long	.LVL37
	.long	.LVL42
	.word	0x1
	.byte	0x63
	.long	.LVL43
	.long	.LVL44-1
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST11:
	.long	.LVL37
	.long	.LVL39
	.word	0x1
	.byte	0x62
	.long	.LVL40
	.long	.LVL42
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST12:
	.long	.LVL47
	.long	.LVL50
	.word	0x1
	.byte	0x68
	.long	.LVL50
	.long	.LVL51
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL51
	.long	.LVL55
	.word	0x1
	.byte	0x68
	.long	.LVL55
	.long	.LFE33
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL48
	.long	.LVL54
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
	.long	.LVL48
	.long	.LVL49
	.word	0x1
	.byte	0x62
	.long	.LVL51
	.long	.LVL54
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST15:
	.long	.LVL56
	.long	.LVL58
	.word	0x1
	.byte	0x68
	.long	.LVL58
	.long	.LVL59
	.word	0x1
	.byte	0x66
	.long	.LVL59
	.long	.LVL61
	.word	0x1
	.byte	0x68
	.long	.LVL61
	.long	.LFE34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL56
	.long	.LVL57
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL57
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
	.long	.LVL62
	.long	.LVL63-1
	.word	0x1
	.byte	0x68
	.long	.LVL63-1
	.long	.LVL74
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL74
	.long	.LVL75
	.word	0x1
	.byte	0x68
	.long	.LVL75
	.long	.LFE35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL62
	.long	.LVL63-1
	.word	0x1
	.byte	0x66
	.long	.LVL63-1
	.long	.LVL74
	.word	0x1
	.byte	0x6c
	.long	.LVL74
	.long	.LVL75
	.word	0x1
	.byte	0x66
	.long	.LVL75
	.long	.LFE35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL64
	.long	.LVL66
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST21:
	.long	.LVL65
	.long	.LVL70
	.word	0x1
	.byte	0x62
	.long	.LVL72
	.long	.LVL73
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST22:
	.long	.LVL67
	.long	.LVL69
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST23:
	.long	.LVL68
	.long	.LVL71
	.word	0x1
	.byte	0x64
	.long	.LVL72
	.long	.LVL73
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST24:
	.long	.LVL76
	.long	.LVL77-1
	.word	0x1
	.byte	0x68
	.long	.LVL77-1
	.long	.LVL89
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL89
	.long	.LVL90
	.word	0x1
	.byte	0x68
	.long	.LVL90
	.long	.LFE36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL76
	.long	.LVL83
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL83
	.long	.LVL88
	.word	0x1
	.byte	0x68
	.long	.LVL88
	.long	.LVL90
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL90
	.long	.LFE36
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST26:
	.long	.LVL78
	.long	.LVL80
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST27:
	.long	.LVL79
	.long	.LVL84
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST28:
	.long	.LVL81
	.long	.LVL85
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST29:
	.long	.LVL82
	.long	.LVL86
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST30:
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
.LLST31:
	.long	.LVL91
	.long	.LVL93
	.word	0x1
	.byte	0x68
	.long	.LVL93
	.long	.LVL99
	.word	0x1
	.byte	0x61
	.long	.LVL99
	.long	.LFE37
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL92
	.long	.LVL93
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL93
	.long	.LVL97
	.word	0x1
	.byte	0x6d
	.long	.LVL97
	.long	.LFE37
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST33:
	.long	.LVL92
	.long	.LVL93
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL93
	.long	.LVL98
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST34:
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
.LLST35:
	.long	.LVL100
	.long	.LVL102
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL102
	.long	.LVL108
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL108
	.long	.LVL109
	.word	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.long	.LVL109
	.long	.LVL110
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL110
	.long	.LVL115
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST36:
	.long	.LVL101
	.long	.LVL102
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL102
	.long	.LVL114
	.word	0x1
	.byte	0x60
	.long	.LVL114
	.long	.LFE38
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST37:
	.long	.LVL101
	.long	.LVL102
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL102
	.long	.LVL112
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST38:
	.long	.LVL101
	.long	.LVL102
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL102
	.long	.LVL113
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST39:
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
.LLST40:
	.long	.LVL116
	.long	.LVL117-1
	.word	0x1
	.byte	0x68
	.long	.LVL117-1
	.long	.LFE39
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL116
	.long	.LVL117-1
	.word	0x1
	.byte	0x66
	.long	.LVL117-1
	.long	.LVL124
	.word	0x1
	.byte	0x6c
	.long	.LVL124
	.long	.LFE39
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL118
	.long	.LVL120
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST43:
	.long	.LVL119
	.long	.LVL122-1
	.word	0x1
	.byte	0x68
	.long	.LVL123
	.long	.LVL124-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST44:
	.long	.LVL121
	.long	.LVL122-1
	.word	0x1
	.byte	0x69
	.long	.LVL123
	.long	.LVL124-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST45:
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
.LLST46:
	.long	.LVL126
	.long	.LVL128
	.word	0x1
	.byte	0x68
	.long	.LVL128
	.long	.LFE44
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
	.long	.LVL127
	.long	.LVL130
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL130
	.long	.LVL145
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST48:
	.long	.LVL129
	.long	.LVL131
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL131
	.long	.LVL133
	.word	0x3
	.byte	0x80
	.sleb128 1
	.byte	0x9f
	.long	.LVL133
	.long	.LVL144
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST49:
	.long	.LVL129
	.long	.LVL130
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL130
	.long	.LVL142
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST50:
	.long	.LVL134
	.long	.LVL137
	.word	0x1
	.byte	0x68
	.long	.LVL138
	.long	.LVL139
	.word	0x1
	.byte	0x68
	.long	.LVL140
	.long	.LVL141
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST51:
	.long	.LVL129
	.long	.LVL130
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL130
	.long	.LVL143
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST52:
	.long	.LVL146
	.long	.LVL147
	.word	0x1
	.byte	0x68
	.long	.LVL147
	.long	.LFE45
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LVL146
	.long	.LVL149
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL149
	.long	.LFE45
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST54:
	.long	.LVL148
	.long	.LVL150
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL150
	.long	.LVL152
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL152
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
.LLST55:
	.long	.LVL148
	.long	.LVL149
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL149
	.long	.LFE45
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST56:
	.long	.LVL148
	.long	.LVL149
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL149
	.long	.LFE45
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST57:
	.long	.LFB46
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI16
	.long	.LFE46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST58:
	.long	.LVL156
	.long	.LVL157
	.word	0x1
	.byte	0x68
	.long	.LVL157
	.long	.LVL160
	.word	0x1
	.byte	0x6c
	.long	.LVL160
	.long	.LFE46
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST59:
	.long	.LFB47
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI17
	.long	.LFE47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST60:
	.long	.LVL161
	.long	.LVL162
	.word	0x1
	.byte	0x68
	.long	.LVL162
	.long	.LVL165
	.word	0x1
	.byte	0x6c
	.long	.LVL165
	.long	.LFE47
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
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
	.long	.LFE48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST62:
	.long	.LFB40
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
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI26
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
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI27
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
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI28
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
	.long	.LFB43
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
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI31
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI32
	.long	.LFE43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST78:
	.long	.LVL210
	.long	.LVL211-1
	.word	0x1
	.byte	0x68
	.long	.LVL211-1
	.long	.LVL220
	.word	0x1
	.byte	0x6c
	.long	.LVL220
	.long	.LFE43
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST79:
	.long	.LVL210
	.long	.LVL211-1
	.word	0x1
	.byte	0x66
	.long	.LVL211-1
	.long	.LVL223
	.word	0x1
	.byte	0x60
	.long	.LVL223
	.long	.LFE43
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST80:
	.long	.LVL212
	.long	.LVL216
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL216
	.long	.LVL217
	.word	0x1
	.byte	0x61
	.long	.LVL217
	.long	.LVL218
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL218
	.long	.LVL222
	.word	0x1
	.byte	0x61
	.long	.LVL222
	.long	.LFE43
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST81:
	.long	.LVL213
	.long	.LVL214
	.word	0x9
	.byte	0x88
	.sleb128 0
	.byte	0x3
	.long	programMap
	.byte	0x22
	.byte	0x9f
	.long	.LVL214
	.long	.LVL215-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST82:
	.long	.LFB51
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI33
	.long	.LCFI34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI34
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI35
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI36
	.long	.LCFI37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI37
	.long	.LCFI38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI38
	.long	.LFE51
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST83:
	.long	.LVL232
	.long	.LVL234
	.word	0x1
	.byte	0x68
	.long	.LVL234
	.long	.LVL262
	.word	0x1
	.byte	0x5f
	.long	.LVL262
	.long	.LFE51
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST84:
	.long	.LVL233
	.long	.LVL234
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL234
	.long	.LVL263
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST85:
	.long	.LVL236
	.long	.LVL237-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST86:
	.long	.LVL239
	.long	.LVL244
	.word	0x1
	.byte	0x6c
	.long	.LVL244
	.long	.LVL251
	.word	0x1
	.byte	0x6d
	.long	.LVL251
	.long	.LVL252
	.word	0x1
	.byte	0x6c
	.long	.LVL252
	.long	.LVL259
	.word	0x1
	.byte	0x6d
	.long	.LVL259
	.long	.LVL261
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST87:
	.long	.LVL246
	.long	.LVL248
	.word	0x1
	.byte	0x6c
	.long	.LVL248
	.long	.LVL249
	.word	0x1
	.byte	0x68
	.long	.LVL249
	.long	.LVL250-1
	.word	0x3
	.byte	0x88
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST88:
	.long	.LVL254
	.long	.LVL256
	.word	0x1
	.byte	0x6c
	.long	.LVL256
	.long	.LVL257
	.word	0x1
	.byte	0x68
	.long	.LVL257
	.long	.LVL258-1
	.word	0x3
	.byte	0x88
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST89:
	.long	.LFB52
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
	.long	.LFE52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST90:
	.long	.LVL264
	.long	.LVL265
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL265
	.long	.LVL276
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST91:
	.long	.LVL267
	.long	.LVL271
	.word	0x1
	.byte	0x62
	.long	.LVL271
	.long	.LVL274-1
	.word	0x2
	.byte	0x8c
	.sleb128 1
	.long	0
	.long	0
.LLST92:
	.long	.LVL268
	.long	.LVL269
	.word	0x1
	.byte	0x68
	.long	.LVL269
	.long	.LVL270
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
	.long	.LVL270
	.long	.LVL272
	.word	0x1
	.byte	0x68
	.long	.LVL272
	.long	.LVL273
	.word	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST93:
	.long	.LVL278
	.long	.LVL281-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST94:
	.long	.LVL277
	.long	.LVL278
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	.LVL278
	.long	.LVL281-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST95:
	.long	.LVL285
	.long	.LVL286
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL286
	.long	.LVL288-1
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST96:
	.long	.LVL290
	.long	.LVL291
	.word	0x1
	.byte	0x68
	.long	.LVL291
	.long	.LVL292
	.word	0x1
	.byte	0x6e
	.long	.LVL292
	.long	.LFE56
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST97:
	.long	.LVL293
	.long	.LVL294
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL294
	.long	.LFE57
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST98:
	.long	.LVL294
	.long	.LVL300
	.word	0x1
	.byte	0x65
	.long	.LVL301
	.long	.LVL302
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST99:
	.long	.LVL294
	.long	.LVL300
	.word	0x1
	.byte	0x66
	.long	.LVL301
	.long	.LVL302
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST100:
	.long	.LVL294
	.long	.LVL295
	.word	0x1
	.byte	0x64
	.long	.LVL295
	.long	.LVL296
	.word	0x1
	.byte	0x62
	.long	.LVL296
	.long	.LVL300
	.word	0x1
	.byte	0x64
	.long	.LVL301
	.long	.LVL302
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST101:
	.long	.LVL303
	.long	.LVL304
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL304
	.long	.LVL309-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST102:
	.long	.LVL304
	.long	.LVL306
	.word	0x1
	.byte	0x62
	.long	.LVL307
	.long	.LVL308
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST103:
	.long	.LVL312
	.long	.LVL314
	.word	0x1
	.byte	0x68
	.long	.LVL314
	.long	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST104:
	.long	.LVL312
	.long	.LVL315
	.word	0x1
	.byte	0x66
	.long	.LVL315
	.long	.LVL317
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL317
	.long	.LFE59
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST105:
	.long	.LVL313
	.long	.LVL320
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST106:
	.long	.LVL313
	.long	.LVL314
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL314
	.long	.LVL316
	.word	0x1
	.byte	0x68
	.long	.LVL317
	.long	.LVL320
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST107:
	.long	.LVL321
	.long	.LVL324
	.word	0x1
	.byte	0x68
	.long	.LVL324
	.long	.LVL325
	.word	0x1
	.byte	0x6a
	.long	.LVL325
	.long	.LVL329
	.word	0x1
	.byte	0x68
	.long	.LVL329
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST108:
	.long	.LVL322
	.long	.LFE60
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST109:
	.long	.LVL321
	.long	.LVL322
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL322
	.long	.LFE60
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST110:
	.long	.LVL322
	.long	.LVL323
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL323
	.long	.LFE60
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST111:
	.long	.LFB61
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI42
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI43
	.long	.LCFI44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI44
	.long	.LCFI45
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI45
	.long	.LCFI46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI46
	.long	.LCFI47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI47
	.long	.LFE61
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST112:
	.long	.LVL330
	.long	.LVL331-1
	.word	0x1
	.byte	0x68
	.long	.LVL331-1
	.long	.LVL343
	.word	0x1
	.byte	0x6c
	.long	.LVL343
	.long	.LFE61
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST113:
	.long	.LVL330
	.long	.LVL331-1
	.word	0x1
	.byte	0x66
	.long	.LVL331-1
	.long	.LVL345
	.word	0x1
	.byte	0x60
	.long	.LVL345
	.long	.LFE61
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST114:
	.long	.LVL330
	.long	.LVL331-1
	.word	0x1
	.byte	0x64
	.long	.LVL331-1
	.long	.LVL342
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST115:
	.long	.LVL332
	.long	.LVL346
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST116:
	.long	.LVL333
	.long	.LVL344
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST117:
	.long	.LFB23
	.long	.LCFI48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI48
	.long	.LCFI49
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI49
	.long	.LCFI50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI50
	.long	.LCFI51
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI51
	.long	.LCFI52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI52
	.long	.LCFI53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI53
	.long	.LCFI54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI54
	.long	.LCFI55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI55
	.long	.LCFI56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI56
	.long	.LFE23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST118:
	.long	.LVL347
	.long	.LVL349
	.word	0x1
	.byte	0x68
	.long	.LVL349
	.long	.LVL363
	.word	0x1
	.byte	0x5c
	.long	.LVL363
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST119:
	.long	.LVL348
	.long	.LVL349
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL349
	.long	.LVL362
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST120:
	.long	.LVL350
	.long	.LVL361
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST121:
	.long	.LVL351
	.long	.LVL353
	.word	0x1
	.byte	0x66
	.long	.LVL353
	.long	.LVL356
	.word	0x1
	.byte	0x5e
	.long	.LVL356
	.long	.LVL357
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST122:
	.long	.LVL357
	.long	.LVL358-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST123:
	.long	.LVL352
	.long	.LVL360
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST124:
	.long	.LFB24
	.long	.LCFI57
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI57
	.long	.LCFI58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI58
	.long	.LCFI59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI59
	.long	.LCFI60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI60
	.long	.LFE24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST125:
	.long	.LVL364
	.long	.LVL365
	.word	0x1
	.byte	0x68
	.long	.LVL365
	.long	.LVL369
	.word	0x1
	.byte	0x60
	.long	.LVL369
	.long	.LVL374
	.word	0x1
	.byte	0x6c
	.long	.LVL374
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST126:
	.long	.LVL370
	.long	.LVL371-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST127:
	.long	.LVL366
	.long	.LVL369
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST128:
	.long	.LFB25
	.long	.LCFI61
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI61
	.long	.LFE25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST129:
	.long	.LVL375
	.long	.LVL376
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL376
	.long	.LVL379
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST130:
	.long	.LFB55
	.long	.LCFI62
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI62
	.long	.LCFI63
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI63
	.long	.LCFI64
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI64
	.long	.LCFI65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI65
	.long	.LFE55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST131:
	.long	.LVL381
	.long	.LVL382
	.word	0x1
	.byte	0x68
	.long	.LVL382
	.long	.LVL384
	.word	0x1
	.byte	0x6d
	.long	.LVL384
	.long	.LVL389
	.word	0x1
	.byte	0x64
	.long	.LVL389
	.long	.LVL396
	.word	0x1
	.byte	0x6d
	.long	.LVL396
	.long	.LFE55
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST132:
	.long	.LVL381
	.long	.LVL383
	.word	0x1
	.byte	0x66
	.long	.LVL383
	.long	.LVL399
	.word	0x1
	.byte	0x60
	.long	.LVL399
	.long	.LFE55
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST133:
	.long	.LVL381
	.long	.LVL383
	.word	0x1
	.byte	0x64
	.long	.LVL383
	.long	.LVL398
	.word	0x1
	.byte	0x61
	.long	.LVL398
	.long	.LFE55
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST134:
	.long	.LVL382
	.long	.LVL383
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL383
	.long	.LVL387
	.word	0x1
	.byte	0x69
	.long	.LVL390
	.long	.LVL391
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL391
	.long	.LVL393-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST135:
	.long	.LVL382
	.long	.LVL383
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL383
	.long	.LVL384
	.word	0x1
	.byte	0x6c
	.long	.LVL384
	.long	.LVL390-1
	.word	0x1
	.byte	0x62
	.long	.LVL390-1
	.long	.LVL397
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST136:
	.long	.LVL385
	.long	.LVL388
	.word	0x1
	.byte	0x66
	.long	.LVL388
	.long	.LVL390-1
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST137:
	.long	.LVL386
	.long	.LVL390-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST138:
	.long	.LVL388
	.long	.LVL390-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST139:
	.long	.LVL400
	.long	.LVL401
	.word	0x1
	.byte	0x68
	.long	.LVL401
	.long	.LVL409
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL409
	.long	.LVL410-1
	.word	0x1
	.byte	0x68
	.long	.LVL410-1
	.long	.LVL411
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL411
	.long	.LVL412
	.word	0x1
	.byte	0x68
	.long	.LVL412
	.long	.LVL413
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL413
	.long	.LVL414
	.word	0x1
	.byte	0x68
	.long	.LVL414
	.long	.LVL415
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL415
	.long	.LVL416
	.word	0x1
	.byte	0x68
	.long	.LVL416
	.long	.LVL417
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL417
	.long	.LVL418
	.word	0x1
	.byte	0x68
	.long	.LVL418
	.long	.LVL419
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL419
	.long	.LVL420
	.word	0x1
	.byte	0x68
	.long	.LVL420
	.long	.LVL421
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL421
	.long	.LVL422
	.word	0x1
	.byte	0x68
	.long	.LVL422
	.long	.LVL423
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL423
	.long	.LVL424
	.word	0x1
	.byte	0x68
	.long	.LVL424
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST140:
	.long	.LVL402
	.long	.LVL408
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST141:
	.long	.LVL403
	.long	.LVL404
	.word	0x1
	.byte	0x68
	.long	.LVL405
	.long	.LVL406
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL406
	.long	.LVL409
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST142:
	.long	.LVL407
	.long	.LVL408
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+6659
	.sleb128 0
	.long	0
	.long	0
.LLST143:
	.long	.LVL425
	.long	.LVL427-1
	.word	0x1
	.byte	0x68
	.long	.LVL428
	.long	.LVL430-1
	.word	0x1
	.byte	0x68
	.long	.LVL431
	.long	.LVL432-1
	.word	0x1
	.byte	0x68
	.long	.LVL433
	.long	.LVL434
	.word	0x1
	.byte	0x68
	.long	.LVL434
	.long	.LVL435-1
	.word	0xa
	.byte	0x3
	.long	midiLastCommand
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL436
	.long	.LVL437-1
	.word	0xa
	.byte	0x3
	.long	midiLastCommand
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL438
	.long	.LVL439-1
	.word	0xa
	.byte	0x3
	.long	midiLastCommand
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL440
	.long	.LVL441-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST144:
	.long	.LVL426
	.long	.LVL428
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL429
	.long	.LVL430-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST145:
	.long	.LVL442
	.long	.LVL443
	.word	0x1
	.byte	0x68
	.long	.LVL443
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST146:
	.long	.LVL444
	.long	.LVL446-1
	.word	0x1
	.byte	0x68
	.long	.LVL447
	.long	.LVL449-1
	.word	0x1
	.byte	0x68
	.long	.LVL450
	.long	.LVL451-1
	.word	0x1
	.byte	0x68
	.long	.LVL452
	.long	.LVL453
	.word	0x1
	.byte	0x68
	.long	.LVL454
	.long	.LVL455-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST147:
	.long	.LVL445
	.long	.LVL447
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL448
	.long	.LVL449-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST148:
	.long	.LFB62
	.long	.LCFI66
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI66
	.long	.LCFI67
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI67
	.long	.LCFI68
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI68
	.long	.LCFI69
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI69
	.long	.LCFI70
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI70
	.long	.LCFI71
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI71
	.long	.LCFI72
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI72
	.long	.LCFI73
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI73
	.long	.LCFI74
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI74
	.long	.LCFI75
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI75
	.long	.LCFI76
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI76
	.long	.LFE62
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	0
	.long	0
.LLST149:
	.long	.LVL456
	.long	.LVL457-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
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
	.long	.LVL503
	.long	.LVL504
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL505
	.long	.LVL506
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL508
	.long	.LVL509
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST150:
	.long	.LVL458
	.long	.LVL512
	.word	0x1
	.byte	0x5a
	.long	0
	.long	0
.LLST151:
	.long	.LVL459
	.long	.LVL510
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST152:
	.long	.LVL459
	.long	.LVL508
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST153:
	.long	.LVL459
	.long	.LVL460
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL460
	.long	.LVL463
	.word	0x1
	.byte	0x5b
	.long	.LVL463
	.long	.LVL491
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL491
	.long	.LVL494
	.word	0x1
	.byte	0x5b
	.long	.LVL494
	.long	.LVL499
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL499
	.long	.LVL503
	.word	0x1
	.byte	0x5b
	.long	.LVL503
	.long	.LVL507
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL507
	.long	.LVL508
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST154:
	.long	.LVL460
	.long	.LVL462
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	.LVL469
	.long	.LVL470
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	.LVL476
	.long	.LVL491
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	.LVL498
	.long	.LVL503
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	.LVL507
	.long	.LVL511
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST155:
	.long	.LVL476
	.long	.LVL477
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST156:
	.long	.LVL460
	.long	.LVL463
	.word	0x1
	.byte	0x6c
	.long	.LVL463
	.long	.LVL500
	.word	0x1
	.byte	0x5e
	.long	.LVL500
	.long	.LVL503
	.word	0x1
	.byte	0x6c
	.long	.LVL507
	.long	.LVL508
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST157:
	.long	.LVL478
	.long	.LVL491
	.word	0x1
	.byte	0x61
	.long	.LVL498
	.long	.LVL499
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST158:
	.long	.LVL493
	.long	.LVL498
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST159:
	.long	.LVL517
	.long	.LVL523
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST160:
	.long	.LVL518
	.long	.LVL519
	.word	0x1
	.byte	0x68
	.long	.LVL520
	.long	.LVL521
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL521
	.long	.LVL524
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST161:
	.long	.LVL522
	.long	.LVL523
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+8050
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x194
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
	.long	.LFB47
	.long	.LFE47-.LFB47
	.long	.LFB48
	.long	.LFE48-.LFB48
	.long	.LFB40
	.long	.LFE40-.LFB40
	.long	.LFB41
	.long	.LFE41-.LFB41
	.long	.LFB42
	.long	.LFE42-.LFB42
	.long	.LFB43
	.long	.LFE43-.LFB43
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
	.long	.LFB56
	.long	.LFE56-.LFB56
	.long	.LFB57
	.long	.LFE57-.LFB57
	.long	.LFB58
	.long	.LFE58-.LFB58
	.long	.LFB59
	.long	.LFE59-.LFB59
	.long	.LFB60
	.long	.LFE60-.LFB60
	.long	.LFB61
	.long	.LFE61-.LFB61
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB55
	.long	.LFE55-.LFB55
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB62
	.long	.LFE62-.LFB62
	.long	.LFB63
	.long	.LFE63-.LFB63
	.long	.LFB64
	.long	.LFE64-.LFB64
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
	.long	.LBB95
	.long	.LBE95
	.long	0
	.long	0
	.long	.LBB92
	.long	.LBE92
	.long	.LBB94
	.long	.LBE94
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
	.long	.LFB47
	.long	.LFE47
	.long	.LFB48
	.long	.LFE48
	.long	.LFB40
	.long	.LFE40
	.long	.LFB41
	.long	.LFE41
	.long	.LFB42
	.long	.LFE42
	.long	.LFB43
	.long	.LFE43
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
	.long	.LFB56
	.long	.LFE56
	.long	.LFB57
	.long	.LFE57
	.long	.LFB58
	.long	.LFE58
	.long	.LFB59
	.long	.LFE59
	.long	.LFB60
	.long	.LFE60
	.long	.LFB61
	.long	.LFE61
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB55
	.long	.LFE55
	.long	.LFB29
	.long	.LFE29
	.long	.LFB30
	.long	.LFE30
	.long	.LFB62
	.long	.LFE62
	.long	.LFB63
	.long	.LFE63
	.long	.LFB64
	.long	.LFE64
	.long	.LFB27
	.long	.LFE27
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF100:
	.string	"bitNr"
.LASF84:
	.string	"count"
.LASF109:
	.string	"midiInSysEx"
.LASF142:
	.string	"Manual_to_MidiNote"
.LASF181:
	.string	"swTimer"
.LASF42:
	.string	"bitStart"
.LASF120:
	.string	"program_toRegister"
.LASF93:
	.string	"modulebit"
.LASF34:
	.string	"ChannelNote_t"
.LASF118:
	.string	"prog_set"
.LASF241:
	.string	"__iCliRetVal"
.LASF216:
	.string	"init_Pipe"
.LASF177:
	.string	"chanNote"
.LASF91:
	.string	"pRange"
.LASF163:
	.string	"manNote"
.LASF144:
	.string	"rangeEnd"
.LASF87:
	.string	"progNr"
.LASF114:
	.string	"actualReg"
.LASF140:
	.string	"pMidiInMap"
.LASF44:
	.string	"ManualNoteRange_t"
.LASF174:
	.string	"shiftBit"
.LASF110:
	.string	"midi_RegisterMatchProgram"
.LASF164:
	.string	"midiIn_Process"
.LASF222:
	.string	"pipe_off"
.LASF9:
	.string	"long long unsigned int"
.LASF180:
	.string	"midi_CheckTxActiveSense"
.LASF195:
	.string	"midi_RegisterChanged"
.LASF50:
	.string	"OutChannel"
.LASF194:
	.string	"programMap"
.LASF138:
	.string	"spaceCount"
.LASF15:
	.string	"message8"
.LASF215:
	.string	"midiDataByteExpected"
.LASF191:
	.string	"midiOutMap"
.LASF133:
	.string	"reg_toLCD"
.LASF67:
	.string	"ccOutRegOn"
.LASF75:
	.string	"pCoupler"
.LASF150:
	.string	"manual_NoteOnOff"
.LASF137:
	.string	"reg_ClearOnLCD"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF203:
	.string	"midiLastOutManual"
.LASF88:
	.string	"regNr"
.LASF52:
	.string	"sw_channel"
.LASF111:
	.string	"program"
.LASF36:
	.string	"ManualNote_t"
.LASF158:
	.string	"midi_AllManualsOff"
.LASF124:
	.string	"midi_ProgramChange"
.LASF238:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF172:
	.string	"pipeMessage"
.LASF141:
	.string	"init_Manual2Midi"
.LASF212:
	.string	"midiLastCommand"
.LASF46:
	.string	"noteRange"
.LASF214:
	.string	"midiDataByteCount"
.LASF224:
	.string	"serial1MIDISendData"
.LASF6:
	.string	"long int"
.LASF157:
	.string	"midi_ManualOff"
.LASF185:
	.string	"serESPMidiTmp"
.LASF139:
	.string	"init_Midi2Manual"
.LASF200:
	.string	"midiRxActivceSensing"
.LASF168:
	.string	"noteOnOff"
.LASF63:
	.string	"regEnd"
.LASF149:
	.string	"moduleBit_to_manualNote"
.LASF196:
	.string	"reg_Out"
.LASF131:
	.string	"prog_toLcd"
.LASF82:
	.string	"midiAllReset"
.LASF189:
	.string	"midiInMap"
.LASF4:
	.string	"uint16_t"
.LASF145:
	.string	"rangeStart"
.LASF210:
	.string	"lcdData"
.LASF176:
	.string	"messageProcessed"
.LASF186:
	.string	"midiTxLastCmd"
.LASF45:
	.string	"midiNote"
.LASF197:
	.string	"midi_ccReg"
.LASF41:
	.string	"endNote"
.LASF49:
	.string	"InChannel"
.LASF132:
	.string	"init_RegOut"
.LASF53:
	.string	"MidiOutMap_t"
.LASF221:
	.string	"pipe_on"
.LASF102:
	.string	"mask"
.LASF159:
	.string	"midi_CheckRxActiveSense"
.LASF201:
	.string	"midi_Setting"
.LASF90:
	.string	"regNr_to_moduleBit"
.LASF25:
	.string	"pipeInM4"
.LASF79:
	.string	"cplNr"
.LASF105:
	.string	"read_allRegister"
.LASF24:
	.string	"pipeInM8"
.LASF146:
	.string	"range"
.LASF154:
	.string	"midiAllNotesOff"
.LASF152:
	.string	"modulNrMask"
.LASF43:
	.string	"ManualMap_t"
.LASF77:
	.string	"init_Midi"
.LASF5:
	.string	"unsigned int"
.LASF225:
	.string	"module_WaitOutputInput2Cycles"
.LASF130:
	.string	"SaveEEProm"
.LASF226:
	.string	"eeprom_UpdateProg"
.LASF72:
	.string	"AcceptProgChange"
.LASF35:
	.string	"manual"
.LASF173:
	.string	"command"
.LASF119:
	.string	"prog"
.LASF227:
	.string	"lcd_putc"
.LASF7:
	.string	"long unsigned int"
.LASF233:
	.string	"eeprom_ReadMidiOutMap"
.LASF153:
	.string	"myMessage"
.LASF188:
	.string	"ManualNoteRange"
.LASF213:
	.string	"midiDataByte"
.LASF57:
	.string	"registers"
.LASF178:
	.string	"midiSendAllNotesOff"
.LASF166:
	.string	"sreg_save"
.LASF165:
	.string	"midiByte"
.LASF103:
	.string	"get_RegisterStatus"
.LASF160:
	.string	"midiNote_to_Manual"
.LASF95:
	.string	"section"
.LASF61:
	.string	"manualChar"
.LASF32:
	.string	"hw_channel"
.LASF209:
	.string	"cplInfo"
.LASF80:
	.string	"getAllCouplers"
.LASF31:
	.string	"Pipe_Module_t"
.LASF40:
	.string	"startNote"
.LASF108:
	.string	"onOff"
.LASF68:
	.string	"ccOutRegOff"
.LASF16:
	.string	"PipeMessage_t"
.LASF126:
	.string	"channelValid"
.LASF48:
	.string	"MidiInMap_t"
.LASF59:
	.string	"ProgramInfo_t"
.LASF128:
	.string	"midi_resetRegisters"
.LASF38:
	.string	"moduleBit"
.LASF228:
	.string	"lcd_blank"
.LASF19:
	.string	"Timer"
.LASF85:
	.string	"regSec"
.LASF10:
	.string	"sizetype"
.LASF127:
	.string	"splitCount"
.LASF175:
	.string	"moduleBits"
.LASF147:
	.string	"init_Manual2Module"
.LASF167:
	.string	"__ToDo"
.LASF135:
	.string	"myChar"
.LASF122:
	.string	"regBytePtr"
.LASF211:
	.string	"midiEEPromLoadError"
.LASF99:
	.string	"modBit"
.LASF65:
	.string	"ccInRegOn"
.LASF28:
	.string	"Pipe_t"
.LASF47:
	.string	"manualNote"
.LASF169:
	.string	"proc_ESPmidi"
.LASF143:
	.string	"Midi_updateManualRange"
.LASF26:
	.string	"pipeIn"
.LASF193:
	.string	"registerCount"
.LASF232:
	.string	"eeprom_ReadMidiThrough"
.LASF89:
	.string	"set_Coupler"
.LASF60:
	.string	"cursor"
.LASF20:
	.string	"pipeOutM4"
.LASF231:
	.string	"eeprom_ReadMidiInMap"
.LASF121:
	.string	"regBits"
.LASF229:
	.string	"eeprom_ReadRegOut"
.LASF73:
	.string	"MidiSetting_t"
.LASF11:
	.string	"wordval"
.LASF81:
	.string	"setAllCouplers"
.LASF27:
	.string	"pipeInStat"
.LASF18:
	.string	"prescaler"
.LASF37:
	.string	"error"
.LASF170:
	.string	"midiBytesTransferred"
.LASF58:
	.string	"couplers"
.LASF179:
	.string	"midi_SendActiveSense"
.LASF240:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF94:
	.string	"pSection"
.LASF66:
	.string	"ccInRegOff"
.LASF219:
	.string	"eeprom_ReadProg"
.LASF237:
	.string	"serial0USB_logPipeIn"
.LASF3:
	.string	"unsigned char"
.LASF76:
	.string	"midi_CouplerReset"
.LASF190:
	.string	"midiThrough"
.LASF69:
	.string	"MidiCCreg_t"
.LASF218:
	.string	"log_putError"
.LASF17:
	.string	"counter"
.LASF235:
	.string	"pipeMsgPush"
.LASF115:
	.string	"midi_CountRegisterInProgram"
.LASF234:
	.string	"eeprom_ReadManualMap"
.LASF116:
	.string	"midiSendRegOn"
.LASF56:
	.string	"RegisterMap_t"
.LASF206:
	.string	"midiLastInManual"
.LASF51:
	.string	"MidiThrough_t"
.LASF125:
	.string	"channel"
.LASF134:
	.string	"readHWonly"
.LASF202:
	.string	"midiLastOutNote"
.LASF217:
	.string	"eeprom_ReadReg"
.LASF208:
	.string	"midi_Couplers"
.LASF13:
	.string	"Word_t"
.LASF117:
	.string	"midiSendRegOff"
.LASF183:
	.string	"pipeProcessing"
.LASF205:
	.string	"midiLastInChannel"
.LASF12:
	.string	"byteval"
.LASF236:
	.string	"log_putWarning"
.LASF74:
	.string	"char"
.LASF223:
	.string	"serial1MIDISendCmd"
.LASF33:
	.string	"note"
.LASF97:
	.string	"mode"
.LASF192:
	.string	"registerMap"
.LASF123:
	.string	"byteNr"
.LASF136:
	.string	"addChar"
.LASF182:
	.string	"pipe"
.LASF54:
	.string	"startReg"
.LASF83:
	.string	"registers_CalcCount"
.LASF155:
	.string	"splitRange"
.LASF112:
	.string	"progPtr"
.LASF230:
	.string	"lcd_goto"
.LASF104:
	.string	"count_Registers"
.LASF71:
	.string	"VelZero4Off"
.LASF62:
	.string	"regStart"
.LASF242:
	.string	"__iRestore"
.LASF199:
	.string	"prog_UpdDisplay"
.LASF0:
	.string	"int8_t"
.LASF64:
	.string	"RegOut_t"
.LASF29:
	.string	"AssnRead"
.LASF96:
	.string	"read_Register"
.LASF39:
	.string	"ModulBitError_t"
.LASF161:
	.string	"found"
.LASF107:
	.string	"register_onOff"
.LASF162:
	.string	"noteBase0"
.LASF148:
	.string	"manualNote_to_moduleBit"
.LASF113:
	.string	"tempReg"
.LASF55:
	.string	"endReg"
.LASF106:
	.string	"resultPtr"
.LASF184:
	.string	"pipe_Module"
.LASF220:
	.string	"eeprom_ReadCCreg"
.LASF14:
	.string	"Message16"
.LASF1:
	.string	"uint8_t"
.LASF171:
	.string	"midiKeyPress_Process"
.LASF156:
	.string	"midiChanel"
.LASF98:
	.string	"modBitComplette"
.LASF23:
	.string	"pipeInM12"
.LASF22:
	.string	"pipeInM16"
.LASF187:
	.string	"manualMap"
.LASF151:
	.string	"moduleInfo"
.LASF86:
	.string	"init_Registers"
.LASF30:
	.string	"AssnWrite"
.LASF198:
	.string	"prog_Display"
.LASF70:
	.string	"TxActivceSense"
.LASF204:
	.string	"midiLastInNote"
.LASF21:
	.string	"pipeOut"
.LASF92:
	.string	"moduleBit_to_registerNr"
.LASF78:
	.string	"result"
.LASF239:
	.string	".././Midi.c"
.LASF129:
	.string	"register_toProgram"
.LASF207:
	.string	"midiLastProgram"
.LASF101:
	.string	"modulNr"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
