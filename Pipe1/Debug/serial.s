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
.LFB11:
	.file 1 ".././serial.c"
	.loc 1 58 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 60 0
	sts 205,__zero_reg__
	.loc 1 61 0
	ldi r24,lo8(31)
	sts 204,r24
	.loc 1 62 0
	ldi r30,lo8(-55)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(-104)
	st Z,r24
	.loc 1 63 0
	ldi r30,lo8(-54)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(6)
	st Z,r24
	.loc 1 64 0
	sts midiRxInIndex,__zero_reg__
	.loc 1 65 0
	sts midiRxOutIndex,__zero_reg__
	.loc 1 66 0
	sts midiTxInIndex,__zero_reg__
	.loc 1 67 0
	sts midiTxOutIndex,__zero_reg__
	.loc 1 68 0
	sts midiRxOvfl,__zero_reg__
	.loc 1 69 0
	sts midiTxOvfl,__zero_reg__
	.loc 1 70 0
	sts midiRxOvflCount,__zero_reg__
	.loc 1 71 0
	sts midiTxOvflCount,__zero_reg__
	ret
	.cfi_endproc
.LFE11:
	.size	init_Serial1MIDI, .-init_Serial1MIDI
	.section	.text.serial1MIDISend,"ax",@progbits
.global	serial1MIDISend
	.type	serial1MIDISend, @function
serial1MIDISend:
.LFB12:
	.loc 1 74 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 75 0
	ldi r30,lo8(-55)
	ldi r31,0
	ld r25,Z
	andi r25,lo8(-33)
	st Z,r25
	.loc 1 76 0
	lds r30,midiTxInIndex
	ldi r31,0
	subi r30,lo8(-(midiTxBuffer))
	sbci r31,hi8(-(midiTxBuffer))
	st Z,r24
	.loc 1 77 0
	lds r24,midiTxInIndex
.LVL1:
	subi r24,lo8(-(1))
	andi r24,lo8(31)
	sts midiTxInIndex,r24
	.loc 1 78 0
	lds r25,midiTxInIndex
	lds r24,midiTxOutIndex
	cpse r25,r24
	rjmp .L3
.LBB12:
	.loc 1 79 0
	lds r24,midiTxOvflCount
.LVL2:
	.loc 1 80 0
	tst r24
	breq .L4
	.loc 1 82 0
	cpi r24,lo8(-1)
	breq .L3
	.loc 1 84 0
	subi r24,lo8(-(1))
.LVL3:
	sts midiTxOvflCount,r24
	rjmp .L3
.LVL4:
.L4:
	.loc 1 88 0
	ldi r24,lo8(1)
.LVL5:
	sts midiTxOvflCount,r24
.L3:
.LBE12:
	.loc 1 91 0
	ldi r30,lo8(-55)
	ldi r31,0
.LVL6:
	ld r24,Z
	ori r24,lo8(32)
	st Z,r24
	ret
	.cfi_endproc
.LFE12:
	.size	serial1MIDISend, .-serial1MIDISend
	.section	.text.serial1MIDIReadRx,"ax",@progbits
.global	serial1MIDIReadRx
	.type	serial1MIDIReadRx, @function
serial1MIDIReadRx:
.LFB13:
	.loc 1 94 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 96 0
	lds r25,midiRxInIndex
	lds r24,midiRxOutIndex
	cp r25,r24
	breq .L7
	.loc 1 99 0
	lds r30,midiRxOutIndex
	ldi r31,0
	subi r30,lo8(-(midiRxBuffer))
	sbci r31,hi8(-(midiRxBuffer))
	ld r24,Z
.LVL7:
	.loc 1 100 0
	lds r25,midiRxOutIndex
	subi r25,lo8(-(1))
	andi r25,lo8(31)
	sts midiRxOutIndex,r25
	ret
.LVL8:
.L7:
	.loc 1 97 0
	ldi r24,lo8(-3)
.LVL9:
	.loc 1 103 0
	ret
	.cfi_endproc
.LFE13:
	.size	serial1MIDIReadRx, .-serial1MIDIReadRx
	.section	.text.__vector_36,"ax",@progbits
.global	__vector_36
	.type	__vector_36, @function
__vector_36:
.LFB14:
	.loc 1 105 0
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
	.loc 1 107 0
	lds r24,206
.LVL10:
	.loc 1 109 0
	lds r30,midiRxInIndex
	ldi r31,0
	subi r30,lo8(-(midiRxBuffer))
	sbci r31,hi8(-(midiRxBuffer))
	st Z,r24
	.loc 1 110 0
	lds r24,midiRxInIndex
.LVL11:
	subi r24,lo8(-(1))
	andi r24,lo8(31)
	sts midiRxInIndex,r24
	.loc 1 111 0
	lds r25,midiRxInIndex
	lds r24,midiRxOutIndex
	cpse r25,r24
	rjmp .L9
.LBB13:
	.loc 1 113 0
	lds r24,midiRxOvflCount
.LVL12:
	.loc 1 114 0
	tst r24
	breq .L10
	.loc 1 116 0
	cpi r24,lo8(-1)
	breq .L9
	.loc 1 118 0
	subi r24,lo8(-(1))
.LVL13:
	sts midiRxOvflCount,r24
	rjmp .L9
.LVL14:
.L10:
	.loc 1 122 0
	ldi r24,lo8(1)
.LVL15:
	sts midiRxOvflCount,r24
.L9:
.LBE13:
	.loc 1 125 0
	lds r24,midiRxBytesCount
	lds r25,midiRxBytesCount+1
	adiw r24,1
	sts midiRxBytesCount+1,r25
	sts midiRxBytesCount,r24
/* epilogue start */
	.loc 1 126 0
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
.LFE14:
	.size	__vector_36, .-__vector_36
	.section	.text.__vector_37,"ax",@progbits
.global	__vector_37
	.type	__vector_37, @function
__vector_37:
.LFB15:
	.loc 1 128 0
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
	.loc 1 129 0
	lds r25,midiTxOutIndex
	lds r24,midiTxInIndex
	cp r25,r24
	breq .L12
	.loc 1 131 0
	lds r30,midiTxOutIndex
	ldi r31,0
	subi r30,lo8(-(midiTxBuffer))
	sbci r31,hi8(-(midiTxBuffer))
	ld r24,Z
	sts 206,r24
	.loc 1 132 0
	lds r24,midiTxOutIndex
	subi r24,lo8(-(1))
	andi r24,lo8(31)
	sts midiTxOutIndex,r24
	.loc 1 133 0
	lds r24,midiTxBytesCount
	lds r25,midiTxBytesCount+1
	adiw r24,1
	sts midiTxBytesCount+1,r25
	sts midiTxBytesCount,r24
	rjmp .L11
.L12:
	.loc 1 136 0
	ldi r30,lo8(-55)
	ldi r31,0
	ld r24,Z
	andi r24,lo8(-33)
	st Z,r24
.L11:
/* epilogue start */
	.loc 1 139 0
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
.LFE15:
	.size	__vector_37, .-__vector_37
	.section	.text.serial0SER_USBSend,"ax",@progbits
.global	serial0SER_USBSend
	.type	serial0SER_USBSend, @function
serial0SER_USBSend:
.LFB20:
	.loc 1 187 0
	.cfi_startproc
.LVL17:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 188 0
	lds r25,serusbTxInIndex
