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
	.section	.text.init_Midi,"ax",@progbits
.global	init_Midi
	.type	init_Midi, @function
init_Midi:
.LFB17:
	.file 1 ".././Midi.c"
	.loc 1 47 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 48 0
	sts midiCoupler_2from3,__zero_reg__
	.loc 1 49 0
	sts midiCoupler_1from3,__zero_reg__
	.loc 1 50 0
	sts midiCoupler_1from2,__zero_reg__
	.loc 1 51 0
	sts midiCoupler_Pfrom3,__zero_reg__
	.loc 1 52 0
	sts midiCoupler_Pfrom2,__zero_reg__
	.loc 1 53 0
	sts midiCoupler_Pfrom1,__zero_reg__
	ret
	.cfi_endproc
.LFE17:
	.size	init_Midi, .-init_Midi
	.section	.text.midiAllReset,"ax",@progbits
.global	midiAllReset
	.type	midiAllReset, @function
midiAllReset:
.LFB18:
	.loc 1 73 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 74 0
	ldi r24,lo8(-128)
	sts pipeProcessing,r24
	.loc 1 75 0
	call init_Pipe
.LVL0:
	ret
	.cfi_endproc
.LFE18:
	.size	midiAllReset, .-midiAllReset
	.section	.text.init_Registers,"ax",@progbits
.global	init_Registers
	.type	init_Registers, @function
init_Registers:
.LFB25:
	.loc 1 215 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 219 0
	call eeprom_ReadReg
.LVL1:
	cpi r24,lo8(-1)
	brne .L4
	.loc 1 220 0
	sts registerCount,__zero_reg__
	.loc 1 221 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(5)
	ldi r24,lo8(1)
	call log_putError
.LVL2:
.L4:
	.loc 1 224 0
	call eeprom_ReadProg
.LVL3:
	cpi r24,lo8(-1)
	brne .L3
	rjmp .L9
.LVL4:
.L7:
.LBB13:
.LBB14:
	.loc 1 228 0 discriminator 3
	mov r30,r25
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
	add r30,r24
	adc r31,__zero_reg__
	st Z,__zero_reg__
	.loc 1 227 0 discriminator 3
	subi r24,lo8(-(1))
.LVL5:
	rjmp .L8
.LVL6:
.L10:
.LBE14:
	ldi r24,0
.L8:
.LVL7:
.LBB15:
	.loc 1 227 0 is_stmt 0 discriminator 1
	cpi r24,lo8(8)
	brlo .L7
.LBE15:
	.loc 1 226 0 is_stmt 1 discriminator 2
	subi r25,lo8(-(1))
.LVL8:
	rjmp .L5
.LVL9:
.L9:
.LBE13:
	ldi r25,0
.L5:
.LVL10:
.LBB16:
	.loc 1 226 0 is_stmt 0 discriminator 1
	cpi r25,lo8(64)
	brlo .L10
.LBE16:
	.loc 1 231 0 is_stmt 1
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(6)
	ldi r24,lo8(1)
	call log_putError
.LVL11:
.L3:
	ret
	.cfi_endproc
.LFE25:
	.size	init_Registers, .-init_Registers
	.section	.text.read_Register,"ax",@progbits
.global	read_Register
	.type	read_Register, @function
read_Register:
.LFB26:
	.loc 1 235 0
	.cfi_startproc
.LVL12:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 238 0
	lds r25,registerCount
	cp r24,r25
	brsh .L14
.LBB17:
	.loc 1 240 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(registerMap))
	sbci r31,hi8(-(registerMap))
	ld r25,Z
.LVL13:
	.loc 1 241 0
	mov r24,r25
.LVL14:
	andi r24,lo8(31)
.LVL15:
	.loc 1 242 0
	swap r25
.LVL16:
	lsr r25
	andi r25,lo8(7)
.LVL17:
	.loc 1 243 0
	ldi r18,lo8(1)
	ldi r19,0
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r25
	brpl 1b
.LVL18:
	.loc 1 244 0
	ldi r25,0
.LVL19:
	movw r30,r24
.LVL20:
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r20,Z+1
	and r20,r18
	brne .L13
	.loc 1 244 0 is_stmt 0 discriminator 1
	sbrc r22,1
	rjmp .L15
.L13:
	.loc 1 247 0 is_stmt 1
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
.LVL21:
	movw r30,r24
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r24,Z+6
	and r18,r24
.LVL22:
	breq .L16
	.loc 1 247 0 is_stmt 0 discriminator 1
	sbrc r22,0
	rjmp .L17
	.loc 1 252 0 is_stmt 1
	ldi r24,0
	ret
.LVL23:
.L14:
.LBE17:
	.loc 1 255 0
	ldi r24,0
.LVL24:
	ret
.LVL25:
.L15:
.LBB18:
	.loc 1 246 0
	ldi r24,lo8(1)
.LVL26:
	ret
.LVL27:
.L16:
	.loc 1 252 0
	ldi r24,0
	ret
.L17:
	.loc 1 250 0
	ldi r24,lo8(1)
.LBE18:
	.loc 1 256 0
	ret
	.cfi_endproc
.LFE26:
	.size	read_Register, .-read_Register
	.section	.text.read_allRegister,"ax",@progbits
.global	read_allRegister
	.type	read_allRegister, @function
read_allRegister:
.LFB27:
	.loc 1 258 0
	.cfi_startproc
.LVL28:
	push r13
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 13, -3
	push r14
.LCFI1:
	.cfi_def_cfa_offset 5
	.cfi_offset 14, -4
	push r15
.LCFI2:
	.cfi_def_cfa_offset 6
	.cfi_offset 15, -5
	push r16
.LCFI3:
	.cfi_def_cfa_offset 7
	.cfi_offset 16, -6
	push r17
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -7
	push r28
.LCFI5:
	.cfi_def_cfa_offset 9
	.cfi_offset 28, -8
	push r29
.LCFI6:
	.cfi_def_cfa_offset 10
	.cfi_offset 29, -9
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r14,r24
.LVL29:
.LBB19:
	.loc 1 261 0
	ldi r17,0
	rjmp .L19
.LVL30:
.L23:
	mov r24,r17
	andi r24,lo8(7)
	mov r13,r24
	.loc 1 262 0
	brne .L20
	.loc 1 263 0
	ldi r28,0
.LVL31:
.L20:
	.loc 1 265 0
	ldi r29,0
	lsl r28
	rol r29
.LVL32:
	ldi r22,lo8(3)
	mov r24,r17
	call read_Register
.LVL33:
	or r28,r24
.LVL34:
	.loc 1 266 0
	ldi r25,lo8(7)
	cp r13,r25
	breq .L21
	.loc 1 266 0 is_stmt 0 discriminator 1
	mov r18,r17
	ldi r19,0
	mov r24,r16
	ldi r25,0
	sbiw r24,1
	cp r18,r24
	cpc r19,r25
	brne .L22
.L21:
.LVL35:
	.loc 1 267 0 is_stmt 1
	movw r30,r14
	st Z,r28
	movw r24,r14
	adiw r24,1
.LVL36:
	movw r14,r24
.LVL37:
.L22:
	.loc 1 261 0 discriminator 2
	subi r17,lo8(-(1))
.LVL38:
.L19:
	.loc 1 261 0 is_stmt 0 discriminator 1
	lds r16,registerCount
	cp r17,r16
	brlo .L23
/* epilogue start */
.LBE19:
	.loc 1 271 0 is_stmt 1
	pop r29
	pop r28
.LVL39:
	pop r17
.LVL40:
	pop r16
	pop r15
	pop r14
.LVL41:
	pop r13
	ret
	.cfi_endproc
.LFE27:
	.size	read_allRegister, .-read_allRegister
	.section	.text.register_onOff,"ax",@progbits
.global	register_onOff
	.type	register_onOff, @function
register_onOff:
.LFB28:
	.loc 1 273 0
	.cfi_startproc
.LVL42:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 275 0
	lds r25,registerCount
	cp r24,r25
	brsh .L25
.LBB20:
	.loc 1 277 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(registerMap))
	sbci r31,hi8(-(registerMap))
	ld r24,Z
.LVL43:
	.loc 1 278 0
	mov r30,r24
	andi r30,lo8(31)
.LVL44:
	.loc 1 279 0
	swap r24
.LVL45:
	lsr r24
	andi r24,lo8(7)
.LVL46:
	.loc 1 280 0
	sbrs r22,0
	rjmp .L27
	.loc 1 282 0
	ldi r31,0
	ldi r18,lo8(1)
	ldi r19,0
	movw r20,r18
	rjmp 2f
	1:
	lsl r20
	rol r21
	2:
	dec r24
	brpl 1b
	movw r24,r20
.LVL47:
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
.LVL48:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	com r24
	ldd r25,Z+1
	and r24,r25
	std Z+1,r24
	ret
.LVL49:
.L27:
	.loc 1 285 0
	ldi r31,0
	ldi r18,lo8(1)
	ldi r19,0
	movw r20,r18
	rjmp 2f
	1:
	lsl r20
	rol r21
	2:
	dec r24
	brpl 1b
	movw r24,r20
.LVL50:
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
.LVL51:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r25,Z+1
	or r24,r25
	std Z+1,r24
.L25:
	ret
.LBE20:
	.cfi_endproc
.LFE28:
	.size	register_onOff, .-register_onOff
	.section	.text.program_toRegister,"ax",@progbits
.global	program_toRegister
	.type	program_toRegister, @function
program_toRegister:
.LFB29:
	.loc 1 291 0
	.cfi_startproc
.LVL52:
	push r14
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI8:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r17
.LCFI9:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI10:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI11:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	.loc 1 292 0
	cpi r24,lo8(64)
	brsh .L28
.LBB21:
	.loc 1 295 0
	mov r30,r24
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(programMap))
	sbci r31,hi8(-(programMap))
.LVL53:
.LBB22:
	.loc 1 296 0
	ldi r17,0
	rjmp .L30
.LVL54:
.L34:
	.loc 1 297 0
	movw r14,r30
	ldi r24,-1
	sub r14,r24
	sbc r15,r24
.LVL55:
	ld r29,Z
.LVL56:
.LBB23:
	.loc 1 298 0
	ldi r28,0
	rjmp .L31
.LVL57:
.L33:
	.loc 1 299 0
	mov r24,r17
	ldi r25,0
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	sbiw r24,0
	brne .L35
	.loc 1 299 0 is_stmt 0 discriminator 2
	tst r28
	breq .L32
	.loc 1 299 0
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L32
.L35:
	ldi r24,lo8(1)
	ldi r25,0
.L32:
.LVL58:
	.loc 1 300 0 is_stmt 1 discriminator 6
	mov r22,r29
	call register_onOff
.LVL59:
	.loc 1 301 0 discriminator 6
	lsr r29
.LVL60:
	.loc 1 298 0 discriminator 6
	subi r28,lo8(-(1))
.LVL61:
.L31:
	.loc 1 298 0 is_stmt 0 discriminator 2
	cpi r28,lo8(8)
	brlo .L33
.LBE23:
	.loc 1 296 0 is_stmt 1 discriminator 2
	subi r17,lo8(-(1))
.LVL62:
	.loc 1 297 0 discriminator 2
	movw r30,r14
.LVL63:
.L30:
	.loc 1 296 0 discriminator 1
	cpi r17,lo8(8)
	brlo .L34
.LVL64:
.L28:
/* epilogue start */
.LBE22:
.LBE21:
	.loc 1 305 0
	pop r29
	pop r28
	pop r17
	pop r15
	pop r14
	ret
	.cfi_endproc
.LFE29:
	.size	program_toRegister, .-program_toRegister
	.section	.text.init_Midi2Manual,"ax",@progbits
.global	init_Midi2Manual
	.type	init_Midi2Manual, @function
init_Midi2Manual:
.LFB30:
	.loc 1 309 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL65:
.LBB24:
	.loc 1 313 0
	ldi r25,lo8(64)
.LBE24:
	.loc 1 311 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
.LBB25:
	.loc 1 313 0
	rjmp .L37
.LVL66:
.L38:
	.loc 1 315 0 discriminator 3
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 316 0 discriminator 3
	std Z+1,r24
	.loc 1 317 0 discriminator 3
	std Z+3,r24
	.loc 1 318 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 319 0 discriminator 3
	adiw r30,4
.LVL67:
	.loc 1 313 0 discriminator 3
	subi r25,lo8(-(-1))
