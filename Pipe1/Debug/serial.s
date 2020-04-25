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
	.loc 1 63 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 65 0
	sts 205,__zero_reg__
	.loc 1 66 0
	ldi r24,lo8(31)
	sts 204,r24
	.loc 1 67 0
	ldi r30,lo8(-55)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(-104)
	st Z,r24
	.loc 1 68 0
	ldi r30,lo8(-54)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(6)
	st Z,r24
	.loc 1 69 0
	sts midiRxInIndex,__zero_reg__
	.loc 1 70 0
	sts midiRxOutIndex,__zero_reg__
	.loc 1 71 0
	sts midiTxInIndex,__zero_reg__
	.loc 1 72 0
	sts midiTxOutIndex,__zero_reg__
	.loc 1 73 0
	sts midiRxOvfl,__zero_reg__
	.loc 1 74 0
	sts midiTxOvfl,__zero_reg__
	.loc 1 75 0
	sts midiRxOvflCount,__zero_reg__
	.loc 1 76 0
	sts midiTxOvflCount,__zero_reg__
	.loc 1 77 0
	sts midiTxLastCmd,__zero_reg__
	ret
	.cfi_endproc
.LFE11:
	.size	init_Serial1MIDI, .-init_Serial1MIDI
	.section	.text.__vector_36,"ax",@progbits
.global	__vector_36
	.type	__vector_36, @function
__vector_36:
.LFB14:
	.loc 1 131 0
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
	.loc 1 133 0
	lds r24,206
.LVL0:
	.loc 1 135 0
	lds r30,midiRxInIndex
	ldi r31,0
	subi r30,lo8(-(midiRxBuffer))
	sbci r31,hi8(-(midiRxBuffer))
	st Z,r24
	.loc 1 136 0
	lds r24,midiRxInIndex
.LVL1:
	subi r24,lo8(-(1))
.LVL2:
	.loc 1 137 0
	lds r25,midiRxOutIndex
	cpse r24,r25
	rjmp .L3
.LBB29:
	.loc 1 139 0
	lds r24,midiRxOvflCount
.LVL3:
	.loc 1 140 0
	tst r24
	breq .L4
	.loc 1 142 0
	cpi r24,lo8(-1)
	breq .L5
	.loc 1 144 0
	subi r24,lo8(-(1))
.LVL4:
	sts midiRxOvflCount,r24
	rjmp .L5
.LVL5:
.L4:
	.loc 1 148 0
	ldi r24,lo8(1)
.LVL6:
	sts midiRxOvflCount,r24
	rjmp .L5
.LVL7:
.L3:
.LBE29:
	.loc 1 152 0
	sts midiRxInIndex,r24
.LVL8:
.L5:
	.loc 1 154 0
	lds r24,midiRxBytesCount
	lds r25,midiRxBytesCount+1
	adiw r24,1
	sts midiRxBytesCount+1,r25
	sts midiRxBytesCount,r24
/* epilogue start */
	.loc 1 155 0
	pop r31
	pop r30
.LVL9:
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
	.loc 1 157 0
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
	.loc 1 158 0
	lds r25,midiTxOutIndex
	lds r24,midiTxInIndex
	cp r25,r24
	breq .L7
	.loc 1 160 0
	lds r30,midiTxOutIndex
	ldi r31,0
	subi r30,lo8(-(midiTxBuffer))
	sbci r31,hi8(-(midiTxBuffer))
	ld r24,Z
	sts 206,r24
	.loc 1 161 0
	lds r24,midiTxOutIndex
	subi r24,lo8(-(1))
	sts midiTxOutIndex,r24
	.loc 1 162 0
	lds r24,midiTxBytesCount
	lds r25,midiTxBytesCount+1
	adiw r24,1
	sts midiTxBytesCount+1,r25
	sts midiTxBytesCount,r24
	rjmp .L6
.L7:
	.loc 1 165 0
	ldi r30,lo8(-55)
	ldi r31,0
	ld r24,Z
	andi r24,lo8(-33)
	st Z,r24
.L6:
/* epilogue start */
	.loc 1 168 0
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
.LFB25:
	.loc 1 264 0
	.cfi_startproc
.LVL10:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 266 0
	lds r30,serUSBTxInIndex
	lds r31,serUSBTxInIndex+1
.LVL11:
	.loc 1 267 0
	ldi r26,lo8(-63)
	ldi r27,0
	ld r25,X
	andi r25,lo8(-33)
	st X,r25
	.loc 1 269 0
	movw r20,r30
	subi r20,-1
	sbci r21,-1
.LVL12:
	st Z,r24
	.loc 1 271 0
	ldi r24,hi8(serUSBTxBuffer+2047)
	cpi r20,lo8(serUSBTxBuffer+2047)
	cpc r21,r24
.LVL13:
	breq .L10
	brlo .L10
	.loc 1 272 0
	ldi r20,lo8(serUSBTxBuffer)
	ldi r21,hi8(serUSBTxBuffer)
.LVL14:
.L10:
.LBB30:
	.loc 1 276 0
	in r25,__SREG__
.LVL15:
.LBB31:
.LBB32:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE32:
.LBE31:
	.loc 1 276 0
	ldi r24,lo8(1)
	rjmp .L11
.LVL16:
.L12:
	.loc 1 277 0 discriminator 3
	lds r18,serUSBTxOutIndex
	lds r19,serUSBTxOutIndex+1
.LVL17:
	.loc 1 276 0 discriminator 3
	ldi r24,0
.LVL18:
.L11:
	.loc 1 276 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L12
.LVL19:
.LBB33:
.LBB34:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
.LVL20:
	.loc 2 71 0
.LVL21:
.LBE34:
.LBE33:
.LBE30:
	.loc 1 279 0
	cp r20,r18
	cpc r21,r19
	brne .L13
	.loc 1 287 0
	ldi r24,lo8(-1)
.LVL22:
	sts serUSBOvflFlag,r24
	.loc 1 288 0
	ldi r30,lo8(-63)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(32)
	st Z,r24
	ret
.LVL23:
.L13:
	.loc 1 292 0
	sts serUSBTxInIndex+1,r21
	sts serUSBTxInIndex,r20
	.loc 1 293 0
	ldi r30,lo8(-63)
	ldi r31,0
	ld r24,Z
.LVL24:
	ori r24,lo8(32)
	st Z,r24
	ret
	.cfi_endproc
.LFE25:
	.size	serial0SER_USBSend, .-serial0SER_USBSend
	.section	.text.serial0USB_logMIDIin,"ax",@progbits
.global	serial0USB_logMIDIin
	.type	serial0USB_logMIDIin, @function
serial0USB_logMIDIin:
.LFB17:
	.loc 1 197 0
	.cfi_startproc
.LVL25:
	push r28
.LCFI12:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 198 0
	lds r25,serUSB_Active
	tst r25
	breq .L16
	mov r28,r24
	.loc 1 199 0
	ldi r24,lo8(105)
.LVL26:
	call serial0SER_USBSend
.LVL27:
	.loc 1 200 0
	mov r24,r28
	swap r24
	andi r24,lo8(15)
	call nibbleToChr
.LVL28:
	call serial0SER_USBSend
.LVL29:
	.loc 1 201 0
	mov r24,r28
	andi r24,lo8(15)
	call nibbleToChr
.LVL30:
	call serial0SER_USBSend
.LVL31:
.L16:
/* epilogue start */
	.loc 1 203 0
	pop r28
	ret
	.cfi_endproc
.LFE17:
	.size	serial0USB_logMIDIin, .-serial0USB_logMIDIin
	.section	.text.serial1MIDIReadRx,"ax",@progbits
.global	serial1MIDIReadRx
	.type	serial1MIDIReadRx, @function
serial1MIDIReadRx:
.LFB13:
	.loc 1 119 0
	.cfi_startproc
	push r28
.LCFI13:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 121 0
	lds r25,midiRxInIndex
	lds r24,midiRxOutIndex
	cp r25,r24
	breq .L20
	.loc 1 124 0
	lds r30,midiRxOutIndex
	ldi r31,0
	subi r30,lo8(-(midiRxBuffer))
	sbci r31,hi8(-(midiRxBuffer))
	ld r28,Z
.LVL32:
	.loc 1 125 0
	mov r24,r28
	call serial0USB_logMIDIin
.LVL33:
	.loc 1 126 0
	lds r24,midiRxOutIndex
	subi r24,lo8(-(1))
	sts midiRxOutIndex,r24
	rjmp .L19
.LVL34:
.L20:
	.loc 1 122 0
	ldi r28,lo8(-3)
.L19:
.LVL35:
	.loc 1 129 0
	mov r24,r28
/* epilogue start */
	pop r28
.LVL36:
	ret
	.cfi_endproc
.LFE13:
	.size	serial1MIDIReadRx, .-serial1MIDIReadRx
	.section	.text.serial0USB_logMIDIout,"ax",@progbits
.global	serial0USB_logMIDIout
	.type	serial0USB_logMIDIout, @function
serial0USB_logMIDIout:
.LFB18:
	.loc 1 205 0
	.cfi_startproc
.LVL37:
	push r28
.LCFI14:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 206 0
	lds r25,serUSB_Active
	tst r25
	breq .L21
	mov r28,r24
	.loc 1 207 0
	ldi r24,lo8(111)
.LVL38:
	call serial0SER_USBSend
.LVL39:
	.loc 1 208 0
	mov r24,r28
	swap r24
	andi r24,lo8(15)
	call nibbleToChr
.LVL40:
	call serial0SER_USBSend
.LVL41:
	.loc 1 209 0
	mov r24,r28
	andi r24,lo8(15)
	call nibbleToChr
.LVL42:
	call serial0SER_USBSend
.LVL43:
.L21:
/* epilogue start */
	.loc 1 211 0
	pop r28
	ret
	.cfi_endproc
.LFE18:
	.size	serial0USB_logMIDIout, .-serial0USB_logMIDIout
	.section	.text.serial1MIDISend,"ax",@progbits
.global	serial1MIDISend
	.type	serial1MIDISend, @function
serial1MIDISend:
.LFB12:
	.loc 1 80 0
	.cfi_startproc
.LVL44:
	push r28
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 83 0
	lds r25,midi_Setting+1
	tst r25
	breq .L24
	.loc 1 83 0 is_stmt 0 discriminator 1
	tst r24
	brge .L24
	.loc 1 84 0 is_stmt 1
	lds r25,midiTxLastCmd
	cp r24,r25
	brne .+2
	rjmp .L23
	.loc 1 87 0
	cpi r24,lo8(-96)
	brsh .L26
	.loc 1 88 0
	sts midiTxLastCmd,r24
	rjmp .L24
.L26:
	.loc 1 90 0
	sts midiTxLastCmd,__zero_reg__
.L24:
.LBB35:
	.loc 1 94 0
	in r18,__SREG__
.LVL45:
.LBB36:
.LBB37:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE37:
.LBE36:
	.loc 1 94 0
	ldi r25,lo8(1)
	rjmp .L27
.LVL46:
.L28:
	.loc 1 94 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r25,lo8(10)
.LVL47:
	std Z+16,r25
	std Z+17,__zero_reg__
.LVL48:
	.loc 1 94 0 discriminator 3
	ldi r25,0
.LVL49:
.L27:
	.loc 1 94 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L28
	mov r28,r24
.LVL50:
.LBB38:
.LBB39:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r18
	.loc 2 71 0
