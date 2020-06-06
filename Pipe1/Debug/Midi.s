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
	.loc 1 67 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL0:
.LBB13:
	.loc 1 70 0
	ldi r24,0
.LBE13:
	.loc 1 69 0
	ldi r30,lo8(midi_Couplers)
	ldi r31,hi8(midi_Couplers)
.LBB14:
	.loc 1 70 0
	rjmp .L2
.LVL1:
.L3:
	.loc 1 71 0 discriminator 3
	st Z,__zero_reg__
	.loc 1 70 0 discriminator 3
	subi r24,lo8(-(1))
.LVL2:
	.loc 1 71 0 discriminator 3
	adiw r30,1
.LVL3:
.L2:
	.loc 1 70 0 discriminator 1
	cpi r24,lo8(12)
	brlo .L3
/* epilogue start */
.LBE14:
	.loc 1 73 0
	ret
	.cfi_endproc
.LFE18:
	.size	midi_CouplerReset, .-midi_CouplerReset
	.section	.text.init_Midi,"ax",@progbits
.global	init_Midi
	.type	init_Midi, @function
init_Midi:
.LFB17:
	.loc 1 61 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 62 0
	call midi_CouplerReset
.LVL4:
	.loc 1 63 0
	ldi r24,lo8(-1)
	sts prog_Display,r24
	.loc 1 64 0
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
	.loc 1 77 0
	.cfi_startproc
.LVL5:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 79 0
	cpi r24,lo8(12)
	brsh .L9
	.loc 1 80 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ldi r25,lo8(-1)
	st Z,r25
	.loc 1 82 0
	cpi r24,lo8(6)
	brlo .L7
	.loc 1 84 0
	subi r24,lo8(-(-6))
.LVL6:
	rjmp .L8
.L7:
	.loc 1 87 0
	subi r24,lo8(-(6))
.LVL7:
.L8:
	.loc 1 89 0
	mov r30,r24
	ldi r31,0
	movw r26,r30
	subi r26,lo8(-(midi_Couplers))
	sbci r27,hi8(-(midi_Couplers))
	ld r24,X
.LVL8:
	tst r24
	breq .L6
	.loc 1 91 0
	movw r26,r30
	subi r26,lo8(-(midi_Couplers))
	sbci r27,hi8(-(midi_Couplers))
	st X,__zero_reg__
	.loc 1 92 0
	lsl r30
	rol r31
.LVL9:
	subi r30,lo8(-(cplInfo))
	sbci r31,hi8(-(cplInfo))
	lpm r24,Z
	ret
.LVL10:
.L9:
	.loc 1 95 0
	ldi r24,0
.LVL11:
.L6:
	.loc 1 96 0
	ret
	.cfi_endproc
.LFE19:
	.size	set_Coupler, .-set_Coupler
	.section	.text.getAllCouplers,"ax",@progbits
.global	getAllCouplers
	.type	getAllCouplers, @function
getAllCouplers:
.LFB20:
	.loc 1 98 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 100 0
	ldi r24,0
.LVL12:
	ldi r25,0
.LVL13:
	.loc 1 101 0
	ldi r20,lo8(11)
	rjmp .L12
.LVL14:
.L13:
	.loc 1 108 0
	mov r20,r18
.LVL15:
.L12:
	.loc 1 104 0
	mov r18,r24
.LVL16:
	mov r19,r25
	lsl r18
	rol r19
	mov r24,r18
.LVL17:
	mov r25,r19
	.loc 1 105 0
	mov r30,r20
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ld r21,Z
	cpi r21,lo8(-1)
	brne .L11
	.loc 1 106 0
	ori r24,lo8(1)
.L11:
	.loc 1 108 0
	ldi r18,lo8(-1)
	add r18,r20
.LVL18:
	cpse r20,__zero_reg__
	rjmp .L13
/* epilogue start */
	.loc 1 110 0
	ret
	.cfi_endproc
.LFE20:
	.size	getAllCouplers, .-getAllCouplers
	.section	.text.setAllCouplers,"ax",@progbits
.global	setAllCouplers
	.type	setAllCouplers, @function
setAllCouplers:
.LFB21:
	.loc 1 112 0
	.cfi_startproc
.LVL19:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 113 0
	ldi r20,0
.LVL20:
.L17:
	.loc 1 116 0
	sbrs r24,0
	rjmp .L15
	.loc 1 117 0
	mov r30,r20
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	ldi r18,lo8(-1)
	st Z,r18
	rjmp .L16
.L15:
	.loc 1 119 0
	mov r30,r20
	ldi r31,0
	subi r30,lo8(-(midi_Couplers))
	sbci r31,hi8(-(midi_Couplers))
	st Z,__zero_reg__
.L16:
	.loc 1 121 0
	mov r18,r24
	mov r19,r25
	lsr r19
	ror r18
	mov r24,r18
.LVL21:
	mov r25,r19
	.loc 1 122 0
	subi r20,lo8(-(1))
.LVL22:
	cpi r20,lo8(12)
	brlo .L17
/* epilogue start */
	.loc 1 123 0
	ret
	.cfi_endproc
.LFE21:
	.size	setAllCouplers, .-setAllCouplers
	.section	.text.midiAllReset,"ax",@progbits
.global	midiAllReset
	.type	midiAllReset, @function
midiAllReset:
.LFB22:
	.loc 1 141 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 142 0
	ldi r24,lo8(-128)
	sts pipeProcessing,r24
	.loc 1 143 0
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
	.loc 1 382 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL24:
.LBB15:
	.loc 1 384 0
	ldi r18,0
.LBE15:
	.loc 1 383 0
	ldi r19,0
.LBB16:
	.loc 1 384 0
	rjmp .L20
.LVL25:
.L22:
	.loc 1 385 0
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
	.loc 1 385 0 is_stmt 0 discriminator 1
	cp r24,r19
	brlo .L21
	.loc 1 387 0 is_stmt 1
	ldi r19,lo8(1)
.LVL26:
	add r19,r24
.LVL27:
.L21:
	.loc 1 384 0 discriminator 2
	subi r18,lo8(-(1))
.LVL28:
.L20:
	.loc 1 384 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L22
.LBE16:
	.loc 1 390 0 is_stmt 1
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
	.loc 1 393 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 396 0
	ldi r24,lo8(-1)
	sts midi_RegisterChanged,r24
.LVL29:
.LBB17:
	.loc 1 398 0
	ldi r18,0
	rjmp .L24
.LVL30:
.L25:
	.loc 1 399 0 discriminator 3
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
	.loc 1 400 0 discriminator 3
	std Z+1,r24
	.loc 1 401 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 398 0 discriminator 3
	subi r18,lo8(-(1))
.LVL31:
.L24:
	.loc 1 398 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L25
.LBE17:
	.loc 1 403 0 is_stmt 1
	call eeprom_ReadReg
.LVL32:
	cpi r24,lo8(-1)
	brne .L26
	.loc 1 404 0
	sts registerCount,__zero_reg__
	.loc 1 405 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(5)
	ldi r24,lo8(1)
	call log_putError
.LVL33:
	rjmp .L27
.L26:
	.loc 1 407 0
	call registers_CalcCount
.LVL34:
.L27:
	.loc 1 410 0
	call eeprom_ReadProg
.LVL35:
	cpi r24,lo8(-1)
	brne .L29
	rjmp .L33
.LVL36:
.L30:
.LBB18:
.LBB19:
	.loc 1 414 0 discriminator 3
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
	.loc 1 413 0 discriminator 3
	subi r18,lo8(-(1))
.LVL37:
	rjmp .L31
.LVL38:
.L34:
.LBE19:
	ldi r18,0
.L31:
.LVL39:
.LBB20:
	.loc 1 413 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L30
.LBE20:
	.loc 1 416 0 is_stmt 1 discriminator 2
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
	.loc 1 412 0 discriminator 2
	subi r19,lo8(-(1))
.LVL40:
	rjmp .L28
.LVL41:
.L33:
.LBE18:
	ldi r19,0
.L28:
.LVL42:
.LBB21:
	.loc 1 412 0 is_stmt 0 discriminator 1
	cpi r19,lo8(64)
	brlo .L34
.LBE21:
	.loc 1 418 0 is_stmt 1
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(6)
	ldi r24,lo8(1)
	call log_putError
.LVL43:
.L29:
	.loc 1 421 0
	call eeprom_ReadCCreg
.LVL44:
	cpi r24,lo8(-1)
	brne .L23
	.loc 1 422 0
	ldi r30,lo8(midi_ccReg)
	ldi r31,hi8(midi_ccReg)
	std Z+1,r24
	.loc 1 423 0
	st Z,r24
	.loc 1 424 0
	std Z+3,r24
	.loc 1 425 0
	std Z+2,r24
	.loc 1 426 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(10)
	ldi r24,lo8(1)
	call log_putError
.LVL45:
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
	.loc 1 430 0
	.cfi_startproc
.LVL46:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 433 0
	lds r25,registerCount
	cp r24,r25
	brsh .L36
	.loc 1 433 0 is_stmt 0 discriminator 1
	cpi r24,lo8(64)
	brsh .L36
	ldi r18,lo8(8)
	ldi r30,lo8(registerMap)
	ldi r31,hi8(registerMap)
.L39:
.LVL47:
.LBB22:
	.loc 1 439 0 is_stmt 1
	ld r19,Z
	cp r24,r19
	brlo .L37
	.loc 1 439 0 is_stmt 0 discriminator 1
	ldd r25,Z+1
	cp r25,r24
	brlo .L37
	.loc 1 442 0 is_stmt 1
	ldd r18,Z+2
.LVL48:
	mov r25,r24
	sub r25,r19
	.loc 1 443 0
	ldi r24,0
.LVL49:
	add r25,r18
	ret
.LVL50:
.L37:
	.loc 1 445 0
	adiw r30,3
.LVL51:
	.loc 1 446 0
	subi r18,lo8(-(-1))
.LVL52:
	brne .L39
.LVL53:
.L36:
.LBE22:
	.loc 1 450 0
	ldi r24,lo8(-1)
.LVL54:
	ldi r25,0
	.loc 1 451 0
	ret
	.cfi_endproc
.LFE33:
	.size	regNr_to_moduleBit, .-regNr_to_moduleBit
	.section	.text.moduleBit_to_registerNr,"ax",@progbits
.global	moduleBit_to_registerNr
	.type	moduleBit_to_registerNr, @function
moduleBit_to_registerNr:
.LFB34:
	.loc 1 453 0
	.cfi_startproc
.LVL55:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB23:
	.loc 1 455 0
	ldi r25,0
	rjmp .L41
.LVL56:
.L44:
	.loc 1 456 0
	lds r20,registerMap+2
	cp r24,r20
	brlo .L42
	.loc 1 456 0 is_stmt 0 discriminator 1
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
	brlt .L42
.LVL57:
	.loc 1 458 0 is_stmt 1
	sub r24,r20
	add r24,r21
	ret
.LVL58:
.L42:
	.loc 1 455 0 discriminator 2
	subi r25,lo8(-(1))
.LVL59:
.L41:
	.loc 1 455 0 is_stmt 0 discriminator 1
	cpi r25,lo8(8)
	brlo .L44
.LBE23:
	.loc 1 461 0 is_stmt 1
	ldi r24,lo8(-1)
.LVL60:
	.loc 1 462 0
	ret
	.cfi_endproc
.LFE34:
	.size	moduleBit_to_registerNr, .-moduleBit_to_registerNr
	.section	.text.read_Register,"ax",@progbits
.global	read_Register
	.type	read_Register, @function
read_Register:
.LFB35:
	.loc 1 464 0
	.cfi_startproc
.LVL61:
	push r28
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 467 0
	lds r25,registerCount
	cp r24,r25
	brlo .+2
	rjmp .L51
	mov r28,r22
.LBB24:
	.loc 1 469 0
	call regNr_to_moduleBit
.LVL62:
	.loc 1 470 0
	cpse r24,__zero_reg__
	rjmp .L47
.LVL63:
.LBB25:
	.loc 1 473 0
	mov r18,r25
	andi r18,lo8(31)
.LVL64:
	.loc 1 474 0
	swap r25
.LVL65:
	lsr r25
	andi r25,lo8(7)
.LVL66:
	.loc 1 475 0
	ldi r20,lo8(1)
	ldi r21,0
	rjmp 2f
	1:
	lsl r20
	rol r21
	2:
	dec r25
	brpl 1b
.LVL67:
	.loc 1 476 0
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
.LVL68:
	and r25,r20
	brne .L48
	.loc 1 476 0 is_stmt 0 discriminator 1
	sbrc r28,1
	rjmp .L52
.L48:
	.loc 1 479 0 is_stmt 1
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
.LVL69:
	movw r30,r18
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r19,Z+6
	lds r18,pipe_Module
	and r20,r19
.LVL70:
	and r20,r18
	breq .L50
	.loc 1 479 0 is_stmt 0 discriminator 1
	sbrc r28,0
	rjmp .L53
.L50:
	.loc 1 483 0 is_stmt 1
	tst r25
	breq .L46
	.loc 1 483 0 is_stmt 0 discriminator 1
	tst r20
	breq .L46
	.loc 1 483 0 discriminator 2
	cpi r28,lo8(4)
	brne .L46
	rjmp .L54
.L47:
.LBE25:
.LBE24:
	.loc 1 491 0 is_stmt 1
	ldi r24,0
.LBB27:
	rjmp .L46
.LVL71:
.L52:
.LBB26:
	.loc 1 478 0
	ldi r24,lo8(1)
	rjmp .L46
.LVL72:
.L53:
	.loc 1 482 0
	ldi r24,lo8(1)
	rjmp .L46
.L54:
	.loc 1 484 0
	ldi r24,lo8(1)
	rjmp .L46
.LVL73:
.L51:
.LBE26:
.LBE27:
	.loc 1 491 0
	ldi r24,0
.LVL74:
.L46:
/* epilogue start */
	.loc 1 492 0
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
	.loc 1 494 0
	.cfi_startproc
.LVL75:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 498 0
	lds r25,registerCount
	cp r24,r25
	brsh .L59
.LBB28:
	.loc 1 500 0
	call regNr_to_moduleBit
.LVL76:
	.loc 1 501 0
	cpse r24,__zero_reg__
	rjmp .L60
.LVL77:
.LBB29:
	.loc 1 504 0
	mov r18,r25
	andi r18,lo8(31)
.LVL78:
	.loc 1 505 0
	swap r25
.LVL79:
	lsr r25
	andi r25,lo8(7)
.LVL80:
	.loc 1 506 0
	ldi r20,lo8(1)
	ldi r21,0
	rjmp 2f
	1:
	lsl r20
	rol r21
	2:
	dec r25
	brpl 1b
.LVL81:
	.loc 1 507 0
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
	breq .L61
.LBE29:
.LBE28:
	.loc 1 497 0
	ldi r24,0
	rjmp .L58
.L61:
.LBB31:
.LBB30:
	.loc 1 509 0
	ldi r24,lo8(2)
.L58:
.LVL82:
	.loc 1 511 0
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
.LVL83:
	movw r30,r18
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r18,Z+6
	lds r25,pipe_Module
.LVL84:
	and r20,r18
.LVL85:
	and r20,r25
	breq .L56
	.loc 1 515 0
	ori r24,lo8(1)
.LVL86:
	ret
.LVL87:
.L60:
.LBE30:
.LBE31:
	.loc 1 497 0
	ldi r24,0
	ret
.LVL88:
.L59:
	ldi r24,0
.LVL89:
.L56:
	.loc 1 520 0
	ret
	.cfi_endproc
.LFE36:
	.size	get_RegisterStatus, .-get_RegisterStatus
	.section	.text.count_Registers,"ax",@progbits
.global	count_Registers
	.type	count_Registers, @function
count_Registers:
.LFB37:
	.loc 1 523 0
	.cfi_startproc
.LVL90:
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
.LVL91:
.LBB32:
	.loc 1 525 0
	ldi r28,0
.LBE32:
	.loc 1 524 0
	ldi r29,0
.LBB33:
	.loc 1 525 0
	rjmp .L63
.LVL92:
.L65:
	.loc 1 526 0
	mov r22,r17
	mov r24,r28
	call read_Register
.LVL93:
	cpse r24,__zero_reg__
	.loc 1 527 0
	subi r29,lo8(-(1))
.LVL94:
.L64:
	.loc 1 525 0 discriminator 2
	subi r28,lo8(-(1))
.LVL95:
.L63:
	.loc 1 525 0 is_stmt 0 discriminator 1
	cpi r28,lo8(64)
	brlo .L65
.LBE33:
	.loc 1 531 0 is_stmt 1
	mov r24,r29
/* epilogue start */
	pop r29
.LVL96:
	pop r28
.LVL97:
	pop r17
.LVL98:
	ret
	.cfi_endproc
.LFE37:
	.size	count_Registers, .-count_Registers
	.section	.text.read_allRegister,"ax",@progbits
.global	read_allRegister
	.type	read_allRegister, @function
read_allRegister:
.LFB38:
	.loc 1 533 0
	.cfi_startproc
.LVL99:
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
.LVL100:
.LBB34:
	.loc 1 537 0
	ldi r28,0
.LBE34:
	.loc 1 536 0
	ldi r29,0
	.loc 1 534 0
	ldi r16,0
.LBB35:
	.loc 1 537 0
	rjmp .L67
.LVL101:
.L71:
	mov r17,r28
	andi r17,lo8(7)
	.loc 1 540 0
	brne .L68
	.loc 1 542 0
	ldi r29,0
.LVL102:
.L68:
	.loc 1 544 0
	lsr r29
.LVL103:
	.loc 1 545 0
	ldi r22,lo8(3)
	mov r24,r28
	call read_Register
.LVL104:
	tst r24
	breq .L69
	.loc 1 546 0
	ori r29,lo8(-128)
.LVL105:
	.loc 1 547 0
	subi r16,lo8(-(1))
.LVL106:
.L69:
	.loc 1 549 0
	cpi r17,lo8(7)
	brne .L70
	.loc 1 551 0
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L70
.LVL107:
	.loc 1 552 0
	movw r30,r14
	st Z,r29
	movw r24,r14
	adiw r24,1
.LVL108:
	movw r14,r24
.LVL109:
.L70:
	.loc 1 537 0 discriminator 2
	subi r28,lo8(-(1))
.LVL110:
.L67:
	.loc 1 537 0 is_stmt 0 discriminator 1
	cpi r28,lo8(64)
	brlo .L71
.LBE35:
	.loc 1 557 0 is_stmt 1
	mov r24,r16
/* epilogue start */
	pop r29
.LVL111:
	pop r28
.LVL112:
	pop r17
	pop r16
.LVL113:
	pop r15
	pop r14
.LVL114:
	ret
	.cfi_endproc
.LFE38:
	.size	read_allRegister, .-read_allRegister
	.section	.text.register_onOff,"ax",@progbits
.global	register_onOff
	.type	register_onOff, @function
register_onOff:
.LFB39:
	.loc 1 560 0
	.cfi_startproc
.LVL115:
	push r28
.LCFI10:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 562 0
	lds r25,registerCount
	cp r24,r25
	brsh .L73
	mov r28,r22
.LBB36:
	.loc 1 564 0
	call regNr_to_moduleBit
.LVL116:
	.loc 1 565 0
	cpse r24,__zero_reg__
	rjmp .L73
