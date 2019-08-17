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
	ldi r30,lo8(-55)
	ldi r31,0
	ld r25,Z
	andi r25,lo8(-33)
	st Z,r25
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
	cpse r25,r24
	rjmp .L3
.LBB2:
	.loc 1 68 0
	lds r24,midiTxOvflCount
.LVL2:
	.loc 1 69 0
	tst r24
	breq .L4
	.loc 1 71 0
	cpi r24,lo8(-1)
	breq .L3
	.loc 1 73 0
	subi r24,lo8(-(1))
.LVL3:
	sts midiTxOvflCount,r24
	rjmp .L3
.LVL4:
.L4:
	.loc 1 77 0
	ldi r24,lo8(1)
.LVL5:
	sts midiTxOvflCount,r24
.L3:
.LBE2:
	.loc 1 80 0
	ldi r30,lo8(-55)
	ldi r31,0
.LVL6:
	ld r24,Z
	ori r24,lo8(32)
	st Z,r24
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
	breq .L7
	.loc 1 88 0
	lds r30,midiRxOutIndex
	ldi r31,0
	subi r30,lo8(-(midiRxBuffer))
	sbci r31,hi8(-(midiRxBuffer))
	ld r24,Z
.LVL7:
	.loc 1 89 0
	lds r25,midiRxOutIndex
	subi r25,lo8(-(1))
	andi r25,lo8(31)
	sts midiRxOutIndex,r25
	ret
.LVL8:
.L7:
	.loc 1 86 0
	ldi r24,lo8(-3)
.LVL9:
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
.LVL10:
	.loc 1 98 0
	lds r30,midiRxInIndex
	ldi r31,0
	subi r30,lo8(-(midiRxBuffer))
	sbci r31,hi8(-(midiRxBuffer))
	st Z,r24
	.loc 1 99 0
	lds r24,midiRxInIndex
.LVL11:
	subi r24,lo8(-(1))
	andi r24,lo8(31)
	sts midiRxInIndex,r24
	.loc 1 100 0
	lds r25,midiRxInIndex
	lds r24,midiRxOutIndex
	cpse r25,r24
	rjmp .L9
.LBB3:
	.loc 1 102 0
	lds r24,midiRxOvflCount
.LVL12:
	.loc 1 103 0
	tst r24
	breq .L10
	.loc 1 105 0
	cpi r24,lo8(-1)
	breq .L9
	.loc 1 107 0
	subi r24,lo8(-(1))
.LVL13:
	sts midiRxOvflCount,r24
	rjmp .L9
.LVL14:
.L10:
	.loc 1 111 0
	ldi r24,lo8(1)
.LVL15:
	sts midiRxOvflCount,r24
.L9:
.LBE3:
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
	breq .L12
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
	rjmp .L11
.L12:
	.loc 1 125 0
	ldi r30,lo8(-55)
	ldi r31,0
	ld r24,Z
	andi r24,lo8(-33)
	st Z,r24
.L11:
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
	.cfi_endproc
.LFE10:
	.size	__vector_37, .-__vector_37
	.section	.text.serial0SER_USBSend,"ax",@progbits
.global	serial0SER_USBSend
	.type	serial0SER_USBSend, @function
serial0SER_USBSend:
.LFB15:
	.loc 1 175 0
	.cfi_startproc
.LVL17:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 176 0
	lds r25,serusbTxInIndex
.LVL18:
	.loc 1 177 0
	ldi r30,lo8(-63)
	ldi r31,0
	ld r18,Z
	andi r18,lo8(-33)
	st Z,r18
	.loc 1 178 0
	mov r30,r25
	ldi r31,0
	subi r30,lo8(-(serUsbTxBuffer))
	sbci r31,hi8(-(serUsbTxBuffer))
	st Z,r24
	.loc 1 179 0
	ldi r24,lo8(1)
.LVL19:
	add r24,r25
.LVL20:
	.loc 1 180 0
	lds r25,serusbTxOutIndex
	cpse r24,r25
	rjmp .L15
	.loc 1 185 0
	ldi r30,lo8(-63)
	ldi r31,0