.LVL51:
.LBE39:
.LBE38:
.LBE35:
	.loc 1 95 0
	ldi r30,lo8(-55)
	ldi r31,0
	ld r24,Z
.LVL52:
	andi r24,lo8(-33)
	st Z,r24
	.loc 1 96 0
	mov r24,r28
	call serial0USB_logMIDIout
.LVL53:
	.loc 1 97 0
	lds r30,midiTxInIndex
	ldi r31,0
	subi r30,lo8(-(midiTxBuffer))
	sbci r31,hi8(-(midiTxBuffer))
	st Z,r28
	.loc 1 98 0
	lds r24,midiTxInIndex
	subi r24,lo8(-(1))
.LVL54:
	.loc 1 99 0
	lds r25,midiTxOutIndex
	cpse r24,r25
	rjmp .L29
.LBB40:
	.loc 1 101 0
	lds r24,midiTxOvflCount
.LVL55:
	.loc 1 102 0
	tst r24
	breq .L30
	.loc 1 104 0
	cpi r24,lo8(-1)
	breq .L31
	.loc 1 106 0
	subi r24,lo8(-(1))
.LVL56:
	sts midiTxOvflCount,r24
	rjmp .L31
.LVL57:
.L30:
	.loc 1 110 0
	ldi r24,lo8(1)
.LVL58:
	sts midiTxOvflCount,r24
	rjmp .L31
.LVL59:
.L29:
.LBE40:
	.loc 1 114 0
	sts midiTxInIndex,r24
.LVL60:
.L31:
	.loc 1 116 0
	ldi r30,lo8(-55)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(32)
	st Z,r24
.LVL61:
.L23:
/* epilogue start */
	.loc 1 117 0
	pop r28
	ret
	.cfi_endproc
.LFE12:
	.size	serial1MIDISend, .-serial1MIDISend
	.section	.text.serial0USB_logPipeIn,"ax",@progbits
.global	serial0USB_logPipeIn
	.type	serial0USB_logPipeIn, @function
serial0USB_logPipeIn:
.LFB19:
	.loc 1 213 0
	.cfi_startproc
.LVL62:
	push r28
.LCFI16:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI17:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 214 0
	lds r18,serUSB_Active
	tst r18
	breq .L32
	mov r28,r25
	mov r29,r24
	.loc 1 215 0
	ldi r24,lo8(107)
.LVL63:
	call serial0SER_USBSend
.LVL64:
	.loc 1 216 0
	mov r24,r28
	swap r24
	andi r24,lo8(15)
	call nibbleToChr
.LVL65:
	call serial0SER_USBSend
.LVL66:
	.loc 1 217 0
	andi r28,lo8(15)
	mov r24,r28
	call nibbleToChr
.LVL67:
	call serial0SER_USBSend
.LVL68:
	.loc 1 218 0
	mov r24,r29
	swap r24
	andi r24,lo8(15)
	call nibbleToChr
.LVL69:
	call serial0SER_USBSend
.LVL70:
	.loc 1 219 0
	mov r24,r28
	call nibbleToChr
.LVL71:
	call serial0SER_USBSend
.LVL72:
.L32:
/* epilogue start */
	.loc 1 221 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE19:
	.size	serial0USB_logPipeIn, .-serial0USB_logPipeIn
	.section	.text.serial0USB_logPipeOutOn,"ax",@progbits
.global	serial0USB_logPipeOutOn
	.type	serial0USB_logPipeOutOn, @function
serial0USB_logPipeOutOn:
.LFB20:
	.loc 1 223 0
	.cfi_startproc
.LVL73:
	push r28
.LCFI18:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI19:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 224 0
	lds r25,serUSB_Active
	tst r25
	breq .L34
	mov r28,r22
	mov r29,r24
	.loc 1 225 0
	ldi r24,lo8(112)
.LVL74:
	call serial0SER_USBSend
.LVL75:
	.loc 1 226 0
	mov r24,r29
	swap r24
	andi r24,lo8(15)
	call nibbleToChr
.LVL76:
	call serial0SER_USBSend
.LVL77:
	.loc 1 227 0
	mov r24,r29
	andi r24,lo8(15)
	call nibbleToChr
.LVL78:
	call serial0SER_USBSend
.LVL79:
	.loc 1 228 0
	mov r24,r28
	swap r24
	andi r24,lo8(15)
	call nibbleToChr
.LVL80:
	call serial0SER_USBSend
.LVL81:
	.loc 1 229 0
	mov r24,r28
	andi r24,lo8(15)
	call nibbleToChr
.LVL82:
	call serial0SER_USBSend
.LVL83:
.L34:
/* epilogue start */
	.loc 1 231 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE20:
	.size	serial0USB_logPipeOutOn, .-serial0USB_logPipeOutOn
	.section	.text.serial0USB_logPipeOutOff,"ax",@progbits
.global	serial0USB_logPipeOutOff
	.type	serial0USB_logPipeOutOff, @function
serial0USB_logPipeOutOff:
.LFB21:
	.loc 1 233 0
	.cfi_startproc
.LVL84:
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
	.loc 1 234 0
	lds r25,serUSB_Active
	tst r25
	breq .L36
	mov r28,r22
	mov r29,r24
	.loc 1 235 0
	ldi r24,lo8(113)
.LVL85:
	call serial0SER_USBSend
.LVL86:
	.loc 1 236 0
	mov r24,r29
	swap r24
	andi r24,lo8(15)
	call nibbleToChr
.LVL87:
	call serial0SER_USBSend
.LVL88:
	.loc 1 237 0
	mov r24,r29
	andi r24,lo8(15)
	call nibbleToChr
.LVL89:
	call serial0SER_USBSend
.LVL90:
	.loc 1 238 0
	mov r24,r28
	swap r24
	andi r24,lo8(15)
	call nibbleToChr
.LVL91:
	call serial0SER_USBSend
.LVL92:
	.loc 1 239 0
	mov r24,r28
	andi r24,lo8(15)
	call nibbleToChr
.LVL93:
	call serial0SER_USBSend
.LVL94:
.L36:
/* epilogue start */
	.loc 1 241 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE21:
	.size	serial0USB_logPipeOutOff, .-serial0USB_logPipeOutOff
	.section	.text.serial0SER_USB_sendStringP,"ax",@progbits
.global	serial0SER_USB_sendStringP
	.type	serial0SER_USB_sendStringP, @function
serial0SER_USB_sendStringP:
.LFB22:
	.loc 1 244 0
	.cfi_startproc
.LVL95:
	push r28
.LCFI22:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI23:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	.loc 1 246 0
	rjmp .L39
.LVL96:
.L41:
	.loc 1 247 0
	call serial0SER_USBSend
.LVL97:
.LBB41:
	.loc 1 246 0
	movw r30,r28
.LVL98:
.L39:
	movw r28,r30
	adiw r28,1
.LVL99:
	.loc 1 246 0
/* #APP */
 ;  246 ".././serial.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL100:
/* #NOAPP */
.LBE41:
	.loc 1 246 0
	tst r24
	breq .L38
	.loc 1 246 0 discriminator 1
	lds r25,serUSBOvflFlag
	cpi r25,lo8(-1)
	brne .L41
.L38:
/* epilogue start */
	.loc 1 249 0
	pop r29
	pop r28
.LVL101:
	ret
	.cfi_endproc
.LFE22:
	.size	serial0SER_USB_sendStringP, .-serial0SER_USB_sendStringP
	.section	.text.serial0SER_USB_sendCRLF,"ax",@progbits
.global	serial0SER_USB_sendCRLF
	.type	serial0SER_USB_sendCRLF, @function
serial0SER_USB_sendCRLF:
.LFB24:
	.loc 1 260 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 261 0
	ldi r24,lo8(cr_lf)
	ldi r25,hi8(cr_lf)
	call serial0SER_USB_sendStringP
.LVL102:
	ret
	.cfi_endproc
.LFE24:
	.size	serial0SER_USB_sendCRLF, .-serial0SER_USB_sendCRLF
	.section	.text.init_Serial0SerUSB,"ax",@progbits
.global	init_Serial0SerUSB
	.type	init_Serial0SerUSB, @function
init_Serial0SerUSB:
.LFB16:
	.loc 1 172 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 174 0
	sts 197,__zero_reg__
	.loc 1 175 0
	ldi r24,lo8(8)
	sts 196,r24
	.loc 1 176 0
	ldi r30,lo8(-63)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(-104)
	st Z,r24
	.loc 1 177 0
	ldi r30,lo8(-62)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(6)
	st Z,r24
	.loc 1 178 0
	ldi r24,lo8(serUSBRxBuffer)
	ldi r25,hi8(serUSBRxBuffer)
	sts serUSBRxInIndex+1,r25
	sts serUSBRxInIndex,r24
	.loc 1 179 0
	sts serUSBRxOutIndex+1,r25
	sts serUSBRxOutIndex,r24
	.loc 1 180 0
	ldi r24,lo8(serUSBTxBuffer)
	ldi r25,hi8(serUSBTxBuffer)
	sts serUSBTxOutIndex+1,r25
	sts serUSBTxOutIndex,r24
	.loc 1 181 0
	sts serUSBTxInIndex+1,r25
	sts serUSBTxInIndex,r24
	.loc 1 183 0
	sts serUSBOvflFlag,__zero_reg__
	.loc 1 184 0
	call eeprom_ReadUSB
.LVL103:
	cpi r24,lo8(-1)
	brne .L44
	.loc 1 185 0
	sts serUSB_Active,__zero_reg__
	.loc 1 186 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(4)
	ldi r24,lo8(1)
	call log_putError
.LVL104:
.L44:
	.loc 1 188 0
	lds r24,serUSB_Active
	cpi r24,lo8(-1)
	brne .L43
	.loc 1 189 0
	ldi r24,lo8(HelloMsg)
	ldi r25,hi8(HelloMsg)
	call serial0SER_USB_sendStringP
.LVL105:
	.loc 1 190 0
	ldi r24,lo8(sw_version)
	ldi r25,hi8(sw_version)
	call serial0SER_USB_sendStringP
.LVL106:
	.loc 1 191 0
	call serial0SER_USB_sendCRLF
.LVL107:
	.loc 1 192 0
	call serial0SER_USB_sendCRLF
.LVL108:
.L43:
	ret
	.cfi_endproc
.LFE16:
	.size	init_Serial0SerUSB, .-init_Serial0SerUSB
	.section	.text.serial0SER_USB_sendString,"ax",@progbits
.global	serial0SER_USB_sendString
	.type	serial0SER_USB_sendString, @function
serial0SER_USB_sendString:
.LFB23:
	.loc 1 252 0
	.cfi_startproc
.LVL109:
	push r17
.LCFI24:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI25:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI26:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r28,r24
.LVL110:
	.loc 1 253 0
	ldi r17,lo8(80)
	.loc 1 254 0
	rjmp .L47
.LVL111:
.L49:
	.loc 1 255 0
	adiw r28,1
.LVL112:
	call serial0SER_USBSend
.LVL113:
	.loc 1 256 0
	subi r17,lo8(-(-1))
.LVL114:
.L47:
	.loc 1 254 0
	ld r24,Y
	tst r24
	breq .L46
	.loc 1 254 0 is_stmt 0 discriminator 1
	lds r25,serUSBOvflFlag
	cpi r25,lo8(-1)
	breq .L46
	.loc 1 254 0 discriminator 2
	cpse r17,__zero_reg__
	rjmp .L49