.LVL18:
	.loc 1 189 0
	ldi r30,lo8(-63)
	ldi r31,0
	ld r18,Z
	andi r18,lo8(-33)
	st Z,r18
	.loc 1 190 0
	mov r30,r25
	ldi r31,0
	subi r30,lo8(-(serUsbTxBuffer))
	sbci r31,hi8(-(serUsbTxBuffer))
	st Z,r24
	.loc 1 191 0
	subi r25,lo8(-(1))
.LVL19:
	.loc 1 192 0
	lds r24,serusbTxOutIndex
.LVL20:
	cpse r25,r24
	rjmp .L15
	.loc 1 195 0
	ldi r24,lo8(-1)
	sts serusbOvflFlag,r24
	ret
.L15:
	.loc 1 202 0
	sts serusbTxInIndex,r25
	.loc 1 203 0
	ldi r30,lo8(-63)
	ldi r31,0
.LVL21:
	ld r24,Z
	ori r24,lo8(32)
	st Z,r24
	ret
	.cfi_endproc
.LFE20:
	.size	serial0SER_USBSend, .-serial0SER_USBSend
	.section	.text.serial0SER_USB_sendStringP,"ax",@progbits
.global	serial0SER_USB_sendStringP
	.type	serial0SER_USB_sendStringP, @function
serial0SER_USB_sendStringP:
.LFB17:
	.loc 1 167 0
	.cfi_startproc
.LVL22:
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
	.loc 1 169 0
	rjmp .L18
.LVL23:
.L20:
	.loc 1 170 0
	call serial0SER_USBSend
.LVL24:
.LBB14:
	.loc 1 169 0
	movw r30,r28
.LVL25:
.L18:
	movw r28,r30
	adiw r28,1
.LVL26:
	.loc 1 169 0
/* #APP */
 ;  169 ".././serial.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL27:
/* #NOAPP */
.LBE14:
	.loc 1 169 0
	tst r24
	breq .L17
	.loc 1 169 0 discriminator 1
	lds r25,serusbOvflFlag
	cpi r25,lo8(-1)
	brne .L20
.L17:
/* epilogue start */
	.loc 1 172 0
	pop r29
	pop r28
.LVL28:
	ret
	.cfi_endproc
.LFE17:
	.size	serial0SER_USB_sendStringP, .-serial0SER_USB_sendStringP
	.section	.text.serial0SER_USB_sendCRLF,"ax",@progbits
.global	serial0SER_USB_sendCRLF
	.type	serial0SER_USB_sendCRLF, @function
serial0SER_USB_sendCRLF:
.LFB19:
	.loc 1 183 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 184 0
	ldi r24,lo8(cr_lf)
	ldi r25,hi8(cr_lf)
	call serial0SER_USB_sendStringP
.LVL29:
	ret
	.cfi_endproc
.LFE19:
	.size	serial0SER_USB_sendCRLF, .-serial0SER_USB_sendCRLF
	.section	.text.init_Serial0SerUSB,"ax",@progbits
.global	init_Serial0SerUSB
	.type	init_Serial0SerUSB, @function
init_Serial0SerUSB:
.LFB16:
	.loc 1 142 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 144 0
	sts 197,__zero_reg__
	.loc 1 145 0
	ldi r24,lo8(8)
	sts 196,r24
	.loc 1 146 0
	ldi r30,lo8(-63)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(-104)
	st Z,r24
	.loc 1 147 0
	ldi r30,lo8(-62)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(6)
	st Z,r24
	.loc 1 148 0
	sts midiRxInIndex,__zero_reg__
	.loc 1 149 0
	sts midiRxOutIndex,__zero_reg__
	.loc 1 150 0
	sts midiTxInIndex,__zero_reg__
	.loc 1 151 0
	sts midiTxOutIndex,__zero_reg__
	.loc 1 152 0
	sts serusbOvflFlag,__zero_reg__
	.loc 1 153 0
	call eeprom_ReadUSB
.LVL30:
	cpi r24,lo8(-1)
	brne .L23
	.loc 1 154 0
	sts serusb_Active,__zero_reg__
	.loc 1 155 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(4)
	ldi r24,lo8(1)
	call log_putError
.LVL31:
.L23:
	.loc 1 157 0
	lds r24,serusb_Active
	cpi r24,lo8(-1)
	brne .L22
	.loc 1 158 0
	ldi r24,lo8(HelloMsg)
	ldi r25,hi8(HelloMsg)
	call serial0SER_USB_sendStringP
.LVL32:
	.loc 1 159 0
	ldi r24,lo8(sw_version)
	ldi r25,hi8(sw_version)
	call serial0SER_USB_sendStringP
.LVL33:
	.loc 1 160 0
	call serial0SER_USB_sendCRLF
.LVL34:
	.loc 1 161 0
	call serial0SER_USB_sendCRLF
.LVL35:
.L22:
	ret
	.cfi_endproc
.LFE16:
	.size	init_Serial0SerUSB, .-init_Serial0SerUSB
	.section	.text.serial0SER_USB_sendString,"ax",@progbits
.global	serial0SER_USB_sendString
	.type	serial0SER_USB_sendString, @function
serial0SER_USB_sendString:
.LFB18:
	.loc 1 175 0
	.cfi_startproc
.LVL36:
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
.LVL37:
	.loc 1 176 0
	ldi r17,lo8(80)
	.loc 1 177 0
	rjmp .L26
.LVL38:
.L28:
	.loc 1 178 0
	adiw r28,1
.LVL39:
	call serial0SER_USBSend
.LVL40:
	.loc 1 179 0
	subi r17,lo8(-(-1))
.LVL41:
.L26:
	.loc 1 177 0
	ld r24,Y
	tst r24
	breq .L25
	.loc 1 177 0 is_stmt 0 discriminator 1
	lds r25,serusbOvflFlag
	cpi r25,lo8(-1)
	breq .L25
	.loc 1 177 0 discriminator 2
	cpse r17,__zero_reg__
	rjmp .L28
.L25:
/* epilogue start */
	.loc 1 181 0 is_stmt 1
	pop r29
	pop r28
.LVL42:
	pop r17
.LVL43:
	ret
	.cfi_endproc
.LFE18:
	.size	serial0SER_USB_sendString, .-serial0SER_USB_sendString
	.section	.text.serial0SER_USBReadRx,"ax",@progbits
.global	serial0SER_USBReadRx
	.type	serial0SER_USBReadRx, @function
serial0SER_USBReadRx:
.LFB21:
	.loc 1 207 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 209 0
	lds r30,serusbRxOutIndex
.LVL44:
	.loc 1 210 0
	lds r25,serusbRxInIndex
	lds r24,serusbRxOutIndex
	cp r25,r24
	breq .L31
	.loc 1 213 0
	ldi r25,lo8(1)
	add r25,r30
.LVL45:
	ldi r31,0
	subi r30,lo8(-(serUsbRxBuffer))
	sbci r31,hi8(-(serUsbRxBuffer))
	ld r24,Z
.LVL46:
	.loc 1 214 0
	andi r25,lo8(63)
.LVL47:
	sts serusbRxOutIndex,r25
	ret
.LVL48:
.L31:
	.loc 1 211 0
	ldi r24,0
.LVL49:
	.loc 1 217 0
	ret
	.cfi_endproc
.LFE21:
	.size	serial0SER_USBReadRx, .-serial0SER_USBReadRx
	.section	.text.__vector_25,"ax",@progbits