.LVL117:
.LBB37:
	.loc 1 568 0
	mov r24,r25
	andi r24,lo8(31)
.LVL118:
	.loc 1 569 0
	swap r25
.LVL119:
	lsr r25
	andi r25,lo8(7)
.LVL120:
	.loc 1 570 0
	sbrs r28,0
	rjmp .L76
	.loc 1 572 0
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
.LVL121:
	rjmp .L73
.LVL122:
.L76:
	.loc 1 575 0
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
.LVL123:
.L73:
/* epilogue start */
.LBE37:
.LBE36:
	.loc 1 580 0
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
	.loc 1 229 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 231 0
	lds r24,midiLastCommand
	cpi r24,lo8(-16)
	brne .L77
	.loc 1 231 0 is_stmt 0 discriminator 1
	lds r24,midiDataByte
	cpi r24,lo8(125)
	brne .L77
	.loc 1 233 0 is_stmt 1
	lds r25,midiDataByte+1
	andi r25,lo8(-16)
	cpi r25,lo8(64)
	breq .L79
	.loc 1 233 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L77
.L79:
	.loc 1 236 0 is_stmt 1
	lds r24,midiDataByte+3
	cpi r24,lo8(-91)
	brne .L77
	.loc 1 236 0 is_stmt 0 discriminator 1
	lds r18,midiDataByteCount
	cpi r18,lo8(4)
	brne .L77
	.loc 1 239 0 is_stmt 1
	ldi r22,lo8(1)
	cpi r25,lo8(64)
	breq .L80
	ldi r22,0
.L80:
	call register_onOff
.LVL124:
.L77:
	ret
	.cfi_endproc
.LFE28:
	.size	midiInSysEx, .-midiInSysEx
	.section	.text.midi_RegisterMatchProgram,"ax",@progbits
.global	midi_RegisterMatchProgram
	.type	midi_RegisterMatchProgram, @function
midi_RegisterMatchProgram:
.LFB44:
	.loc 1 668 0
	.cfi_startproc
.LVL125:
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
.LVL126:
	.loc 1 672 0
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
.LVL127:
	add r16,r24
	adc r17,r25
	subi r16,lo8(-(programMap))
	sbci r17,hi8(-(programMap))
.LVL128:
.LBB38:
	.loc 1 675 0
	ldi r28,0
.LBE38:
	.loc 1 673 0
	ldi r29,0
	.loc 1 671 0
	mov r15,__zero_reg__
.LBB39:
	.loc 1 675 0
	rjmp .L82
.LVL129:
.L87:
	.loc 1 676 0
	mov r25,r28
	andi r25,lo8(7)
	brne .L83
.LVL130:
	.loc 1 678 0
	movw r30,r16
	ld r29,Z
.LVL131:
	subi r16,-1
	sbci r17,-1
.LVL132:
.L83:
	.loc 1 680 0
	mov r24,r28
	call get_RegisterStatus
.LVL133:
	.loc 1 681 0
	sbrs r29,0
	rjmp .L84
	.loc 1 683 0
	sbrc r24,1
	rjmp .L86
	rjmp .L88
.L84:
	.loc 1 690 0
	sbrc r24,1
	rjmp .L89
	.loc 1 693 0
	sbrc r24,0
	.loc 1 695 0
	inc r15
.LVL134:
.L86:
	.loc 1 698 0 discriminator 2
	lsr r29
.LVL135:
	.loc 1 675 0 discriminator 2
	subi r28,lo8(-(1))
.LVL136:
.L82:
	.loc 1 675 0 is_stmt 0 discriminator 1
	lds r25,registerCount
	cp r28,r25
	brlo .L87
.LBE39:
	.loc 1 700 0 is_stmt 1
	mov r24,r15
.LBB40:
	rjmp .L85
.LVL137:
.L88:
	.loc 1 685 0
	ldi r24,lo8(-1)
.LVL138:
	rjmp .L85
.LVL139:
.L89:
	.loc 1 692 0
	ldi r24,lo8(-1)
.LVL140:
.L85:
/* epilogue start */
.LBE40:
	.loc 1 701 0
	pop r29
.LVL141:
	pop r28
.LVL142:
	pop r17
	pop r16
.LVL143:
	pop r15
.LVL144:
	ret
	.cfi_endproc
.LFE44:
	.size	midi_RegisterMatchProgram, .-midi_RegisterMatchProgram
	.section	.text.midi_CountRegisterInProgram,"ax",@progbits
.global	midi_CountRegisterInProgram
	.type	midi_CountRegisterInProgram, @function
midi_CountRegisterInProgram:
.LFB45:
	.loc 1 703 0
	.cfi_startproc
.LVL145:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 706 0
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
.LVL146:
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
.LVL147:
.LBB41:
	.loc 1 708 0
	ldi r25,0
.LBE41:
	.loc 1 707 0
	ldi r18,0
	.loc 1 705 0
	ldi r24,0
.LBB42:
	.loc 1 708 0
	rjmp .L91
.LVL148:
.L94:
	.loc 1 709 0
	mov r19,r25
	andi r19,lo8(7)
	brne .L92
.LVL149:
	.loc 1 711 0
	ld r18,Z
.LVL150:
	adiw r30,1
.LVL151:
.L92:
	.loc 1 713 0
	sbrc r18,0
	.loc 1 714 0
	subi r24,lo8(-(1))
.LVL152:
.L93:
	.loc 1 716 0 discriminator 2
	lsr r18
.LVL153:
	.loc 1 708 0 discriminator 2
	subi r25,lo8(-(1))
.LVL154:
.L91:
	.loc 1 708 0 is_stmt 0 discriminator 1
	lds r19,registerCount
	cp r25,r19
	brlo .L94
/* epilogue start */
.LBE42:
	.loc 1 720 0 is_stmt 1
	ret
	.cfi_endproc
.LFE45:
	.size	midi_CountRegisterInProgram, .-midi_CountRegisterInProgram
	.section	.text.prog_set,"ax",@progbits
.global	prog_set
	.type	prog_set, @function
prog_set:
.LFB46:
	.loc 1 726 0
	.cfi_startproc
.LVL155:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 727 0
	lds r25,prog_Display
	cp r25,r24
	breq .L95
	.loc 1 728 0
	sts prog_Display,r24
	.loc 1 729 0
	ldi r24,lo8(-1)
.LVL156:
	sts prog_UpdDisplay,r24
.LVL157:
.L95:
	ret
	.cfi_endproc
.LFE46:
	.size	prog_set, .-prog_set
	.section	.text.program_toRegister,"ax",@progbits
.global	program_toRegister
	.type	program_toRegister, @function
program_toRegister:
.LFB40:
	.loc 1 582 0
	.cfi_startproc
.LVL158:
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
.LVL159:
	.loc 1 585 0
	cpi r24,lo8(64)
	brlo .+2
	rjmp .L105
	mov r14,r24
.LBB43:
	.loc 1 586 0
	call prog_set
.LVL160:
	.loc 1 589 0
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
.LVL161:
.LBB44:
	.loc 1 590 0
	mov r11,__zero_reg__
.LBE44:
	.loc 1 588 0
	ldi r17,0
.LBE43:
	.loc 1 584 0
	ldi r16,0
.LBB47:
.LBB46:
	.loc 1 590 0
	rjmp .L99
.LVL162:
.L104:
	.loc 1 593 0
	movw r12,r30
	ldi r24,-1
	sub r12,r24
	sbc r13,r24
.LVL163:
	ld r28,Z
.LVL164:
.LBB45:
	.loc 1 594 0
	ldi r29,0
	rjmp .L100
.LVL165:
.L103:
	.loc 1 595 0
	mov r24,r28
	andi r24,lo8(1)
	sbrc r28,0
	.loc 1 596 0
	subi r16,lo8(-(1))
.LVL166:
.L101:
	.loc 1 598 0 discriminator 2
	ldi r22,lo8(1)
	cpse r24,__zero_reg__
	rjmp .L102
	ldi r22,0
.L102:
	mov r24,r17
	call register_onOff
.LVL167:
	.loc 1 600 0 discriminator 2
	lsr r28
.LVL168:
	.loc 1 601 0 discriminator 2
	subi r17,lo8(-(1))
.LVL169:
	.loc 1 594 0 discriminator 2
	subi r29,lo8(-(1))
.LVL170:
.L100:
	.loc 1 594 0 is_stmt 0 discriminator 1
	cpi r29,lo8(8)
	brlo .L103
.LBE45:
	.loc 1 590 0 is_stmt 1 discriminator 2
	inc r11
.LVL171:
	.loc 1 593 0 discriminator 2
	movw r30,r12
.LVL172:
.L99:
	.loc 1 590 0 discriminator 1
	ldi r24,lo8(7)
	cp r24,r11
	brsh .L104
.LBE46:
	.loc 1 605 0
	movw r30,r14
.LVL173:
	lsl r30
	rol r31
	lsl r14
	rol r15
	lsl r14
	rol r15
	lsl r14
	rol r15
.LVL174:
	add r30,r14
	adc r31,r15
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
	.loc 1 606 0
	ldd r24,Z+8
	ldd r25,Z+9
	call setAllCouplers
.LVL175:
	rjmp .L98
.LVL176:
.L105:
.LBE47:
	.loc 1 584 0
	ldi r16,0
.LVL177:
.L98:
	.loc 1 609 0
	mov r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
.LVL178:
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
	.loc 1 611 0
	.cfi_startproc
.LVL179:
	push r28
.LCFI25:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r22
	.loc 1 612 0
	lds r25,midi_Setting+2
	cpse r25,__zero_reg__
	rjmp .L112
.LBB48:
	rjmp .L108
.LVL180:
.L110:
.LBB49:
	.loc 1 617 0
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
	brne .L113
	.loc 1 616 0 discriminator 2
	subi r25,lo8(-(1))
.LVL181:
	rjmp .L107
.LVL182:
.L112:
.LBE49:
.LBE48:
	ldi r25,0
.L107:
.LVL183:
.LBB52:
.LBB50:
	.loc 1 616 0 is_stmt 0 discriminator 1
	cpi r25,lo8(4)
	brlo .L110
.LBE50:
	.loc 1 614 0 is_stmt 1
	ldi r24,0
.LVL184:
.LBB51:
	rjmp .L109
.LVL185:
.L113:
	.loc 1 619 0
	ldi r24,lo8(-1)
.LVL186:
.L109:
.LBE51:
	.loc 1 623 0
	cpi r24,lo8(-1)
	brne .L108
	.loc 1 625 0
	mov r24,r28
.LVL187:
	call program_toRegister
.LVL188:
	.loc 1 626 0
	mov r24,r28
	call prog_set
.LVL189:
	.loc 1 627 0
	sts midiLastProgram,r28
.L108:
.LBE52:
	.loc 1 633 0
	lds r24,midiThrough+1
	cpi r24,lo8(-1)
	breq .L106
	.loc 1 635 0
	ori r24,lo8(-64)
	call serial1MIDISend
.LVL190:
	.loc 1 637 0
	mov r24,r28
	call serial1MIDISend
.LVL191:
.L106:
/* epilogue start */
	.loc 1 640 0
	pop r28
.LVL192:
	ret
	.cfi_endproc
.LFE41:
	.size	midi_ProgramChange, .-midi_ProgramChange
	.section	.text.midi_resetRegisters,"ax",@progbits
.global	midi_resetRegisters
	.type	midi_resetRegisters, @function
midi_resetRegisters:
.LFB42:
	.loc 1 643 0
	.cfi_startproc
	push r28
.LCFI26:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL193:
.LBB53:
	.loc 1 644 0
	ldi r28,0
	rjmp .L115
.LVL194:
.L116:
	.loc 1 645 0 discriminator 3
	ldi r24,lo8(-1)
	call prog_set
.LVL195:
	.loc 1 646 0 discriminator 3
	ldi r22,0
	mov r24,r28
	call register_onOff
.LVL196:
	.loc 1 644 0 discriminator 3
	subi r28,lo8(-(1))
.LVL197:
.L115:
	.loc 1 644 0 is_stmt 0 discriminator 1
	lds r24,registerCount
	cp r28,r24
	brlo .L116
/* epilogue start */
.LBE53:
	.loc 1 648 0 is_stmt 1
	pop r28
.LVL198:
	ret
	.cfi_endproc
.LFE42:
	.size	midi_resetRegisters, .-midi_resetRegisters
	.section	.text.register_toProgram,"ax",@progbits
.global	register_toProgram
	.type	register_toProgram, @function
register_toProgram:
.LFB43:
	.loc 1 650 0
	.cfi_startproc
.LVL199:
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
	.loc 1 654 0
	call midi_resetRegisters
.LVL200:
	.loc 1 655 0
	call module_WaitOutputInput2Cycles
.LVL201:
	.loc 1 657 0
	cpi r28,lo8(64)
	brsh .L120
.LBB54:
	.loc 1 658 0
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
.LVL202:
	.loc 1 659 0
	subi r24,lo8(-(programMap))
	sbci r25,hi8(-(programMap))
.LVL203:
	call read_allRegister
.LVL204:
	mov r17,r24
.LVL205:
	rjmp .L118
.LVL206:
.L120:
.LBE54:
	.loc 1 656 0
	ldi r17,0
.LVL207:
.L118:
	.loc 1 661 0
	ldi r29,0
	call getAllCouplers
.LVL208:
	movw r18,r28
	lsl r18
	rol r19
	lsl r28
	rol r29
	lsl r28
	rol r29
	lsl r28
	rol r29
.LVL209:
	add r28,r18
	adc r29,r19
	subi r28,lo8(-(programMap))
	sbci r29,hi8(-(programMap))
	std Y+9,r25
	std Y+8,r24
	.loc 1 662 0
	cpse r16,__zero_reg__
	.loc 1 663 0
	call eeprom_UpdateProg
.LVL210:
.L119:
	.loc 1 666 0
	mov r24,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
.LVL211:
	pop r16
.LVL212:
	ret
	.cfi_endproc
.LFE43:
	.size	register_toProgram, .-register_toProgram
	.section	.text.prog_toLcd,"ax",@progbits
.global	prog_toLcd
	.type	prog_toLcd, @function
prog_toLcd:
.LFB47:
	.loc 1 733 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 734 0
	lds r24,prog_Display
	cpi r24,lo8(64)
	brsh .L122
	.loc 1 735 0
	ldi r24,lo8(80)
	call lcd_putc
.LVL213:
	.loc 1 736 0
	ldi r24,lo8(45)
	call lcd_putc
.LVL214:
	.loc 1 737 0
	lds r24,prog_Display
	lsr r24
	lsr r24
	lsr r24
	andi r24,lo8(7)
	subi r24,lo8(-(65))
	call lcd_putc
.LVL215:
	.loc 1 738 0
	lds r24,prog_Display
	andi r24,lo8(7)
	subi r24,lo8(-(49))
	call lcd_putc
.LVL216:
	.loc 1 739 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL217:
	ret
.L122:
	.loc 1 741 0
	ldi r24,lo8(5)
	call lcd_blank
.LVL218:
	ret
	.cfi_endproc
.LFE47:
	.size	prog_toLcd, .-prog_toLcd
	.section	.text.init_RegOut,"ax",@progbits
.global	init_RegOut
	.type	init_RegOut, @function
init_RegOut:
.LFB48:
	.loc 1 749 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 750 0
	call eeprom_ReadRegOut
.LVL219:
	cpi r24,lo8(-1)
	brne .L124
	.loc 1 752 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(9)
	ldi r24,lo8(1)
	call log_putError
.LVL220:
.L124:
	ret
	.cfi_endproc
.LFE48:
	.size	init_RegOut, .-init_RegOut
	.section	.text.reg_toLCD,"ax",@progbits
.global	reg_toLCD
	.type	reg_toLCD, @function
reg_toLCD:
.LFB49:
	.loc 1 755 0
	.cfi_startproc
.LVL221:
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
.LVL222:
.LBB55:
	.loc 1 757 0
	mov r14,__zero_reg__
	rjmp .L127
.LVL223:
.L139:
.LBB56:
	.loc 1 758 0
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
.LVL224:
	.loc 1 759 0
	ldd r24,Y+1
.LVL225:
	.loc 1 760 0
	ldi r25,lo8(-33)
	add r25,r24
	cpi r25,lo8(95)
	brsh .L128
	.loc 1 762 0
	call lcd_putc
.LVL226:
	.loc 1 763 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL227:
.L128:
	.loc 1 765 0
	movw r30,r16
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(reg_Out))
	sbci r31,hi8(-(reg_Out))
	ldd r28,Z+2
.LVL228:
	.loc 1 766 0
	cpi r28,lo8(-1)
	breq .+2
	rjmp .L130
.LBE56:
	rjmp .L126
.L138:
.LBB59:
	.loc 1 770 0
	cpse r28,r24
	rjmp .L131
	.loc 1 772 0
	ldi r24,lo8(-1)
	cpse r15,r24
	rjmp .L132
	.loc 1 773 0
	mov r24,r28
	call get_RegisterStatus
.LVL229:
	sbrs r24,0
	rjmp .L140
	ldi r24,lo8(11)
	rjmp .L133
.L140:
	ldi r24,lo8(10)
.L133:
	.loc 1 773 0 is_stmt 0 discriminator 4
	call lcd_putc
.LVL230:
	mov r29,r28
	rjmp .L134
.L132:
	.loc 1 775 0 is_stmt 1
	mov r24,r28
	call get_RegisterStatus
.LVL231:
	sbrs r24,1
	rjmp .L141
	ldi r24,lo8(11)
	rjmp .L135
.L141:
	ldi r24,lo8(10)
.L135:
	.loc 1 775 0 is_stmt 0 discriminator 4
	call lcd_putc
.LVL232:
	mov r29,r28
	rjmp .L134
.L131:
	.loc 1 779 0 is_stmt 1
	ldi r24,lo8(-1)
	cpse r15,r24
	rjmp .L136
.LBB57:
	.loc 1 780 0
	ldi r29,lo8(1)
	add r29,r28
.LVL233:
	mov r24,r28
	call get_RegisterStatus
.LVL234:
	sbrs r24,0
	rjmp .L142
	ldi r28,lo8(2)
	rjmp .L137
.L142:
	ldi r28,0
.L137:
.LVL235:
	.loc 1 781 0 discriminator 4
	mov r24,r29
	call get_RegisterStatus
.LVL236:
	andi r24,lo8(1)
	add r24,r28
.LVL237:
	.loc 1 782 0 discriminator 4
	subi r24,lo8(-(12))
.LVL238:
	call lcd_putc
.LVL239:
.LBE57:
	rjmp .L134
.LVL240:
.L136:
.LBB58:
	.loc 1 784 0
	ldi r29,lo8(1)
	add r29,r28
.LVL241:
	mov r24,r28
	call get_RegisterStatus
.LVL242:
	mov r28,r24
	andi r28,lo8(2)
.LVL243:
	.loc 1 785 0
	mov r24,r29
	call get_RegisterStatus
.LVL244:
	lsr r24
	andi r24,1
	add r24,r28
.LVL245:
	.loc 1 786 0
	subi r24,lo8(-(12))
.LVL246:
	call lcd_putc
.LVL247:
.L134:
.LBE58:
	.loc 1 789 0
	ldi r28,lo8(1)
	add r28,r29
.LVL248:
.L130:
	.loc 1 769 0
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
	.loc 1 791 0 discriminator 2
	ldi r24,lo8(32)
	call lcd_putc