.L46:
/* epilogue start */
	.loc 1 258 0 is_stmt 1
	pop r29
	pop r28
.LVL115:
	pop r17
.LVL116:
	ret
	.cfi_endproc
.LFE23:
	.size	serial0SER_USB_sendString, .-serial0SER_USB_sendString
	.section	.text.serial0SER_USBReadRx,"ax",@progbits
.global	serial0SER_USBReadRx
	.type	serial0SER_USBReadRx, @function
serial0SER_USBReadRx:
.LFB26:
	.loc 1 297 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 299 0
	lds r30,serUSBRxOutIndex
	lds r31,serUSBRxOutIndex+1
.LVL117:
	.loc 1 300 0
	lds r24,serUSBRxInIndex
	lds r25,serUSBRxInIndex+1
	cp r30,r24
	cpc r31,r25
	breq .L53
	.loc 1 304 0
	movw r18,r30
	subi r18,-1
	sbci r19,-1
.LVL118:
	ld r24,Z
.LVL119:
	.loc 1 305 0
	ldi r25,hi8(serUSBRxBuffer+63)
	cpi r18,lo8(serUSBRxBuffer+63)
	cpc r19,r25
	breq .L52
	brlo .L52
	.loc 1 307 0
	ldi r18,lo8(serUSBRxBuffer)
	ldi r19,hi8(serUSBRxBuffer)
.LVL120:
.L52:
	.loc 1 309 0
	sts serUSBRxOutIndex+1,r19
	sts serUSBRxOutIndex,r18
	ret
.LVL121:
.L53:
	.loc 1 302 0
	ldi r24,0
.LVL122:
	.loc 1 312 0
	ret
	.cfi_endproc
.LFE26:
	.size	serial0SER_USBReadRx, .-serial0SER_USBReadRx
	.section	.text.__vector_25,"ax",@progbits
.global	__vector_25
	.type	__vector_25, @function
__vector_25:
.LFB27:
	.loc 1 314 0
	.cfi_startproc
	push r1
.LCFI27:
	.cfi_def_cfa_offset 4
	.cfi_offset 1, -3
	push r0
.LCFI28:
	.cfi_def_cfa_offset 5
	.cfi_offset 0, -4
	in r0,__SREG__
	push r0
	clr __zero_reg__
	in r0,__RAMPZ__
	push r0
	push r18
.LCFI29:
	.cfi_def_cfa_offset 6
	.cfi_offset 18, -5
	push r19
.LCFI30:
	.cfi_def_cfa_offset 7
	.cfi_offset 19, -6
	push r20
.LCFI31:
	.cfi_def_cfa_offset 8
	.cfi_offset 20, -7
	push r21
.LCFI32:
	.cfi_def_cfa_offset 9
	.cfi_offset 21, -8
	push r24
.LCFI33:
	.cfi_def_cfa_offset 10
	.cfi_offset 24, -9
	push r25
.LCFI34:
	.cfi_def_cfa_offset 11
	.cfi_offset 25, -10
	push r30
.LCFI35:
	.cfi_def_cfa_offset 12
	.cfi_offset 30, -11
	push r31
.LCFI36:
	.cfi_def_cfa_offset 13
	.cfi_offset 31, -12
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	.loc 1 316 0
	lds r30,serUSBRxInIndex
	lds r31,serUSBRxInIndex+1
.LVL123:
	.loc 1 317 0
	movw r20,r30
	subi r20,-1
	sbci r21,-1
.LVL124:
	.loc 1 317 0
	lds r24,198
	.loc 1 317 0
	st Z,r24
	.loc 1 318 0
	ldi r24,hi8(serUSBRxBuffer+63)
	cpi r20,lo8(serUSBRxBuffer+63)
	cpc r21,r24
	breq .L56
	brlo .L56
	.loc 1 320 0
	ldi r20,lo8(serUSBRxBuffer)
	ldi r21,hi8(serUSBRxBuffer)
.LVL125:
.L56:
.LBB42:
	.loc 1 323 0
	in r25,__SREG__
.LVL126:
.LBB43:
.LBB44:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE44:
.LBE43:
	.loc 1 323 0
	ldi r24,lo8(1)
	rjmp .L57
.LVL127:
.L58:
	.loc 1 324 0 discriminator 3
	lds r18,serUSBRxOutIndex
	lds r19,serUSBRxOutIndex+1
.LVL128:
	.loc 1 323 0 discriminator 3
	ldi r24,0
.LVL129:
.L57:
	.loc 1 323 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L58
.LVL130:
.LBB45:
.LBB46:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL131:
.LBE46:
.LBE45:
.LBE42:
	.loc 1 326 0
	cp r20,r18
	cpc r21,r19
	brne .L59
	.loc 1 329 0
	ldi r24,lo8(-1)
.LVL132:
	sts serUSBOvflFlag,r24
	rjmp .L55
.LVL133:
.L59:
	.loc 1 331 0
	sts serUSBRxInIndex+1,r21
	sts serUSBRxInIndex,r20
.LVL134:
.L55:
/* epilogue start */
	.loc 1 333 0
	pop r31
	pop r30
	pop r25
	pop r24
	pop r21
	pop r20
.LVL135:
	pop r19
	pop r18
.LVL136:
	pop r0
	out __RAMPZ__,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE27:
	.size	__vector_25, .-__vector_25
	.section	.text.__vector_26,"ax",@progbits
.global	__vector_26
	.type	__vector_26, @function
__vector_26:
.LFB28:
	.loc 1 335 0
	.cfi_startproc
	push r1
.LCFI37:
	.cfi_def_cfa_offset 4
	.cfi_offset 1, -3
	push r0
.LCFI38:
	.cfi_def_cfa_offset 5
	.cfi_offset 0, -4
	in r0,__SREG__
	push r0
	clr __zero_reg__
	in r0,__RAMPZ__
	push r0
	push r18
.LCFI39:
	.cfi_def_cfa_offset 6
	.cfi_offset 18, -5
	push r24
.LCFI40:
	.cfi_def_cfa_offset 7
	.cfi_offset 24, -6
	push r25
.LCFI41:
	.cfi_def_cfa_offset 8
	.cfi_offset 25, -7
	push r30
.LCFI42:
	.cfi_def_cfa_offset 9
	.cfi_offset 30, -8
	push r31
.LCFI43:
	.cfi_def_cfa_offset 10
	.cfi_offset 31, -9
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	.loc 1 336 0
	lds r30,serUSBTxOutIndex
	lds r31,serUSBTxOutIndex+1
.LVL137:
	.loc 1 337 0
	lds r24,serUSBTxInIndex
	lds r25,serUSBTxInIndex+1
	cp r30,r24
	cpc r31,r25
	breq .L63
	.loc 1 339 0
	movw r24,r30
	adiw r24,1
.LVL138:
	ld r18,Z
	sts 198,r18
	.loc 1 340 0
	ldi r18,hi8(serUSBTxBuffer+2047)
	cpi r24,lo8(serUSBTxBuffer+2047)
	cpc r25,r18
	breq .L64
	brlo .L64
	.loc 1 342 0
	ldi r24,lo8(serUSBTxBuffer)
	ldi r25,hi8(serUSBTxBuffer)
.LVL139:
.L64:
	.loc 1 344 0
	sts serUSBTxOutIndex+1,r25
	sts serUSBTxOutIndex,r24
	rjmp .L62
.LVL140:
.L63:
	.loc 1 347 0
	ldi r30,lo8(-63)
	ldi r31,0
.LVL141:
	ld r24,Z
	andi r24,lo8(-33)
	st Z,r24
.LVL142:
.L62:
/* epilogue start */
	.loc 1 350 0
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
.LFE28:
	.size	__vector_26, .-__vector_26
	.section	.text.init_Serial3SerESP,"ax",@progbits
.global	init_Serial3SerESP
	.type	init_Serial3SerESP, @function
init_Serial3SerESP:
.LFB29:
	.loc 1 356 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 357 0
	sts 309,__zero_reg__
	.loc 1 358 0
	ldi r24,lo8(8)
	sts 308,r24
	.loc 1 359 0
	ldi r30,lo8(49)
	ldi r31,lo8(1)
	ld r24,Z
	ori r24,lo8(-104)
	st Z,r24
	.loc 1 360 0
	ldi r30,lo8(50)
	ldi r31,lo8(1)
	ld r24,Z
	ori r24,lo8(6)
	st Z,r24
	.loc 1 361 0
	ldi r24,lo8(serESPRxBuffer)
	ldi r25,hi8(serESPRxBuffer)
	sts serESPRxInIndex+1,r25
	sts serESPRxInIndex,r24
	.loc 1 362 0
	sts serESPRxOutIndex+1,r25
	sts serESPRxOutIndex,r24
	.loc 1 363 0
	ldi r24,lo8(serESPTxBuffer)
	ldi r25,hi8(serESPTxBuffer)
	sts serESPTxOutIndex+1,r25
	sts serESPTxOutIndex,r24
	.loc 1 364 0
	sts serESPTxInIndex+1,r25
	sts serESPTxInIndex,r24
	.loc 1 365 0
	sts serESPOvflFlag,__zero_reg__
	.loc 1 366 0
	ldi r24,lo8(-1)
	sts serESP_Active,r24
.LVL143:
.LBB47:
	.loc 1 367 0
	ldi r24,0
	rjmp .L68
.LVL144:
.L69:
	.loc 1 368 0 discriminator 3
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(serESPInBuffer))
	sbci r31,hi8(-(serESPInBuffer))
	ldi r25,lo8(-1)
	st Z,r25
	.loc 1 367 0 discriminator 3
	subi r24,lo8(-(1))
.LVL145:
.L68:
	.loc 1 367 0 is_stmt 0 discriminator 1
	cpi r24,lo8(8)
	brlo .L69
/* epilogue start */
.LBE47:
	.loc 1 370 0 is_stmt 1
	ret
	.cfi_endproc
.LFE29:
	.size	init_Serial3SerESP, .-init_Serial3SerESP
	.section	.text.serial3SER_ESPSend,"ax",@progbits
.global	serial3SER_ESPSend
	.type	serial3SER_ESPSend, @function
serial3SER_ESPSend:
.LFB30:
	.loc 1 372 0
	.cfi_startproc
.LVL146:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 373 0
	lds r30,serESPTxInIndex
	lds r31,serESPTxInIndex+1
.LVL147:
	.loc 1 374 0
	ldi r26,lo8(49)
	ldi r27,lo8(1)
	ld r25,X
	andi r25,lo8(-33)
	st X,r25
	.loc 1 376 0
	movw r20,r30
	subi r20,-1
	sbci r21,-1
.LVL148:
	st Z,r24
	.loc 1 378 0
	ldi r24,hi8(serESPTxBuffer+511)
	cpi r20,lo8(serESPTxBuffer+511)
	cpc r21,r24
.LVL149:
	breq .L71
	brlo .L71
	.loc 1 379 0
	ldi r20,lo8(serESPTxBuffer)
	ldi r21,hi8(serESPTxBuffer)
.LVL150:
.L71:
.LBB48:
	.loc 1 383 0
	in r25,__SREG__
.LVL151:
.LBB49:
.LBB50:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE50:
.LBE49:
	.loc 1 383 0
	ldi r24,lo8(1)
	rjmp .L72
.LVL152:
.L73:
	.loc 1 384 0 discriminator 3
	lds r18,serESPTxOutIndex
	lds r19,serESPTxOutIndex+1
.LVL153:
	.loc 1 383 0 discriminator 3
	ldi r24,0