.LVL68:
.L37:
	.loc 1 313 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L38
.LBE25:
	.loc 1 322 0 is_stmt 1
	call eeprom_ReadMidiInMap
.LVL69:
	cpi r24,lo8(-1)
	brne .L36
	.loc 1 323 0
	sts midiEEPromLoadError,r24
	.loc 1 324 0
	ldi r30,lo8(midiInMap)
	ldi r31,hi8(midiInMap)
	st Z,__zero_reg__
	.loc 1 325 0
	ldi r24,lo8(36)
	std Z+1,r24
	.loc 1 326 0
	std Z+3,r24
	.loc 1 327 0
	ldi r25,lo8(56)
	std Z+2,r25
	.loc 1 328 0
	ldi r18,lo8(1)
	std Z+16,r18
	.loc 1 329 0
	std Z+17,r24
	.loc 1 330 0
	std Z+19,r24
	.loc 1 331 0
	std Z+18,r25
	.loc 1 332 0
	ldi r18,lo8(2)
	std Z+32,r18
	.loc 1 333 0
	std Z+33,r24
	.loc 1 334 0
	std Z+35,r24
	.loc 1 335 0
	std Z+34,r25
	.loc 1 336 0
	ldi r25,lo8(3)
	std Z+48,r25
	.loc 1 337 0
	std Z+49,r24
	.loc 1 338 0
	std Z+51,r24
	.loc 1 339 0
	ldi r24,lo8(30)
	std Z+50,r24
	.loc 1 340 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(1)
	call log_putError
.LVL70:
.L36:
	ret
	.cfi_endproc
.LFE30:
	.size	init_Midi2Manual, .-init_Midi2Manual
	.section	.text.init_Manual2Midi,"ax",@progbits
.global	init_Manual2Midi
	.type	init_Manual2Midi, @function
init_Manual2Midi:
.LFB31:
	.loc 1 344 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL71:
.LBB26:
	.loc 1 346 0
	ldi r18,0
	rjmp .L41
.LVL72:
.L42:
	.loc 1 347 0 discriminator 3
	movw r30,r24
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ldi r19,lo8(-1)
	st Z,r19
	.loc 1 346 0 discriminator 3
	subi r18,lo8(-(1))
.LVL73:
.L41:
	.loc 1 346 0 is_stmt 0 discriminator 1
	mov r24,r18
	ldi r25,0
	sbiw r24,0
	brne .L42
.LBE26:
	.loc 1 349 0 is_stmt 1
	call eeprom_ReadMidiOutMap
.LVL74:
	cpi r24,lo8(-1)
	brne .L40
	.loc 1 350 0
	sts midiEEPromLoadError,r24
	.loc 1 352 0
	ldi r30,lo8(midiOutMap)
	ldi r31,hi8(midiOutMap)
	st Z,__zero_reg__
	.loc 1 353 0
	ldi r24,lo8(1)
	std Z+1,r24
	.loc 1 354 0
	ldi r24,lo8(2)
	std Z+2,r24
	.loc 1 355 0
	ldi r24,lo8(3)
	std Z+3,r24
	.loc 1 356 0
	sts midi_TxActivceSense,__zero_reg__
	.loc 1 357 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(2)
	ldi r24,lo8(1)
	call log_putError
.LVL75:
.L40:
	ret
	.cfi_endproc
.LFE31:
	.size	init_Manual2Midi, .-init_Manual2Midi
	.section	.text.Manual_to_MidiNote,"ax",@progbits
.global	Manual_to_MidiNote
	.type	Manual_to_MidiNote, @function
Manual_to_MidiNote:
.LFB33:
	.loc 1 389 0
	.cfi_startproc
.LVL76:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r30,r24
	.loc 1 390 0
	ldi r24,lo8(-1)
.LVL77:
	ldi r25,lo8(-1)
	.loc 1 391 0
	cpi r30,lo8(4)
	brsh .L45
	.loc 1 392 0
	ldi r31,0
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
.LVL78:
	ld r18,Z
	cpi r18,lo8(-1)
	breq .L45
	.loc 1 393 0
	mov r24,r18
	.loc 1 394 0
	mov r25,r22
.L45:
	.loc 1 398 0
	ret
	.cfi_endproc
.LFE33:
	.size	Manual_to_MidiNote, .-Manual_to_MidiNote
	.section	.text.Midi_updateManualRange,"ax",@progbits
.global	Midi_updateManualRange
	.type	Midi_updateManualRange, @function
Midi_updateManualRange:
.LFB34:
	.loc 1 402 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL79:
.LBB27:
	.loc 1 403 0
	ldi r23,0
	rjmp .L47
.LVL80:
.L53:
.LBB28:
.LBB29:
	.loc 1 407 0
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
	breq .L48
.LVL81:
	.loc 1 407 0 is_stmt 0 discriminator 1
	movw r30,r18
	lsl r30
	rol r31
	add r30,r18
	adc r31,r19
	movw r18,r24
.LVL82:
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
	breq .L48
	.loc 1 408 0 is_stmt 1
	cp r26,r22
	brsh .L49
	.loc 1 409 0
	mov r22,r26
.LVL83:
.L49:
	.loc 1 411 0
	cp r21,r18
	brsh .L48
	.loc 1 412 0
	mov r21,r18
.LVL84:
.L48:
	.loc 1 415 0
	tst r21
	breq .L50
	.loc 1 415 0 is_stmt 0 discriminator 1
	cpi r22,lo8(-1)
	brne .L51
.L50:
	.loc 1 416 0 is_stmt 1
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 417 0
	std Z+1,r24
	rjmp .L52
.L51:
	.loc 1 419 0
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	st Z,r22
	.loc 1 420 0
	std Z+1,r21
.L52:
	.loc 1 406 0 discriminator 2
	subi r20,lo8(-(1))
.LVL85:
	rjmp .L54
.LVL86:
.L57:
.LBE29:
.LBE28:
	ldi r20,0
	ldi r22,lo8(-1)
	ldi r21,0
.L54:
.LVL87:
.LBB31:
.LBB30:
	.loc 1 406 0 is_stmt 0 discriminator 1
	cpi r20,lo8(4)
	brsh .+2
	rjmp .L53
.LBE30:
.LBE31:
	.loc 1 403 0 is_stmt 1 discriminator 2
	subi r23,lo8(-(1))
.LVL88:
.L47:
	.loc 1 403 0 is_stmt 0 discriminator 1
	cpi r23,lo8(4)
	brlo .L57
/* epilogue start */
.LBE27:
	.loc 1 424 0 is_stmt 1
	ret
	.cfi_endproc
.LFE34:
	.size	Midi_updateManualRange, .-Midi_updateManualRange
	.section	.text.init_Manual2Module,"ax",@progbits
.global	init_Manual2Module
	.type	init_Manual2Module, @function
init_Manual2Module:
.LFB35:
	.loc 1 426 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL89:
.LBB32:
	.loc 1 427 0
	ldi r22,lo8(3)
	rjmp .L59
.LVL90:
.L60:
.LBB33:
	.loc 1 430 0 discriminator 3
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
	.loc 1 431 0 discriminator 3
	adiw r26,1
	st X,r19
	sbiw r26,1
	.loc 1 432 0 discriminator 3
	movw r30,r26
	std Z+2,__zero_reg__
	.loc 1 429 0 discriminator 3
	subi r18,lo8(-(-1))
.LVL91:
	rjmp .L61
.LVL92:
.L63:
.LBE33:
	ldi r18,lo8(3)
.L61:
.LVL93:
.LBB34:
	.loc 1 429 0 is_stmt 0 discriminator 1
	tst r18
	brge .L60
.LBE34:
	.loc 1 427 0 is_stmt 1 discriminator 2
	subi r22,lo8(-(-1))
.LVL94:
.L59:
	.loc 1 427 0 is_stmt 0 discriminator 1
	tst r22
	brge .L63
.LBE32:
	.loc 1 436 0 is_stmt 1
	call eeprom_ReadManualMap
.LVL95:
	cpi r24,lo8(-1)
	brne .L62
	.loc 1 438 0
	sts midiEEPromLoadError,r24
	.loc 1 439 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(3)
	ldi r24,lo8(1)
	call log_putError
.LVL96:
.L62:
	.loc 1 441 0
	call Midi_updateManualRange
.LVL97:
	ret
	.cfi_endproc
.LFE35:
	.size	init_Manual2Module, .-init_Manual2Module
	.section	.text.manualNote_to_moduleBit,"ax",@progbits
.global	manualNote_to_moduleBit
	.type	manualNote_to_moduleBit, @function
manualNote_to_moduleBit:
.LFB36:
	.loc 1 445 0
	.cfi_startproc
.LVL98:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 448 0
	cpi r24,lo8(4)
	brsh .L65
.LBB35:
	.loc 1 451 0
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
.LVL99:
	.loc 1 452 0
	ldi r24,lo8(4)
.LVL100:
.L68:
	.loc 1 454 0
	ld r18,Z
	cp r22,r18
	brlo .L66
	.loc 1 454 0 is_stmt 0 discriminator 1
	ldd r25,Z+1
	cp r25,r22
	brlo .L66
	.loc 1 457 0 is_stmt 1
	ldd r25,Z+2
	sub r22,r18
.LVL101:
	.loc 1 458 0
	ldi r24,0
.LVL102:
	add r25,r22
	ret
.LVL103:
.L66:
	.loc 1 460 0
	adiw r30,3
.LVL104:
	.loc 1 461 0
	subi r24,lo8(-(-1))
.LVL105:
	brne .L68
.LVL106:
.L65:
.LBE35:
	.loc 1 465 0
	ldi r24,lo8(-1)
	ldi r25,0
	.loc 1 466 0
	ret
	.cfi_endproc
.LFE36:
	.size	manualNote_to_moduleBit, .-manualNote_to_moduleBit
	.section	.text.moduleBit_to_manualNote,"ax",@progbits
.global	moduleBit_to_manualNote
	.type	moduleBit_to_manualNote, @function
moduleBit_to_manualNote:
.LFB37:
	.loc 1 468 0
	.cfi_startproc
.LVL107:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 475 0
	ldi r23,0
	.loc 1 474 0
	ldi r30,lo8(manualMap)
	ldi r31,hi8(manualMap)
.LVL108:
.L74:
.LBB36:
	.loc 1 477 0
	ldi r21,lo8(4)
	rjmp .L70
.LVL109:
.L73:
	.loc 1 478 0
	ldd r22,Z+2
	cp r24,r22
	brlo .L71
	.loc 1 478 0 is_stmt 0 discriminator 1
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
	brlt .L71
	.loc 1 481 0 is_stmt 1
	mov r20,r24
	sub r20,r22
	.loc 1 482 0
	mov r24,r23
.LVL110:
	add r25,r20
	ret
.LVL111:
.L71:
	.loc 1 484 0 discriminator 2
	adiw r30,3
.LVL112:
	.loc 1 477 0 discriminator 2
	subi r21,lo8(-(-1))
.LVL113:
.L70:
	.loc 1 477 0 is_stmt 0 discriminator 1
	cpse r21,__zero_reg__
	rjmp .L73
.LBE36:
	.loc 1 486 0 is_stmt 1
	subi r23,lo8(-(1))
.LVL114:
	.loc 1 487 0
	cpi r23,lo8(5)
	brlo .L74
	.loc 1 489 0
	mov r20,r24
	ldi r21,0
.LVL115:
	ldi r22,lo8(1)
	ldi r24,lo8(2)
.LVL116:
	call log_putWarning
.LVL117:
	.loc 1 490 0
	ldi r24,lo8(-1)
	ldi r25,0
	.loc 1 491 0
	ret
	.cfi_endproc
.LFE37:
	.size	moduleBit_to_manualNote, .-moduleBit_to_manualNote
	.section	.text.manual_NoteOnOff,"ax",@progbits
.global	manual_NoteOnOff
	.type	manual_NoteOnOff, @function
manual_NoteOnOff:
.LFB38:
	.loc 1 493 0
	.cfi_startproc
.LVL118:
	push r28
.LCFI12:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r20
	.loc 1 495 0
	call manualNote_to_moduleBit
.LVL119:
	.loc 1 497 0
	cpse r24,__zero_reg__
	rjmp .L75
.LVL120:
.LBB37:
	.loc 1 498 0
	mov r30,r25
	andi r30,lo8(31)