.LVL21:
	ld r25,Z
	ori r25,lo8(32)
	st Z,r25
.L16:
	.loc 1 186 0 discriminator 1
	lds r25,serusbTxOutIndex
	cp r24,r25
	breq .L16
	.loc 1 187 0
	sts serusbTxInIndex,r24
	ret
.LVL22:
.L15:
	.loc 1 190 0
	sts serusbTxInIndex,r24
	.loc 1 191 0
	ldi r30,lo8(-63)
	ldi r31,0
.LVL23:
	ld r24,Z
.LVL24:
	ori r24,lo8(32)
	st Z,r24
.LVL25:
	ret
	.cfi_endproc
.LFE15:
	.size	serial0SER_USBSend, .-serial0SER_USBSend
	.section	.text.serial0SER_USB_sendStringP,"ax",@progbits
.global	serial0SER_USB_sendStringP
	.type	serial0SER_USB_sendStringP, @function
serial0SER_USB_sendStringP:
.LFB12:
	.loc 1 155 0
	.cfi_startproc
.LVL26:
	push r28
.LCFI12:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI13:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	.loc 1 157 0
	rjmp .L19
.LVL27:
.L21:
	.loc 1 158 0
	call serial0SER_USBSend
.LVL28:
.LBB4:
	.loc 1 157 0
	movw r30,r28
.LVL29:
.L19:
	movw r28,r30
	adiw r28,1
.LVL30:
	.loc 1 157 0
/* #APP */
 ;  157 ".././serial.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL31:
/* #NOAPP */
.LBE4:
	.loc 1 157 0
	tst r24
	breq .L18
	.loc 1 157 0 discriminator 1
	lds r25,serusbOvflFlag
	cpi r25,lo8(-1)
	brne .L21
.L18:
/* epilogue start */
	.loc 1 160 0
	pop r29
	pop r28
.LVL32:
	ret
	.cfi_endproc
.LFE12:
	.size	serial0SER_USB_sendStringP, .-serial0SER_USB_sendStringP
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
	.loc 1 172 0
	ldi r24,lo8(cr_lf)
	ldi r25,hi8(cr_lf)
	call serial0SER_USB_sendStringP
.LVL33:
	ret
	.cfi_endproc
.LFE14:
	.size	serial0SER_USB_sendCRLF, .-serial0SER_USB_sendCRLF
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
	ldi r30,lo8(-63)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(-104)
	st Z,r24
	.loc 1 136 0
	ldi r30,lo8(-62)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(6)
	st Z,r24
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
.LVL34:
	cpi r24,lo8(-1)
	brne .L24
	.loc 1 143 0
	sts serusb_Active,__zero_reg__
	.loc 1 144 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(4)
	ldi r24,lo8(1)
	call log_putError
.LVL35:
.L24:
	.loc 1 146 0
	lds r24,serusb_Active
	cpi r24,lo8(-1)
	brne .L23
	.loc 1 147 0
	ldi r24,lo8(HelloMsg)
	ldi r25,hi8(HelloMsg)
	call serial0SER_USB_sendStringP
.LVL36:
	.loc 1 148 0
	ldi r24,lo8(sw_version)
	ldi r25,hi8(sw_version)
	call serial0SER_USB_sendStringP
.LVL37:
	.loc 1 149 0
	call serial0SER_USB_sendCRLF
.LVL38:
	.loc 1 150 0
	call serial0SER_USB_sendCRLF
.LVL39:
.L23:
	ret
	.cfi_endproc
.LFE11:
	.size	init_Serial0SerUSB, .-init_Serial0SerUSB
	.section	.text.serial0SER_USB_sendString,"ax",@progbits
.global	serial0SER_USB_sendString
	.type	serial0SER_USB_sendString, @function
serial0SER_USB_sendString:
.LFB13:
	.loc 1 163 0
	.cfi_startproc
.LVL40:
	push r17
.LCFI14:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI15:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI16:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r28,r24
.LVL41:
	.loc 1 164 0
	ldi r17,lo8(80)
	.loc 1 165 0
	rjmp .L27
.LVL42:
.L29:
	.loc 1 166 0
	adiw r28,1