.LVL154:
.L72:
	.loc 1 383 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L73
.LVL155:
.LBB51:
.LBB52:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
.LVL156:
	.loc 2 71 0
.LVL157:
.LBE52:
.LBE51:
.LBE48:
	.loc 1 386 0
	cp r20,r18
	cpc r21,r19
	brne .L74
	.loc 1 394 0
	ldi r24,lo8(-1)
.LVL158:
	sts serESPOvflFlag,r24
	.loc 1 395 0
	ldi r30,lo8(49)
	ldi r31,lo8(1)
	ld r24,Z
	ori r24,lo8(32)
	st Z,r24
	ret
.LVL159:
.L74:
	.loc 1 399 0
	sts serESPTxInIndex+1,r21
	sts serESPTxInIndex,r20
	.loc 1 400 0
	ldi r30,lo8(49)
	ldi r31,lo8(1)
	ld r24,Z
.LVL160:
	ori r24,lo8(32)
	st Z,r24
	ret
	.cfi_endproc
.LFE30:
	.size	serial3SER_ESPSend, .-serial3SER_ESPSend
	.section	.text.serial3SER_ESP_sendStringP,"ax",@progbits
.global	serial3SER_ESP_sendStringP
	.type	serial3SER_ESP_sendStringP, @function
serial3SER_ESP_sendStringP:
.LFB31:
	.loc 1 405 0
	.cfi_startproc
.LVL161:
	push r17
.LCFI44:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI45:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI46:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r30,r24
.LVL162:
	.loc 1 406 0
	ldi r25,lo8(-1)
	.loc 1 408 0
	rjmp .L78
.LVL163:
.L80:
	.loc 1 409 0
	call serial3SER_ESPSend
.LVL164:
.LBB53:
	.loc 1 408 0
	movw r30,r28
.LBE53:
	.loc 1 408 0
	mov r25,r17
.LVL165:
.L78:
.LBB54:
	.loc 1 408 0
	movw r28,r30
	adiw r28,1
.LVL166:
	.loc 1 408 0
/* #APP */
 ;  408 ".././serial.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL167:
/* #NOAPP */
.LBE54:
	.loc 1 408 0
	tst r24
	breq .L77
	.loc 1 408 0 discriminator 1
	lds r18,serESPOvflFlag
	cpi r18,lo8(-1)
	breq .L77
	.loc 1 408 0 is_stmt 0 discriminator 2
	ldi r17,lo8(-1)
	add r17,r25
.LVL168:
	cpse r25,__zero_reg__
	rjmp .L80
.LVL169:
.L77:
/* epilogue start */
	.loc 1 411 0 is_stmt 1
	pop r29
	pop r28
.LVL170:
	pop r17
	ret
	.cfi_endproc
.LFE31:
	.size	serial3SER_ESP_sendStringP, .-serial3SER_ESP_sendStringP
	.section	.text.serial3SER_ESP_sendString,"ax",@progbits
.global	serial3SER_ESP_sendString
	.type	serial3SER_ESP_sendString, @function
serial3SER_ESP_sendString:
.LFB32:
	.loc 1 413 0
	.cfi_startproc
.LVL171:
	push r17
.LCFI47:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI48:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI49:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r30,r24
.LVL172:
	.loc 1 414 0
	ldi r25,lo8(-1)
	.loc 1 416 0
	rjmp .L82
.LVL173:
.L84:
	.loc 1 417 0
	call serial3SER_ESPSend
.LVL174:
	.loc 1 416 0
	movw r30,r28
	mov r25,r17
.LVL175:
.L82:
	movw r28,r30
	adiw r28,1
.LVL176:
	ld r24,Z
.LVL177:
	tst r24
	breq .L81
	.loc 1 416 0 is_stmt 0 discriminator 1
	lds r18,serESPOvflFlag
	cpi r18,lo8(-1)
	breq .L81
	.loc 1 416 0 discriminator 2
	ldi r17,lo8(-1)
	add r17,r25
.LVL178:
	cpse r25,__zero_reg__
	rjmp .L84
.LVL179:
.L81:
/* epilogue start */
	.loc 1 419 0 is_stmt 1
	pop r29
	pop r28
.LVL180:
	pop r17
	ret
	.cfi_endproc
.LFE32:
	.size	serial3SER_ESP_sendString, .-serial3SER_ESP_sendString
	.section	.text.serial3SER_ESP_sendCRLF,"ax",@progbits
.global	serial3SER_ESP_sendCRLF
	.type	serial3SER_ESP_sendCRLF, @function
serial3SER_ESP_sendCRLF:
.LFB33:
	.loc 1 421 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 422 0
	ldi r24,lo8(cr_lf)
	ldi r25,hi8(cr_lf)
	call serial3SER_ESP_sendStringP
.LVL181:
	ret
	.cfi_endproc
.LFE33:
	.size	serial3SER_ESP_sendCRLF, .-serial3SER_ESP_sendCRLF
	.section	.text.serial3SER_ESPReadRx,"ax",@progbits
.global	serial3SER_ESPReadRx
	.type	serial3SER_ESPReadRx, @function
serial3SER_ESPReadRx:
.LFB34:
	.loc 1 425 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 427 0
	lds r30,serESPRxOutIndex
	lds r31,serESPRxOutIndex+1
.LVL182:
	.loc 1 428 0
	lds r24,serESPRxInIndex
	lds r25,serESPRxInIndex+1
	cp r30,r24
	cpc r31,r25
	breq .L89
	.loc 1 432 0
	movw r18,r30
	subi r18,-1
	sbci r19,-1
.LVL183:
	ld r24,Z
.LVL184:
	.loc 1 433 0
	ldi r25,hi8(serESPRxBuffer+127)
	cpi r18,lo8(serESPRxBuffer+127)
	cpc r19,r25
	breq .L88
	brlo .L88
	.loc 1 435 0
	ldi r18,lo8(serESPRxBuffer)
	ldi r19,hi8(serESPRxBuffer)
.LVL185:
.L88:
	.loc 1 437 0
	sts serESPRxOutIndex+1,r19
	sts serESPRxOutIndex,r18
	ret
.LVL186:
.L89:
	.loc 1 430 0
	ldi r24,0
.LVL187:
	.loc 1 440 0
	ret
	.cfi_endproc
.LFE34:
	.size	serial3SER_ESPReadRx, .-serial3SER_ESPReadRx
	.section	.text.__vector_54,"ax",@progbits
.global	__vector_54
	.type	__vector_54, @function
__vector_54:
.LFB35:
	.loc 1 442 0
	.cfi_startproc
	push r1
.LCFI50:
	.cfi_def_cfa_offset 4
	.cfi_offset 1, -3
	push r0
.LCFI51:
	.cfi_def_cfa_offset 5
	.cfi_offset 0, -4
	in r0,__SREG__
	push r0
	clr __zero_reg__
	in r0,__RAMPZ__
	push r0
	push r18
.LCFI52:
	.cfi_def_cfa_offset 6
	.cfi_offset 18, -5
	push r19
.LCFI53:
	.cfi_def_cfa_offset 7
	.cfi_offset 19, -6
	push r20
.LCFI54:
	.cfi_def_cfa_offset 8
	.cfi_offset 20, -7
	push r21
.LCFI55:
	.cfi_def_cfa_offset 9
	.cfi_offset 21, -8
	push r22
.LCFI56:
	.cfi_def_cfa_offset 10
	.cfi_offset 22, -9
	push r24
.LCFI57:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI58:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI59:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI60:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI61:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI62:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 444 0
	lds r30,serESPRxInIndex
	lds r31,serESPRxInIndex+1
.LVL188:
	.loc 1 445 0
	lds r22,310
.LVL189:
	.loc 1 446 0
	movw r20,r30
	subi r20,-1
	sbci r21,-1
.LVL190:
	st Z,r22
	.loc 1 447 0
	ldi r24,hi8(serESPRxBuffer+127)
	cpi r20,lo8(serESPRxBuffer+127)
	cpc r21,r24
	breq .L92
	brlo .L92
	.loc 1 449 0
	ldi r20,lo8(serESPRxBuffer)
	ldi r21,hi8(serESPRxBuffer)
.LVL191:
.L92:
.LBB55:
	.loc 1 452 0
	in r25,__SREG__
.LVL192:
.LBB56:
.LBB57:
	.loc 2 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE57:
.LBE56:
	.loc 1 452 0
	ldi r24,lo8(1)
	rjmp .L93
.LVL193:
.L94:
	.loc 1 453 0 discriminator 3
	lds r18,serESPRxOutIndex
	lds r19,serESPRxOutIndex+1
.LVL194:
	.loc 1 452 0 discriminator 3
	ldi r24,0
.LVL195:
.L93:
	.loc 1 452 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L94
.LVL196:
.LBB58:
.LBB59:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL197:
.LBE59:
.LBE58:
.LBE55:
	.loc 1 455 0
	cp r20,r18
	cpc r21,r19
	brne .L95
	.loc 1 458 0
	ldi r24,lo8(-1)
.LVL198:
	sts serESPOvflFlag,r24
.L97:
.LBB60:
	.loc 1 452 0 discriminator 1
	ldi r24,0
	ldi r26,lo8(serESPInBuffer+7)
	ldi r27,hi8(serESPInBuffer+7)
	rjmp .L96
.LVL199:
.L95:
.LBE60:
	.loc 1 460 0
	sts serESPRxInIndex+1,r21
	sts serESPRxInIndex,r20
	rjmp .L97
.LVL200:
.L98:
.LBB61:
	.loc 1 466 0 discriminator 3
	movw r30,r26
	ld r25,-Z
	st X,r25
	.loc 1 467 0 discriminator 3
	movw r26,r30
.LVL201:
	.loc 1 465 0 discriminator 3
	subi r24,lo8(-(1))
.LVL202:
.L96:
	.loc 1 465 0 is_stmt 0 discriminator 1
	cpi r24,lo8(7)
	brlo .L98
.LBE61:
	.loc 1 469 0 is_stmt 1
	st X,r22
/* epilogue start */
	.loc 1 470 0
	pop r31
	pop r30
	pop r27
	pop r26
.LVL203:
	pop r25
	pop r24
.LVL204:
	pop r22
.LVL205:
	pop r21
	pop r20
.LVL206:
	pop r19
	pop r18
.LVL207:
	pop r0
	out __RAMPZ__,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE35:
	.size	__vector_54, .-__vector_54
	.section	.text.__vector_55,"ax",@progbits
.global	__vector_55
	.type	__vector_55, @function
__vector_55:
.LFB36:
	.loc 1 472 0
	.cfi_startproc
	push r1
.LCFI63:
	.cfi_def_cfa_offset 4
	.cfi_offset 1, -3
	push r0
.LCFI64:
	.cfi_def_cfa_offset 5
	.cfi_offset 0, -4
	in r0,__SREG__
	push r0
	clr __zero_reg__
	in r0,__RAMPZ__
	push r0
	push r18
.LCFI65:
	.cfi_def_cfa_offset 6
	.cfi_offset 18, -5
	push r24
.LCFI66:
	.cfi_def_cfa_offset 7
	.cfi_offset 24, -6
	push r25
.LCFI67:
	.cfi_def_cfa_offset 8
	.cfi_offset 25, -7
	push r30
.LCFI68:
	.cfi_def_cfa_offset 9
	.cfi_offset 30, -8
	push r31