.global	__vector_25
	.type	__vector_25, @function
__vector_25:
.LFB22:
	.loc 1 219 0
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
	.loc 1 221 0
	lds r30,serusbRxInIndex
.LVL50:
	.loc 1 222 0
	lds r25,198
.LVL51:
	.loc 1 223 0
	ldi r24,lo8(1)
	add r24,r30
.LVL52:
	ldi r31,0
	subi r30,lo8(-(serUsbRxBuffer))
	sbci r31,hi8(-(serUsbRxBuffer))
	st Z,r25
	.loc 1 224 0
	andi r24,lo8(63)
.LVL53:
	.loc 1 225 0
	lds r25,serusbRxOutIndex
.LVL54:
	cpse r24,r25
	rjmp .L33
	.loc 1 227 0
	ldi r24,lo8(-1)
.LVL55:
	sts serusbOvflFlag,r24
	rjmp .L32
.LVL56:
.L33:
	.loc 1 229 0
	sts serusbRxInIndex,r24
.LVL57:
.L32:
/* epilogue start */
	.loc 1 231 0
	pop r31
	pop r30
.LVL58:
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
.LFE22:
	.size	__vector_25, .-__vector_25
	.section	.text.__vector_26,"ax",@progbits
.global	__vector_26
	.type	__vector_26, @function
__vector_26:
.LFB23:
	.loc 1 233 0
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
	.loc 1 234 0
	lds r24,serusbTxOutIndex
.LVL59:
	.loc 1 235 0
	lds r18,serusbTxInIndex
	lds r25,serusbTxOutIndex
	cp r18,r25
	breq .L36
	.loc 1 237 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(serUsbTxBuffer))
	sbci r31,hi8(-(serUsbTxBuffer))
	ld r25,Z
	sts 198,r25
	.loc 1 238 0
	subi r24,lo8(-(1))
.LVL60:
	sts serusbTxOutIndex,r24
	rjmp .L35
.LVL61:
.L36:
	.loc 1 241 0
	ldi r30,lo8(-63)
	ldi r31,0
	ld r24,Z
.LVL62:
	andi r24,lo8(-33)
	st Z,r24
.L35:
/* epilogue start */
	.loc 1 244 0
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
.LFE23:
	.size	__vector_26, .-__vector_26
	.section	.text.init_Serial3SerESP,"ax",@progbits
.global	init_Serial3SerESP
	.type	init_Serial3SerESP, @function
init_Serial3SerESP:
.LFB24:
	.loc 1 248 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 249 0
	sts 309,__zero_reg__
	.loc 1 250 0
	ldi r24,lo8(8)
	sts 308,r24
	.loc 1 251 0
	ldi r30,lo8(49)
	ldi r31,lo8(1)
	ld r24,Z
	ori r24,lo8(-104)
	st Z,r24
	.loc 1 252 0
	ldi r30,lo8(50)
	ldi r31,lo8(1)
	ld r24,Z
	ori r24,lo8(6)
	st Z,r24
	.loc 1 253 0
	ldi r24,lo8(serESPRxBuffer)
	ldi r25,hi8(serESPRxBuffer)
	sts serESPRxInIndex+1,r25
	sts serESPRxInIndex,r24
	.loc 1 254 0
	sts serESPRxOutIndex+1,r25
	sts serESPRxOutIndex,r24
	.loc 1 255 0
	ldi r24,lo8(serESPTxBuffer)
	ldi r25,hi8(serESPTxBuffer)
	sts serESPTxOutIndex+1,r25
	sts serESPTxOutIndex,r24
	.loc 1 256 0
	sts serESPTxInIndex+1,r25
	sts serESPTxInIndex,r24
	.loc 1 257 0
	sts serESPOvflFlag,__zero_reg__
	.loc 1 258 0
	ldi r24,lo8(-1)
	sts serESP_Active,r24
	ret
	.cfi_endproc
.LFE24:
	.size	init_Serial3SerESP, .-init_Serial3SerESP
	.section	.text.serial3SER_ESPSend,"ax",@progbits
.global	serial3SER_ESPSend
	.type	serial3SER_ESPSend, @function
serial3SER_ESPSend:
.LFB25:
	.loc 1 262 0
	.cfi_startproc
.LVL63:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 263 0
	lds r30,serESPTxInIndex
	lds r31,serESPTxInIndex+1
.LVL64:
	.loc 1 264 0
	ldi r26,lo8(49)
	ldi r27,lo8(1)
	ld r25,X
	andi r25,lo8(-33)
	st X,r25
	.loc 1 266 0
	movw r20,r30
	subi r20,-1
	sbci r21,-1
.LVL65:
	st Z,r24
	.loc 1 268 0
	ldi r24,hi8(serESPTxBuffer+511)
	cpi r20,lo8(serESPTxBuffer+511)
	cpc r21,r24
.LVL66:
	breq .L40
	brlo .L40
	.loc 1 269 0
	ldi r20,lo8(serESPTxBuffer)
	ldi r21,hi8(serESPTxBuffer)
.LVL67:
.L40:
.LBB15:
	.loc 1 273 0
	in r25,__SREG__
.LVL68:
.LBB16:
.LBB17:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE17:
.LBE16:
	.loc 1 273 0
	ldi r24,lo8(1)
	rjmp .L41
.LVL69:
.L42:
	.loc 1 274 0 discriminator 3
	lds r18,serESPTxOutIndex
	lds r19,serESPTxOutIndex+1
.LVL70:
	.loc 1 273 0 discriminator 3
	ldi r24,0
.LVL71:
.L41:
	.loc 1 273 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L42
.LVL72:
.LBB18:
.LBB19:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
.LVL73:
	.loc 2 71 0
.LVL74:
.LBE19:
.LBE18:
.LBE15:
	.loc 1 276 0
	cp r20,r18
	cpc r21,r19
	brne .L43
	.loc 1 284 0
	ldi r24,lo8(-1)
.LVL75:
	sts serESPOvflFlag,r24
	.loc 1 285 0
	ldi r30,lo8(49)
	ldi r31,lo8(1)
	ld r24,Z
	ori r24,lo8(32)
	st Z,r24
	ret
.LVL76:
.L43:
	.loc 1 289 0
	sts serESPTxInIndex+1,r21
	sts serESPTxInIndex,r20
	.loc 1 290 0
	ldi r30,lo8(49)
	ldi r31,lo8(1)
	ld r24,Z
.LVL77:
	ori r24,lo8(32)
	st Z,r24
	ret
	.cfi_endproc
.LFE25:
	.size	serial3SER_ESPSend, .-serial3SER_ESPSend
	.section	.text.serial3SER_ESP_sendStringP,"ax",@progbits
.global	serial3SER_ESP_sendStringP
	.type	serial3SER_ESP_sendStringP, @function
serial3SER_ESP_sendStringP:
.LFB26:
	.loc 1 295 0
	.cfi_startproc
.LVL78:
	push r17
.LCFI30:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI31:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI32:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r30,r24
.LVL79:
	.loc 1 296 0
	ldi r25,lo8(-1)
	.loc 1 298 0
	rjmp .L47
.LVL80:
.L49:
	.loc 1 299 0
	call serial3SER_ESPSend
.LVL81:
.LBB20:
	.loc 1 298 0
	movw r30,r28
.LBE20:
	.loc 1 298 0
	mov r25,r17
.LVL82:
.L47:
.LBB21:
	.loc 1 298 0
	movw r28,r30
	adiw r28,1