.LVL121:
	.loc 1 499 0
	swap r25
	lsr r25
	andi r25,lo8(7)
.LVL122:
	.loc 1 500 0
	cpse r28,__zero_reg__
	rjmp .L77
	.loc 1 502 0
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
.LVL123:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r25,Z+1
.LVL124:
	or r24,r25
	std Z+1,r24
	rjmp .L75
.LVL125:
.L77:
	.loc 1 505 0
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
.LVL126:
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	com r24
	ldd r25,Z+1
.LVL127:
	and r24,r25
	std Z+1,r24
.L75:
/* epilogue start */
.LBE37:
	.loc 1 508 0
	pop r28
.LVL128:
	ret
	.cfi_endproc
.LFE38:
	.size	manual_NoteOnOff, .-manual_NoteOnOff
	.section	.text.midiAllNotesOff,"ax",@progbits
.global	midiAllNotesOff
	.type	midiAllNotesOff, @function
midiAllNotesOff:
.LFB19:
	.loc 1 78 0
	.cfi_startproc
.LVL129:
	push r12
.LCFI13:
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
.LCFI14:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI15:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI16:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI17:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI18:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI19:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI20:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r12,r24
.LVL130:
	.loc 1 79 0
	mov r13,__zero_reg__
	.loc 1 80 0
	rjmp .L79
.LVL131:
.L83:
	.loc 1 82 0
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
	brsh .L80
.LBB38:
	.loc 1 84 0
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
.LVL132:
.LBB39:
	.loc 1 86 0
	ldd r15,Z+2
.LVL133:
	rjmp .L81
.L82:
	.loc 1 87 0 discriminator 3
	clr r14
	inc r14
	add r14,r22
.LVL134:
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
.LVL135:
	.loc 1 86 0 discriminator 3
	dec r15
.LVL136:
	.loc 1 87 0 discriminator 3
	mov r22,r14
.LVL137:
.L81:
	.loc 1 86 0 discriminator 1
	cpse r15,__zero_reg__
	rjmp .L82
.LVL138:
.L80:
.LBE39:
.LBE38:
	.loc 1 90 0
	inc r13
.LVL139:
.L79:
	.loc 1 80 0
	ldi r24,lo8(3)
	cp r24,r13
	brlo .+2
	rjmp .L83
/* epilogue start */
	.loc 1 92 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
.LVL140:
	pop r12
.LVL141:
	ret
	.cfi_endproc
.LFE19:
	.size	midiAllNotesOff, .-midiAllNotesOff
	.section	.text.midi_ManualOff,"ax",@progbits
.global	midi_ManualOff
	.type	midi_ManualOff, @function
midi_ManualOff:
.LFB20:
	.loc 1 94 0
	.cfi_startproc
.LVL142:
	push r16
.LCFI21:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI22:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI23:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI24:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 96 0
	cpi r24,lo8(4)
	brsh .L84
	.loc 1 96 0 is_stmt 0 discriminator 1
	mov r16,r24
	ldi r17,0
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ld r28,Z
	cpi r28,lo8(-1)
	breq .L84
	mov r29,r24
	.loc 1 96 0 discriminator 2
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r24,Z+1
.LVL143:
	cpi r24,lo8(-1)
	brne .L86
.LBB40:
	rjmp .L84
.LVL144:
.L87:
	.loc 1 98 0 is_stmt 1 discriminator 3
	ldi r20,0
	mov r22,r28
	mov r24,r29
	call manual_NoteOnOff
.LVL145:
	.loc 1 97 0 discriminator 3
	subi r28,lo8(-(1))
.LVL146:
.L86:
	.loc 1 97 0 is_stmt 0 discriminator 1
	movw r30,r16
	lsl r30
	rol r31
	subi r30,lo8(-(ManualNoteRange))
	sbci r31,hi8(-(ManualNoteRange))
	ldd r25,Z+1
	cp r25,r28
	brsh .L87
.LVL147:
.L84:
/* epilogue start */
.LBE40:
	.loc 1 101 0 is_stmt 1
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE20:
	.size	midi_ManualOff, .-midi_ManualOff
	.section	.text.midi_AllManualsOff,"ax",@progbits
.global	midi_AllManualsOff
	.type	midi_AllManualsOff, @function
midi_AllManualsOff:
.LFB21:
	.loc 1 103 0
	.cfi_startproc
	push r28
.LCFI25:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL148:
.LBB41:
	.loc 1 104 0
	ldi r28,0
	rjmp .L89
.LVL149:
.L90:
	.loc 1 105 0 discriminator 3
	mov r24,r28
	call midi_ManualOff
.LVL150:
	.loc 1 104 0 discriminator 3
	subi r28,lo8(-(1))
.LVL151:
.L89:
	.loc 1 104 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brlo .L90
/* epilogue start */
.LBE41:
	.loc 1 110 0 is_stmt 1
	pop r28
.LVL152:
	ret
	.cfi_endproc
.LFE21:
	.size	midi_AllManualsOff, .-midi_AllManualsOff
	.section	.text.midi_CheckRxActiveSense,"ax",@progbits
.global	midi_CheckRxActiveSense
	.type	midi_CheckRxActiveSense, @function
midi_CheckRxActiveSense:
.LFB22:
	.loc 1 112 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 113 0
	lds r24,midiRxActivceSensing
	tst r24
	breq .L91
	.loc 1 115 0
	lds r24,swTimer+6
	cpse r24,__zero_reg__
	rjmp .L91
	.loc 1 117 0
	call midi_AllManualsOff
.LVL153:
	.loc 1 118 0
	sts midiRxActivceSensing,__zero_reg__
.L91:
	ret
	.cfi_endproc
.LFE22:
	.size	midi_CheckRxActiveSense, .-midi_CheckRxActiveSense
	.section	.text.midiNote_to_Manual,"ax",@progbits
.global	midiNote_to_Manual
	.type	midiNote_to_Manual, @function
midiNote_to_Manual:
.LFB32:
	.loc 1 361 0
	.cfi_startproc
.LVL154:
	push r16
.LCFI26:
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
.LCFI27:
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
.LCFI28:
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
.LCFI29:
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	mov r16,r22
	mov r17,r20
	.loc 1 362 0
	mov r29,r24
	andi r29,lo8(15)
.LVL155:
.LBB42:
	.loc 1 364 0
	ldi r28,0
.LBE42:
	.loc 1 363 0
	ldi r25,0
.LBB45:
	.loc 1 364 0
	rjmp .L94
.LVL156:
.L97:
	.loc 1 365 0
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
	brsh .L95
.LVL157:
.LBB43:
	.loc 1 367 0
	movw r26,r30
	ldd r22,Z+1
	mov r23,r16
	sub r23,r22
	mov r22,r23
.LVL158:
	.loc 1 368 0
	brmi .L95
	.loc 1 368 0 is_stmt 0 discriminator 1
	movw r30,r26
	ldd r30,Z+2
	ldi r31,0
	mov r26,r23
	lsl r23
	sbc r27,r27
	cp r26,r30
	cpc r27,r31
	brge .L95
.LVL159:
.LBB44:
	.loc 1 371 0 is_stmt 1
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
.LVL160:
	add r22,r25
.LVL161:
	.loc 1 372 0
	cpi r17,lo8(1)
	brne .L96
	.loc 1 373 0
	sts midiLastInManual,r24
	.loc 1 374 0
	sts midiLastInNote,r22
.L96:
	.loc 1 376 0
	mov r20,r17
.LVL162:
	call manual_NoteOnOff
.LVL163:
	.loc 1 377 0
	ldi r25,lo8(-1)
.LVL164:
.L95:
.LBE44:
.LBE43:
	.loc 1 364 0 discriminator 2
	subi r28,lo8(-(1))
.LVL165:
.L94:
	.loc 1 364 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brsh .+2
	rjmp .L97
.LBE45:
	.loc 1 381 0 is_stmt 1
	cpi r17,lo8(1)
	brne .L93
	.loc 1 381 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L93
	.loc 1 383 0 is_stmt 1
	sts midiLastInNote,r16
	.loc 1 384 0
	sts midiLastInChannel,r29
	.loc 1 385 0
	ldi r24,lo8(-1)
	sts midiLastInManual,r24
.L93:
/* epilogue start */
	.loc 1 387 0
	pop r29
.LVL166:
	pop r28
.LVL167:
	pop r17
.LVL168:
	pop r16
.LVL169:
	ret
	.cfi_endproc
.LFE32:
	.size	midiNote_to_Manual, .-midiNote_to_Manual
	.section	.text.midiIn_Process,"ax",@progbits
.global	midiIn_Process
	.type	midiIn_Process, @function
midiIn_Process:
.LFB24:
	.loc 1 135 0
	.cfi_startproc
.LVL170:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 136 0
	tst r24
	brlt .+2
	rjmp .L100
	.loc 1 138 0
	sts midiLastCommand,r24
	.loc 1 139 0
	sts midiDataByteCount,__zero_reg__
	.loc 1 141 0
	ldi r25,lo8(-128)
	add r25,r24
	cpi r25,lo8(64)
	brsh .L101
	.loc 1 142 0
	ldi r24,lo8(2)
.LVL171:
	sts midiDataByteExpected,r24
	ret
.LVL172:
.L101:
	.loc 1 143 0
	ldi r25,lo8(32)
	add r25,r24
	cpi r25,lo8(16)
	brsh .L103
	.loc 1 144 0
	ldi r24,lo8(2)
.LVL173:
	sts midiDataByteExpected,r24
	ret
.LVL174:
.L103:
	.loc 1 145 0
	cpi r24,lo8(-14)
	brne .L104
	.loc 1 146 0
	ldi r24,lo8(2)
.LVL175:
	sts midiDataByteExpected,r24
	ret
.LVL176:
.L104:
	.loc 1 147 0
	cpi r24,lo8(-16)
	brne .L105
	.loc 1 148 0
	ldi r24,lo8(-1)
.LVL177:
	sts midiDataByteExpected,r24
	ret
.LVL178:
.L105:
	.loc 1 149 0
	ldi r25,lo8(64)
	add r25,r24
	cpi r25,lo8(32)
	brsh .L106
	.loc 1 150 0
	ldi r24,lo8(1)
.LVL179:
	sts midiDataByteExpected,r24
	ret
.LVL180:
.L106:
	.loc 1 151 0
	cpi r24,lo8(-15)
	breq .L107
	.loc 1 151 0 is_stmt 0 discriminator 1
	cpi r24,lo8(-13)
	brne .L108
.L107:
	.loc 1 152 0 is_stmt 1
	ldi r24,lo8(1)
.LVL181:
	sts midiDataByteExpected,r24
	ret
.LVL182:
.L108:
	.loc 1 154 0
	sts midiDataByteExpected,__zero_reg__
	.loc 1 155 0
	cpi r24,lo8(-2)
	brne .L109
	.loc 1 156 0
	ldi r24,lo8(1)
.LVL183:
	sts midiRxActivceSensing,r24
.LBB46:
	.loc 1 157 0
	in r25,__SREG__
.LVL184:
.LBB47:
.LBB48:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE48:
.LBE47:
	.loc 1 157 0
	rjmp .L110
.LVL185:
.L111:
	.loc 1 157 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(25)
.LVL186:
	std Z+6,r24
	std Z+7,__zero_reg__
.LVL187:
	.loc 1 157 0 discriminator 3
	ldi r24,0
.LVL188:
.L110:
	.loc 1 157 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L111
.LVL189:
.LBB49:
.LBB50:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
.LVL190:
	.loc 2 71 0
.LVL191:
.LBE50:
.LBE49:
.LBE46:
	ret
.LVL192:
.L109:
	.loc 1 158 0
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L99
	.loc 1 159 0
	call midiAllReset
.LVL193:
	ret
.LVL194:
.L100:
	.loc 1 165 0
	lds r30,midiDataByteCount
	cpi r30,lo8(2)
	brsh .L112
	.loc 1 167 0
	ldi r25,lo8(1)
	add r25,r30
	sts midiDataByteCount,r25
	ldi r31,0
	subi r30,lo8(-(midiDataByte))
	sbci r31,hi8(-(midiDataByte))
	st Z,r24
.L112:
	.loc 1 169 0
	lds r24,midiDataByteExpected
.LVL195:
	cpi r24,lo8(-1)
	breq .L99
	.loc 1 171 0
	lds r25,midiDataByteCount
	cp r25,r24
	brlo .L99
	.loc 1 173 0
	lds r25,midiLastCommand
	cpi r25,lo8(-16)
	brsh .L113
