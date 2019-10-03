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
.LFB30:
	.loc 1 313 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL24:
.LBB15:
	.loc 1 315 0
	ldi r18,0
.LBE15:
	.loc 1 314 0
	ldi r19,0
.LBB16:
	.loc 1 315 0
	rjmp .L20
.LVL25:
.L22:
	.loc 1 316 0
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
	.loc 1 316 0 is_stmt 0 discriminator 1
	cp r24,r19
	brlo .L21
	.loc 1 318 0 is_stmt 1
	ldi r19,lo8(1)
.LVL26:
	add r19,r24
.LVL27:
.L21:
	.loc 1 315 0 discriminator 2
	subi r18,lo8(-(1))
.LVL28:
.L20:
	.loc 1 315 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L22
.LBE16:
	.loc 1 321 0 is_stmt 1
	sts registerCount,r19
	ret
	.cfi_endproc
.LFE30:
	.size	registers_CalcCount, .-registers_CalcCount
	.section	.text.init_Registers,"ax",@progbits
.global	init_Registers
	.type	init_Registers, @function
init_Registers:
.LFB31:
	.loc 1 324 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 327 0
	ldi r24,lo8(-1)
	sts midi_RegisterChanged,r24
.LVL29:
.LBB17:
	.loc 1 329 0
	ldi r18,0
	rjmp .L24
.LVL30:
.L25:
	.loc 1 330 0 discriminator 3
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
	.loc 1 331 0 discriminator 3
	std Z+1,r24
	.loc 1 332 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 329 0 discriminator 3
	subi r18,lo8(-(1))
.LVL31:
.L24:
	.loc 1 329 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L25
.LBE17:
	.loc 1 334 0 is_stmt 1
	call eeprom_ReadReg
.LVL32:
	cpi r24,lo8(-1)
	brne .L26
	.loc 1 335 0
	sts registerCount,__zero_reg__
	.loc 1 336 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(5)
	ldi r24,lo8(1)
	call log_putError
.LVL33:
	rjmp .L27
.L26:
	.loc 1 338 0
	call registers_CalcCount
.LVL34:
.L27:
	.loc 1 341 0
	call eeprom_ReadProg
.LVL35:
	cpi r24,lo8(-1)
	brne .L23
	rjmp .L32
.LVL36:
.L30:
.LBB18:
.LBB19:
	.loc 1 345 0 discriminator 3
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
	.loc 1 344 0 discriminator 3
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
	.loc 1 344 0 is_stmt 0 discriminator 1
	cpi r18,lo8(8)
	brlo .L30
.LBE20:
	.loc 1 347 0 is_stmt 1 discriminator 2
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
	.loc 1 343 0 discriminator 2
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
	.loc 1 343 0 is_stmt 0 discriminator 1
	cpi r19,lo8(64)
	brlo .L33
.LBE21:
	.loc 1 349 0 is_stmt 1
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(6)
	ldi r24,lo8(1)
	call log_putError
.LVL43:
.L23:
	ret
	.cfi_endproc
.LFE31:
	.size	init_Registers, .-init_Registers
	.section	.text.regNr_to_moduleBit,"ax",@progbits
.global	regNr_to_moduleBit
	.type	regNr_to_moduleBit, @function
regNr_to_moduleBit:
.LFB32:
	.loc 1 353 0
	.cfi_startproc
.LVL44:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 356 0
	lds r25,registerCount
	cp r24,r25
	brsh .L35
	.loc 1 356 0 is_stmt 0 discriminator 1
	cpi r24,lo8(64)
	brsh .L35
	ldi r18,lo8(8)
	ldi r30,lo8(registerMap)
	ldi r31,hi8(registerMap)
.L38:
.LVL45:
.LBB22:
	.loc 1 362 0 is_stmt 1
	ld r19,Z
	cp r24,r19
	brlo .L36
	.loc 1 362 0 is_stmt 0 discriminator 1
	ldd r25,Z+1
	cp r25,r24
	brlo .L36
	.loc 1 365 0 is_stmt 1
	ldd r18,Z+2
.LVL46:
	mov r25,r24
	sub r25,r19
	.loc 1 366 0
	ldi r24,0
.LVL47:
	add r25,r18
	ret
.LVL48:
.L36:
	.loc 1 368 0
	adiw r30,3
.LVL49:
	.loc 1 369 0
	subi r18,lo8(-(-1))
.LVL50:
	brne .L38
.LVL51:
.L35:
.LBE22:
	.loc 1 373 0
	ldi r24,lo8(-1)
.LVL52:
	ldi r25,0
	.loc 1 374 0
	ret
	.cfi_endproc
.LFE32:
	.size	regNr_to_moduleBit, .-regNr_to_moduleBit
	.section	.text.moduleBit_to_registerNr,"ax",@progbits
.global	moduleBit_to_registerNr
	.type	moduleBit_to_registerNr, @function
moduleBit_to_registerNr:
.LFB33:
	.loc 1 376 0
	.cfi_startproc
.LVL53:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB23:
	.loc 1 378 0
	ldi r25,0
	rjmp .L40
.LVL54:
.L43:
	.loc 1 379 0
	lds r20,registerMap+2
	cp r24,r20
	brlo .L41
	.loc 1 379 0 is_stmt 0 discriminator 1
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
	.loc 1 381 0 is_stmt 1
	sub r24,r20
	add r24,r21
	ret
.LVL56:
.L41:
	.loc 1 378 0 discriminator 2
	subi r25,lo8(-(1))
.LVL57:
.L40:
	.loc 1 378 0 is_stmt 0 discriminator 1
	cpi r25,lo8(8)
	brlo .L43
.LBE23:
	.loc 1 384 0 is_stmt 1
	ldi r24,lo8(-1)
.LVL58:
	.loc 1 385 0
	ret
	.cfi_endproc
.LFE33:
	.size	moduleBit_to_registerNr, .-moduleBit_to_registerNr
	.section	.text.read_Register,"ax",@progbits
.global	read_Register
	.type	read_Register, @function
read_Register:
.LFB34:
	.loc 1 387 0
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
	.loc 1 390 0
	lds r25,registerCount
	cp r24,r25
	brlo .+2
	rjmp .L50
	mov r28,r22
.LBB24:
	.loc 1 392 0
	call regNr_to_moduleBit
.LVL60:
	.loc 1 393 0
	cpse r24,__zero_reg__
	rjmp .L46
.LVL61:
.LBB25:
	.loc 1 396 0
	mov r18,r25
	andi r18,lo8(31)
.LVL62:
	.loc 1 397 0
	swap r25
.LVL63:
	lsr r25
	andi r25,lo8(7)
.LVL64:
	.loc 1 398 0
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
	.loc 1 399 0
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
	.loc 1 399 0 is_stmt 0 discriminator 1
	sbrc r28,1
	rjmp .L51
.L47:
	.loc 1 402 0 is_stmt 1
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
	.loc 1 402 0 is_stmt 0 discriminator 1
	sbrc r28,0
	rjmp .L52
.L49:
	.loc 1 406 0 is_stmt 1
	tst r25
	breq .L45
	.loc 1 406 0 is_stmt 0 discriminator 1
	tst r20
	breq .L45
	.loc 1 406 0 discriminator 2
	cpi r28,lo8(4)
	brne .L45
	rjmp .L53
.L46:
.LBE25:
.LBE24:
	.loc 1 414 0 is_stmt 1
	ldi r24,0
.LBB27:
	rjmp .L45
.LVL69:
.L51:
.LBB26:
	.loc 1 401 0
	ldi r24,lo8(1)
	rjmp .L45
.LVL70:
.L52:
	.loc 1 405 0
	ldi r24,lo8(1)
	rjmp .L45
.L53:
	.loc 1 407 0
	ldi r24,lo8(1)
	rjmp .L45
.LVL71:
.L50:
.LBE26:
.LBE27:
	.loc 1 414 0
	ldi r24,0
.LVL72:
.L45:
/* epilogue start */
	.loc 1 415 0
	pop r28
	ret
	.cfi_endproc
.LFE34:
	.size	read_Register, .-read_Register
	.section	.text.get_RegisterStatus,"ax",@progbits
.global	get_RegisterStatus
	.type	get_RegisterStatus, @function
get_RegisterStatus:
.LFB35:
	.loc 1 417 0
	.cfi_startproc
.LVL73:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 419 0
	lds r25,registerCount
	cp r24,r25
	brsh .L58
.LBB28:
	.loc 1 421 0
	call regNr_to_moduleBit
.LVL74:
	.loc 1 422 0
	cpse r24,__zero_reg__
	rjmp .L56
.LVL75:
.LBB29:
	.loc 1 425 0
	mov r18,r25
	andi r18,lo8(31)
.LVL76:
	.loc 1 426 0
	mov r19,r25
	swap r19
	lsr r19
	andi r19,lo8(7)
.LVL77:
	.loc 1 427 0
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
	.loc 1 428 0
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
	.loc 1 431 0
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
	.loc 1 434 0
	ldi r24,lo8(1)
	ret
.L56:
.LBE29:
.LBE28:
	.loc 1 440 0
	ldi r24,0
.LBB31:
	ret
.LVL83:
.L59:
.LBB30:
	.loc 1 430 0
	ldi r24,lo8(2)
.LVL84:
	ret
.LVL85:
.L58:
.LBE30:
.LBE31:
	.loc 1 440 0
	ldi r24,0
.LVL86:
.L55:
	.loc 1 441 0
	ret
	.cfi_endproc
.LFE35:
	.size	get_RegisterStatus, .-get_RegisterStatus
	.section	.text.count_Registers,"ax",@progbits
.global	count_Registers
	.type	count_Registers, @function
count_Registers:
.LFB36:
	.loc 1 444 0
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
	.loc 1 446 0
	ldi r28,0
.LBE32:
	.loc 1 445 0
	ldi r29,0
.LBB33:
	.loc 1 446 0
	rjmp .L61
.LVL89:
.L63:
	.loc 1 447 0
	mov r22,r17
	mov r24,r28
	call read_Register
.LVL90:
	cpse r24,__zero_reg__
	.loc 1 448 0
	subi r29,lo8(-(1))
.LVL91:
.L62:
	.loc 1 446 0 discriminator 2
	subi r28,lo8(-(1))
.LVL92:
.L61:
	.loc 1 446 0 is_stmt 0 discriminator 1
	cpi r28,lo8(64)
	brlo .L63
.LBE33:
	.loc 1 452 0 is_stmt 1
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
.LFE36:
	.size	count_Registers, .-count_Registers
	.section	.text.read_allRegister,"ax",@progbits
.global	read_allRegister
	.type	read_allRegister, @function
read_allRegister:
.LFB37:
	.loc 1 454 0
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
	.loc 1 458 0
	ldi r28,0
.LBE34:
	.loc 1 457 0
	ldi r29,0
	.loc 1 455 0
	ldi r16,0
.LBB35:
	.loc 1 458 0
	rjmp .L65
.LVL98:
.L69:
	mov r17,r28
	andi r17,lo8(7)
	.loc 1 461 0
	brne .L66
	.loc 1 463 0
	ldi r29,0
.LVL99:
.L66:
	.loc 1 465 0
	lsr r29
.LVL100:
	.loc 1 466 0
	ldi r22,lo8(3)
	mov r24,r28
	call read_Register
.LVL101:
	tst r24
	breq .L67
	.loc 1 467 0
	ori r29,lo8(-128)
.LVL102:
	.loc 1 468 0
	subi r16,lo8(-(1))
.LVL103:
.L67:
	.loc 1 470 0
	cpi r17,lo8(7)
	brne .L68
	.loc 1 472 0
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L68
.LVL104:
	.loc 1 473 0
	movw r30,r14
	st Z,r29
	movw r24,r14
	adiw r24,1
.LVL105:
	movw r14,r24
.LVL106:
.L68:
	.loc 1 458 0 discriminator 2
	subi r28,lo8(-(1))
.LVL107:
.L65:
	.loc 1 458 0 is_stmt 0 discriminator 1
	cpi r28,lo8(64)
	brlo .L69
.LBE35:
	.loc 1 478 0 is_stmt 1
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
.LFE37:
	.size	read_allRegister, .-read_allRegister
	.section	.text.register_onOff,"ax",@progbits
.global	register_onOff
	.type	register_onOff, @function
register_onOff:
.LFB38:
	.loc 1 481 0
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
	.loc 1 483 0
	lds r25,registerCount
	cp r24,r25
	brsh .L71
	mov r28,r22
.LBB36:
	.loc 1 485 0
	call regNr_to_moduleBit
.LVL113:
	.loc 1 486 0
	cpse r24,__zero_reg__
	rjmp .L71
.LVL114:
.LBB37:
	.loc 1 489 0
	mov r30,r25
	andi r30,lo8(31)
.LVL115:
	.loc 1 490 0
	swap r25
.LVL116:
	lsr r25
	andi r25,lo8(7)
.LVL117:
	.loc 1 491 0
	sbrs r28,0
	rjmp .L74
	.loc 1 493 0
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
.LVL118:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	com r24
	ldd r25,Z+1
.LVL119:
	and r24,r25
	std Z+1,r24
	rjmp .L71
.LVL120:
.L74:
	.loc 1 496 0
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
.LVL121:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r25,Z+1
.LVL122:
	or r24,r25
	std Z+1,r24
.LVL123:
.L71:
/* epilogue start */
.LBE37:
.LBE36:
	.loc 1 501 0
	pop r28
	ret
	.cfi_endproc
.LFE38:
	.size	register_onOff, .-register_onOff
	.section	.text.midiInSysEx,"ax",@progbits
.global	midiInSysEx
	.type	midiInSysEx, @function
midiInSysEx:
.LFB28:
	.loc 1 199 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 201 0
	lds r24,midiLastCommand
	cpi r24,lo8(-16)
	brne .L75
	.loc 1 201 0 is_stmt 0 discriminator 1
	lds r24,midiDataByte
	cpi r24,lo8(125)
	brne .L75
	.loc 1 203 0 is_stmt 1
	lds r25,midiDataByte+1
	andi r25,lo8(-16)
	cpi r25,lo8(64)
	breq .L77
	.loc 1 203 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L75
.L77:
	.loc 1 206 0 is_stmt 1
	lds r24,midiDataByte+3
	cpi r24,lo8(-91)
	brne .L75
	.loc 1 206 0 is_stmt 0 discriminator 1
	lds r18,midiDataByteCount
	cpi r18,lo8(4)
	brne .L75
	.loc 1 209 0 is_stmt 1
	ldi r22,lo8(1)
	cpi r25,lo8(64)
	breq .L78
	ldi r22,0
.L78:
	call register_onOff
.LVL124:
.L75:
	ret
	.cfi_endproc
.LFE28:
	.size	midiInSysEx, .-midiInSysEx
	.section	.text.program_toRegister,"ax",@progbits
.global	program_toRegister
	.type	program_toRegister, @function
program_toRegister:
.LFB39:
	.loc 1 503 0
	.cfi_startproc
.LVL125:
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
.LVL126:
	.loc 1 506 0
	cpi r24,lo8(64)
	brlo .+2
	rjmp .L87
.LVL127:
.LBB38:
	.loc 1 509 0
	mov r14,r24
	mov r15,__zero_reg__
	movw r30,r14
	lsl r30
	rol r31
	movw r24,r14
.LVL128:
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
.LVL129:
.LBB39:
	.loc 1 510 0
	mov r11,__zero_reg__
.LBE39:
	.loc 1 508 0
	ldi r17,0
.LBE38:
	.loc 1 505 0
	ldi r16,0
.LBB42:
.LBB41:
	.loc 1 510 0
	rjmp .L81
.LVL130:
.L86:
	.loc 1 513 0
	movw r12,r30
	ldi r24,-1
	sub r12,r24
	sbc r13,r24
.LVL131:
	ld r28,Z
.LVL132:
.LBB40:
	.loc 1 514 0
	ldi r29,0
	rjmp .L82
.LVL133:
.L85:
	.loc 1 515 0
	mov r24,r28
	andi r24,lo8(1)
	sbrc r28,0
	.loc 1 516 0
	subi r16,lo8(-(1))