.LCFI69:
	.cfi_def_cfa_offset 10
	.cfi_offset 31, -9
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	.loc 1 473 0
	lds r30,serESPTxOutIndex
	lds r31,serESPTxOutIndex+1
.LVL208:
	.loc 1 474 0
	lds r24,serESPTxInIndex
	lds r25,serESPTxInIndex+1
	cp r30,r24
	cpc r31,r25
	breq .L101
	.loc 1 476 0
	movw r24,r30
	adiw r24,1
.LVL209:
	ld r18,Z
	sts 310,r18
	.loc 1 477 0
	ldi r18,hi8(serESPTxBuffer+511)
	cpi r24,lo8(serESPTxBuffer+511)
	cpc r25,r18
	breq .L102
	brlo .L102
	.loc 1 479 0
	ldi r24,lo8(serESPTxBuffer)
	ldi r25,hi8(serESPTxBuffer)
.LVL210:
.L102:
	.loc 1 481 0
	sts serESPTxOutIndex+1,r25
	sts serESPTxOutIndex,r24
	rjmp .L100
.LVL211:
.L101:
	.loc 1 484 0
	ldi r30,lo8(49)
	ldi r31,lo8(1)
.LVL212:
	ld r24,Z
	andi r24,lo8(-33)
	st Z,r24
