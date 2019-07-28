	.file	"serial.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.init_Serial1MIDI,"ax",@progbits
.global	init_Serial1MIDI
	.type	init_Serial1MIDI, @function
init_Serial1MIDI:
.LFB6:
	.file 1 ".././serial.c"
	.loc 1 47 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 49 0
	sts 205,__zero_reg__
	.loc 1 50 0
	ldi r24,lo8(31)
	sts 204,r24
	.loc 1 51 0
	ldi r30,lo8(-55)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(-104)
	st Z,r24
	.loc 1 52 0
	ldi r30,lo8(-54)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(6)
	st Z,r24
	.loc 1 53 0
	sts midiRxInIndex,__zero_reg__
	.loc 1 54 0
	sts midiRxOutIndex,__zero_reg__
	.loc 1 55 0
	sts midiTxInIndex,__zero_reg__
	.loc 1 56 0
	sts midiTxOutIndex,__zero_reg__
	.loc 1 57 0
	sts midiRxOvfl,__zero_reg__
	.loc 1 58 0
	sts midiTxOvfl,__zero_reg__
	.loc 1 59 0
	sts midiRxOvflCount,__zero_reg__
	.loc 1 60 0
	sts midiTxOvflCount,__zero_reg__
	ret
	.cfi_endproc
.LFE6:
	.size	init_Serial1MIDI, .-init_Serial1MIDI
	.section	.text.serial1MIDISend,"ax",@progbits
.global	serial1MIDISend
	.type	serial1MIDISend, @function
serial1MIDISend:
.LFB7:
	.loc 1 63 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 64 0
	lds r25,201
	andi r25,lo8(-33)
	sts 201,r25
	.loc 1 65 0
	lds r30,midiTxInIndex
	ldi r31,0
	subi r30,lo8(-(midiTxBuffer))
	sbci r31,hi8(-(midiTxBuffer))
	st Z,r24
	.loc 1 66 0
	lds r24,midiTxInIndex
.LVL1:
	subi r24,lo8(-(1))
	andi r24,lo8(31)
	sts midiTxInIndex,r24
	.loc 1 67 0
	lds r25,midiTxInIndex
	lds r24,midiTxOutIndex
	cp r25,r24
	breq .L9
.L3:
	.loc 1 80 0
	lds r24,201
	ori r24,lo8(32)
	sts 201,r24
.LVL2:
	ret
.LVL3:
.L9:
.LBB6:
	.loc 1 68 0
	lds r24,midiTxOvflCount
.LVL4:
	.loc 1 69 0
	tst r24
	breq .L4
	.loc 1 71 0
	cpi r24,lo8(-1)
	breq .L3
	.loc 1 73 0
	subi r24,lo8(-(1))
.LVL5:
	sts midiTxOvflCount,r24
.LBE6:
	.loc 1 80 0
	lds r24,201
.LVL6:
	ori r24,lo8(32)
	sts 201,r24
.LVL7:
	ret
.LVL8:
.L4:
.LBB7:
	.loc 1 77 0
	ldi r24,lo8(1)
.LVL9:
	sts midiTxOvflCount,r24
.LBE7:
	.loc 1 80 0
	lds r24,201
	ori r24,lo8(32)
	sts 201,r24
.LVL10:
	ret
	.cfi_endproc
.LFE7:
	.size	serial1MIDISend, .-serial1MIDISend
	.section	.text.serial1MIDIReadRx,"ax",@progbits
.global	serial1MIDIReadRx
	.type	serial1MIDIReadRx, @function
serial1MIDIReadRx:
.LFB8:
	.loc 1 83 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 85 0
	lds r25,midiRxInIndex
	lds r24,midiRxOutIndex
	cp r25,r24
	breq .L12
	.loc 1 88 0
	lds r30,midiRxOutIndex
	ldi r31,0
	subi r30,lo8(-(midiRxBuffer))
	sbci r31,hi8(-(midiRxBuffer))
	ld r24,Z
.LVL11:
	.loc 1 89 0
	lds r25,midiRxOutIndex
	subi r25,lo8(-(1))
	andi r25,lo8(31)
	sts midiRxOutIndex,r25
	ret
.LVL12:
.L12:
	.loc 1 86 0
	ldi r24,lo8(-3)
.LVL13:
	.loc 1 92 0
	ret
	.cfi_endproc
.LFE8:
	.size	serial1MIDIReadRx, .-serial1MIDIReadRx
	.section	.text.__vector_36,"ax",@progbits
.global	__vector_36
	.type	__vector_36, @function
__vector_36:
.LFB9:
	.loc 1 94 0
	.cfi_startproc
	push r1
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 1, -3
	push r0
.LCFI1:
	.cfi_def_cfa_offset 5
	.cfi_offset 0, -4
	in r0,__SREG__
	push r0
	clr __zero_reg__
	in r0,__RAMPZ__
	push r0
	push r24
.LCFI2:
	.cfi_def_cfa_offset 6
	.cfi_offset 24, -5
	push r25
.LCFI3:
	.cfi_def_cfa_offset 7
	.cfi_offset 25, -6
	push r30
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_offset 30, -7
	push r31
.LCFI5:
	.cfi_def_cfa_offset 9
	.cfi_offset 31, -8
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 1 96 0
	lds r24,206
.LVL14:
	.loc 1 98 0
	lds r30,midiRxInIndex
	ldi r31,0
	subi r30,lo8(-(midiRxBuffer))
	sbci r31,hi8(-(midiRxBuffer))
	st Z,r24
	.loc 1 99 0
	lds r24,midiRxInIndex
.LVL15:
	subi r24,lo8(-(1))
	andi r24,lo8(31)
	sts midiRxInIndex,r24
	.loc 1 100 0
	lds r25,midiRxInIndex
	lds r24,midiRxOutIndex
	cp r25,r24
	breq .L19
.L14:
	.loc 1 114 0
	lds r24,midiRxBytesCount
	lds r25,midiRxBytesCount+1
	adiw r24,1
	sts midiRxBytesCount+1,r25
	sts midiRxBytesCount,r24
/* epilogue start */
	.loc 1 115 0
	pop r31
	pop r30
.LVL16:
	pop r25
	pop r24
	pop r0
	out __RAMPZ__,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
.LVL17:
.L19:
.LBB8:
	.loc 1 102 0
	lds r24,midiRxOvflCount
.LVL18:
	.loc 1 103 0
	tst r24
	breq .L15
	.loc 1 105 0
	cpi r24,lo8(-1)
	breq .L14
	.loc 1 107 0
	subi r24,lo8(-(1))
.LVL19:
	sts midiRxOvflCount,r24
	rjmp .L14
.LVL20:
.L15:
	.loc 1 111 0
	ldi r24,lo8(1)
.LVL21:
	sts midiRxOvflCount,r24
	rjmp .L14
.LBE8:
	.cfi_endproc
.LFE9:
	.size	__vector_36, .-__vector_36
	.section	.text.__vector_37,"ax",@progbits
.global	__vector_37
	.type	__vector_37, @function
__vector_37:
.LFB10:
	.loc 1 117 0
	.cfi_startproc
	push r1
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 1, -3
	push r0
.LCFI7:
	.cfi_def_cfa_offset 5
	.cfi_offset 0, -4
	in r0,__SREG__
	push r0
	clr __zero_reg__
	in r0,__RAMPZ__
	push r0
	push r24
.LCFI8:
	.cfi_def_cfa_offset 6
	.cfi_offset 24, -5
	push r25
.LCFI9:
	.cfi_def_cfa_offset 7
	.cfi_offset 25, -6
	push r30
.LCFI10:
	.cfi_def_cfa_offset 8
	.cfi_offset 30, -7
	push r31