.LVL134:
.L83:
	.loc 1 518 0 discriminator 2
	ldi r22,lo8(1)
	cpse r24,__zero_reg__
	rjmp .L84
	ldi r22,0
.L84:
	mov r24,r17
	call register_onOff
.LVL135:
	.loc 1 520 0 discriminator 2
	lsr r28
.LVL136:
	.loc 1 521 0 discriminator 2
	subi r17,lo8(-(1))
.LVL137:
	.loc 1 514 0 discriminator 2
	subi r29,lo8(-(1))
.LVL138:
.L82:
	.loc 1 514 0 is_stmt 0 discriminator 1
	cpi r29,lo8(8)
	brlo .L85
.LBE40:
	.loc 1 510 0 is_stmt 1 discriminator 2
	inc r11
.LVL139:
	.loc 1 513 0 discriminator 2
	movw r30,r12
.LVL140:
.L81:
	.loc 1 510 0 discriminator 1
	ldi r24,lo8(7)
	cp r24,r11
	brsh .L86
.LBE41:
	.loc 1 525 0
	movw r30,r14
.LVL141:
	lsl r30
	rol r31
	lsl r14
	rol r15
	lsl r14
	rol r15
	lsl r14
	rol r15
.LVL142:
	add r30,r14
	adc r31,r15
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
	.loc 1 526 0
	ldd r24,Z+8
	ldd r25,Z+9
	call setAllCouplers
.LVL143:
	rjmp .L80
.LVL144:
.L87:
.LBE42:
	.loc 1 505 0
	ldi r16,0
.LVL145:
.L80:
	.loc 1 529 0
	mov r24,r16
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
.LVL146:
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	ret
	.cfi_endproc
.LFE39:
	.size	program_toRegister, .-program_toRegister
	.section	.text.midi_ProgramChange,"ax",@progbits
.global	midi_ProgramChange
	.type	midi_ProgramChange, @function
midi_ProgramChange:
.LFB40:
	.loc 1 531 0
	.cfi_startproc
.LVL147:
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
	.loc 1 532 0
	lds r24,midi_Setting+2
.LVL148:
	cpse r24,__zero_reg__
	rjmp .L94
.LBB43:
	rjmp .L90
.LVL149:
.L92:
.LBB44:
	.loc 1 537 0
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
	.loc 1 536 0 discriminator 2
	subi r24,lo8(-(1))
.LVL150:
	rjmp .L89
.LVL151:
.L94:
.LBE44:
.LBE43:
	ldi r24,0
.L89:
.LVL152:
.LBB47:
.LBB45:
	.loc 1 536 0 is_stmt 0 discriminator 1
	cpi r24,lo8(4)
	brlo .L92
.LBE45:
	.loc 1 534 0 is_stmt 1
	ldi r24,0
.LVL153:
.LBB46:
	rjmp .L91
.LVL154:
.L95:
	.loc 1 539 0
	ldi r24,lo8(-1)
.LVL155:
.L91:
.LBE46:
	.loc 1 543 0
	cpi r24,lo8(-1)
	brne .L90
	.loc 1 545 0
	mov r24,r29
.LVL156:
	call program_toRegister
.LVL157:
	.loc 1 546 0
	sts midiLastProgram,r29
.L90:
.LBE47:
	.loc 1 550 0
	lds r24,midiThrough
	cpse r28,r24
	rjmp .L88
	.loc 1 552 0
	lds r24,midiThrough+1
	cpi r24,lo8(-1)
	breq .L88
	.loc 1 554 0
	ori r24,lo8(-64)
	call serial1MIDISend
.LVL158:
	.loc 1 556 0
	mov r24,r29
	call serial1MIDISend
.LVL159:
.L88:
/* epilogue start */
	.loc 1 559 0
	pop r29
.LVL160:
	pop r28
.LVL161:
	ret
	.cfi_endproc
.LFE40:
	.size	midi_ProgramChange, .-midi_ProgramChange
	.section	.text.midi_resetRegisters,"ax",@progbits
.global	midi_resetRegisters
	.type	midi_resetRegisters, @function
midi_resetRegisters:
.LFB41:
	.loc 1 562 0
	.cfi_startproc
	push r28
.LCFI22:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL162:
.LBB48:
	.loc 1 563 0
	ldi r28,0
	rjmp .L97
.LVL163:
.L98:
	.loc 1 564 0 discriminator 3
	ldi r22,0
	mov r24,r28
	call register_onOff
.LVL164:
	.loc 1 563 0 discriminator 3
	subi r28,lo8(-(1))
.LVL165:
.L97:
	.loc 1 563 0 is_stmt 0 discriminator 1
	lds r24,registerCount
	cp r28,r24
	brlo .L98
/* epilogue start */
.LBE48:
	.loc 1 566 0 is_stmt 1
	pop r28
.LVL166:
	ret
	.cfi_endproc
.LFE41:
	.size	midi_resetRegisters, .-midi_resetRegisters
	.section	.text.register_toProgram,"ax",@progbits
.global	register_toProgram
	.type	register_toProgram, @function
register_toProgram:
.LFB42:
	.loc 1 568 0
	.cfi_startproc
.LVL167:
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
.LVL168:
	.loc 1 572 0
	cpi r24,lo8(64)
	brsh .L102
.LBB49:
	.loc 1 573 0
	mov r18,r24
	ldi r19,0
	movw r24,r18
.LVL169:
	lsl r24
	rol r25
	lsl r18
	rol r19
	lsl r18
	rol r19
	lsl r18
	rol r19
.LVL170:
	add r24,r18
	adc r25,r19
.LVL171:
	.loc 1 574 0
	subi r24,lo8(-(programMap))
	sbci r25,hi8(-(programMap))
.LVL172:
	call read_allRegister
.LVL173:
	mov r17,r24
.LVL174:
	rjmp .L100
.LVL175:
.L102:
.LBE49:
	.loc 1 571 0
	ldi r17,0
.LVL176:
.L100:
	.loc 1 576 0
	ldi r29,0
	call getAllCouplers
.LVL177:
	movw r18,r28
	lsl r18
	rol r19
	lsl r28
	rol r29
	lsl r28
	rol r29
	lsl r28
	rol r29
.LVL178:
	add r28,r18
	adc r29,r19
	subi r28,lo8(-(programMap))
	sbci r29,hi8(-(programMap))
	std Y+9,r25
	std Y+8,r24
	.loc 1 577 0
	cpse r16,__zero_reg__
	.loc 1 578 0
	call eeprom_UpdateProg
.LVL179:
.L101:
	.loc 1 581 0
	mov r24,r17
/* epilogue start */
	pop r29
	pop r28
	pop r17
.LVL180:
	pop r16
.LVL181:
	ret
	.cfi_endproc
.LFE42:
	.size	register_toProgram, .-register_toProgram
	.section	.text.midi_RegisterMatchProgram,"ax",@progbits
.global	midi_RegisterMatchProgram
	.type	midi_RegisterMatchProgram, @function
midi_RegisterMatchProgram:
.LFB43:
	.loc 1 583 0
	.cfi_startproc
.LVL182:
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
.LVL183:
	.loc 1 587 0
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
.LVL184:
	add r16,r24
	adc r17,r25
	subi r16,lo8(-(programMap))
	sbci r17,hi8(-(programMap))
.LVL185:
.LBB50:
	.loc 1 590 0
	ldi r28,0
.LBE50:
	.loc 1 588 0
	ldi r29,0
	.loc 1 586 0
	mov r15,__zero_reg__
.LBB51:
	.loc 1 590 0
	rjmp .L104
.LVL186:
.L109:
	.loc 1 591 0
	mov r25,r28
	andi r25,lo8(7)
	brne .L105
.LVL187:
	.loc 1 593 0
	movw r30,r16
	ld r29,Z
.LVL188:
	subi r16,-1
	sbci r17,-1
.LVL189:
.L105:
	.loc 1 595 0
	mov r24,r28
	call get_RegisterStatus
.LVL190:
	.loc 1 596 0
	sbrs r29,0
	rjmp .L106
	.loc 1 598 0
	cpi r24,lo8(2)
	breq .L108
	rjmp .L110
.L106:
	.loc 1 605 0
	cpi r24,lo8(2)
	breq .L111
	.loc 1 608 0
	cpi r24,lo8(1)
	brne .L108
	.loc 1 610 0
	inc r15
.LVL191:
.L108:
	.loc 1 613 0 discriminator 2
	lsr r29
.LVL192:
	.loc 1 590 0 discriminator 2
	subi r28,lo8(-(1))
.LVL193:
.L104:
	.loc 1 590 0 is_stmt 0 discriminator 1
	lds r25,registerCount
	cp r28,r25
	brlo .L109
.LBE51:
	.loc 1 615 0 is_stmt 1
	mov r24,r15
.LBB52:
	rjmp .L107
.LVL194:
.L110:
	.loc 1 600 0
	ldi r24,lo8(-1)
.LVL195:
	rjmp .L107
.LVL196:
.L111:
	.loc 1 607 0
	ldi r24,lo8(-1)
.LVL197:
.L107:
/* epilogue start */
.LBE52:
	.loc 1 616 0
	pop r29
.LVL198:
	pop r28
.LVL199:
	pop r17
	pop r16
.LVL200:
	pop r15
.LVL201:
	ret
	.cfi_endproc
.LFE43:
	.size	midi_RegisterMatchProgram, .-midi_RegisterMatchProgram
	.section	.text.midi_CountRegisterInProgram,"ax",@progbits
.global	midi_CountRegisterInProgram
	.type	midi_CountRegisterInProgram, @function
midi_CountRegisterInProgram:
.LFB44:
	.loc 1 618 0
	.cfi_startproc
.LVL202:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 621 0
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
.LVL203:
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
.LVL204:
.LBB53:
	.loc 1 623 0
	ldi r25,0
.LBE53:
	.loc 1 622 0
	ldi r18,0
	.loc 1 620 0
	ldi r24,0
.LBB54:
	.loc 1 623 0
	rjmp .L113
.LVL205:
.L116:
	.loc 1 624 0
	mov r19,r25
	andi r19,lo8(7)
	brne .L114
.LVL206:
	.loc 1 626 0
	ld r18,Z
.LVL207:
	adiw r30,1
.LVL208:
.L114:
	.loc 1 628 0
	sbrc r18,0
	.loc 1 629 0
	subi r24,lo8(-(1))
.LVL209:
.L115:
	.loc 1 631 0 discriminator 2
	lsr r18
.LVL210:
	.loc 1 623 0 discriminator 2
	subi r25,lo8(-(1))
.LVL211:
.L113:
	.loc 1 623 0 is_stmt 0 discriminator 1
	lds r19,registerCount
	cp r25,r19
	brlo .L116
/* epilogue start */
.LBE54:
	.loc 1 635 0 is_stmt 1
	ret
	.cfi_endproc
.LFE44:
	.size	midi_CountRegisterInProgram, .-midi_CountRegisterInProgram
	.section	.text.init_Midi2Manual,"ax",@progbits
.global	init_Midi2Manual
	.type	init_Midi2Manual, @function
init_Midi2Manual:
.LFB45:
	.loc 1 639 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL212:
.LBB55:
	.loc 1 643 0
	ldi r25,lo8(64)
.LBE55:
	.loc 1 641 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
.LBB56:
	.loc 1 643 0
	rjmp .L118
.LVL213:
.L119:
	.loc 1 645 0 discriminator 3
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 646 0 discriminator 3
	std Z+1,r24
	.loc 1 647 0 discriminator 3
	std Z+3,r24
	.loc 1 648 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 649 0 discriminator 3
	adiw r30,4
.LVL214:
	.loc 1 643 0 discriminator 3
	subi r25,lo8(-(-1))
.LVL215:
.L118:
	.loc 1 643 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L119
.LBE56:
	.loc 1 652 0 is_stmt 1
	call eeprom_ReadMidiInMap
.LVL216:
	cpi r24,lo8(-1)
	brne .L120
	.loc 1 653 0
	sts midiEEPromLoadError,r24
	.loc 1 654 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
	st Z,__zero_reg__
	.loc 1 655 0
	ldi r24,lo8(36)
	std Z+1,r24
	.loc 1 656 0
	std Z+3,r24
	.loc 1 657 0
	ldi r25,lo8(56)
	std Z+2,r25
	.loc 1 658 0
	ldi r18,lo8(1)
	std Z+16,r18
	.loc 1 659 0
	std Z+17,r24
	.loc 1 660 0
	std Z+19,r24
	.loc 1 661 0
	std Z+18,r25
	.loc 1 662 0
	ldi r18,lo8(2)
	std Z+32,r18
	.loc 1 663 0
	std Z+33,r24
	.loc 1 664 0
	std Z+35,r24
	.loc 1 665 0
	std Z+34,r25
	.loc 1 666 0
	ldi r25,lo8(3)
	std Z+48,r25
	.loc 1 667 0
	std Z+49,r24
	.loc 1 668 0
	std Z+51,r24
	.loc 1 669 0
	ldi r24,lo8(30)
	std Z+50,r24
	.loc 1 670 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL217:
.L120:
	.loc 1 672 0
	call eeprom_ReadMidiThrough
.LVL218:
	cpi r24,lo8(-1)
	brne .L117
	.loc 1 673 0
	ldi r30,lo8(midiThrough)
	ldi r31,hi8(midiThrough)
	st Z,r24
	.loc 1 674 0
	std Z+1,r24
	.loc 1 675 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL219:
.L117:
	ret
	.cfi_endproc
.LFE45:
	.size	init_Midi2Manual, .-init_Midi2Manual
	.section	.text.init_Manual2Midi,"ax",@progbits
.global	init_Manual2Midi
	.type	init_Manual2Midi, @function
init_Manual2Midi:
.LFB46:
	.loc 1 679 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL220:
.LBB57:
	.loc 1 681 0
	ldi r18,0
	rjmp .L123
.LVL221:
.L124:
	.loc 1 682 0 discriminator 3
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 683 0 discriminator 3
	std Z+1,r24
	.loc 1 681 0 discriminator 3
	subi r18,lo8(-(1))
.LVL222:
.L123:
	.loc 1 681 0 is_stmt 0 discriminator 1
	mov r24,r18
	ldi r25,0
	sbiw r24,0
	brne .L124
.LBE57:
	.loc 1 685 0 is_stmt 1
	call eeprom_ReadMidiOutMap
.LVL223:
	cpi r24,lo8(-1)
	brne .L122
	.loc 1 686 0
	sts midiEEPromLoadError,r24
	.loc 1 688 0
	ldi r30,lo8(midiOutMap)
	ldi r31,hi8(midiOutMap)
	st Z,__zero_reg__
	.loc 1 689 0
	ldi r25,lo8(1)
	std Z+2,r25
	.loc 1 690 0
	ldi r25,lo8(2)
	std Z+4,r25
	.loc 1 691 0
	ldi r25,lo8(3)
	std Z+6,r25
	.loc 1 692 0
	ldi r30,lo8(midi_Setting)
	ldi r31,hi8(midi_Setting)
	st Z,__zero_reg__
	.loc 1 693 0
	std Z+1,__zero_reg__
	.loc 1 694 0
	std Z+2,r24
	.loc 1 695 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(2)
	ldi r24,lo8(1)
	call log_putError
.LVL224:
.L122:
	ret
	.cfi_endproc
.LFE46:
	.size	init_Manual2Midi, .-init_Manual2Midi
	.section	.text.Manual_to_MidiNote,"ax",@progbits
.global	Manual_to_MidiNote
	.type	Manual_to_MidiNote, @function
Manual_to_MidiNote:
.LFB48:
	.loc 1 739 0
	.cfi_startproc
.LVL225:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	.loc 1 740 0
	ldi r24,lo8(-1)
.LVL226:
	ldi r25,lo8(-1)
	.loc 1 741 0
	cpi r30,lo8(4)
	brsh .L127
	.loc 1 742 0
	ldi r31,0
	lsl r30
	rol r31