.LVL249:
.LBE59:
	.loc 1 757 0 discriminator 2
	inc r14
.LVL250:
.L127:
	.loc 1 757 0 is_stmt 0 discriminator 1
	ldi r24,lo8(7)
	cp r24,r14
	brlo .+2
	rjmp .L139
.L126:
/* epilogue start */
.LBE55:
	.loc 1 793 0 is_stmt 1
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
.LVL251:
	pop r14
.LVL252:
	ret
	.cfi_endproc
.LFE49:
	.size	reg_toLCD, .-reg_toLCD
	.section	.text.reg_ClearOnLCD,"ax",@progbits
.global	reg_ClearOnLCD
	.type	reg_ClearOnLCD, @function
reg_ClearOnLCD:
.LFB50:
	.loc 1 795 0
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
.LVL253:
.LBB60:
	.loc 1 796 0
	ldi r17,0
	rjmp .L144
.LVL254:
.L146:
.LBB61:
	.loc 1 797 0
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
.LVL255:
	.loc 1 798 0
	ldd r18,Y+1
.LVL256:
	.loc 1 800 0
	ldd r24,Y+3
	ldd r25,Y+2
	sub r24,r25
	subi r24,lo8(-(1))
.LVL257:
	.loc 1 801 0
	ldi r25,0
	adiw r24,1
.LVL258:
	asr r25
	ror r24
.LVL259:
	.loc 1 802 0
	subi r18,lo8(-(-33))
.LVL260:
	cpi r18,lo8(95)
	brsh .L147
	ldi r18,lo8(2)
	rjmp .L145
.L147:
	ldi r18,0
.L145:
.LVL261:
	.loc 1 803 0 discriminator 4
	add r24,r18
.LVL262:
	call lcd_blank
.LVL263:
.LBE61:
	.loc 1 796 0 discriminator 4
	subi r17,lo8(-(1))
.LVL264:
.L144:
	.loc 1 796 0 is_stmt 0 discriminator 2
	cpi r17,lo8(8)
	brlo .L146
/* epilogue start */
.LBE60:
	.loc 1 805 0 is_stmt 1
	pop r29
	pop r28
	pop r17
.LVL265:
	ret
	.cfi_endproc
.LFE50:
	.size	reg_ClearOnLCD, .-reg_ClearOnLCD
	.section	.text.init_Midi2Manual,"ax",@progbits
.global	init_Midi2Manual
	.type	init_Midi2Manual, @function
init_Midi2Manual:
.LFB51:
	.loc 1 809 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL266:
.LBB62:
	.loc 1 813 0
	ldi r25,lo8(64)
.LBE62:
	.loc 1 811 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
.LBB63:
	.loc 1 813 0
	rjmp .L149
.LVL267:
.L150:
	.loc 1 815 0 discriminator 3
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 816 0 discriminator 3
	std Z+1,r24
	.loc 1 817 0 discriminator 3
	std Z+3,r24
	.loc 1 818 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 819 0 discriminator 3
	adiw r30,4
.LVL268:
	.loc 1 813 0 discriminator 3
	subi r25,lo8(-(-1))
.LVL269:
.L149:
	.loc 1 813 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L150
.LBE63:
	.loc 1 822 0 is_stmt 1
	call eeprom_ReadMidiInMap
.LVL270:
	cpi r24,lo8(-1)
	brne .L151
	.loc 1 823 0
	sts midiEEPromLoadError,r24
	.loc 1 824 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
	st Z,__zero_reg__
	.loc 1 825 0
	ldi r24,lo8(36)
	std Z+1,r24
	.loc 1 826 0
	std Z+3,r24
	.loc 1 827 0
	ldi r25,lo8(56)
	std Z+2,r25
	.loc 1 828 0
	ldi r18,lo8(1)
	std Z+16,r18
	.loc 1 829 0
	std Z+17,r24
	.loc 1 830 0
	std Z+19,r24
	.loc 1 831 0
	std Z+18,r25
	.loc 1 832 0
	ldi r18,lo8(2)
	std Z+32,r18
	.loc 1 833 0
	std Z+33,r24
	.loc 1 834 0
	std Z+35,r24
	.loc 1 835 0
	std Z+34,r25
	.loc 1 836 0
	ldi r25,lo8(3)
	std Z+48,r25
	.loc 1 837 0
	std Z+49,r24
	.loc 1 838 0
	std Z+51,r24
	.loc 1 839 0
	ldi r24,lo8(30)
	std Z+50,r24
	.loc 1 840 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL271:
.L151:
	.loc 1 842 0
	call eeprom_ReadMidiThrough
.LVL272:
	cpi r24,lo8(-1)
	brne .L148
	.loc 1 843 0
	ldi r30,lo8(midiThrough)
	ldi r31,hi8(midiThrough)
	st Z,r24
	.loc 1 844 0
	std Z+1,r24
	.loc 1 845 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL273:
.L148:
	ret
	.cfi_endproc
.LFE51:
	.size	init_Midi2Manual, .-init_Midi2Manual
	.section	.text.init_Manual2Midi,"ax",@progbits
.global	init_Manual2Midi
	.type	init_Manual2Midi, @function
init_Manual2Midi:
.LFB52:
	.loc 1 849 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL274:
.LBB64:
	.loc 1 851 0
	ldi r18,0
	rjmp .L154
.LVL275:
.L155:
	.loc 1 852 0 discriminator 3
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 853 0 discriminator 3
	std Z+1,r24
	.loc 1 851 0 discriminator 3
	subi r18,lo8(-(1))
.LVL276:
.L154:
	.loc 1 851 0 is_stmt 0 discriminator 1
	mov r24,r18
	ldi r25,0
	sbiw r24,0
	brne .L155
.LBE64:
	.loc 1 855 0 is_stmt 1
	call eeprom_ReadMidiOutMap
.LVL277:
	cpi r24,lo8(-1)
	brne .L153
	.loc 1 856 0
	sts midiEEPromLoadError,r24
	.loc 1 858 0
	ldi r30,lo8(midiOutMap)
	ldi r31,hi8(midiOutMap)
	st Z,__zero_reg__
	.loc 1 859 0
	ldi r25,lo8(1)
	std Z+2,r25
	.loc 1 860 0
	ldi r25,lo8(2)
	std Z+4,r25
	.loc 1 861 0
	ldi r25,lo8(3)
	std Z+6,r25
	.loc 1 862 0
	ldi r30,lo8(midi_Setting)
	ldi r31,hi8(midi_Setting)
	st Z,__zero_reg__
	.loc 1 863 0
	std Z+1,__zero_reg__
	.loc 1 864 0
	std Z+2,r24
	.loc 1 865 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(2)
	ldi r24,lo8(1)
	call log_putError
.LVL278:
.L153:
	ret
	.cfi_endproc
.LFE52:
	.size	init_Manual2Midi, .-init_Manual2Midi
	.section	.text.Manual_to_MidiNote,"ax",@progbits
.global	Manual_to_MidiNote
	.type	Manual_to_MidiNote, @function
Manual_to_MidiNote:
.LFB54:
	.loc 1 909 0
	.cfi_startproc
.LVL279:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	.loc 1 910 0
	ldi r24,lo8(-1)
.LVL280:
	ldi r25,lo8(-1)
	.loc 1 911 0
	cpi r30,lo8(4)
	brsh .L158
	.loc 1 912 0
	ldi r31,0
	lsl r30
	rol r31
.LVL281:
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r18,Z
	cpi r18,lo8(-1)
	breq .L158
	.loc 1 913 0
	mov r24,r18
	.loc 1 914 0
	mov r25,r22
.L158:
	.loc 1 919 0
	ret
	.cfi_endproc
.LFE54:
	.size	Manual_to_MidiNote, .-Manual_to_MidiNote
	.section	.text.Midi_updateManualRange,"ax",@progbits
.global	Midi_updateManualRange
	.type	Midi_updateManualRange, @function
Midi_updateManualRange:
.LFB55:
	.loc 1 923 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL282:
.LBB65:
	.loc 1 924 0
	ldi r23,0
	rjmp .L160
.LVL283:
.L166:
.LBB66:
.LBB67:
	.loc 1 928 0
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
	breq .L161
.LVL284:
	.loc 1 928 0 is_stmt 0 discriminator 1
	movw r30,r18
	lsl r30
	rol r31
	add r30,r18
	adc r31,r19
	movw r18,r24
.LVL285:
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
	breq .L161
	.loc 1 929 0 is_stmt 1
	cp r26,r22
	brsh .L162
	.loc 1 930 0
	mov r22,r26
.LVL286:
.L162:
	.loc 1 932 0
	cp r21,r18
	brsh .L161
	.loc 1 933 0
	mov r21,r18
.LVL287:
.L161:
	.loc 1 936 0
	tst r21
	breq .L163
	.loc 1 936 0 is_stmt 0 discriminator 1
	cpi r22,lo8(-1)
	brne .L164
.L163:
	.loc 1 937 0 is_stmt 1
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 938 0
	std Z+1,r24
	rjmp .L165
.L164:
	.loc 1 940 0
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	st Z,r22
	.loc 1 941 0
	std Z+1,r21
.L165:
	.loc 1 927 0 discriminator 2
	subi r20,lo8(-(1))
.LVL288:
	rjmp .L167
.LVL289:
.L170:
.LBE67:
.LBE66:
	ldi r20,0
	ldi r22,lo8(-1)
	ldi r21,0
.L167:
.LVL290:
.LBB69:
.LBB68:
	.loc 1 927 0 is_stmt 0 discriminator 1
	cpi r20,lo8(4)
	brsh .+2
	rjmp .L166
.LBE68:
.LBE69:
	.loc 1 924 0 is_stmt 1 discriminator 2
	subi r23,lo8(-(1))
.LVL291:
.L160:
	.loc 1 924 0 is_stmt 0 discriminator 1
	cpi r23,lo8(4)
	brlo .L170
/* epilogue start */
.LBE65:
	.loc 1 945 0 is_stmt 1
	ret
	.cfi_endproc
.LFE55:
	.size	Midi_updateManualRange, .-Midi_updateManualRange
	.section	.text.init_Manual2Module,"ax",@progbits
.global	init_Manual2Module
	.type	init_Manual2Module, @function
init_Manual2Module:
.LFB56:
	.loc 1 947 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL292:
.LBB70:
	.loc 1 948 0
	ldi r22,lo8(3)
	rjmp .L172
.LVL293:
.L173:
.LBB71:
	.loc 1 951 0 discriminator 3
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
	.loc 1 952 0 discriminator 3
	adiw r26,1
	st X,r19
	sbiw r26,1
	.loc 1 953 0 discriminator 3
	movw r30,r26
	std Z+2,__zero_reg__
	.loc 1 950 0 discriminator 3
	subi r18,lo8(-(-1))
.LVL294:
	rjmp .L174
.LVL295:
.L176:
.LBE71:
	ldi r18,lo8(3)
.L174:
.LVL296:
.LBB72:
	.loc 1 950 0 is_stmt 0 discriminator 1
	tst r18
	brge .L173
.LBE72:
	.loc 1 948 0 is_stmt 1 discriminator 2
	subi r22,lo8(-(-1))
.LVL297:
.L172:
	.loc 1 948 0 is_stmt 0 discriminator 1
	tst r22
	brge .L176
.LBE70:
	.loc 1 957 0 is_stmt 1
	call eeprom_ReadManualMap
.LVL298:
	cpi r24,lo8(-1)
	brne .L175
	.loc 1 959 0
	sts midiEEPromLoadError,r24
	.loc 1 960 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(3)
	ldi r24,lo8(1)
	call log_putError
.LVL299:
	.loc 1 962 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
	ldi r24,lo8(36)
	st Z,r24
	.loc 1 963 0
	ldi r19,lo8(67)
	std Z+1,r19
	.loc 1 964 0
	std Z+2,__zero_reg__
	.loc 1 965 0
	ldi r18,lo8(68)
	std Z+3,r18
	.loc 1 966 0
	ldi r25,lo8(91)
	std Z+4,r25
	.loc 1 967 0
	ldi r20,lo8(32)
	std Z+5,r20
	.loc 1 968 0
	std Z+12,r24
	.loc 1 969 0
	std Z+13,r19
	.loc 1 970 0
	ldi r20,lo8(64)
	std Z+14,r20
	.loc 1 971 0
	std Z+15,r18
	.loc 1 972 0
	std Z+16,r25
	.loc 1 973 0
	ldi r20,lo8(96)
	std Z+17,r20
	.loc 1 974 0
	std Z+24,r24
	.loc 1 975 0
	std Z+25,r19
	.loc 1 976 0
	ldi r19,lo8(-128)
	std Z+26,r19
	.loc 1 977 0
	std Z+27,r18
	.loc 1 978 0
	std Z+28,r25
	.loc 1 979 0
	ldi r25,lo8(-96)
	std Z+29,r25
	.loc 1 980 0
	std Z+36,r24
	.loc 1 981 0
	ldi r24,lo8(65)
	std Z+37,r24
	.loc 1 982 0
	ldi r24,lo8(-64)
	std Z+38,r24
	.loc 1 983 0
	std Z+48,__zero_reg__
	.loc 1 984 0
	ldi r24,lo8(29)
	std Z+49,r24
	.loc 1 985 0
	ldi r24,lo8(-32)
	std Z+50,r24
.L175:
	.loc 1 987 0
	call Midi_updateManualRange
.LVL300:
	ret
	.cfi_endproc
.LFE56:
	.size	init_Manual2Module, .-init_Manual2Module
	.section	.text.manualNote_to_moduleBit,"ax",@progbits
.global	manualNote_to_moduleBit
	.type	manualNote_to_moduleBit, @function
manualNote_to_moduleBit:
.LFB57:
	.loc 1 991 0
	.cfi_startproc
.LVL301:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 994 0
	cpi r24,lo8(4)
	brsh .L178
.LBB73:
	.loc 1 997 0
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
.LVL302:
	.loc 1 998 0
	ldi r24,lo8(4)
.LVL303:
.L181:
	.loc 1 1000 0
	ld r18,Z
	cp r22,r18
	brlo .L179
	.loc 1 1000 0 is_stmt 0 discriminator 1
	ldd r25,Z+1
	cp r25,r22
	brlo .L179
	.loc 1 1003 0 is_stmt 1
	ldd r25,Z+2
	sub r22,r18
.LVL304:
	.loc 1 1004 0
	ldi r24,0
.LVL305:
	add r25,r22
	ret
.LVL306:
.L179:
	.loc 1 1006 0
	adiw r30,3
.LVL307:
	.loc 1 1007 0
	subi r24,lo8(-(-1))
.LVL308:
	brne .L181
.LVL309:
.L178:
.LBE73:
	.loc 1 1011 0
	ldi r24,lo8(-1)
	ldi r25,0
	.loc 1 1012 0
	ret
	.cfi_endproc
.LFE57:
	.size	manualNote_to_moduleBit, .-manualNote_to_moduleBit
	.section	.text.moduleBit_to_manualNote,"ax",@progbits
.global	moduleBit_to_manualNote
	.type	moduleBit_to_manualNote, @function
moduleBit_to_manualNote:
.LFB58:
	.loc 1 1014 0
	.cfi_startproc
.LVL310:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1021 0
	ldi r27,0
	.loc 1 1020 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
.LVL311:
.L187:
.LBB74:
	.loc 1 1023 0
	ldi r20,lo8(4)
	rjmp .L183
.LVL312:
.L186:
	.loc 1 1024 0
	ldd r21,Z+2
	cp r24,r21
	brlo .L184
	.loc 1 1024 0 is_stmt 0 discriminator 1
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
	brlt .L184
.LVL313:
	.loc 1 1027 0 is_stmt 1
	mov r25,r24
	sub r25,r21
	.loc 1 1028 0
	mov r24,r27
	add r25,r26
	ret
.LVL314:
.L184:
	.loc 1 1030 0 discriminator 2
	adiw r30,3
.LVL315:
	.loc 1 1023 0 discriminator 2
	subi r20,lo8(-(-1))
.LVL316:
.L183:
	.loc 1 1023 0 is_stmt 0 discriminator 1
	cpse r20,__zero_reg__
	rjmp .L186
.LBE74:
	.loc 1 1032 0 is_stmt 1
	subi r27,lo8(-(1))
.LVL317:
	.loc 1 1033 0
	cpi r27,lo8(5)
	brlo .L187
	.loc 1 1037 0
	ldi r24,lo8(-1)
.LVL318:
	ldi r25,0
	.loc 1 1038 0
	ret
	.cfi_endproc
.LFE58:
	.size	moduleBit_to_manualNote, .-moduleBit_to_manualNote
	.section	.text.manual_NoteOnOff,"ax",@progbits
.global	manual_NoteOnOff
	.type	manual_NoteOnOff, @function
manual_NoteOnOff:
.LFB59:
	.loc 1 1040 0
	.cfi_startproc
.LVL319:
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
	.loc 1 1042 0
	call manualNote_to_moduleBit
.LVL320:
	.loc 1 1044 0
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
.LVL321:
	.loc 1 1045 0
	mov r17,r25
	andi r17,lo8(31)
.LVL322:
	.loc 1 1046 0
	cpse r24,__zero_reg__
	rjmp .L189
	.loc 1 1047 0
	lds r24,pipe_Module+1
	and r24,r14
	brne .L190
	.loc 1 1047 0 is_stmt 0 discriminator 1
	tst r29
	brlt .L190
.LBB75:
	.loc 1 1049 0 is_stmt 1
	andi r29,lo8(127)
.LVL323:
	.loc 1 1052 0
	cpi r29,lo8(1)
	brne .L196
	ldi r25,lo8(32)
	rjmp .L191
.L196:
	ldi r25,0
.L191:
	.loc 1 1053 0 discriminator 4
	mov r24,r14
	or r25,r17
	call pipeMsgPush
.LVL324:
.L190:
.LBE75:
	.loc 1 1055 0
	andi r29,lo8(127)
.LVL325:
	.loc 1 1056 0
	brne .L192
	.loc 1 1058 0
	mov r22,r14
	mov r24,r17
	call pipe_off
.LVL326:
	rjmp .L189
.L192:
	.loc 1 1061 0
	mov r22,r14
	mov r24,r17
	call pipe_on
.LVL327:
.L189:
	.loc 1 1066 0
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldd r24,Z+1
	cpi r24,lo8(-1)
	breq .L188
	.loc 1 1069 0
	cpi r29,lo8(1)
	breq .L197
	.loc 1 1069 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
	tst r25
	breq .L198
	.loc 1 1069 0
	ldi r25,lo8(-112)
	rjmp .L194
.L197:
	ldi r25,lo8(-112)
	rjmp .L194
.L198:
	ldi r25,lo8(-128)
.L194:
	.loc 1 1069 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL328:
	.loc 1 1070 0 is_stmt 1 discriminator 6
	mov r24,r16
	call serial1MIDISend
.LVL329:
	.loc 1 1072 0 discriminator 6
	cpse r29,__zero_reg__
	rjmp .L199
	.loc 1 1072 0 is_stmt 0
	ldi r24,0
	rjmp .L195
.L199:
	ldi r24,lo8(64)
.L195:
	.loc 1 1072 0 discriminator 4
	call serial1MIDISend
.LVL330:
.L188:
/* epilogue start */
	.loc 1 1076 0 is_stmt 1
	pop r29