.LCFI11:
	.cfi_def_cfa_offset 9
	.cfi_offset 31, -8
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 1 118 0
	lds r25,midiTxOutIndex
	lds r24,midiTxInIndex
	cp r25,r24
	breq .L21
	.loc 1 120 0
	lds r30,midiTxOutIndex
	ldi r31,0
	subi r30,lo8(-(midiTxBuffer))
	sbci r31,hi8(-(midiTxBuffer))
	ld r24,Z
	sts 206,r24
	.loc 1 121 0
	lds r24,midiTxOutIndex
	subi r24,lo8(-(1))
	andi r24,lo8(31)
	sts midiTxOutIndex,r24
	.loc 1 122 0
	lds r24,midiTxBytesCount
	lds r25,midiTxBytesCount+1
	adiw r24,1
	sts midiTxBytesCount+1,r25
	sts midiTxBytesCount,r24
.L20:
/* epilogue start */
	.loc 1 128 0
	pop r31
	pop r30
	pop r25
	pop r24
	pop r0
	out __RAMPZ__,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
.L21:
	.loc 1 125 0
	lds r24,201
	andi r24,lo8(-33)
	sts 201,r24
	.loc 1 128 0
	rjmp .L20
	.cfi_endproc
.LFE10:
	.size	__vector_37, .-__vector_37
	.section	.text.init_Serial0SerUSB,"ax",@progbits
.global	init_Serial0SerUSB
	.type	init_Serial0SerUSB, @function
init_Serial0SerUSB:
.LFB11:
	.loc 1 131 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 133 0
	sts 197,__zero_reg__
	.loc 1 134 0
	ldi r24,lo8(51)
	sts 196,r24
	.loc 1 135 0
	lds r24,193
	ori r24,lo8(-104)
	sts 193,r24
	.loc 1 136 0
	lds r24,194
	ori r24,lo8(6)
	sts 194,r24
	.loc 1 137 0
	sts midiRxInIndex,__zero_reg__
	.loc 1 138 0
	sts midiRxOutIndex,__zero_reg__
	.loc 1 139 0
	sts midiTxInIndex,__zero_reg__
	.loc 1 140 0
	sts midiTxOutIndex,__zero_reg__
	.loc 1 141 0
	sts serusbOvflFlag,__zero_reg__
	.loc 1 142 0
	call eeprom_ReadUSB
.LVL22:
	cpi r24,lo8(-1)
	brne .+2
	rjmp .L63
.L24:
	.loc 1 146 0
	lds r24,serusb_Active
	cpi r24,lo8(-1)
	breq .L64
.L23:
	ret
.L64:
	ldi r30,lo8(HelloMsg)
	ldi r31,hi8(HelloMsg)
.LVL23:
.LBB33:
.LBB34:
.LBB35:
	.loc 1 157 0
/* #APP */
 ;  157 ".././serial.c" 1
	lpm r18, Z
	
 ;  0 "" 2
.LVL24:
/* #NOAPP */
.LBE35:
	.loc 1 157 0
	tst r18
	breq .L30
.LVL25:
.L66:
	.loc 1 157 0
	lds r24,serusbOvflFlag
	cpi r24,lo8(-1)
	breq .L30
.LVL26:
.LBB36:
.LBB37:
	.loc 1 176 0
	lds r24,serusbTxInIndex
.LVL27:
	.loc 1 177 0
	lds r25,193
	andi r25,lo8(-33)
	sts 193,r25
	.loc 1 178 0
	mov r26,r24
	ldi r27,0
	subi r26,lo8(-(serUsbTxBuffer))
	sbci r27,hi8(-(serUsbTxBuffer))
	st X,r18
	.loc 1 179 0
	subi r24,lo8(-(1))
.LVL28:
	.loc 1 180 0
	lds r25,serusbTxOutIndex
	cp r24,r25
	brne .+2
	rjmp .L65
	.loc 1 190 0
	sts serusbTxInIndex,r24
	.loc 1 191 0
	lds r24,193
.LVL29:
	ori r24,lo8(32)
	sts 193,r24
.LVL30:
	adiw r30,1
.LVL31:
.L72:
.LBE37:
.LBE36:
.LBB39:
	.loc 1 157 0
/* #APP */
 ;  157 ".././serial.c" 1
	lpm r18, Z
	
 ;  0 "" 2
.LVL32:
/* #NOAPP */
.LBE39:
	.loc 1 157 0
	cpse r18,__zero_reg__
	rjmp .L66
.LVL33:
.L30:
.LBE34:
.LBE33:
	.loc 1 146 0
	ldi r30,lo8(sw_version)
	ldi r31,hi8(sw_version)
.LVL34:
.LBB42:
.LBB43:
.LBB44:
	.loc 1 157 0
/* #APP */
 ;  157 ".././serial.c" 1
	lpm r18, Z
	
 ;  0 "" 2
.LVL35:
/* #NOAPP */
.LBE44:
	.loc 1 157 0
	tst r18
	breq .L36
.LVL36:
.L68:
	.loc 1 157 0
	lds r24,serusbOvflFlag
	cpi r24,lo8(-1)
	breq .L36
.LVL37:
.LBB45:
.LBB46:
	.loc 1 176 0
	lds r24,serusbTxInIndex
.LVL38:
	.loc 1 177 0
	lds r25,193
	andi r25,lo8(-33)
	sts 193,r25
	.loc 1 178 0
	mov r26,r24
	ldi r27,0
	subi r26,lo8(-(serUsbTxBuffer))
	sbci r27,hi8(-(serUsbTxBuffer))
	st X,r18
	.loc 1 179 0
	subi r24,lo8(-(1))
.LVL39:
	.loc 1 180 0
	lds r25,serusbTxOutIndex
	cp r24,r25
	brne .+2
	rjmp .L67
	.loc 1 190 0
	sts serusbTxInIndex,r24
	.loc 1 191 0
	lds r24,193
.LVL40:
	ori r24,lo8(32)
	sts 193,r24
.LVL41:
	adiw r30,1
.LVL42:
.L73:
.LBE46:
.LBE45:
.LBB48:
	.loc 1 157 0
/* #APP */
 ;  157 ".././serial.c" 1
	lpm r18, Z
	
 ;  0 "" 2
.LVL43:
/* #NOAPP */
.LBE48:
	.loc 1 157 0
	cpse r18,__zero_reg__
	rjmp .L68
.LVL44:
.L36:
.LBE43:
.LBE42:
	.loc 1 146 0
	ldi r30,lo8(cr_lf)
	ldi r31,hi8(cr_lf)
.LVL45:
.LBB51:
.LBB52:
.LBB53:
.LBB54:
.LBB55:
	.loc 1 157 0
/* #APP */
 ;  157 ".././serial.c" 1
	lpm r18, Z
	
 ;  0 "" 2
.LVL46:
/* #NOAPP */
.LBE55:
	.loc 1 157 0
	tst r18
	breq .L48
.LVL47:
.L70:
	.loc 1 157 0
	lds r24,serusbOvflFlag
	cpi r24,lo8(-1)
	breq .L48
.LVL48:
.LBB56:
.LBB57:
	.loc 1 176 0
	lds r24,serusbTxInIndex
.LVL49:
	.loc 1 177 0
	lds r25,193
	andi r25,lo8(-33)
	sts 193,r25
	.loc 1 178 0
	mov r26,r24
	ldi r27,0
	subi r26,lo8(-(serUsbTxBuffer))
	sbci r27,hi8(-(serUsbTxBuffer))
	st X,r18
	.loc 1 179 0
	subi r24,lo8(-(1))
.LVL50:
	.loc 1 180 0
	lds r25,serusbTxOutIndex
	cp r24,r25
	brne .+2
	rjmp .L69
	.loc 1 190 0
	sts serusbTxInIndex,r24
	.loc 1 191 0
	lds r24,193
.LVL51:
	ori r24,lo8(32)
	sts 193,r24
.LVL52:
	adiw r30,1
.LVL53:
.L74:
.LBE57:
.LBE56:
.LBB59:
	.loc 1 157 0
/* #APP */
 ;  157 ".././serial.c" 1
	lpm r18, Z
	
 ;  0 "" 2
.LVL54:
/* #NOAPP */
.LBE59:
	.loc 1 157 0
	cpse r18,__zero_reg__
	rjmp .L70
.LVL55:
.L48:
	ldi r30,lo8(cr_lf)
	ldi r31,hi8(cr_lf)