.LVL227:
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r18,Z
	cpi r18,lo8(-1)
	breq .L127
	.loc 1 743 0
	mov r24,r18
	.loc 1 744 0
	mov r25,r22
.L127:
	.loc 1 749 0
	ret
	.cfi_endproc
.LFE48:
	.size	Manual_to_MidiNote, .-Manual_to_MidiNote
	.section	.text.Midi_updateManualRange,"ax",@progbits
.global	Midi_updateManualRange
	.type	Midi_updateManualRange, @function
Midi_updateManualRange:
.LFB49:
	.loc 1 753 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL228:
.LBB58:
	.loc 1 754 0
	ldi r23,0
	rjmp .L129
.LVL229:
.L135:
.LBB59:
.LBB60:
	.loc 1 758 0
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
.LVL230:
	.loc 1 758 0 is_stmt 0 discriminator 1
	movw r30,r18
	lsl r30
	rol r31
	add r30,r18
	adc r31,r19
	movw r18,r24
.LVL231:
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
	.loc 1 759 0 is_stmt 1
	cp r26,r22
	brsh .L131
	.loc 1 760 0
	mov r22,r26
.LVL232:
.L131:
	.loc 1 762 0
	cp r21,r18
	brsh .L130
	.loc 1 763 0
	mov r21,r18
.LVL233:
.L130:
	.loc 1 766 0
	tst r21
	breq .L132
	.loc 1 766 0 is_stmt 0 discriminator 1
	cpi r22,lo8(-1)
	brne .L133
.L132:
	.loc 1 767 0 is_stmt 1
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 768 0
	std Z+1,r24
	rjmp .L134
.L133:
	.loc 1 770 0
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	st Z,r22
	.loc 1 771 0
	std Z+1,r21
.L134:
	.loc 1 757 0 discriminator 2
	subi r20,lo8(-(1))
.LVL234:
	rjmp .L136
.LVL235:
.L139:
.LBE60:
.LBE59:
	ldi r20,0
	ldi r22,lo8(-1)
	ldi r21,0
.L136:
.LVL236:
.LBB62:
.LBB61:
	.loc 1 757 0 is_stmt 0 discriminator 1
	cpi r20,lo8(4)
	brsh .+2
	rjmp .L135
.LBE61:
.LBE62:
	.loc 1 754 0 is_stmt 1 discriminator 2
	subi r23,lo8(-(1))
.LVL237:
.L129:
	.loc 1 754 0 is_stmt 0 discriminator 1
	cpi r23,lo8(4)
	brlo .L139
/* epilogue start */
.LBE58:
	.loc 1 775 0 is_stmt 1
	ret
	.cfi_endproc
.LFE49:
	.size	Midi_updateManualRange, .-Midi_updateManualRange
	.section	.text.init_Manual2Module,"ax",@progbits
.global	init_Manual2Module
	.type	init_Manual2Module, @function
init_Manual2Module:
.LFB50:
	.loc 1 777 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL238:
.LBB63:
	.loc 1 778 0
	ldi r22,lo8(3)
	rjmp .L141
.LVL239:
.L142:
.LBB64:
	.loc 1 781 0 discriminator 3
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
	.loc 1 782 0 discriminator 3
	adiw r26,1
	st X,r19
	sbiw r26,1
	.loc 1 783 0 discriminator 3
	movw r30,r26
	std Z+2,__zero_reg__
	.loc 1 780 0 discriminator 3
	subi r18,lo8(-(-1))
.LVL240:
	rjmp .L143
.LVL241:
.L145:
.LBE64:
	ldi r18,lo8(3)
.L143:
.LVL242:
.LBB65:
	.loc 1 780 0 is_stmt 0 discriminator 1
	tst r18
	brge .L142
.LBE65:
	.loc 1 778 0 is_stmt 1 discriminator 2
	subi r22,lo8(-(-1))
.LVL243:
.L141:
	.loc 1 778 0 is_stmt 0 discriminator 1
	tst r22
	brge .L145
.LBE63:
	.loc 1 787 0 is_stmt 1
	call eeprom_ReadManualMap
.LVL244:
	cpi r24,lo8(-1)
	brne .L144
	.loc 1 789 0
	sts midiEEPromLoadError,r24
	.loc 1 790 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(3)
	ldi r24,lo8(1)
	call log_putError
.LVL245:
.L144:
	.loc 1 792 0
	call Midi_updateManualRange
.LVL246:
	ret
	.cfi_endproc
.LFE50:
	.size	init_Manual2Module, .-init_Manual2Module
	.section	.text.manualNote_to_moduleBit,"ax",@progbits
.global	manualNote_to_moduleBit
	.type	manualNote_to_moduleBit, @function
manualNote_to_moduleBit:
.LFB51:
	.loc 1 796 0
	.cfi_startproc
.LVL247:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 799 0
	cpi r24,lo8(4)
	brsh .L147
.LBB66:
	.loc 1 802 0
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
.LVL248:
	.loc 1 803 0
	ldi r24,lo8(4)
.LVL249:
.L150:
	.loc 1 805 0
	ld r18,Z
	cp r22,r18
	brlo .L148
	.loc 1 805 0 is_stmt 0 discriminator 1
	ldd r25,Z+1
	cp r25,r22
	brlo .L148
	.loc 1 808 0 is_stmt 1
	ldd r25,Z+2
	sub r22,r18
.LVL250:
	.loc 1 809 0
	ldi r24,0
.LVL251:
	add r25,r22
	ret
.LVL252:
.L148:
	.loc 1 811 0
	adiw r30,3
.LVL253:
	.loc 1 812 0
	subi r24,lo8(-(-1))
.LVL254:
	brne .L150
.LVL255:
.L147:
.LBE66:
	.loc 1 816 0
	ldi r24,lo8(-1)
	ldi r25,0
	.loc 1 817 0
	ret
	.cfi_endproc
.LFE51:
	.size	manualNote_to_moduleBit, .-manualNote_to_moduleBit
	.section	.text.moduleBit_to_manualNote,"ax",@progbits
.global	moduleBit_to_manualNote
	.type	moduleBit_to_manualNote, @function
moduleBit_to_manualNote:
.LFB52:
	.loc 1 819 0
	.cfi_startproc
.LVL256:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 826 0
	ldi r27,0
	.loc 1 825 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
.LVL257:
.L156:
.LBB67:
	.loc 1 828 0
	ldi r20,lo8(4)
	rjmp .L152
.LVL258:
.L155:
	.loc 1 829 0
	ldd r21,Z+2
	cp r24,r21
	brlo .L153
	.loc 1 829 0 is_stmt 0 discriminator 1
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
.LVL259:
	.loc 1 832 0 is_stmt 1
	mov r25,r24
	sub r25,r21
	.loc 1 833 0
	mov r24,r27
	add r25,r26
	ret
.LVL260:
.L153:
	.loc 1 835 0 discriminator 2
	adiw r30,3
.LVL261:
	.loc 1 828 0 discriminator 2
	subi r20,lo8(-(-1))
.LVL262:
.L152:
	.loc 1 828 0 is_stmt 0 discriminator 1
	cpse r20,__zero_reg__
	rjmp .L155
.LBE67:
	.loc 1 837 0 is_stmt 1
	subi r27,lo8(-(1))
.LVL263:
	.loc 1 838 0
	cpi r27,lo8(5)
	brlo .L156
	.loc 1 842 0
	ldi r24,lo8(-1)
.LVL264:
	ldi r25,0
	.loc 1 843 0
	ret
	.cfi_endproc
.LFE52:
	.size	moduleBit_to_manualNote, .-moduleBit_to_manualNote
	.section	.text.manual_NoteOnOff,"ax",@progbits
.global	manual_NoteOnOff
	.type	manual_NoteOnOff, @function
manual_NoteOnOff:
.LFB53:
	.loc 1 845 0
	.cfi_startproc
.LVL265:
	push r17
.LCFI32:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI33:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI34:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	mov r28,r24
	mov r17,r22
	mov r29,r20
	.loc 1 847 0
	call manualNote_to_moduleBit
.LVL266:
	.loc 1 849 0
	cpse r24,__zero_reg__
	rjmp .L158
.LVL267:
.LBB68:
	.loc 1 850 0
	mov r30,r25
	andi r30,lo8(31)
.LVL268:
	.loc 1 851 0
	swap r25
	lsr r25
	andi r25,lo8(7)
.LVL269:
	.loc 1 852 0
	cpse r29,__zero_reg__
	rjmp .L159
	.loc 1 854 0
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
.LVL270:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r25,Z+1
.LVL271:
	or r24,r25
	std Z+1,r24
	rjmp .L158
.LVL272:
.L159:
	.loc 1 857 0
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
.LVL273:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	com r24
	ldd r25,Z+1
.LVL274:
	and r24,r25
	std Z+1,r24
.L158:
.LBE68:
	.loc 1 861 0
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldd r24,Z+1
	cpi r24,lo8(-1)
	breq .L157
	.loc 1 864 0
	cpi r29,lo8(1)
	breq .L163
	.loc 1 864 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
	tst r25
	breq .L164
	.loc 1 864 0
	ldi r25,lo8(-112)
	rjmp .L161
.L163:
	ldi r25,lo8(-112)
	rjmp .L161
.L164:
	ldi r25,lo8(-128)
.L161:
	.loc 1 864 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL275:
	.loc 1 865 0 is_stmt 1 discriminator 6
	mov r24,r17
	call serial1MIDISend
.LVL276:
	.loc 1 866 0 discriminator 6
	cpse r29,__zero_reg__
	rjmp .L165
	.loc 1 866 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L166
	.loc 1 866 0
	ldi r24,lo8(64)
	rjmp .L162
.L165:
	ldi r24,lo8(64)
	rjmp .L162
.L166:
	ldi r24,0
.L162:
	.loc 1 866 0 discriminator 6
	call serial1MIDISend
.LVL277:
.L157:
/* epilogue start */
	.loc 1 870 0 is_stmt 1
	pop r29
.LVL278:
	pop r28
.LVL279:
	pop r17
.LVL280:
	ret
	.cfi_endproc
.LFE53:
	.size	manual_NoteOnOff, .-manual_NoteOnOff
	.section	.text.midiAllNotesOff,"ax",@progbits
.global	midiAllNotesOff
	.type	midiAllNotesOff, @function
midiAllNotesOff:
.LFB23:
	.loc 1 142 0
	.cfi_startproc
.LVL281:
	push r12
.LCFI35:
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
.LCFI36:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI37:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI38:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI39:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI40:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI41:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI42:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r12,r24
.LVL282:
	.loc 1 143 0
	mov r13,__zero_reg__
	.loc 1 144 0
	rjmp .L168
.LVL283:
.L172:
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
	brsh .L169
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
.LVL284:
.LBB70:
	.loc 1 150 0
	ldd r15,Z+2
.LVL285:
	rjmp .L170
.L171:
	.loc 1 151 0 discriminator 3
	clr r14
	inc r14
	add r14,r22
.LVL286:
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
.LVL287:
	.loc 1 150 0 discriminator 3
	dec r15
.LVL288:
	.loc 1 151 0 discriminator 3
	mov r22,r14
.LVL289:
.L170:
	.loc 1 150 0 discriminator 1
	cpse r15,__zero_reg__
	rjmp .L171
.LVL290:
.L169:
.LBE70:
.LBE69:
	.loc 1 154 0
	inc r13
.LVL291:
.L168:
	.loc 1 144 0
	ldi r24,lo8(3)
	cp r24,r13
	brlo .+2
	rjmp .L172
/* epilogue start */
	.loc 1 156 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
.LVL292:
	pop r12
.LVL293:
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
.LVL294:
	push r16
.LCFI43:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI44:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI45:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI46:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 160 0
	cpi r24,lo8(4)
	brsh .L173
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
	breq .L173
	mov r29,r24
	.loc 1 160 0 discriminator 2
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r24,Z+1
.LVL295:
	cpi r24,lo8(-1)
	brne .L175
.LBB71:
	rjmp .L173
.LVL296:
.L176:
	.loc 1 162 0 is_stmt 1 discriminator 3
	ldi r20,0
	mov r22,r28
	mov r24,r29
	call manual_NoteOnOff
.LVL297:
	.loc 1 161 0 discriminator 3
	subi r28,lo8(-(1))
.LVL298:
.L175:
	.loc 1 161 0 is_stmt 0 discriminator 1
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r25,Z+1
	cp r25,r28
	brsh .L176
.LVL299:
.L173:
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
.LCFI47:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL300:
.LBB72:
	.loc 1 168 0
	ldi r28,0
	rjmp .L178
.LVL301:
.L179:
	.loc 1 169 0 discriminator 3
	mov r24,r28
	call midi_ManualOff
.LVL302:
	.loc 1 168 0 discriminator 3
	subi r28,lo8(-(1))
.LVL303:
.L178:
	.loc 1 168 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brlo .L179
/* epilogue start */
.LBE72:
	.loc 1 174 0 is_stmt 1
	pop r28
.LVL304:
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
	breq .L180
	.loc 1 179 0
	lds r24,swTimer+6
	cpse r24,__zero_reg__
	rjmp .L180
	.loc 1 181 0
	call midi_AllManualsOff
.LVL305:
	.loc 1 182 0
	sts midiRxActivceSensing,__zero_reg__
.L180:
	ret
	.cfi_endproc
.LFE26:
	.size	midi_CheckRxActiveSense, .-midi_CheckRxActiveSense
	.section	.text.midiNote_to_Manual,"ax",@progbits
.global	midiNote_to_Manual
	.type	midiNote_to_Manual, @function
midiNote_to_Manual:
.LFB47:
	.loc 1 699 0
	.cfi_startproc
.LVL306:
	push r16
.LCFI48:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI49:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI50:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI51:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r22
	mov r17,r20
	.loc 1 700 0
	mov r29,r24
	andi r29,lo8(15)
.LVL307:
.LBB73:
	.loc 1 702 0
	ldi r28,0
.LBE73:
	.loc 1 701 0
	ldi r25,0
.LBB76:
	.loc 1 702 0
	rjmp .L183
.LVL308:
.L186:
	.loc 1 703 0
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
	brsh .L184
.LVL309:
.LBB74:
	.loc 1 705 0
	movw r26,r30
	ldd r22,Z+1
	mov r23,r16
	sub r23,r22
	mov r22,r23
.LVL310:
	.loc 1 706 0
	brmi .L184
	.loc 1 706 0 is_stmt 0 discriminator 1
	movw r30,r26
	ldd r30,Z+2
	ldi r31,0
	mov r26,r23
	lsl r23
	sbc r27,r27
	cp r26,r30
	cpc r27,r31
	brge .L184
.LVL311:
.LBB75:
	.loc 1 709 0 is_stmt 1
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
.LVL312:
	add r22,r25
.LVL313:
	.loc 1 710 0
	cpi r17,lo8(1)
	brne .L185
	.loc 1 711 0
	sts midiLastInManual,r24
	.loc 1 712 0
	sts midiLastInNote,r22
.L185:
	.loc 1 714 0
	mov r20,r17
.LVL314:
	call manual_NoteOnOff
.LVL315:
	.loc 1 715 0
	ldi r25,lo8(-1)
.LVL316:
.L184:
.LBE75:
.LBE74:
	.loc 1 702 0 discriminator 2
	subi r28,lo8(-(1))
.LVL317:
.L183:
	.loc 1 702 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brsh .+2
	rjmp .L186
.LBE76:
	.loc 1 719 0 is_stmt 1
	cpi r17,lo8(1)
	brne .L187
	.loc 1 719 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L187
	.loc 1 721 0 is_stmt 1
	sts midiLastInNote,r16
	.loc 1 722 0
	sts midiLastInChannel,r29
	.loc 1 723 0
	ldi r24,lo8(-1)
	sts midiLastInManual,r24
.L187:
	.loc 1 726 0
	lds r24,midiThrough
	cpse r29,r24
	rjmp .L182
	.loc 1 728 0
	lds r24,midiThrough+1
	cpi r24,lo8(-1)
	breq .L182
	.loc 1 730 0
	cpi r17,lo8(1)
	breq .L191
	.loc 1 730 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