.LBB51:
	.loc 1 175 0
	mov r24,r25
	andi r24,lo8(15)
.LVL196:
	.loc 1 177 0
	andi r25,lo8(-16)
	cpi r25,lo8(-112)
	breq .L114
	brsh .L115
	cpi r25,lo8(-128)
	breq .L116
	rjmp .L113
.L115:
	cpi r25,lo8(-80)
	breq .L117
	cpi r25,lo8(-64)
	breq .L118
	rjmp .L113
.L116:
.LVL197:
	.loc 1 181 0
	ldi r20,0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL198:
	.loc 1 182 0
	rjmp .L113
.LVL199:
.L114:
	.loc 1 184 0
	lds r25,midiDataByte+1
	cpse r25,__zero_reg__
	rjmp .L120
	.loc 1 186 0
	ldi r20,0
	rjmp .L119
.L120:
	.loc 1 189 0
	ldi r20,lo8(1)
.L119:
.LVL200:
	.loc 1 191 0
	lds r22,midiDataByte
	call midiNote_to_Manual
.LVL201:
	.loc 1 192 0
	rjmp .L113
.LVL202:
.L117:
	.loc 1 194 0
	lds r25,midiDataByte
	cpi r25,lo8(123)
	brne .L113
	.loc 1 195 0
	call midiAllNotesOff
.LVL203:
	rjmp .L113
.LVL204:
.L118:
	.loc 1 199 0
	lds r24,midiDataByte
.LVL205:
	call program_toRegister
.LVL206:
.L113:
.LBE51:
	.loc 1 206 0
	sts midiDataByteCount,__zero_reg__
.L99:
	ret
	.cfi_endproc
.LFE24:
	.size	midiIn_Process, .-midiIn_Process
	.section	.text.midiKeyPress_Process,"ax",@progbits
.global	midiKeyPress_Process
	.type	midiKeyPress_Process, @function
midiKeyPress_Process:
.LFB39:
	.loc 1 512 0
	.cfi_startproc
.LVL207:
	push r12
.LCFI30:
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
.LCFI31:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI32:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI33:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI34:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI35:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI36:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI37:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 1 513 0
	mov r16,r25
	andi r16,lo8(-32)
.LVL208:
	.loc 1 514 0
	andi r25,lo8(31)
	mov r14,r25
.LVL209:
	.loc 1 515 0
	mov r29,r24
.LVL210:
	.loc 1 518 0
	cpi r16,lo8(32)
	brne .+2
	rjmp .L134
	.loc 1 518 0 is_stmt 0 discriminator 1
	tst r16
	brne .+2
	rjmp .L135
.LBB52:
	rjmp .L121
.LVL211:
.L133:
	.loc 1 522 0 is_stmt 1
	sbrs r29,0
	rjmp .L124
	.loc 1 524 0
	ldi r18,lo8(32)
	mul r28,r18
	movw r24,r0
	clr __zero_reg__
.LVL212:
	or r24,r14
	call moduleBit_to_manualNote
.LVL213:
	mov r13,r24
	mov r15,r25
	.loc 1 526 0
	mov r17,r24
	cpi r24,lo8(-1)
	brne .+2
	rjmp .L124
.LBB53:
	.loc 1 529 0
	mov r22,r25
	call Manual_to_MidiNote
.LVL214:
	mov r12,r25
	.loc 1 530 0
	cpi r24,lo8(-1)
	breq .L125
	.loc 1 532 0
	cpi r16,lo8(32)
	brne .L136
	ldi r25,lo8(-112)
	rjmp .L126
.L136:
	ldi r25,lo8(-128)
.L126:
	.loc 1 532 0 is_stmt 0 discriminator 4
	or r24,r25
	call serial1MIDISend
.LVL215:
	.loc 1 533 0 is_stmt 1 discriminator 4
	mov r24,r12
	call serial1MIDISend
.LVL216:
	.loc 1 534 0 discriminator 4
	ldi r24,lo8(64)
	call serial1MIDISend
.LVL217:
	.loc 1 536 0 discriminator 4
	cpi r16,lo8(32)
	brne .L125
	.loc 1 538 0
	sts midiLastOutManual,r13
.LVL218:
	.loc 1 539 0
	sts midiLastOutNote,r15
.LVL219:
.L125:
	.loc 1 543 0
	ldi r20,lo8(1)
	cpi r16,lo8(32)
	breq .L127
	ldi r20,0
.L127:
	mov r13,r20
.LVL220:
	.loc 1 544 0
	cpse r17,__zero_reg__
	rjmp .L128
	.loc 1 545 0
	lds r24,midiCoupler_2from3
.LVL221:
	cpi r24,lo8(-1)
	brne .L129
	.loc 1 546 0
	mov r22,r15
	ldi r24,lo8(1)
	call manual_NoteOnOff
.LVL222:
.L129:
	.loc 1 548 0
	lds r24,midiCoupler_1from3
	cpi r24,lo8(-1)
	brne .L130
	.loc 1 549 0
	mov r20,r13
	mov r22,r15
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL223:
.L130:
	.loc 1 551 0
	lds r24,midiCoupler_Pfrom3
	cpi r24,lo8(-1)
	brne .L124
	.loc 1 552 0
	mov r20,r13
	mov r22,r15
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL224:
	rjmp .L124
.LVL225:
.L128:
	.loc 1 554 0
	cpi r17,lo8(1)
	brne .L131
	.loc 1 555 0
	lds r24,midiCoupler_1from2
.LVL226:
	cpi r24,lo8(-1)
	brne .L132
	.loc 1 556 0
	mov r22,r15
	ldi r24,lo8(2)
	call manual_NoteOnOff
.LVL227:
.L132:
	.loc 1 558 0
	lds r24,midiCoupler_Pfrom2
	cpi r24,lo8(-1)
	brne .L124
	.loc 1 559 0
	mov r20,r13
	mov r22,r15
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL228:
	rjmp .L124
.LVL229:
.L131:
	.loc 1 561 0
	cpi r17,lo8(2)
	brne .L124
	.loc 1 562 0
	lds r24,midiCoupler_Pfrom1
.LVL230:
	cpi r24,lo8(-1)
	brne .L124
	.loc 1 563 0
	mov r22,r15
	ldi r24,lo8(3)
	call manual_NoteOnOff
.LVL231:
.L124:
.LBE53:
	.loc 1 568 0 discriminator 2
	lsr r29
.LVL232:
	.loc 1 520 0 discriminator 2
	subi r28,lo8(-(1))
.LVL233:
	rjmp .L122
.LVL234:
.L134:
.LBE52:
	ldi r28,0
	rjmp .L122
.L135:
	ldi r28,0
.LVL235:
.L122:
.LBB54:
	.loc 1 520 0 is_stmt 0 discriminator 1
	cpi r28,lo8(8)
	brsh .+2
	rjmp .L133
.LVL236:
.L121:
/* epilogue start */
.LBE54:
	.loc 1 571 0 is_stmt 1
	pop r29
	pop r28
	pop r17
	pop r16
.LVL237:
	pop r15
	pop r14
.LVL238:
	pop r13
	pop r12
.LVL239:
	ret
	.cfi_endproc
.LFE39:
	.size	midiKeyPress_Process, .-midiKeyPress_Process
	.section	.text.midiSendAllNotesOff,"ax",@progbits
.global	midiSendAllNotesOff
	.type	midiSendAllNotesOff, @function
midiSendAllNotesOff:
.LFB40:
	.loc 1 575 0
	.cfi_startproc
	push r28
.LCFI38:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL240:
.LBB55:
	.loc 1 576 0
	ldi r28,0
	rjmp .L138
.LVL241:
.L140:
.LBB56:
	.loc 1 577 0
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(midiOutMap))
	sbci r31,hi8(-(midiOutMap))
	ld r24,Z
.LVL242:
	.loc 1 578 0
	cpi r24,lo8(16)
	brsh .L139
	.loc 1 579 0
	ori r24,lo8(-80)
.LVL243:
	call serial1MIDISend
.LVL244:
	.loc 1 580 0
	ldi r24,lo8(123)
	call serial1MIDISend
.LVL245:
	.loc 1 581 0
	ldi r24,0
	call serial1MIDISend
.LVL246:
.L139:
.LBE56:
	.loc 1 576 0 discriminator 2
	subi r28,lo8(-(1))
.LVL247:
.L138:
	.loc 1 576 0 is_stmt 0 discriminator 1
	cpi r28,lo8(4)
	brlo .L140
/* epilogue start */
.LBE55:
	.loc 1 584 0 is_stmt 1
	pop r28
.LVL248:
	ret
	.cfi_endproc
.LFE40:
	.size	midiSendAllNotesOff, .-midiSendAllNotesOff
	.section	.text.midi_SendActiveSense,"ax",@progbits
.global	midi_SendActiveSense
	.type	midi_SendActiveSense, @function
midi_SendActiveSense:
.LFB41:
	.loc 1 586 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 587 0
	ldi r24,lo8(-2)
	call serial1MIDISend
.LVL249:
	ret
	.cfi_endproc
.LFE41:
	.size	midi_SendActiveSense, .-midi_SendActiveSense
	.section	.text.midi_CheckTxActiveSense,"ax",@progbits
.global	midi_CheckTxActiveSense
	.type	midi_CheckTxActiveSense, @function
midi_CheckTxActiveSense:
.LFB23:
	.loc 1 123 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 124 0
	lds r24,midi_TxActivceSense
	tst r24
	breq .L142
	.loc 1 125 0
	lds r24,swTimer+16
	tst r24
	breq .L144
	.loc 1 125 0 is_stmt 0 discriminator 1
	lds r24,swTimer+16
	cpi r24,lo8(-1)
	brne .L142
.L144:
.LBB57:
	.loc 1 127 0 is_stmt 1
	in r25,__SREG__
.LVL250:
.LBB58:
.LBB59:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE59:
.LBE58:
	.loc 1 127 0
	ldi r24,lo8(1)
	rjmp .L145
.LVL251:
.L146:
	.loc 1 127 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(10)
.LVL252:
	std Z+16,r24
	std Z+17,__zero_reg__
.LVL253:
	.loc 1 127 0 discriminator 3
	ldi r24,0
.LVL254:
.L145:
	.loc 1 127 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L146
.LVL255:
.LBB60:
.LBB61:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL256:
.LBE61:
.LBE60:
.LBE57:
	.loc 1 128 0
	call midi_SendActiveSense
.LVL257:
.L142:
	ret
	.cfi_endproc
.LFE23:
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
	.comm	programMap,512,1
	.comm	registerCount,1,1
	.comm	registerMap,64,1
.global	midiEEPromLoadError
	.section	.bss.midiEEPromLoadError,"aw",@nobits
	.type	midiEEPromLoadError, @object
	.size	midiEEPromLoadError, 1