.LVL43:
	call serial0SER_USBSend
.LVL44:
	.loc 1 167 0
	subi r17,lo8(-(-1))
.LVL45:
.L27:
	.loc 1 165 0
	ld r24,Y
	tst r24
	breq .L26
	.loc 1 165 0 is_stmt 0 discriminator 1
	lds r25,serusbOvflFlag
	cpi r25,lo8(-1)
	breq .L26
	.loc 1 165 0 discriminator 2
	cpse r17,__zero_reg__
	rjmp .L29
.L26:
/* epilogue start */
	.loc 1 169 0 is_stmt 1
	pop r29
	pop r28
.LVL46:
	pop r17
.LVL47:
	ret
	.cfi_endproc
.LFE13:
	.size	serial0SER_USB_sendString, .-serial0SER_USB_sendString
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
	lds r30,serusbRxOutIndex
.LVL48:
	.loc 1 198 0
	lds r25,serusbRxInIndex
	lds r24,serusbRxOutIndex
	cp r25,r24
	breq .L32
	.loc 1 201 0
	ldi r25,lo8(1)
	add r25,r30
.LVL49:
	ldi r31,0
	subi r30,lo8(-(serUsbRxBuffer))
	sbci r31,hi8(-(serUsbRxBuffer))
	ld r24,Z
.LVL50:
	.loc 1 202 0
	andi r25,lo8(63)
.LVL51:
	sts serusbRxOutIndex,r25
	ret
.LVL52:
.L32:
	.loc 1 199 0
	ldi r24,0
.LVL53:
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
.LCFI17:
	.cfi_def_cfa_offset 4
	.cfi_offset 1, -3
	push r0
.LCFI18:
	.cfi_def_cfa_offset 5
	.cfi_offset 0, -4
	in r0,__SREG__
	push r0
	clr __zero_reg__
	in r0,__RAMPZ__
	push r0
	push r24
.LCFI19:
	.cfi_def_cfa_offset 6
	.cfi_offset 24, -5
	push r25
.LCFI20:
	.cfi_def_cfa_offset 7
	.cfi_offset 25, -6
	push r30
.LCFI21:
	.cfi_def_cfa_offset 8
	.cfi_offset 30, -7
	push r31
.LCFI22:
	.cfi_def_cfa_offset 9
	.cfi_offset 31, -8
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 1 209 0
	lds r30,serusbRxInIndex
.LVL54:
	.loc 1 210 0
	lds r25,198
.LVL55:
	.loc 1 211 0
	ldi r24,lo8(1)
	add r24,r30
.LVL56:
	ldi r31,0
	subi r30,lo8(-(serUsbRxBuffer))
	sbci r31,hi8(-(serUsbRxBuffer))
	st Z,r25
	.loc 1 212 0
	andi r24,lo8(63)
.LVL57:
	.loc 1 213 0
	lds r25,serusbRxOutIndex
.LVL58:
	cpse r24,r25
	rjmp .L34
	.loc 1 215 0
	ldi r24,lo8(-1)
.LVL59:
	sts serusbOvflFlag,r24
	rjmp .L33
.LVL60:
.L34:
	.loc 1 217 0
	sts serusbRxInIndex,r24
.LVL61:
.L33:
/* epilogue start */
	.loc 1 219 0
	pop r31
	pop r30
.LVL62:
	pop r25
	pop r24
	pop r0
	out __RAMPZ__,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
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
.LCFI23:
	.cfi_def_cfa_offset 4
	.cfi_offset 1, -3
	push r0
.LCFI24:
	.cfi_def_cfa_offset 5
	.cfi_offset 0, -4
	in r0,__SREG__
	push r0
	clr __zero_reg__
	in r0,__RAMPZ__
	push r0
	push r18
.LCFI25:
	.cfi_def_cfa_offset 6
	.cfi_offset 18, -5
	push r24
.LCFI26:
	.cfi_def_cfa_offset 7
	.cfi_offset 24, -6
	push r25
.LCFI27:
	.cfi_def_cfa_offset 8
	.cfi_offset 25, -7
	push r30