.LVL318:
	tst r25
	breq .L192
	.loc 1 730 0
	ldi r25,lo8(-112)
	rjmp .L189
.LVL319:
.L191:
	ldi r25,lo8(-112)
.LVL320:
	rjmp .L189
.L192:
	ldi r25,lo8(-128)
.L189:
	.loc 1 730 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL321:
	.loc 1 732 0 is_stmt 1 discriminator 6
	mov r24,r16
	call serial1MIDISend
.LVL322:
	.loc 1 734 0 discriminator 6
	cpse r17,__zero_reg__
	rjmp .L193
	.loc 1 734 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L194
	.loc 1 734 0
	ldi r24,lo8(64)
	rjmp .L190
.L193:
	ldi r24,lo8(64)
	rjmp .L190
.L194:
	ldi r24,0
.L190:
	.loc 1 734 0 discriminator 6
	call serial1MIDISend
.LVL323:
.L182:
/* epilogue start */
	.loc 1 737 0 is_stmt 1
	pop r29
.LVL324:
	pop r28
.LVL325:
	pop r17
.LVL326:
	pop r16
.LVL327:
	ret
	.cfi_endproc
.LFE47:
	.size	midiNote_to_Manual, .-midiNote_to_Manual
	.section	.text.midiIn_Process,"ax",@progbits
.global	midiIn_Process
	.type	midiIn_Process, @function
midiIn_Process:
.LFB29:
	.loc 1 216 0
	.cfi_startproc
.LVL328:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 217 0
	tst r24
	brlt .+2
	rjmp .L196
	.loc 1 220 0
	cpi r24,lo8(-8)
	brlo .L197
	.loc 1 222 0
	cpi r24,lo8(-2)
	brne .L198
	.loc 1 223 0
	ldi r24,lo8(1)
.LVL329:
	sts midiRxActivceSensing,r24
.LBB77:
	.loc 1 224 0
	in r25,__SREG__
.LVL330:
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
	.loc 1 224 0
	rjmp .L199
.LVL331:
.L200:
	.loc 1 224 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(25)
.LVL332:
	std Z+6,r24
	std Z+7,__zero_reg__
.LVL333:
	.loc 1 224 0 discriminator 3
	ldi r24,0
.LVL334:
.L199:
	.loc 1 224 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L200
.LVL335:
.LBB80:
.LBB81:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL336:
.LBE81:
.LBE80:
.LBE77:
	ret
.LVL337:
.L198:
	.loc 1 225 0
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L195
	.loc 1 226 0
	call midiAllReset
.LVL338:
	ret
.LVL339:
.L197:
	.loc 1 231 0
	sts midiLastCommand,r24
	.loc 1 232 0
	sts midiDataByteCount,__zero_reg__
	.loc 1 233 0
	ldi r25,lo8(-128)
	add r25,r24
	cpi r25,lo8(64)
	brsh .L202
	.loc 1 235 0
	ldi r24,lo8(2)
.LVL340:
	sts midiDataByteExpected,r24
	ret
.LVL341:
.L202:
	.loc 1 236 0
	ldi r25,lo8(32)
	add r25,r24
	cpi r25,lo8(16)
	brsh .L203
	.loc 1 238 0
	ldi r24,lo8(2)
.LVL342:
	sts midiDataByteExpected,r24
	ret
.LVL343:
.L203:
	.loc 1 239 0
	cpi r24,lo8(-14)
	brne .L204
	.loc 1 241 0
	ldi r24,lo8(2)
.LVL344:
	sts midiDataByteExpected,r24
	ret
.LVL345:
.L204:
	.loc 1 242 0
	cpi r24,lo8(-16)
	brne .L205
	.loc 1 244 0
	ldi r24,lo8(-1)
.LVL346:
	sts midiDataByteExpected,r24
	ret
.LVL347:
.L205:
	.loc 1 245 0
	ldi r25,lo8(64)
	add r25,r24
	cpi r25,lo8(32)
	brsh .L206
	.loc 1 247 0
	ldi r24,lo8(1)
.LVL348:
	sts midiDataByteExpected,r24
	ret
.LVL349:
.L206:
	.loc 1 248 0
	cpi r24,lo8(-15)
	breq .L207
	.loc 1 248 0 is_stmt 0 discriminator 1
	cpi r24,lo8(-13)
	brne .L208
.L207:
	.loc 1 250 0 is_stmt 1
	ldi r24,lo8(1)
.LVL350:
	sts midiDataByteExpected,r24
	ret
.LVL351:
.L208:
	.loc 1 251 0
	cpi r24,lo8(-9)
	brne .+2
	rjmp .L195
	.loc 1 255 0
	sts midiDataByteExpected,__zero_reg__
	ret
.L196:
	.loc 1 261 0
	lds r30,midiDataByteCount
	cpi r30,lo8(8)
	brsh .L209
	.loc 1 263 0
	ldi r25,lo8(1)
	add r25,r30
	sts midiDataByteCount,r25
	ldi r31,0
	subi r30,lo8(-(midiDataByte))
	sbci r31,hi8(-(midiDataByte))
	st Z,r24
.L209:
	.loc 1 265 0
	lds r24,midiDataByteExpected
.LVL352:
	cpi r24,lo8(-1)
	breq .L195
	.loc 1 267 0
	lds r25,midiDataByteCount
	cp r25,r24
	brlo .L195
	.loc 1 269 0
	lds r25,midiLastCommand
	cpi r25,lo8(-16)
	brsh .L210
.LBB82:
	.loc 1 271 0
	mov r24,r25
	andi r24,lo8(15)
.LVL353:
	.loc 1 273 0
	andi r25,lo8(-16)
	cpi r25,lo8(-112)
	breq .L211
	brsh .L212
	cpi r25,lo8(-128)
	breq .L213
	rjmp .L210
.L212:
	cpi r25,lo8(-80)
	breq .L214
	cpi r25,lo8(-64)
	breq .L215
	rjmp .L210
.L213:
.LVL354:
	.loc 1 277 0
	ldi r20,0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL355:
	.loc 1 278 0
	rjmp .L210
.LVL356:
.L211:
	.loc 1 280 0
	lds r25,midiDataByte+1
	cpse r25,__zero_reg__
	rjmp .L217
	.loc 1 282 0
	ldi r20,0
	rjmp .L216
.L217:
	.loc 1 285 0
	ldi r20,lo8(1)
.L216:
.LVL357:
	.loc 1 287 0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL358:
	.loc 1 288 0
	rjmp .L210
.LVL359:
.L214:
	.loc 1 290 0
	lds r25,midiDataByte
	cpi r25,lo8(123)
	brne .L210
	.loc 1 291 0
	call midiAllNotesOff
.LVL360:
	rjmp .L210
.LVL361:
.L215:
	.loc 1 295 0
	lds r22,midiDataByte
	call midi_ProgramChange
.LVL362:
.L210:
.LBE82:
	.loc 1 302 0
	sts midiDataByteCount,__zero_reg__
.L195:
	ret
	.cfi_endproc
.LFE29:
	.size	midiIn_Process, .-midiIn_Process
	.section	.text.midiKeyPress_Process,"ax",@progbits
.global	midiKeyPress_Process
	.type	midiKeyPress_Process, @function
midiKeyPress_Process:
.LFB54:
	.loc 1 874 0
	.cfi_startproc
.LVL363:
	push r11
.LCFI52:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI53:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI54:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI55:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI56:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI57:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI58:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI59:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI60:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	.loc 1 875 0
	mov r16,r25
	andi r16,lo8(-32)
.LVL364:
	.loc 1 876 0
	andi r25,lo8(31)
	mov r13,r25
.LVL365:
	.loc 1 877 0
	mov r29,r24
.LVL366:
	.loc 1 880 0
	cpi r16,lo8(32)
	brne .+2
	rjmp .L240
	.loc 1 880 0 is_stmt 0 discriminator 1
	tst r16
	brne .+2
	rjmp .L241
.LBB83:
	rjmp .L218
.LVL367:
.L239:
	.loc 1 884 0 is_stmt 1
	sbrs r29,0
	rjmp .L221
	.loc 1 886 0
	ldi r18,lo8(32)
	mul r28,r18
	movw r24,r0
	clr __zero_reg__
.LVL368:
	mov r15,r13
	or r15,r24
	mov r24,r15
	call moduleBit_to_manualNote
.LVL369:
	mov r14,r24
	mov r12,r25
	.loc 1 888 0
	mov r17,r24
	cpi r24,lo8(-1)
	brne .+2
	rjmp .L222
.LBB84:
	.loc 1 891 0
	mov r22,r25
	call Manual_to_MidiNote
.LVL370:
	mov r11,r25
	.loc 1 892 0
	cpi r24,lo8(-1)
	breq .L223
	.loc 1 894 0
	cpi r16,lo8(32)
	breq .L242
	.loc 1 894 0 is_stmt 0 discriminator 2
	lds r25,midi_Setting+1
	tst r25
	breq .L243
	.loc 1 894 0
	ldi r25,lo8(-112)
	rjmp .L224
.L242:
	ldi r25,lo8(-112)
	rjmp .L224
.L243:
	ldi r25,lo8(-128)
.L224:
	.loc 1 894 0 discriminator 6
	or r24,r25
	call serial1MIDISend
.LVL371:
	.loc 1 896 0 is_stmt 1 discriminator 6
	mov r24,r11
	call serial1MIDISend
.LVL372:
	.loc 1 898 0 discriminator 6
	cpse r16,__zero_reg__
	rjmp .L244
	.loc 1 898 0 is_stmt 0 discriminator 1
	lds r24,midi_Setting+1
	cpse r24,__zero_reg__
	rjmp .L245
	.loc 1 898 0
	ldi r24,lo8(64)
	rjmp .L225
.L244:
	ldi r24,lo8(64)
	rjmp .L225
.L245:
	ldi r24,0
.L225:
	.loc 1 898 0 discriminator 6
	call serial1MIDISend
.LVL373:
	.loc 1 900 0 is_stmt 1 discriminator 6
	cpi r16,lo8(32)
	brne .L223
	.loc 1 902 0
	sts midiLastOutManual,r14
.LVL374:
	.loc 1 903 0
	sts midiLastOutNote,r12
.LVL375:
.L223:
	.loc 1 907 0
	ldi r20,lo8(1)
	cpi r16,lo8(32)
	breq .L226
	ldi r20,0
.L226:
	mov r14,r20
.LVL376:
	.loc 1 909 0
	cpse r17,__zero_reg__
	rjmp .L227
	.loc 1 910 0
	lds r24,midi_Couplers
.LVL377:
	cpi r24,lo8(-1)
	brne .L228
	.loc 1 911 0
	mov r22,r12
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL378:
.L228:
	.loc 1 913 0
	lds r24,midi_Couplers+1
	cpi r24,lo8(-1)
	brne .L229
	.loc 1 914 0
	mov r20,r14
	mov r22,r12
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL379:
.L229:
	.loc 1 916 0
	lds r24,midi_Couplers+3
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L222
	.loc 1 917 0
	mov r20,r14
	mov r22,r12
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL380:
	rjmp .L222
.LVL381:
.L227:
	.loc 1 919 0
	cpi r17,lo8(1)
	brne .L230
	.loc 1 920 0
	lds r24,midi_Couplers+2
.LVL382:
	cpi r24,lo8(-1)
	brne .L231
	.loc 1 921 0
	mov r22,r12
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL383:
.L231:
	.loc 1 923 0
	lds r24,midi_Couplers+4
	cpi r24,lo8(-1)
	brne .L232
	.loc 1 924 0
	mov r20,r14
	mov r22,r12
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL384:
.L232:
	.loc 1 926 0
	lds r24,midi_Couplers+6
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L222
	.loc 1 927 0
	mov r20,r14
	mov r22,r12
	ldi r24,0
	call manual_NoteOnOff
.LVL385:
	rjmp .L222
.LVL386:
.L230:
	.loc 1 929 0
	cpi r17,lo8(2)
	brne .L233
	.loc 1 930 0
	lds r24,midi_Couplers+5
.LVL387:
	cpi r24,lo8(-1)
	brne .L234
	.loc 1 931 0
	mov r22,r12
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL388:
.L234:
	.loc 1 933 0
	lds r24,midi_Couplers+7
	cpi r24,lo8(-1)
	brne .L235
	.loc 1 934 0
	mov r20,r14
	mov r22,r12
	ldi r24,0
	call manual_NoteOnOff
.LVL389:
.L235:
	.loc 1 936 0
	lds r24,midi_Couplers+8
	cpi r24,lo8(-1)
	brne .L222
	.loc 1 937 0
	mov r20,r14
	mov r22,r12
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL390:
	rjmp .L222
.LVL391:
.L233:
	.loc 1 939 0
	cpi r17,lo8(3)
	brne .L222
	.loc 1 940 0
	lds r24,midi_Couplers+9
.LVL392:
	cpi r24,lo8(-1)
	brne .L236
	.loc 1 941 0
	mov r22,r12
	ldi r24,0
	call manual_NoteOnOff
.LVL393:
.L236:
	.loc 1 943 0
	lds r24,midi_Couplers+10
	cpi r24,lo8(-1)
	brne .L237
	.loc 1 944 0
	mov r20,r14
	mov r22,r12
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL394:
.L237:
	.loc 1 946 0
	lds r24,midi_Couplers+11
	cpi r24,lo8(-1)
	brne .L222
	.loc 1 947 0
	mov r20,r14
	mov r22,r12
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL395:
.L222:
.LBE84:
	.loc 1 952 0
	mov r24,r15
.LVL396:
	call moduleBit_to_registerNr
.LVL397:
	cpi r16,lo8(32)
	brne .L246
	ldi r18,lo8(-128)
	rjmp .L238
.L246:
	ldi r18,0
.L238:
	.loc 1 952 0 is_stmt 0 discriminator 4
	or r24,r18
	sts midi_RegisterChanged,r24
.LVL398:
.L221:
	.loc 1 955 0 is_stmt 1 discriminator 2
	lsr r29
.LVL399:
	.loc 1 882 0 discriminator 2
	subi r28,lo8(-(1))
.LVL400:
	rjmp .L219
.LVL401:
.L240:
.LBE83:
	ldi r28,0
	rjmp .L219
.L241:
	ldi r28,0
.LVL402:
.L219:
.LBB85:
	.loc 1 882 0 is_stmt 0 discriminator 1
	cpi r28,lo8(8)
	brsh .+2
	rjmp .L239
.LVL403:
.L218:
/* epilogue start */
.LBE85:
	.loc 1 958 0 is_stmt 1
	pop r29
	pop r28
	pop r17
	pop r16
.LVL404:
	pop r15
	pop r14
	pop r13
.LVL405:
	pop r12
	pop r11
	ret
	.cfi_endproc
.LFE54:
	.size	midiKeyPress_Process, .-midiKeyPress_Process
	.section	.text.midiSendAllNotesOff,"ax",@progbits
.global	midiSendAllNotesOff
	.type	midiSendAllNotesOff, @function
midiSendAllNotesOff:
.LFB55:
	.loc 1 962 0
	.cfi_startproc
	push r28
.LCFI61:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL406:
.LBB86:
	.loc 1 963 0
	ldi r28,0
	rjmp .L248
.LVL407:
.L250:
.LBB87:
	.loc 1 964 0
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL408:
	.loc 1 965 0
	cpi r24,lo8(16)
	brsh .L249
	.loc 1 966 0
	ori r24,lo8(-80)
.LVL409:
	call serial1MIDISend
.LVL410:
	.loc 1 967 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL411:
	.loc 1 968 0
	ldi r24,0
	call serial1MIDISend
.LVL412:
.L249:
.LBE87:
	.loc 1 963 0 discriminator 2
	subi r28,lo8(-(1))
.LVL413:
.L248:
	.loc 1 963 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brlo .L250
/* epilogue start */
.LBE86:
	.loc 1 971 0 is_stmt 1
	pop r28
.LVL414:
	ret
	.cfi_endproc
.LFE55:
	.size	midiSendAllNotesOff, .-midiSendAllNotesOff
	.section	.text.midi_SendActiveSense,"ax",@progbits