.LVL56:
.L62:
.LBE54:
.LBE53:
.LBE52:
.LBE51:
.LBB64:
.LBB65:
.LBB66:
.LBB67:
	.loc 1 157 0
/* #APP */
 ;  157 ".././serial.c" 1
	lpm r18, Z
	
 ;  0 "" 2
.LVL57:
/* #NOAPP */
.LBE67:
	.loc 1 157 0
	tst r18
	brne .+2
	rjmp .L23
	.loc 1 157 0
	lds r24,serusbOvflFlag
	cpi r24,lo8(-1)
	brne .+2
	rjmp .L23
.LVL58:
.LBB68:
.LBB69:
	.loc 1 176 0
	lds r24,serusbTxInIndex
.LVL59:
	.loc 1 177 0
	lds r25,193
	andi r25,lo8(-33)
	sts 193,r25
	.loc 1 178 0
	mov r26,r24
	ldi r27,0
	subi r26,lo8(-(serUsbTxBuffer))
	sbci r27,hi8(-(serUsbTxBuffer))
	st X,r18
	.loc 1 179 0
	subi r24,lo8(-(1))
.LVL60:
	.loc 1 180 0
	lds r25,serusbTxOutIndex
	cp r24,r25
	breq .L71
	.loc 1 190 0
	sts serusbTxInIndex,r24
	.loc 1 191 0
	lds r24,193
.LVL61:
	ori r24,lo8(32)
	sts 193,r24
.LVL62:
	adiw r30,1
.LVL63:
	rjmp .L62
.LVL64:
.L65:
.LBE69:
.LBE68:
.LBE66:
.LBE65:
.LBE64:
.LBB74:
.LBB41:
.LBB40:
.LBB38:
	.loc 1 185 0
	lds r25,193
	ori r25,lo8(32)
	sts 193,r25
.L28:
	.loc 1 186 0
	lds r25,serusbTxOutIndex
	cp r24,r25
	breq .L28
	.loc 1 187 0
	sts serusbTxInIndex,r24
	adiw r30,1
.LVL65:
	rjmp .L72
.LVL66:
.L67:
.LBE38:
.LBE40:
.LBE41:
.LBE74:
.LBB75:
.LBB50:
.LBB49:
.LBB47:
	.loc 1 185 0
	lds r25,193
	ori r25,lo8(32)
	sts 193,r25
.L34:
	.loc 1 186 0
	lds r25,serusbTxOutIndex
	cp r24,r25
	breq .L34
	.loc 1 187 0
	sts serusbTxInIndex,r24
	adiw r30,1
.LVL67:
	rjmp .L73
.LVL68:
.L69:
.LBE47:
.LBE49:
.LBE50:
.LBE75:
.LBB76:
.LBB63:
.LBB62:
.LBB61:
.LBB60:
.LBB58:
	.loc 1 185 0
	lds r25,193
	ori r25,lo8(32)
	sts 193,r25
.L40:
	.loc 1 186 0
	lds r25,serusbTxOutIndex
	cp r24,r25
	breq .L40
	.loc 1 187 0
	sts serusbTxInIndex,r24
	adiw r30,1
.LVL69:
	rjmp .L74
.LVL70:
.L71:
.LBE58:
.LBE60:
.LBE61:
.LBE62:
.LBE63:
.LBE76:
.LBB77:
.LBB73:
.LBB72:
.LBB71:
.LBB70:
	.loc 1 185 0
	lds r25,193
	ori r25,lo8(32)
	sts 193,r25
.L45:
	.loc 1 186 0
	lds r25,serusbTxOutIndex
	cp r24,r25
	breq .L45
	.loc 1 187 0
	sts serusbTxInIndex,r24
	adiw r30,1
.LVL71:
	rjmp .L62
.LVL72:
.L63:
.LBE70:
.LBE71:
.LBE72:
.LBE73:
.LBE77:
	.loc 1 143 0
	sts serusb_Active,__zero_reg__
	.loc 1 144 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(4)
	ldi r24,lo8(1)
	call log_putError
.LVL73:
	rjmp .L24
	.cfi_endproc
.LFE11:
	.size	init_Serial0SerUSB, .-init_Serial0SerUSB
	.section	.text.serial0SER_USB_sendStringP,"ax",@progbits
.global	serial0SER_USB_sendStringP
	.type	serial0SER_USB_sendStringP, @function
serial0SER_USB_sendStringP:
.LFB12:
	.loc 1 155 0
	.cfi_startproc
.LVL74:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
.LVL75:
.LBB82:
	.loc 1 157 0
/* #APP */
 ;  157 ".././serial.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL76:
/* #NOAPP */
.LBE82:
	.loc 1 157 0
	tst r24
	breq .L75
.LVL77:
.L87:
	.loc 1 157 0 discriminator 1
	lds r25,serusbOvflFlag
	cpi r25,lo8(-1)
	breq .L75
.LVL78:
.LBB83:
.LBB84:
	.loc 1 176 0
	lds r25,serusbTxInIndex
.LVL79:
	.loc 1 177 0
	lds r18,193
	andi r18,lo8(-33)
	sts 193,r18
	.loc 1 178 0
	mov r26,r25
	ldi r27,0
	subi r26,lo8(-(serUsbTxBuffer))
	sbci r27,hi8(-(serUsbTxBuffer))
	st X,r24
	.loc 1 179 0
	subi r25,lo8(-(1))
.LVL80:
	.loc 1 180 0
	lds r24,serusbTxOutIndex
.LVL81:
	cp r25,r24
	breq .L86
	.loc 1 190 0
	sts serusbTxInIndex,r25
	.loc 1 191 0
	lds r24,193
	ori r24,lo8(32)
	sts 193,r24
.LVL82:
	adiw r30,1
.LVL83:
.L88:
.LBE84:
.LBE83:
.LBB86:
	.loc 1 157 0
/* #APP */
 ;  157 ".././serial.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL84:
/* #NOAPP */
.LBE86:
	.loc 1 157 0
	cpse r24,__zero_reg__
	rjmp .L87
.LVL85:
.L75:
	ret
.LVL86:
.L86:
.LBB87:
.LBB85:
	.loc 1 185 0
	lds r24,193
	ori r24,lo8(32)
	sts 193,r24
.LVL87:
.L78:
	.loc 1 186 0
	lds r18,serusbTxOutIndex
	cp r25,r18
	breq .L78
	.loc 1 187 0
	sts serusbTxInIndex,r25
	adiw r30,1
.LVL88:
	rjmp .L88
.LBE85:
.LBE87:
	.cfi_endproc
.LFE12:
	.size	serial0SER_USB_sendStringP, .-serial0SER_USB_sendStringP
	.section	.text.serial0SER_USB_sendString,"ax",@progbits
.global	serial0SER_USB_sendString
	.type	serial0SER_USB_sendString, @function
serial0SER_USB_sendString:
.LFB13:
	.loc 1 163 0
	.cfi_startproc
.LVL89:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 165 0
	movw r30,r24
	ld r19,Z
	tst r19
	breq .L89
	lds r18,serusbOvflFlag
	cpi r18,lo8(-1)
	breq .L89
	movw r26,r24
	adiw r26,1
	movw r20,r24
	subi r20,-81
	sbci r21,-1
	rjmp .L95
.LVL90:
.L92:
.LBB90:
.LBB91:
	.loc 1 190 0
	sts serusbTxInIndex,r25
	.loc 1 191 0
	lds r25,193
.LVL91:
	ori r25,lo8(32)
	sts 193,r25
.LVL92:
.LBE91:
.LBE90:
	.loc 1 165 0
	ld r19,X+
.LVL93:
	tst r19
	breq .L89
.LVL94:
.L107:
	.loc 1 165 0 is_stmt 0 discriminator 1
	lds r24,serusbOvflFlag
	cpi r24,lo8(-1)
	breq .L89
	.loc 1 165 0 discriminator 2
	cp r26,r20
	cpc r27,r21
	breq .L89