.LVL83:
	.loc 1 298 0
/* #APP */
 ;  298 ".././serial.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL84:
/* #NOAPP */
.LBE21:
	.loc 1 298 0
	tst r24
	breq .L46
	.loc 1 298 0 discriminator 1
	lds r18,serESPOvflFlag
	cpi r18,lo8(-1)
	breq .L46
	.loc 1 298 0 is_stmt 0 discriminator 2
	ldi r17,lo8(-1)
	add r17,r25
.LVL85:
	cpse r25,__zero_reg__
	rjmp .L49
.LVL86:
.L46:
/* epilogue start */
	.loc 1 301 0 is_stmt 1
	pop r29
	pop r28
.LVL87:
	pop r17
	ret
	.cfi_endproc
.LFE26:
	.size	serial3SER_ESP_sendStringP, .-serial3SER_ESP_sendStringP
	.section	.text.serial3SER_ESP_sendString,"ax",@progbits
.global	serial3SER_ESP_sendString
	.type	serial3SER_ESP_sendString, @function
serial3SER_ESP_sendString:
.LFB27:
	.loc 1 303 0
	.cfi_startproc
.LVL88:
	push r17
.LCFI33:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI34:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI35:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r30,r24
.LVL89:
	.loc 1 304 0
	ldi r25,lo8(-1)
	.loc 1 306 0
	rjmp .L51
.LVL90:
.L53:
	.loc 1 307 0
	call serial3SER_ESPSend
.LVL91:
	.loc 1 306 0
	movw r30,r28
	mov r25,r17
.LVL92:
.L51:
	movw r28,r30
	adiw r28,1
.LVL93:
	ld r24,Z
.LVL94:
	tst r24
	breq .L50
	.loc 1 306 0 is_stmt 0 discriminator 1
	lds r18,serESPOvflFlag
	cpi r18,lo8(-1)
	breq .L50
	.loc 1 306 0 discriminator 2
	ldi r17,lo8(-1)
	add r17,r25
.LVL95:
	cpse r25,__zero_reg__
	rjmp .L53
.LVL96:
.L50:
/* epilogue start */
	.loc 1 309 0 is_stmt 1
	pop r29
	pop r28
.LVL97:
	pop r17
	ret
	.cfi_endproc
.LFE27:
	.size	serial3SER_ESP_sendString, .-serial3SER_ESP_sendString
	.section	.text.serial3SER_ESP_sendCRLF,"ax",@progbits
.global	serial3SER_ESP_sendCRLF
	.type	serial3SER_ESP_sendCRLF, @function
serial3SER_ESP_sendCRLF:
.LFB28:
	.loc 1 311 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 312 0
	ldi r24,lo8(cr_lf)
	ldi r25,hi8(cr_lf)
	call serial3SER_ESP_sendStringP
.LVL98:
	ret
	.cfi_endproc
.LFE28:
	.size	serial3SER_ESP_sendCRLF, .-serial3SER_ESP_sendCRLF
	.section	.text.serial3SER_ESPReadRx,"ax",@progbits
.global	serial3SER_ESPReadRx
	.type	serial3SER_ESPReadRx, @function
serial3SER_ESPReadRx:
.LFB29:
	.loc 1 315 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 317 0
	lds r30,serESPRxOutIndex
	lds r31,serESPRxOutIndex+1
.LVL99:
	.loc 1 318 0
	lds r24,serESPRxInIndex
	lds r25,serESPRxInIndex+1
	cp r30,r24
	cpc r31,r25
	breq .L58
	.loc 1 322 0
	movw r18,r30
	subi r18,-1
	sbci r19,-1
.LVL100:
	ld r24,Z
.LVL101:
	.loc 1 323 0
	ldi r25,hi8(serESPRxBuffer+127)
	cpi r18,lo8(serESPRxBuffer+127)
	cpc r19,r25
	breq .L57
	brlo .L57
	.loc 1 325 0
	ldi r18,lo8(serESPRxBuffer)
	ldi r19,hi8(serESPRxBuffer)
.LVL102:
.L57:
	.loc 1 327 0
	sts serESPRxOutIndex+1,r19
	sts serESPRxOutIndex,r18
	ret
.LVL103:
.L58:
	.loc 1 320 0
	ldi r24,0
.LVL104:
	.loc 1 330 0
	ret
	.cfi_endproc
.LFE29:
	.size	serial3SER_ESPReadRx, .-serial3SER_ESPReadRx
	.section	.text.__vector_54,"ax",@progbits
.global	__vector_54
	.type	__vector_54, @function
__vector_54:
.LFB30:
	.loc 1 332 0
	.cfi_startproc
	push r1
.LCFI36:
	.cfi_def_cfa_offset 4
	.cfi_offset 1, -3
	push r0
.LCFI37:
	.cfi_def_cfa_offset 5
	.cfi_offset 0, -4
	in r0,__SREG__
	push r0
	clr __zero_reg__
	in r0,__RAMPZ__
	push r0
	push r18
.LCFI38:
	.cfi_def_cfa_offset 6
	.cfi_offset 18, -5
	push r19
.LCFI39:
	.cfi_def_cfa_offset 7
	.cfi_offset 19, -6
	push r20
.LCFI40:
	.cfi_def_cfa_offset 8
	.cfi_offset 20, -7
	push r21
.LCFI41:
	.cfi_def_cfa_offset 9
	.cfi_offset 21, -8
	push r24
.LCFI42:
	.cfi_def_cfa_offset 10
	.cfi_offset 24, -9
	push r25
.LCFI43:
	.cfi_def_cfa_offset 11
	.cfi_offset 25, -10
	push r30
.LCFI44:
	.cfi_def_cfa_offset 12
	.cfi_offset 30, -11
	push r31
.LCFI45:
	.cfi_def_cfa_offset 13
	.cfi_offset 31, -12
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	.loc 1 334 0
	lds r30,serESPRxInIndex
	lds r31,serESPRxInIndex+1
.LVL105:
	.loc 1 335 0
	movw r20,r30
	subi r20,-1
	sbci r21,-1
.LVL106:
	.loc 1 335 0
	lds r24,310
	.loc 1 335 0
	st Z,r24
	.loc 1 336 0
	ldi r24,hi8(serESPRxBuffer+127)
	cpi r20,lo8(serESPRxBuffer+127)
	cpc r21,r24
	breq .L61
	brlo .L61
	.loc 1 338 0
	ldi r20,lo8(serESPRxBuffer)
	ldi r21,hi8(serESPRxBuffer)
.LVL107:
.L61:
.LBB22:
	.loc 1 341 0
	in r25,__SREG__
.LVL108:
.LBB23:
.LBB24:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE24:
.LBE23:
	.loc 1 341 0
	ldi r24,lo8(1)
	rjmp .L62
.LVL109:
.L63:
	.loc 1 342 0 discriminator 3
	lds r18,serESPRxOutIndex
	lds r19,serESPRxOutIndex+1
.LVL110:
	.loc 1 341 0 discriminator 3
	ldi r24,0
.LVL111:
.L62:
	.loc 1 341 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L63
.LVL112:
.LBB25:
.LBB26:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL113:
.LBE26:
.LBE25:
.LBE22:
	.loc 1 344 0
	cp r20,r18
	cpc r21,r19
	brne .L64
	.loc 1 347 0
	ldi r24,lo8(-1)