midiEEPromLoadError:
	.zero	1
	.comm	midi_TxActivceSense,1,1
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
	.comm	midiCoupler_Pfrom1,1,1
	.comm	midiCoupler_Pfrom2,1,1
	.comm	midiCoupler_Pfrom3,1,1
	.comm	midiCoupler_1from2,1,1
	.comm	midiCoupler_1from3,1,1
	.comm	midiCoupler_2from3,1,1
	.comm	lcdData,10,1
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 ".././message.h"
	.file 5 ".././hwtimer.h"
	.file 6 ".././Midi.h"
	.file 7 ".././menu.h"
	.file 8 ".././ee_prom.h"
	.file 9 ".././log.h"
	.file 10 ".././serial.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x126b
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF141
	.byte	0xc
	.long	.LASF142
	.long	.LASF143
	.long	.Ldebug_ranges0+0xc0
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
	.long	0x3b
	.long	0x99
	.uleb128 0x6
	.long	0x82
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.byte	0x40
	.long	0xb8
	.uleb128 0x8
	.long	.LASF11
	.byte	0x4
	.byte	0x41
	.long	0x54
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0x42
	.long	0x89
	.byte	0
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x43
	.long	0x99
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.byte	0x4d
	.long	0xe8
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x4e
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x4f
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF16
	.byte	0x5
	.byte	0x50
	.long	0xc3
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.long	0x16c
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0xa4
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0xa5
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0xa6
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0xa7
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0xa8
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0xa9
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0xaa
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0xab
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x2
	.long	.LASF25
	.byte	0x5
	.byte	0xac
	.long	0xf3
	.uleb128 0x9
	.byte	0x2
	.byte	0x6
	.byte	0x2a
	.long	0x19c
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0x2b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0x2c
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF28
	.byte	0x6
	.byte	0x2d
	.long	0x177
	.uleb128 0x9
	.byte	0x2
	.byte	0x6
	.byte	0x2f
	.long	0x1cc
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.byte	0x30
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0x31
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF30
	.byte	0x6
	.byte	0x32
	.long	0x1a7
	.uleb128 0x9
	.byte	0x2
	.byte	0x6
	.byte	0x3c
	.long	0x1fc
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.byte	0x3d
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.byte	0x3e
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF33
	.byte	0x6
	.byte	0x3f
	.long	0x1d7
	.uleb128 0x9
	.byte	0x3
	.byte	0x6
	.byte	0x41
	.long	0x23a
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.byte	0x42
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.byte	0x43
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.byte	0x44
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF37
	.byte	0x6
	.byte	0x45
	.long	0x207
	.uleb128 0x9
	.byte	0x2
	.byte	0x6
	.byte	0x48
	.long	0x26a
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.byte	0x49
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.byte	0x4a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF38
	.byte	0x6
	.byte	0x4b
	.long	0x245
	.uleb128 0x9
	.byte	0x4
	.byte	0x6
	.byte	0x71
	.long	0x2b6
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.byte	0x72
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.byte	0x73
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.byte	0x74
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF41
	.byte	0x6
	.byte	0x75
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x6
	.byte	0x76
	.long	0x275
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.byte	0x7a
	.long	0x2d8
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0x7b
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.long	.LASF43
	.byte	0x6
	.byte	0x7c
	.long	0x2c1
	.uleb128 0xb
	.byte	0x2
	.long	0x3b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF44
	.uleb128 0xc
	.long	0x3b
	.uleb128 0x5
	.long	0x23a
	.long	0x30b
	.uleb128 0x6
	.long	0x82
	.byte	0x3
	.uleb128 0x6
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x2b6
	.long	0x321
	.uleb128 0x6
	.long	0x82
	.byte	0xf
	.uleb128 0x6
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x2d8
	.long	0x331
	.uleb128 0x6
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x3b
	.long	0x341
	.uleb128 0x6
	.long	0x82
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.long	0x3b
	.long	0x357
	.uleb128 0x6
	.long	0x82
	.byte	0x3f
	.uleb128 0x6
	.long	0x82
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.long	.LASF144
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0xe
	.long	.LASF145
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x37d
	.uleb128 0xf
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0x37d
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x2f0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF146
	.byte	0x1
	.byte	0x2f
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.long	.LASF45
	.byte	0x1
	.byte	0x49
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x3bb
	.uleb128 0x12
	.long	.LVL0
	.long	0x11f9
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF46
	.byte	0x1
	.byte	0xd7
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x455
	.uleb128 0x13
	.long	.Ldebug_ranges0+0
	.long	0x402
	.uleb128 0x14
	.long	.LASF47
	.byte	0x1
	.byte	0xe2
	.long	0x3b
	.long	.LLST0
	.uleb128 0x15
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x14
	.long	.LASF48
	.byte	0x1
	.byte	0xe3
	.long	0x3b
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LVL1
	.long	0x1206
	.uleb128 0x16
	.long	.LVL2
	.long	0x1213
	.long	0x42d
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x35
	.uleb128 0x17
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
	.uleb128 0x12
	.long	.LVL3
	.long	0x1220
	.uleb128 0x18
	.long	.LVL11
	.long	0x1213
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x36
	.uleb128 0x17
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
	.uleb128 0x19
	.byte	0x1
	.long	.LASF66
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.long	0x3b
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x4d2
	.uleb128 0x1a
	.long	.LASF48
	.byte	0x1
	.byte	0xeb
	.long	0x3b
	.long	.LLST2
	.uleb128 0x1b
	.long	.LASF49
	.byte	0x1
	.byte	0xeb
	.long	0x3b
	.byte	0x1
	.byte	0x66
	.uleb128 0x15
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x14
	.long	.LASF50
	.byte	0x1
	.byte	0xf0
	.long	0x3b
	.long	.LLST3
	.uleb128 0x14
	.long	.LASF51
	.byte	0x1
	.byte	0xf1
	.long	0x3b
	.long	.LLST4
	.uleb128 0x14
	.long	.LASF52
	.byte	0x1
	.byte	0xf2
	.long	0x3b
	.long	.LLST5
	.uleb128 0x14
	.long	.LASF53
	.byte	0x1
	.byte	0xf3
	.long	0x3b
	.long	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.word	0x102
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST7
	.byte	0x1
	.long	0x53d
	.uleb128 0x1d
	.long	.LASF54
	.byte	0x1
	.word	0x102
	.long	0x2e3
	.long	.LLST8
	.uleb128 0x1e
	.long	.LASF53
	.byte	0x1
	.word	0x104
	.long	0x3b
	.long	.LLST9
	.uleb128 0x1f
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x1e
	.long	.LASF48
	.byte	0x1
	.word	0x105
	.long	0x3b
	.long	.LLST10
	.uleb128 0x18
	.long	.LVL33
	.long	0x455
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.word	0x111
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x5b1
	.uleb128 0x1d
	.long	.LASF48
	.byte	0x1
	.word	0x111
	.long	0x3b
	.long	.LLST11
	.uleb128 0x21
	.long	.LASF57
	.byte	0x1
	.word	0x111
	.long	0x3b
	.byte	0x1
	.byte	0x66
	.uleb128 0x1f
	.long	.LBB20
	.long	.LBE20
	.uleb128 0x1e
	.long	.LASF50
	.byte	0x1
	.word	0x115
	.long	0x3b
	.long	.LLST12
	.uleb128 0x1e
	.long	.LASF51
	.byte	0x1
	.word	0x116
	.long	0x3b
	.long	.LLST13
	.uleb128 0x1e
	.long	.LASF52
	.byte	0x1
	.word	0x117
	.long	0x3b
	.long	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.word	0x123
	.byte	0x1
	.long	.LFB29
	.long	.LFE29
	.long	.LLST15
	.byte	0x1
	.long	0x65b
	.uleb128 0x1d
	.long	.LASF59
	.byte	0x1
	.word	0x123
	.long	0x3b
	.long	.LLST16
	.uleb128 0x1f
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x1e
	.long	.LASF60
	.byte	0x1
	.word	0x125
	.long	0x3b
	.long	.LLST17
	.uleb128 0x1e
	.long	.LASF48
	.byte	0x1
	.word	0x126
	.long	0x3b
	.long	.LLST18
	.uleb128 0x1e
	.long	.LASF61
	.byte	0x1
	.word	0x127
	.long	0x2e3
	.long	.LLST19
	.uleb128 0x1f
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x1e
	.long	.LASF62
	.byte	0x1
	.word	0x128
	.long	0x3b
	.long	.LLST20
	.uleb128 0x1f
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x1e
	.long	.LASF51
	.byte	0x1
	.word	0x12a
	.long	0x3b
	.long	.LLST21
	.uleb128 0x18
	.long	.LVL59
	.long	0x53d
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF63
	.byte	0x1
	.word	0x135
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x6c5
	.uleb128 0x1e
	.long	.LASF64
	.byte	0x1
	.word	0x136
	.long	0x6c5
	.long	.LLST22
	.uleb128 0x13
	.long	.Ldebug_ranges0+0x48
	.long	0x69d
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.word	0x139
	.long	0x3b
	.long	.LLST23
	.byte	0
	.uleb128 0x12
	.long	.LVL69
	.long	0x122d
	.uleb128 0x18
	.long	.LVL70
	.long	0x1213
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.uleb128 0x17
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
	.long	0x2b6
	.uleb128 0x22
	.byte	0x1
	.long	.LASF65
	.byte	0x1
	.word	0x158
	.long	.LFB31
	.long	.LFE31
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x729
	.uleb128 0x24
	.long	.LBB26
	.long	.LBE26
	.long	0x701
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.word	0x15a
	.long	0x3b
	.long	.LLST24
	.byte	0
	.uleb128 0x12
	.long	.LVL74
	.long	0x123a
	.uleb128 0x18
	.long	.LVL75
	.long	0x1213
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x32
	.uleb128 0x17
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
	.uleb128 0x25
	.byte	0x1
	.long	.LASF67
	.byte	0x1
	.word	0x185
	.byte	0x1
	.long	0x19c
	.long	.LFB33
	.long	.LFE33
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x773
	.uleb128 0x1d
	.long	.LASF29
	.byte	0x1
	.word	0x185
	.long	0x3b
	.long	.LLST25
	.uleb128 0x21
	.long	.LASF27
	.byte	0x1
	.word	0x185
	.long	0x3b
	.byte	0x1
	.byte	0x66
	.uleb128 0x26
	.long	.LASF74
	.byte	0x1
	.word	0x186
	.long	0x19c
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF68
	.byte	0x1
	.word	0x192
	.long	.LFB34
	.long	.LFE34
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x7e2
	.uleb128 0x1f
	.long	.LBB27
	.long	.LBE27
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.word	0x193
	.long	0x3b
	.long	.LLST26
	.uleb128 0x15
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x1e
	.long	.LASF69
	.byte	0x1
	.word	0x194
	.long	0x3b
	.long	.LLST27
	.uleb128 0x1e
	.long	.LASF70
	.byte	0x1
	.word	0x195
	.long	0x3b
	.long	.LLST28
	.uleb128 0x15
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x1e
	.long	.LASF71
	.byte	0x1
	.word	0x196
	.long	0x3b
	.long	.LLST29
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.word	0x1aa
	.long	.LFB35
	.long	.LFE35
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x861
	.uleb128 0x24
	.long	.LBB32
	.long	.LBE32
	.long	0x82c
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.word	0x1ab
	.long	0x29
	.long	.LLST30
	.uleb128 0x15
	.long	.Ldebug_ranges0+0x78
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.word	0x1ad
	.long	0x29
	.long	.LLST31
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LVL95
	.long	0x1247
	.uleb128 0x16
	.long	.LVL96
	.long	0x1213
	.long	0x857
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x33
	.uleb128 0x17
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
	.uleb128 0x12
	.long	.LVL97
	.long	0x773
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF73
	.byte	0x1
	.word	0x1bd
	.byte	0x1
	.long	0x1fc
	.long	.LFB36
	.long	.LFE36
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x8d5
	.uleb128 0x1d
	.long	.LASF29
	.byte	0x1
	.word	0x1bd
	.long	0x3b
	.long	.LLST32
	.uleb128 0x1d
	.long	.LASF27
	.byte	0x1
	.word	0x1bd
	.long	0x3b
	.long	.LLST33
	.uleb128 0x26
	.long	.LASF74
	.byte	0x1
	.word	0x1bf
	.long	0x1fc
	.uleb128 0x1f
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x1e
	.long	.LASF75
	.byte	0x1
	.word	0x1c2
	.long	0x8d5
	.long	.LLST34
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.word	0x1c4
	.long	0x3b
	.long	.LLST35
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x23a
	.uleb128 0x25
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.word	0x1d4
	.byte	0x1
	.long	0x1cc
	.long	.LFB37
	.long	.LFE37
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x967
	.uleb128 0x1d
	.long	.LASF32
	.byte	0x1
	.word	0x1d4
	.long	0x3b
	.long	.LLST36
	.uleb128 0x26
	.long	.LASF74
	.byte	0x1
	.word	0x1d8
	.long	0x1cc
	.uleb128 0x1e
	.long	.LASF75
	.byte	0x1
	.word	0x1d9
	.long	0x8d5
	.long	.LLST37
	.uleb128 0x1e
	.long	.LASF29
	.byte	0x1
	.word	0x1db
	.long	0x3b
	.long	.LLST38
	.uleb128 0x24
	.long	.LBB36
	.long	.LBE36
	.long	0x952
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.word	0x1dd
	.long	0x3b
	.long	.LLST39
	.byte	0
	.uleb128 0x18
	.long	.LVL117
	.long	0x1254
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF77
	.byte	0x1
	.word	0x1ed
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.long	.LLST40
	.byte	0x1
	.long	0xa05
	.uleb128 0x1d
	.long	.LASF29
	.byte	0x1
	.word	0x1ed
	.long	0x3b
	.long	.LLST41
	.uleb128 0x1d
	.long	.LASF27
	.byte	0x1
	.word	0x1ed
	.long	0x3b
	.long	.LLST42
	.uleb128 0x1d
	.long	.LASF57
	.byte	0x1
	.word	0x1ed
	.long	0x3b
	.long	.LLST43
	.uleb128 0x26
	.long	.LASF78
	.byte	0x1
	.word	0x1ee
	.long	0x1fc
	.uleb128 0x24
	.long	.LBB37
	.long	.LBE37
	.long	0x9ec
	.uleb128 0x1e
	.long	.LASF51
	.byte	0x1
	.word	0x1f2
	.long	0x3b
	.long	.LLST44
	.uleb128 0x1e
	.long	.LASF52
	.byte	0x1
	.word	0x1f3
	.long	0x3b
	.long	.LLST45
	.byte	0
	.uleb128 0x18
	.long	.LVL119
	.long	0x861
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST46
	.byte	0x1
	.long	0xa7e
	.uleb128 0x1a
	.long	.LASF26
	.byte	0x1
	.byte	0x4e
	.long	0x3b
	.long	.LLST47
	.uleb128 0x14
	.long	.LASF80
	.byte	0x1
	.byte	0x4f
	.long	0x3b
	.long	.LLST48
	.uleb128 0x1f
	.long	.LBB38
	.long	.LBE38
	.uleb128 0x14
	.long	.LASF27
	.byte	0x1
	.byte	0x54
	.long	0x3b
	.long	.LLST49
	.uleb128 0x1f
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0x56
	.long	0x3b
	.long	.LLST50
	.uleb128 0x18
	.long	.LVL135
	.long	0x967
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF81
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST51
	.byte	0x1
	.long	0xadd
	.uleb128 0x1a
	.long	.LASF29
	.byte	0x1
	.byte	0x5e
	.long	0x3b
	.long	.LLST52
	.uleb128 0x1f
	.long	.LBB40
	.long	.LBE40
	.uleb128 0x14
	.long	.LASF27
	.byte	0x1
	.byte	0x61
	.long	0x3b
	.long	.LLST53
	.uleb128 0x18
	.long	.LVL145
	.long	0x967
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.byte	0x67
	.long	.LFB21
	.long	.LFE21
	.long	.LLST54
	.byte	0x1
	.long	0xb20
	.uleb128 0x1f
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x14
	.long	.LASF29
	.byte	0x1
	.byte	0x68
	.long	0x3b
	.long	.LLST55
	.uleb128 0x18
	.long	.LVL150
	.long	0xa7e
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF83
	.byte	0x1
	.byte	0x70
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xb43
	.uleb128 0x12
	.long	.LVL153
	.long	0xadd
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF84
	.byte	0x1
	.word	0x169
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST56
	.byte	0x1
	.long	0xc07
	.uleb128 0x1d
	.long	.LASF26
	.byte	0x1
	.word	0x169
	.long	0x3b
	.long	.LLST57
	.uleb128 0x1d
	.long	.LASF27
	.byte	0x1
	.word	0x169
	.long	0x3b
	.long	.LLST58
	.uleb128 0x1d
	.long	.LASF57
	.byte	0x1
	.word	0x169
	.long	0x3b
	.long	.LLST59
	.uleb128 0x1e
	.long	.LASF85
	.byte	0x1
	.word	0x16b
	.long	0x3b
	.long	.LLST60
	.uleb128 0x15
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.word	0x16c
	.long	0x3b
	.long	.LLST61
	.uleb128 0x1f
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x1e
	.long	.LASF86
	.byte	0x1
	.word	0x16f
	.long	0x29
	.long	.LLST62
	.uleb128 0x1f
	.long	.LBB44
	.long	.LBE44
	.uleb128 0x1e
	.long	.LASF29
	.byte	0x1
	.word	0x172
	.long	0x3b
	.long	.LLST63
	.uleb128 0x1e
	.long	.LASF87
	.byte	0x1
	.word	0x173
	.long	0x3b
	.long	.LLST64
	.uleb128 0x18
	.long	.LVL163
	.long	0x967
	.uleb128 0x17
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
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF88
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xce8
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.byte	0x87
	.long	0x3b
	.long	.LLST65
	.uleb128 0x24
	.long	.LBB46
	.long	.LBE46
	.long	0xc84
	.uleb128 0x14
	.long	.LASF90
	.byte	0x1
	.byte	0x9d
	.long	0x3b
	.long	.LLST66
	.uleb128 0x14
	.long	.LASF91
	.byte	0x1
	.byte	0x9d
	.long	0x3b
	.long	.LLST67
	.uleb128 0x2b
	.long	0x357
	.long	.LBB47
	.long	.LBE47
	.byte	0x1
	.byte	0x9d
	.uleb128 0x2c
	.long	0x364
	.long	.LBB49
	.long	.LBE49
	.byte	0x1
	.byte	0x9d
	.uleb128 0x2d
	.long	0x371
	.long	.LLST68
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LBB51
	.long	.LBE51
	.long	0xcde
	.uleb128 0x14
	.long	.LASF26
	.byte	0x1
	.byte	0xaf
	.long	0x3b
	.long	.LLST69
	.uleb128 0x14
	.long	.LASF92
	.byte	0x1
	.byte	0xb0
	.long	0x3b
	.long	.LLST70
	.uleb128 0x16
	.long	.LVL198
	.long	0xb43
	.long	0xcc2
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.long	.LVL201
	.long	0xb43
	.uleb128 0x12
	.long	.LVL203
	.long	0xa05
	.uleb128 0x12
	.long	.LVL206
	.long	0x5b1
	.byte	0
	.uleb128 0x12
	.long	.LVL193
	.long	0x398
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF93
	.byte	0x1
	.word	0x200
	.byte	0x1
	.long	.LFB39
	.long	.LFE39
	.long	.LLST71
	.byte	0x1
	.long	0xe94
	.uleb128 0x1d
	.long	.LASF94
	.byte	0x1
	.word	0x200
	.long	0xb8
	.long	.LLST72
	.uleb128 0x1e
	.long	.LASF95
	.byte	0x1
	.word	0x201
	.long	0x3b
	.long	.LLST73
	.uleb128 0x1e
	.long	.LASF96
	.byte	0x1
	.word	0x202
	.long	0x3b
	.long	.LLST74
	.uleb128 0x1e
	.long	.LASF97
	.byte	0x1
	.word	0x203
	.long	0x3b
	.long	.LLST75
	.uleb128 0x1e
	.long	.LASF41
	.byte	0x1
	.word	0x204
	.long	0x1cc
	.long	.LLST76
	.uleb128 0x1e
	.long	.LASF98
	.byte	0x1
	.word	0x205
	.long	0x19c
	.long	.LLST77
	.uleb128 0x15
	.long	.Ldebug_ranges0+0xa8
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.word	0x208
	.long	0x3b
	.long	.LLST78
	.uleb128 0x24
	.long	.LBB53
	.long	.LBE53
	.long	0xe89
	.uleb128 0x1e
	.long	.LASF92
	.byte	0x1
	.word	0x21f
	.long	0x3b
	.long	.LLST79
	.uleb128 0x16
	.long	.LVL214
	.long	0x729
	.long	0xdad
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.long	.LVL215
	.long	0x1261
	.uleb128 0x16
	.long	.LVL216
	.long	0x1261
	.long	0xdca
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.long	.LVL217
	.long	0x1261
	.long	0xdde
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x16
	.long	.LVL222
	.long	0x967
	.long	0xdfd
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.long	.LVL223
	.long	0x967
	.long	0xe1c
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.long	.LVL224
	.long	0x967
	.long	0xe3b
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.long	.LVL227
	.long	0x967
	.long	0xe54
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.long	.LVL228
	.long	0x967
	.long	0xe73
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.long	.LVL231
	.long	0x967
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LVL213
	.long	0x8db
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF99
	.byte	0x1
	.word	0x23f
	.long	.LFB40
	.long	.LFE40
	.long	.LLST80
	.byte	0x1
	.long	0xf0d
	.uleb128 0x1f
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.word	0x240
	.long	0x3b
	.long	.LLST81
	.uleb128 0x1f
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x1e
	.long	.LASF100
	.byte	0x1
	.word	0x241
	.long	0x3b
	.long	.LLST82
	.uleb128 0x12
	.long	.LVL244
	.long	0x1261
	.uleb128 0x16
	.long	.LVL245
	.long	0x1261
	.long	0xefb
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x18
	.long	.LVL246
	.long	0x1261
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF101
	.byte	0x1
	.word	0x24a
	.long	.LFB41
	.long	.LFE41
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xf38
	.uleb128 0x18
	.long	.LVL249
	.long	0x1261
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xfe
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF102
	.byte	0x1
	.byte	0x7b
	.long	.LFB23
	.long	.LFE23
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xfaf
	.uleb128 0x24
	.long	.LBB57
	.long	.LBE57
	.long	0xfa5
	.uleb128 0x14
	.long	.LASF90
	.byte	0x1
	.byte	0x7f
	.long	0x3b
	.long	.LLST83
	.uleb128 0x14
	.long	.LASF91
	.byte	0x1
	.byte	0x7f
	.long	0x3b
	.long	.LLST84
	.uleb128 0x2b
	.long	0x357
	.long	.LBB58
	.long	.LBE58
	.byte	0x1
	.byte	0x7f
	.uleb128 0x2c
	.long	0x364
	.long	.LBB60
	.long	.LBE60
	.byte	0x1
	.byte	0x7f
	.uleb128 0x2d
	.long	0x371
	.long	.LLST85
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LVL257
	.long	0xf0d
	.byte	0
	.uleb128 0x5
	.long	0xfbf
	.long	0xfbf
	.uleb128 0x6
	.long	0x82
	.byte	0x8
	.byte	0
	.uleb128 0x2f
	.long	0xe8
	.uleb128 0x30
	.long	.LASF103
	.byte	0x5
	.byte	0x51
	.long	0xfd1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.long	0xfaf
	.uleb128 0x5
	.long	0x16c
	.long	0xfe6
	.uleb128 0x6
	.long	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x30
	.long	.LASF104
	.byte	0x5
	.byte	0xad
	.long	0xfd6
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	.LASF105
	.byte	0x5
	.byte	0xb4
	.long	0x1000
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.long	0x3b
	.uleb128 0x31
	.long	.LASF106
	.byte	0x1
	.byte	0x22
	.long	0x2f5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	manualMap
	.uleb128 0x5
	.long	0x26a
	.long	0x1027
	.uleb128 0x6
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x31
	.long	.LASF107
	.byte	0x1
	.byte	0x23
	.long	0x1017
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ManualNoteRange
	.uleb128 0x31
	.long	.LASF108
	.byte	0x1
	.byte	0x24
	.long	0x30b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiInMap
	.uleb128 0x31
	.long	.LASF109
	.byte	0x1
	.byte	0x25
	.long	0x321
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiOutMap
	.uleb128 0x31
	.long	.LASF110
	.byte	0x1
	.byte	0x29
	.long	0x331
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerMap
	.uleb128 0x31
	.long	.LASF111
	.byte	0x1
	.byte	0x2a
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	registerCount
	.uleb128 0x31
	.long	.LASF112
	.byte	0x1
	.byte	0x2b
	.long	0x341
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	programMap
	.uleb128 0x31
	.long	.LASF113
	.byte	0x1
	.byte	0x26
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxActivceSensing
	.uleb128 0x31
	.long	.LASF114
	.byte	0x1
	.byte	0x27
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midi_TxActivceSense
	.uleb128 0x31
	.long	.LASF115
	.byte	0x1
	.byte	0x40
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutNote
	.uleb128 0x31
	.long	.LASF116
	.byte	0x1
	.byte	0x41
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastOutManual
	.uleb128 0x31
	.long	.LASF117
	.byte	0x1
	.byte	0x42
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInNote
	.uleb128 0x31
	.long	.LASF118
	.byte	0x1
	.byte	0x43
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInChannel
	.uleb128 0x31
	.long	.LASF119
	.byte	0x1
	.byte	0x44
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastInManual
	.uleb128 0x31
	.long	.LASF120
	.byte	0x1
	.byte	0x1c
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiCoupler_2from3
	.uleb128 0x31
	.long	.LASF121
	.byte	0x1
	.byte	0x1d
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiCoupler_1from3
	.uleb128 0x31
	.long	.LASF122
	.byte	0x1
	.byte	0x1e
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiCoupler_1from2
	.uleb128 0x31
	.long	.LASF123
	.byte	0x1
	.byte	0x1f
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiCoupler_Pfrom3
	.uleb128 0x31
	.long	.LASF124
	.byte	0x1
	.byte	0x20
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiCoupler_Pfrom2
	.uleb128 0x31
	.long	.LASF125
	.byte	0x1
	.byte	0x21
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiCoupler_Pfrom1
	.uleb128 0x5
	.long	0x3b
	.long	0x118d
	.uleb128 0x6
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x31
	.long	.LASF126
	.byte	0x7
	.byte	0x9c
	.long	0x117d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x31
	.long	.LASF127
	.byte	0x1
	.byte	0x28
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiEEPromLoadError
	.uleb128 0x31
	.long	.LASF128
	.byte	0x1
	.byte	0x3b
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiLastCommand
	.uleb128 0x31
	.long	.LASF129
	.byte	0x1
	.byte	0x3c
	.long	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByte
	.uleb128 0x31
	.long	.LASF130
	.byte	0x1
	.byte	0x3d
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteCount
	.uleb128 0x31
	.long	.LASF131
	.byte	0x1
	.byte	0x3e
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiDataByteExpected
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF132
	.long	.LASF132
	.byte	0x5
	.byte	0x58
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF133
	.long	.LASF133
	.byte	0x8
	.byte	0x1c
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF134
	.long	.LASF134
	.byte	0x9
	.byte	0x32
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF135
	.long	.LASF135
	.byte	0x8
	.byte	0x1d
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF136
	.long	.LASF136
	.byte	0x8
	.byte	0x18
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF137
	.long	.LASF137
	.byte	0x8
	.byte	0x19
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF138
	.long	.LASF138
	.byte	0x8
	.byte	0x17
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF139
	.long	.LASF139
	.byte	0x9
	.byte	0x33
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF140
	.long	.LASF140
	.byte	0xa
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x28
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
	.long	.LVL4
	.long	.LVL9
	.word	0x1
	.byte	0x69
	.long	.LVL10
	.long	.LVL11-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL6
	.word	0x1
	.byte	0x68
	.long	.LVL7
	.long	.LVL9
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST2:
	.long	.LVL12
	.long	.LVL14
	.word	0x1
	.byte	0x68
	.long	.LVL14
	.long	.LVL23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.word	0x1
	.byte	0x68
	.long	.LVL24
	.long	.LFE26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL13
	.long	.LVL16
	.word	0x1
	.byte	0x69
	.long	.LVL16
	.long	.LVL20
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST4:
	.long	.LVL15
	.long	.LVL21
	.word	0x1
	.byte	0x68
	.long	.LVL25
	.long	.LVL26
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST5:
	.long	.LVL17
	.long	.LVL19
	.word	0x1
	.byte	0x69
	.long	.LVL19
	.long	.LVL20
	.word	0x1b
	.byte	0x8e
	.sleb128 0
	.byte	0x94
	.byte	0x1
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
.LLST6:
	.long	.LVL18
	.long	.LVL22
	.word	0x1
	.byte	0x62
	.long	.LVL25
	.long	.LVL27
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST7:
	.long	.LFB27
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI6
	.long	.LFE27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	0
	.long	0