.L95:
.LVL95:
.LBB93:
.LBB92:
	.loc 1 176 0 is_stmt 1
	lds r25,serusbTxInIndex
.LVL96:
	.loc 1 177 0
	lds r18,193
	andi r18,lo8(-33)
	sts 193,r18
	.loc 1 178 0
	mov r30,r25
	ldi r31,0
	subi r30,lo8(-(serUsbTxBuffer))
	sbci r31,hi8(-(serUsbTxBuffer))
	st Z,r19
	.loc 1 179 0
	subi r25,lo8(-(1))
.LVL97:
	.loc 1 180 0
	lds r18,serusbTxOutIndex
	cpse r25,r18
	rjmp .L92
	.loc 1 185 0
	lds r24,193
	ori r24,lo8(32)
	sts 193,r24
.L93:
	.loc 1 186 0
	lds r18,serusbTxOutIndex
	cp r25,r18
	breq .L93
	.loc 1 187 0
	sts serusbTxInIndex,r25
.LVL98:
.LBE92:
.LBE93:
	.loc 1 165 0
	ld r19,X+
.LVL99:
	cpse r19,__zero_reg__
	rjmp .L107
.LVL100:
.L89:
	ret
	.cfi_endproc
.LFE13:
	.size	serial0SER_USB_sendString, .-serial0SER_USB_sendString
	.section	.text.serial0SER_USB_sendCRLF,"ax",@progbits
.global	serial0SER_USB_sendCRLF
	.type	serial0SER_USB_sendCRLF, @function
serial0SER_USB_sendCRLF:
.LFB14:
	.loc 1 171 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL101:
	.loc 1 171 0
	ldi r30,lo8(cr_lf)
	ldi r31,hi8(cr_lf)
.LVL102:
.LBB99:
.LBB100:
.LBB101:
	.loc 1 157 0
/* #APP */
 ;  157 ".././serial.c" 1
	lpm r18, Z
	
 ;  0 "" 2
.LVL103:
/* #NOAPP */
.LBE101:
	.loc 1 157 0
	tst r18
	breq .L108
.LVL104:
.L120:
	.loc 1 157 0
	lds r24,serusbOvflFlag
	cpi r24,lo8(-1)
	breq .L108
.LVL105:
.LBB102:
.LBB103:
	.loc 1 176 0
	lds r24,serusbTxInIndex
.LVL106:
	.loc 1 177 0
	lds r25,193
	andi r25,lo8(-33)
	sts 193,r25
	.loc 1 178 0
	mov r26,r24
	ldi r27,0
	subi r26,lo8(-(serUsbTxBuffer))
	sbci r27,hi8(-(serUsbTxBuffer))
	st X,r18
	.loc 1 179 0
	subi r24,lo8(-(1))
.LVL107:
	.loc 1 180 0
	lds r25,serusbTxOutIndex
	cp r24,r25
	breq .L119
	.loc 1 190 0
	sts serusbTxInIndex,r24
	.loc 1 191 0
	lds r24,193
.LVL108:
	ori r24,lo8(32)
	sts 193,r24
.LVL109:
	adiw r30,1
.LVL110:
.L121:
.LBE103:
.LBE102:
.LBB105:
	.loc 1 157 0
/* #APP */
 ;  157 ".././serial.c" 1
	lpm r18, Z
	
 ;  0 "" 2
.LVL111:
/* #NOAPP */
.LBE105:
	.loc 1 157 0
	cpse r18,__zero_reg__
	rjmp .L120
.LVL112:
.L108:
	ret
.LVL113:
.L119:
.LBB106:
.LBB104:
	.loc 1 185 0
	lds r25,193
	ori r25,lo8(32)
	sts 193,r25
.L111:
	.loc 1 186 0
	lds r25,serusbTxOutIndex
	cp r24,r25
	breq .L111
	.loc 1 187 0
	sts serusbTxInIndex,r24
	adiw r30,1
.LVL114:
	rjmp .L121
.LBE104:
.LBE106:
.LBE100:
.LBE99:
	.cfi_endproc
.LFE14:
	.size	serial0SER_USB_sendCRLF, .-serial0SER_USB_sendCRLF
	.section	.text.serial0SER_USBSend,"ax",@progbits
.global	serial0SER_USBSend
	.type	serial0SER_USBSend, @function
serial0SER_USBSend:
.LFB15:
	.loc 1 175 0
	.cfi_startproc
.LVL115:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 176 0
	lds r25,serusbTxInIndex
.LVL116:
	.loc 1 177 0
	lds r18,193
	andi r18,lo8(-33)
	sts 193,r18
	.loc 1 178 0
	mov r30,r25
	ldi r31,0
	subi r30,lo8(-(serUsbTxBuffer))
	sbci r31,hi8(-(serUsbTxBuffer))
	st Z,r24
	.loc 1 179 0
	ldi r24,lo8(1)
.LVL117:
	add r24,r25
.LVL118:
	.loc 1 180 0
	lds r25,serusbTxOutIndex
	cp r24,r25
	breq .L127
	.loc 1 190 0
	sts serusbTxInIndex,r24
	.loc 1 191 0
	lds r24,193
.LVL119:
	ori r24,lo8(32)
	sts 193,r24
.LVL120:
	ret
.LVL121:
.L127:
	.loc 1 185 0
	lds r25,193
	ori r25,lo8(32)
	sts 193,r25
.LVL122:
.L124:
	.loc 1 186 0 discriminator 1
	lds r25,serusbTxOutIndex
	cp r24,r25
	breq .L124
	.loc 1 187 0
	sts serusbTxInIndex,r24
	ret
	.cfi_endproc
.LFE15:
	.size	serial0SER_USBSend, .-serial0SER_USBSend
	.section	.text.serial0SER_USBReadRx,"ax",@progbits
.global	serial0SER_USBReadRx
	.type	serial0SER_USBReadRx, @function
serial0SER_USBReadRx:
.LFB16:
	.loc 1 195 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 197 0
	lds r25,serusbRxOutIndex
.LVL123:
	.loc 1 198 0
	lds r18,serusbRxInIndex
	lds r24,serusbRxOutIndex
	cp r18,r24
	breq .L130
.LVL124:
	.loc 1 201 0
	mov r30,r25
	ldi r31,0
	subi r30,lo8(-(serUsbRxBuffer))
	sbci r31,hi8(-(serUsbRxBuffer))
	ld r24,Z
.LVL125:
	.loc 1 202 0
	subi r25,lo8(-(1))
.LVL126:
	andi r25,lo8(63)
.LVL127:
	sts serusbRxOutIndex,r25
	ret
.LVL128:
.L130:
	.loc 1 199 0
	ldi r24,0
.LVL129:
	.loc 1 205 0
	ret
	.cfi_endproc
.LFE16:
	.size	serial0SER_USBReadRx, .-serial0SER_USBReadRx
	.section	.text.__vector_25,"ax",@progbits
.global	__vector_25
	.type	__vector_25, @function
__vector_25:
.LFB17:
	.loc 1 207 0
	.cfi_startproc
	push r1
.LCFI12:
	.cfi_def_cfa_offset 4
	.cfi_offset 1, -3
	push r0
.LCFI13:
	.cfi_def_cfa_offset 5
	.cfi_offset 0, -4
	in r0,__SREG__
	push r0
	clr __zero_reg__
	in r0,__RAMPZ__
	push r0
	push r24
.LCFI14:
	.cfi_def_cfa_offset 6
	.cfi_offset 24, -5
	push r25
.LCFI15:
	.cfi_def_cfa_offset 7
	.cfi_offset 25, -6
	push r30
.LCFI16:
	.cfi_def_cfa_offset 8
	.cfi_offset 30, -7
	push r31
.LCFI17:
	.cfi_def_cfa_offset 9
	.cfi_offset 31, -8
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 1 209 0
	lds r30,serusbRxInIndex
.LVL130:
	.loc 1 210 0
	lds r25,198
.LVL131:
	.loc 1 211 0
	ldi r24,lo8(1)
	add r24,r30