.LVL114:
	sts serESPOvflFlag,r24
	rjmp .L60
.LVL115:
.L64:
	.loc 1 349 0
	sts serESPRxInIndex+1,r21
	sts serESPRxInIndex,r20
.LVL116:
.L60:
/* epilogue start */
	.loc 1 351 0
	pop r31
	pop r30
	pop r25
	pop r24
	pop r21
	pop r20
.LVL117:
	pop r19
	pop r18
.LVL118:
	pop r0
	out __RAMPZ__,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE30:
	.size	__vector_54, .-__vector_54
	.section	.text.__vector_55,"ax",@progbits
.global	__vector_55
	.type	__vector_55, @function
__vector_55:
.LFB31:
	.loc 1 353 0
	.cfi_startproc
	push r1
.LCFI46:
	.cfi_def_cfa_offset 4
	.cfi_offset 1, -3
	push r0
.LCFI47:
	.cfi_def_cfa_offset 5
	.cfi_offset 0, -4
	in r0,__SREG__
	push r0
	clr __zero_reg__
	in r0,__RAMPZ__
	push r0
	push r18
.LCFI48:
	.cfi_def_cfa_offset 6
	.cfi_offset 18, -5
	push r24
.LCFI49:
	.cfi_def_cfa_offset 7
	.cfi_offset 24, -6
	push r25
.LCFI50:
	.cfi_def_cfa_offset 8
	.cfi_offset 25, -7
	push r30
.LCFI51:
	.cfi_def_cfa_offset 9
	.cfi_offset 30, -8
	push r31
.LCFI52:
	.cfi_def_cfa_offset 10
	.cfi_offset 31, -9
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	.loc 1 354 0
	lds r30,serESPTxOutIndex
	lds r31,serESPTxOutIndex+1
.LVL119:
	.loc 1 355 0
	lds r24,serESPTxInIndex
	lds r25,serESPTxInIndex+1
	cp r30,r24
	cpc r31,r25
	breq .L68
	.loc 1 357 0
	movw r24,r30
	adiw r24,1
.LVL120:
	ld r18,Z
	sts 310,r18
	.loc 1 358 0
	ldi r18,hi8(serESPTxBuffer+511)
	cpi r24,lo8(serESPTxBuffer+511)
	cpc r25,r18
	breq .L69
	brlo .L69
	.loc 1 360 0
	ldi r24,lo8(serESPTxBuffer)
	ldi r25,hi8(serESPTxBuffer)
.LVL121:
.L69:
	.loc 1 362 0
	sts serESPTxOutIndex+1,r25
	sts serESPTxOutIndex,r24
	rjmp .L67
.LVL122:
.L68:
	.loc 1 365 0
	ldi r30,lo8(49)
	ldi r31,lo8(1)
.LVL123:
	ld r24,Z
	andi r24,lo8(-33)
	st Z,r24