.LVL331:
	pop r28
.LVL332:
	pop r17
.LVL333:
	pop r16
.LVL334:
	pop r15
	pop r14
.LVL335:
	ret
	.cfi_endproc
.LFE59:
	.size	manual_NoteOnOff, .-manual_NoteOnOff
	.section	.text.midiAllNotesOff,"ax",@progbits
.global	midiAllNotesOff
	.type	midiAllNotesOff, @function
midiAllNotesOff:
.LFB23:
	.loc 1 146 0
	.cfi_startproc
.LVL336:
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
.LVL337:
	.loc 1 147 0
	mov r13,__zero_reg__
	.loc 1 148 0
	rjmp .L201
.LVL338:
.L205:
.LBB76:
	.loc 1 149 0
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
.LVL339:
	.loc 1 151 0
	ldi r24,lo8(3)
	cp r24,r11
	brlo .L202
.LBB77:
	.loc 1 153 0
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
.LVL340:
.LBB78:
	.loc 1 155 0
	ldd r15,Z+2
.LVL341:
	rjmp .L203
.L204:
	.loc 1 156 0 discriminator 3
	clr r14
	inc r14
	add r14,r22
.LVL342:
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
.LVL343:
	.loc 1 155 0 discriminator 3
	dec r15
.LVL344:
	.loc 1 156 0 discriminator 3
	mov r22,r14
.LVL345:
.L203:
	.loc 1 155 0 discriminator 1
	cpse r15,__zero_reg__
	rjmp .L204
.LBE78:
	.loc 1 158 0
	mov r30,r11
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL346:
	.loc 1 159 0
	cpi r24,lo8(16)
	brsh .L202
	.loc 1 161 0
	ori r24,lo8(-80)
.LVL347:
	call serial1MIDISend
.LVL348:
	.loc 1 162 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL349:
	.loc 1 163 0
	ldi r24,0
	call serial1MIDISend
.LVL350:
.L202:
.LBE77:
	.loc 1 170 0
	inc r13
.LVL351:
.L201:
.LBE76:
	.loc 1 148 0
	ldi r24,lo8(3)
	cp r24,r13
	brlo .+2
	rjmp .L205
/* epilogue start */
	.loc 1 172 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
.LVL352:
	pop r12
.LVL353:
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
	.loc 1 174 0
	.cfi_startproc
.LVL354:
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
	.loc 1 176 0
	cpi r24,lo8(4)
	brsh .L207
	.loc 1 176 0 is_stmt 0 discriminator 1
	mov r16,r24
	ldi r17,0
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ld r29,Z
	cpi r29,lo8(-1)
	breq .L207
	.loc 1 176 0 discriminator 2
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r24,Z+1
.LVL355:
	cpi r24,lo8(-1)
	brne .L208
.LBB79:
	rjmp .L207
.LVL356:
.L209:
	.loc 1 178 0 is_stmt 1 discriminator 3
	ldi r20,lo8(-128)
	mov r22,r29
	mov r24,r28
	call manual_NoteOnOff
.LVL357:
	.loc 1 177 0 discriminator 3
	subi r29,lo8(-(1))
.LVL358:
.L208:
	.loc 1 177 0 is_stmt 0 discriminator 1
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r24,Z+1
	cp r24,r29
	brsh .L209
.LVL359:
.L207:
.LBE79:
	.loc 1 182 0 is_stmt 1
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL360:
	.loc 1 183 0
	cpi r24,lo8(16)
	brsh .L206
	.loc 1 185 0
	ori r24,lo8(-80)
.LVL361:
	call serial1MIDISend
.LVL362:
	.loc 1 186 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL363:
	.loc 1 187 0
	ldi r24,0
	call serial1MIDISend
.LVL364:
.L206:
/* epilogue start */
	.loc 1 190 0
	pop r29
	pop r28
.LVL365:
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
	.loc 1 192 0
	.cfi_startproc
	push r28
.LCFI59:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL366:
.LBB80:
	.loc 1 193 0
	ldi r28,0
	rjmp .L212
.LVL367:
.L213:
	.loc 1 194 0 discriminator 3
	mov r24,r28
	call midi_ManualOff
.LVL368:
	.loc 1 193 0 discriminator 3
	subi r28,lo8(-(1))
.LVL369:
.L212:
	.loc 1 193 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brlo .L213
/* epilogue start */
.LBE80:
	.loc 1 199 0 is_stmt 1
	pop r28
.LVL370:
	ret
	.cfi_endproc
.LFE25:
	.size	midi_AllManualsOff, .-midi_AllManualsOff
	.section	.text.midi_CheckRxActiveSense,"ax",@progbits
.global	midi_CheckRxActiveSense
	.type	midi_CheckRxActiveSense, @function
midi_CheckRxActiveSense:
.LFB26:
	.loc 1 201 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 202 0
	lds r24,midiRxActivceSensing
	tst r24
	breq .L214
	.loc 1 204 0
	lds r24,swTimer+6
	cpse r24,__zero_reg__
	rjmp .L214
	.loc 1 206 0
	call midi_AllManualsOff
.LVL371:
	.loc 1 207 0
	sts midiRxActivceSensing,__zero_reg__
.L214:
	ret
	.cfi_endproc
.LFE26:
	.size	midi_CheckRxActiveSense, .-midi_CheckRxActiveSense
	.section	.text.midiNote_to_Manual,"ax",@progbits
.global	midiNote_to_Manual
	.type	midiNote_to_Manual, @function
midiNote_to_Manual:
.LFB53:
	.loc 1 869 0
	.cfi_startproc
.LVL372:
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
	.loc 1 870 0
	mov r29,r24
	andi r29,lo8(15)
.LVL373:
.LBB81:
	.loc 1 872 0
	ldi r28,0
.LBE81:
	.loc 1 871 0
	ldi r25,0
.LBB84:
	.loc 1 872 0
	rjmp .L217
.LVL374:
.L220:
	.loc 1 873 0
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
	brsh .L218
.LVL375:
.LBB82:
	.loc 1 875 0
	movw r26,r30
	ldd r22,Z+1
	mov r23,r16
	sub r23,r22
	mov r22,r23
.LVL376:
	.loc 1 876 0
	brmi .L218
	.loc 1 876 0 is_stmt 0 discriminator 1
	movw r30,r26
	ldd r30,Z+2
	ldi r31,0
	mov r26,r23
	lsl r23
	sbc r27,r27
	cp r26,r30
	cpc r27,r31
	brge .L218
.LVL377:
.LBB83:
	.loc 1 879 0 is_stmt 1
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
.LVL378:
	add r22,r25
.LVL379:
	.loc 1 880 0
	cpi r17,lo8(1)
	brne .L219
	.loc 1 881 0
	sts midiLastInManual,r24
	.loc 1 882 0
	sts midiLastInNote,r22
.L219:
	.loc 1 884 0
	mov r20,r17
.LVL380:
	call manual_NoteOnOff
.LVL381:
	.loc 1 885 0
	ldi r25,lo8(-1)
.LVL382:
.L218:
.LBE83:
.LBE82:
	.loc 1 872 0 discriminator 2
	subi r28,lo8(-(1))
.LVL383:
.L217:
	.loc 1 872 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brsh .+2
	rjmp .L220
.LBE84:
	.loc 1 889 0 is_stmt 1
	cpi r17,lo8(1)
	brne .L221
	.loc 1 889 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L221
	.loc 1 891 0 is_stmt 1
	sts midiLastInNote,r16
	.loc 1 892 0
	sts midiLastInChannel,r29
	.loc 1 893 0
	ldi r24,lo8(-1)
	sts midiLastInManual,r24
.L221:
	.loc 1 896 0
	lds r24,midiThrough
	cpse r29,r24
	rjmp .L216
	.loc 1 898 0
	lds r24,midiThrough+1
	cpi r24,lo8(-1)
	breq .L216
	.loc 1 900 0
	cpi r17,lo8(1)
	breq .L225
	.loc 1 900 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
.LVL384:
	tst r25
	breq .L226
	.loc 1 900 0
	ldi r25,lo8(-112)
	rjmp .L223
.LVL385:
.L225:
	ldi r25,lo8(-112)
.LVL386:
	rjmp .L223
.L226:
	ldi r25,lo8(-128)
.L223:
	.loc 1 900 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL387:
	.loc 1 902 0 is_stmt 1 discriminator 6
	mov r24,r16
	call serial1MIDISend
.LVL388:
	.loc 1 904 0 discriminator 6
	cpse r17,__zero_reg__
	rjmp .L227
	.loc 1 904 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L228
	.loc 1 904 0
	ldi r24,lo8(64)
	rjmp .L224
.L227:
	ldi r24,lo8(64)
	rjmp .L224
.L228:
	ldi r24,0
.L224:
	.loc 1 904 0 discriminator 6
	call serial1MIDISend
.LVL389:
.L216:
/* epilogue start */
	.loc 1 907 0 is_stmt 1
	pop r29
.LVL390:
	pop r28
.LVL391:
	pop r17
.LVL392:
	pop r16
.LVL393:
	ret
	.cfi_endproc
.LFE53:
	.size	midiNote_to_Manual, .-midiNote_to_Manual
	.section	.text.midiIn_Process,"ax",@progbits
.global	midiIn_Process
	.type	midiIn_Process, @function
midiIn_Process:
.LFB29:
	.loc 1 246 0
	.cfi_startproc
.LVL394:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 247 0
	tst r24
	brlt .+2
	rjmp .L230
	.loc 1 250 0
	cpi r24,lo8(-8)
	brlo .L231
	.loc 1 252 0
	cpi r24,lo8(-2)
	brne .L232
	.loc 1 253 0
	ldi r24,lo8(1)
.LVL395:
	sts midiRxActivceSensing,r24
.LBB85:
	.loc 1 254 0
	in r25,__SREG__
.LVL396:
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
	.loc 1 254 0
	rjmp .L233
.LVL397:
.L234:
	.loc 1 254 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(25)
.LVL398:
	std Z+6,r24
	std Z+7,__zero_reg__
.LVL399:
	.loc 1 254 0 discriminator 3
	ldi r24,0
.LVL400:
.L233:
	.loc 1 254 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L234
.LVL401:
.LBB88:
.LBB89:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL402:
.LBE89:
.LBE88:
.LBE85:
	ret
.LVL403:
.L232:
	.loc 1 255 0
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L229
	.loc 1 256 0
	call midiAllReset
.LVL404:
	ret
.LVL405:
.L231:
	.loc 1 261 0
	sts midiLastCommand,r24
	.loc 1 262 0
	sts midiDataByteCount,__zero_reg__
	.loc 1 263 0
	ldi r25,lo8(-128)
	add r25,r24
	cpi r25,lo8(64)
	brsh .L236
	.loc 1 265 0
	ldi r24,lo8(2)
.LVL406:
	sts midiDataByteExpected,r24
	ret
.LVL407:
.L236:
	.loc 1 266 0
	ldi r25,lo8(32)
	add r25,r24
	cpi r25,lo8(16)
	brsh .L237
	.loc 1 268 0
	ldi r24,lo8(2)
.LVL408:
	sts midiDataByteExpected,r24
	ret
.LVL409:
.L237:
	.loc 1 269 0
	cpi r24,lo8(-14)
	brne .L238
	.loc 1 271 0
	ldi r24,lo8(2)
.LVL410:
	sts midiDataByteExpected,r24
	ret
.LVL411:
.L238:
	.loc 1 272 0
	cpi r24,lo8(-16)
	brne .L239
	.loc 1 274 0
	ldi r24,lo8(-1)
.LVL412:
	sts midiDataByteExpected,r24
	ret
.LVL413:
.L239:
	.loc 1 275 0
	ldi r25,lo8(64)
	add r25,r24
	cpi r25,lo8(32)
	brsh .L240
	.loc 1 277 0
	ldi r24,lo8(1)
.LVL414:
	sts midiDataByteExpected,r24
	ret
.LVL415:
.L240:
	.loc 1 278 0
	cpi r24,lo8(-15)
	breq .L241
	.loc 1 278 0 is_stmt 0 discriminator 1
	cpi r24,lo8(-13)
	brne .L242
.L241:
	.loc 1 280 0 is_stmt 1
	ldi r24,lo8(1)
.LVL416:
	sts midiDataByteExpected,r24
	ret
.LVL417:
.L242:
	.loc 1 281 0
	cpi r24,lo8(-9)
	brne .+2
	rjmp .L229
	.loc 1 285 0
	sts midiDataByteExpected,__zero_reg__
	ret
.L230:
	.loc 1 291 0
	lds r30,midiDataByteCount
	cpi r30,lo8(8)
	brsh .L243
	.loc 1 293 0
	ldi r25,lo8(1)
	add r25,r30
	sts midiDataByteCount,r25
	ldi r31,0
	subi r30,lo8(-(midiDataByte))
	sbci r31,hi8(-(midiDataByte))
	st Z,r24
.L243:
	.loc 1 295 0
	lds r24,midiDataByteExpected
.LVL418:
	cpi r24,lo8(-1)
	breq .L229
	.loc 1 297 0
	lds r25,midiDataByteCount
	cp r25,r24
	brlo .L229
	.loc 1 299 0
	lds r25,midiLastCommand
	cpi r25,lo8(-16)
	brsh .L244
.LBB90:
	.loc 1 301 0
	mov r24,r25
	andi r24,lo8(15)
.LVL419:
	.loc 1 303 0
	andi r25,lo8(-16)
	cpi r25,lo8(-112)
	breq .L245
	brsh .L246
	cpi r25,lo8(-128)
	breq .L247
	rjmp .L244
.L246:
	cpi r25,lo8(-80)
	breq .L248
	cpi r25,lo8(-64)
	breq .L249
	rjmp .L244
.L247:
.LVL420:
	.loc 1 307 0
	ldi r20,0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL421:
	.loc 1 308 0
	rjmp .L244
.LVL422:
.L245:
	.loc 1 310 0
	lds r25,midiDataByte+1
	cpse r25,__zero_reg__
	rjmp .L251
	.loc 1 312 0
	ldi r20,0
	rjmp .L250
.L251:
	.loc 1 315 0
	ldi r20,lo8(1)
.L250:
.LVL423:
	.loc 1 317 0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL424:
	.loc 1 318 0
	rjmp .L244
.LVL425:
.L248:
	.loc 1 320 0
	lds r25,midiDataByte
	cpi r25,lo8(123)
	brne .L244
	.loc 1 321 0
	call midiAllNotesOff
.LVL426:
	rjmp .L244
.LVL427:
.L249:
	.loc 1 325 0
	lds r22,midiDataByte
	call midi_ProgramChange
.LVL428:
.L244:
.LBE90:
	.loc 1 332 0
	sts midiDataByteCount,__zero_reg__
.L229:
	ret
	.cfi_endproc
.LFE29:
	.size	midiIn_Process, .-midiIn_Process
	.section	.text.proc_ESPmidi,"ax",@progbits
.global	proc_ESPmidi
	.type	proc_ESPmidi, @function
proc_ESPmidi:
.LFB30:
	.loc 1 338 0
	.cfi_startproc
.LVL429:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 342 0
	lds r25,serESPMidiTmp+2
	mov r24,r25
.LVL430:
	andi r24,lo8(15)
.LVL431:
	.loc 1 344 0
	andi r25,lo8(-16)
	cpi r25,lo8(-128)
	breq .L254
	brsh .L255
	tst r25
	breq .L256
	ret
.L255:
	cpi r25,lo8(-112)
	breq .L257
	cpi r25,lo8(-80)
	breq .L258
	ret
.L254:
.LVL432:
	.loc 1 348 0
	ldi r20,0
	lds r22,serESPMidiTmp+1
	call midiNote_to_Manual
.LVL433:
	.loc 1 349 0
	ret
.LVL434:
.L257:
	.loc 1 351 0
	lds r25,serESPMidiTmp
	cpse r25,__zero_reg__
	rjmp .L261
	.loc 1 353 0
	ldi r20,0
	rjmp .L259
.L261:
	.loc 1 356 0
	ldi r20,lo8(1)
.L259:
.LVL435:
	.loc 1 358 0
	lds r22,serESPMidiTmp+1
	call midiNote_to_Manual
.LVL436:
	.loc 1 359 0
	ret
.LVL437:
.L258:
	.loc 1 361 0
	lds r25,serESPMidiTmp+1
	cpi r25,lo8(123)
	brne .L252
	.loc 1 362 0
	call midiAllNotesOff
.LVL438:
	ret
.LVL439:
.L256:
	.loc 1 367 0
	lds r25,serESPMidiTmp+1
	mov r24,r25
.LVL440:
	andi r24,lo8(15)
.LVL441:
	.loc 1 368 0
	andi r25,lo8(-16)
	cpi r25,lo8(-64)
	brne .L252
	.loc 1 370 0
	lds r22,serESPMidiTmp
	call midi_ProgramChange
.LVL442:
.L252:
	ret
	.cfi_endproc
.LFE30:
	.size	proc_ESPmidi, .-proc_ESPmidi
	.section	.text.midiKeyPress_Process,"ax",@progbits
.global	midiKeyPress_Process
	.type	midiKeyPress_Process, @function
midiKeyPress_Process:
.LFB60:
	.loc 1 1080 0
	.cfi_startproc
.LVL443:
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
	.loc 1 1081 0
	call serial0USB_logPipeIn
.LVL444:
	.loc 1 1082 0
	mov r16,r28
	andi r16,lo8(-32)
.LVL445:
	.loc 1 1083 0
	andi r28,lo8(31)
	mov r11,r28
.LVL446:
	.loc 1 1087 0
	cpi r16,lo8(32)
	brne .+2
	rjmp .L284
	.loc 1 1087 0 is_stmt 0 discriminator 1
	tst r16
	brne .+2
	rjmp .L285
.LBB91:
	rjmp .L262
.LVL447:
.L283:
	.loc 1 1091 0 is_stmt 1
	sbrs r29,0
	rjmp .L265
	.loc 1 1093 0
	ldi r18,lo8(32)
	mul r28,r18
	movw r24,r0
	clr __zero_reg__
	mov r15,r11
	or r15,r24
	mov r24,r15
	call moduleBit_to_manualNote
.LVL448:
	mov r12,r24
.LVL449:
	mov r14,r25
	.loc 1 1095 0
	mov r17,r24
	cpi r24,lo8(-1)
	brne .+2
	rjmp .L266
.LBB92:
	.loc 1 1098 0
	mov r22,r25
	call Manual_to_MidiNote
.LVL450:
	mov r13,r25
.LVL451:
	.loc 1 1099 0
	cpi r24,lo8(-1)
	breq .L267
	.loc 1 1101 0
	cpi r16,lo8(32)
	breq .L286
	.loc 1 1101 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
	tst r25
	breq .L287
	.loc 1 1101 0
	ldi r25,lo8(-112)
	rjmp .L268
.L286:
	ldi r25,lo8(-112)
	rjmp .L268
.L287:
	ldi r25,lo8(-128)
.L268:
	.loc 1 1101 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL452:
	.loc 1 1103 0 is_stmt 1 discriminator 6
	mov r24,r13
	call serial1MIDISend
.LVL453:
	.loc 1 1105 0 discriminator 6
	cpse r16,__zero_reg__
	rjmp .L288
	.loc 1 1105 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L289
	.loc 1 1105 0
	ldi r24,lo8(64)
	rjmp .L269