.LVL213:
.L100:
/* epilogue start */
	.loc 1 487 0
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
.LFE36:
	.size	__vector_55, .-__vector_55
	.comm	serESPMidiTmp,3,1
	.comm	serESPInBuffer,8,1
	.comm	serESPTxBuffer,512,1
	.comm	serESPRxBuffer,128,1
	.comm	serESP_Active,1,1
	.comm	serESPOvflFlag,1,1
	.comm	serESPTxInIndex,2,1
	.comm	serESPTxOutIndex,2,1
	.comm	serESPRxOutIndex,2,1
	.comm	serESPRxInIndex,2,1
	.comm	serUSBTxBuffer,2048,1
	.comm	serUSBRxBuffer,64,1
	.comm	serUSB_Active,1,1
	.comm	serUSBOvflFlag,1,1
	.comm	serUSBTxInIndex,2,1
	.comm	serUSBTxOutIndex,2,1
	.comm	serUSBRxOutIndex,2,1
	.comm	serUSBRxInIndex,2,1
	.comm	midiTxOvflCount,1,1
	.comm	midiRxOvflCount,1,1
	.comm	midiTxOvfl,1,1
	.comm	midiRxOvfl,1,1
	.comm	midiTxLastCmd,1,1
	.comm	midiRxBytesCount,2,1
	.comm	midiTxBytesCount,2,1
	.comm	midiTxOutIndex,1,1
	.comm	midiTxInIndex,1,1
	.comm	midiRxOutIndex,1,1
	.comm	midiRxInIndex,1,1
	.comm	midiTxBuffer,256,1
	.comm	midiRxBuffer,256,1
	.comm	lcdData,10,1
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 ".././message.h"
	.file 5 ".././Midi.h"
	.file 6 ".././hwtimer.h"
	.file 7 ".././utils.h"
	.file 8 ".././menu.h"
	.file 9 ".././ee_prom.h"
	.file 10 ".././log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xff8
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF103
	.byte	0xc
	.long	.LASF104
	.long	.LASF105
	.long	.Ldebug_ranges0+0x30
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
	.long	0x30
	.long	0x8e
	.uleb128 0x6
	.long	0x77
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.byte	0x40
	.long	0xad
	.uleb128 0x8
	.long	.LASF10
	.byte	0x4
	.byte	0x41
	.long	0x49
	.uleb128 0x8
	.long	.LASF11
	.byte	0x4
	.byte	0x42
	.long	0x7e
	.byte	0
	.uleb128 0x3
	.long	.LASF12
	.byte	0x4
	.byte	0x43
	.long	0x8e
	.uleb128 0x5
	.long	0x30
	.long	0xc8
	.uleb128 0x6
	.long	0x77
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.byte	0x3
	.byte	0x5
	.byte	0xc9
	.long	0xfb
	.uleb128 0xa
	.long	.LASF13
	.byte	0x5
	.byte	0xca
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0xcb
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0xcc
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF16
	.byte	0x5
	.byte	0xcd
	.long	0xc8
	.uleb128 0xb
	.byte	0x2
	.long	0x30
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF17
	.uleb128 0xc
	.long	0x10c
	.uleb128 0xc
	.long	0x30
	.uleb128 0x5
	.long	0x30
	.long	0x12e
	.uleb128 0xd
	.long	0x77
	.word	0x7ff
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.byte	0x6
	.byte	0x4f
	.long	0x153
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0x50
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.byte	0x51
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF20
	.byte	0x6
	.byte	0x52
	.long	0x12e
	.uleb128 0xe
	.long	.LASF106
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0xf
	.long	.LASF107
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x184
	.uleb128 0x10
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0x184
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x118
	.uleb128 0x11
	.byte	0x1
	.long	.LASF108
	.byte	0x1
	.byte	0x3f
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.long	.LLST0
	.byte	0x1
	.long	0x1f1
	.uleb128 0x13
	.long	.LASF21
	.byte	0x1
	.byte	0x84
	.long	0x30
	.long	.LLST1
	.uleb128 0x13
	.long	.LASF22
	.byte	0x1
	.byte	0x88
	.long	0x30
	.long	.LLST2
	.uleb128 0x14
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x13
	.long	.LASF23
	.byte	0x1
	.byte	0x8b
	.long	0x30
	.long	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF109
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST4
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.long	.LASF25
	.byte	0x1
	.word	0x108
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x2aa
	.uleb128 0x17
	.long	.LASF31
	.byte	0x1
	.word	0x108
	.long	0x30
	.long	.LLST5
	.uleb128 0x18
	.long	.LASF26
	.byte	0x1
	.word	0x10a
	.long	0x106
	.long	.LLST6
	.uleb128 0x19
	.long	.LASF27
	.byte	0x1
	.word	0x113
	.long	0x106
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x14
	.long	.LBB30
	.long	.LBE30
	.uleb128 0x18
	.long	.LASF28
	.byte	0x1
	.word	0x114
	.long	0x30
	.long	.LLST7
	.uleb128 0x18
	.long	.LASF29
	.byte	0x1
	.word	0x114
	.long	0x30
	.long	.LLST8
	.uleb128 0x1a
	.long	0x15e
	.long	.LBB31
	.long	.LBE31
	.byte	0x1
	.word	0x114
	.uleb128 0x1b
	.long	0x16b
	.long	.LBB33
	.long	.LBE33
	.byte	0x1
	.word	0x114
	.uleb128 0x1c
	.long	0x178
	.long	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST10
	.byte	0x1
	.long	0x338
	.uleb128 0x1d
	.long	.LASF31
	.byte	0x1
	.byte	0xc5
	.long	0x30
	.long	.LLST11
	.uleb128 0x1e
	.long	.LVL27
	.long	0x207
	.long	0x2e7
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x69
	.byte	0
	.uleb128 0x1e
	.long	.LVL28
	.long	0xfd4
	.long	0x30f
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x16
	.byte	0x8c
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
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.long	.LVL29
	.long	0x207
	.uleb128 0x1e
	.long	.LVL30
	.long	0xfd4
	.long	0x32e
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.long	.LVL31
	.long	0x207
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF32
	.byte	0x1
	.byte	0x77
	.long	0x30
	.long	.LFB13
	.long	.LFE13
	.long	.LLST12
	.byte	0x1
	.long	0x375
	.uleb128 0x13
	.long	.LASF33
	.byte	0x1
	.byte	0x78
	.long	0x30
	.long	.LLST13
	.uleb128 0x22
	.long	.LVL33
	.long	0x2aa
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF34
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST14
	.byte	0x1
	.long	0x403
	.uleb128 0x1d
	.long	.LASF31
	.byte	0x1
	.byte	0xcd
	.long	0x30
	.long	.LLST15
	.uleb128 0x1e
	.long	.LVL39
	.long	0x207
	.long	0x3b2
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x6f
	.byte	0
	.uleb128 0x1e
	.long	.LVL40
	.long	0xfd4
	.long	0x3da
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x16
	.byte	0x8c
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
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.long	.LVL41
	.long	0x207
	.uleb128 0x1e
	.long	.LVL42
	.long	0xfd4
	.long	0x3f9
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.long	.LVL43
	.long	0x207
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF35
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.long	.LLST16
	.byte	0x1
	.long	0x4bd
	.uleb128 0x1d
	.long	.LASF31
	.byte	0x1
	.byte	0x50
	.long	0x30
	.long	.LLST17
	.uleb128 0x13
	.long	.LASF22
	.byte	0x1
	.byte	0x62
	.long	0x30
	.long	.LLST18
	.uleb128 0x23
	.long	.LBB35
	.long	.LBE35
	.long	0x48f
	.uleb128 0x13
	.long	.LASF28
	.byte	0x1
	.byte	0x5e
	.long	0x30
	.long	.LLST19
	.uleb128 0x13
	.long	.LASF29
	.byte	0x1
	.byte	0x5e
	.long	0x30
	.long	.LLST20
	.uleb128 0x24
	.long	0x15e
	.long	.LBB36
	.long	.LBE36
	.byte	0x1
	.byte	0x5e
	.uleb128 0x25
	.long	0x16b
	.long	.LBB38
	.long	.LBE38
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1c
	.long	0x178
	.long	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LBB40
	.long	.LBE40
	.long	0x4ac
	.uleb128 0x13
	.long	.LASF23
	.byte	0x1
	.byte	0x65
	.long	0x30
	.long	.LLST22
	.byte	0
	.uleb128 0x22
	.long	.LVL53
	.long	0x375
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF36
	.byte	0x1
	.byte	0xd5
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST23
	.byte	0x1
	.long	0x597
	.uleb128 0x1d
	.long	.LASF37
	.byte	0x1
	.byte	0xd5
	.long	0xad
	.long	.LLST24
	.uleb128 0x1e
	.long	.LVL64
	.long	0x207
	.long	0x4fa
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x6b
	.byte	0
	.uleb128 0x1e
	.long	.LVL65
	.long	0xfd4
	.long	0x522
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x16
	.byte	0x8c
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
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.long	.LVL66
	.long	0x207
	.uleb128 0x1e
	.long	.LVL67
	.long	0xfd4
	.long	0x53f
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL68
	.long	0x207
	.uleb128 0x1e
	.long	.LVL69
	.long	0xfd4
	.long	0x570
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x16
	.byte	0x8d
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
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.long	.LVL70
	.long	0x207
	.uleb128 0x1e
	.long	.LVL71
	.long	0xfd4
	.long	0x58d
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL72
	.long	0x207
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF38
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST25
	.byte	0x1
	.long	0x684
	.uleb128 0x1d
	.long	.LASF39
	.byte	0x1
	.byte	0xdf
	.long	0x30
	.long	.LLST26
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.byte	0xdf
	.long	0x30
	.long	.LLST27
	.uleb128 0x1e
	.long	.LVL75
	.long	0x207
	.long	0x5e3
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x70
	.byte	0
	.uleb128 0x1e
	.long	.LVL76
	.long	0xfd4
	.long	0x60b
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x16
	.byte	0x8d
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
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.long	.LVL77
	.long	0x207
	.uleb128 0x1e
	.long	.LVL78
	.long	0xfd4
	.long	0x62a
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8d
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.long	.LVL79
	.long	0x207
	.uleb128 0x1e
	.long	.LVL80
	.long	0xfd4
	.long	0x65b
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x16
	.byte	0x8c
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
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.long	.LVL81
	.long	0x207
	.uleb128 0x1e
	.long	.LVL82
	.long	0xfd4
	.long	0x67a
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.long	.LVL83
	.long	0x207
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST28
	.byte	0x1
	.long	0x771
	.uleb128 0x1d
	.long	.LASF39
	.byte	0x1
	.byte	0xe9
	.long	0x30
	.long	.LLST29
	.uleb128 0x1d
	.long	.LASF40
	.byte	0x1
	.byte	0xe9
	.long	0x30
	.long	.LLST30
	.uleb128 0x1e
	.long	.LVL86
	.long	0x207
	.long	0x6d0
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x71
	.byte	0
	.uleb128 0x1e
	.long	.LVL87
	.long	0xfd4
	.long	0x6f8
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x16
	.byte	0x8d
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
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.long	.LVL88
	.long	0x207
	.uleb128 0x1e
	.long	.LVL89
	.long	0xfd4
	.long	0x717
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8d
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.long	.LVL90
	.long	0x207
	.uleb128 0x1e
	.long	.LVL91
	.long	0xfd4
	.long	0x748
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x16
	.byte	0x8c
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
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.long	.LVL92
	.long	0x207
	.uleb128 0x1e
	.long	.LVL93
	.long	0xfd4
	.long	0x767
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x20
	.long	.LVL94
	.long	0x207
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.byte	0xf3
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST31
	.byte	0x1
	.long	0x7dd
	.uleb128 0x1d
	.long	.LASF43
	.byte	0x1
	.byte	0xf3
	.long	0x7dd
	.long	.LLST32
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.byte	0xf5
	.long	0x10c
	.long	.LLST33
	.uleb128 0x23
	.long	.LBB41
	.long	.LBE41
	.long	0x7d3
	.uleb128 0x13
	.long	.LASF44
	.byte	0x1
	.byte	0xf6
	.long	0x49
	.long	.LLST34
	.uleb128 0x13
	.long	.LASF45
	.byte	0x1
	.byte	0xf6
	.long	0x30
	.long	.LLST33
	.byte	0
	.uleb128 0x20
	.long	.LVL97
	.long	0x207
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x113
	.uleb128 0x27
	.byte	0x1
	.long	.LASF46
	.byte	0x1
	.word	0x104
	.long	.LFB24
	.long	.LFE24
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x807
	.uleb128 0x20
	.long	.LVL102
	.long	0x771
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF47
	.byte	0x1
	.byte	0xac
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x870
	.uleb128 0x20
	.long	.LVL103
	.long	0xfe1
	.uleb128 0x1e
	.long	.LVL104
	.long	0xfee
	.long	0x84b
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x1f
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x34
	.uleb128 0x1f
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
	.uleb128 0x20
	.long	.LVL105
	.long	0x771
	.uleb128 0x20
	.long	.LVL106
	.long	0x771
	.uleb128 0x20
	.long	.LVL107
	.long	0x7e3
	.uleb128 0x20
	.long	.LVL108
	.long	0x7e3
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF48
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST36
	.byte	0x1
	.long	0x8b0
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.byte	0xfb
	.long	0x8b0
	.long	.LLST37
	.uleb128 0x13
	.long	.LASF49
	.byte	0x1
	.byte	0xfd
	.long	0x30
	.long	.LLST38
	.uleb128 0x20
	.long	.LVL113
	.long	0x207
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x10c
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.word	0x129
	.long	0x30
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x8f5
	.uleb128 0x18
	.long	.LASF33
	.byte	0x1
	.word	0x12a
	.long	0x30
	.long	.LLST39
	.uleb128 0x18
	.long	.LASF26
	.byte	0x1
	.word	0x12b
	.long	0x106
	.long	.LLST40
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.word	0x13a
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST41
	.byte	0x1
	.long	0x985
	.uleb128 0x18
	.long	.LASF26
	.byte	0x1
	.word	0x13c
	.long	0x106
	.long	.LLST42
	.uleb128 0x18
	.long	.LASF27
	.byte	0x1
	.word	0x142
	.long	0x106
	.long	.LLST43
	.uleb128 0x14
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x18
	.long	.LASF28
	.byte	0x1
	.word	0x143
	.long	0x30
	.long	.LLST44
	.uleb128 0x18
	.long	.LASF29
	.byte	0x1
	.word	0x143
	.long	0x30
	.long	.LLST45
	.uleb128 0x1a
	.long	0x15e
	.long	.LBB43
	.long	.LBE43
	.byte	0x1
	.word	0x143
	.uleb128 0x1b
	.long	0x16b
	.long	.LBB45
	.long	.LBE45
	.byte	0x1
	.word	0x143
	.uleb128 0x1c
	.long	0x178
	.long	.LLST46
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF52
	.byte	0x1
	.word	0x14f
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST47
	.byte	0x1
	.long	0x9b1
	.uleb128 0x18
	.long	.LASF26
	.byte	0x1
	.word	0x150
	.long	0x106
	.long	.LLST48
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF53
	.byte	0x1
	.word	0x164
	.long	.LFB29
	.long	.LFE29
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x9e4
	.uleb128 0x14
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.word	0x16f
	.long	0x30
	.long	.LLST49
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.word	0x174
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xa87
	.uleb128 0x17
	.long	.LASF31
	.byte	0x1
	.word	0x174
	.long	0x30
	.long	.LLST50
	.uleb128 0x18
	.long	.LASF26
	.byte	0x1
	.word	0x175
	.long	0x106
	.long	.LLST51
	.uleb128 0x19
	.long	.LASF27
	.byte	0x1
	.word	0x17e
	.long	0x106
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x14
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x18
	.long	.LASF28
	.byte	0x1
	.word	0x17f
	.long	0x30
	.long	.LLST52
	.uleb128 0x18
	.long	.LASF29
	.byte	0x1
	.word	0x17f
	.long	0x30
	.long	.LLST53
	.uleb128 0x1a
	.long	0x15e
	.long	.LBB49
	.long	.LBE49
	.byte	0x1
	.word	0x17f
	.uleb128 0x1b
	.long	0x16b
	.long	.LBB51
	.long	.LBE51
	.byte	0x1
	.word	0x17f
	.uleb128 0x1c
	.long	0x178
	.long	.LLST54
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.word	0x195
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST55
	.byte	0x1
	.long	0xb04
	.uleb128 0x17
	.long	.LASF43
	.byte	0x1
	.word	0x195
	.long	0x7dd
	.long	.LLST56
	.uleb128 0x18
	.long	.LASF49
	.byte	0x1
	.word	0x196
	.long	0x30
	.long	.LLST57
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.word	0x197
	.long	0x10c
	.long	.LLST58
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0
	.long	0xafa
	.uleb128 0x18
	.long	.LASF44
	.byte	0x1
	.word	0x198
	.long	0x49
	.long	.LLST59
	.uleb128 0x18
	.long	.LASF45
	.byte	0x1
	.word	0x198
	.long	0x30
	.long	.LLST58
	.byte	0
	.uleb128 0x20
	.long	.LVL164
	.long	0x9e4
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.word	0x19d
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST61
	.byte	0x1
	.long	0xb55
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.word	0x19d
	.long	0x8b0
	.long	.LLST62
	.uleb128 0x18
	.long	.LASF49
	.byte	0x1
	.word	0x19e
	.long	0x30
	.long	.LLST63
	.uleb128 0x2c
	.string	"c"
	.byte	0x1
	.word	0x19f
	.long	0x10c
	.long	.LLST64
	.uleb128 0x20
	.long	.LVL174
	.long	0x9e4
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.word	0x1a5
	.long	.LFB33
	.long	.LFE33
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xb79
	.uleb128 0x20
	.long	.LVL181
	.long	0xa87
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.word	0x1a9
	.long	0x30
	.long	.LFB34
	.long	.LFE34
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xbb8
	.uleb128 0x18
	.long	.LASF33
	.byte	0x1
	.word	0x1aa
	.long	0x30
	.long	.LLST65
	.uleb128 0x18
	.long	.LASF26
	.byte	0x1
	.word	0x1ab
	.long	0x106
	.long	.LLST66
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.word	0x1ba
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST67
	.byte	0x1
	.long	0xc80
	.uleb128 0x18
	.long	.LASF26
	.byte	0x1
	.word	0x1bc
	.long	0x106
	.long	.LLST68
	.uleb128 0x18
	.long	.LASF60
	.byte	0x1
	.word	0x1bd
	.long	0x30
	.long	.LLST69
	.uleb128 0x18
	.long	.LASF27
	.byte	0x1
	.word	0x1c3
	.long	0x106
	.long	.LLST70
	.uleb128 0x18
	.long	.LASF61
	.byte	0x1
	.word	0x1cf
	.long	0x106
	.long	.LLST71
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x18
	.long	0xc67
	.uleb128 0x18
	.long	.LASF28
	.byte	0x1
	.word	0x1c4
	.long	0x30
	.long	.LLST72
	.uleb128 0x18
	.long	.LASF29
	.byte	0x1
	.word	0x1c4
	.long	0x30
	.long	.LLST73
	.uleb128 0x1a
	.long	0x15e
	.long	.LBB56
	.long	.LBE56
	.byte	0x1
	.word	0x1c4
	.uleb128 0x1b
	.long	0x16b
	.long	.LBB58
	.long	.LBE58
	.byte	0x1
	.word	0x1c4
	.uleb128 0x1c
	.long	0x178
	.long	.LLST74
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.word	0x1d1
	.long	0x30
	.long	.LLST75
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.word	0x1d8
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST76
	.byte	0x1
	.long	0xcac
	.uleb128 0x18
	.long	.LASF26
	.byte	0x1
	.word	0x1d9
	.long	0x106
	.long	.LLST77
	.byte	0
	.uleb128 0x5
	.long	0x113
	.long	0xcb7
	.uleb128 0x2f
	.byte	0
	.uleb128 0x30
	.long	.LASF63
	.byte	0x7
	.byte	0x67
	.long	0xcc4
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0xcac
	.uleb128 0x31
	.long	.LASF64
	.byte	0x1
	.byte	0x2f
	.long	0xcdb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPRxInIndex
	.uleb128 0xb
	.byte	0x2
	.long	0xce1
	.uleb128 0x32
	.long	0x30
	.uleb128 0x31
	.long	.LASF65
	.byte	0x1
	.byte	0x30
	.long	0xcdb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPRxOutIndex
	.uleb128 0x31
	.long	.LASF66
	.byte	0x1
	.byte	0x31
	.long	0xcdb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPTxOutIndex
	.uleb128 0x31
	.long	.LASF67
	.byte	0x1
	.byte	0x32
	.long	0xcdb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPTxInIndex
	.uleb128 0x31
	.long	.LASF68
	.byte	0x1
	.byte	0x33
	.long	0xce1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPOvflFlag
	.uleb128 0x31
	.long	.LASF69
	.byte	0x1
	.byte	0x34
	.long	0xce1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESP_Active
	.uleb128 0x5
	.long	0x30
	.long	0xd50
	.uleb128 0x6
	.long	0x77
	.byte	0x7f
	.byte	0
	.uleb128 0x31
	.long	.LASF70
	.byte	0x1
	.byte	0x36
	.long	0xd40
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPRxBuffer
	.uleb128 0x5
	.long	0x30
	.long	0xd73
	.uleb128 0xd
	.long	0x77
	.word	0x1ff
	.byte	0
	.uleb128 0x31
	.long	.LASF71
	.byte	0x1
	.byte	0x37
	.long	0xd62
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPTxBuffer
	.uleb128 0x31
	.long	.LASF72
	.byte	0x1
	.byte	0x38
	.long	0xb8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPInBuffer
	.uleb128 0x5
	.long	0x30
	.long	0xda7
	.uleb128 0x6
	.long	0x77
	.byte	0x2
	.byte	0
	.uleb128 0x31
	.long	.LASF73
	.byte	0x1
	.byte	0x39
	.long	0xd97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPMidiTmp
	.uleb128 0x31
	.long	.LASF74
	.byte	0x1
	.byte	0x25
	.long	0xcdb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUSBRxInIndex
	.uleb128 0x31
	.long	.LASF75
	.byte	0x1
	.byte	0x26
	.long	0xcdb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUSBRxOutIndex
	.uleb128 0x31
	.long	.LASF76
	.byte	0x1
	.byte	0x27
	.long	0xcdb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUSBTxOutIndex
	.uleb128 0x31
	.long	.LASF77
	.byte	0x1
	.byte	0x28
	.long	0xcdb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUSBTxInIndex
	.uleb128 0x31
	.long	.LASF78
	.byte	0x1
	.byte	0x29
	.long	0xce1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUSBOvflFlag
	.uleb128 0x31
	.long	.LASF79
	.byte	0x1
	.byte	0x2a
	.long	0xce1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUSB_Active
	.uleb128 0x5
	.long	0x30
	.long	0xe35
	.uleb128 0x6
	.long	0x77
	.byte	0x3f
	.byte	0
	.uleb128 0x31
	.long	.LASF80
	.byte	0x1
	.byte	0x2c
	.long	0xe25
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUSBRxBuffer
	.uleb128 0x31
	.long	.LASF81
	.byte	0x1
	.byte	0x2d
	.long	0x11d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUSBTxBuffer
	.uleb128 0x31
	.long	.LASF82
	.byte	0x1
	.byte	0x1c
	.long	0xe6b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxBytesCount
	.uleb128 0x32
	.long	0x49
	.uleb128 0x31
	.long	.LASF83
	.byte	0x1
	.byte	0x1d
	.long	0xe6b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxBytesCount
	.uleb128 0x31
	.long	.LASF84
	.byte	0x1
	.byte	0x17
	.long	0xce1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxInIndex
	.uleb128 0x31
	.long	.LASF85
	.byte	0x1
	.byte	0x18
	.long	0xce1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxOutIndex
	.uleb128 0x31
	.long	.LASF86
	.byte	0x1
	.byte	0x1a
	.long	0xce1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxOutIndex
	.uleb128 0x31
	.long	.LASF87
	.byte	0x1
	.byte	0x19
	.long	0xce1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxInIndex
	.uleb128 0x5
	.long	0x30
	.long	0xeda
	.uleb128 0x6
	.long	0x77
	.byte	0xff
	.byte	0
	.uleb128 0x31
	.long	.LASF88
	.byte	0x1
	.byte	0x14
	.long	0xeca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxBuffer
	.uleb128 0x31
	.long	.LASF89
	.byte	0x1
	.byte	0x15
	.long	0xeca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxBuffer
	.uleb128 0x31
	.long	.LASF90
	.byte	0x1
	.byte	0x22
	.long	0xce1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxOvflCount
	.uleb128 0x31
	.long	.LASF91
	.byte	0x1
	.byte	0x23
	.long	0xce1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxOvflCount
	.uleb128 0x31
	.long	.LASF92
	.byte	0x1
	.byte	0x1e
	.long	0xce1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxLastCmd
	.uleb128 0x30
	.long	.LASF93
	.byte	0x5
	.byte	0xce
	.long	0xfb
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.long	0x30
	.long	0xf51
	.uleb128 0x6
	.long	0x77
	.byte	0x9
	.byte	0
	.uleb128 0x31
	.long	.LASF94
	.byte	0x8
	.byte	0xad
	.long	0xf41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x33
	.long	.LASF95
	.byte	0x8
	.word	0x102
	.long	0xf71
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0xcac
	.uleb128 0x33
	.long	.LASF96
	.byte	0x8
	.word	0x103
	.long	0xf84
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0xcac
	.uleb128 0x5
	.long	0xf99
	.long	0xf99
	.uleb128 0x6
	.long	0x77
	.byte	0x8
	.byte	0
	.uleb128 0x32
	.long	0x153
	.uleb128 0x30
	.long	.LASF97
	.byte	0x6
	.byte	0x53
	.long	0xfab
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.long	0xf89
	.uleb128 0x31
	.long	.LASF98
	.byte	0x1
	.byte	0x20
	.long	0xce1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxOvfl
	.uleb128 0x31
	.long	.LASF99
	.byte	0x1
	.byte	0x21
	.long	0xce1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxOvfl
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF100
	.long	.LASF100
	.byte	0x7
	.byte	0x1f
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF101
	.long	.LASF101
	.byte	0x9
	.byte	0x23
	.uleb128 0x34
	.byte	0x1
	.byte	0x1
	.long	.LASF102
	.long	.LASF102
	.byte	0xa
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x29
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LVL9
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL3
	.word	0x1
	.byte	0x68
	.long	.LVL7
	.long	.LVL8
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL4
	.word	0x1
	.byte	0x68
	.long	.LVL4
	.long	.LVL5
	.word	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST4:
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
.LLST5:
	.long	.LVL10
	.long	.LVL13
	.word	0x1
	.byte	0x68
	.long	.LVL13
	.long	.LVL20
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL20
	.long	.LFE25
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL11
	.long	.LVL12
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL12
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
.LLST7:
	.long	.LVL15
	.long	.LVL21
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST8:
	.long	.LVL16
	.long	.LVL17
	.word	0x1
	.byte	0x68
	.long	.LVL17
	.long	.LVL18
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL18
	.long	.LVL22
	.word	0x1
	.byte	0x68
	.long	.LVL23
	.long	.LVL24
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST9:
	.long	.LVL19
	.long	.LVL21
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+606
	.sleb128 0
	.long	0
	.long	0