.LVL124:
.L67:
/* epilogue start */
	.loc 1 368 0
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
.LFE31:
	.size	__vector_55, .-__vector_55
	.comm	serESPTxBuffer,512,1
	.comm	serESPRxBuffer,128,1
	.comm	serESP_Active,1,1
	.comm	serESPOvflFlag,1,1
	.comm	serESPTxInIndex,2,1
	.comm	serESPTxOutIndex,2,1
	.comm	serESPRxOutIndex,2,1
	.comm	serESPRxInIndex,2,1
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
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 ".././utils.h"
	.file 5 ".././menu.h"
	.file 6 ".././ee_prom.h"
	.file 7 ".././log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x933
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF77
	.byte	0xc
	.long	.LASF78
	.long	.LASF79
	.long	.Ldebug_ranges0+0x18
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x3
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
	.byte	0x3
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
	.uleb128 0x5
	.byte	0x2
	.long	0x30
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF10
	.uleb128 0x6
	.long	0x84
	.uleb128 0x6
	.long	0x30
	.uleb128 0x7
	.long	.LASF80
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0x8
	.long	.LASF81
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0xbb
	.uleb128 0x9
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0xbb
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x90
	.uleb128 0xa
	.byte	0x1
	.long	.LASF31
	.byte	0x1
	.byte	0x3a
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.long	.LASF11
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x119
	.uleb128 0xc
	.long	.LASF18
	.byte	0x1
	.byte	0x4a
	.long	0x30
	.long	.LLST0
	.uleb128 0xd
	.long	.LBB12
	.long	.LBE12
	.uleb128 0xe
	.long	.LASF13
	.byte	0x1
	.byte	0x4f
	.long	0x30
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF12
	.byte	0x1
	.byte	0x5e
	.long	0x30
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x146
	.uleb128 0xe
	.long	.LASF14
	.byte	0x1
	.byte	0x5f
	.long	0x30
	.long	.LLST2
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.long	.LLST3
	.byte	0x1
	.long	0x189
	.uleb128 0xe
	.long	.LASF16
	.byte	0x1
	.byte	0x6a
	.long	0x30
	.long	.LLST4
	.uleb128 0xd
	.long	.LBB13
	.long	.LBE13
	.uleb128 0xe
	.long	.LASF13
	.byte	0x1
	.byte	0x71
	.long	0x30
	.long	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST6
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.long	.LASF17
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1d6
	.uleb128 0xc
	.long	.LASF18
	.byte	0x1
	.byte	0xbb
	.long	0x30
	.long	.LLST7
	.uleb128 0x12
	.long	.LASF19
	.byte	0x1
	.byte	0xbc
	.long	0x30
	.byte	0x1
	.byte	0x69
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST8
	.byte	0x1
	.long	0x242
	.uleb128 0xc
	.long	.LASF21
	.byte	0x1
	.byte	0xa6
	.long	0x242
	.long	.LLST9
	.uleb128 0x13
	.string	"c"
	.byte	0x1
	.byte	0xa8
	.long	0x84
	.long	.LLST10
	.uleb128 0x14
	.long	.LBB14
	.long	.LBE14
	.long	0x238
	.uleb128 0xe
	.long	.LASF22
	.byte	0x1
	.byte	0xa9
	.long	0x49
	.long	.LLST11
	.uleb128 0xe
	.long	.LASF23
	.byte	0x1
	.byte	0xa9
	.long	0x30
	.long	.LLST10
	.byte	0
	.uleb128 0x15
	.long	.LVL24
	.long	0x19f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x8b
	.uleb128 0x16
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.byte	0xb7
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x26b
	.uleb128 0x15
	.long	.LVL29
	.long	0x1d6
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF25
	.byte	0x1
	.byte	0x8e
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x2d4
	.uleb128 0x15
	.long	.LVL30
	.long	0x91c
	.uleb128 0x17
	.long	.LVL31
	.long	0x929
	.long	0x2af
	.uleb128 0x18
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x18
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x34
	.uleb128 0x18
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
	.uleb128 0x15
	.long	.LVL32
	.long	0x1d6
	.uleb128 0x15
	.long	.LVL33
	.long	0x1d6
	.uleb128 0x15
	.long	.LVL34
	.long	0x248
	.uleb128 0x15
	.long	.LVL35
	.long	0x248
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST13
	.byte	0x1
	.long	0x314
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0xae
	.long	0x314
	.long	.LLST14
	.uleb128 0xe
	.long	.LASF27
	.byte	0x1
	.byte	0xb0
	.long	0x30
	.long	.LLST15
	.uleb128 0x15
	.long	.LVL40
	.long	0x19f
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.long	0x84
	.uleb128 0xf
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.byte	0xcf
	.long	0x30
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x356
	.uleb128 0xe
	.long	.LASF14
	.byte	0x1
	.byte	0xd0
	.long	0x30
	.long	.LLST16
	.uleb128 0xe
	.long	.LASF19
	.byte	0x1
	.byte	0xd1
	.long	0x30
	.long	.LLST17
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST18
	.byte	0x1
	.long	0x38f
	.uleb128 0xe
	.long	.LASF16
	.byte	0x1
	.byte	0xdc
	.long	0x30
	.long	.LLST19
	.uleb128 0xe
	.long	.LASF19
	.byte	0x1
	.byte	0xdd
	.long	0x30
	.long	.LLST20
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST21
	.byte	0x1
	.long	0x3b9
	.uleb128 0xe
	.long	.LASF19
	.byte	0x1
	.byte	0xea
	.long	0x30
	.long	.LLST22
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF32
	.byte	0x1
	.byte	0xf8
	.long	.LFB24
	.long	.LFE24
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF33
	.byte	0x1
	.word	0x106
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x471
	.uleb128 0x1b
	.long	.LASF18
	.byte	0x1
	.word	0x106
	.long	0x30
	.long	.LLST23
	.uleb128 0x1c
	.long	.LASF19
	.byte	0x1
	.word	0x107
	.long	0x7e
	.long	.LLST24
	.uleb128 0x1d
	.long	.LASF34
	.byte	0x1
	.word	0x110
	.long	0x7e
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xd
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x1c
	.long	.LASF35
	.byte	0x1
	.word	0x111
	.long	0x30
	.long	.LLST25
	.uleb128 0x1c
	.long	.LASF36
	.byte	0x1
	.word	0x111
	.long	0x30
	.long	.LLST26
	.uleb128 0x1e
	.long	0x95
	.long	.LBB16
	.long	.LBE16
	.byte	0x1
	.word	0x111
	.uleb128 0x1f
	.long	0xa2
	.long	.LBB18
	.long	.LBE18
	.byte	0x1
	.word	0x111
	.uleb128 0x20
	.long	0xaf
	.long	.LLST27
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF37
	.byte	0x1
	.word	0x127
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.long	.LLST28
	.byte	0x1
	.long	0x4ee
	.uleb128 0x1b
	.long	.LASF21
	.byte	0x1
	.word	0x127
	.long	0x242
	.long	.LLST29
	.uleb128 0x1c
	.long	.LASF27
	.byte	0x1
	.word	0x128
	.long	0x30
	.long	.LLST30
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.word	0x129
	.long	0x84
	.long	.LLST31
	.uleb128 0x23
	.long	.Ldebug_ranges0+0
	.long	0x4e4
	.uleb128 0x1c
	.long	.LASF22
	.byte	0x1
	.word	0x12a
	.long	0x49
	.long	.LLST32
	.uleb128 0x1c
	.long	.LASF23
	.byte	0x1
	.word	0x12a
	.long	0x30
	.long	.LLST31
	.byte	0
	.uleb128 0x15
	.long	.LVL81
	.long	0x3ce
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.word	0x12f
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST34
	.byte	0x1
	.long	0x53f
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.word	0x12f
	.long	0x314
	.long	.LLST35
	.uleb128 0x1c
	.long	.LASF27
	.byte	0x1
	.word	0x130
	.long	0x30
	.long	.LLST36
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.word	0x131
	.long	0x84
	.long	.LLST37
	.uleb128 0x15
	.long	.LVL91
	.long	0x3ce
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF39
	.byte	0x1
	.word	0x137
	.long	.LFB28
	.long	.LFE28
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x563
	.uleb128 0x15
	.long	.LVL98
	.long	0x471
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.word	0x13b
	.long	0x30
	.long	.LFB29
	.long	.LFE29
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x5a2
	.uleb128 0x1c
	.long	.LASF14
	.byte	0x1
	.word	0x13c
	.long	0x30
	.long	.LLST38
	.uleb128 0x1c
	.long	.LASF19
	.byte	0x1
	.word	0x13d
	.long	0x7e
	.long	.LLST39
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.word	0x14c
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST40
	.byte	0x1
	.long	0x632
	.uleb128 0x1c
	.long	.LASF19
	.byte	0x1
	.word	0x14e
	.long	0x7e
	.long	.LLST41
	.uleb128 0x1c
	.long	.LASF34
	.byte	0x1
	.word	0x154
	.long	0x7e
	.long	.LLST42
	.uleb128 0xd
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x1c
	.long	.LASF35
	.byte	0x1
	.word	0x155
	.long	0x30
	.long	.LLST43
	.uleb128 0x1c
	.long	.LASF36
	.byte	0x1
	.word	0x155
	.long	0x30
	.long	.LLST44
	.uleb128 0x1e
	.long	0x95
	.long	.LBB23
	.long	.LBE23
	.byte	0x1
	.word	0x155
	.uleb128 0x1f
	.long	0xa2
	.long	.LBB25
	.long	.LBE25
	.byte	0x1
	.word	0x155
	.uleb128 0x20
	.long	0xaf
	.long	.LLST45
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.word	0x161
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST46
	.byte	0x1
	.long	0x65e
	.uleb128 0x1c
	.long	.LASF19
	.byte	0x1
	.word	0x162
	.long	0x7e
	.long	.LLST47
	.byte	0
	.uleb128 0x27
	.long	.LASF43
	.byte	0x1
	.byte	0x2e
	.long	0x670
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPRxInIndex
	.uleb128 0x5
	.byte	0x2
	.long	0x676
	.uleb128 0x28
	.long	0x30
	.uleb128 0x27
	.long	.LASF44
	.byte	0x1
	.byte	0x2f
	.long	0x670
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPRxOutIndex
	.uleb128 0x27
	.long	.LASF45
	.byte	0x1
	.byte	0x30
	.long	0x670
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPTxOutIndex
	.uleb128 0x27
	.long	.LASF46
	.byte	0x1
	.byte	0x31
	.long	0x670
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPTxInIndex
	.uleb128 0x27
	.long	.LASF47
	.byte	0x1
	.byte	0x32
	.long	0x676
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPOvflFlag
	.uleb128 0x27
	.long	.LASF48
	.byte	0x1
	.byte	0x33
	.long	0x676
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESP_Active
	.uleb128 0x29
	.long	0x30
	.long	0x6e5
	.uleb128 0x2a
	.long	0x77
	.byte	0x7f
	.byte	0
	.uleb128 0x27
	.long	.LASF49
	.byte	0x1
	.byte	0x35
	.long	0x6d5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPRxBuffer
	.uleb128 0x29
	.long	0x30
	.long	0x708
	.uleb128 0x2b
	.long	0x77
	.word	0x1ff
	.byte	0
	.uleb128 0x27
	.long	.LASF50
	.byte	0x1
	.byte	0x36
	.long	0x6f7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPTxBuffer
	.uleb128 0x27
	.long	.LASF51
	.byte	0x1
	.byte	0x20
	.long	0x676
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serusbRxInIndex
	.uleb128 0x27
	.long	.LASF52
	.byte	0x1
	.byte	0x21
	.long	0x676
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serusbRxOutIndex
	.uleb128 0x27
	.long	.LASF53
	.byte	0x1
	.byte	0x22
	.long	0x676
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serusbTxOutIndex
	.uleb128 0x27
	.long	.LASF54
	.byte	0x1
	.byte	0x23
	.long	0x676
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serusbTxInIndex
	.uleb128 0x27
	.long	.LASF55
	.byte	0x1
	.byte	0x24
	.long	0x676
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serusbOvflFlag
	.uleb128 0x27
	.long	.LASF56
	.byte	0x1
	.byte	0x1b
	.long	0x676
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serusb_Active
	.uleb128 0x29
	.long	0x30
	.long	0x796
	.uleb128 0x2a
	.long	0x77
	.byte	0x3f
	.byte	0
	.uleb128 0x27
	.long	.LASF57
	.byte	0x1
	.byte	0x1d
	.long	0x786
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUsbRxBuffer
	.uleb128 0x29
	.long	0x30
	.long	0x7b8
	.uleb128 0x2a
	.long	0x77
	.byte	0xff
	.byte	0
	.uleb128 0x27
	.long	.LASF58
	.byte	0x1
	.byte	0x1e
	.long	0x7a8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUsbTxBuffer
	.uleb128 0x27
	.long	.LASF59
	.byte	0x1
	.byte	0x26
	.long	0x7dc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxBytesCount
	.uleb128 0x28
	.long	0x49
	.uleb128 0x27
	.long	.LASF60
	.byte	0x1
	.byte	0x27
	.long	0x7dc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxBytesCount
	.uleb128 0x27
	.long	.LASF61
	.byte	0x1
	.byte	0x16
	.long	0x676
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxInIndex
	.uleb128 0x27
	.long	.LASF62
	.byte	0x1
	.byte	0x17
	.long	0x676
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxOutIndex
	.uleb128 0x27
	.long	.LASF63
	.byte	0x1
	.byte	0x19
	.long	0x676
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxOutIndex
	.uleb128 0x27
	.long	.LASF64
	.byte	0x1
	.byte	0x18
	.long	0x676
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxInIndex
	.uleb128 0x29
	.long	0x30
	.long	0x84b
	.uleb128 0x2a
	.long	0x77
	.byte	0x1f
	.byte	0
	.uleb128 0x27
	.long	.LASF65
	.byte	0x1
	.byte	0x13
	.long	0x83b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxBuffer
	.uleb128 0x27
	.long	.LASF66
	.byte	0x1
	.byte	0x14
	.long	0x83b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxBuffer
	.uleb128 0x27
	.long	.LASF67
	.byte	0x1
	.byte	0x2b
	.long	0x676
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxOvflCount
	.uleb128 0x27
	.long	.LASF68
	.byte	0x1
	.byte	0x2c
	.long	0x676
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxOvflCount
	.uleb128 0x29
	.long	0x8b
	.long	0x89e
	.uleb128 0x2c
	.byte	0
	.uleb128 0x2d
	.long	.LASF69
	.byte	0x4
	.byte	0x67
	.long	0x8ab
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.long	0x893
	.uleb128 0x29
	.long	0x30
	.long	0x8c0
	.uleb128 0x2a
	.long	0x77
	.byte	0x9
	.byte	0
	.uleb128 0x27
	.long	.LASF70
	.byte	0x5
	.byte	0xad
	.long	0x8b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x2e
	.long	.LASF71
	.byte	0x5
	.word	0x102
	.long	0x8e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.long	0x893
	.uleb128 0x2e
	.long	.LASF72
	.byte	0x5
	.word	0x103
	.long	0x8f3
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.long	0x893
	.uleb128 0x27
	.long	.LASF73
	.byte	0x1
	.byte	0x29
	.long	0x676
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxOvfl
	.uleb128 0x27
	.long	.LASF74
	.byte	0x1
	.byte	0x2a
	.long	0x676
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxOvfl
	.uleb128 0x2f
	.byte	0x1
	.byte	0x1
	.long	.LASF75
	.long	.LASF75
	.byte	0x6
	.byte	0x1b
	.uleb128 0x2f
	.byte	0x1
	.byte	0x1
	.long	.LASF76
	.long	.LASF76
	.byte	0x7
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xa
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
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.long	.LFE12
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
	.long	.LFE13
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST3:
	.long	.LFB14
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
	.long	.LFE14
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
	.long	.LFB15
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
	.long	.LFE15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST7:
	.long	.LVL17
	.long	.LVL20
	.word	0x1
	.byte	0x68
	.long	.LVL20
	.long	.LVL21
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL21
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
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
	.long	.LFE17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST9:
	.long	.LVL22
	.long	.LVL23
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL23
	.long	.LVL25
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL25
	.long	.LVL26
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL26
	.long	.LVL28
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL28
	.long	.LFE17
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL23
	.long	.LVL24-1
	.word	0x1
	.byte	0x68
	.long	.LVL27
	.long	.LFE17
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST11:
	.long	.LVL23
	.long	.LVL24-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24-1
	.long	.LVL25
	.word	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.long	.LVL26
	.long	.LFE17
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST13:
	.long	.LFB18
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
	.long	.LFE18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST14:
	.long	.LVL36
	.long	.LVL38
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL38
	.long	.LVL42
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST15:
	.long	.LVL37
	.long	.LVL38
	.word	0x3
	.byte	0x8
	.byte	0x50
	.byte	0x9f
	.long	.LVL38
	.long	.LVL43
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST16:
	.long	.LVL46
	.long	.LVL48
	.word	0x1
	.byte	0x68
	.long	.LVL49
	.long	.LFE21
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST17:
	.long	.LVL44
	.long	.LVL45
	.word	0x1
	.byte	0x6e
	.long	.LVL45
	.long	.LVL47
	.word	0x1
	.byte	0x69
	.long	.LVL48
	.long	.LFE21
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST18:
	.long	.LFB22
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
	.long	.LFE22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST19:
	.long	.LVL51
	.long	.LVL54
	.word	0x1
	.byte	0x69
	.long	.LVL54
	.long	.LVL58
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST20:
	.long	.LVL50
	.long	.LVL52
	.word	0x1
	.byte	0x6e
	.long	.LVL52
	.long	.LVL55
	.word	0x1
	.byte	0x68
	.long	.LVL56
	.long	.LVL57
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST21:
	.long	.LFB23
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
	.long	.LFE23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	0
	.long	0