.LCFI28:
	.cfi_def_cfa_offset 9
	.cfi_offset 30, -8
	push r31
.LCFI29:
	.cfi_def_cfa_offset 10
	.cfi_offset 31, -9
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	.loc 1 222 0
	lds r24,serusbTxOutIndex
.LVL63:
	.loc 1 223 0
	lds r18,serusbTxInIndex
	lds r25,serusbTxOutIndex
	cp r18,r25
	breq .L37
	.loc 1 225 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(serUsbTxBuffer))
	sbci r31,hi8(-(serUsbTxBuffer))
	ld r25,Z
	sts 198,r25
	.loc 1 226 0
	subi r24,lo8(-(1))
.LVL64:
	sts serusbTxOutIndex,r24
	rjmp .L36
.LVL65:
.L37:
	.loc 1 229 0
	ldi r30,lo8(-63)
	ldi r31,0
	ld r24,Z
.LVL66:
	andi r24,lo8(-33)
	st Z,r24
.L36:
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
	.long	0x5a2
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF57
	.byte	0xc
	.long	.LASF58
	.long	.LASF59
	.long	.Ldebug_ranges0+0
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
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.byte	0x2f
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x7
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
	.long	0xe2
	.uleb128 0x8
	.long	.LASF18
	.byte	0x1
	.byte	0x3f
	.long	0x30
	.long	.LLST0
	.uleb128 0x9
	.long	.LBB2
	.long	.LBE2
	.uleb128 0xa
	.long	.LASF13
	.byte	0x1
	.byte	0x44
	.long	0x30
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.long	0x10f
	.uleb128 0xa
	.long	.LASF14
	.byte	0x1
	.byte	0x54
	.long	0x30
	.long	.LLST2
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.long	.LLST3
	.byte	0x1
	.long	0x152
	.uleb128 0xa
	.long	.LASF16
	.byte	0x1
	.byte	0x5f
	.long	0x30
	.long	.LLST4
	.uleb128 0x9
	.long	.LBB3
	.long	.LBE3
	.uleb128 0xa
	.long	.LASF13
	.byte	0x1
	.byte	0x66
	.long	0x30
	.long	.LLST5
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF61
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.long	.LLST6
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.long	.LASF17
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1a1
	.uleb128 0x8
	.long	.LASF18
	.byte	0x1
	.byte	0xaf
	.long	0x30
	.long	.LLST7
	.uleb128 0xa
	.long	.LASF19
	.byte	0x1
	.byte	0xb0
	.long	0x30
	.long	.LLST8
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.long	.LLST9
	.byte	0x1
	.long	0x20d
	.uleb128 0x8
	.long	.LASF21
	.byte	0x1
	.byte	0x9a
	.long	0x20d
	.long	.LLST10
	.uleb128 0xe
	.string	"c"
	.byte	0x1
	.byte	0x9c
	.long	0x7e
	.long	.LLST11
	.uleb128 0xf
	.long	.LBB4
	.long	.LBE4
	.long	0x203
	.uleb128 0xa
	.long	.LASF22
	.byte	0x1
	.byte	0x9d
	.long	0x49
	.long	.LLST12
	.uleb128 0xa
	.long	.LASF23
	.byte	0x1
	.byte	0x9d
	.long	0x30
	.long	.LLST11
	.byte	0
	.uleb128 0x10
	.long	.LVL28
	.long	0x168
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x85
	.uleb128 0x12
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.byte	0xab
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x236
	.uleb128 0x10
	.long	.LVL33
	.long	0x1a1
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF25
	.byte	0x1
	.byte	0x83
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x29f
	.uleb128 0x10
	.long	.LVL34
	.long	0x58b
	.uleb128 0x13
	.long	.LVL35
	.long	0x598
	.long	0x27a
	.uleb128 0x14
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x34
	.uleb128 0x14
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
	.uleb128 0x10
	.long	.LVL36
	.long	0x1a1
	.uleb128 0x10
	.long	.LVL37
	.long	0x1a1
	.uleb128 0x10
	.long	.LVL38
	.long	0x213
	.uleb128 0x10
	.long	.LVL39
	.long	0x213
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST14
	.byte	0x1
	.long	0x2df
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.byte	0xa2
	.long	0x2df
	.long	.LLST15
	.uleb128 0xa
	.long	.LASF27
	.byte	0x1
	.byte	0xa4
	.long	0x30
	.long	.LLST16
	.uleb128 0x10
	.long	.LVL44
	.long	0x168
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x7e
	.uleb128 0xb
	.byte	0x1
	.long	.LASF28
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
	.long	0x321
	.uleb128 0xa
	.long	.LASF14
	.byte	0x1
	.byte	0xc4
	.long	0x30
	.long	.LLST17
	.uleb128 0xa
	.long	.LASF19
	.byte	0x1
	.byte	0xc5
	.long	0x30
	.long	.LLST18
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.byte	0xcf
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST19
	.byte	0x1
	.long	0x35a
	.uleb128 0xa
	.long	.LASF16
	.byte	0x1
	.byte	0xd0
	.long	0x30
	.long	.LLST20
	.uleb128 0xa
	.long	.LASF19
	.byte	0x1
	.byte	0xd1
	.long	0x30
	.long	.LLST21
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST22
	.byte	0x1
	.long	0x384
	.uleb128 0xa
	.long	.LASF19
	.byte	0x1
	.byte	0xde
	.long	0x30
	.long	.LLST23
	.byte	0
	.uleb128 0x16
	.long	.LASF31
	.byte	0x1
	.byte	0x1f
	.long	0x396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serusbRxInIndex
	.uleb128 0x17
	.long	0x30
	.uleb128 0x16
	.long	.LASF32
	.byte	0x1
	.byte	0x20
	.long	0x396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serusbRxOutIndex
	.uleb128 0x16
	.long	.LASF33
	.byte	0x1
	.byte	0x21
	.long	0x396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serusbTxOutIndex
	.uleb128 0x16
	.long	.LASF34
	.byte	0x1
	.byte	0x22
	.long	0x396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serusbTxInIndex
	.uleb128 0x16
	.long	.LASF35
	.byte	0x1
	.byte	0x23
	.long	0x396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serusbOvflFlag
	.uleb128 0x16
	.long	.LASF36
	.byte	0x1
	.byte	0x1a
	.long	0x396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serusb_Active
	.uleb128 0x18
	.long	0x30
	.long	0x405
	.uleb128 0x19
	.long	0x77
	.byte	0x3f
	.byte	0
	.uleb128 0x16
	.long	.LASF37
	.byte	0x1
	.byte	0x1c
	.long	0x3f5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUsbRxBuffer
	.uleb128 0x18
	.long	0x30
	.long	0x427
	.uleb128 0x19
	.long	0x77
	.byte	0xff
	.byte	0
	.uleb128 0x16
	.long	.LASF38
	.byte	0x1
	.byte	0x1d
	.long	0x417
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUsbTxBuffer
	.uleb128 0x16
	.long	.LASF39
	.byte	0x1
	.byte	0x25
	.long	0x44b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxBytesCount
	.uleb128 0x17
	.long	0x49
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.byte	0x26
	.long	0x44b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxBytesCount
	.uleb128 0x16
	.long	.LASF41
	.byte	0x1
	.byte	0x15
	.long	0x396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxInIndex
	.uleb128 0x16
	.long	.LASF42
	.byte	0x1
	.byte	0x16
	.long	0x396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxOutIndex
	.uleb128 0x16
	.long	.LASF43
	.byte	0x1
	.byte	0x18
	.long	0x396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxOutIndex
	.uleb128 0x16
	.long	.LASF44
	.byte	0x1
	.byte	0x17
	.long	0x396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxInIndex
	.uleb128 0x18
	.long	0x30
	.long	0x4ba
	.uleb128 0x19
	.long	0x77
	.byte	0x1f
	.byte	0
	.uleb128 0x16
	.long	.LASF45
	.byte	0x1
	.byte	0x12
	.long	0x4aa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxBuffer
	.uleb128 0x16
	.long	.LASF46
	.byte	0x1
	.byte	0x13
	.long	0x4aa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxBuffer
	.uleb128 0x16
	.long	.LASF47
	.byte	0x1
	.byte	0x2a
	.long	0x396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxOvflCount
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.byte	0x2b
	.long	0x396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxOvflCount
	.uleb128 0x18
	.long	0x85
	.long	0x50d
	.uleb128 0x1a
	.byte	0
	.uleb128 0x1b
	.long	.LASF49
	.byte	0x3
	.byte	0x6c
	.long	0x51a
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.long	0x502
	.uleb128 0x18
	.long	0x30
	.long	0x52f
	.uleb128 0x19
	.long	0x77
	.byte	0x9
	.byte	0
	.uleb128 0x16
	.long	.LASF50
	.byte	0x4
	.byte	0xad
	.long	0x51f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x1c
	.long	.LASF51
	.byte	0x4
	.word	0x102
	.long	0x54f
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.long	0x502
	.uleb128 0x1c
	.long	.LASF52
	.byte	0x4
	.word	0x103
	.long	0x562
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.long	0x502
	.uleb128 0x16
	.long	.LASF53
	.byte	0x1
	.byte	0x28
	.long	0x396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxOvfl
	.uleb128 0x16
	.long	.LASF54
	.byte	0x1
	.byte	0x29
	.long	0x396
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxOvfl
	.uleb128 0x1d
	.byte	0x1
	.byte	0x1
	.long	.LASF55
	.long	.LASF55
	.byte	0x5
	.byte	0x1b
	.uleb128 0x1d
	.byte	0x1
	.byte	0x1
	.long	.LASF56
	.long	.LASF56
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.long	.LVL6
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL6
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.word	0x1
	.byte	0x68
	.long	.LVL3
	.long	.LVL4
	.word	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST2:
	.long	.LVL7
	.long	.LVL8
	.word	0x1
	.byte	0x68
	.long	.LVL9
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
	.long	.LVL10
	.long	.LVL11
	.word	0x1
	.byte	0x68
	.long	.LVL11
	.long	.LVL16
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST5:
	.long	.LVL12
	.long	.LVL13
	.word	0x1
	.byte	0x68
	.long	.LVL13
	.long	.LVL14
	.word	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
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
	.long	.LVL17
	.long	.LVL19
	.word	0x1
	.byte	0x68
	.long	.LVL19
	.long	.LVL21
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL21
	.long	.LVL22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL23
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL18
	.long	.LVL20
	.word	0x1
	.byte	0x69
	.long	.LVL20
	.long	.LVL24
	.word	0x1
	.byte	0x68
	.long	.LVL24
	.long	.LVL25
	.word	0x5
	.byte	0x3
	.long	serusbTxInIndex
	.long	0
	.long	0