.global	midi_SendActiveSense
	.type	midi_SendActiveSense, @function
midi_SendActiveSense:
.LFB56:
	.loc 1 973 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 974 0
	ldi r24,lo8(-2)
	call serial1MIDISend
.LVL415:
	ret
	.cfi_endproc
.LFE56:
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
	.loc 1 188 0
	lds r24,midi_Setting
	tst r24
	breq .L252
	.loc 1 189 0
	lds r24,swTimer+16
	tst r24
	breq .L254
	.loc 1 189 0 is_stmt 0 discriminator 1
	lds r24,swTimer+16
	cpi r24,lo8(-1)
	brne .L252
.L254:
.LBB88:
	.loc 1 191 0 is_stmt 1
	in r25,__SREG__
.LVL416:
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
	.loc 1 191 0
	ldi r24,lo8(1)
	rjmp .L255
.LVL417:
.L256:
	.loc 1 191 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(10)
.LVL418:
	std Z+16,r24
	std Z+17,__zero_reg__
.LVL419:
	.loc 1 191 0 discriminator 3
	ldi r24,0
.LVL420:
.L255:
	.loc 1 191 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L256
.LVL421:
.LBB91:
.LBB92:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL422:
.LBE92:
.LBE91:
.LBE88:
	.loc 1 192 0
	call midi_SendActiveSense