.LLST22:
	.long	.LVL59
	.long	.LVL60
	.word	0x1
	.byte	0x68
	.long	.LVL60
	.long	.LVL61
	.word	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.long	.LVL61
	.long	.LVL62
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST23:
	.long	.LVL63
	.long	.LVL66
	.word	0x1
	.byte	0x68
	.long	.LVL66
	.long	.LVL73
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL73
	.long	.LFE25
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
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
	.long	.LFE25
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST25:
	.long	.LVL68
	.long	.LVL74
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST26:
	.long	.LVL69
	.long	.LVL70
	.word	0x1
	.byte	0x68
	.long	.LVL70
	.long	.LVL71
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL71
	.long	.LVL75
	.word	0x1
	.byte	0x68
	.long	.LVL76
	.long	.LVL77
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST27:
	.long	.LVL72
	.long	.LVL74
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1061
	.sleb128 0
	.long	0
	.long	0
.LLST28:
	.long	.LFB26
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
	.long	.LFE26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST29:
	.long	.LVL78
	.long	.LVL80
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL80
	.long	.LVL82
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL82
	.long	.LVL83
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL83
	.long	.LVL87
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL87
	.long	.LFE26
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL79
	.long	.LVL80
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL80
	.long	.LVL82
	.word	0x1
	.byte	0x61
	.long	.LVL82
	.long	.LVL85
	.word	0x1
	.byte	0x69
	.long	.LVL85
	.long	.LVL86
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST31:
	.long	.LVL80
	.long	.LVL81-1
	.word	0x1
	.byte	0x68
	.long	.LVL84
	.long	.LFE26
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST32:
	.long	.LVL80
	.long	.LVL81-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL81-1
	.long	.LVL82
	.word	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.long	.LVL83
	.long	.LFE26
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST34:
	.long	.LFB27
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
	.long	.LFE27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST35:
	.long	.LVL88
	.long	.LVL90
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL90
	.long	.LVL92
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL92
	.long	.LVL93
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL93
	.long	.LVL97
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL97
	.long	.LFE27
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL89
	.long	.LVL90
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL90
	.long	.LVL92
	.word	0x1
	.byte	0x61
	.long	.LVL92
	.long	.LVL95
	.word	0x1
	.byte	0x69
	.long	.LVL95
	.long	.LVL96
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST37:
	.long	.LVL90
	.long	.LVL91-1
	.word	0x1
	.byte	0x68
	.long	.LVL94
	.long	.LFE27
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST38:
	.long	.LVL101
	.long	.LVL103
	.word	0x1
	.byte	0x68
	.long	.LVL104
	.long	.LFE29
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST39:
	.long	.LVL99
	.long	.LVL100
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL100
	.long	.LVL103
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL103
	.long	.LFE29
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST40:
	.long	.LFB30
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
	.long	.LCFI41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI41
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI42
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI43
	.long	.LCFI44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI44
	.long	.LCFI45
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI45
	.long	.LFE30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	0
	.long	0