.LVL132:
	ldi r31,0
	subi r30,lo8(-(serUsbRxBuffer))
	sbci r31,hi8(-(serUsbRxBuffer))
	st Z,r25
	.loc 1 212 0
	andi r24,lo8(63)
.LVL133:
	.loc 1 213 0
	lds r25,serusbRxOutIndex
.LVL134:
	cp r24,r25
	breq .L134
	.loc 1 217 0
	sts serusbRxInIndex,r24
.LVL135:
.L131:
/* epilogue start */
	.loc 1 219 0
	pop r31
	pop r30
.LVL136:
	pop r25
	pop r24
	pop r0
	out __RAMPZ__,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
.LVL137:
.L134:
	.loc 1 215 0
	ldi r24,lo8(-1)
.LVL138:
	sts serusbOvflFlag,r24
	rjmp .L131
	.cfi_endproc
.LFE17:
	.size	__vector_25, .-__vector_25
	.section	.text.__vector_26,"ax",@progbits
.global	__vector_26
	.type	__vector_26, @function
__vector_26:
.LFB18:
	.loc 1 221 0
	.cfi_startproc
	push r1
.LCFI18:
	.cfi_def_cfa_offset 4
	.cfi_offset 1, -3
	push r0
.LCFI19:
	.cfi_def_cfa_offset 5
	.cfi_offset 0, -4
	in r0,__SREG__
	push r0
	clr __zero_reg__
	in r0,__RAMPZ__
	push r0
	push r18
.LCFI20:
	.cfi_def_cfa_offset 6
	.cfi_offset 18, -5
	push r24
.LCFI21:
	.cfi_def_cfa_offset 7
	.cfi_offset 24, -6
	push r25
.LCFI22:
	.cfi_def_cfa_offset 8
	.cfi_offset 25, -7
	push r30
.LCFI23:
	.cfi_def_cfa_offset 9
	.cfi_offset 30, -8
	push r31
.LCFI24:
	.cfi_def_cfa_offset 10
	.cfi_offset 31, -9
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	.loc 1 222 0
	lds r24,serusbTxOutIndex
.LVL139:
	.loc 1 223 0
	lds r18,serusbTxInIndex
	lds r25,serusbTxOutIndex
	cp r18,r25
	breq .L136
	.loc 1 225 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(serUsbTxBuffer))
	sbci r31,hi8(-(serUsbTxBuffer))
	ld r25,Z
	sts 198,r25
	.loc 1 226 0
	subi r24,lo8(-(1))
.LVL140:
	sts serusbTxOutIndex,r24
.LVL141:
.L135:
/* epilogue start */
	.loc 1 232 0
	pop r31
	pop r30
	pop r25
	pop r24
	pop r18
	pop r0
	out __RAMPZ__,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
.LVL142:
.L136:
	.loc 1 229 0
	lds r24,193
.LVL143:
	andi r24,lo8(-33)
	sts 193,r24
	.loc 1 232 0
	rjmp .L135
	.cfi_endproc