.LLST10:
	.long	.LFB17
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI12
	.long	.LFE17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST11:
	.long	.LVL25
	.long	.LVL26
	.word	0x1
	.byte	0x68
	.long	.LVL26
	.long	.LVL31
	.word	0x1
	.byte	0x6c
	.long	.LVL31
	.long	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LFB13
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI13
	.long	.LFE13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST13:
	.long	.LVL32
	.long	.LVL34
	.word	0x1
	.byte	0x6c
	.long	.LVL35
	.long	.LVL36
	.word	0x1
	.byte	0x6c
	.long	.LVL36
	.long	.LFE13
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST14:
	.long	.LFB18
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI14
	.long	.LFE18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST15:
	.long	.LVL37
	.long	.LVL38
	.word	0x1
	.byte	0x68
	.long	.LVL38
	.long	.LVL43
	.word	0x1
	.byte	0x6c
	.long	.LVL43
	.long	.LFE18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LFB12
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI15
	.long	.LFE12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST17:
	.long	.LVL44
	.long	.LVL52
	.word	0x1
	.byte	0x68
	.long	.LVL52
	.long	.LVL61
	.word	0x1
	.byte	0x6c
	.long	.LVL61
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL54
	.long	.LVL55
	.word	0x1
	.byte	0x68
	.long	.LVL59
	.long	.LVL60
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST19:
	.long	.LVL45
	.long	.LVL51
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST20:
	.long	.LVL46
	.long	.LVL47
	.word	0x1
	.byte	0x69
	.long	.LVL48
	.long	.LVL49
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL49
	.long	.LVL53-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST21:
	.long	.LVL50
	.long	.LVL51
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1096
	.sleb128 0
	.long	0
	.long	0
.LLST22:
	.long	.LVL55
	.long	.LVL56
	.word	0x1
	.byte	0x68
	.long	.LVL56
	.long	.LVL57
	.word	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.long	.LVL57
	.long	.LVL58
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST23:
	.long	.LFB19
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
	.long	.LFE19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST24:
	.long	.LVL62
	.long	.LVL63
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL72
	.long	.LFE19
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST25:
	.long	.LFB20
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
	.long	.LFE20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST26:
	.long	.LVL73
	.long	.LVL74
	.word	0x1
	.byte	0x68
	.long	.LVL74
	.long	.LVL83
	.word	0x1
	.byte	0x6d
	.long	.LVL83
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL73
	.long	.LVL75-1
	.word	0x1
	.byte	0x66
	.long	.LVL75-1
	.long	.LVL83
	.word	0x1
	.byte	0x6c
	.long	.LVL83
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LFB21
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
	.long	.LFE21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST29:
	.long	.LVL84
	.long	.LVL85
	.word	0x1
	.byte	0x68
	.long	.LVL85
	.long	.LVL94
	.word	0x1
	.byte	0x6d
	.long	.LVL94
	.long	.LFE21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL84
	.long	.LVL86-1
	.word	0x1
	.byte	0x66
	.long	.LVL86-1
	.long	.LVL94
	.word	0x1
	.byte	0x6c
	.long	.LVL94
	.long	.LFE21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LFB22
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI23
	.long	.LFE22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST32:
	.long	.LVL95
	.long	.LVL96
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL96
	.long	.LVL98
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL98
	.long	.LVL99
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL99
	.long	.LVL101
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL101
	.long	.LFE22
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL96
	.long	.LVL97-1
	.word	0x1
	.byte	0x68
	.long	.LVL100
	.long	.LFE22
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST34:
	.long	.LVL96
	.long	.LVL97-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL97-1
	.long	.LVL98
	.word	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.long	.LVL99
	.long	.LFE22
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST36:
	.long	.LFB23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI26
	.long	.LFE23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST37:
	.long	.LVL109
	.long	.LVL111
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL111
	.long	.LVL115
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST38:
	.long	.LVL110
	.long	.LVL111
	.word	0x3
	.byte	0x8
	.byte	0x50
	.byte	0x9f
	.long	.LVL111
	.long	.LVL116
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST39:
	.long	.LVL119
	.long	.LVL121
	.word	0x1
	.byte	0x68
	.long	.LVL122
	.long	.LFE26
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST40:
	.long	.LVL117
	.long	.LVL118
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL118
	.long	.LVL121
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL121
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
.LLST41:
	.long	.LFB27
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
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI32
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI33
	.long	.LCFI34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI34
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI35
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI36
	.long	.LFE27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	0
	.long	0
.LLST42:
	.long	.LVL123
	.long	.LVL124
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL124
	.long	.LVL135
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST43:
	.long	.LVL127
	.long	.LVL136
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST44:
	.long	.LVL126
	.long	.LVL131
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST45:
	.long	.LVL127
	.long	.LVL128
	.word	0x1
	.byte	0x68
	.long	.LVL128
	.long	.LVL129
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL129
	.long	.LVL132
	.word	0x1
	.byte	0x68
	.long	.LVL133
	.long	.LVL134
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST46:
	.long	.LVL130
	.long	.LVL131
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2361
	.sleb128 0
	.long	0
	.long	0
.LLST47:
	.long	.LFB28
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
	.long	.LCFI40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI40
	.long	.LCFI41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI41
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI42
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI43
	.long	.LFE28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	0
	.long	0