.LVL423:
.L252:
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
	.file 8 ".././menu.h"
	.file 9 ".././ee_prom.h"
	.file 10 ".././log.h"
	.file 11 ".././serial.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1b0f
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF189
	.byte	0xc
	.long	.LASF190
	.long	.LASF191
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
	.byte	0x2
	.byte	0x7
	.byte	0x7c
	.long	0x310
	.uleb128 0xa
	.long	.LASF46
	.byte	0x7
	.byte	0x7d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF47
	.byte	0x7
	.byte	0x7e
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x7
	.byte	0x7f
	.long	0x2eb
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.byte	0x84
	.long	0x340
	.uleb128 0xa
	.long	.LASF29
	.byte	0x7
	.byte	0x85
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF49
	.byte	0x7
	.byte	0x86
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x7
	.byte	0x88
	.long	0x31b
	.uleb128 0x9
	.byte	0x3
	.byte	0x7
	.byte	0x8e
	.long	0x37e
	.uleb128 0xa
	.long	.LASF51
	.byte	0x7
	.byte	0x8f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF52
	.byte	0x7
	.byte	0x90
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF39
	.byte	0x7
	.byte	0x91
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x7
	.byte	0x92
	.long	0x34b
	.uleb128 0x9
	.byte	0xa
	.byte	0x7
	.byte	0x96
	.long	0x3ae
	.uleb128 0xa
	.long	.LASF54
	.byte	0x7
	.byte	0x97
	.long	0x3ae
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF55
	.byte	0x7
	.byte	0x98
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.long	0x3b
	.long	0x3be
	.uleb128 0x8
	.long	0x82
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.long	.LASF56
	.byte	0x7
	.byte	0x99
	.long	0x389
	.uleb128 0x9
	.byte	0x3
	.byte	0x7
	.byte	0xc3
	.long	0x3fc
	.uleb128 0xa
	.long	.LASF57
	.byte	0x7
	.byte	0xc4
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF58
	.byte	0x7
	.byte	0xc5
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF59
	.byte	0x7
	.byte	0xc6
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF60
	.byte	0x7
	.byte	0xc7
	.long	0x3c9
	.uleb128 0xb
	.byte	0x2
	.long	0x3b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF61
	.uleb128 0xc
	.long	0x3b
	.uleb128 0x7
	.long	0x264
	.long	0x42f
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	0x2e0
	.long	0x445
	.uleb128 0x8
	.long	0x82
	.byte	0xf
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	0x340
	.long	0x455
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	0x37e
	.long	0x465
	.uleb128 0x8
	.long	0x82
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.long	0x3be
	.long	0x475
	.uleb128 0x8
	.long	0x82
	.byte	0x3f
	.byte	0
	.uleb128 0xd
	.long	.LASF192
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0xe
	.long	.LASF193
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x49b
	.uleb128 0xf
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0x49b
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x414
	.uleb128 0x10
	.byte	0x1
	.long	.LASF63
	.byte	0x1
	.byte	0x3f
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x4dd
	.uleb128 0x11
	.long	.LASF62
	.byte	0x1
	.byte	0x41
	.long	0x407
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
	.long	.LASF64
	.byte	0x1
	.byte	0x3b
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x500
	.uleb128 0x14
	.long	.LVL4
	.long	0x4a1
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF76
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
	.long	0x52e
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.byte	0x49
	.long	0x3b
	.long	.LLST2
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF67
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
	.long	0x56a
	.uleb128 0x11
	.long	.LASF65
	.byte	0x1
	.byte	0x5f
	.long	0xb8
	.long	.LLST3
	.uleb128 0x11
	.long	.LASF66
	.byte	0x1
	.byte	0x61
	.long	0x3b
	.long	.LLST4
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF68
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
	.long	0x5a3
	.uleb128 0x16
	.long	.LASF55
	.byte	0x1
	.byte	0x6c
	.long	0xb8
	.long	.LLST5
	.uleb128 0x11
	.long	.LASF66
	.byte	0x1
	.byte	0x6d
	.long	0x3b
	.long	.LLST6
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF69
	.byte	0x1
	.byte	0x89
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x5c6
	.uleb128 0x14
	.long	.LVL23
	.long	0x1a90
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF70
	.byte	0x1
	.word	0x139
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x607
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x1
	.word	0x13a
	.long	0x3b
	.long	.LLST7
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x1a
	.long	.LASF72
	.byte	0x1
	.word	0x13b
	.long	0x3b
	.long	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF73
	.byte	0x1
	.word	0x144
	.long	.LFB31
	.long	.LFE31
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x6cb
	.uleb128 0x1b
	.long	.LBB17
	.long	.LBE17
	.long	0x63f
	.uleb128 0x1a
	.long	.LASF72
	.byte	0x1
	.word	0x149
	.long	0x3b
	.long	.LLST9
	.byte	0
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x30
	.long	0x66f
	.uleb128 0x1a
	.long	.LASF74
	.byte	0x1
	.word	0x157
	.long	0x3b
	.long	.LLST10
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x1a
	.long	.LASF75
	.byte	0x1
	.word	0x158
	.long	0x3b
	.long	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL32
	.long	0x1a9d
	.uleb128 0x1d
	.long	.LVL33
	.long	0x1aaa
	.long	0x69a
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
	.long	0x5c6
	.uleb128 0x14
	.long	.LVL35
	.long	0x1ab7
	.uleb128 0x1f
	.long	.LVL43
	.long	0x1aaa
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
	.long	.LASF77
	.byte	0x1
	.word	0x161
	.byte	0x1
	.long	0x226
	.long	.LFB32
	.long	.LFE32
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x72f
	.uleb128 0x21
	.long	.LASF75
	.byte	0x1
	.word	0x161
	.long	0x3b
	.long	.LLST12
	.uleb128 0x22
	.long	.LASF65
	.byte	0x1
	.word	0x163
	.long	0x226
	.uleb128 0x23
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x166
	.long	0x72f
	.long	.LLST13
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x168
	.long	0x3b
	.long	.LLST14
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x37e
	.uleb128 0x20
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.word	0x178
	.byte	0x1
	.long	0x3b
	.long	.LFB33
	.long	.LFE33
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x792
	.uleb128 0x21
	.long	.LASF80
	.byte	0x1
	.word	0x178
	.long	0x3b
	.long	.LLST15
	.uleb128 0x25
	.long	.LASF81
	.byte	0x1
	.word	0x179
	.long	0x72f
	.byte	0x6
	.byte	0x3
	.long	registerMap
	.byte	0x9f
	.uleb128 0x23
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x1a
	.long	.LASF82
	.byte	0x1
	.word	0x17a
	.long	0x3b
	.long	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF83
	.byte	0x1
	.word	0x183
	.byte	0x1
	.long	0x3b
	.long	.LFB34
	.long	.LFE34
	.long	.LLST17
	.byte	0x1
	.long	0x83f
	.uleb128 0x21
	.long	.LASF75
	.byte	0x1
	.word	0x183
	.long	0x3b
	.long	.LLST18
	.uleb128 0x21
	.long	.LASF84
	.byte	0x1
	.word	0x183
	.long	0x3b
	.long	.LLST19
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x22
	.long	.LASF85
	.byte	0x1
	.word	0x188
	.long	0x226
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x78
	.long	0x82c
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.word	0x18b
	.long	0x3b
	.long	.LLST20
	.uleb128 0x1a
	.long	.LASF87
	.byte	0x1
	.word	0x18c
	.long	0x3b
	.long	.LLST21
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.word	0x18d
	.long	0x3b
	.long	.LLST22
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.word	0x18e
	.long	0x3b
	.long	.LLST23
	.byte	0
	.uleb128 0x1f
	.long	.LVL60
	.long	0x6cb
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
	.long	.LASF90
	.byte	0x1
	.word	0x1a1
	.byte	0x1
	.long	0x3b
	.long	.LFB35
	.long	.LFE35
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x8dc
	.uleb128 0x21
	.long	.LASF75
	.byte	0x1
	.word	0x1a1
	.long	0x3b
	.long	.LLST24
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x22
	.long	.LASF85
	.byte	0x1
	.word	0x1a5
	.long	0x226
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0xa8
	.long	0x8c9
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.word	0x1a8
	.long	0x3b
	.long	.LLST25
	.uleb128 0x1a
	.long	.LASF87
	.byte	0x1
	.word	0x1a9
	.long	0x3b
	.long	.LLST26
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.word	0x1aa
	.long	0x3b
	.long	.LLST27
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.word	0x1ab
	.long	0x3b
	.long	.LLST28
	.byte	0
	.uleb128 0x1f
	.long	.LVL74
	.long	0x6cb
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
	.long	.LASF91
	.byte	0x1
	.word	0x1bc
	.byte	0x1
	.long	0x3b
	.long	.LFB36
	.long	.LFE36
	.long	.LLST29
	.byte	0x1
	.long	0x948
	.uleb128 0x21
	.long	.LASF84
	.byte	0x1
	.word	0x1bc
	.long	0x3b
	.long	.LLST30
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x1
	.word	0x1bd
	.long	0x3b
	.long	.LLST31
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x1a
	.long	.LASF75
	.byte	0x1
	.word	0x1be
	.long	0x3b
	.long	.LLST32
	.uleb128 0x1f
	.long	.LVL90
	.long	0x792
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
	.long	.LASF92
	.byte	0x1
	.word	0x1c6
	.byte	0x1
	.long	0x3b
	.long	.LFB37
	.long	.LFE37
	.long	.LLST33
	.byte	0x1
	.long	0x9c3
	.uleb128 0x21
	.long	.LASF93
	.byte	0x1
	.word	0x1c6
	.long	0x407
	.long	.LLST34
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x1
	.word	0x1c7
	.long	0x3b
	.long	.LLST35
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.word	0x1c9
	.long	0x3b
	.long	.LLST36
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xd8
	.uleb128 0x1a
	.long	.LASF75
	.byte	0x1
	.word	0x1ca
	.long	0x3b
	.long	.LLST37
	.uleb128 0x1f
	.long	.LVL101
	.long	0x792
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
	.long	.LASF94
	.byte	0x1
	.word	0x1e1
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST38
	.byte	0x1
	.long	0xa64
	.uleb128 0x21
	.long	.LASF75
	.byte	0x1
	.word	0x1e1
	.long	0x3b
	.long	.LLST39
	.uleb128 0x21
	.long	.LASF95
	.byte	0x1
	.word	0x1e1
	.long	0x3b
	.long	.LLST40
	.uleb128 0x23
	.long	.LBB36
	.long	.LBE36
	.uleb128 0x22
	.long	.LASF85
	.byte	0x1
	.word	0x1e5
	.long	0x226
	.uleb128 0x1b
	.long	.LBB37
	.long	.LBE37
	.long	0xa51
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.word	0x1e8
	.long	0x3b
	.long	.LLST41
	.uleb128 0x1a
	.long	.LASF87
	.byte	0x1
	.word	0x1e9
	.long	0x3b
	.long	.LLST42
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.word	0x1ea
	.long	0x3b
	.long	.LLST43
	.byte	0
	.uleb128 0x1f
	.long	.LVL113
	.long	0x6cb
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
	.long	.LASF96
	.byte	0x1
	.byte	0xc7
	.long	.LFB28
	.long	.LFE28
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xa87
	.uleb128 0x14
	.long	.LVL124
	.long	0x9c3
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF97
	.byte	0x1
	.word	0x1f7
	.byte	0x1
	.long	0x3b
	.long	.LFB39
	.long	.LFE39
	.long	.LLST44
	.byte	0x1
	.long	0xb56
	.uleb128 0x21
	.long	.LASF98
	.byte	0x1
	.word	0x1f7
	.long	0x3b
	.long	.LLST45
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x1
	.word	0x1f9
	.long	0x3b
	.long	.LLST46
	.uleb128 0x12
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x1a
	.long	.LASF99
	.byte	0x1
	.word	0x1fb
	.long	0x3b
	.long	.LLST47
	.uleb128 0x1a
	.long	.LASF75
	.byte	0x1
	.word	0x1fc
	.long	0x3b
	.long	.LLST48
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.word	0x1fd
	.long	0x407
	.long	.LLST49
	.uleb128 0x22
	.long	.LASF55
	.byte	0x1
	.word	0x20c
	.long	0xb8
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x108
	.long	0xb4b
	.uleb128 0x1a
	.long	.LASF101
	.byte	0x1
	.word	0x1fe
	.long	0x3b
	.long	.LLST50
	.uleb128 0x23
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x1a
	.long	.LASF87
	.byte	0x1
	.word	0x202
	.long	0x3b
	.long	.LLST51
	.uleb128 0x1f
	.long	.LVL135
	.long	0x9c3
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
	.long	.LVL143
	.long	0x56a
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF102
	.byte	0x1
	.word	0x213
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.long	.LLST52
	.byte	0x1
	.long	0xbef
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.word	0x213
	.long	0x3b
	.long	.LLST53
	.uleb128 0x21
	.long	.LASF98
	.byte	0x1
	.word	0x213
	.long	0x3b
	.long	.LLST54
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x120
	.long	0xbd5
	.uleb128 0x1a
	.long	.LASF104
	.byte	0x1
	.word	0x216
	.long	0x3b
	.long	.LLST55
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x138
	.long	0xbc4
	.uleb128 0x1a
	.long	.LASF105
	.byte	0x1
	.word	0x218
	.long	0x3b
	.long	.LLST56
	.byte	0
	.uleb128 0x1f
	.long	.LVL157
	.long	0xa87
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL158
	.long	0x1ac4
	.uleb128 0x1f
	.long	.LVL159
	.long	0x1ac4
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
	.long	.LASF106
	.byte	0x1
	.word	0x232
	.long	.LFB41
	.long	.LFE41
	.long	.LLST57
	.byte	0x1
	.long	0xc37
	.uleb128 0x23
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x233
	.long	0x3b
	.long	.LLST58
	.uleb128 0x1f
	.long	.LVL164
	.long	0x9c3
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
	.long	.LASF107
	.byte	0x1
	.word	0x238
	.byte	0x1
	.long	0x3b
	.long	.LFB42
	.long	.LFE42
	.long	.LLST59
	.byte	0x1
	.long	0xcc0
	.uleb128 0x21
	.long	.LASF98
	.byte	0x1
	.word	0x238
	.long	0x3b
	.long	.LLST60
	.uleb128 0x21
	.long	.LASF108
	.byte	0x1
	.word	0x238
	.long	0x3b
	.long	.LLST61
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x1
	.word	0x23b
	.long	0x3b
	.long	.LLST62
	.uleb128 0x1b
	.long	.LBB49
	.long	.LBE49
	.long	0xcad
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.word	0x23d
	.long	0x407
	.long	.LLST63
	.uleb128 0x14
	.long	.LVL173
	.long	0x948
	.byte	0
	.uleb128 0x14
	.long	.LVL177
	.long	0x52e
	.uleb128 0x14
	.long	.LVL179
	.long	0x1ad1
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF109
	.byte	0x1
	.word	0x247
	.byte	0x1
	.long	0x3b
	.long	.LFB43
	.long	.LFE43
	.long	.LLST64
	.byte	0x1
	.long	0xd54
	.uleb128 0x21
	.long	.LASF98
	.byte	0x1
	.word	0x247
	.long	0x3b
	.long	.LLST65
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x1
	.word	0x24a
	.long	0x3b
	.long	.LLST66
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x1
	.word	0x24b
	.long	0x407
	.long	.LLST67
	.uleb128 0x1a
	.long	.LASF111
	.byte	0x1
	.word	0x24c
	.long	0x3b
	.long	.LLST68
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x1
	.word	0x24d
	.long	0x3b
	.long	.LLST69
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x158
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x24e
	.long	0x3b
	.long	.LLST70
	.uleb128 0x1f
	.long	.LVL190
	.long	0x83f
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
	.word	0x26a
	.byte	0x1
	.long	0x3b
	.long	.LFB44
	.long	.LFE44
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xdc8
	.uleb128 0x21
	.long	.LASF98
	.byte	0x1
	.word	0x26a
	.long	0x3b
	.long	.LLST71
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x1
	.word	0x26c
	.long	0x3b
	.long	.LLST72
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x1
	.word	0x26d
	.long	0x407
	.long	.LLST73
	.uleb128 0x1a
	.long	.LASF111
	.byte	0x1
	.word	0x26e
	.long	0x3b
	.long	.LLST74
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x178
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x26f
	.long	0x3b
	.long	.LLST75
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF114
	.byte	0x1
	.word	0x27f
	.long	.LFB45
	.long	.LFE45
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xe5d
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x1
	.word	0x280
	.long	0xe5d
	.long	.LLST76
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x190
	.long	0xe0a
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x283
	.long	0x3b
	.long	.LLST77
	.byte	0
	.uleb128 0x14
	.long	.LVL216
	.long	0x1ade
	.uleb128 0x1d
	.long	.LVL217
	.long	0x1aaa
	.long	0xe35
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
	.long	.LVL218
	.long	0x1aeb
	.uleb128 0x1f
	.long	.LVL219
	.long	0x1aaa
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
	.long	.LASF116
	.byte	0x1
	.word	0x2a7
	.long	.LFB46
	.long	.LFE46
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xec1
	.uleb128 0x1b
	.long	.LBB57
	.long	.LBE57
	.long	0xe99
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2a9
	.long	0x3b
	.long	.LLST78
	.byte	0
	.uleb128 0x14
	.long	.LVL223
	.long	0x1af8
	.uleb128 0x1f
	.long	.LVL224
	.long	0x1aaa
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
	.long	.LASF117
	.byte	0x1
	.word	0x2e3
	.byte	0x1
	.long	0x1c6
	.long	.LFB48
	.long	.LFE48
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xf0b
	.uleb128 0x21
	.long	.LASF32
	.byte	0x1
	.word	0x2e3
	.long	0x3b
	.long	.LLST79
	.uleb128 0x29
	.long	.LASF30
	.byte	0x1
	.word	0x2e3
	.long	0x3b
	.byte	0x1
	.byte	0x66
	.uleb128 0x22
	.long	.LASF65
	.byte	0x1
	.word	0x2e4
	.long	0x1c6
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF118
	.byte	0x1
	.word	0x2f1
	.long	.LFB49
	.long	.LFE49
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xf7a
	.uleb128 0x23
	.long	.LBB58
	.long	.LBE58
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2f2
	.long	0x3b
	.long	.LLST80
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1a8
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x1
	.word	0x2f3
	.long	0x3b
	.long	.LLST81
	.uleb128 0x1a
	.long	.LASF120
	.byte	0x1
	.word	0x2f4
	.long	0x3b
	.long	.LLST82
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1a8
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x1
	.word	0x2f5
	.long	0x3b
	.long	.LLST83
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF122
	.byte	0x1
	.word	0x309
	.long	.LFB50
	.long	.LFE50
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xff9
	.uleb128 0x1b
	.long	.LBB63
	.long	.LBE63
	.long	0xfc4
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x30a
	.long	0x29
	.long	.LLST84
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1c0
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.word	0x30c
	.long	0x29
	.long	.LLST85
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL244
	.long	0x1b05
	.uleb128 0x1d
	.long	.LVL245
	.long	0x1aaa
	.long	0xfef
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
	.long	.LVL246
	.long	0xf0b
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF123
	.byte	0x1
	.word	0x31c
	.byte	0x1
	.long	0x226
	.long	.LFB51
	.long	.LFE51
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x106d
	.uleb128 0x21
	.long	.LASF32
	.byte	0x1
	.word	0x31c
	.long	0x3b
	.long	.LLST86
	.uleb128 0x21
	.long	.LASF30
	.byte	0x1
	.word	0x31c
	.long	0x3b
	.long	.LLST87
	.uleb128 0x22
	.long	.LASF65
	.byte	0x1
	.word	0x31e
	.long	0x226
	.uleb128 0x23
	.long	.LBB66
	.long	.LBE66
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x321
	.long	0x106d
	.long	.LLST88
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x323
	.long	0x3b
	.long	.LLST89
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x264
	.uleb128 0x20
	.byte	0x1
	.long	.LASF124
	.byte	0x1
	.word	0x333
	.byte	0x1
	.long	0x1f6
	.long	.LFB52
	.long	.LFE52
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x10e7
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x333
	.long	0x3b
	.long	.LLST90
	.uleb128 0x22
	.long	.LASF65
	.byte	0x1
	.word	0x337
	.long	0x1f6
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.word	0x338
	.long	0x106d
	.long	.LLST91
	.uleb128 0x1a
	.long	.LASF32
	.byte	0x1
	.word	0x33a
	.long	0x3b
	.long	.LLST92
	.uleb128 0x23
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x33c
	.long	0x3b
	.long	.LLST93
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF125
	.byte	0x1
	.word	0x34d
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.long	.LLST94
	.byte	0x1
	.long	0x11ad
	.uleb128 0x21
	.long	.LASF32
	.byte	0x1
	.word	0x34d
	.long	0x3b
	.long	.LLST95
	.uleb128 0x21
	.long	.LASF30
	.byte	0x1
	.word	0x34d
	.long	0x3b
	.long	.LLST96
	.uleb128 0x21
	.long	.LASF95
	.byte	0x1
	.word	0x34d
	.long	0x3b
	.long	.LLST97
	.uleb128 0x22
	.long	.LASF126
	.byte	0x1
	.word	0x34e
	.long	0x226
	.uleb128 0x1b
	.long	.LBB68
	.long	.LBE68
	.long	0x116c
	.uleb128 0x1a
	.long	.LASF87
	.byte	0x1
	.word	0x352
	.long	0x3b
	.long	.LLST98
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.word	0x353
	.long	0x3b
	.long	.LLST99
	.byte	0
	.uleb128 0x1d
	.long	.LVL266
	.long	0xff9
	.long	0x1186
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
	.uleb128 0x14
	.long	.LVL275
	.long	0x1ac4
	.uleb128 0x1d
	.long	.LVL276
	.long	0x1ac4
	.long	0x11a3
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL277
	.long	0x1ac4
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF127
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST100
	.byte	0x1
	.long	0x1226
	.uleb128 0x16
	.long	.LASF103
	.byte	0x1
	.byte	0x8e
	.long	0x3b
	.long	.LLST101
	.uleb128 0x11
	.long	.LASF128
	.byte	0x1
	.byte	0x8f
	.long	0x3b
	.long	.LLST102
	.uleb128 0x23
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x11
	.long	.LASF30
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
	.long	.LVL287
	.long	0x10e7
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
	.long	.LASF129
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.long	.LLST105
	.byte	0x1
	.long	0x1285
	.uleb128 0x16
	.long	.LASF32
	.byte	0x1
	.byte	0x9e
	.long	0x3b
	.long	.LLST106
	.uleb128 0x23
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x11
	.long	.LASF30
	.byte	0x1
	.byte	0xa1
	.long	0x3b
	.long	.LLST107
	.uleb128 0x1f
	.long	.LVL297
	.long	0x10e7
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
	.long	.LASF130
	.byte	0x1
	.byte	0xa7
	.long	.LFB25
	.long	.LFE25
	.long	.LLST108
	.byte	0x1
	.long	0x12c8
	.uleb128 0x23
	.long	.LBB72
	.long	.LBE72
	.uleb128 0x11
	.long	.LASF32
	.byte	0x1
	.byte	0xa8
	.long	0x3b
	.long	.LLST109
	.uleb128 0x1f
	.long	.LVL302
	.long	0x1226
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
	.long	.LASF131
	.byte	0x1
	.byte	0xb0
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x12eb
	.uleb128 0x14
	.long	.LVL305
	.long	0x1285
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF132
	.byte	0x1
	.word	0x2bb
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.long	.LLST110
	.byte	0x1
	.long	0x13d9
	.uleb128 0x21
	.long	.LASF103
	.byte	0x1
	.word	0x2bb
	.long	0x3b
	.long	.LLST111
	.uleb128 0x21
	.long	.LASF30
	.byte	0x1
	.word	0x2bb
	.long	0x3b
	.long	.LLST112
	.uleb128 0x21
	.long	.LASF95
	.byte	0x1
	.word	0x2bb
	.long	0x3b
	.long	.LLST113
	.uleb128 0x1a
	.long	.LASF133
	.byte	0x1
	.word	0x2bd
	.long	0x3b
	.long	.LLST114
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x1d8
	.long	0x13b2
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x2be
	.long	0x3b
	.long	.LLST115
	.uleb128 0x23
	.long	.LBB74
	.long	.LBE74
	.uleb128 0x1a
	.long	.LASF134
	.byte	0x1
	.word	0x2c1
	.long	0x29
	.long	.LLST116
	.uleb128 0x23
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x1a
	.long	.LASF32
	.byte	0x1
	.word	0x2c4
	.long	0x3b
	.long	.LLST117
	.uleb128 0x1a
	.long	.LASF135
	.byte	0x1
	.word	0x2c5
	.long	0x3b
	.long	.LLST118
	.uleb128 0x1f
	.long	.LVL315
	.long	0x10e7
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
	.long	.LVL321
	.long	0x1ac4
	.uleb128 0x1d
	.long	.LVL322
	.long	0x1ac4
	.long	0x13cf
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL323
	.long	0x1ac4
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF136
	.byte	0x1
	.byte	0xd8
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x14bc
	.uleb128 0x16
	.long	.LASF137
	.byte	0x1
	.byte	0xd8
	.long	0x3b
	.long	.LLST119
	.uleb128 0x1b
	.long	.LBB77
	.long	.LBE77
	.long	0x1456
	.uleb128 0x11
	.long	.LASF138
	.byte	0x1
	.byte	0xe0
	.long	0x3b
	.long	.LLST120
	.uleb128 0x11
	.long	.LASF139
	.byte	0x1
	.byte	0xe0
	.long	0x3b
	.long	.LLST121
	.uleb128 0x2c
	.long	0x475
	.long	.LBB78
	.long	.LBE78
	.byte	0x1
	.byte	0xe0
	.uleb128 0x2d
	.long	0x482
	.long	.LBB80
	.long	.LBE80
	.byte	0x1
	.byte	0xe0
	.uleb128 0x2e
	.long	0x48f
	.long	.LLST122
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LBB82
	.long	.LBE82
	.long	0x14b2
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x1
	.word	0x10f
	.long	0x3b
	.long	.LLST123
	.uleb128 0x1a
	.long	.LASF140
	.byte	0x1
	.word	0x110
	.long	0x3b
	.long	.LLST124
	.uleb128 0x1d
	.long	.LVL355
	.long	0x12eb
	.long	0x1496
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL358
	.long	0x12eb
	.uleb128 0x14
	.long	.LVL360
	.long	0x11ad
	.uleb128 0x14
	.long	.LVL362
	.long	0xb56
	.byte	0
	.uleb128 0x14
	.long	.LVL338
	.long	0x5a3
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF141
	.byte	0x1
	.word	0x36a
	.byte	0x1
	.long	.LFB54
	.long	.LFE54
	.long	.LLST125
	.byte	0x1
	.long	0x172c
	.uleb128 0x21
	.long	.LASF142
	.byte	0x1
	.word	0x36a
	.long	0xe2
	.long	.LLST126
	.uleb128 0x1a
	.long	.LASF143
	.byte	0x1
	.word	0x36b
	.long	0x3b
	.long	.LLST127
	.uleb128 0x1a
	.long	.LASF144
	.byte	0x1
	.word	0x36c
	.long	0x3b
	.long	.LLST128
	.uleb128 0x1a
	.long	.LASF145
	.byte	0x1
	.word	0x36d
	.long	0x3b
	.long	.LLST129
	.uleb128 0x1a
	.long	.LASF44
	.byte	0x1
	.word	0x36e
	.long	0x1f6
	.long	.LLST130
	.uleb128 0x1a
	.long	.LASF146
	.byte	0x1
	.word	0x36f
	.long	0x1c6
	.long	.LLST131
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x1f0
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x372
	.long	0x3b
	.long	.LLST132
	.uleb128 0x1b
	.long	.LBB84
	.long	.LBE84
	.long	0x1706
	.uleb128 0x1a
	.long	.LASF140
	.byte	0x1
	.word	0x38b
	.long	0x3b
	.long	.LLST133
	.uleb128 0x1d
	.long	.LVL370
	.long	0xec1
	.long	0x1581
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL371
	.long	0x1ac4
	.uleb128 0x1d
	.long	.LVL372
	.long	0x1ac4
	.long	0x159e
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL373
	.long	0x1ac4
	.uleb128 0x1d
	.long	.LVL378
	.long	0x10e7
	.long	0x15c6
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL379
	.long	0x10e7
	.long	0x15e5
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL380
	.long	0x10e7
	.long	0x1604
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL383
	.long	0x10e7
	.long	0x161d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL384
	.long	0x10e7
	.long	0x163c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL385
	.long	0x10e7
	.long	0x165b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL388
	.long	0x10e7
	.long	0x1674
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL389
	.long	0x10e7
	.long	0x1693
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL390
	.long	0x10e7
	.long	0x16b2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL393
	.long	0x10e7
	.long	0x16cb
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL394
	.long	0x10e7
	.long	0x16ea
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL395
	.long	0x10e7
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL369
	.long	0x1073
	.long	0x171a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL397
	.long	0x735
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF147
	.byte	0x1
	.word	0x3c2
	.long	.LFB55
	.long	.LFE55
	.long	.LLST134
	.byte	0x1
	.long	0x17a5
	.uleb128 0x23
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.word	0x3c3
	.long	0x3b
	.long	.LLST135
	.uleb128 0x23
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x1a
	.long	.LASF148
	.byte	0x1
	.word	0x3c4
	.long	0x3b
	.long	.LLST136
	.uleb128 0x14
	.long	.LVL410
	.long	0x1ac4
	.uleb128 0x1d
	.long	.LVL411
	.long	0x1ac4
	.long	0x1793
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x1f
	.long	.LVL412
	.long	0x1ac4
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
	.long	.LASF149
	.byte	0x1
	.word	0x3cd
	.long	.LFB56
	.long	.LFE56
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x17d0
	.uleb128 0x1f
	.long	.LVL415
	.long	0x1ac4
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
	.long	.LASF150
	.byte	0x1
	.byte	0xbb
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1847
	.uleb128 0x1b
	.long	.LBB88
	.long	.LBE88
	.long	0x183d
	.uleb128 0x11
	.long	.LASF138
	.byte	0x1
	.byte	0xbf
	.long	0x3b
	.long	.LLST137
	.uleb128 0x11
	.long	.LASF139
	.byte	0x1
	.byte	0xbf
	.long	0x3b
	.long	.LLST138
	.uleb128 0x2c
	.long	0x475
	.long	.LBB89
	.long	.LBE89
	.byte	0x1
	.byte	0xbf
	.uleb128 0x2d
	.long	0x482
	.long	.LBB91
	.long	.LBE91
	.byte	0x1
	.byte	0xbf
	.uleb128 0x2e
	.long	0x48f
	.long	.LLST139
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL423
	.long	0x17a5
	.byte	0
	.uleb128 0x7
	.long	0x1857
	.long	0x1857
	.uleb128 0x8
	.long	0x82
	.byte	0x8
	.byte	0
	.uleb128 0x2f
	.long	0x112
	.uleb128 0x30
	.long	.LASF151
	.byte	0x6
	.byte	0x53
	.long	0x1869
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.long	0x1847
	.uleb128 0x7
	.long	0x196
	.long	0x187e
	.uleb128 0x8
	.long	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x30
	.long	.LASF152
	.byte	0x6
	.byte	0xaf
	.long	0x186e
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	.LASF153
	.byte	0x6
	.byte	0xb6
	.long	0x1898
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.long	0x3b
	.uleb128 0x31
	.long	.LASF154
	.byte	0x1
	.byte	0x2c
	.long	0x419
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	manualMap
	.uleb128 0x7
	.long	0x294
	.long	0x18bf
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x31
	.long	.LASF155
	.byte	0x1
	.byte	0x2d
	.long	0x18af
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ManualNoteRange
	.uleb128 0x31
	.long	.LASF156
	.byte	0x1
	.byte	0x2e
	.long	0x42f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiInMap
	.uleb128 0x31
	.long	.LASF157
	.byte	0x1
	.byte	0x36
	.long	0x310
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiThrough
	.uleb128 0x31
	.long	.LASF158
	.byte	0x1
	.byte	0x2f
	.long	0x445
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiOutMap
	.uleb128 0x31
	.long	.LASF159
	.byte	0x1
	.byte	0x33
	.long	0x455
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerMap
	.uleb128 0x31
	.long	.LASF160
	.byte	0x1
	.byte	0x34
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerCount
	.uleb128 0x31
	.long	.LASF161
	.byte	0x1
	.byte	0x35
	.long	0x465
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	programMap
	.uleb128 0x31
	.long	.LASF162
	.byte	0x1
	.byte	0x37
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_RegisterChanged
	.uleb128 0x31
	.long	.LASF163
	.byte	0x1
	.byte	0x30
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxActivceSensing
	.uleb128 0x31
	.long	.LASF164
	.byte	0x1
	.byte	0x31
	.long	0x3fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Setting
	.uleb128 0x31
	.long	.LASF165
	.byte	0x1
	.byte	0x7f
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutNote
	.uleb128 0x31
	.long	.LASF166
	.byte	0x1
	.byte	0x80
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutManual
	.uleb128 0x31
	.long	.LASF167
	.byte	0x1
	.byte	0x81
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInNote
	.uleb128 0x31
	.long	.LASF168
	.byte	0x1
	.byte	0x82
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInChannel
	.uleb128 0x31
	.long	.LASF169
	.byte	0x1
	.byte	0x83
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInManual
	.uleb128 0x31
	.long	.LASF170
	.byte	0x1
	.byte	0x84
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastProgram
	.uleb128 0x7
	.long	0x3b
	.long	0x19ef
	.uleb128 0x8
	.long	0x82
	.byte	0xb
	.byte	0
	.uleb128 0x31
	.long	.LASF171
	.byte	0x1
	.byte	0x1c
	.long	0x19df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_Couplers
	.uleb128 0x31
	.long	.LASF172
	.byte	0x1
	.byte	0x1d
	.long	0x1a13
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cplInfo
	.uleb128 0x32
	.uleb128 0x7
	.long	0x3b
	.long	0x1a24
	.uleb128 0x8
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x31
	.long	.LASF173
	.byte	0x8
	.byte	0xad
	.long	0x1a14
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x31
	.long	.LASF174
	.byte	0x1
	.byte	0x32
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiEEPromLoadError
	.uleb128 0x31
	.long	.LASF175
	.byte	0x1
	.byte	0x7a
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastCommand
	.uleb128 0x31
	.long	.LASF176
	.byte	0x1
	.byte	0x7b
	.long	0x3ae
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByte
	.uleb128 0x31
	.long	.LASF177
	.byte	0x1
	.byte	0x7c
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteCount
	.uleb128 0x31
	.long	.LASF178
	.byte	0x1
	.byte	0x7d
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteExpected
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF179
	.long	.LASF179
	.byte	0x6
	.byte	0x5a
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF180
	.long	.LASF180
	.byte	0x9
	.byte	0x1c
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF181
	.long	.LASF181
	.byte	0xa
	.byte	0x32
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF182
	.long	.LASF182
	.byte	0x9
	.byte	0x1d
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF183
	.long	.LASF183
	.byte	0xb
	.byte	0x7c
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF184
	.long	.LASF184
	.byte	0x9
	.byte	0x27
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF185
	.long	.LASF185
	.byte	0x9
	.byte	0x18
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF186
	.long	.LASF186
	.byte	0x9
	.byte	0x1f
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF187
	.long	.LASF187
	.byte	0x9
	.byte	0x19
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF188
	.long	.LASF188
	.byte	0x9
	.byte	0x17
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.long	.LFE30
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
	.long	.LFE30
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
	.long	.LFE32
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
	.long	.LFE33
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
	.long	.LFE33
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST17:
	.long	.LFB34
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI0
	.long	.LFE34
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
	.long	.LFE34
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
	.long	.LFE34
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
	.long	.LFE35
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
	.long	.LFB36
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
	.long	.LFE36
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
	.long	.LFE36
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
	.long	.LFE36
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
	.long	.LFB37
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
	.long	.LFE37
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
	.long	.LFE37
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
	.long	.LFB38
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI10
	.long	.LFE38
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
	.long	.LFE38
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
	.long	.LVL123
	.word	0x1
	.byte	0x6c
	.long	.LVL123
	.long	.LFE38
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
	.long	.LVL118
	.word	0x1
	.byte	0x6e
	.long	.LVL120
	.long	.LVL121
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST43:
	.long	.LVL117
	.long	.LVL119
	.word	0x1
	.byte	0x69
	.long	.LVL120
	.long	.LVL122
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST44:
	.long	.LFB39
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
	.long	.LFE39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST45:
	.long	.LVL125
	.long	.LVL128
	.word	0x1
	.byte	0x68
	.long	.LVL128
	.long	.LVL142
	.word	0x1
	.byte	0x5e
	.long	.LVL142
	.long	.LVL144
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL144
	.long	.LVL145
	.word	0x1
	.byte	0x68
	.long	.LVL145
	.long	.LFE39
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL126
	.long	.LVL130
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL130
	.long	.LVL144
	.word	0x1
	.byte	0x60
	.long	.LVL144
	.long	.LVL145
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL145
	.long	.LVL146
	.word	0x1
	.byte	0x60
	.long	.LVL146
	.long	.LFE39
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST47:
	.long	.LVL132
	.long	.LVL140
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST48:
	.long	.LVL127
	.long	.LVL130
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL130
	.long	.LVL144
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST49:
	.long	.LVL129
	.long	.LVL131
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL131
	.long	.LVL140
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL140
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
	.long	.LVL129
	.long	.LVL130
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL130
	.long	.LVL144
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST51:
	.long	.LVL132
	.long	.LVL133
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL133
	.long	.LVL140
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST52:
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
	.long	.LFE40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST53:
	.long	.LVL147
	.long	.LVL148
	.word	0x1
	.byte	0x68
	.long	.LVL148
	.long	.LVL161
	.word	0x1
	.byte	0x6c
	.long	.LVL161
	.long	.LFE40
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST54:
	.long	.LVL147
	.long	.LVL157-1
	.word	0x1
	.byte	0x66
	.long	.LVL157-1
	.long	.LVL160
	.word	0x1
	.byte	0x6d
	.long	.LVL160
	.long	.LFE40
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST55:
	.long	.LVL155
	.long	.LVL156
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST56:
	.long	.LVL149
	.long	.LVL151
	.word	0x1
	.byte	0x68
	.long	.LVL152
	.long	.LVL153
	.word	0x1
	.byte	0x68
	.long	.LVL154
	.long	.LVL155
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST57:
	.long	.LFB41
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI22
	.long	.LFE41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST58:
	.long	.LVL162
	.long	.LVL163
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL163
	.long	.LVL166
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST59:
	.long	.LFB42
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
	.long	.LFE42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST60:
	.long	.LVL167
	.long	.LVL169
	.word	0x1
	.byte	0x68
	.long	.LVL169
	.long	.LVL170
	.word	0x1
	.byte	0x62
	.long	.LVL170
	.long	.LVL175
	.word	0x1
	.byte	0x6c
	.long	.LVL175
	.long	.LVL176
	.word	0x1
	.byte	0x68
	.long	.LVL176
	.long	.LVL178
	.word	0x1
	.byte	0x6c
	.long	.LVL178
	.long	.LFE42
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST61:
	.long	.LVL167
	.long	.LVL173-1
	.word	0x1
	.byte	0x66
	.long	.LVL173-1
	.long	.LVL181
	.word	0x1
	.byte	0x60
	.long	.LVL181
	.long	.LFE42
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST62:
	.long	.LVL168
	.long	.LVL174
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL174
	.long	.LVL175
	.word	0x1
	.byte	0x61
	.long	.LVL175
	.long	.LVL176
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL176
	.long	.LVL180
	.word	0x1
	.byte	0x61
	.long	.LVL180
	.long	.LFE42
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST63:
	.long	.LVL171
	.long	.LVL172
	.word	0x9
	.byte	0x88
	.sleb128 0
	.byte	0x3
	.long	programMap
	.byte	0x22
	.byte	0x9f
	.long	.LVL172
	.long	.LVL173-1
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
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI31
	.long	.LFE43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST65:
	.long	.LVL182
	.long	.LVL184
	.word	0x1
	.byte	0x68
	.long	.LVL184
	.long	.LFE43
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST66:
	.long	.LVL183
	.long	.LVL186
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL186
	.long	.LVL201
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST67:
	.long	.LVL185
	.long	.LVL187
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL187
	.long	.LVL189
	.word	0x3
	.byte	0x80
	.sleb128 1
	.byte	0x9f
	.long	.LVL189
	.long	.LVL200
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
	.long	.LVL185
	.long	.LVL186
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL186
	.long	.LVL198
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST69:
	.long	.LVL190
	.long	.LVL193
	.word	0x1
	.byte	0x68
	.long	.LVL194
	.long	.LVL195
	.word	0x1
	.byte	0x68
	.long	.LVL196
	.long	.LVL197
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST70:
	.long	.LVL185
	.long	.LVL186
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL186
	.long	.LVL199
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST71:
	.long	.LVL202
	.long	.LVL203
	.word	0x1
	.byte	0x68
	.long	.LVL203
	.long	.LFE44
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST72:
	.long	.LVL202
	.long	.LVL205
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL205
	.long	.LFE44
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST73:
	.long	.LVL204
	.long	.LVL206
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL206
	.long	.LVL208
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL208
	.long	.LFE44
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
	.long	.LVL204
	.long	.LVL205
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL205
	.long	.LFE44
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST75:
	.long	.LVL204
	.long	.LVL205
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL205
	.long	.LFE44
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST76:
	.long	.LVL213
	.long	.LVL216-1
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
	.long	.LVL212
	.long	.LVL213
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	.LVL213
	.long	.LVL216-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST78:
	.long	.LVL220
	.long	.LVL221
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL221
	.long	.LVL223-1
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST79:
	.long	.LVL225
	.long	.LVL226
	.word	0x1
	.byte	0x68
	.long	.LVL226
	.long	.LVL227
	.word	0x1
	.byte	0x6e
	.long	.LVL227
	.long	.LFE48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST80:
	.long	.LVL228
	.long	.LVL229
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL229
	.long	.LFE49
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST81:
	.long	.LVL229
	.long	.LVL235
	.word	0x1
	.byte	0x65
	.long	.LVL236
	.long	.LVL237
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST82:
	.long	.LVL229
	.long	.LVL235
	.word	0x1
	.byte	0x66
	.long	.LVL236
	.long	.LVL237
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST83:
	.long	.LVL229
	.long	.LVL230
	.word	0x1
	.byte	0x64
	.long	.LVL230
	.long	.LVL231
	.word	0x1
	.byte	0x62
	.long	.LVL231
	.long	.LVL235
	.word	0x1
	.byte	0x64
	.long	.LVL236
	.long	.LVL237
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST84:
	.long	.LVL238
	.long	.LVL239
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL239
	.long	.LVL244-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST85:
	.long	.LVL239
	.long	.LVL241
	.word	0x1
	.byte	0x62
	.long	.LVL242
	.long	.LVL243
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST86:
	.long	.LVL247
	.long	.LVL249
	.word	0x1
	.byte	0x68
	.long	.LVL249
	.long	.LFE51
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST87:
	.long	.LVL247
	.long	.LVL250
	.word	0x1
	.byte	0x66
	.long	.LVL250
	.long	.LVL252
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL252
	.long	.LFE51
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST88:
	.long	.LVL248
	.long	.LVL255
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
	.long	.LVL248
	.long	.LVL249
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL249
	.long	.LVL251
	.word	0x1
	.byte	0x68
	.long	.LVL252
	.long	.LVL255
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST90:
	.long	.LVL256
	.long	.LVL259
	.word	0x1
	.byte	0x68
	.long	.LVL259
	.long	.LVL260
	.word	0x1
	.byte	0x66
	.long	.LVL260
	.long	.LVL264
	.word	0x1
	.byte	0x68
	.long	.LVL264
	.long	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST91:
	.long	.LVL257
	.long	.LFE52
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
	.long	.LVL256
	.long	.LVL257
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL257
	.long	.LFE52
	.word	0x1
	.byte	0x6b
	.long	0
	.long	0