.LLST9:
	.long	.LFB12
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
	.long	.LFE12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST10:
	.long	.LVL26
	.long	.LVL27
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL27
	.long	.LVL29
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL29
	.long	.LVL30
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL30
	.long	.LVL32
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
	.long	.LFE12
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL27
	.long	.LVL28-1
	.word	0x1
	.byte	0x68
	.long	.LVL31
	.long	.LFE12
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST12:
	.long	.LVL27
	.long	.LVL28-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL28-1
	.long	.LVL29
	.word	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.long	.LVL30
	.long	.LFE12
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
	.long	.LFB13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI16
	.long	.LFE13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST15:
	.long	.LVL40
	.long	.LVL42
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL42
	.long	.LVL46
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST16:
	.long	.LVL41
	.long	.LVL42
	.word	0x3
	.byte	0x8
	.byte	0x50
	.byte	0x9f
	.long	.LVL42
	.long	.LVL47
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST17:
	.long	.LVL50
	.long	.LVL52
	.word	0x1
	.byte	0x68
	.long	.LVL53
	.long	.LFE16
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST18:
	.long	.LVL48
	.long	.LVL49
	.word	0x1
	.byte	0x6e
	.long	.LVL49
	.long	.LVL51
	.word	0x1
	.byte	0x69
	.long	.LVL52
	.long	.LFE16
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST19:
	.long	.LFB17
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI22
	.long	.LFE17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST20:
	.long	.LVL55
	.long	.LVL58
	.word	0x1
	.byte	0x69
	.long	.LVL58
	.long	.LVL62
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST21:
	.long	.LVL54
	.long	.LVL56
	.word	0x1
	.byte	0x6e
	.long	.LVL56
	.long	.LVL59
	.word	0x1
	.byte	0x68
	.long	.LVL60
	.long	.LVL61
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST22:
	.long	.LFB18
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
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI29
	.long	.LFE18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	0
	.long	0