.LFE18:
	.size	__vector_26, .-__vector_26
	.comm	midiTxOvflCount,1,1
	.comm	midiRxOvflCount,1,1
	.comm	midiTxOvfl,1,1
	.comm	midiRxOvfl,1,1
	.comm	midiRxBytesCount,2,1
	.comm	midiTxBytesCount,2,1
	.comm	serusbOvflFlag,1,1
	.comm	serusbTxInIndex,1,1
	.comm	serusbTxOutIndex,1,1
	.comm	serusbRxOutIndex,1,1
	.comm	serusbRxInIndex,1,1
	.comm	serUsbTxBuffer,256,1
	.comm	serUsbRxBuffer,64,1
	.comm	serusb_Active,1,1
	.comm	midiTxOutIndex,1,1
	.comm	midiTxInIndex,1,1
	.comm	midiRxOutIndex,1,1
	.comm	midiRxInIndex,1,1
	.comm	midiTxBuffer,32,1
	.comm	midiRxBuffer,32,1
	.comm	lcdData,10,1
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 ".././utils.h"
	.file 4 ".././menu.h"
	.file 5 ".././ee_prom.h"
	.file 6 ".././log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x831
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF55
	.byte	0xc
	.long	.LASF56
	.long	.LASF57
	.long	.Ldebug_ranges0+0x1c8
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
	.byte	0x7e
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x80
	.long	0x54
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF10
	.uleb128 0x5
	.long	0x7e
	.uleb128 0x6
	.long	0x30
	.long	0x9a
	.uleb128 0x7
	.long	0x77
	.byte	0x3f
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.byte	0x2f
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.long	.LASF11
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xf7
	.uleb128 0xb
	.long	.LASF22
	.byte	0x1
	.byte	0x3f
	.long	0x30
	.long	.LLST0
	.uleb128 0xc
	.long	.Ldebug_ranges0+0
	.uleb128 0xd
	.long	.LASF13
	.byte	0x1
	.byte	0x44
	.long	0x30
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF12
	.byte	0x1
	.byte	0x53
	.long	0x30
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x124
	.uleb128 0xd
	.long	.LASF14
	.byte	0x1
	.byte	0x54
	.long	0x30
	.long	.LLST2
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.long	.LLST3
	.byte	0x1
	.long	0x167
	.uleb128 0xd
	.long	.LASF16
	.byte	0x1
	.byte	0x5f
	.long	0x30
	.long	.LLST4
	.uleb128 0x10
	.long	.LBB8
	.long	.LBE8
	.uleb128 0xd
	.long	.LASF13
	.byte	0x1
	.byte	0x66
	.long	0x30
	.long	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST6
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.byte	0x1
	.long	0x1b8
	.uleb128 0x13
	.long	.LASF21
	.byte	0x1
	.byte	0x9a
	.long	0x1b8
	.uleb128 0x14
	.string	"c"
	.byte	0x1
	.byte	0x9c
	.long	0x7e
	.uleb128 0x15
	.uleb128 0x16
	.long	.LASF17
	.byte	0x1
	.byte	0x9d
	.long	0x49
	.uleb128 0x16
	.long	.LASF18
	.byte	0x1
	.byte	0x9d
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x2
	.long	0x85
	.uleb128 0x12
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.byte	0x1
	.long	0x1e3
	.uleb128 0x13
	.long	.LASF22
	.byte	0x1
	.byte	0xaf
	.long	0x30
	.uleb128 0x16
	.long	.LASF23
	.byte	0x1
	.byte	0xb0
	.long	0x30
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF61
	.byte	0x1
	.byte	0x83
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x408
	.uleb128 0x19
	.long	0x17d
	.long	.LBB33
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x93
	.long	0x26c
	.uleb128 0x1a
	.long	0x18b
	.long	.LLST7
	.uleb128 0xc
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x1b
	.long	0x196
	.long	.LLST8
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x30
	.long	0x242
	.uleb128 0x1b
	.long	0x1a0
	.long	.LLST9
	.uleb128 0x1b
	.long	0x1ab
	.long	.LLST8
	.byte	0
	.uleb128 0x1d
	.long	0x1be
	.long	.LBB36
	.long	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x9e
	.uleb128 0x1a
	.long	0x1cc
	.long	.LLST11
	.uleb128 0xc
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x1b
	.long	0x1d7
	.long	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0x17d
	.long	.LBB42
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x94
	.long	0x2dc
	.uleb128 0x1a
	.long	0x18b
	.long	.LLST13
	.uleb128 0xc
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x1b
	.long	0x196
	.long	.LLST14
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x78
	.long	0x2b2
	.uleb128 0x1b
	.long	0x1a0
	.long	.LLST15
	.uleb128 0x1b
	.long	0x1ab
	.long	.LLST14
	.byte	0
	.uleb128 0x1d
	.long	0x1be
	.long	.LBB45
	.long	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x9e
	.uleb128 0x1a
	.long	0x1cc
	.long	.LLST17
	.uleb128 0xc
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x1b
	.long	0x1d7
	.long	.LLST18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0x9a
	.long	.LBB51
	.long	.Ldebug_ranges0+0xa8
	.byte	0x1
	.byte	0x95
	.long	0x35c
	.uleb128 0x1d
	.long	0x17d
	.long	.LBB53
	.long	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0xac
	.uleb128 0x1a
	.long	0x18b
	.long	.LLST19
	.uleb128 0xc
	.long	.Ldebug_ranges0+0xd8
	.uleb128 0x1b
	.long	0x196
	.long	.LLST20
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0xf0
	.long	0x331
	.uleb128 0x1b
	.long	0x1a0
	.long	.LLST21
	.uleb128 0x1b
	.long	0x1ab
	.long	.LLST20
	.byte	0
	.uleb128 0x1d
	.long	0x1be
	.long	.LBB56
	.long	.Ldebug_ranges0+0x108
	.byte	0x1
	.byte	0x9e
	.uleb128 0x1a
	.long	0x1cc
	.long	.LLST23
	.uleb128 0xc
	.long	.Ldebug_ranges0+0x108
	.uleb128 0x1b
	.long	0x1d7
	.long	.LLST24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0x9a
	.long	.LBB64
	.long	.Ldebug_ranges0+0x120
	.byte	0x1
	.byte	0x96
	.long	0x3e0
	.uleb128 0x1d
	.long	0x17d
	.long	.LBB65
	.long	.Ldebug_ranges0+0x120
	.byte	0x1
	.byte	0xac
	.uleb128 0x1a
	.long	0x18b
	.long	.LLST25
	.uleb128 0xc
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x1b
	.long	0x196
	.long	.LLST26
	.uleb128 0x1e
	.long	.LBB67
	.long	.LBE67
	.long	0x3b5
	.uleb128 0x1b
	.long	0x1a0
	.long	.LLST27
	.uleb128 0x1b
	.long	0x1ab
	.long	.LLST26
	.byte	0
	.uleb128 0x1d
	.long	0x1be
	.long	.LBB68
	.long	.Ldebug_ranges0+0x138
	.byte	0x1
	.byte	0x9e
	.uleb128 0x1a
	.long	0x1cc
	.long	.LLST29
	.uleb128 0xc
	.long	.Ldebug_ranges0+0x138
	.uleb128 0x1b
	.long	0x1d7
	.long	.LLST30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LVL22
	.long	0x81a
	.uleb128 0x20
	.long	.LVL73
	.long	0x827
	.uleb128 0x21
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x21
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x34
	.uleb128 0x21
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
	.uleb128 0x22
	.long	0x17d
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x475
	.uleb128 0x1a
	.long	0x18b
	.long	.LLST31
	.uleb128 0x1b
	.long	0x196
	.long	.LLST32
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x150
	.long	0x44c
	.uleb128 0x1b
	.long	0x1a0
	.long	.LLST33
	.uleb128 0x1b
	.long	0x1ab
	.long	.LLST32
	.byte	0
	.uleb128 0x1d
	.long	0x1be
	.long	.LBB83
	.long	.Ldebug_ranges0+0x168
	.byte	0x1
	.byte	0x9e
	.uleb128 0x1a
	.long	0x1cc
	.long	.LLST35
	.uleb128 0xc
	.long	.Ldebug_ranges0+0x168
	.uleb128 0x1b
	.long	0x1d7
	.long	.LLST36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x4d4
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.byte	0xa2
	.long	0x4d4
	.long	.LLST37
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0xa4
	.long	0x30
	.long	.LLST38
	.uleb128 0x1d
	.long	0x1be
	.long	.LBB90
	.long	.Ldebug_ranges0+0x180
	.byte	0x1
	.byte	0xa6
	.uleb128 0x1a
	.long	0x1cc
	.long	.LLST39
	.uleb128 0xc
	.long	.Ldebug_ranges0+0x180
	.uleb128 0x1b
	.long	0x1d7
	.long	.LLST40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x2
	.long	0x7e
	.uleb128 0x22
	.long	0x9a
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x55d
	.uleb128 0x24
	.long	0x17d
	.long	.LBB99
	.long	.LBE99
	.byte	0x1
	.byte	0xac
	.uleb128 0x1a
	.long	0x18b
	.long	.LLST41
	.uleb128 0x10
	.long	.LBB100
	.long	.LBE100
	.uleb128 0x25
	.long	0x196
	.byte	0x1
	.byte	0x62
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x198
	.long	0x532
	.uleb128 0x1b
	.long	0x1a0
	.long	.LLST42
	.uleb128 0x25
	.long	0x1ab
	.byte	0x1
	.byte	0x62
	.byte	0
	.uleb128 0x1d
	.long	0x1be
	.long	.LBB102
	.long	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.byte	0x9e
	.uleb128 0x1a
	.long	0x1cc
	.long	.LLST43
	.uleb128 0xc
	.long	.Ldebug_ranges0+0x1b0
	.uleb128 0x1b
	.long	0x1d7
	.long	.LLST44
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0x1be
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x586
	.uleb128 0x1a
	.long	0x1cc
	.long	.LLST45
	.uleb128 0x1b
	.long	0x1d7
	.long	.LLST46
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.byte	0xc3
	.long	0x30
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x5c2
	.uleb128 0xd
	.long	.LASF14
	.byte	0x1
	.byte	0xc4
	.long	0x30
	.long	.LLST47
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.byte	0xc5
	.long	0x30
	.long	.LLST48
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.byte	0xcf
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST49
	.byte	0x1
	.long	0x5fb
	.uleb128 0xd
	.long	.LASF16
	.byte	0x1
	.byte	0xd0
	.long	0x30
	.long	.LLST50
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.byte	0xd1
	.long	0x30
	.long	.LLST51
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST52
	.byte	0x1
	.long	0x625
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.byte	0xde
	.long	0x30
	.long	.LLST53
	.byte	0
	.uleb128 0x26
	.long	.LASF29
	.byte	0x1
	.byte	0x1f
	.long	0x637
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serusbRxInIndex
	.uleb128 0x27
	.long	0x30
	.uleb128 0x26
	.long	.LASF30
	.byte	0x1
	.byte	0x20
	.long	0x637
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serusbRxOutIndex
	.uleb128 0x26
	.long	.LASF31
	.byte	0x1
	.byte	0x21
	.long	0x637
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serusbTxOutIndex
	.uleb128 0x26
	.long	.LASF32
	.byte	0x1
	.byte	0x22
	.long	0x637
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serusbTxInIndex
	.uleb128 0x26
	.long	.LASF33
	.byte	0x1
	.byte	0x23
	.long	0x637
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serusbOvflFlag
	.uleb128 0x26
	.long	.LASF34
	.byte	0x1
	.byte	0x1a
	.long	0x637
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serusb_Active
	.uleb128 0x26
	.long	.LASF35
	.byte	0x1
	.byte	0x1c
	.long	0x8a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUsbRxBuffer
	.uleb128 0x6
	.long	0x30
	.long	0x6b8
	.uleb128 0x7
	.long	0x77
	.byte	0xff
	.byte	0
	.uleb128 0x26
	.long	.LASF36
	.byte	0x1
	.byte	0x1d
	.long	0x6a8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUsbTxBuffer
	.uleb128 0x26
	.long	.LASF37
	.byte	0x1
	.byte	0x25
	.long	0x6dc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxBytesCount
	.uleb128 0x27
	.long	0x49
	.uleb128 0x26
	.long	.LASF38
	.byte	0x1
	.byte	0x26
	.long	0x6dc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxBytesCount
	.uleb128 0x26
	.long	.LASF39
	.byte	0x1
	.byte	0x15
	.long	0x637
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxInIndex
	.uleb128 0x26
	.long	.LASF40
	.byte	0x1
	.byte	0x16
	.long	0x637
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxOutIndex
	.uleb128 0x26
	.long	.LASF41
	.byte	0x1
	.byte	0x18
	.long	0x637
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxOutIndex
	.uleb128 0x26
	.long	.LASF42
	.byte	0x1
	.byte	0x17
	.long	0x637
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxInIndex
	.uleb128 0x6
	.long	0x30
	.long	0x74b
	.uleb128 0x7
	.long	0x77
	.byte	0x1f
	.byte	0
	.uleb128 0x26
	.long	.LASF43
	.byte	0x1
	.byte	0x12
	.long	0x73b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxBuffer
	.uleb128 0x26
	.long	.LASF44
	.byte	0x1
	.byte	0x13
	.long	0x73b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxBuffer
	.uleb128 0x26
	.long	.LASF45
	.byte	0x1
	.byte	0x2a
	.long	0x637
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxOvflCount
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.byte	0x2b
	.long	0x637
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxOvflCount
	.uleb128 0x6
	.long	0x85
	.long	0x79e
	.uleb128 0x28
	.byte	0
	.uleb128 0x29
	.long	.LASF47
	.byte	0x3
	.byte	0x62
	.long	0x7ab
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.long	0x793
	.uleb128 0x6
	.long	0x30
	.long	0x7c0
	.uleb128 0x7
	.long	0x77
	.byte	0x9
	.byte	0
	.uleb128 0x26
	.long	.LASF48
	.byte	0x4
	.byte	0x9c
	.long	0x7b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x29
	.long	.LASF49
	.byte	0x4
	.byte	0xf2
	.long	0x7df
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.long	0x793
	.uleb128 0x29
	.long	.LASF50
	.byte	0x4
	.byte	0xf3
	.long	0x7f1
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.long	0x793
	.uleb128 0x26
	.long	.LASF51
	.byte	0x1
	.byte	0x28
	.long	0x637
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxOvfl
	.uleb128 0x26
	.long	.LASF52
	.byte	0x1
	.byte	0x29
	.long	0x637
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxOvfl
	.uleb128 0x2a
	.byte	0x1
	.byte	0x1
	.long	.LASF53
	.long	.LASF53
	.byte	0x5
	.byte	0x1b
	.uleb128 0x2a
	.byte	0x1
	.byte	0x1
	.long	.LASF54
	.long	.LASF54
	.byte	0x6
	.byte	0x32
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
	.uleb128 0x3
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x23
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LVL2
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL2
	.long	.LVL3
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL3
	.long	.LVL7
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL7
	.long	.LVL8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL8
	.long	.LVL10
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL10
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	.LVL5
	.long	.LVL6
	.word	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7
	.word	0xa
	.byte	0x3
	.long	midiTxOvflCount
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST2:
	.long	.LVL11
	.long	.LVL12
	.word	0x1
	.byte	0x68
	.long	.LVL13
	.long	.LFE8
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST3:
	.long	.LFB9
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
	.long	.LFE9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST4:
	.long	.LVL14
	.long	.LVL15
	.word	0x1
	.byte	0x68
	.long	.LVL15
	.long	.LVL16
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL17
	.long	.LFE9
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST5:
	.long	.LVL18
	.long	.LVL19
	.word	0x1
	.byte	0x68
	.long	.LVL19
	.long	.LVL20
	.word	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST6:
	.long	.LFB10
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI11
	.long	.LFE10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST7:
	.long	.LVL23
	.long	.LVL25
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL31
	.long	.LVL33
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL24
	.long	.LVL35
	.word	0x1
	.byte	0x62
	.long	.LVL64
	.long	.LVL66
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST9:
	.long	.LVL23
	.long	.LVL34
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL64
	.long	.LVL65
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL65
	.long	.LVL66
	.word	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL26
	.long	.LVL32
	.word	0x1
	.byte	0x62
	.long	.LVL64
	.long	.LVL66
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST12:
	.long	.LVL27
	.long	.LVL29
	.word	0x1
	.byte	0x68
	.long	.LVL29
	.long	.LVL30
	.word	0x5
	.byte	0x3
	.long	serusbTxInIndex
	.long	.LVL64
	.long	.LVL66
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST13:
	.long	.LVL34
	.long	.LVL36
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL42
	.long	.LVL44
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL35
	.long	.LVL46
	.word	0x1
	.byte	0x62
	.long	.LVL66
	.long	.LVL68
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST15:
	.long	.LVL34
	.long	.LVL45
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL66
	.long	.LVL67
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL67
	.long	.LVL68
	.word	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL37
	.long	.LVL43
	.word	0x1
	.byte	0x62
	.long	.LVL66
	.long	.LVL68
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST18:
	.long	.LVL38
	.long	.LVL40
	.word	0x1
	.byte	0x68
	.long	.LVL40
	.long	.LVL41
	.word	0x5
	.byte	0x3
	.long	serusbTxInIndex
	.long	.LVL66
	.long	.LVL68
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST19:
	.long	.LVL45
	.long	.LVL47
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL53
	.long	.LVL55
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL46
	.long	.LVL56
	.word	0x1
	.byte	0x62
	.long	.LVL68
	.long	.LVL70
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST21:
	.long	.LVL45
	.long	.LVL56
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL68
	.long	.LVL69
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL69
	.long	.LVL70
	.word	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL48
	.long	.LVL54
	.word	0x1
	.byte	0x62
	.long	.LVL68
	.long	.LVL70
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST24:
	.long	.LVL49
	.long	.LVL51
	.word	0x1
	.byte	0x68
	.long	.LVL51
	.long	.LVL52
	.word	0x5
	.byte	0x3
	.long	serusbTxInIndex
	.long	.LVL68
	.long	.LVL70
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST25:
	.long	.LVL56
	.long	.LVL63
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL63
	.long	.LVL64
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL70
	.long	.LVL71
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL71
	.long	.LVL72
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST26:
	.long	.LVL57
	.long	.LVL64
	.word	0x1
	.byte	0x62
	.long	.LVL70
	.long	.LVL72
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST27:
	.long	.LVL56
	.long	.LVL63
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL63
	.long	.LVL64
	.word	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.long	.LVL70
	.long	.LVL71
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL71
	.long	.LVL72
	.word	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL58
	.long	.LVL64
	.word	0x1
	.byte	0x62
	.long	.LVL70
	.long	.LVL72
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST30:
	.long	.LVL59
	.long	.LVL61
	.word	0x1
	.byte	0x68
	.long	.LVL61
	.long	.LVL62
	.word	0x5
	.byte	0x3
	.long	serusbTxInIndex
	.long	.LVL70
	.long	.LVL72
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST31:
	.long	.LVL74
	.long	.LVL75
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL75
	.long	.LVL76
	.word	0x3
	.byte	0x88
	.sleb128 1
	.byte	0x9f
	.long	.LVL76
	.long	.LVL77
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL83
	.long	.LVL85
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL76
	.long	.LVL81
	.word	0x1
	.byte	0x68
	.long	.LVL81
	.long	.LVL82
	.word	0x2
	.byte	0x8a
	.sleb128 0
	.long	.LVL84
	.long	.LVL86
	.word	0x1
	.byte	0x68
	.long	.LVL86
	.long	.LVL87
	.word	0x2
	.byte	0x8a
	.sleb128 0
	.long	0
	.long	0