.LLST8:
	.long	.LVL28
	.long	.LVL30
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL30
	.long	.LVL35
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL35
	.long	.LVL36
	.word	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.long	.LVL36
	.long	.LVL37
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL37
	.long	.LVL41
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST9:
	.long	.LVL30
	.long	.LVL32
	.word	0x1
	.byte	0x6c
	.long	.LVL34
	.long	.LVL39
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST10:
	.long	.LVL29
	.long	.LVL30
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL30
	.long	.LVL40
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST11:
	.long	.LVL42
	.long	.LVL43
	.word	0x1
	.byte	0x68
	.long	.LVL43
	.long	.LFE28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL43
	.long	.LVL45
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST13:
	.long	.LVL44
	.long	.LVL48
	.word	0x1
	.byte	0x6e
	.long	.LVL49
	.long	.LVL51
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST14:
	.long	.LVL46
	.long	.LVL47
	.word	0x1
	.byte	0x68
	.long	.LVL49
	.long	.LVL50
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST15:
	.long	.LFB29
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI11
	.long	.LFE29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST16:
	.long	.LVL52
	.long	.LVL54
	.word	0x1
	.byte	0x68
	.long	.LVL54
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL56
	.long	.LVL63
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST18:
	.long	.LVL58
	.long	.LVL59-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST19:
	.long	.LVL53
	.long	.LVL55
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL55
	.long	.LVL63
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL63
	.long	.LVL64
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST20:
	.long	.LVL53
	.long	.LVL54
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL54
	.long	.LVL64
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST21:
	.long	.LVL56
	.long	.LVL57
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL57
	.long	.LVL63
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST22:
	.long	.LVL66
	.long	.LVL69-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST23:
	.long	.LVL65
	.long	.LVL66
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	.LVL66
	.long	.LVL69-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST24:
	.long	.LVL71
	.long	.LVL72
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL72
	.long	.LVL74-1
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST25:
	.long	.LVL76
	.long	.LVL77
	.word	0x1
	.byte	0x68
	.long	.LVL77
	.long	.LVL78
	.word	0x1
	.byte	0x6e
	.long	.LVL78
	.long	.LFE33
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL79
	.long	.LVL80
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL80
	.long	.LFE34
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST27:
	.long	.LVL80
	.long	.LVL86
	.word	0x1
	.byte	0x65
	.long	.LVL87
	.long	.LVL88
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST28:
	.long	.LVL80
	.long	.LVL86
	.word	0x1
	.byte	0x66
	.long	.LVL87
	.long	.LVL88
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST29:
	.long	.LVL80
	.long	.LVL81
	.word	0x1
	.byte	0x64
	.long	.LVL81
	.long	.LVL82
	.word	0x1
	.byte	0x62
	.long	.LVL82
	.long	.LVL86
	.word	0x1
	.byte	0x64
	.long	.LVL87
	.long	.LVL88
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST30:
	.long	.LVL89
	.long	.LVL90
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL90
	.long	.LVL95-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST31:
	.long	.LVL90
	.long	.LVL92
	.word	0x1
	.byte	0x62
	.long	.LVL93
	.long	.LVL94
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST32:
	.long	.LVL98
	.long	.LVL100
	.word	0x1
	.byte	0x68
	.long	.LVL100
	.long	.LFE36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL98
	.long	.LVL101
	.word	0x1
	.byte	0x66
	.long	.LVL101
	.long	.LVL103
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL103
	.long	.LFE36
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST34:
	.long	.LVL99
	.long	.LVL106
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST35:
	.long	.LVL99
	.long	.LVL100
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL100
	.long	.LVL102
	.word	0x1
	.byte	0x68
	.long	.LVL103
	.long	.LVL106
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST36:
	.long	.LVL107
	.long	.LVL110
	.word	0x1
	.byte	0x68
	.long	.LVL110
	.long	.LVL111
	.word	0x1
	.byte	0x6a
	.long	.LVL111
	.long	.LVL116
	.word	0x1
	.byte	0x68
	.long	.LVL116
	.long	.LVL117-1
	.word	0x1
	.byte	0x64
	.long	.LVL117-1
	.long	.LFE37
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL108
	.long	.LVL117-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST38:
	.long	.LVL107
	.long	.LVL108
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL108
	.long	.LVL117-1
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST39:
	.long	.LVL108
	.long	.LVL109
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL109
	.long	.LVL115
	.word	0x1
	.byte	0x65
	.long	0
	.long	0