.L288:
	ldi r24,lo8(64)
	rjmp .L269
.L289:
	ldi r24,0
.L269:
	.loc 1 1105 0 discriminator 6
	call serial1MIDISend
.LVL454:
	.loc 1 1107 0 is_stmt 1 discriminator 6
	cpi r16,lo8(32)
	brne .L267
	.loc 1 1109 0
	sts midiLastOutManual,r12
.LVL455:
	.loc 1 1110 0
	sts midiLastOutNote,r14
.LVL456:
.L267:
	.loc 1 1114 0
	ldi r20,lo8(1)
	cpi r16,lo8(32)
	breq .L270
	ldi r20,0
.L270:
	mov r13,r20
.LVL457:
	.loc 1 1116 0
	cpse r17,__zero_reg__
	rjmp .L271
	.loc 1 1117 0
	lds r24,midi_Couplers
	cpi r24,lo8(-1)
	brne .L272
	.loc 1 1118 0
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL458:
.L272:
	.loc 1 1120 0
	lds r24,midi_Couplers+1
	cpi r24,lo8(-1)
	brne .L273
	.loc 1 1121 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL459:
.L273:
	.loc 1 1123 0
	lds r24,midi_Couplers+3
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L266
	.loc 1 1124 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL460:
	rjmp .L266
.L271:
	.loc 1 1126 0
	cpi r17,lo8(1)
	brne .L274
	.loc 1 1127 0
	lds r24,midi_Couplers+2
	cpi r24,lo8(-1)
	brne .L275
	.loc 1 1128 0
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL461:
.L275:
	.loc 1 1130 0
	lds r24,midi_Couplers+4
	cpi r24,lo8(-1)
	brne .L276
	.loc 1 1131 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL462:
.L276:
	.loc 1 1133 0
	lds r24,midi_Couplers+6
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L266
	.loc 1 1134 0
	mov r20,r13
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL463:
	rjmp .L266
.L274:
	.loc 1 1136 0
	cpi r17,lo8(2)
	brne .L277
	.loc 1 1137 0
	lds r24,midi_Couplers+5
	cpi r24,lo8(-1)
	brne .L278
	.loc 1 1138 0
	mov r22,r14
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL464:
.L278:
	.loc 1 1140 0
	lds r24,midi_Couplers+7
	cpi r24,lo8(-1)
	brne .L279
	.loc 1 1141 0
	mov r20,r13
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL465:
.L279:
	.loc 1 1143 0
	lds r24,midi_Couplers+8
	cpi r24,lo8(-1)
	brne .L266
	.loc 1 1144 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL466:
	rjmp .L266
.L277:
	.loc 1 1146 0
	cpi r17,lo8(3)
	brne .L266
	.loc 1 1147 0
	lds r24,midi_Couplers+9
	cpi r24,lo8(-1)
	brne .L280
	.loc 1 1148 0
	mov r22,r14
	ldi r24,0
	call manual_NoteOnOff
.LVL467:
.L280:
	.loc 1 1150 0
	lds r24,midi_Couplers+10
	cpi r24,lo8(-1)
	brne .L281
	.loc 1 1151 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL468:
.L281:
	.loc 1 1153 0
	lds r24,midi_Couplers+11
	cpi r24,lo8(-1)
	brne .L266
	.loc 1 1154 0
	mov r20,r13
	mov r22,r14
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL469:
.L266:
.LBE92:
	.loc 1 1159 0
	mov r24,r15
	call moduleBit_to_registerNr
.LVL470:
	cpi r16,lo8(32)
	brne .L290
	ldi r18,lo8(-128)
	rjmp .L282
.L290:
	ldi r18,0
.L282:
	.loc 1 1159 0 is_stmt 0 discriminator 4
	or r24,r18
	sts midi_RegisterChanged,r24
.L265:
	.loc 1 1162 0 is_stmt 1 discriminator 2
	lsr r29
.LVL471:
	.loc 1 1089 0 discriminator 2
	subi r28,lo8(-(1))
.LVL472:
	rjmp .L263
.LVL473:
.L284:
.LBE91:
	ldi r28,0
.LVL474:
	rjmp .L263
.LVL475:
.L285:
	ldi r28,0
.LVL476:
.L263:
.LBB93:
	.loc 1 1089 0 is_stmt 0 discriminator 1
	cpi r28,lo8(8)
	brsh .+2
	rjmp .L283
.LVL477:
.L262:
/* epilogue start */
.LBE93:
	.loc 1 1165 0 is_stmt 1
	pop r29
.LVL478:
	pop r28
	pop r17
	pop r16
.LVL479:
	pop r15
	pop r14
.LVL480:
	pop r13
	pop r12
	pop r11
.LVL481:
	ret
	.cfi_endproc
.LFE60:
	.size	midiKeyPress_Process, .-midiKeyPress_Process
	.section	.text.midiSendAllNotesOff,"ax",@progbits
.global	midiSendAllNotesOff
	.type	midiSendAllNotesOff, @function
midiSendAllNotesOff:
.LFB61:
	.loc 1 1169 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1170 0
	lds r24,midiThrough+1
	cpi r24,lo8(16)
	brsh .L291
	.loc 1 1171 0
	ori r24,lo8(-80)
	call serial1MIDISend
.LVL482:
	.loc 1 1172 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL483:
	.loc 1 1173 0
	ldi r24,0
	call serial1MIDISend
.LVL484:
.L291:
	ret
	.cfi_endproc
.LFE61:
	.size	midiSendAllNotesOff, .-midiSendAllNotesOff
	.section	.text.midi_SendActiveSense,"ax",@progbits
.global	midi_SendActiveSense
	.type	midi_SendActiveSense, @function
midi_SendActiveSense:
.LFB62:
	.loc 1 1185 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 1186 0
	ldi r24,lo8(-2)
	call serial1MIDISend
.LVL485:
	ret
	.cfi_endproc
.LFE62:
	.size	midi_SendActiveSense, .-midi_SendActiveSense
	.section	.text.midi_CheckTxActiveSense,"ax",@progbits
.global	midi_CheckTxActiveSense
	.type	midi_CheckTxActiveSense, @function
midi_CheckTxActiveSense:
.LFB27:
	.loc 1 212 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 215 0
	lds r24,swTimer+16
	tst r24
	breq .L295
	.loc 1 215 0 is_stmt 0 discriminator 1
	lds r24,swTimer+16
	cpi r24,lo8(-1)
	brne .L294
.L295:
.LBB94:
	.loc 1 217 0 is_stmt 1
	in r25,__SREG__
.LVL486:
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
	.loc 1 217 0
	ldi r24,lo8(1)
	rjmp .L297
.LVL487:
.L298:
	.loc 1 217 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(10)
.LVL488:
	std Z+16,r24
	std Z+17,__zero_reg__
.LVL489:
	.loc 1 217 0 discriminator 3
	ldi r24,0
.LVL490:
.L297:
	.loc 1 217 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L298
.LVL491:
.LBB97:
.LBB98:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL492:
.LBE98:
.LBE97:
.LBE94:
	.loc 1 218 0
	lds r24,midi_Setting
.LVL493:
	cpse r24,__zero_reg__
	.loc 1 219 0
	call midi_SendActiveSense
.LVL494:
.L299:
	.loc 1 222 0
	sts midiTxLastCmd,__zero_reg__