.LLST41:
	.long	.LVL105
	.long	.LVL106
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL106
	.long	.LVL117
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST42:
	.long	.LVL109
	.long	.LVL118
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST43:
	.long	.LVL108
	.long	.LVL113
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST44:
	.long	.LVL109
	.long	.LVL110
	.word	0x1
	.byte	0x68
	.long	.LVL110
	.long	.LVL111
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL111
	.long	.LVL114
	.word	0x1
	.byte	0x68
	.long	.LVL115
	.long	.LVL116
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST45:
	.long	.LVL112
	.long	.LVL113
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1510
	.sleb128 0
	.long	0
	.long	0
.LLST46:
	.long	.LFB31
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
	.long	.LFE31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	0
	.long	0
.LLST47:
	.long	.LVL119
	.long	.LVL120
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL120
	.long	.LVL122
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL122
	.long	.LVL123
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL123
	.long	.LVL124
	.word	0x5
	.byte	0x3
	.long	serESPTxOutIndex
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xbc
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
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
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
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
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB20
	.long	.LBE20
	.long	.LBB21
	.long	.LBE21
	.long	0
	.long	0
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
	.long	.LFB20
	.long	.LFE20
	.long	.LFB17
	.long	.LFE17
	.long	.LFB19
	.long	.LFE19
	.long	.LFB16
	.long	.LFE16
	.long	.LFB18
	.long	.LFE18
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF63:
	.string	"midiTxOutIndex"
.LASF25:
	.string	"init_Serial0SerUSB"
.LASF57:
	.string	"serUsbRxBuffer"
.LASF80:
	.string	"__iCliRetVal"
.LASF22:
	.string	"__addr16"
.LASF29:
	.string	"__vector_25"
.LASF30:
	.string	"__vector_26"
.LASF8:
	.string	"long long unsigned int"
.LASF38:
	.string	"serial3SER_ESP_sendString"
.LASF72:
	.string	"HelloMsg"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF77:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF5:
	.string	"long int"
.LASF15:
	.string	"__vector_36"
.LASF82:
	.string	"__vector_37"
.LASF44:
	.string	"serESPRxOutIndex"
.LASF3:
	.string	"uint16_t"
.LASF45:
	.string	"serESPTxOutIndex"
.LASF70:
	.string	"lcdData"
.LASF54:
	.string	"serusbTxInIndex"
.LASF21:
	.string	"progmem_s"
.LASF23:
	.string	"__result"
.LASF27:
	.string	"count"
.LASF36:
	.string	"__ToDo"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long unsigned int"
.LASF65:
	.string	"midiRxBuffer"
.LASF69:
	.string	"cr_lf"
.LASF35:
	.string	"sreg_save"
.LASF18:
	.string	"data"
.LASF50:
	.string	"serESPTxBuffer"
.LASF58:
	.string	"serUsbTxBuffer"
.LASF60:
	.string	"midiRxBytesCount"
.LASF49:
	.string	"serESPRxBuffer"
.LASF41:
	.string	"__vector_54"
.LASF42:
	.string	"__vector_55"
.LASF24:
	.string	"serial0SER_USB_sendCRLF"
.LASF28:
	.string	"serial0SER_USBReadRx"
.LASF13:
	.string	"ovflCount"
.LASF9:
	.string	"sizetype"
.LASF78:
	.string	".././serial.c"
.LASF74:
	.string	"midiTxOvfl"
.LASF43:
	.string	"serESPRxInIndex"
.LASF79:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF1:
	.string	"unsigned char"
.LASF17:
	.string	"serial0SER_USBSend"
.LASF76:
	.string	"log_putError"
.LASF61:
	.string	"midiRxInIndex"
.LASF52:
	.string	"serusbRxOutIndex"
.LASF56:
	.string	"serusb_Active"
.LASF53:
	.string	"serusbTxOutIndex"
.LASF33:
	.string	"serial3SER_ESPSend"
.LASF67:
	.string	"midiRxOvflCount"
.LASF62:
	.string	"midiRxOutIndex"
.LASF75:
	.string	"eeprom_ReadUSB"
.LASF66:
	.string	"midiTxBuffer"
.LASF37:
	.string	"serial3SER_ESP_sendStringP"
.LASF10:
	.string	"char"
.LASF26:
	.string	"serial0SER_USB_sendString"
.LASF32:
	.string	"init_Serial3SerESP"
.LASF19:
	.string	"index"
.LASF11:
	.string	"serial1MIDISend"
.LASF48:
	.string	"serESP_Active"
.LASF16:
	.string	"received_byte"
.LASF81:
	.string	"__iRestore"
.LASF20:
	.string	"serial0SER_USB_sendStringP"
.LASF40:
	.string	"serial3SER_ESPReadRx"
.LASF59:
	.string	"midiTxBytesCount"
.LASF12:
	.string	"serial1MIDIReadRx"
.LASF39:
	.string	"serial3SER_ESP_sendCRLF"
.LASF2:
	.string	"uint8_t"
.LASF55:
	.string	"serusbOvflFlag"
.LASF46:
	.string	"serESPTxInIndex"
.LASF68:
	.string	"midiTxOvflCount"
.LASF51:
	.string	"serusbRxInIndex"
.LASF47:
	.string	"serESPOvflFlag"
.LASF71:
	.string	"sw_version"
.LASF73:
	.string	"midiRxOvfl"
.LASF64:
	.string	"midiTxInIndex"
.LASF14:
	.string	"result"
.LASF31:
	.string	"init_Serial1MIDI"
.LASF34:
	.string	"outIndex"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_clear_bss