.LLST33:
	.long	.LVL75
	.long	.LVL76
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL76
	.long	.LVL88
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL88
	.long	.LFE12
	.word	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL78
	.long	.LVL81
	.word	0x1
	.byte	0x68
	.long	.LVL81
	.long	.LVL82
	.word	0x2
	.byte	0x8a
	.sleb128 0
	.long	.LVL86
	.long	.LVL87
	.word	0x2
	.byte	0x8a
	.sleb128 0
	.long	0
	.long	0
.LLST36:
	.long	.LVL79
	.long	.LVL85
	.word	0x1
	.byte	0x69
	.long	.LVL86
	.long	.LFE12
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST37:
	.long	.LVL89
	.long	.LVL90
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL90
	.long	.LVL93
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL93
	.long	.LVL94
	.word	0x3
	.byte	0x8a
	.sleb128 -1
	.byte	0x9f
	.long	.LVL95
	.long	.LVL99
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL99
	.long	.LVL100
	.word	0x3
	.byte	0x8a
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL89
	.long	.LVL90
	.word	0x3
	.byte	0x8
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL90
	.long	.LVL92
	.word	0x1
	.byte	0x63
	.long	.LVL95
	.long	.LVL98
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST40:
	.long	.LVL90
	.long	.LVL91
	.word	0x1
	.byte	0x69
	.long	.LVL91
	.long	.LVL92
	.word	0x5
	.byte	0x3
	.long	serusbTxInIndex
	.long	.LVL96
	.long	.LVL98
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST41:
	.long	.LVL102
	.long	.LVL104
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL110
	.long	.LVL112
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL102
	.long	.LVL114
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL114
	.long	.LFE14
	.word	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL105
	.long	.LVL111
	.word	0x1
	.byte	0x62
	.long	.LVL113
	.long	.LFE14
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST44:
	.long	.LVL106
	.long	.LVL108
	.word	0x1
	.byte	0x68
	.long	.LVL108
	.long	.LVL109
	.word	0x5
	.byte	0x3
	.long	serusbTxInIndex
	.long	.LVL113
	.long	.LFE14
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST45:
	.long	.LVL115
	.long	.LVL117
	.word	0x1
	.byte	0x68
	.long	.LVL117
	.long	.LVL120
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL120
	.long	.LVL121
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL121
	.long	.LVL122
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL122
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL116
	.long	.LVL118
	.word	0x1
	.byte	0x69
	.long	.LVL118
	.long	.LVL119
	.word	0x1
	.byte	0x68
	.long	.LVL119
	.long	.LVL120
	.word	0x5
	.byte	0x3
	.long	serusbTxInIndex
	.long	.LVL121
	.long	.LFE15
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST47:
	.long	.LVL125
	.long	.LVL128
	.word	0x1
	.byte	0x68
	.long	.LVL129
	.long	.LFE16
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST48:
	.long	.LVL123
	.long	.LVL124
	.word	0x1
	.byte	0x69
	.long	.LVL124
	.long	.LVL126
	.word	0x3
	.byte	0x89
	.sleb128 1
	.byte	0x9f
	.long	.LVL126
	.long	.LVL127
	.word	0x1
	.byte	0x69
	.long	.LVL128
	.long	.LFE16
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST49:
	.long	.LFB17
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI17
	.long	.LFE17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST50:
	.long	.LVL131
	.long	.LVL134
	.word	0x1
	.byte	0x69
	.long	.LVL134
	.long	.LVL136
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL137
	.long	.LFE17
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST51:
	.long	.LVL130
	.long	.LVL132
	.word	0x1
	.byte	0x6e
	.long	.LVL132
	.long	.LVL135
	.word	0x1
	.byte	0x68
	.long	.LVL137
	.long	.LVL138
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST52:
	.long	.LFB18
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
	.long	.LFE18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	0
	.long	0