.L294:
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
	.long	0x2189
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF233
	.byte	0xc
	.long	.LASF234
	.long	.LASF235
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
	.byte	0xe9
	.long	0x4c4
	.uleb128 0xa
	.long	.LASF70
	.byte	0x7
	.byte	0xea
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF71
	.byte	0x7
	.byte	0xeb
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF72
	.byte	0x7
	.byte	0xec
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x7
	.byte	0xed
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
	.long	.LASF236
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0xe
	.long	.LASF237
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
	.byte	0x43
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
	.byte	0x45
	.long	0x4cf
	.long	.LLST0
	.uleb128 0x12
	.long	.Ldebug_ranges0+0
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x46
	.long	0x3b
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF77
	.byte	0x1
	.byte	0x3d
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
	.byte	0x4d
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
	.byte	0x4d
	.long	0x3b
	.long	.LLST2
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.byte	0x62
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
	.byte	0x63
	.long	0xb8
	.long	.LLST3
	.uleb128 0x11
	.long	.LASF79
	.byte	0x1
	.byte	0x65
	.long	0x3b
	.long	.LLST4
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF81
	.byte	0x1
	.byte	0x70
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
	.byte	0x70
	.long	0xb8
	.long	.LLST5
	.uleb128 0x11
	.long	.LASF79
	.byte	0x1
	.byte	0x71
	.long	0x3b
	.long	.LLST6
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.byte	0x8d
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x69e
	.uleb128 0x14
	.long	.LVL23
	.long	0x2088
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF83
	.byte	0x1
	.word	0x17e
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
	.word	0x17f
	.long	0x3b
	.long	.LLST7
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x1a
	.long	.LASF85
	.byte	0x1
	.word	0x180
	.long	0x3b
	.long	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF86
	.byte	0x1
	.word	0x189
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
	.word	0x18e
	.long	0x3b
	.long	.LLST9
	.byte	0
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x30
	.long	0x747
	.uleb128 0x1a
	.long	.LASF87
	.byte	0x1
	.word	0x19c
	.long	0x3b
	.long	.LLST10
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.word	0x19d
	.long	0x3b
	.long	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL32
	.long	0x2095
	.uleb128 0x1d
	.long	.LVL33
	.long	0x20a2
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
	.long	.LVL34
	.long	0x69e
	.uleb128 0x14
	.long	.LVL35
	.long	0x20af
	.uleb128 0x1d
	.long	.LVL43
	.long	0x20a2
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
	.long	.LVL44
	.long	0x20bc
	.uleb128 0x1f
	.long	.LVL45
	.long	0x20a2
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
	.word	0x1ae
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
	.word	0x1ae
	.long	0x3b
	.long	.LLST12
	.uleb128 0x22
	.long	.LASF78
	.byte	0x1
	.word	0x1b0
	.long	0x256
	.uleb128 0x23
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.word	0x1b3
	.long	0x832
	.long	.LLST13
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x1b5
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
	.word	0x1c5
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
	.word	0x1c5
	.long	0x3b
	.long	.LLST15
	.uleb128 0x25
	.long	.LASF94
	.byte	0x1
	.word	0x1c6
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
	.word	0x1c7
	.long	0x3b
	.long	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF96
	.byte	0x1
	.word	0x1d0
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
	.word	0x1d0
	.long	0x3b
	.long	.LLST18
	.uleb128 0x21
	.long	.LASF97
	.byte	0x1
	.word	0x1d0
	.long	0x3b
	.long	.LLST19
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x22
	.long	.LASF98
	.byte	0x1
	.word	0x1d5
	.long	0x256
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x78
	.long	0x92f
	.uleb128 0x1a
	.long	.LASF99
	.byte	0x1
	.word	0x1d8
	.long	0x3b
	.long	.LLST20
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.word	0x1d9
	.long	0x3b
	.long	.LLST21
	.uleb128 0x1a
	.long	.LASF101
	.byte	0x1
	.word	0x1da
	.long	0x3b
	.long	.LLST22
	.uleb128 0x1a
	.long	.LASF102
	.byte	0x1
	.word	0x1db
	.long	0x3b
	.long	.LLST23
	.byte	0
	.uleb128 0x1f
	.long	.LVL62
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
	.word	0x1ee
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
	.word	0x1ee
	.long	0x3b
	.long	.LLST24
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x1f1
	.long	0x3b
	.long	.LLST25
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x22
	.long	.LASF98
	.byte	0x1
	.word	0x1f4
	.long	0x256
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0xa8
	.long	0x9dc
	.uleb128 0x1a
	.long	.LASF99
	.byte	0x1
	.word	0x1f7
	.long	0x3b
	.long	.LLST26
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.word	0x1f8
	.long	0x3b
	.long	.LLST27
	.uleb128 0x1a
	.long	.LASF101
	.byte	0x1
	.word	0x1f9
	.long	0x3b
	.long	.LLST28
	.uleb128 0x1a
	.long	.LASF102
	.byte	0x1
	.word	0x1fa
	.long	0x3b
	.long	.LLST29
	.byte	0
	.uleb128 0x1f
	.long	.LVL76
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
	.word	0x20b
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
	.word	0x20b
	.long	0x3b
	.long	.LLST31
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x20c
	.long	0x3b
	.long	.LLST32
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.word	0x20d
	.long	0x3b
	.long	.LLST33
	.uleb128 0x1f
	.long	.LVL93
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
	.word	0x215
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
	.word	0x215
	.long	0x4cf
	.long	.LLST35
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x216
	.long	0x3b
	.long	.LLST36
	.uleb128 0x1a
	.long	.LASF102
	.byte	0x1
	.word	0x218
	.long	0x3b
	.long	.LLST37
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xd8
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.word	0x219
	.long	0x3b
	.long	.LLST38
	.uleb128 0x1f
	.long	.LVL104
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
	.word	0x230
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST39
	.byte	0x1
	.long	0xb89
	.uleb128 0x21
	.long	.LASF88
	.byte	0x1
	.word	0x230
	.long	0x3b
	.long	.LLST40
	.uleb128 0x21
	.long	.LASF108
	.byte	0x1
	.word	0x230
	.long	0x3b
	.long	.LLST41
	.uleb128 0x23
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x22
	.long	.LASF98
	.byte	0x1
	.word	0x234
	.long	0x256
	.uleb128 0x1b
	.long	.LBB37
	.long	.LBE37
	.long	0xb76
	.uleb128 0x1a
	.long	.LASF99
	.byte	0x1
	.word	0x237
	.long	0x3b
	.long	.LLST42
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.word	0x238
	.long	0x3b
	.long	.LLST43
	.uleb128 0x1a
	.long	.LASF101
	.byte	0x1
	.word	0x239
	.long	0x3b
	.long	.LLST44
	.uleb128 0x14
	.long	.LVL121
	.long	0x20c9
	.uleb128 0x14
	.long	.LVL123
	.long	0x20d6
	.byte	0
	.uleb128 0x1f
	.long	.LVL116
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
	.byte	0xe5
	.long	.LFB28
	.long	.LFE28
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xbac
	.uleb128 0x14
	.long	.LVL124
	.long	0xad6
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF110
	.byte	0x1
	.word	0x29c
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
	.word	0x29c
	.long	0x3b
	.long	.LLST46
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x29f
	.long	0x3b
	.long	.LLST47
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x1
	.word	0x2a0
	.long	0x4cf
	.long	.LLST48
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x1
	.word	0x2a1
	.long	0x3b
	.long	.LLST49
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x1
	.word	0x2a2
	.long	0x3b
	.long	.LLST50
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2a3
	.long	0x3b
	.long	.LLST51
	.uleb128 0x1f
	.long	.LVL133
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
	.word	0x2bf
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
	.word	0x2bf
	.long	0x3b
	.long	.LLST52
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x2c1
	.long	0x3b
	.long	.LLST53
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x1
	.word	0x2c2
	.long	0x4cf
	.long	.LLST54
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x1
	.word	0x2c3
	.long	0x3b
	.long	.LLST55
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x110
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2c4
	.long	0x3b
	.long	.LLST56
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF116
	.byte	0x1
	.word	0x2d6
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xce0
	.uleb128 0x21
	.long	.LASF117
	.byte	0x1
	.word	0x2d6
	.long	0x3b
	.long	.LLST57
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF118
	.byte	0x1
	.word	0x246
	.byte	0x1
	.long	0x3b
	.long	.LFB40
	.long	.LFE40
	.long	.LLST58
	.byte	0x1
	.long	0xdc3
	.uleb128 0x21
	.long	.LASF111
	.byte	0x1
	.word	0x246
	.long	0x3b
	.long	.LLST59
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x248
	.long	0x3b
	.long	.LLST60
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x128
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x1
	.word	0x24b
	.long	0x3b
	.long	.LLST61
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.word	0x24c
	.long	0x3b
	.long	.LLST62
	.uleb128 0x1a
	.long	.LASF120
	.byte	0x1
	.word	0x24d
	.long	0x4cf
	.long	.LLST63
	.uleb128 0x22
	.long	.LASF58
	.byte	0x1
	.word	0x25c
	.long	0xb8
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x140
	.long	0xda4
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x1
	.word	0x24e
	.long	0x3b
	.long	.LLST64
	.uleb128 0x23
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.word	0x252
	.long	0x3b
	.long	.LLST65
	.uleb128 0x1f
	.long	.LVL167
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
	.long	.LVL160
	.long	0xcb4
	.long	0xdb8
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL175
	.long	0x642
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF122
	.byte	0x1
	.word	0x263
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.long	.LLST66
	.byte	0x1
	.long	0xe70
	.uleb128 0x21
	.long	.LASF123
	.byte	0x1
	.word	0x263
	.long	0x3b
	.long	.LLST67
	.uleb128 0x21
	.long	.LASF111
	.byte	0x1
	.word	0x263
	.long	0x3b
	.long	.LLST68
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x158
	.long	0xe56
	.uleb128 0x1a
	.long	.LASF124
	.byte	0x1
	.word	0x266
	.long	0x3b
	.long	.LLST69
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x170
	.long	0xe31
	.uleb128 0x1a
	.long	.LASF125
	.byte	0x1
	.word	0x268
	.long	0x3b
	.long	.LLST70
	.byte	0
	.uleb128 0x1d
	.long	.LVL188
	.long	0xce0
	.long	0xe45
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL189
	.long	0xcb4
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL190
	.long	0x20e3
	.uleb128 0x1f
	.long	.LVL191
	.long	0x20e3
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
	.long	.LASF126
	.byte	0x1
	.word	0x283
	.long	.LFB42
	.long	.LFE42
	.long	.LLST71
	.byte	0x1
	.long	0xecc
	.uleb128 0x23
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x284
	.long	0x3b
	.long	.LLST72
	.uleb128 0x1d
	.long	.LVL195
	.long	0xcb4
	.long	0xeb5
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1f
	.long	.LVL196
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
	.long	.LASF127
	.byte	0x1
	.word	0x28a
	.byte	0x1
	.long	0x3b
	.long	.LFB43
	.long	.LFE43
	.long	.LLST73
	.byte	0x1
	.long	0xf67
	.uleb128 0x21
	.long	.LASF111
	.byte	0x1
	.word	0x28a
	.long	0x3b
	.long	.LLST74
	.uleb128 0x21
	.long	.LASF128
	.byte	0x1
	.word	0x28a
	.long	0x3b
	.long	.LLST75
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x290
	.long	0x3b
	.long	.LLST76
	.uleb128 0x1b
	.long	.LBB54
	.long	.LBE54
	.long	0xf42
	.uleb128 0x1a
	.long	.LASF120
	.byte	0x1
	.word	0x292
	.long	0x4cf
	.long	.LLST77
	.uleb128 0x14
	.long	.LVL204
	.long	0xa5b
	.byte	0
	.uleb128 0x14
	.long	.LVL200
	.long	0xe70
	.uleb128 0x14
	.long	.LVL201
	.long	0x20f0
	.uleb128 0x14
	.long	.LVL208
	.long	0x606
	.uleb128 0x14
	.long	.LVL210
	.long	0x20fd
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF129
	.byte	0x1
	.word	0x2dd
	.long	.LFB47
	.long	.LFE47
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xfdf
	.uleb128 0x1d
	.long	.LVL213
	.long	0x210a
	.long	0xf95
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x1d
	.long	.LVL214
	.long	0x210a
	.long	0xfa9
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x14
	.long	.LVL215
	.long	0x210a
	.uleb128 0x14
	.long	.LVL216
	.long	0x210a
	.uleb128 0x1d
	.long	.LVL217
	.long	0x210a
	.long	0xfcf
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1f
	.long	.LVL218
	.long	0x2117
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF130
	.byte	0x1
	.word	0x2ed
	.long	.LFB48
	.long	.LFE48
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1021
	.uleb128 0x14
	.long	.LVL219
	.long	0x2124
	.uleb128 0x1f
	.long	.LVL220
	.long	0x20a2
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
	.long	.LASF131
	.byte	0x1
	.word	0x2f3
	.byte	0x1
	.long	.LFB49
	.long	.LFE49
	.long	.LLST78
	.byte	0x1
	.long	0x1199
	.uleb128 0x21
	.long	.LASF132
	.byte	0x1
	.word	0x2f3
	.long	0x3b
	.long	.LLST79
	.uleb128 0x23
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2f5
	.long	0x3b
	.long	.LLST80
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x190
	.uleb128 0x1a
	.long	.LASF133
	.byte	0x1
	.word	0x2f7
	.long	0x4d5
	.long	.LLST81
	.uleb128 0x24
	.string	"reg"
	.byte	0x1
	.word	0x2fd
	.long	0x3b
	.long	.LLST82
	.uleb128 0x1b
	.long	.LBB57
	.long	.LBE57
	.long	0x10d7
	.uleb128 0x1a
	.long	.LASF134
	.byte	0x1
	.word	0x30c
	.long	0x3b
	.long	.LLST83
	.uleb128 0x1d
	.long	.LVL234
	.long	0x942
	.long	0x10b9
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL236
	.long	0x942
	.long	0x10cd
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL239
	.long	0x210a
	.byte	0
	.uleb128 0x1b
	.long	.LBB58
	.long	.LBE58
	.long	0x1126
	.uleb128 0x1a
	.long	.LASF134
	.byte	0x1
	.word	0x310
	.long	0x3b
	.long	.LLST84
	.uleb128 0x1d
	.long	.LVL242
	.long	0x942
	.long	0x1108
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL244
	.long	0x942
	.long	0x111c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL247
	.long	0x210a
	.byte	0
	.uleb128 0x14
	.long	.LVL224
	.long	0x2131
	.uleb128 0x14
	.long	.LVL226
	.long	0x210a
	.uleb128 0x1d
	.long	.LVL227
	.long	0x210a
	.long	0x114c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1d
	.long	.LVL229
	.long	0x942
	.long	0x1160
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL230
	.long	0x210a
	.uleb128 0x1d
	.long	.LVL231
	.long	0x942
	.long	0x117d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL232
	.long	0x210a
	.uleb128 0x1f
	.long	.LVL249
	.long	0x210a
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
	.long	.LASF135
	.byte	0x1
	.word	0x31b
	.long	.LFB50
	.long	.LFE50
	.long	.LLST85
	.byte	0x1
	.long	0x1208
	.uleb128 0x23
	.long	.LBB60
	.long	.LBE60
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x31c
	.long	0x3b
	.long	.LLST86
	.uleb128 0x23
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x1a
	.long	.LASF133
	.byte	0x1
	.word	0x31e
	.long	0x4d5
	.long	.LLST87
	.uleb128 0x1a
	.long	.LASF136
	.byte	0x1
	.word	0x31f
	.long	0x3b
	.long	.LLST88
	.uleb128 0x14
	.long	.LVL255
	.long	0x2131
	.uleb128 0x14
	.long	.LVL263
	.long	0x2117
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF137
	.byte	0x1
	.word	0x329
	.long	.LFB51
	.long	.LFE51
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x129d
	.uleb128 0x1a
	.long	.LASF138
	.byte	0x1
	.word	0x32a
	.long	0x129d
	.long	.LLST89
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x1a8
	.long	0x124a
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x32d
	.long	0x3b
	.long	.LLST90
	.byte	0
	.uleb128 0x14
	.long	.LVL270
	.long	0x213e
	.uleb128 0x1d
	.long	.LVL271
	.long	0x20a2
	.long	0x1275
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
	.long	.LVL272
	.long	0x214b
	.uleb128 0x1f
	.long	.LVL273
	.long	0x20a2
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
	.long	.LASF139
	.byte	0x1
	.word	0x351
	.long	.LFB52
	.long	.LFE52
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1301
	.uleb128 0x1b
	.long	.LBB64
	.long	.LBE64
	.long	0x12d9
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x353
	.long	0x3b
	.long	.LLST91
	.byte	0
	.uleb128 0x14
	.long	.LVL277
	.long	0x2158
	.uleb128 0x1f
	.long	.LVL278
	.long	0x20a2
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
	.long	.LASF140
	.byte	0x1
	.word	0x38d
	.byte	0x1
	.long	0x1f6
	.long	.LFB54
	.long	.LFE54
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x134b
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x38d
	.long	0x3b
	.long	.LLST92
	.uleb128 0x2a
	.long	.LASF33
	.byte	0x1
	.word	0x38d
	.long	0x3b
	.byte	0x1
	.byte	0x66
	.uleb128 0x22
	.long	.LASF78
	.byte	0x1
	.word	0x38e
	.long	0x1f6
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF141
	.byte	0x1
	.word	0x39b
	.long	.LFB55
	.long	.LFE55
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x13ba
	.uleb128 0x23
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x39c
	.long	0x3b
	.long	.LLST93
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x1a
	.long	.LASF142
	.byte	0x1
	.word	0x39d
	.long	0x3b
	.long	.LLST94
	.uleb128 0x1a
	.long	.LASF143
	.byte	0x1
	.word	0x39e
	.long	0x3b
	.long	.LLST95
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x1a
	.long	.LASF144
	.byte	0x1
	.word	0x39f
	.long	0x3b
	.long	.LLST96
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF145
	.byte	0x1
	.word	0x3b3
	.long	.LFB56
	.long	.LFE56
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1439
	.uleb128 0x1b
	.long	.LBB70
	.long	.LBE70
	.long	0x1404
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x3b4
	.long	0x29
	.long	.LLST97
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1d8
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.word	0x3b6
	.long	0x29
	.long	.LLST98
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL298
	.long	0x2165
	.uleb128 0x1d
	.long	.LVL299
	.long	0x20a2
	.long	0x142f
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
	.long	.LVL300
	.long	0x134b
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF146
	.byte	0x1
	.word	0x3df
	.byte	0x1
	.long	0x256
	.long	.LFB57
	.long	.LFE57
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x14ad
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x3df
	.long	0x3b
	.long	.LLST99
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x3df
	.long	0x3b
	.long	.LLST100
	.uleb128 0x22
	.long	.LASF78
	.byte	0x1
	.word	0x3e1
	.long	0x256
	.uleb128 0x23
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.word	0x3e4
	.long	0x14ad
	.long	.LLST101
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x3e6
	.long	0x3b
	.long	.LLST102
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x294
	.uleb128 0x20
	.byte	0x1
	.long	.LASF147
	.byte	0x1
	.word	0x3f6
	.byte	0x1
	.long	0x226
	.long	.LFB58
	.long	.LFE58
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1527
	.uleb128 0x21
	.long	.LASF38
	.byte	0x1
	.word	0x3f6
	.long	0x3b
	.long	.LLST103
	.uleb128 0x22
	.long	.LASF78
	.byte	0x1
	.word	0x3fa
	.long	0x226
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.word	0x3fb
	.long	0x14ad
	.long	.LLST104
	.uleb128 0x1a
	.long	.LASF35
	.byte	0x1
	.word	0x3fd
	.long	0x3b
	.long	.LLST105
	.uleb128 0x23
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x3ff
	.long	0x3b
	.long	.LLST106
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF148
	.byte	0x1
	.word	0x410
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.long	.LLST107
	.byte	0x1
	.long	0x1636
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x410
	.long	0x3b
	.long	.LLST108
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x410
	.long	0x3b
	.long	.LLST109
	.uleb128 0x21
	.long	.LASF108
	.byte	0x1
	.word	0x410
	.long	0x3b
	.long	.LLST110
	.uleb128 0x22
	.long	.LASF149
	.byte	0x1
	.word	0x411
	.long	0x256
	.uleb128 0x1a
	.long	.LASF150
	.byte	0x1
	.word	0x414
	.long	0x3b
	.long	.LLST111
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.word	0x415
	.long	0x3b
	.long	.LLST112
	.uleb128 0x1b
	.long	.LBB75
	.long	.LBE75
	.long	0x15c1
	.uleb128 0x22
	.long	.LASF151
	.byte	0x1
	.word	0x41a
	.long	0xe2
	.uleb128 0x14
	.long	.LVL324
	.long	0x2172
	.byte	0
	.uleb128 0x1d
	.long	.LVL320
	.long	0x1439
	.long	0x15db
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
	.long	.LVL326
	.long	0x20d6
	.long	0x15f5
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
	.long	.LVL327
	.long	0x20c9
	.long	0x160f
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
	.long	.LVL328
	.long	0x20e3
	.uleb128 0x1d
	.long	.LVL329
	.long	0x20e3
	.long	0x162c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL330
	.long	0x20e3
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF152
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST113
	.byte	0x1
	.long	0x1708
	.uleb128 0x16
	.long	.LASF123
	.byte	0x1
	.byte	0x92
	.long	0x3b
	.long	.LLST114
	.uleb128 0x11
	.long	.LASF153
	.byte	0x1
	.byte	0x93
	.long	0x3b
	.long	.LLST115
	.uleb128 0x23
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0x95
	.long	0x3b
	.long	.LLST116
	.uleb128 0x23
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0x99
	.long	0x3b
	.long	.LLST117
	.uleb128 0x11
	.long	.LASF154
	.byte	0x1
	.byte	0x9e
	.long	0x3b
	.long	.LLST118
	.uleb128 0x1b
	.long	.LBB78
	.long	.LBE78
	.long	0x16d8
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x9b
	.long	0x3b
	.long	.LLST119
	.uleb128 0x1f
	.long	.LVL343
	.long	0x1527
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL348
	.long	0x20e3
	.uleb128 0x1d
	.long	.LVL349
	.long	0x20e3
	.long	0x16f5
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL350
	.long	0x20e3
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
	.long	.LASF155
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST120
	.byte	0x1
	.long	0x17a6
	.uleb128 0x16
	.long	.LASF35
	.byte	0x1
	.byte	0xae
	.long	0x3b
	.long	.LLST121
	.uleb128 0x11
	.long	.LASF154
	.byte	0x1
	.byte	0xb6
	.long	0x3b
	.long	.LLST122
	.uleb128 0x1b
	.long	.LBB79
	.long	.LBE79
	.long	0x1779
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0xb1
	.long	0x3b
	.long	.LLST123
	.uleb128 0x1f
	.long	.LVL357
	.long	0x1527
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
	.long	.LVL362
	.long	0x20e3
	.uleb128 0x1d
	.long	.LVL363
	.long	0x20e3
	.long	0x1796
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL364
	.long	0x20e3
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF156
	.byte	0x1
	.byte	0xc0
	.long	.LFB25
	.long	.LFE25
	.long	.LLST124
	.byte	0x1
	.long	0x17e9
	.uleb128 0x23
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0xc1
	.long	0x3b
	.long	.LLST125
	.uleb128 0x1f
	.long	.LVL368
	.long	0x1708
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
	.long	.LASF157
	.byte	0x1
	.byte	0xc9
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x180c
	.uleb128 0x14
	.long	.LVL371
	.long	0x17a6
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF158
	.byte	0x1
	.word	0x365
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST126
	.byte	0x1
	.long	0x18fa
	.uleb128 0x21
	.long	.LASF123
	.byte	0x1
	.word	0x365
	.long	0x3b
	.long	.LLST127
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.word	0x365
	.long	0x3b
	.long	.LLST128
	.uleb128 0x21
	.long	.LASF108
	.byte	0x1
	.word	0x365
	.long	0x3b
	.long	.LLST129
	.uleb128 0x1a
	.long	.LASF159
	.byte	0x1
	.word	0x367
	.long	0x3b
	.long	.LLST130
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x1f0
	.long	0x18d3
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x368
	.long	0x3b
	.long	.LLST131
	.uleb128 0x23
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x1a
	.long	.LASF160
	.byte	0x1
	.word	0x36b
	.long	0x29
	.long	.LLST132
	.uleb128 0x23
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x1a
	.long	.LASF35
	.byte	0x1
	.word	0x36e
	.long	0x3b
	.long	.LLST133
	.uleb128 0x1a
	.long	.LASF161
	.byte	0x1
	.word	0x36f
	.long	0x3b
	.long	.LLST134
	.uleb128 0x1f
	.long	.LVL381
	.long	0x1527
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
	.long	.LVL387
	.long	0x20e3
	.uleb128 0x1d
	.long	.LVL388
	.long	0x20e3
	.long	0x18f0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL389
	.long	0x20e3
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF162
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x19dd
	.uleb128 0x16
	.long	.LASF163
	.byte	0x1
	.byte	0xf6
	.long	0x3b
	.long	.LLST135
	.uleb128 0x1b
	.long	.LBB85
	.long	.LBE85
	.long	0x1977
	.uleb128 0x11
	.long	.LASF164
	.byte	0x1
	.byte	0xfe
	.long	0x3b
	.long	.LLST136
	.uleb128 0x11
	.long	.LASF165
	.byte	0x1
	.byte	0xfe
	.long	0x3b
	.long	.LLST137
	.uleb128 0x2d
	.long	0x54d
	.long	.LBB86
	.long	.LBE86
	.byte	0x1
	.byte	0xfe
	.uleb128 0x2e
	.long	0x55a
	.long	.LBB88
	.long	.LBE88
	.byte	0x1
	.byte	0xfe
	.uleb128 0x2f
	.long	0x567
	.long	.LLST138
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LBB90
	.long	.LBE90
	.long	0x19d3
	.uleb128 0x1a
	.long	.LASF123
	.byte	0x1
	.word	0x12d
	.long	0x3b
	.long	.LLST139
	.uleb128 0x1a
	.long	.LASF166
	.byte	0x1
	.word	0x12e
	.long	0x3b
	.long	.LLST140
	.uleb128 0x1d
	.long	.LVL421
	.long	0x180c
	.long	0x19b7
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL424
	.long	0x180c
	.uleb128 0x14
	.long	.LVL426
	.long	0x1636
	.uleb128 0x14
	.long	.LVL428
	.long	0xdc3
	.byte	0
	.uleb128 0x14
	.long	.LVL404
	.long	0x67b
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF167
	.byte	0x1
	.word	0x152
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1a57
	.uleb128 0x21
	.long	.LASF168
	.byte	0x1
	.word	0x152
	.long	0x3b
	.long	.LLST141
	.uleb128 0x1a
	.long	.LASF123
	.byte	0x1
	.word	0x156
	.long	0x3b
	.long	.LLST142
	.uleb128 0x1a
	.long	.LASF166
	.byte	0x1
	.word	0x157
	.long	0x3b
	.long	.LLST143
	.uleb128 0x1d
	.long	.LVL433
	.long	0x180c
	.long	0x1a3b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL436
	.long	0x180c
	.uleb128 0x14
	.long	.LVL438
	.long	0x1636
	.uleb128 0x14
	.long	.LVL442
	.long	0xdc3
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF169
	.byte	0x1
	.word	0x438
	.byte	0x1
	.long	.LFB60
	.long	.LFE60
	.long	.LLST144
	.byte	0x1
	.long	0x1cd4
	.uleb128 0x21
	.long	.LASF170
	.byte	0x1
	.word	0x438
	.long	0xe2
	.long	.LLST145
	.uleb128 0x1a
	.long	.LASF171
	.byte	0x1
	.word	0x43a
	.long	0x3b
	.long	.LLST146
	.uleb128 0x1a
	.long	.LASF172
	.byte	0x1
	.word	0x43b
	.long	0x3b
	.long	.LLST147
	.uleb128 0x1a
	.long	.LASF173
	.byte	0x1
	.word	0x43c
	.long	0x3b
	.long	.LLST148
	.uleb128 0x1a
	.long	.LASF47
	.byte	0x1
	.word	0x43d
	.long	0x226
	.long	.LLST149
	.uleb128 0x1a
	.long	.LASF174
	.byte	0x1
	.word	0x43e
	.long	0x1f6
	.long	.LLST150
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x208
	.long	0x1cca
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x441
	.long	0x3b
	.long	.LLST151
	.uleb128 0x1b
	.long	.LBB92
	.long	.LBE92
	.long	0x1ca5
	.uleb128 0x1a
	.long	.LASF166
	.byte	0x1
	.word	0x45a
	.long	0x3b
	.long	.LLST152
	.uleb128 0x1d
	.long	.LVL450
	.long	0x1301
	.long	0x1b20
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
	.long	.LVL452
	.long	0x20e3
	.uleb128 0x1d
	.long	.LVL453
	.long	0x20e3
	.long	0x1b3d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL454
	.long	0x20e3
	.uleb128 0x1d
	.long	.LVL458
	.long	0x1527
	.long	0x1b65
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
	.long	.LVL459
	.long	0x1527
	.long	0x1b84
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
	.long	.LVL460
	.long	0x1527
	.long	0x1ba3
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
	.long	.LVL461
	.long	0x1527
	.long	0x1bbc
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
	.long	.LVL462
	.long	0x1527
	.long	0x1bdb
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
	.long	.LVL463
	.long	0x1527
	.long	0x1bfa
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
	.long	.LVL464
	.long	0x1527
	.long	0x1c13
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
	.long	.LVL465
	.long	0x1527
	.long	0x1c32
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
	.long	.LVL466
	.long	0x1527
	.long	0x1c51
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
	.long	.LVL467
	.long	0x1527
	.long	0x1c6a
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
	.long	.LVL468
	.long	0x1527
	.long	0x1c89
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
	.long	.LVL469
	.long	0x1527
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
	.long	.LVL448
	.long	0x14b3
	.long	0x1cb9
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL470
	.long	0x838
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL444
	.long	0x217f
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF175
	.byte	0x1
	.word	0x491
	.long	.LFB61
	.long	.LFE61
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1d1b
	.uleb128 0x14
	.long	.LVL482
	.long	0x20e3
	.uleb128 0x1d
	.long	.LVL483
	.long	0x20e3
	.long	0x1d0b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL484
	.long	0x20e3
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF176
	.byte	0x1
	.word	0x4a1
	.long	.LFB62
	.long	.LFE62
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1d46
	.uleb128 0x1f
	.long	.LVL485
	.long	0x20e3
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
	.long	.LASF177
	.byte	0x1
	.byte	0xd4
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1dbd
	.uleb128 0x1b
	.long	.LBB94
	.long	.LBE94
	.long	0x1db3
	.uleb128 0x11
	.long	.LASF164
	.byte	0x1
	.byte	0xd9
	.long	0x3b
	.long	.LLST153
	.uleb128 0x11
	.long	.LASF165
	.byte	0x1
	.byte	0xd9
	.long	0x3b
	.long	.LLST154
	.uleb128 0x2d
	.long	0x54d
	.long	.LBB95
	.long	.LBE95
	.byte	0x1
	.byte	0xd9
	.uleb128 0x2e
	.long	0x55a
	.long	.LBB97
	.long	.LBE97
	.byte	0x1
	.byte	0xd9
	.uleb128 0x2f
	.long	0x567
	.long	.LLST155
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL494
	.long	0x1d1b
	.byte	0
	.uleb128 0x7
	.long	0x1dcd
	.long	0x1dcd
	.uleb128 0x8
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x30
	.long	0x112
	.uleb128 0x31
	.long	.LASF178
	.byte	0x6
	.byte	0x57
	.long	0x1ddf
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	0x1dbd
	.uleb128 0x7
	.long	0x196
	.long	0x1df4
	.uleb128 0x8
	.long	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x31
	.long	.LASF179
	.byte	0x6
	.byte	0xb3
	.long	0x1de4
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	.LASF180
	.byte	0x6
	.byte	0xba
	.long	0x1e0e
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	0x3b
	.uleb128 0x31
	.long	.LASF181
	.byte	0x6
	.byte	0xc3
	.long	0x1c6
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0x3b
	.long	0x1e30
	.uleb128 0x8
	.long	0x82
	.byte	0x2
	.byte	0
	.uleb128 0x31
	.long	.LASF182
	.byte	0x8
	.byte	0x35
	.long	0x1e20
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.long	.LASF183
	.byte	0x8
	.byte	0xa1
	.long	0x1e0e
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.long	.LASF184
	.byte	0x1
	.byte	0x2d
	.long	0x4e1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	manualMap
	.uleb128 0x7
	.long	0x2c4
	.long	0x1e6c
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x32
	.long	.LASF185
	.byte	0x1
	.byte	0x2e
	.long	0x1e5c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ManualNoteRange
	.uleb128 0x32
	.long	.LASF186
	.byte	0x1
	.byte	0x2f
	.long	0x4f7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiInMap
	.uleb128 0x32
	.long	.LASF187
	.byte	0x1
	.byte	0x37
	.long	0x340
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiThrough
	.uleb128 0x32
	.long	.LASF188
	.byte	0x1
	.byte	0x30
	.long	0x50d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiOutMap
	.uleb128 0x32
	.long	.LASF189
	.byte	0x1
	.byte	0x34
	.long	0x51d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerMap
	.uleb128 0x32
	.long	.LASF190
	.byte	0x1
	.byte	0x35
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerCount
	.uleb128 0x32
	.long	.LASF191
	.byte	0x1
	.byte	0x36
	.long	0x52d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	programMap
	.uleb128 0x32
	.long	.LASF192
	.byte	0x1
	.byte	0x38
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_RegisterChanged
	.uleb128 0x33
	.long	.LASF193
	.byte	0x1
	.word	0x2e9
	.long	0x53d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	reg_Out
	.uleb128 0x32
	.long	.LASF194
	.byte	0x1
	.byte	0x39
	.long	0x486
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_ccReg
	.uleb128 0x33
	.long	.LASF195
	.byte	0x1
	.word	0x2d3
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	prog_Display
	.uleb128 0x33
	.long	.LASF196
	.byte	0x1
	.word	0x2d4
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	prog_UpdDisplay
	.uleb128 0x32
	.long	.LASF197
	.byte	0x1
	.byte	0x31
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxActivceSensing
	.uleb128 0x32
	.long	.LASF198
	.byte	0x1
	.byte	0x32
	.long	0x4c4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Setting
	.uleb128 0x32
	.long	.LASF199
	.byte	0x1
	.byte	0x83
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutNote
	.uleb128 0x32
	.long	.LASF200
	.byte	0x1
	.byte	0x84
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutManual
	.uleb128 0x32
	.long	.LASF201
	.byte	0x1
	.byte	0x85
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInNote
	.uleb128 0x32
	.long	.LASF202
	.byte	0x1
	.byte	0x86
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInChannel
	.uleb128 0x32
	.long	.LASF203
	.byte	0x1
	.byte	0x87
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInManual
	.uleb128 0x32
	.long	.LASF204
	.byte	0x1
	.byte	0x88
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastProgram
	.uleb128 0x7
	.long	0x3b
	.long	0x1fe7
	.uleb128 0x8
	.long	0x82
	.byte	0xb
	.byte	0
	.uleb128 0x32
	.long	.LASF205
	.byte	0x1
	.byte	0x1d
	.long	0x1fd7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Couplers
	.uleb128 0x32
	.long	.LASF206
	.byte	0x1
	.byte	0x1e
	.long	0x200b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cplInfo
	.uleb128 0x34
	.uleb128 0x7
	.long	0x3b
	.long	0x201c
	.uleb128 0x8
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x32
	.long	.LASF207
	.byte	0x9
	.byte	0xaf
	.long	0x200c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x32
	.long	.LASF208
	.byte	0x1
	.byte	0x33
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiEEPromLoadError
	.uleb128 0x32
	.long	.LASF209
	.byte	0x1
	.byte	0x7e
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastCommand
	.uleb128 0x32
	.long	.LASF210
	.byte	0x1
	.byte	0x7f
	.long	0x3de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByte
	.uleb128 0x32
	.long	.LASF211
	.byte	0x1
	.byte	0x80
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteCount
	.uleb128 0x32
	.long	.LASF212
	.byte	0x1
	.byte	0x81
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteExpected
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF213
	.long	.LASF213
	.byte	0x6
	.byte	0x5e
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF214
	.long	.LASF214
	.byte	0xa
	.byte	0x24
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF215
	.long	.LASF215
	.byte	0xb
	.byte	0x32
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF216
	.long	.LASF216
	.byte	0xa
	.byte	0x26
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF217
	.long	.LASF217
	.byte	0xa
	.byte	0x29
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF218
	.long	.LASF218
	.byte	0x6
	.byte	0xda
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF219
	.long	.LASF219
	.byte	0x6
	.byte	0xdb
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF220
	.long	.LASF220
	.byte	0x8
	.byte	0x90
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF221
	.long	.LASF221
	.byte	0x6
	.byte	0xd1
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF222
	.long	.LASF222
	.byte	0xa
	.byte	0x32
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF223
	.long	.LASF223
	.byte	0xc
	.byte	0x84
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF224
	.long	.LASF224
	.byte	0x4
	.byte	0x25
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF225
	.long	.LASF225
	.byte	0xa
	.byte	0x25
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF226
	.long	.LASF226
	.byte	0xc
	.byte	0x83
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF227
	.long	.LASF227
	.byte	0xa
	.byte	0x20
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF228
	.long	.LASF228
	.byte	0xa
	.byte	0x28
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF229
	.long	.LASF229
	.byte	0xa
	.byte	0x21
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF230
	.long	.LASF230
	.byte	0xa
	.byte	0x1f
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF231
	.long	.LASF231
	.byte	0x5
	.byte	0x46
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF232
	.long	.LASF232
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
	.long	.LVL46
	.long	.LVL49
	.word	0x1
	.byte	0x68
	.long	.LVL49
	.long	.LVL50
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL50
	.long	.LVL54
	.word	0x1
	.byte	0x68
	.long	.LVL54
	.long	.LFE33
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL47
	.long	.LVL53
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
	.long	.LVL47
	.long	.LVL48
	.word	0x1
	.byte	0x62
	.long	.LVL50
	.long	.LVL53
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST15:
	.long	.LVL55
	.long	.LVL57
	.word	0x1
	.byte	0x68
	.long	.LVL57
	.long	.LVL58
	.word	0x1
	.byte	0x66
	.long	.LVL58
	.long	.LVL60
	.word	0x1
	.byte	0x68
	.long	.LVL60
	.long	.LFE34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL55
	.long	.LVL56
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL56
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
	.long	.LVL61
	.long	.LVL62-1
	.word	0x1
	.byte	0x68
	.long	.LVL62-1
	.long	.LVL73
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL73
	.long	.LVL74
	.word	0x1
	.byte	0x68
	.long	.LVL74
	.long	.LFE35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL61
	.long	.LVL62-1
	.word	0x1
	.byte	0x66
	.long	.LVL62-1
	.long	.LVL73
	.word	0x1
	.byte	0x6c
	.long	.LVL73
	.long	.LVL74
	.word	0x1
	.byte	0x66
	.long	.LVL74
	.long	.LFE35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL63
	.long	.LVL65
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST21:
	.long	.LVL64
	.long	.LVL69
	.word	0x1
	.byte	0x62
	.long	.LVL71
	.long	.LVL72
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST22:
	.long	.LVL66
	.long	.LVL68
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST23:
	.long	.LVL67
	.long	.LVL70
	.word	0x1
	.byte	0x64
	.long	.LVL71
	.long	.LVL72
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST24:
	.long	.LVL75
	.long	.LVL76-1
	.word	0x1
	.byte	0x68
	.long	.LVL76-1
	.long	.LVL88
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL88
	.long	.LVL89
	.word	0x1
	.byte	0x68
	.long	.LVL89
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
	.long	.LVL82
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL82
	.long	.LVL87
	.word	0x1
	.byte	0x68
	.long	.LVL87
	.long	.LVL89
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL89
	.long	.LFE36
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST26:
	.long	.LVL77
	.long	.LVL79
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST27:
	.long	.LVL78
	.long	.LVL83
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST28:
	.long	.LVL80
	.long	.LVL84
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST29:
	.long	.LVL81
	.long	.LVL85
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
	.long	.LVL90
	.long	.LVL92
	.word	0x1
	.byte	0x68
	.long	.LVL92
	.long	.LVL98
	.word	0x1
	.byte	0x61
	.long	.LVL98
	.long	.LFE37
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL91
	.long	.LVL92
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL92
	.long	.LVL96
	.word	0x1
	.byte	0x6d
	.long	.LVL96
	.long	.LFE37
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST33:
	.long	.LVL91
	.long	.LVL92
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL92
	.long	.LVL97
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
	.long	.LVL99
	.long	.LVL101
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL101
	.long	.LVL107
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL107
	.long	.LVL108
	.word	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.long	.LVL108
	.long	.LVL109
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL109
	.long	.LVL114
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
	.long	.LVL100
	.long	.LVL101
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL101
	.long	.LVL113
	.word	0x1
	.byte	0x60
	.long	.LVL113
	.long	.LFE38
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST37:
	.long	.LVL100
	.long	.LVL101
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL101
	.long	.LVL111
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST38:
	.long	.LVL100
	.long	.LVL101
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL101
	.long	.LVL112
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
	.long	.LVL115
	.long	.LVL116-1
	.word	0x1
	.byte	0x68
	.long	.LVL116-1
	.long	.LFE39
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL115
	.long	.LVL116-1
	.word	0x1
	.byte	0x66
	.long	.LVL116-1
	.long	.LVL123
	.word	0x1
	.byte	0x6c
	.long	.LVL123
	.long	.LFE39
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL117
	.long	.LVL119
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST43:
	.long	.LVL118
	.long	.LVL121-1
	.word	0x1
	.byte	0x68
	.long	.LVL122
	.long	.LVL123-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST44:
	.long	.LVL120
	.long	.LVL121-1
	.word	0x1
	.byte	0x69
	.long	.LVL122
	.long	.LVL123-1
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
	.long	.LVL125
	.long	.LVL127
	.word	0x1
	.byte	0x68
	.long	.LVL127
	.long	.LFE44
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
	.long	.LVL126
	.long	.LVL129
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL129
	.long	.LVL144
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST48:
	.long	.LVL128
	.long	.LVL130
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL130
	.long	.LVL132
	.word	0x3
	.byte	0x80
	.sleb128 1
	.byte	0x9f
	.long	.LVL132
	.long	.LVL143
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
	.long	.LVL128
	.long	.LVL129
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL129
	.long	.LVL141
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST50:
	.long	.LVL133
	.long	.LVL136
	.word	0x1
	.byte	0x68
	.long	.LVL137
	.long	.LVL138
	.word	0x1
	.byte	0x68
	.long	.LVL139
	.long	.LVL140
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST51:
	.long	.LVL128
	.long	.LVL129
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL129
	.long	.LVL142
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST52:
	.long	.LVL145
	.long	.LVL146
	.word	0x1
	.byte	0x68
	.long	.LVL146
	.long	.LFE45
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LVL145
	.long	.LVL148
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL148
	.long	.LFE45
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST54:
	.long	.LVL147
	.long	.LVL149
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL149
	.long	.LVL151
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL151
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
	.long	.LVL147
	.long	.LVL148
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL148
	.long	.LFE45
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST56:
	.long	.LVL147
	.long	.LVL148
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL148
	.long	.LFE45
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST57:
	.long	.LVL155
	.long	.LVL156
	.word	0x1
	.byte	0x68
	.long	.LVL156
	.long	.LVL157
	.word	0x5
	.byte	0x3
	.long	prog_Display
	.long	.LVL157
	.long	.LFE46
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST58:
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
.LLST59:
	.long	.LVL158
	.long	.LVL160-1
	.word	0x1
	.byte	0x68
	.long	.LVL160-1
	.long	.LVL174
	.word	0x1
	.byte	0x5e
	.long	.LVL174
	.long	.LVL176
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL176
	.long	.LVL177
	.word	0x1
	.byte	0x68
	.long	.LVL177
	.long	.LFE40
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST60:
	.long	.LVL159
	.long	.LVL162
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL162
	.long	.LVL176
	.word	0x1
	.byte	0x60
	.long	.LVL176
	.long	.LVL177
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL177
	.long	.LVL178
	.word	0x1
	.byte	0x60
	.long	.LVL178
	.long	.LFE40
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST61:
	.long	.LVL164
	.long	.LVL172
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST62:
	.long	.LVL160
	.long	.LVL162
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL162
	.long	.LVL176
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST63:
	.long	.LVL161
	.long	.LVL163
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL163
	.long	.LVL172
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL172
	.long	.LVL173
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
	.long	.LVL161
	.long	.LVL162
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL162
	.long	.LVL176
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST65:
	.long	.LVL164
	.long	.LVL165
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL165
	.long	.LVL172
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST66:
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
.LLST67:
	.long	.LVL179
	.long	.LVL184
	.word	0x1
	.byte	0x68
	.long	.LVL184
	.long	.LVL185
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL185
	.long	.LVL186
	.word	0x1
	.byte	0x68
	.long	.LVL186
	.long	.LFE41
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST68:
	.long	.LVL179
	.long	.LVL188-1
	.word	0x1
	.byte	0x66
	.long	.LVL188-1
	.long	.LVL192
	.word	0x1
	.byte	0x6c
	.long	.LVL192
	.long	.LFE41
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST69:
	.long	.LVL186
	.long	.LVL187
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST70:
	.long	.LVL180
	.long	.LVL182
	.word	0x1
	.byte	0x69
	.long	.LVL183
	.long	.LVL188-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST71:
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
.LLST72:
	.long	.LVL193
	.long	.LVL194
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL194
	.long	.LVL198
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST73:
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
.LLST74:
	.long	.LVL199
	.long	.LVL200-1
	.word	0x1
	.byte	0x68
	.long	.LVL200-1
	.long	.LVL209
	.word	0x1
	.byte	0x6c
	.long	.LVL209
	.long	.LFE43
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST75:
	.long	.LVL199
	.long	.LVL200-1
	.word	0x1
	.byte	0x66
	.long	.LVL200-1
	.long	.LVL212
	.word	0x1
	.byte	0x60
	.long	.LVL212
	.long	.LFE43
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST76:
	.long	.LVL201
	.long	.LVL205
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL205
	.long	.LVL206
	.word	0x1
	.byte	0x61
	.long	.LVL206
	.long	.LVL207
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL207
	.long	.LVL211
	.word	0x1
	.byte	0x61
	.long	.LVL211
	.long	.LFE43
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST77:
	.long	.LVL202
	.long	.LVL203
	.word	0x9
	.byte	0x88
	.sleb128 0
	.byte	0x3
	.long	programMap
	.byte	0x22
	.byte	0x9f
	.long	.LVL203
	.long	.LVL204-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST78:
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
.LLST79:
	.long	.LVL221
	.long	.LVL223
	.word	0x1
	.byte	0x68
	.long	.LVL223
	.long	.LVL251
	.word	0x1
	.byte	0x5f
	.long	.LVL251
	.long	.LFE49
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST80:
	.long	.LVL222
	.long	.LVL223
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL223
	.long	.LVL252
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST81:
	.long	.LVL225
	.long	.LVL226-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST82:
	.long	.LVL228
	.long	.LVL233
	.word	0x1
	.byte	0x6c
	.long	.LVL233
	.long	.LVL240
	.word	0x1
	.byte	0x6d
	.long	.LVL240
	.long	.LVL241
	.word	0x1
	.byte	0x6c
	.long	.LVL241
	.long	.LVL248
	.word	0x1
	.byte	0x6d
	.long	.LVL248
	.long	.LVL250
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST83:
	.long	.LVL235
	.long	.LVL237
	.word	0x1
	.byte	0x6c
	.long	.LVL237
	.long	.LVL238
	.word	0x1
	.byte	0x68
	.long	.LVL238
	.long	.LVL239-1
	.word	0x3
	.byte	0x88
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST84:
	.long	.LVL243
	.long	.LVL245
	.word	0x1
	.byte	0x6c
	.long	.LVL245
	.long	.LVL246
	.word	0x1
	.byte	0x68
	.long	.LVL246
	.long	.LVL247-1
	.word	0x3
	.byte	0x88
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST85:
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
.LLST86:
	.long	.LVL253
	.long	.LVL254
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL254
	.long	.LVL265
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST87:
	.long	.LVL256
	.long	.LVL260
	.word	0x1
	.byte	0x62
	.long	.LVL260
	.long	.LVL263-1
	.word	0x2
	.byte	0x8c
	.sleb128 1
	.long	0
	.long	0