.LLST23:
	.long	.LVL63
	.long	.LVL64
	.word	0x1
	.byte	0x68
	.long	.LVL64
	.long	.LVL65
	.word	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.long	.LVL65
	.long	.LVL66
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
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB13
	.long	.LFE13-.LFB13
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
	.long	.LFB15
	.long	.LFE15
	.long	.LFB12
	.long	.LFE12
	.long	.LFB14
	.long	.LFE14
	.long	.LFB11
	.long	.LFE11
	.long	.LFB13
	.long	.LFE13
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
.LASF43:
	.string	"midiTxOutIndex"
.LASF25:
	.string	"init_Serial0SerUSB"
.LASF37:
	.string	"serUsbRxBuffer"
.LASF22:
	.string	"__addr16"
.LASF29:
	.string	"__vector_25"
.LASF30:
	.string	"__vector_26"
.LASF8:
	.string	"long long unsigned int"
.LASF52:
	.string	"HelloMsg"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF57:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF5:
	.string	"long int"
.LASF15:
	.string	"__vector_36"
.LASF61:
	.string	"__vector_37"
.LASF3:
	.string	"uint16_t"
.LASF50:
	.string	"lcdData"
.LASF34:
	.string	"serusbTxInIndex"
.LASF21:
	.string	"progmem_s"