.LLST53:
	.long	.LVL139
	.long	.LVL140
	.word	0x1
	.byte	0x68
	.long	.LVL140
	.long	.LVL141
	.word	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.long	.LVL142
	.long	.LVL143
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x7c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB6
	.long	.LBE6
	.long	.LBB7
	.long	.LBE7
	.long	0
	.long	0
	.long	.LBB33
	.long	.LBE33
	.long	.LBB74
	.long	.LBE74
	.long	0
	.long	0
	.long	.LBB35
	.long	.LBE35
	.long	.LBB39
	.long	.LBE39
	.long	0
	.long	0
	.long	.LBB36
	.long	.LBE36
	.long	.LBB40
	.long	.LBE40
	.long	0
	.long	0
	.long	.LBB42
	.long	.LBE42
	.long	.LBB75
	.long	.LBE75
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
	.long	.LBB49
	.long	.LBE49
	.long	0
	.long	0
	.long	.LBB51
	.long	.LBE51
	.long	.LBB76
	.long	.LBE76
	.long	0
	.long	0
	.long	.LBB53
	.long	.LBE53
	.long	.LBB62
	.long	.LBE62
	.long	0
	.long	0
	.long	.LBB54
	.long	.LBE54
	.long	.LBB61
	.long	.LBE61
	.long	0
	.long	0
	.long	.LBB55
	.long	.LBE55
	.long	.LBB59
	.long	.LBE59
	.long	0
	.long	0
	.long	.LBB56
	.long	.LBE56
	.long	.LBB60
	.long	.LBE60
	.long	0
	.long	0
	.long	.LBB64
	.long	.LBE64
	.long	.LBB77
	.long	.LBE77
	.long	0
	.long	0
	.long	.LBB68
	.long	.LBE68
	.long	.LBB71
	.long	.LBE71
	.long	0
	.long	0
	.long	.LBB82
	.long	.LBE82
	.long	.LBB86
	.long	.LBE86
	.long	0
	.long	0
	.long	.LBB83
	.long	.LBE83
	.long	.LBB87
	.long	.LBE87
	.long	0
	.long	0
	.long	.LBB90
	.long	.LBE90
	.long	.LBB93
	.long	.LBE93
	.long	0
	.long	0
	.long	.LBB101
	.long	.LBE101
	.long	.LBB105
	.long	.LBE105
	.long	0
	.long	0
	.long	.LBB102
	.long	.LBE102
	.long	.LBB106
	.long	.LBE106
	.long	0
	.long	0
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"midiTxOutIndex"
.LASF61:
	.string	"init_Serial0SerUSB"
.LASF55:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF17:
	.string	"__addr16"
.LASF27:
	.string	"__vector_25"
.LASF28:
	.string	"__vector_26"
.LASF8:
	.string	"long long unsigned int"
.LASF50:
	.string	"HelloMsg"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF5:
	.string	"long int"
.LASF15:
	.string	"__vector_36"
.LASF60:
	.string	"__vector_37"
.LASF3:
	.string	"uint16_t"
.LASF48:
	.string	"lcdData"
.LASF32:
	.string	"serusbTxInIndex"
.LASF21:
	.string	"progmem_s"
.LASF18:
	.string	"__result"
.LASF25:
	.string	"count"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long unsigned int"
.LASF43:
	.string	"midiRxBuffer"
.LASF47:
	.string	"cr_lf"
.LASF22:
	.string	"data"
.LASF36:
	.string	"serUsbTxBuffer"
.LASF38:
	.string	"midiRxBytesCount"
.LASF58:
	.string	"serial0SER_USB_sendCRLF"
.LASF26:
	.string	"serial0SER_USBReadRx"
.LASF13:
	.string	"ovflCount"
.LASF9:
	.string	"sizetype"
.LASF56:
	.string	".././serial.c"
.LASF52:
	.string	"midiTxOvfl"
.LASF35:
	.string	"serUsbRxBuffer"
.LASF57:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF1:
	.string	"unsigned char"
.LASF20:
	.string	"serial0SER_USBSend"
.LASF54:
	.string	"log_putError"
.LASF39:
	.string	"midiRxInIndex"
.LASF30:
	.string	"serusbRxOutIndex"
.LASF34:
	.string	"serusb_Active"
.LASF31:
	.string	"serusbTxOutIndex"
.LASF45:
	.string	"midiRxOvflCount"
.LASF40:
	.string	"midiRxOutIndex"
.LASF53:
	.string	"eeprom_ReadUSB"
.LASF44:
	.string	"midiTxBuffer"
.LASF10:
	.string	"char"
.LASF24:
	.string	"serial0SER_USB_sendString"
.LASF23:
	.string	"index"
.LASF11:
	.string	"serial1MIDISend"
.LASF16:
	.string	"received_byte"
.LASF19:
	.string	"serial0SER_USB_sendStringP"
.LASF37:
	.string	"midiTxBytesCount"
.LASF12:
	.string	"serial1MIDIReadRx"
.LASF2:
	.string	"uint8_t"
.LASF33:
	.string	"serusbOvflFlag"
.LASF46:
	.string	"midiTxOvflCount"
.LASF29:
	.string	"serusbRxInIndex"
.LASF49:
	.string	"sw_version"
.LASF51:
	.string	"midiRxOvfl"
.LASF42:
	.string	"midiTxInIndex"
.LASF14:
	.string	"result"
.LASF59:
	.string	"init_Serial1MIDI"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_clear_bss