.LLST93:
	.long	.LVL257
	.long	.LVL258
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL258
	.long	.LFE52
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST94:
	.long	.LFB53
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
	.long	.LFE53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST95:
	.long	.LVL265
	.long	.LVL266-1
	.word	0x1
	.byte	0x68
	.long	.LVL266-1
	.long	.LVL279
	.word	0x1
	.byte	0x6c
	.long	.LVL279
	.long	.LFE53
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST96:
	.long	.LVL265
	.long	.LVL266-1
	.word	0x1
	.byte	0x66
	.long	.LVL266-1
	.long	.LVL280
	.word	0x1
	.byte	0x61
	.long	.LVL280
	.long	.LFE53
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST97:
	.long	.LVL265
	.long	.LVL266-1
	.word	0x1
	.byte	0x64
	.long	.LVL266-1
	.long	.LVL278
	.word	0x1
	.byte	0x6d
	.long	.LVL278
	.long	.LFE53
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST98:
	.long	.LVL268
	.long	.LVL270
	.word	0x1
	.byte	0x6e
	.long	.LVL272
	.long	.LVL273
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST99:
	.long	.LVL269
	.long	.LVL271
	.word	0x1
	.byte	0x69
	.long	.LVL272
	.long	.LVL274
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST100:
	.long	.LFB23
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI35
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI36
	.long	.LCFI37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI37
	.long	.LCFI38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI38
	.long	.LCFI39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI39
	.long	.LCFI40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI40
	.long	.LCFI41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI41
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI42
	.long	.LFE23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST101:
	.long	.LVL281
	.long	.LVL283
	.word	0x1
	.byte	0x68
	.long	.LVL283
	.long	.LVL293
	.word	0x1
	.byte	0x5c
	.long	.LVL293
	.long	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST102:
	.long	.LVL282
	.long	.LVL283
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL283
	.long	.LVL292
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST103:
	.long	.LVL284
	.long	.LVL286
	.word	0x1
	.byte	0x66
	.long	.LVL286
	.long	.LVL289
	.word	0x1
	.byte	0x5e
	.long	.LVL289
	.long	.LVL290
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST104:
	.long	.LVL285
	.long	.LVL290
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST105:
	.long	.LFB24
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI43
	.long	.LCFI44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI44
	.long	.LCFI45
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI45
	.long	.LCFI46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI46
	.long	.LFE24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST106:
	.long	.LVL294
	.long	.LVL295
	.word	0x1
	.byte	0x68
	.long	.LVL295
	.long	.LVL299
	.word	0x1
	.byte	0x60
	.long	.LVL299
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST107:
	.long	.LVL296
	.long	.LVL299
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST108:
	.long	.LFB25
	.long	.LCFI47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI47
	.long	.LFE25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST109:
	.long	.LVL300
	.long	.LVL301
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL301
	.long	.LVL304
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST110:
	.long	.LFB47
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
	.long	.LFE47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST111:
	.long	.LVL306
	.long	.LVL307
	.word	0x1
	.byte	0x68
	.long	.LVL307
	.long	.LVL309
	.word	0x1
	.byte	0x6d
	.long	.LVL309
	.long	.LVL314
	.word	0x1
	.byte	0x64
	.long	.LVL314
	.long	.LVL324
	.word	0x1
	.byte	0x6d
	.long	.LVL324
	.long	.LFE47
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
	.long	.LVL306
	.long	.LVL308
	.word	0x1
	.byte	0x66
	.long	.LVL308
	.long	.LVL327
	.word	0x1
	.byte	0x60
	.long	.LVL327
	.long	.LFE47
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST113:
	.long	.LVL306
	.long	.LVL308
	.word	0x1
	.byte	0x64
	.long	.LVL308
	.long	.LVL326
	.word	0x1
	.byte	0x61
	.long	.LVL326
	.long	.LFE47
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST114:
	.long	.LVL307
	.long	.LVL308
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL308
	.long	.LVL312
	.word	0x1
	.byte	0x69
	.long	.LVL315
	.long	.LVL316
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL316
	.long	.LVL318
	.word	0x1
	.byte	0x69
	.long	.LVL319
	.long	.LVL320
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST115:
	.long	.LVL307
	.long	.LVL308
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL308
	.long	.LVL309
	.word	0x1
	.byte	0x6c
	.long	.LVL309
	.long	.LVL315-1
	.word	0x1
	.byte	0x62
	.long	.LVL315-1
	.long	.LVL325
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST116:
	.long	.LVL310
	.long	.LVL313
	.word	0x1
	.byte	0x66
	.long	.LVL313
	.long	.LVL315-1
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST117:
	.long	.LVL311
	.long	.LVL315-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST118:
	.long	.LVL313
	.long	.LVL315-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST119:
	.long	.LVL328
	.long	.LVL329
	.word	0x1
	.byte	0x68
	.long	.LVL329
	.long	.LVL337
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL337
	.long	.LVL338-1
	.word	0x1
	.byte	0x68
	.long	.LVL338-1
	.long	.LVL339
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
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
	.long	.LVL349
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL349
	.long	.LVL350
	.word	0x1
	.byte	0x68
	.long	.LVL350
	.long	.LVL351
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL351
	.long	.LVL352
	.word	0x1
	.byte	0x68
	.long	.LVL352
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST120:
	.long	.LVL330
	.long	.LVL336
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST121:
	.long	.LVL331
	.long	.LVL332
	.word	0x1
	.byte	0x68
	.long	.LVL333
	.long	.LVL334
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL334
	.long	.LVL337
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST122:
	.long	.LVL335
	.long	.LVL336
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+5135
	.sleb128 0
	.long	0
	.long	0