.LASF23:
	.string	"__result"
.LASF27:
	.string	"count"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long unsigned int"
.LASF45:
	.string	"midiRxBuffer"
.LASF49:
	.string	"cr_lf"
.LASF18:
	.string	"data"
.LASF38:
	.string	"serUsbTxBuffer"
.LASF40:
	.string	"midiRxBytesCount"
.LASF24:
	.string	"serial0SER_USB_sendCRLF"
.LASF28:
	.string	"serial0SER_USBReadRx"
.LASF13:
	.string	"ovflCount"
.LASF9:
	.string	"sizetype"
.LASF58:
	.string	".././serial.c"
.LASF54:
	.string	"midiTxOvfl"
.LASF59:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF1:
	.string	"unsigned char"
.LASF17:
	.string	"serial0SER_USBSend"
.LASF56:
	.string	"log_putError"
.LASF41:
	.string	"midiRxInIndex"
.LASF32:
	.string	"serusbRxOutIndex"
.LASF36:
	.string	"serusb_Active"
.LASF33:
	.string	"serusbTxOutIndex"
.LASF47:
	.string	"midiRxOvflCount"
.LASF42:
	.string	"midiRxOutIndex"
.LASF55:
	.string	"eeprom_ReadUSB"
.LASF46:
	.string	"midiTxBuffer"
.LASF10:
	.string	"char"
.LASF26:
	.string	"serial0SER_USB_sendString"
.LASF19:
	.string	"index"
.LASF11:
	.string	"serial1MIDISend"
.LASF16:
	.string	"received_byte"
.LASF20:
	.string	"serial0SER_USB_sendStringP"
.LASF39:
	.string	"midiTxBytesCount"
.LASF12:
	.string	"serial1MIDIReadRx"
.LASF2:
	.string	"uint8_t"
.LASF35:
	.string	"serusbOvflFlag"
.LASF48:
	.string	"midiTxOvflCount"
.LASF31:
	.string	"serusbRxInIndex"
.LASF51:
	.string	"sw_version"
.LASF53:
	.string	"midiRxOvfl"
.LASF44:
	.string	"midiTxInIndex"
.LASF14:
	.string	"result"
.LASF60:
	.string	"init_Serial1MIDI"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_clear_bss