.LLST40:
	.long	.LFB38
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI12
	.long	.LFE38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST41:
	.long	.LVL118
	.long	.LVL119-1
	.word	0x1
	.byte	0x68
	.long	.LVL119-1
	.long	.LFE38
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL118
	.long	.LVL119-1
	.word	0x1
	.byte	0x66
	.long	.LVL119-1
	.long	.LFE38
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL118
	.long	.LVL119-1
	.word	0x1
	.byte	0x64
	.long	.LVL119-1
	.long	.LVL128
	.word	0x1
	.byte	0x6c
	.long	.LVL128
	.long	.LFE38
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL121
	.long	.LVL123
	.word	0x1
	.byte	0x6e
	.long	.LVL125
	.long	.LVL126
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST45:
	.long	.LVL122
	.long	.LVL124
	.word	0x1
	.byte	0x69
	.long	.LVL125
	.long	.LVL127
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST46:
	.long	.LFB19
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI20
	.long	.LFE19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST47:
	.long	.LVL129
	.long	.LVL131
	.word	0x1
	.byte	0x68
	.long	.LVL131
	.long	.LVL141
	.word	0x1
	.byte	0x5c
	.long	.LVL141
	.long	.LFE19
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL130
	.long	.LVL131
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL131
	.long	.LVL140
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST49:
	.long	.LVL132
	.long	.LVL134
	.word	0x1
	.byte	0x66
	.long	.LVL134
	.long	.LVL137
	.word	0x1
	.byte	0x5e
	.long	.LVL137
	.long	.LVL138
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST50:
	.long	.LVL133
	.long	.LVL138
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST51:
	.long	.LFB20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI24
	.long	.LFE20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST52:
	.long	.LVL142
	.long	.LVL143
	.word	0x1
	.byte	0x68
	.long	.LVL143
	.long	.LVL147
	.word	0x1
	.byte	0x60
	.long	.LVL147
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LVL144
	.long	.LVL147
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST54:
	.long	.LFB21
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI25
	.long	.LFE21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST55:
	.long	.LVL148
	.long	.LVL149
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL149
	.long	.LVL152
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST56:
	.long	.LFB32
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI29
	.long	.LFE32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	0
	.long	0
.LLST57:
	.long	.LVL154
	.long	.LVL155
	.word	0x1
	.byte	0x68
	.long	.LVL155
	.long	.LVL157
	.word	0x1
	.byte	0x6d
	.long	.LVL157
	.long	.LVL162
	.word	0x1
	.byte	0x64
	.long	.LVL162
	.long	.LVL166
	.word	0x1
	.byte	0x6d
	.long	.LVL166
	.long	.LFE32
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST58:
	.long	.LVL154
	.long	.LVL156
	.word	0x1
	.byte	0x66
	.long	.LVL156
	.long	.LVL169
	.word	0x1
	.byte	0x60
	.long	.LVL169
	.long	.LFE32
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST59:
	.long	.LVL154
	.long	.LVL156
	.word	0x1
	.byte	0x64
	.long	.LVL156
	.long	.LVL168
	.word	0x1
	.byte	0x61
	.long	.LVL168
	.long	.LFE32
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST60:
	.long	.LVL155
	.long	.LVL156
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL156
	.long	.LVL160
	.word	0x1
	.byte	0x69
	.long	.LVL163
	.long	.LVL164
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL164
	.long	.LFE32
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST61:
	.long	.LVL155
	.long	.LVL156
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL156
	.long	.LVL157
	.word	0x1
	.byte	0x6c
	.long	.LVL157
	.long	.LVL163-1
	.word	0x1
	.byte	0x62
	.long	.LVL163-1
	.long	.LVL167
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST62:
	.long	.LVL158
	.long	.LVL161
	.word	0x1
	.byte	0x66
	.long	.LVL161
	.long	.LVL163-1
	.word	0x1
	.byte	0x67
	.long	0
	.long	0
.LLST63:
	.long	.LVL159
	.long	.LVL163-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST64:
	.long	.LVL161
	.long	.LVL163-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST65:
	.long	.LVL170
	.long	.LVL171
	.word	0x1
	.byte	0x68
	.long	.LVL171
	.long	.LVL172
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL172
	.long	.LVL173
	.word	0x1
	.byte	0x68
	.long	.LVL173
	.long	.LVL174
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL174
	.long	.LVL175
	.word	0x1
	.byte	0x68
	.long	.LVL175
	.long	.LVL176
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL176
	.long	.LVL177
	.word	0x1
	.byte	0x68
	.long	.LVL177
	.long	.LVL178
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL178
	.long	.LVL179
	.word	0x1
	.byte	0x68
	.long	.LVL179
	.long	.LVL180
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL180
	.long	.LVL181
	.word	0x1
	.byte	0x68
	.long	.LVL181
	.long	.LVL182
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL182
	.long	.LVL183
	.word	0x1
	.byte	0x68
	.long	.LVL183
	.long	.LVL190
	.word	0x5
	.byte	0x3
	.long	midiLastCommand
	.long	.LVL190
	.long	.LVL192
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL192
	.long	.LVL193-1
	.word	0x1
	.byte	0x68
	.long	.LVL193-1
	.long	.LVL194
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL194
	.long	.LVL195
	.word	0x1
	.byte	0x68
	.long	.LVL195
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST66:
	.long	.LVL184
	.long	.LVL191
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST67:
	.long	.LVL185
	.long	.LVL186
	.word	0x1
	.byte	0x68
	.long	.LVL187
	.long	.LVL188
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL188
	.long	.LVL192
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST68:
	.long	.LVL189
	.long	.LVL191
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+3133
	.sleb128 0
	.long	0
	.long	0