.LLST123:
	.long	.LVL353
	.long	.LVL355-1
	.word	0x1
	.byte	0x68
	.long	.LVL356
	.long	.LVL358-1
	.word	0x1
	.byte	0x68
	.long	.LVL359
	.long	.LVL360-1
	.word	0x1
	.byte	0x68
	.long	.LVL361
	.long	.LVL362-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST124:
	.long	.LVL354
	.long	.LVL356
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL357
	.long	.LVL358-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST125:
	.long	.LFB54
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
	.long	.LCFI56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI56
	.long	.LCFI57
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI57
	.long	.LCFI58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI58
	.long	.LCFI59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI59
	.long	.LCFI60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI60
	.long	.LFE54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST126:
	.long	.LVL363
	.long	.LVL368
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL398
	.long	.LFE54
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST127:
	.long	.LVL364
	.long	.LVL404
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST128:
	.long	.LVL365
	.long	.LVL405
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST129:
	.long	.LVL366
	.long	.LVL367
	.word	0x1
	.byte	0x68
	.long	.LVL367
	.long	.LVL401
	.word	0x1
	.byte	0x6d
	.long	.LVL401
	.long	.LVL402
	.word	0x1
	.byte	0x68
	.long	.LVL402
	.long	.LVL403
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST130:
	.long	.LVL374
	.long	.LVL376
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST131:
	.long	.LVL375
	.long	.LVL377
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL381
	.long	.LVL382
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL386
	.long	.LVL387
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL391
	.long	.LVL392
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL395
	.long	.LVL396
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST132:
	.long	.LVL367
	.long	.LVL401
	.word	0x1
	.byte	0x6c
	.long	.LVL402
	.long	.LVL403
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST133:
	.long	.LVL376
	.long	.LVL395
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST134:
	.long	.LFB55
	.long	.LCFI61
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI61
	.long	.LFE55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST135:
	.long	.LVL406
	.long	.LVL407
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL407
	.long	.LVL414
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST136:
	.long	.LVL408
	.long	.LVL409
	.word	0x1
	.byte	0x68
	.long	.LVL409
	.long	.LVL410-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST137:
	.long	.LVL416
	.long	.LVL422
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST138:
	.long	.LVL417
	.long	.LVL418
	.word	0x1
	.byte	0x68
	.long	.LVL419
	.long	.LVL420
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL420
	.long	.LVL423-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST139:
	.long	.LVL421
	.long	.LVL422
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+6134
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x154
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
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB39
	.long	.LFE39-.LFB39
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
	.long	.LFB53
	.long	.LFE53-.LFB53
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB47
	.long	.LFE47-.LFB47
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB54
	.long	.LFE54-.LFB54
	.long	.LFB55
	.long	.LFE55-.LFB55
	.long	.LFB56
	.long	.LFE56-.LFB56
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
	.long	.LFB28
	.long	.LFE28
	.long	.LFB39
	.long	.LFE39
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
	.long	.LFB53
	.long	.LFE53
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB47
	.long	.LFE47
	.long	.LFB29
	.long	.LFE29
	.long	.LFB54
	.long	.LFE54
	.long	.LFB55
	.long	.LFE55
	.long	.LFB56
	.long	.LFE56
	.long	.LFB27
	.long	.LFE27
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF87:
	.string	"bitNr"
.LASF71:
	.string	"count"
.LASF96:
	.string	"midiInSysEx"
.LASF117:
	.string	"Manual_to_MidiNote"
.LASF151:
	.string	"swTimer"
.LASF39:
	.string	"bitStart"
.LASF97:
	.string	"program_toRegister"
.LASF80:
	.string	"modulebit"
.LASF31:
	.string	"ChannelNote_t"
.LASF163:
	.string	"midiRxActivceSensing"
.LASF192:
	.string	"__iCliRetVal"
.LASF179:
	.string	"init_Pipe"
.LASF146:
	.string	"chanNote"
.LASF78:
	.string	"pRange"
.LASF135:
	.string	"manNote"
.LASF119:
	.string	"rangeEnd"
.LASF74:
	.string	"progNr"
.LASF112:
	.string	"actualReg"
.LASF115:
	.string	"pMidiInMap"
.LASF41:
	.string	"ManualNoteRange_t"
.LASF144:
	.string	"shiftBit"
.LASF109:
	.string	"midi_RegisterMatchProgram"
.LASF136:
	.string	"midiIn_Process"
.LASF9:
	.string	"long long unsigned int"
.LASF150:
	.string	"midi_CheckTxActiveSense"
.LASF162:
	.string	"midi_RegisterChanged"
.LASF47:
	.string	"OutChannel"
.LASF161:
	.string	"programMap"
.LASF15:
	.string	"message8"
.LASF178:
	.string	"midiDataByteExpected"
.LASF158:
	.string	"midiOutMap"
.LASF164:
	.string	"midi_Setting"
.LASF62:
	.string	"pCoupler"
.LASF125:
	.string	"manual_NoteOnOff"
.LASF185:
	.string	"eeprom_ReadMidiInMap"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF166:
	.string	"midiLastOutManual"
.LASF75:
	.string	"regNr"
.LASF49:
	.string	"sw_channel"
.LASF98:
	.string	"program"
.LASF33:
	.string	"ManualNote_t"
.LASF130:
	.string	"midi_AllManualsOff"
.LASF102:
	.string	"midi_ProgramChange"
.LASF189:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF142:
	.string	"pipeMessage"
.LASF116:
	.string	"init_Manual2Midi"
.LASF175:
	.string	"midiLastCommand"
.LASF43:
	.string	"noteRange"
.LASF177:
	.string	"midiDataByteCount"
.LASF6:
	.string	"long int"
.LASF129:
	.string	"midi_ManualOff"
.LASF167:
	.string	"midiLastInNote"
.LASF114:
	.string	"init_Midi2Manual"
.LASF140:
	.string	"noteOnOff"
.LASF90:
	.string	"get_RegisterStatus"
.LASF124:
	.string	"moduleBit_to_manualNote"
.LASF69:
	.string	"midiAllReset"
.LASF156:
	.string	"midiInMap"
.LASF4:
	.string	"uint16_t"
.LASF120:
	.string	"rangeStart"
.LASF173:
	.string	"lcdData"
.LASF42:
	.string	"midiNote"
.LASF38:
	.string	"endNote"
.LASF46:
	.string	"InChannel"
.LASF50:
	.string	"MidiOutMap_t"
.LASF89:
	.string	"mask"
.LASF131:
	.string	"midi_CheckRxActiveSense"
.LASF77:
	.string	"regNr_to_moduleBit"
.LASF25:
	.string	"pipeInM4"
.LASF66:
	.string	"cplNr"
.LASF92:
	.string	"read_allRegister"
.LASF24:
	.string	"pipeInM8"
.LASF127:
	.string	"midiAllNotesOff"
.LASF40:
	.string	"ManualMap_t"
.LASF64:
	.string	"init_Midi"
.LASF5:
	.string	"unsigned int"
.LASF108:
	.string	"SaveEEProm"
.LASF184:
	.string	"eeprom_UpdateProg"
.LASF59:
	.string	"AcceptProgChange"
.LASF32:
	.string	"manual"
.LASF143:
	.string	"command"
.LASF7:
	.string	"long unsigned int"
.LASF187:
	.string	"eeprom_ReadMidiOutMap"
.LASF155:
	.string	"ManualNoteRange"
.LASF176:
	.string	"midiDataByte"
.LASF54:
	.string	"registers"
.LASF147:
	.string	"midiSendAllNotesOff"
.LASF138:
	.string	"sreg_save"
.LASF137:
	.string	"midiByte"
.LASF132:
	.string	"midiNote_to_Manual"
.LASF82:
	.string	"section"
.LASF139:
	.string	"__ToDo"
.LASF29:
	.string	"hw_channel"
.LASF172:
	.string	"cplInfo"
.LASF67:
	.string	"getAllCouplers"
.LASF35:
	.string	"moduleBit"
.LASF37:
	.string	"startNote"
.LASF95:
	.string	"onOff"
.LASF16:
	.string	"PipeMessage_t"
.LASF104:
	.string	"channelValid"
.LASF45:
	.string	"MidiInMap_t"
.LASF56:
	.string	"ProgramInfo_t"
.LASF106:
	.string	"midi_resetRegisters"
.LASF19:
	.string	"Timer"
.LASF72:
	.string	"regSec"
.LASF10:
	.string	"sizetype"
.LASF105:
	.string	"splitCount"
.LASF122:
	.string	"init_Manual2Module"
.LASF100:
	.string	"regBytePtr"
.LASF174:
	.string	"midiEEPromLoadError"
.LASF86:
	.string	"modBit"
.LASF28:
	.string	"Pipe_t"
.LASF44:
	.string	"manualNote"
.LASF118:
	.string	"Midi_updateManualRange"
.LASF26:
	.string	"pipeIn"
.LASF160:
	.string	"registerCount"
.LASF186:
	.string	"eeprom_ReadMidiThrough"
.LASF76:
	.string	"set_Coupler"
.LASF79:
	.string	"moduleBit_to_registerNr"
.LASF20:
	.string	"pipeOutM4"
.LASF99:
	.string	"regBits"
.LASF60:
	.string	"MidiSetting_t"
.LASF11:
	.string	"wordval"
.LASF68:
	.string	"setAllCouplers"
.LASF27:
	.string	"pipeInStat"
.LASF18:
	.string	"prescaler"
.LASF34:
	.string	"error"
.LASF55:
	.string	"couplers"
.LASF149:
	.string	"midi_SendActiveSense"
.LASF191:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF81:
	.string	"pSection"
.LASF145:
	.string	"moduleBits"
.LASF182:
	.string	"eeprom_ReadProg"
.LASF3:
	.string	"unsigned char"
.LASF63:
	.string	"midi_CouplerReset"
.LASF157:
	.string	"midiThrough"
.LASF70:
	.string	"registers_CalcCount"
.LASF181:
	.string	"log_putError"
.LASF17:
	.string	"counter"
.LASF113:
	.string	"midi_CountRegisterInProgram"
.LASF188:
	.string	"eeprom_ReadManualMap"
.LASF53:
	.string	"RegisterMap_t"
.LASF169:
	.string	"midiLastInManual"
.LASF48:
	.string	"MidiThrough_t"
.LASF103:
	.string	"channel"
.LASF165:
	.string	"midiLastOutNote"
.LASF180:
	.string	"eeprom_ReadReg"
.LASF171:
	.string	"midi_Couplers"
.LASF13:
	.string	"Word_t"
.LASF153:
	.string	"pipeProcessing"
.LASF168:
	.string	"midiLastInChannel"
.LASF12:
	.string	"byteval"
.LASF148:
	.string	"chan"
.LASF61:
	.string	"char"
.LASF30:
	.string	"note"
.LASF84:
	.string	"mode"
.LASF159:
	.string	"registerMap"
.LASF101:
	.string	"byteNr"
.LASF152:
	.string	"pipe"
.LASF51:
	.string	"startReg"
.LASF183:
	.string	"serial1MIDISend"
.LASF128:
	.string	"splitRange"
.LASF110:
	.string	"progPtr"
.LASF91:
	.string	"count_Registers"
.LASF58:
	.string	"VelZero4Off"
.LASF193:
	.string	"__iRestore"
.LASF0:
	.string	"int8_t"
.LASF83:
	.string	"read_Register"
.LASF36:
	.string	"ModulBitError_t"
.LASF133:
	.string	"found"
.LASF94:
	.string	"register_onOff"
.LASF134:
	.string	"noteBase0"
.LASF123:
	.string	"manualNote_to_moduleBit"
.LASF111:
	.string	"tempReg"
.LASF52:
	.string	"endReg"
.LASF93:
	.string	"resultPtr"
.LASF14:
	.string	"Message16"
.LASF1:
	.string	"uint8_t"
.LASF141:
	.string	"midiKeyPress_Process"
.LASF85:
	.string	"modBitComplette"
.LASF23:
	.string	"pipeInM12"
.LASF22:
	.string	"pipeInM16"
.LASF154:
	.string	"manualMap"
.LASF126:
	.string	"moduleInfo"
.LASF73:
	.string	"init_Registers"
.LASF121:
	.string	"range"
.LASF57:
	.string	"TxActivceSense"
.LASF21:
	.string	"pipeOut"
.LASF65:
	.string	"result"
.LASF190:
	.string	".././Midi.c"
.LASF107:
	.string	"register_toProgram"
.LASF170:
	.string	"midiLastProgram"
.LASF88:
	.string	"modulNr"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