.LLST88:
	.long	.LVL257
	.long	.LVL258
	.word	0x1
	.byte	0x68
	.long	.LVL258
	.long	.LVL259
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
	.long	.LVL259
	.long	.LVL261
	.word	0x1
	.byte	0x68
	.long	.LVL261
	.long	.LVL262
	.word	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST89:
	.long	.LVL267
	.long	.LVL270-1
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
	.long	.LVL266
	.long	.LVL267
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	.LVL267
	.long	.LVL270-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST91:
	.long	.LVL274
	.long	.LVL275
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL275
	.long	.LVL277-1
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST92:
	.long	.LVL279
	.long	.LVL280
	.word	0x1
	.byte	0x68
	.long	.LVL280
	.long	.LVL281
	.word	0x1
	.byte	0x6e
	.long	.LVL281
	.long	.LFE54
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST93:
	.long	.LVL282
	.long	.LVL283
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL283
	.long	.LFE55
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST94:
	.long	.LVL283
	.long	.LVL289
	.word	0x1
	.byte	0x65
	.long	.LVL290
	.long	.LVL291
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST95:
	.long	.LVL283
	.long	.LVL289
	.word	0x1
	.byte	0x66
	.long	.LVL290
	.long	.LVL291
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST96:
	.long	.LVL283
	.long	.LVL284
	.word	0x1
	.byte	0x64
	.long	.LVL284
	.long	.LVL285
	.word	0x1
	.byte	0x62
	.long	.LVL285
	.long	.LVL289
	.word	0x1
	.byte	0x64
	.long	.LVL290
	.long	.LVL291
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST97:
	.long	.LVL292
	.long	.LVL293
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL293
	.long	.LVL298-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST98:
	.long	.LVL293
	.long	.LVL295
	.word	0x1
	.byte	0x62
	.long	.LVL296
	.long	.LVL297
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST99:
	.long	.LVL301
	.long	.LVL303
	.word	0x1
	.byte	0x68
	.long	.LVL303
	.long	.LFE57
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST100:
	.long	.LVL301
	.long	.LVL304
	.word	0x1
	.byte	0x66
	.long	.LVL304
	.long	.LVL306
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL306
	.long	.LFE57
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST101:
	.long	.LVL302
	.long	.LVL309
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
	.long	.LVL302
	.long	.LVL303
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL303
	.long	.LVL305
	.word	0x1
	.byte	0x68
	.long	.LVL306
	.long	.LVL309
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST103:
	.long	.LVL310
	.long	.LVL313
	.word	0x1
	.byte	0x68
	.long	.LVL313
	.long	.LVL314
	.word	0x1
	.byte	0x66
	.long	.LVL314
	.long	.LVL318
	.word	0x1
	.byte	0x68
	.long	.LVL318
	.long	.LFE58
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST104:
	.long	.LVL311
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
.LLST105:
	.long	.LVL310
	.long	.LVL311
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL311
	.long	.LFE58
	.word	0x1
	.byte	0x6b
	.long	0
	.long	0