.LLST69:
	.long	.LVL196
	.long	.LVL198-1
	.word	0x1
	.byte	0x68
	.long	.LVL199
	.long	.LVL201-1
	.word	0x1
	.byte	0x68
	.long	.LVL202
	.long	.LVL203-1
	.word	0x1
	.byte	0x68
	.long	.LVL204
	.long	.LVL205
	.word	0x1
	.byte	0x68
	.long	.LVL205
	.long	.LVL206-1
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
.LLST70:
	.long	.LVL197
	.long	.LVL199
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL200
	.long	.LVL201-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST71:
	.long	.LFB39
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI30
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI31
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI32
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI33
	.long	.LCFI34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI34
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI35
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI36
	.long	.LCFI37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI37
	.long	.LFE39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST72:
	.long	.LVL207
	.long	.LVL212
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL231
	.long	.LFE39
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST73:
	.long	.LVL208
	.long	.LVL237
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST74:
	.long	.LVL209
	.long	.LVL238
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST75:
	.long	.LVL210
	.long	.LVL211
	.word	0x1
	.byte	0x68
	.long	.LVL211
	.long	.LVL234
	.word	0x1
	.byte	0x6d
	.long	.LVL234
	.long	.LVL235
	.word	0x1
	.byte	0x68
	.long	.LVL235
	.long	.LVL236
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST76:
	.long	.LVL218
	.long	.LVL220
	.word	0x6
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST77:
	.long	.LVL211
	.long	.LVL212
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL219
	.long	.LVL221
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL225
	.long	.LVL226
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL229
	.long	.LVL230
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL231
	.long	.LVL234
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	.LVL235
	.long	.LVL239
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST78:
	.long	.LVL211
	.long	.LVL234
	.word	0x1
	.byte	0x6c
	.long	.LVL235
	.long	.LVL236
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST79:
	.long	.LVL220
	.long	.LVL231
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST80:
	.long	.LFB40
	.long	.LCFI38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI38
	.long	.LFE40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST81:
	.long	.LVL240
	.long	.LVL241
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL241
	.long	.LVL248
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST82:
	.long	.LVL242
	.long	.LVL243
	.word	0x1
	.byte	0x68
	.long	.LVL243
	.long	.LVL244-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST83:
	.long	.LVL250
	.long	.LVL256
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST84:
	.long	.LVL251
	.long	.LVL252
	.word	0x1
	.byte	0x68
	.long	.LVL253
	.long	.LVL254
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL254
	.long	.LVL257-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST85:
	.long	.LVL255
	.long	.LVL256
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+3934
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xdc
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB31
	.long	.LFE31-.LFB31
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
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB39
	.long	.LFE39-.LFB39
	.long	.LFB40
	.long	.LFE40-.LFB40
	.long	.LFB41
	.long	.LFE41-.LFB41
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB13
	.long	.LBE13
	.long	.LBB16
	.long	.LBE16
	.long	0
	.long	0
	.long	.LBB14
	.long	.LBE14
	.long	.LBB15
	.long	.LBE15
	.long	0
	.long	0
	.long	.LBB17
	.long	.LBE17
	.long	.LBB18
	.long	.LBE18
	.long	0
	.long	0
	.long	.LBB24
	.long	.LBE24
	.long	.LBB25
	.long	.LBE25
	.long	0
	.long	0
	.long	.LBB28
	.long	.LBE28
	.long	.LBB31
	.long	.LBE31
	.long	0
	.long	0
	.long	.LBB33
	.long	.LBE33
	.long	.LBB34
	.long	.LBE34
	.long	0
	.long	0
	.long	.LBB42
	.long	.LBE42
	.long	.LBB45
	.long	.LBE45
	.long	0
	.long	0
	.long	.LBB52
	.long	.LBE52
	.long	.LBB54
	.long	.LBE54
	.long	0
	.long	0
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB27
	.long	.LFE27
	.long	.LFB28
	.long	.LFE28
	.long	.LFB29
	.long	.LFE29
	.long	.LFB30
	.long	.LFE30
	.long	.LFB31
	.long	.LFE31
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
	.long	.LFB19
	.long	.LFE19
	.long	.LFB20
	.long	.LFE20
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	.LFB32
	.long	.LFE32
	.long	.LFB24
	.long	.LFE24
	.long	.LFB39
	.long	.LFE39
	.long	.LFB40
	.long	.LFE40
	.long	.LFB41
	.long	.LFE41
	.long	.LFB23
	.long	.LFE23
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF51:
	.string	"bitNr"
.LASF103:
	.string	"swTimer"
.LASF36:
	.string	"bitStart"
.LASF58:
	.string	"program_toRegister"
.LASF28:
	.string	"ChannelNote_t"
.LASF144:
	.string	"__iCliRetVal"
.LASF120:
	.string	"midiCoupler_2from3"
.LASF132:
	.string	"init_Pipe"
.LASF98:
	.string	"chanNote"
.LASF75:
	.string	"pRange"
.LASF69:
	.string	"rangeEnd"
.LASF47:
	.string	"progNr"
.LASF115:
	.string	"midiLastOutNote"
.LASF64:
	.string	"pMidiInMap"
.LASF38:
	.string	"ManualNoteRange_t"
.LASF96:
	.string	"shiftBit"
.LASF88:
	.string	"midiIn_Process"
.LASF9:
	.string	"long long unsigned int"
.LASF102:
	.string	"midi_CheckTxActiveSense"
.LASF104:
	.string	"pipe"
.LASF112:
	.string	"programMap"
.LASF12:
	.string	"message8"
.LASF131:
	.string	"midiDataByteExpected"
.LASF109:
	.string	"midiOutMap"
.LASF77:
	.string	"manual_NoteOnOff"
.LASF136:
	.string	"eeprom_ReadMidiInMap"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF116:
	.string	"midiLastOutManual"
.LASF48:
	.string	"regNr"
.LASF59:
	.string	"program"
.LASF30:
	.string	"ManualNote_t"
.LASF82:
	.string	"midi_AllManualsOff"
.LASF141:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF94:
	.string	"pipeMessage"
.LASF65:
	.string	"init_Manual2Midi"
.LASF128:
	.string	"midiLastCommand"
.LASF40:
	.string	"noteRange"
.LASF130:
	.string	"midiDataByteCount"
.LASF6:
	.string	"long int"
.LASF81:
	.string	"midi_ManualOff"
.LASF117:
	.string	"midiLastInNote"
.LASF63:
	.string	"init_Midi2Manual"
.LASF76:
	.string	"moduleBit_to_manualNote"
.LASF45:
	.string	"midiAllReset"
.LASF108:
	.string	"midiInMap"
.LASF74:
	.string	"result"
.LASF4:
	.string	"uint16_t"
.LASF70:
	.string	"rangeStart"
.LASF126:
	.string	"lcdData"
.LASF39:
	.string	"midiNote"
.LASF35:
	.string	"endNote"
.LASF43:
	.string	"MidiOutMap_t"
.LASF53:
	.string	"mask"
.LASF83:
	.string	"midi_CheckRxActiveSense"
.LASF22:
	.string	"pipeInM4"
.LASF113:
	.string	"midiRxActivceSensing"
.LASF55:
	.string	"read_allRegister"
.LASF21:
	.string	"pipeInM8"
.LASF79:
	.string	"midiAllNotesOff"
.LASF37:
	.string	"ManualMap_t"
.LASF146:
	.string	"init_Midi"
.LASF5:
	.string	"unsigned int"
.LASF73:
	.string	"manualNote_to_moduleBit"
.LASF29:
	.string	"manual"
.LASF95:
	.string	"command"
.LASF7:
	.string	"long unsigned int"
.LASF137:
	.string	"eeprom_ReadMidiOutMap"
.LASF107:
	.string	"ManualNoteRange"
.LASF129:
	.string	"midiDataByte"
.LASF90:
	.string	"sreg_save"
.LASF89:
	.string	"midiByte"
.LASF84:
	.string	"midiNote_to_Manual"
.LASF91:
	.string	"__ToDo"
.LASF32:
	.string	"moduleBit"
.LASF34:
	.string	"startNote"
.LASF57:
	.string	"onOff"
.LASF13:
	.string	"PipeMessage_t"
.LASF42:
	.string	"MidiInMap_t"
.LASF16:
	.string	"Timer"
.LASF10:
	.string	"sizetype"
.LASF67:
	.string	"Manual_to_MidiNote"
.LASF72:
	.string	"init_Manual2Module"
.LASF127:
	.string	"midiEEPromLoadError"
.LASF50:
	.string	"modBit"
.LASF25:
	.string	"Pipe_t"
.LASF41:
	.string	"manualNote"
.LASF68:
	.string	"Midi_updateManualRange"
.LASF23:
	.string	"pipeIn"
.LASF99:
	.string	"midiSendAllNotesOff"
.LASF17:
	.string	"pipeOutM4"
.LASF60:
	.string	"regBits"
.LASF24:
	.string	"pipeInStat"
.LASF15:
	.string	"prescaler"
.LASF31:
	.string	"error"
.LASF114:
	.string	"midi_TxActivceSense"
.LASF101:
	.string	"midi_SendActiveSense"
.LASF143:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF97:
	.string	"moduleBits"
.LASF135:
	.string	"eeprom_ReadProg"
.LASF3:
	.string	"unsigned char"
.LASF92:
	.string	"noteOnOff"
.LASF134:
	.string	"log_putError"
.LASF14:
	.string	"counter"
.LASF138:
	.string	"eeprom_ReadManualMap"
.LASF119:
	.string	"midiLastInManual"
.LASF26:
	.string	"channel"
.LASF125:
	.string	"midiCoupler_Pfrom1"
.LASF124:
	.string	"midiCoupler_Pfrom2"
.LASF123:
	.string	"midiCoupler_Pfrom3"
.LASF133:
	.string	"eeprom_ReadReg"
.LASF105:
	.string	"pipeProcessing"
.LASF118:
	.string	"midiLastInChannel"
.LASF100:
	.string	"chan"
.LASF44:
	.string	"char"
.LASF27:
	.string	"note"
.LASF49:
	.string	"mode"
.LASF110:
	.string	"registerMap"
.LASF62:
	.string	"byteNr"
.LASF140:
	.string	"serial1MIDISend"
.LASF80:
	.string	"splitRange"
.LASF145:
	.string	"__iRestore"
.LASF0:
	.string	"int8_t"
.LASF66:
	.string	"read_Register"
.LASF33:
	.string	"ModulBitError_t"
.LASF85:
	.string	"found"
.LASF56:
	.string	"register_onOff"
.LASF86:
	.string	"noteBase0"
.LASF139:
	.string	"log_putWarning"
.LASF87:
	.string	"manNote"
.LASF111:
	.string	"registerCount"
.LASF54:
	.string	"resultPtr"
.LASF11:
	.string	"Message16"
.LASF1:
	.string	"uint8_t"
.LASF93:
	.string	"midiKeyPress_Process"
.LASF122:
	.string	"midiCoupler_1from2"
.LASF121:
	.string	"midiCoupler_1from3"
.LASF20:
	.string	"pipeInM12"
.LASF19:
	.string	"pipeInM16"
.LASF106:
	.string	"manualMap"
.LASF78:
	.string	"moduleInfo"
.LASF46:
	.string	"init_Registers"
.LASF71:
	.string	"range"
.LASF18:
	.string	"pipeOut"
.LASF61:
	.string	"regBytePtr"
.LASF142:
	.string	".././Midi.c"
.LASF52:
	.string	"modulNr"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