.LLST48:
	.long	.LVL137
	.long	.LVL138
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL138
	.long	.LVL140
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
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
	.long	.LVL141
	.long	.LVL142
	.word	0x5
	.byte	0x3
	.long	serUSBTxOutIndex
	.long	0
	.long	0
.LLST49:
	.long	.LVL143
	.long	.LVL144
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL144
	.long	.LFE29
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST50:
	.long	.LVL146
	.long	.LVL149
	.word	0x1
	.byte	0x68
	.long	.LVL149
	.long	.LVL156
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL156
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LVL147
	.long	.LVL148
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL148
	.long	.LFE30
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST52:
	.long	.LVL151
	.long	.LVL157
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST53:
	.long	.LVL152
	.long	.LVL153
	.word	0x1
	.byte	0x68
	.long	.LVL153
	.long	.LVL154
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL154
	.long	.LVL158
	.word	0x1
	.byte	0x68
	.long	.LVL159
	.long	.LVL160
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST54:
	.long	.LVL155
	.long	.LVL157
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2619
	.sleb128 0
	.long	0
	.long	0
.LLST55:
	.long	.LFB31
	.long	.LCFI44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI44
	.long	.LCFI45
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI45
	.long	.LCFI46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI46
	.long	.LFE31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST56:
	.long	.LVL161
	.long	.LVL163
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL163
	.long	.LVL165
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL165
	.long	.LVL166
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL166
	.long	.LVL170
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL170
	.long	.LFE31
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST57:
	.long	.LVL162
	.long	.LVL163
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL163
	.long	.LVL165
	.word	0x1
	.byte	0x61
	.long	.LVL165
	.long	.LVL168
	.word	0x1
	.byte	0x69
	.long	.LVL168
	.long	.LVL169
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST58:
	.long	.LVL163
	.long	.LVL164-1
	.word	0x1
	.byte	0x68
	.long	.LVL167
	.long	.LFE31
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST59:
	.long	.LVL163
	.long	.LVL164-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL164-1
	.long	.LVL165
	.word	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.long	.LVL166
	.long	.LFE31
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST61:
	.long	.LFB32
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
	.long	.LFE32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST62:
	.long	.LVL171
	.long	.LVL173
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL173
	.long	.LVL175
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL175
	.long	.LVL176
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL176
	.long	.LVL180
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL180
	.long	.LFE32
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST63:
	.long	.LVL172
	.long	.LVL173
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL173
	.long	.LVL175
	.word	0x1
	.byte	0x61
	.long	.LVL175
	.long	.LVL178
	.word	0x1
	.byte	0x69
	.long	.LVL178
	.long	.LVL179
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST64:
	.long	.LVL173
	.long	.LVL174-1
	.word	0x1
	.byte	0x68
	.long	.LVL177
	.long	.LFE32
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST65:
	.long	.LVL184
	.long	.LVL186
	.word	0x1
	.byte	0x68
	.long	.LVL187
	.long	.LFE34
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST66:
	.long	.LVL182
	.long	.LVL183
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL183
	.long	.LVL186
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL186
	.long	.LFE34
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST67:
	.long	.LFB35
	.long	.LCFI50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI50
	.long	.LCFI51
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI51
	.long	.LCFI52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI52
	.long	.LCFI53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI53
	.long	.LCFI54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI54
	.long	.LCFI55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI55
	.long	.LCFI56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI56
	.long	.LCFI57
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI57
	.long	.LCFI58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI58
	.long	.LCFI59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI59
	.long	.LCFI60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI60
	.long	.LCFI61
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI61
	.long	.LCFI62
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI62
	.long	.LFE35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST68:
	.long	.LVL188
	.long	.LVL190
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL190
	.long	.LVL206
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST69:
	.long	.LVL189
	.long	.LVL205
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST70:
	.long	.LVL193
	.long	.LVL207
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST71:
	.long	.LVL200
	.long	.LVL203
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST72:
	.long	.LVL192
	.long	.LVL197
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST73:
	.long	.LVL193
	.long	.LVL194
	.word	0x1
	.byte	0x68
	.long	.LVL194
	.long	.LVL195
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL195
	.long	.LVL198
	.word	0x1
	.byte	0x68
	.long	.LVL199
	.long	.LVL200
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST74:
	.long	.LVL196
	.long	.LVL197
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+3100
	.sleb128 0
	.long	0
	.long	0
.LLST75:
	.long	.LVL200
	.long	.LVL204
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST76:
	.long	.LFB36
	.long	.LCFI63
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI63
	.long	.LCFI64
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI64
	.long	.LCFI65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI65
	.long	.LCFI66
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI66
	.long	.LCFI67
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI67
	.long	.LCFI68
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI68
	.long	.LCFI69
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI69
	.long	.LFE36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	0
	.long	0
.LLST77:
	.long	.LVL208
	.long	.LVL209
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL209
	.long	.LVL211
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL211
	.long	.LVL212
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL212
	.long	.LVL213
	.word	0x5
	.byte	0x3
	.long	serESPTxOutIndex
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xe4
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB23
	.long	.LFE23-.LFB23
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
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB53
	.long	.LBE53
	.long	.LBB54
	.long	.LBE54
	.long	0
	.long	0
	.long	.LBB55
	.long	.LBE55
	.long	.LBB60
	.long	.LBE60
	.long	0
	.long	0
	.long	.LFB11
	.long	.LFE11
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB25
	.long	.LFE25
	.long	.LFB17
	.long	.LFE17
	.long	.LFB13
	.long	.LFE13
	.long	.LFB18
	.long	.LFE18
	.long	.LFB12
	.long	.LFE12
	.long	.LFB19
	.long	.LFE19
	.long	.LFB20
	.long	.LFE20
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	.LFB24
	.long	.LFE24
	.long	.LFB16
	.long	.LFE16
	.long	.LFB23
	.long	.LFE23
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"bitNr"
.LASF38:
	.string	"serial0USB_logPipeOutOn"
.LASF47:
	.string	"init_Serial0SerUSB"
.LASF97:
	.string	"swTimer"
.LASF96:
	.string	"HelloMsg"
.LASF80:
	.string	"serUSBRxBuffer"
.LASF106:
	.string	"__iCliRetVal"
.LASF44:
	.string	"__addr16"
.LASF51:
	.string	"__vector_25"
.LASF52:
	.string	"__vector_26"
.LASF54:
	.string	"serial3SER_ESPSend"
.LASF8:
	.string	"long long unsigned int"
.LASF77:
	.string	"serUSBTxInIndex"
.LASF37:
	.string	"pipe"
.LASF56:
	.string	"serial3SER_ESP_sendString"
.LASF11:
	.string	"message8"
.LASF93:
	.string	"midi_Setting"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF103:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF60:
	.string	"receivedByte"
.LASF67:
	.string	"serESPTxInIndex"
.LASF79:
	.string	"serUSB_Active"
.LASF5:
	.string	"long int"
.LASF24:
	.string	"__vector_36"
.LASF109:
	.string	"__vector_37"
.LASF73:
	.string	"serESPMidiTmp"
.LASF75:
	.string	"serUSBRxOutIndex"
.LASF65:
	.string	"serESPRxOutIndex"
.LASF3:
	.string	"uint16_t"
.LASF66:
	.string	"serESPTxOutIndex"
.LASF94:
	.string	"lcdData"
.LASF92:
	.string	"midiTxLastCmd"
.LASF43:
	.string	"progmem_s"
.LASF45:
	.string	"__result"
.LASF49:
	.string	"count"
.LASF61:
	.string	"inpBufferPtr"
.LASF29:
	.string	"__ToDo"
.LASF4:
	.string	"unsigned int"
.LASF15:
	.string	"AcceptProgChange"
.LASF6:
	.string	"long unsigned int"
.LASF88:
	.string	"midiRxBuffer"
.LASF63:
	.string	"cr_lf"
.LASF76:
	.string	"serUSBTxOutIndex"
.LASF28:
	.string	"sreg_save"
.LASF31:
	.string	"data"
.LASF71:
	.string	"serESPTxBuffer"
.LASF72:
	.string	"serESPInBuffer"
.LASF81:
	.string	"serUSBTxBuffer"
.LASF22:
	.string	"newIndex"
.LASF83:
	.string	"midiRxBytesCount"
.LASF70:
	.string	"serESPRxBuffer"
.LASF86:
	.string	"midiTxOutIndex"
.LASF59:
	.string	"__vector_54"
.LASF62:
	.string	"__vector_55"
.LASF12:
	.string	"PipeMessage_t"
.LASF46:
	.string	"serial0SER_USB_sendCRLF"
.LASF20:
	.string	"Timer"
.LASF50:
	.string	"serial0SER_USBReadRx"
.LASF23:
	.string	"ovflCount"
.LASF9:
	.string	"sizetype"
.LASF84:
	.string	"midiRxInIndex"
.LASF104:
	.string	".././serial.c"
.LASF41:
	.string	"serial0USB_logPipeOutOff"
.LASF99:
	.string	"midiTxOvfl"
.LASF78:
	.string	"serUSBOvflFlag"
.LASF16:
	.string	"MidiSetting_t"
.LASF36:
	.string	"serial0USB_logPipeIn"
.LASF19:
	.string	"prescaler"
.LASF64:
	.string	"serESPRxInIndex"
.LASF105:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF1:
	.string	"unsigned char"
.LASF25:
	.string	"serial0SER_USBSend"
.LASF102:
	.string	"log_putError"
.LASF18:
	.string	"counter"
.LASF40:
	.string	"moduleMask"
.LASF90:
	.string	"midiRxOvflCount"
.LASF100:
	.string	"nibbleToChr"
.LASF85:
	.string	"midiRxOutIndex"
.LASF101:
	.string	"eeprom_ReadUSB"
.LASF89:
	.string	"midiTxBuffer"
.LASF55:
	.string	"serial3SER_ESP_sendStringP"
.LASF17:
	.string	"char"
.LASF48:
	.string	"serial0SER_USB_sendString"
.LASF53:
	.string	"init_Serial3SerESP"
.LASF26:
	.string	"index"
.LASF35:
	.string	"serial1MIDISend"
.LASF69:
	.string	"serESP_Active"
.LASF14:
	.string	"VelZero4Off"
.LASF21:
	.string	"received_byte"
.LASF107:
	.string	"__iRestore"
.LASF42:
	.string	"serial0SER_USB_sendStringP"
.LASF58:
	.string	"serial3SER_ESPReadRx"
.LASF82:
	.string	"midiTxBytesCount"
.LASF32:
	.string	"serial1MIDIReadRx"
.LASF57:
	.string	"serial3SER_ESP_sendCRLF"
.LASF10:
	.string	"Message16"
.LASF2:
	.string	"uint8_t"
.LASF34:
	.string	"serial0USB_logMIDIout"
.LASF30:
	.string	"serial0USB_logMIDIin"
.LASF74:
	.string	"serUSBRxInIndex"
.LASF91:
	.string	"midiTxOvflCount"
.LASF68:
	.string	"serESPOvflFlag"
.LASF95:
	.string	"sw_version"
.LASF13:
	.string	"TxActivceSense"
.LASF98:
	.string	"midiRxOvfl"
.LASF87:
	.string	"midiTxInIndex"
.LASF33:
	.string	"result"
.LASF108:
	.string	"init_Serial1MIDI"
.LASF27:
	.string	"outIndex"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_clear_bss