.LLST106:
	.long	.LVL311
	.long	.LVL312
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL312
	.long	.LFE58
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST107:
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
.LLST108:
	.long	.LVL319
	.long	.LVL320-1
	.word	0x1
	.byte	0x68
	.long	.LVL320-1
	.long	.LVL332
	.word	0x1
	.byte	0x6c
	.long	.LVL332
	.long	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST109:
	.long	.LVL319
	.long	.LVL320-1
	.word	0x1
	.byte	0x66
	.long	.LVL320-1
	.long	.LVL334
	.word	0x1
	.byte	0x60
	.long	.LVL334
	.long	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST110:
	.long	.LVL319
	.long	.LVL320-1
	.word	0x1
	.byte	0x64
	.long	.LVL320-1
	.long	.LVL331
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST111:
	.long	.LVL321
	.long	.LVL335
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST112:
	.long	.LVL322
	.long	.LVL333
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST113:
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
.LLST114:
	.long	.LVL336
	.long	.LVL338
	.word	0x1
	.byte	0x68
	.long	.LVL338
	.long	.LVL353
	.word	0x1
	.byte	0x5c
	.long	.LVL353
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST115:
	.long	.LVL337
	.long	.LVL338
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL338
	.long	.LVL352
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST116:
	.long	.LVL339
	.long	.LVL351
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST117:
	.long	.LVL340
	.long	.LVL342
	.word	0x1
	.byte	0x66
	.long	.LVL342
	.long	.LVL345
	.word	0x1
	.byte	0x5e
	.long	.LVL345
	.long	.LVL348-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST118:
	.long	.LVL346
	.long	.LVL347
	.word	0x1
	.byte	0x68
	.long	.LVL347
	.long	.LVL348-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST119:
	.long	.LVL341
	.long	.LVL350
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST120:
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
.LLST121:
	.long	.LVL354
	.long	.LVL355
	.word	0x1
	.byte	0x68
	.long	.LVL355
	.long	.LVL359
	.word	0x1
	.byte	0x60
	.long	.LVL359
	.long	.LVL365
	.word	0x1
	.byte	0x6c
	.long	.LVL365
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST122:
	.long	.LVL360
	.long	.LVL361
	.word	0x1
	.byte	0x68
	.long	.LVL361
	.long	.LVL362-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST123:
	.long	.LVL356
	.long	.LVL359
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST124:
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
.LLST125:
	.long	.LVL366
	.long	.LVL367
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL367
	.long	.LVL370
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST126:
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
.LLST127:
	.long	.LVL372
	.long	.LVL373
	.word	0x1
	.byte	0x68
	.long	.LVL373
	.long	.LVL375
	.word	0x1
	.byte	0x6d
	.long	.LVL375
	.long	.LVL380
	.word	0x1
	.byte	0x64
	.long	.LVL380
	.long	.LVL390
	.word	0x1
	.byte	0x6d
	.long	.LVL390
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
.LLST128:
	.long	.LVL372
	.long	.LVL374
	.word	0x1
	.byte	0x66
	.long	.LVL374
	.long	.LVL393
	.word	0x1
	.byte	0x60
	.long	.LVL393
	.long	.LFE53
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST129:
	.long	.LVL372
	.long	.LVL374
	.word	0x1
	.byte	0x64
	.long	.LVL374
	.long	.LVL392
	.word	0x1
	.byte	0x61
	.long	.LVL392
	.long	.LFE53
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST130:
	.long	.LVL373
	.long	.LVL374
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL374
	.long	.LVL378
	.word	0x1
	.byte	0x69
	.long	.LVL381
	.long	.LVL382
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL382
	.long	.LVL384
	.word	0x1
	.byte	0x69
	.long	.LVL385
	.long	.LVL386
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST131:
	.long	.LVL373
	.long	.LVL374
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL374
	.long	.LVL375
	.word	0x1
	.byte	0x6c
	.long	.LVL375
	.long	.LVL381-1
	.word	0x1
	.byte	0x62
	.long	.LVL381-1
	.long	.LVL391
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST132:
	.long	.LVL376
	.long	.LVL379
	.word	0x1
	.byte	0x66
	.long	.LVL379
	.long	.LVL381-1
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST133:
	.long	.LVL377
	.long	.LVL381-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST134:
	.long	.LVL379
	.long	.LVL381-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST135:
	.long	.LVL394
	.long	.LVL395
	.word	0x1
	.byte	0x68
	.long	.LVL395
	.long	.LVL403
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL403
	.long	.LVL404-1
	.word	0x1
	.byte	0x68
	.long	.LVL404-1
	.long	.LVL405
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL405
	.long	.LVL406
	.word	0x1
	.byte	0x68
	.long	.LVL406
	.long	.LVL407
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL407
	.long	.LVL408
	.word	0x1
	.byte	0x68
	.long	.LVL408
	.long	.LVL409
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL409
	.long	.LVL410
	.word	0x1
	.byte	0x68
	.long	.LVL410
	.long	.LVL411
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
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
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST136:
	.long	.LVL396
	.long	.LVL402
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST137:
	.long	.LVL397
	.long	.LVL398
	.word	0x1
	.byte	0x68
	.long	.LVL399
	.long	.LVL400
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL400
	.long	.LVL403
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST138:
	.long	.LVL401
	.long	.LVL402
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+6448
	.sleb128 0
	.long	0
	.long	0
.LLST139:
	.long	.LVL419
	.long	.LVL421-1
	.word	0x1
	.byte	0x68
	.long	.LVL422
	.long	.LVL424-1
	.word	0x1
	.byte	0x68
	.long	.LVL425
	.long	.LVL426-1
	.word	0x1
	.byte	0x68
	.long	.LVL427
	.long	.LVL428-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST140:
	.long	.LVL420
	.long	.LVL422
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL423
	.long	.LVL424-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST141:
	.long	.LVL429
	.long	.LVL430
	.word	0x1
	.byte	0x68
	.long	.LVL430
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST142:
	.long	.LVL431
	.long	.LVL433-1
	.word	0x1
	.byte	0x68
	.long	.LVL434
	.long	.LVL436-1
	.word	0x1
	.byte	0x68
	.long	.LVL437
	.long	.LVL438-1
	.word	0x1
	.byte	0x68
	.long	.LVL439
	.long	.LVL440
	.word	0x1
	.byte	0x68
	.long	.LVL441
	.long	.LVL442-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST143:
	.long	.LVL432
	.long	.LVL434
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL435
	.long	.LVL436-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST144:
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
.LLST145:
	.long	.LVL443
	.long	.LVL444-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL446
	.long	.LVL447
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL473
	.long	.LVL474
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL475
	.long	.LVL476
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL477
	.long	.LVL478
	.word	0x6
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST146:
	.long	.LVL445
	.long	.LVL479
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST147:
	.long	.LVL446
	.long	.LVL481
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST148:
	.long	.LVL446
	.long	.LVL477
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST149:
	.long	.LVL447
	.long	.LVL449
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	.LVL455
	.long	.LVL473
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	.LVL476
	.long	.LVL480
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST150:
	.long	.LVL456
	.long	.LVL457
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST151:
	.long	.LVL447
	.long	.LVL473
	.word	0x1
	.byte	0x6c
	.long	.LVL476
	.long	.LVL477
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST152:
	.long	.LVL457
	.long	.LVL469
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST153:
	.long	.LVL486
	.long	.LVL492
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST154:
	.long	.LVL487
	.long	.LVL488
	.word	0x1
	.byte	0x68
	.long	.LVL489
	.long	.LVL490
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL490
	.long	.LVL493
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST155:
	.long	.LVL491
	.long	.LVL492
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+7532
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
.LASF100:
	.string	"bitNr"
.LASF84:
	.string	"count"
.LASF109:
	.string	"midiInSysEx"
.LASF140:
	.string	"Manual_to_MidiNote"
.LASF178:
	.string	"swTimer"
.LASF42:
	.string	"bitStart"
.LASF118:
	.string	"program_toRegister"
.LASF93:
	.string	"modulebit"
.LASF34:
	.string	"ChannelNote_t"
.LASF116:
	.string	"prog_set"
.LASF236:
	.string	"__iCliRetVal"
.LASF213:
	.string	"init_Pipe"
.LASF174:
	.string	"chanNote"
.LASF91:
	.string	"pRange"
.LASF161:
	.string	"manNote"
.LASF142:
	.string	"rangeEnd"
.LASF87:
	.string	"progNr"
.LASF114:
	.string	"actualReg"
.LASF138:
	.string	"pMidiInMap"
.LASF44:
	.string	"ManualNoteRange_t"
.LASF172:
	.string	"shiftBit"
.LASF110:
	.string	"midi_RegisterMatchProgram"
.LASF162:
	.string	"midiIn_Process"
.LASF219:
	.string	"pipe_off"
.LASF9:
	.string	"long long unsigned int"
.LASF177:
	.string	"midi_CheckTxActiveSense"
.LASF192:
	.string	"midi_RegisterChanged"
.LASF50:
	.string	"OutChannel"
.LASF191:
	.string	"programMap"
.LASF136:
	.string	"spaceCount"
.LASF15:
	.string	"message8"
.LASF212:
	.string	"midiDataByteExpected"
.LASF188:
	.string	"midiOutMap"
.LASF131:
	.string	"reg_toLCD"
.LASF67:
	.string	"ccOutRegOn"
.LASF75:
	.string	"pCoupler"
.LASF148:
	.string	"manual_NoteOnOff"
.LASF135:
	.string	"reg_ClearOnLCD"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF200:
	.string	"midiLastOutManual"
.LASF88:
	.string	"regNr"
.LASF52:
	.string	"sw_channel"
.LASF111:
	.string	"program"
.LASF36:
	.string	"ManualNote_t"
.LASF156:
	.string	"midi_AllManualsOff"
.LASF122:
	.string	"midi_ProgramChange"
.LASF233:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF170:
	.string	"pipeMessage"
.LASF139:
	.string	"init_Manual2Midi"
.LASF209:
	.string	"midiLastCommand"
.LASF46:
	.string	"noteRange"
.LASF211:
	.string	"midiDataByteCount"
.LASF6:
	.string	"long int"
.LASF155:
	.string	"midi_ManualOff"
.LASF182:
	.string	"serESPMidiTmp"
.LASF137:
	.string	"init_Midi2Manual"
.LASF197:
	.string	"midiRxActivceSensing"
.LASF166:
	.string	"noteOnOff"
.LASF63:
	.string	"regEnd"
.LASF147:
	.string	"moduleBit_to_manualNote"
.LASF193:
	.string	"reg_Out"
.LASF129:
	.string	"prog_toLcd"
.LASF82:
	.string	"midiAllReset"
.LASF186:
	.string	"midiInMap"
.LASF4:
	.string	"uint16_t"
.LASF143:
	.string	"rangeStart"
.LASF207:
	.string	"lcdData"
.LASF183:
	.string	"midiTxLastCmd"
.LASF45:
	.string	"midiNote"
.LASF194:
	.string	"midi_ccReg"
.LASF41:
	.string	"endNote"
.LASF49:
	.string	"InChannel"
.LASF130:
	.string	"init_RegOut"
.LASF53:
	.string	"MidiOutMap_t"
.LASF218:
	.string	"pipe_on"
.LASF102:
	.string	"mask"
.LASF157:
	.string	"midi_CheckRxActiveSense"
.LASF198:
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
.LASF144:
	.string	"range"
.LASF152:
	.string	"midiAllNotesOff"
.LASF150:
	.string	"modulNrMask"
.LASF43:
	.string	"ManualMap_t"
.LASF77:
	.string	"init_Midi"
.LASF5:
	.string	"unsigned int"
.LASF221:
	.string	"module_WaitOutputInput2Cycles"
.LASF128:
	.string	"SaveEEProm"
.LASF222:
	.string	"eeprom_UpdateProg"
.LASF72:
	.string	"AcceptProgChange"
.LASF35:
	.string	"manual"
.LASF171:
	.string	"command"
.LASF117:
	.string	"prog"
.LASF223:
	.string	"lcd_putc"
.LASF7:
	.string	"long unsigned int"
.LASF229:
	.string	"eeprom_ReadMidiOutMap"
.LASF151:
	.string	"myMessage"
.LASF185:
	.string	"ManualNoteRange"
.LASF210:
	.string	"midiDataByte"
.LASF57:
	.string	"registers"
.LASF175:
	.string	"midiSendAllNotesOff"
.LASF164:
	.string	"sreg_save"
.LASF163:
	.string	"midiByte"
.LASF103:
	.string	"get_RegisterStatus"
.LASF158:
	.string	"midiNote_to_Manual"
.LASF95:
	.string	"section"
.LASF61:
	.string	"manualChar"
.LASF32:
	.string	"hw_channel"
.LASF206:
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
.LASF124:
	.string	"channelValid"
.LASF48:
	.string	"MidiInMap_t"
.LASF59:
	.string	"ProgramInfo_t"
.LASF126:
	.string	"midi_resetRegisters"
.LASF38:
	.string	"moduleBit"
.LASF224:
	.string	"lcd_blank"
.LASF19:
	.string	"Timer"
.LASF85:
	.string	"regSec"
.LASF10:
	.string	"sizetype"
.LASF125:
	.string	"splitCount"
.LASF173:
	.string	"moduleBits"
.LASF145:
	.string	"init_Manual2Module"
.LASF165:
	.string	"__ToDo"
.LASF133:
	.string	"myChar"
.LASF120:
	.string	"regBytePtr"
.LASF208:
	.string	"midiEEPromLoadError"
.LASF99:
	.string	"modBit"
.LASF65:
	.string	"ccInRegOn"
.LASF28:
	.string	"Pipe_t"
.LASF47:
	.string	"manualNote"
.LASF167:
	.string	"proc_ESPmidi"
.LASF141:
	.string	"Midi_updateManualRange"
.LASF26:
	.string	"pipeIn"
.LASF190:
	.string	"registerCount"
.LASF228:
	.string	"eeprom_ReadMidiThrough"
.LASF89:
	.string	"set_Coupler"
.LASF60:
	.string	"cursor"
.LASF20:
	.string	"pipeOutM4"
.LASF227:
	.string	"eeprom_ReadMidiInMap"
.LASF119:
	.string	"regBits"
.LASF225:
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
.LASF168:
	.string	"midiBytesTransferred"
.LASF58:
	.string	"couplers"
.LASF176:
	.string	"midi_SendActiveSense"
.LASF235:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF94:
	.string	"pSection"
.LASF66:
	.string	"ccInRegOff"
.LASF216:
	.string	"eeprom_ReadProg"
.LASF232:
	.string	"serial0USB_logPipeIn"
.LASF3:
	.string	"unsigned char"
.LASF76:
	.string	"midi_CouplerReset"
.LASF187:
	.string	"midiThrough"
.LASF69:
	.string	"MidiCCreg_t"
.LASF215:
	.string	"log_putError"
.LASF17:
	.string	"counter"
.LASF231:
	.string	"pipeMsgPush"
.LASF115:
	.string	"midi_CountRegisterInProgram"
.LASF230:
	.string	"eeprom_ReadManualMap"
.LASF56:
	.string	"RegisterMap_t"
.LASF203:
	.string	"midiLastInManual"
.LASF51:
	.string	"MidiThrough_t"
.LASF123:
	.string	"channel"
.LASF132:
	.string	"readHWonly"
.LASF199:
	.string	"midiLastOutNote"
.LASF214:
	.string	"eeprom_ReadReg"
.LASF205:
	.string	"midi_Couplers"
.LASF13:
	.string	"Word_t"
.LASF180:
	.string	"pipeProcessing"
.LASF202:
	.string	"midiLastInChannel"
.LASF12:
	.string	"byteval"
.LASF74:
	.string	"char"
.LASF33:
	.string	"note"
.LASF97:
	.string	"mode"
.LASF189:
	.string	"registerMap"
.LASF121:
	.string	"byteNr"
.LASF134:
	.string	"addChar"
.LASF179:
	.string	"pipe"
.LASF54:
	.string	"startReg"
.LASF83:
	.string	"registers_CalcCount"
.LASF153:
	.string	"splitRange"
.LASF112:
	.string	"progPtr"
.LASF226:
	.string	"lcd_goto"
.LASF104:
	.string	"count_Registers"
.LASF71:
	.string	"VelZero4Off"
.LASF62:
	.string	"regStart"
.LASF237:
	.string	"__iRestore"
.LASF220:
	.string	"serial1MIDISend"
.LASF196:
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
.LASF159:
	.string	"found"
.LASF107:
	.string	"register_onOff"
.LASF160:
	.string	"noteBase0"
.LASF146:
	.string	"manualNote_to_moduleBit"
.LASF113:
	.string	"tempReg"
.LASF55:
	.string	"endReg"
.LASF106:
	.string	"resultPtr"
.LASF181:
	.string	"pipe_Module"
.LASF217:
	.string	"eeprom_ReadCCreg"
.LASF14:
	.string	"Message16"
.LASF1:
	.string	"uint8_t"
.LASF169:
	.string	"midiKeyPress_Process"
.LASF154:
	.string	"midiChanel"
.LASF98:
	.string	"modBitComplette"
.LASF23:
	.string	"pipeInM12"
.LASF22:
	.string	"pipeInM16"
.LASF184:
	.string	"manualMap"
.LASF149:
	.string	"moduleInfo"
.LASF86:
	.string	"init_Registers"
.LASF30:
	.string	"AssnWrite"
.LASF195:
	.string	"prog_Display"
.LASF70:
	.string	"TxActivceSense"
.LASF201:
	.string	"midiLastInNote"
.LASF21:
	.string	"pipeOut"
.LASF92:
	.string	"moduleBit_to_registerNr"
.LASF78:
	.string	"result"
.LASF234:
	.string	".././Midi.c"
.LASF127:
	.string	"register_toProgram"
.LASF204:
	.string	"midiLastProgram"
.LASF101:
	.string	"modulNr"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
