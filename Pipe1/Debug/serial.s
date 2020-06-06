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
	.loc 1 66 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 68 0
	sts 205,__zero_reg__
	.loc 1 69 0
	ldi r24,lo8(31)
	sts 204,r24
	.loc 1 70 0
	ldi r30,lo8(-55)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(-104)
	st Z,r24
	.loc 1 71 0
	ldi r30,lo8(-54)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(6)
	st Z,r24
	.loc 1 72 0
	sts midiRxInIndex,__zero_reg__
	.loc 1 73 0
	sts midiRxOutIndex,__zero_reg__
	.loc 1 74 0
	sts midiTxInIndex,__zero_reg__
	.loc 1 75 0
	sts midiTxOutIndex,__zero_reg__
	.loc 1 76 0
	sts midiRxOvfl,__zero_reg__
	.loc 1 77 0
	sts midiTxOvfl,__zero_reg__
	.loc 1 78 0
	sts midiRxOvflCount,__zero_reg__
	.loc 1 79 0
	sts midiTxOvflCount,__zero_reg__
	.loc 1 80 0
	sts midiRxBuffUsage,__zero_reg__
	.loc 1 81 0
	sts midiTxBuffUsage,__zero_reg__
	.loc 1 82 0
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
	.loc 1 140 0
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
	.loc 1 142 0
	lds r24,206
.LVL0:
	.loc 1 144 0
	lds r30,midiRxInIndex
	ldi r31,0
	subi r30,lo8(-(midiRxBuffer))
	sbci r31,hi8(-(midiRxBuffer))
	st Z,r24
	.loc 1 145 0
	lds r24,midiRxInIndex
.LVL1:
	subi r24,lo8(-(1))
.LVL2:
	.loc 1 146 0
	lds r25,midiRxOutIndex
	cpse r24,r25
	rjmp .L3
.LBB29:
	.loc 1 148 0
	lds r24,midiRxOvflCount
.LVL3:
	.loc 1 149 0
	tst r24
	breq .L4
	.loc 1 151 0
	cpi r24,lo8(-1)
	breq .L5
	.loc 1 153 0
	subi r24,lo8(-(1))
.LVL4:
	sts midiRxOvflCount,r24
	rjmp .L5
.LVL5:
.L4:
	.loc 1 157 0
	ldi r24,lo8(1)
.LVL6:
	sts midiRxOvflCount,r24
	rjmp .L5
.LVL7:
.L3:
.LBE29:
	.loc 1 161 0
	sts midiRxInIndex,r24
.LVL8:
.L5:
	.loc 1 163 0
	lds r25,midiRxInIndex
	lds r24,midiRxOutIndex
	cp r24,r25
	brsh .L6
	.loc 1 163 0 is_stmt 0 discriminator 1
	lds r24,midiRxInIndex
	lds r25,midiRxOutIndex
	sub r24,r25
	rjmp .L7
.L6:
	.loc 1 163 0 discriminator 2
	lds r24,midiRxInIndex
	lds r25,midiRxOutIndex
	sub r24,r25
.L7:
.LVL9:
	.loc 1 164 0 is_stmt 1 discriminator 4
	lds r25,midiRxBuffUsage
	cp r25,r24
	brsh .L8
	.loc 1 165 0
	sts midiRxBuffUsage,r24
.L8:
	.loc 1 167 0
	lds r24,midiRxBytesCount
	lds r25,midiRxBytesCount+1
.LVL10:
	adiw r24,1
	sts midiRxBytesCount+1,r25
	sts midiRxBytesCount,r24
/* epilogue start */
	.loc 1 168 0
	pop r31
	pop r30
.LVL11:
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
	.loc 1 170 0
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
	.loc 1 171 0
	lds r25,midiTxOutIndex
	lds r24,midiTxInIndex
	cp r25,r24
	breq .L10
	.loc 1 173 0
	lds r30,midiTxOutIndex
	ldi r31,0
	subi r30,lo8(-(midiTxBuffer))
	sbci r31,hi8(-(midiTxBuffer))
	ld r24,Z
	sts 206,r24
	.loc 1 174 0
	lds r24,midiTxOutIndex
	subi r24,lo8(-(1))
	sts midiTxOutIndex,r24
	.loc 1 175 0
	lds r24,midiTxBytesCount
	lds r25,midiTxBytesCount+1
	adiw r24,1
	sts midiTxBytesCount+1,r25
	sts midiTxBytesCount,r24
	rjmp .L9
.L10:
	.loc 1 178 0
	ldi r30,lo8(-55)
	ldi r31,0
	ld r24,Z
	andi r24,lo8(-33)
	st Z,r24
.L9:
/* epilogue start */
	.loc 1 181 0
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
	.loc 1 277 0
	.cfi_startproc
.LVL12:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 279 0
	lds r30,serUSBTxInIndex
	lds r31,serUSBTxInIndex+1
.LVL13:
	.loc 1 280 0
	ldi r26,lo8(-63)
	ldi r27,0
	ld r25,X
	andi r25,lo8(-33)
	st X,r25
	.loc 1 282 0
	movw r20,r30
	subi r20,-1
	sbci r21,-1
.LVL14:
	st Z,r24
	.loc 1 284 0
	ldi r24,hi8(serUSBTxBuffer+2047)
	cpi r20,lo8(serUSBTxBuffer+2047)
	cpc r21,r24
.LVL15:
	breq .L13
	brlo .L13
	.loc 1 285 0
	ldi r20,lo8(serUSBTxBuffer)
	ldi r21,hi8(serUSBTxBuffer)
.LVL16:
.L13:
.LBB30:
	.loc 1 289 0
	in r25,__SREG__
.LVL17:
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
	.loc 1 289 0
	ldi r24,lo8(1)
	rjmp .L14
.LVL18:
.L15:
	.loc 1 290 0 discriminator 3
	lds r18,serUSBTxOutIndex
	lds r19,serUSBTxOutIndex+1
.LVL19:
	.loc 1 289 0 discriminator 3
	ldi r24,0
.LVL20:
.L14:
	.loc 1 289 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L15
.LVL21:
.LBB33:
.LBB34:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
.LVL22:
	.loc 2 71 0
.LVL23:
.LBE34:
.LBE33:
.LBE30:
	.loc 1 292 0
	cp r20,r18
	cpc r21,r19
	brne .L16
	.loc 1 300 0
	ldi r24,lo8(-1)
.LVL24:
	sts serUSBOvflFlag,r24
	.loc 1 301 0
	ldi r30,lo8(-63)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(32)
	st Z,r24
	ret
.LVL25:
.L16:
	.loc 1 305 0
	sts serUSBTxInIndex+1,r21
	sts serUSBTxInIndex,r20
	.loc 1 306 0
	ldi r30,lo8(-63)
	ldi r31,0
	ld r24,Z
.LVL26:
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
	.loc 1 210 0
	.cfi_startproc
.LVL27:
	push r28
.LCFI12:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 211 0
	lds r25,serUSB_Active
	tst r25
	breq .L19
	mov r28,r24
	.loc 1 212 0
	ldi r24,lo8(105)
.LVL28:
	call serial0SER_USBSend
.LVL29:
	.loc 1 213 0
	mov r24,r28
	swap r24
	andi r24,lo8(15)
	call nibbleToChr
.LVL30:
	call serial0SER_USBSend
.LVL31:
	.loc 1 214 0
	mov r24,r28
	andi r24,lo8(15)
	call nibbleToChr
.LVL32:
	call serial0SER_USBSend
.LVL33:
.L19:
/* epilogue start */
	.loc 1 216 0
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
	.loc 1 128 0
	.cfi_startproc
	push r28
.LCFI13:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 130 0
	lds r25,midiRxInIndex
	lds r24,midiRxOutIndex
	cp r25,r24
	breq .L23
	.loc 1 133 0
	lds r30,midiRxOutIndex
	ldi r31,0
	subi r30,lo8(-(midiRxBuffer))
	sbci r31,hi8(-(midiRxBuffer))
	ld r28,Z
.LVL34:
	.loc 1 134 0
	mov r24,r28
	call serial0USB_logMIDIin
.LVL35:
	.loc 1 135 0
	lds r24,midiRxOutIndex
	subi r24,lo8(-(1))
	sts midiRxOutIndex,r24
	rjmp .L22
.LVL36:
.L23:
	.loc 1 131 0
	ldi r28,lo8(-3)
.L22:
.LVL37:
	.loc 1 138 0
	mov r24,r28
/* epilogue start */
	pop r28
.LVL38:
	ret
	.cfi_endproc
.LFE13:
	.size	serial1MIDIReadRx, .-serial1MIDIReadRx
	.section	.text.serial0USB_logMIDIout,"ax",@progbits
.global	serial0USB_logMIDIout
	.type	serial0USB_logMIDIout, @function
serial0USB_logMIDIout:
.LFB18:
	.loc 1 218 0
	.cfi_startproc
.LVL39:
	push r28
.LCFI14:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 219 0
	lds r25,serUSB_Active
	tst r25
	breq .L24
	mov r28,r24
	.loc 1 220 0
	ldi r24,lo8(111)
.LVL40:
	call serial0SER_USBSend
.LVL41:
	.loc 1 221 0
	mov r24,r28
	swap r24
	andi r24,lo8(15)
	call nibbleToChr
.LVL42:
	call serial0SER_USBSend
.LVL43:
	.loc 1 222 0
	mov r24,r28
	andi r24,lo8(15)
	call nibbleToChr
.LVL44:
	call serial0SER_USBSend
.LVL45:
.L24:
/* epilogue start */
	.loc 1 224 0
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
	.loc 1 85 0
	.cfi_startproc
.LVL46:
	push r28
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 88 0
	lds r25,midi_Setting+1
	tst r25
	breq .L27
	.loc 1 88 0 is_stmt 0 discriminator 1
	tst r24
	brge .L27
	.loc 1 89 0 is_stmt 1
	lds r25,midiTxLastCmd
	cp r24,r25
	brne .+2
	rjmp .L26
	.loc 1 92 0
	cpi r24,lo8(-96)
	brsh .L29
	.loc 1 93 0
	sts midiTxLastCmd,r24
	rjmp .L27
.L29:
	.loc 1 95 0
	sts midiTxLastCmd,__zero_reg__
.L27:
.LBB35:
	.loc 1 99 0
	in r18,__SREG__
.LVL47:
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
	.loc 1 99 0
	ldi r25,lo8(1)
	rjmp .L30
.LVL48:
.L31:
	.loc 1 99 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r25,lo8(10)
.LVL49:
	std Z+16,r25
	std Z+17,__zero_reg__
.LVL50:
	.loc 1 99 0 discriminator 3
	ldi r25,0
.LVL51:
.L30:
	.loc 1 99 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L31
	mov r28,r24
.LVL52:
.LBB38:
.LBB39:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r18
	.loc 2 71 0
.LVL53:
.LBE39:
.LBE38:
.LBE35:
	.loc 1 100 0
	ldi r30,lo8(-55)
	ldi r31,0
	ld r24,Z
.LVL54:
	andi r24,lo8(-33)
	st Z,r24
	.loc 1 101 0
	mov r24,r28
	call serial0USB_logMIDIout
.LVL55:
	.loc 1 102 0
	lds r30,midiTxInIndex
	ldi r31,0
	subi r30,lo8(-(midiTxBuffer))
	sbci r31,hi8(-(midiTxBuffer))
	st Z,r28
	.loc 1 103 0
	lds r24,midiTxInIndex
	subi r24,lo8(-(1))
.LVL56:
	.loc 1 104 0
	lds r25,midiTxOutIndex
	cpse r24,r25
	rjmp .L32
.LBB40:
	.loc 1 106 0
	lds r24,midiTxOvflCount
.LVL57:
	.loc 1 107 0
	tst r24
	breq .L33
	.loc 1 109 0
	cpi r24,lo8(-1)
	breq .L34
	.loc 1 111 0
	subi r24,lo8(-(1))
.LVL58:
	sts midiTxOvflCount,r24
	rjmp .L34
.LVL59:
.L33:
	.loc 1 115 0
	ldi r24,lo8(1)
.LVL60:
	sts midiTxOvflCount,r24
	rjmp .L34
.LVL61:
.L32:
.LBE40:
	.loc 1 119 0
	sts midiTxInIndex,r24
.LVL62:
.L34:
	.loc 1 121 0
	lds r25,midiTxInIndex
	lds r24,midiTxOutIndex
	cp r24,r25
	brsh .L35
	.loc 1 121 0 is_stmt 0 discriminator 1
	lds r24,midiTxInIndex
	lds r25,midiTxOutIndex
	sub r24,r25
	rjmp .L36
.L35:
	.loc 1 121 0 discriminator 2
	lds r24,midiTxInIndex
	lds r25,midiTxOutIndex
	sub r24,r25
.L36:
.LVL63:
	.loc 1 122 0 is_stmt 1 discriminator 4
	lds r25,midiTxBuffUsage
	cp r25,r24
	brsh .L37
	.loc 1 123 0
	sts midiTxBuffUsage,r24
.L37:
	.loc 1 125 0
	ldi r30,lo8(-55)
	ldi r31,0
	ld r24,Z
.LVL64:
	ori r24,lo8(32)
	st Z,r24
.LVL65:
.L26:
/* epilogue start */
	.loc 1 126 0
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
	.loc 1 226 0
	.cfi_startproc
.LVL66:
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
	.loc 1 227 0
	lds r18,serUSB_Active
	tst r18
	breq .L38
	mov r28,r25
	mov r29,r24
	.loc 1 228 0
	ldi r24,lo8(107)
.LVL67:
	call serial0SER_USBSend
.LVL68:
	.loc 1 229 0
	mov r24,r28
	swap r24
	andi r24,lo8(15)
	call nibbleToChr
.LVL69:
	call serial0SER_USBSend
.LVL70:
	.loc 1 230 0
	andi r28,lo8(15)
	mov r24,r28
	call nibbleToChr
.LVL71:
	call serial0SER_USBSend
.LVL72:
	.loc 1 231 0
	mov r24,r29
	swap r24
	andi r24,lo8(15)
	call nibbleToChr
.LVL73:
	call serial0SER_USBSend
.LVL74:
	.loc 1 232 0
	mov r24,r28
	call nibbleToChr
.LVL75:
	call serial0SER_USBSend
.LVL76:
.L38:
/* epilogue start */
	.loc 1 234 0
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
	.loc 1 236 0
	.cfi_startproc
.LVL77:
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
	.loc 1 237 0
	lds r25,serUSB_Active
	tst r25
	breq .L40
	mov r28,r22
	mov r29,r24
	.loc 1 238 0
	ldi r24,lo8(112)
.LVL78:
	call serial0SER_USBSend
.LVL79:
	.loc 1 239 0
	mov r24,r29
	swap r24
	andi r24,lo8(15)
	call nibbleToChr
.LVL80:
	call serial0SER_USBSend
.LVL81:
	.loc 1 240 0
	mov r24,r29
	andi r24,lo8(15)
	call nibbleToChr
.LVL82:
	call serial0SER_USBSend
.LVL83:
	.loc 1 241 0
	mov r24,r28
	swap r24
	andi r24,lo8(15)
	call nibbleToChr
.LVL84:
	call serial0SER_USBSend
.LVL85:
	.loc 1 242 0
	mov r24,r28
	andi r24,lo8(15)
	call nibbleToChr
.LVL86:
	call serial0SER_USBSend
.LVL87:
.L40:
/* epilogue start */
	.loc 1 244 0
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
	.loc 1 246 0
	.cfi_startproc
.LVL88:
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
	.loc 1 247 0
	lds r25,serUSB_Active
	tst r25
	breq .L42
	mov r28,r22
	mov r29,r24
	.loc 1 248 0
	ldi r24,lo8(113)
.LVL89:
	call serial0SER_USBSend
.LVL90:
	.loc 1 249 0
	mov r24,r29
	swap r24
	andi r24,lo8(15)
	call nibbleToChr
.LVL91:
	call serial0SER_USBSend
.LVL92:
	.loc 1 250 0
	mov r24,r29
	andi r24,lo8(15)
	call nibbleToChr
.LVL93:
	call serial0SER_USBSend
.LVL94:
	.loc 1 251 0
	mov r24,r28
	swap r24
	andi r24,lo8(15)
	call nibbleToChr
.LVL95:
	call serial0SER_USBSend
.LVL96:
	.loc 1 252 0
	mov r24,r28
	andi r24,lo8(15)
	call nibbleToChr
.LVL97:
	call serial0SER_USBSend
.LVL98:
.L42:
/* epilogue start */
	.loc 1 254 0
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
	.loc 1 257 0
	.cfi_startproc
.LVL99:
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
	.loc 1 259 0
	rjmp .L45
.LVL100:
.L47:
	.loc 1 260 0
	call serial0SER_USBSend
.LVL101:
.LBB41:
	.loc 1 259 0
	movw r30,r28
.LVL102:
.L45:
	movw r28,r30
	adiw r28,1
.LVL103:
	.loc 1 259 0
/* #APP */
 ;  259 ".././serial.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL104:
/* #NOAPP */
.LBE41:
	.loc 1 259 0
	tst r24
	breq .L44
	.loc 1 259 0 discriminator 1
	lds r25,serUSBOvflFlag
	cpi r25,lo8(-1)
	brne .L47
.L44:
/* epilogue start */
	.loc 1 262 0
	pop r29
	pop r28
.LVL105:
	ret
	.cfi_endproc
.LFE22:
	.size	serial0SER_USB_sendStringP, .-serial0SER_USB_sendStringP
	.section	.text.serial0SER_USB_sendCRLF,"ax",@progbits
.global	serial0SER_USB_sendCRLF
	.type	serial0SER_USB_sendCRLF, @function
serial0SER_USB_sendCRLF:
.LFB24:
	.loc 1 273 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 274 0
	ldi r24,lo8(cr_lf)
	ldi r25,hi8(cr_lf)
	call serial0SER_USB_sendStringP
.LVL106:
	ret
	.cfi_endproc
.LFE24:
	.size	serial0SER_USB_sendCRLF, .-serial0SER_USB_sendCRLF
	.section	.text.init_Serial0SerUSB,"ax",@progbits
.global	init_Serial0SerUSB
	.type	init_Serial0SerUSB, @function
init_Serial0SerUSB:
.LFB16:
	.loc 1 185 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 187 0
	sts 197,__zero_reg__
	.loc 1 188 0
	ldi r24,lo8(8)
	sts 196,r24
	.loc 1 189 0
	ldi r30,lo8(-63)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(-104)
	st Z,r24
	.loc 1 190 0
	ldi r30,lo8(-62)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(6)
	st Z,r24
	.loc 1 191 0
	ldi r24,lo8(serUSBRxBuffer)
	ldi r25,hi8(serUSBRxBuffer)
	sts serUSBRxInIndex+1,r25
	sts serUSBRxInIndex,r24
	.loc 1 192 0
	sts serUSBRxOutIndex+1,r25
	sts serUSBRxOutIndex,r24
	.loc 1 193 0
	ldi r24,lo8(serUSBTxBuffer)
	ldi r25,hi8(serUSBTxBuffer)
	sts serUSBTxOutIndex+1,r25
	sts serUSBTxOutIndex,r24
	.loc 1 194 0
	sts serUSBTxInIndex+1,r25
	sts serUSBTxInIndex,r24
	.loc 1 196 0
	sts serUSBOvflFlag,__zero_reg__
	.loc 1 197 0
	call eeprom_ReadUSB
.LVL107:
	cpi r24,lo8(-1)
	brne .L50
	.loc 1 198 0
	sts serUSB_Active,__zero_reg__
	.loc 1 199 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(4)
	ldi r24,lo8(1)
	call log_putError
.LVL108:
.L50:
	.loc 1 201 0
	lds r24,serUSB_Active
	cpi r24,lo8(-1)
	brne .L49
	.loc 1 202 0
	ldi r24,lo8(HelloMsg)
	ldi r25,hi8(HelloMsg)
	call serial0SER_USB_sendStringP
.LVL109:
	.loc 1 203 0
	ldi r24,lo8(sw_version)
	ldi r25,hi8(sw_version)
	call serial0SER_USB_sendStringP
.LVL110:
	.loc 1 204 0
	call serial0SER_USB_sendCRLF
.LVL111:
	.loc 1 205 0
	call serial0SER_USB_sendCRLF
.LVL112:
.L49:
	ret
	.cfi_endproc
.LFE16:
	.size	init_Serial0SerUSB, .-init_Serial0SerUSB
	.section	.text.serial0SER_USB_sendString,"ax",@progbits
.global	serial0SER_USB_sendString
	.type	serial0SER_USB_sendString, @function
serial0SER_USB_sendString:
.LFB23:
	.loc 1 265 0
	.cfi_startproc
.LVL113:
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
.LVL114:
	.loc 1 266 0
	ldi r17,lo8(80)
	.loc 1 267 0
	rjmp .L53
.LVL115:
.L55:
	.loc 1 268 0
	adiw r28,1
.LVL116:
	call serial0SER_USBSend
.LVL117:
	.loc 1 269 0
	subi r17,lo8(-(-1))
.LVL118:
.L53:
	.loc 1 267 0
	ld r24,Y
	tst r24
	breq .L52
	.loc 1 267 0 is_stmt 0 discriminator 1
	lds r25,serUSBOvflFlag
	cpi r25,lo8(-1)
	breq .L52
	.loc 1 267 0 discriminator 2
	cpse r17,__zero_reg__
	rjmp .L55
.L52:
/* epilogue start */
	.loc 1 271 0 is_stmt 1
	pop r29
	pop r28
.LVL119:
	pop r17
.LVL120:
	ret
	.cfi_endproc
.LFE23:
	.size	serial0SER_USB_sendString, .-serial0SER_USB_sendString
	.section	.text.serial0SER_USBReadRx,"ax",@progbits
.global	serial0SER_USBReadRx
	.type	serial0SER_USBReadRx, @function
serial0SER_USBReadRx:
.LFB26:
	.loc 1 310 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 312 0
	lds r30,serUSBRxOutIndex
	lds r31,serUSBRxOutIndex+1
.LVL121:
	.loc 1 313 0
	lds r24,serUSBRxInIndex
	lds r25,serUSBRxInIndex+1
	cp r30,r24
	cpc r31,r25
	breq .L59
	.loc 1 317 0
	movw r18,r30
	subi r18,-1
	sbci r19,-1
.LVL122:
	ld r24,Z
.LVL123:
	.loc 1 318 0
	ldi r25,hi8(serUSBRxBuffer+63)
	cpi r18,lo8(serUSBRxBuffer+63)
	cpc r19,r25
	breq .L58
	brlo .L58
	.loc 1 320 0
	ldi r18,lo8(serUSBRxBuffer)
	ldi r19,hi8(serUSBRxBuffer)
.LVL124:
.L58:
	.loc 1 322 0
	sts serUSBRxOutIndex+1,r19
	sts serUSBRxOutIndex,r18
	ret
.LVL125:
.L59:
	.loc 1 315 0
	ldi r24,0
.LVL126:
	.loc 1 325 0
	ret
	.cfi_endproc
.LFE26:
	.size	serial0SER_USBReadRx, .-serial0SER_USBReadRx
	.section	.text.__vector_25,"ax",@progbits
.global	__vector_25
	.type	__vector_25, @function
__vector_25:
.LFB27:
	.loc 1 327 0
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
	.loc 1 329 0
	lds r30,serUSBRxInIndex
	lds r31,serUSBRxInIndex+1
.LVL127:
	.loc 1 330 0
	movw r20,r30
	subi r20,-1
	sbci r21,-1
.LVL128:
	.loc 1 330 0
	lds r24,198
	.loc 1 330 0
	st Z,r24
	.loc 1 331 0
	ldi r24,hi8(serUSBRxBuffer+63)
	cpi r20,lo8(serUSBRxBuffer+63)
	cpc r21,r24
	breq .L62
	brlo .L62
	.loc 1 333 0
	ldi r20,lo8(serUSBRxBuffer)
	ldi r21,hi8(serUSBRxBuffer)
.LVL129:
.L62:
.LBB42:
	.loc 1 336 0
	in r25,__SREG__
.LVL130:
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
	.loc 1 336 0
	ldi r24,lo8(1)
	rjmp .L63
.LVL131:
.L64:
	.loc 1 337 0 discriminator 3
	lds r18,serUSBRxOutIndex
	lds r19,serUSBRxOutIndex+1
.LVL132:
	.loc 1 336 0 discriminator 3
	ldi r24,0
.LVL133:
.L63:
	.loc 1 336 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L64
.LVL134:
.LBB45:
.LBB46:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL135:
.LBE46:
.LBE45:
.LBE42:
	.loc 1 339 0
	cp r20,r18
	cpc r21,r19
	brne .L65
	.loc 1 342 0
	ldi r24,lo8(-1)
.LVL136:
	sts serUSBOvflFlag,r24
	rjmp .L61
.LVL137:
.L65:
	.loc 1 344 0
	sts serUSBRxInIndex+1,r21
	sts serUSBRxInIndex,r20
.LVL138:
.L61:
/* epilogue start */
	.loc 1 346 0
	pop r31
	pop r30
	pop r25
	pop r24
	pop r21
	pop r20
.LVL139:
	pop r19
	pop r18
.LVL140:
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
	.loc 1 348 0
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
	.loc 1 349 0
	lds r30,serUSBTxOutIndex
	lds r31,serUSBTxOutIndex+1
.LVL141:
	.loc 1 350 0
	lds r24,serUSBTxInIndex
	lds r25,serUSBTxInIndex+1
	cp r30,r24
	cpc r31,r25
	breq .L69
	.loc 1 352 0
	movw r24,r30
	adiw r24,1
.LVL142:
	ld r18,Z
	sts 198,r18
	.loc 1 353 0
	ldi r18,hi8(serUSBTxBuffer+2047)
	cpi r24,lo8(serUSBTxBuffer+2047)
	cpc r25,r18
	breq .L70
	brlo .L70
	.loc 1 355 0
	ldi r24,lo8(serUSBTxBuffer)
	ldi r25,hi8(serUSBTxBuffer)
.LVL143:
.L70:
	.loc 1 357 0
	sts serUSBTxOutIndex+1,r25
	sts serUSBTxOutIndex,r24
	rjmp .L68
.LVL144:
.L69:
	.loc 1 360 0
	ldi r30,lo8(-63)
	ldi r31,0
.LVL145:
	ld r24,Z
	andi r24,lo8(-33)
	st Z,r24
.LVL146:
.L68:
/* epilogue start */
	.loc 1 363 0
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
	.loc 1 369 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 370 0
	sts 309,__zero_reg__
	.loc 1 371 0
	ldi r24,lo8(8)
	sts 308,r24
	.loc 1 372 0
	ldi r30,lo8(49)
	ldi r31,lo8(1)
	ld r24,Z
	ori r24,lo8(-104)
	st Z,r24
	.loc 1 373 0
	ldi r30,lo8(50)
	ldi r31,lo8(1)
	ld r24,Z
	ori r24,lo8(6)
	st Z,r24
	.loc 1 374 0
	ldi r24,lo8(serESPRxBuffer)
	ldi r25,hi8(serESPRxBuffer)
	sts serESPRxInIndex+1,r25
	sts serESPRxInIndex,r24
	.loc 1 375 0
	sts serESPRxOutIndex+1,r25
	sts serESPRxOutIndex,r24
	.loc 1 376 0
	ldi r24,lo8(serESPTxBuffer)
	ldi r25,hi8(serESPTxBuffer)
	sts serESPTxOutIndex+1,r25
	sts serESPTxOutIndex,r24
	.loc 1 377 0
	sts serESPTxInIndex+1,r25
	sts serESPTxInIndex,r24
	.loc 1 378 0
	sts serESPOvflFlag,__zero_reg__
	.loc 1 379 0
	ldi r24,lo8(-1)
	sts serESP_Active,r24
.LVL147:
.LBB47:
	.loc 1 380 0
	ldi r24,0
	rjmp .L74
.LVL148:
.L75:
	.loc 1 381 0 discriminator 3
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(serESPInBuffer))
	sbci r31,hi8(-(serESPInBuffer))
	ldi r25,lo8(-1)
	st Z,r25
	.loc 1 380 0 discriminator 3
	subi r24,lo8(-(1))
.LVL149:
.L74:
	.loc 1 380 0 is_stmt 0 discriminator 1
	cpi r24,lo8(8)
	brlo .L75
/* epilogue start */
.LBE47:
	.loc 1 383 0 is_stmt 1
	ret
	.cfi_endproc
.LFE29:
	.size	init_Serial3SerESP, .-init_Serial3SerESP
	.section	.text.serial3SER_ESPSend,"ax",@progbits
.global	serial3SER_ESPSend
	.type	serial3SER_ESPSend, @function
serial3SER_ESPSend:
.LFB30:
	.loc 1 385 0
	.cfi_startproc
.LVL150:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 386 0
	lds r30,serESPTxInIndex
	lds r31,serESPTxInIndex+1
.LVL151:
	.loc 1 387 0
	ldi r26,lo8(49)
	ldi r27,lo8(1)
	ld r25,X
	andi r25,lo8(-33)
	st X,r25
	.loc 1 389 0
	movw r20,r30
	subi r20,-1
	sbci r21,-1
.LVL152:
	st Z,r24
	.loc 1 391 0
	ldi r24,hi8(serESPTxBuffer+511)
	cpi r20,lo8(serESPTxBuffer+511)
	cpc r21,r24
.LVL153:
	breq .L77
	brlo .L77
	.loc 1 392 0
	ldi r20,lo8(serESPTxBuffer)
	ldi r21,hi8(serESPTxBuffer)
.LVL154:
.L77:
.LBB48:
	.loc 1 396 0
	in r25,__SREG__
.LVL155:
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
	.loc 1 396 0
	ldi r24,lo8(1)
	rjmp .L78
.LVL156:
.L79:
	.loc 1 397 0 discriminator 3
	lds r18,serESPTxOutIndex
	lds r19,serESPTxOutIndex+1
.LVL157:
	.loc 1 396 0 discriminator 3
	ldi r24,0
.LVL158:
.L78:
	.loc 1 396 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L79
.LVL159:
.LBB51:
.LBB52:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
.LVL160:
	.loc 2 71 0
.LVL161:
.LBE52:
.LBE51:
.LBE48:
	.loc 1 399 0
	cp r20,r18
	cpc r21,r19
	brne .L80
	.loc 1 407 0
	ldi r24,lo8(-1)
.LVL162:
	sts serESPOvflFlag,r24
	.loc 1 408 0
	ldi r30,lo8(49)
	ldi r31,lo8(1)
	ld r24,Z
	ori r24,lo8(32)
	st Z,r24
	ret
.LVL163:
.L80:
	.loc 1 412 0
	sts serESPTxInIndex+1,r21
	sts serESPTxInIndex,r20
	.loc 1 413 0
	ldi r30,lo8(49)
	ldi r31,lo8(1)
	ld r24,Z
.LVL164:
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
	.loc 1 418 0
	.cfi_startproc
.LVL165:
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
.LVL166:
	.loc 1 419 0
	ldi r25,lo8(-1)
	.loc 1 421 0
	rjmp .L84
.LVL167:
.L86:
	.loc 1 422 0
	call serial3SER_ESPSend
.LVL168:
.LBB53:
	.loc 1 421 0
	movw r30,r28
.LBE53:
	.loc 1 421 0
	mov r25,r17
.LVL169:
.L84:
.LBB54:
	.loc 1 421 0
	movw r28,r30
	adiw r28,1
.LVL170:
	.loc 1 421 0
/* #APP */
 ;  421 ".././serial.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL171:
/* #NOAPP */
.LBE54:
	.loc 1 421 0
	tst r24
	breq .L83
	.loc 1 421 0 discriminator 1
	lds r18,serESPOvflFlag
	cpi r18,lo8(-1)
	breq .L83
	.loc 1 421 0 is_stmt 0 discriminator 2
	ldi r17,lo8(-1)
	add r17,r25
.LVL172:
	cpse r25,__zero_reg__
	rjmp .L86
.LVL173:
.L83:
/* epilogue start */
	.loc 1 424 0 is_stmt 1
	pop r29
	pop r28
.LVL174:
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
	.loc 1 426 0
	.cfi_startproc
.LVL175:
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
.LVL176:
	.loc 1 427 0
	ldi r25,lo8(-1)
	.loc 1 429 0
	rjmp .L88
.LVL177:
.L90:
	.loc 1 430 0
	call serial3SER_ESPSend
.LVL178:
	.loc 1 429 0
	movw r30,r28
	mov r25,r17
.LVL179:
.L88:
	movw r28,r30
	adiw r28,1
.LVL180:
	ld r24,Z
.LVL181:
	tst r24
	breq .L87
	.loc 1 429 0 is_stmt 0 discriminator 1
	lds r18,serESPOvflFlag
	cpi r18,lo8(-1)
	breq .L87
	.loc 1 429 0 discriminator 2
	ldi r17,lo8(-1)
	add r17,r25
.LVL182:
	cpse r25,__zero_reg__
	rjmp .L90
.LVL183:
.L87:
/* epilogue start */
	.loc 1 432 0 is_stmt 1
	pop r29
	pop r28
.LVL184:
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
	.loc 1 434 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 435 0
	ldi r24,lo8(cr_lf)
	ldi r25,hi8(cr_lf)
	call serial3SER_ESP_sendStringP
.LVL185:
	ret
	.cfi_endproc
.LFE33:
	.size	serial3SER_ESP_sendCRLF, .-serial3SER_ESP_sendCRLF
	.section	.text.serial3SER_ESPReadRx,"ax",@progbits
.global	serial3SER_ESPReadRx
	.type	serial3SER_ESPReadRx, @function
serial3SER_ESPReadRx:
.LFB34:
	.loc 1 438 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 440 0
	lds r30,serESPRxOutIndex
	lds r31,serESPRxOutIndex+1
.LVL186:
	.loc 1 441 0
	lds r24,serESPRxInIndex
	lds r25,serESPRxInIndex+1
	cp r30,r24
	cpc r31,r25
	breq .L95
	.loc 1 445 0
	movw r18,r30
	subi r18,-1
	sbci r19,-1
.LVL187:
	ld r24,Z
.LVL188:
	.loc 1 446 0
	ldi r25,hi8(serESPRxBuffer+127)
	cpi r18,lo8(serESPRxBuffer+127)
	cpc r19,r25
	breq .L94
	brlo .L94
	.loc 1 448 0
	ldi r18,lo8(serESPRxBuffer)
	ldi r19,hi8(serESPRxBuffer)
.LVL189:
.L94:
	.loc 1 450 0
	sts serESPRxOutIndex+1,r19
	sts serESPRxOutIndex,r18
	ret
.LVL190:
.L95:
	.loc 1 443 0
	ldi r24,0
.LVL191:
	.loc 1 453 0
	ret
	.cfi_endproc
.LFE34:
	.size	serial3SER_ESPReadRx, .-serial3SER_ESPReadRx
	.section	.text.__vector_54,"ax",@progbits
.global	__vector_54
	.type	__vector_54, @function
__vector_54:
.LFB35:
	.loc 1 455 0
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
	.loc 1 457 0
	lds r30,serESPRxInIndex
	lds r31,serESPRxInIndex+1
.LVL192:
	.loc 1 458 0
	lds r22,310
.LVL193:
	.loc 1 459 0
	movw r20,r30
	subi r20,-1
	sbci r21,-1
.LVL194:
	st Z,r22
	.loc 1 460 0
	ldi r24,hi8(serESPRxBuffer+127)
	cpi r20,lo8(serESPRxBuffer+127)
	cpc r21,r24
	breq .L98
	brlo .L98
	.loc 1 462 0
	ldi r20,lo8(serESPRxBuffer)
	ldi r21,hi8(serESPRxBuffer)
.LVL195:
.L98:
.LBB55:
	.loc 1 465 0
	in r25,__SREG__
.LVL196:
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
	.loc 1 465 0
	ldi r24,lo8(1)
	rjmp .L99
.LVL197:
.L100:
	.loc 1 466 0 discriminator 3
	lds r18,serESPRxOutIndex
	lds r19,serESPRxOutIndex+1
.LVL198:
	.loc 1 465 0 discriminator 3
	ldi r24,0
.LVL199:
.L99:
	.loc 1 465 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L100
.LVL200:
.LBB58:
.LBB59:
	.loc 2 70 0 is_stmt 1
	out __SREG__,r25
	.loc 2 71 0
.LVL201:
.LBE59:
.LBE58:
.LBE55:
	.loc 1 468 0
	cp r20,r18
	cpc r21,r19
	brne .L101
	.loc 1 471 0
	ldi r24,lo8(-1)
.LVL202:
	sts serESPOvflFlag,r24
.L103:
.LBB60:
	.loc 1 465 0 discriminator 1
	ldi r24,0
	ldi r26,lo8(serESPInBuffer+7)
	ldi r27,hi8(serESPInBuffer+7)
	rjmp .L102
.LVL203:
.L101:
.LBE60:
	.loc 1 473 0
	sts serESPRxInIndex+1,r21
	sts serESPRxInIndex,r20
	rjmp .L103
.LVL204:
.L104:
.LBB61:
	.loc 1 479 0 discriminator 3
	movw r30,r26
	ld r25,-Z
	st X,r25
	.loc 1 480 0 discriminator 3
	movw r26,r30
.LVL205:
	.loc 1 478 0 discriminator 3
	subi r24,lo8(-(1))
.LVL206:
.L102:
	.loc 1 478 0 is_stmt 0 discriminator 1
	cpi r24,lo8(7)
	brlo .L104
.LBE61:
	.loc 1 482 0 is_stmt 1
	st X,r22
/* epilogue start */
	.loc 1 483 0
	pop r31
	pop r30
	pop r27
	pop r26
.LVL207:
	pop r25
	pop r24
.LVL208:
	pop r22
.LVL209:
	pop r21
	pop r20
.LVL210:
	pop r19
	pop r18
.LVL211:
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
	.loc 1 485 0
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
	.loc 1 486 0
	lds r30,serESPTxOutIndex
	lds r31,serESPTxOutIndex+1
.LVL212:
	.loc 1 487 0
	lds r24,serESPTxInIndex
	lds r25,serESPTxInIndex+1
	cp r30,r24
	cpc r31,r25
	breq .L107
	.loc 1 489 0
	movw r24,r30
	adiw r24,1
.LVL213:
	ld r18,Z
	sts 310,r18
	.loc 1 490 0
	ldi r18,hi8(serESPTxBuffer+511)
	cpi r24,lo8(serESPTxBuffer+511)
	cpc r25,r18
	breq .L108
	brlo .L108
	.loc 1 492 0
	ldi r24,lo8(serESPTxBuffer)
	ldi r25,hi8(serESPTxBuffer)
.LVL214:
.L108:
	.loc 1 494 0
	sts serESPTxOutIndex+1,r25
	sts serESPTxOutIndex,r24
	rjmp .L106
.LVL215:
.L107:
	.loc 1 497 0
	ldi r30,lo8(49)
	ldi r31,lo8(1)
.LVL216:
	ld r24,Z
	andi r24,lo8(-33)
	st Z,r24
.LVL217:
.L106:
/* epilogue start */
	.loc 1 500 0
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
	.comm	midiTxBuffUsage,1,1
	.comm	midiRxBuffUsage,1,1
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
	.long	0x1042
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF107
	.byte	0xc
	.long	.LASF108
	.long	.LASF109
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
	.byte	0xe9
	.long	0xfb
	.uleb128 0xa
	.long	.LASF13
	.byte	0x5
	.byte	0xea
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0xeb
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0xec
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF16
	.byte	0x5
	.byte	0xed
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
	.byte	0x53
	.long	0x153
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0x54
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.byte	0x55
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF20
	.byte	0x6
	.byte	0x56
	.long	0x12e
	.uleb128 0xe
	.long	.LASF110
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0xf
	.long	.LASF111
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
	.long	.LASF112
	.byte	0x1
	.byte	0x42
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.long	.LASF25
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.long	.LLST0
	.byte	0x1
	.long	0x200
	.uleb128 0x13
	.long	.LASF21
	.byte	0x1
	.byte	0x8d
	.long	0x30
	.long	.LLST1
	.uleb128 0x13
	.long	.LASF22
	.byte	0x1
	.byte	0x91
	.long	0x30
	.long	.LLST2
	.uleb128 0x13
	.long	.LASF23
	.byte	0x1
	.byte	0xa3
	.long	0x30
	.long	.LLST3
	.uleb128 0x14
	.long	.LBB29
	.long	.LBE29
	.uleb128 0x13
	.long	.LASF24
	.byte	0x1
	.byte	0x94
	.long	0x30
	.long	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF113
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST5
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.word	0x115
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x2b9
	.uleb128 0x17
	.long	.LASF32
	.byte	0x1
	.word	0x115
	.long	0x30
	.long	.LLST6
	.uleb128 0x18
	.long	.LASF27
	.byte	0x1
	.word	0x117
	.long	0x106
	.long	.LLST7
	.uleb128 0x19
	.long	.LASF28
	.byte	0x1
	.word	0x120
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
	.long	.LASF29
	.byte	0x1
	.word	0x121
	.long	0x30
	.long	.LLST8
	.uleb128 0x18
	.long	.LASF30
	.byte	0x1
	.word	0x121
	.long	0x30
	.long	.LLST9
	.uleb128 0x1a
	.long	0x15e
	.long	.LBB31
	.long	.LBE31
	.byte	0x1
	.word	0x121
	.uleb128 0x1b
	.long	0x16b
	.long	.LBB33
	.long	.LBE33
	.byte	0x1
	.word	0x121
	.uleb128 0x1c
	.long	0x178
	.long	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF31
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST11
	.byte	0x1
	.long	0x347
	.uleb128 0x1d
	.long	.LASF32
	.byte	0x1
	.byte	0xd2
	.long	0x30
	.long	.LLST12
	.uleb128 0x1e
	.long	.LVL29
	.long	0x216
	.long	0x2f6
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x69
	.byte	0
	.uleb128 0x1e
	.long	.LVL30
	.long	0x101e
	.long	0x31e
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
	.long	.LVL31
	.long	0x216
	.uleb128 0x1e
	.long	.LVL32
	.long	0x101e
	.long	0x33d
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
	.long	.LVL33
	.long	0x216
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF33
	.byte	0x1
	.byte	0x80
	.long	0x30
	.long	.LFB13
	.long	.LFE13
	.long	.LLST13
	.byte	0x1
	.long	0x384
	.uleb128 0x13
	.long	.LASF34
	.byte	0x1
	.byte	0x81
	.long	0x30
	.long	.LLST14
	.uleb128 0x22
	.long	.LVL35
	.long	0x2b9
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
	.long	.LASF35
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST15
	.byte	0x1
	.long	0x412
	.uleb128 0x1d
	.long	.LASF32
	.byte	0x1
	.byte	0xda
	.long	0x30
	.long	.LLST16
	.uleb128 0x1e
	.long	.LVL41
	.long	0x216
	.long	0x3c1
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x6f
	.byte	0
	.uleb128 0x1e
	.long	.LVL42
	.long	0x101e
	.long	0x3e9
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
	.long	.LVL43
	.long	0x216
	.uleb128 0x1e
	.long	.LVL44
	.long	0x101e
	.long	0x408
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
	.long	.LVL45
	.long	0x216
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF36
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.long	.LLST17
	.byte	0x1
	.long	0x4db
	.uleb128 0x1d
	.long	.LASF32
	.byte	0x1
	.byte	0x55
	.long	0x30
	.long	.LLST18
	.uleb128 0x13
	.long	.LASF22
	.byte	0x1
	.byte	0x67
	.long	0x30
	.long	.LLST19
	.uleb128 0x13
	.long	.LASF37
	.byte	0x1
	.byte	0x79
	.long	0x30
	.long	.LLST20
	.uleb128 0x23
	.long	.LBB35
	.long	.LBE35
	.long	0x4ad
	.uleb128 0x13
	.long	.LASF29
	.byte	0x1
	.byte	0x63
	.long	0x30
	.long	.LLST21
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.byte	0x63
	.long	0x30
	.long	.LLST22
	.uleb128 0x24
	.long	0x15e
	.long	.LBB36
	.long	.LBE36
	.byte	0x1
	.byte	0x63
	.uleb128 0x25
	.long	0x16b
	.long	.LBB38
	.long	.LBE38
	.byte	0x1
	.byte	0x63
	.uleb128 0x1c
	.long	0x178
	.long	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LBB40
	.long	.LBE40
	.long	0x4ca
	.uleb128 0x13
	.long	.LASF24
	.byte	0x1
	.byte	0x6a
	.long	0x30
	.long	.LLST24
	.byte	0
	.uleb128 0x22
	.long	.LVL55
	.long	0x384
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
	.long	.LASF38
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST25
	.byte	0x1
	.long	0x5b5
	.uleb128 0x1d
	.long	.LASF39
	.byte	0x1
	.byte	0xe2
	.long	0xad
	.long	.LLST26
	.uleb128 0x1e
	.long	.LVL68
	.long	0x216
	.long	0x518
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x6b
	.byte	0
	.uleb128 0x1e
	.long	.LVL69
	.long	0x101e
	.long	0x540
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
	.long	.LVL70
	.long	0x216
	.uleb128 0x1e
	.long	.LVL71
	.long	0x101e
	.long	0x55d
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL72
	.long	0x216
	.uleb128 0x1e
	.long	.LVL73
	.long	0x101e
	.long	0x58e
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
	.long	.LVL74
	.long	0x216
	.uleb128 0x1e
	.long	.LVL75
	.long	0x101e
	.long	0x5ab
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL76
	.long	0x216
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.byte	0xec
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST27
	.byte	0x1
	.long	0x6a2
	.uleb128 0x1d
	.long	.LASF41
	.byte	0x1
	.byte	0xec
	.long	0x30
	.long	.LLST28
	.uleb128 0x1d
	.long	.LASF42
	.byte	0x1
	.byte	0xec
	.long	0x30
	.long	.LLST29
	.uleb128 0x1e
	.long	.LVL79
	.long	0x216
	.long	0x601
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x70
	.byte	0
	.uleb128 0x1e
	.long	.LVL80
	.long	0x101e
	.long	0x629
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
	.long	.LVL81
	.long	0x216
	.uleb128 0x1e
	.long	.LVL82
	.long	0x101e
	.long	0x648
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
	.long	.LVL83
	.long	0x216
	.uleb128 0x1e
	.long	.LVL84
	.long	0x101e
	.long	0x679
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
	.long	.LVL85
	.long	0x216
	.uleb128 0x1e
	.long	.LVL86
	.long	0x101e
	.long	0x698
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
	.long	.LVL87
	.long	0x216
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF43
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST30
	.byte	0x1
	.long	0x78f
	.uleb128 0x1d
	.long	.LASF41
	.byte	0x1
	.byte	0xf6
	.long	0x30
	.long	.LLST31
	.uleb128 0x1d
	.long	.LASF42
	.byte	0x1
	.byte	0xf6
	.long	0x30
	.long	.LLST32
	.uleb128 0x1e
	.long	.LVL90
	.long	0x216
	.long	0x6ee
	.uleb128 0x1f
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x71
	.byte	0
	.uleb128 0x1e
	.long	.LVL91
	.long	0x101e
	.long	0x716
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
	.long	.LVL92
	.long	0x216
	.uleb128 0x1e
	.long	.LVL93
	.long	0x101e
	.long	0x735
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
	.long	.LVL94
	.long	0x216
	.uleb128 0x1e
	.long	.LVL95
	.long	0x101e
	.long	0x766
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
	.long	.LVL96
	.long	0x216
	.uleb128 0x1e
	.long	.LVL97
	.long	0x101e
	.long	0x785
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
	.long	.LVL98
	.long	0x216
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.word	0x100
	.byte	0x1
	.long	.LFB22
	.long	.LFE22
	.long	.LLST33
	.byte	0x1
	.long	0x800
	.uleb128 0x17
	.long	.LASF45
	.byte	0x1
	.word	0x100
	.long	0x800
	.long	.LLST34
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.word	0x102
	.long	0x10c
	.long	.LLST35
	.uleb128 0x23
	.long	.LBB41
	.long	.LBE41
	.long	0x7f6
	.uleb128 0x18
	.long	.LASF46
	.byte	0x1
	.word	0x103
	.long	0x49
	.long	.LLST36
	.uleb128 0x18
	.long	.LASF47
	.byte	0x1
	.word	0x103
	.long	0x30
	.long	.LLST35
	.byte	0
	.uleb128 0x20
	.long	.LVL101
	.long	0x216
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x113
	.uleb128 0x28
	.byte	0x1
	.long	.LASF48
	.byte	0x1
	.word	0x111
	.long	.LFB24
	.long	.LFE24
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x82a
	.uleb128 0x20
	.long	.LVL106
	.long	0x78f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF49
	.byte	0x1
	.byte	0xb9
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x893
	.uleb128 0x20
	.long	.LVL107
	.long	0x102b
	.uleb128 0x1e
	.long	.LVL108
	.long	0x1038
	.long	0x86e
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
	.long	.LVL109
	.long	0x78f
	.uleb128 0x20
	.long	.LVL110
	.long	0x78f
	.uleb128 0x20
	.long	.LVL111
	.long	0x806
	.uleb128 0x20
	.long	.LVL112
	.long	0x806
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.word	0x108
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST38
	.byte	0x1
	.long	0x8d6
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.word	0x108
	.long	0x8d6
	.long	.LLST39
	.uleb128 0x18
	.long	.LASF51
	.byte	0x1
	.word	0x10a
	.long	0x30
	.long	.LLST40
	.uleb128 0x20
	.long	.LVL117
	.long	0x216
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x10c
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF52
	.byte	0x1
	.word	0x136
	.long	0x30
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x91b
	.uleb128 0x18
	.long	.LASF34
	.byte	0x1
	.word	0x137
	.long	0x30
	.long	.LLST41
	.uleb128 0x18
	.long	.LASF27
	.byte	0x1
	.word	0x138
	.long	0x106
	.long	.LLST42
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF53
	.byte	0x1
	.word	0x147
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.long	.LLST43
	.byte	0x1
	.long	0x9ab
	.uleb128 0x18
	.long	.LASF27
	.byte	0x1
	.word	0x149
	.long	0x106
	.long	.LLST44
	.uleb128 0x18
	.long	.LASF28
	.byte	0x1
	.word	0x14f
	.long	0x106
	.long	.LLST45
	.uleb128 0x14
	.long	.LBB42
	.long	.LBE42
	.uleb128 0x18
	.long	.LASF29
	.byte	0x1
	.word	0x150
	.long	0x30
	.long	.LLST46
	.uleb128 0x18
	.long	.LASF30
	.byte	0x1
	.word	0x150
	.long	0x30
	.long	.LLST47
	.uleb128 0x1a
	.long	0x15e
	.long	.LBB43
	.long	.LBE43
	.byte	0x1
	.word	0x150
	.uleb128 0x1b
	.long	0x16b
	.long	.LBB45
	.long	.LBE45
	.byte	0x1
	.word	0x150
	.uleb128 0x1c
	.long	0x178
	.long	.LLST48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.word	0x15c
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.long	.LLST49
	.byte	0x1
	.long	0x9d7
	.uleb128 0x18
	.long	.LASF27
	.byte	0x1
	.word	0x15d
	.long	0x106
	.long	.LLST50
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.word	0x171
	.long	.LFB29
	.long	.LFE29
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xa0a
	.uleb128 0x14
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.word	0x17c
	.long	0x30
	.long	.LLST51
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.word	0x181
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xaad
	.uleb128 0x17
	.long	.LASF32
	.byte	0x1
	.word	0x181
	.long	0x30
	.long	.LLST52
	.uleb128 0x18
	.long	.LASF27
	.byte	0x1
	.word	0x182
	.long	0x106
	.long	.LLST53
	.uleb128 0x19
	.long	.LASF28
	.byte	0x1
	.word	0x18b
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
	.long	.LASF29
	.byte	0x1
	.word	0x18c
	.long	0x30
	.long	.LLST54
	.uleb128 0x18
	.long	.LASF30
	.byte	0x1
	.word	0x18c
	.long	0x30
	.long	.LLST55
	.uleb128 0x1a
	.long	0x15e
	.long	.LBB49
	.long	.LBE49
	.byte	0x1
	.word	0x18c
	.uleb128 0x1b
	.long	0x16b
	.long	.LBB51
	.long	.LBE51
	.byte	0x1
	.word	0x18c
	.uleb128 0x1c
	.long	0x178
	.long	.LLST56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.word	0x1a2
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.long	.LLST57
	.byte	0x1
	.long	0xb2a
	.uleb128 0x17
	.long	.LASF45
	.byte	0x1
	.word	0x1a2
	.long	0x800
	.long	.LLST58
	.uleb128 0x18
	.long	.LASF51
	.byte	0x1
	.word	0x1a3
	.long	0x30
	.long	.LLST59
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.word	0x1a4
	.long	0x10c
	.long	.LLST60
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0
	.long	0xb20
	.uleb128 0x18
	.long	.LASF46
	.byte	0x1
	.word	0x1a5
	.long	0x49
	.long	.LLST61
	.uleb128 0x18
	.long	.LASF47
	.byte	0x1
	.word	0x1a5
	.long	0x30
	.long	.LLST60
	.byte	0
	.uleb128 0x20
	.long	.LVL168
	.long	0xa0a
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.word	0x1aa
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.long	.LLST63
	.byte	0x1
	.long	0xb7b
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.word	0x1aa
	.long	0x8d6
	.long	.LLST64
	.uleb128 0x18
	.long	.LASF51
	.byte	0x1
	.word	0x1ab
	.long	0x30
	.long	.LLST65
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.word	0x1ac
	.long	0x10c
	.long	.LLST66
	.uleb128 0x20
	.long	.LVL178
	.long	0xa0a
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.word	0x1b2
	.long	.LFB33
	.long	.LFE33
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xb9f
	.uleb128 0x20
	.long	.LVL185
	.long	0xaad
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.word	0x1b6
	.long	0x30
	.long	.LFB34
	.long	.LFE34
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xbde
	.uleb128 0x18
	.long	.LASF34
	.byte	0x1
	.word	0x1b7
	.long	0x30
	.long	.LLST67
	.uleb128 0x18
	.long	.LASF27
	.byte	0x1
	.word	0x1b8
	.long	0x106
	.long	.LLST68
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF61
	.byte	0x1
	.word	0x1c7
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST69
	.byte	0x1
	.long	0xca6
	.uleb128 0x18
	.long	.LASF27
	.byte	0x1
	.word	0x1c9
	.long	0x106
	.long	.LLST70
	.uleb128 0x18
	.long	.LASF62
	.byte	0x1
	.word	0x1ca
	.long	0x30
	.long	.LLST71
	.uleb128 0x18
	.long	.LASF28
	.byte	0x1
	.word	0x1d0
	.long	0x106
	.long	.LLST72
	.uleb128 0x18
	.long	.LASF63
	.byte	0x1
	.word	0x1dc
	.long	0x106
	.long	.LLST73
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0x18
	.long	0xc8d
	.uleb128 0x18
	.long	.LASF29
	.byte	0x1
	.word	0x1d1
	.long	0x30
	.long	.LLST74
	.uleb128 0x18
	.long	.LASF30
	.byte	0x1
	.word	0x1d1
	.long	0x30
	.long	.LLST75
	.uleb128 0x1a
	.long	0x15e
	.long	.LBB56
	.long	.LBE56
	.byte	0x1
	.word	0x1d1
	.uleb128 0x1b
	.long	0x16b
	.long	.LBB58
	.long	.LBE58
	.byte	0x1
	.word	0x1d1
	.uleb128 0x1c
	.long	0x178
	.long	.LLST76
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.word	0x1de
	.long	0x30
	.long	.LLST77
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.word	0x1e5
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.long	.LLST78
	.byte	0x1
	.long	0xcd2
	.uleb128 0x18
	.long	.LASF27
	.byte	0x1
	.word	0x1e6
	.long	0x106
	.long	.LLST79
	.byte	0
	.uleb128 0x5
	.long	0x113
	.long	0xcdd
	.uleb128 0x2d
	.byte	0
	.uleb128 0x2e
	.long	.LASF65
	.byte	0x7
	.byte	0x62
	.long	0xcea
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0xcd2
	.uleb128 0x2f
	.long	.LASF66
	.byte	0x1
	.byte	0x32
	.long	0xd01
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPRxInIndex
	.uleb128 0xb
	.byte	0x2
	.long	0xd07
	.uleb128 0x30
	.long	0x30
	.uleb128 0x2f
	.long	.LASF67
	.byte	0x1
	.byte	0x33
	.long	0xd01
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPRxOutIndex
	.uleb128 0x2f
	.long	.LASF68
	.byte	0x1
	.byte	0x34
	.long	0xd01
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPTxOutIndex
	.uleb128 0x2f
	.long	.LASF69
	.byte	0x1
	.byte	0x35
	.long	0xd01
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPTxInIndex
	.uleb128 0x2f
	.long	.LASF70
	.byte	0x1
	.byte	0x36
	.long	0xd07
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPOvflFlag
	.uleb128 0x2f
	.long	.LASF71
	.byte	0x1
	.byte	0x37
	.long	0xd07
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESP_Active
	.uleb128 0x5
	.long	0x30
	.long	0xd76
	.uleb128 0x6
	.long	0x77
	.byte	0x7f
	.byte	0
	.uleb128 0x2f
	.long	.LASF72
	.byte	0x1
	.byte	0x39
	.long	0xd66
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPRxBuffer
	.uleb128 0x5
	.long	0x30
	.long	0xd99
	.uleb128 0xd
	.long	0x77
	.word	0x1ff
	.byte	0
	.uleb128 0x2f
	.long	.LASF73
	.byte	0x1
	.byte	0x3a
	.long	0xd88
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPTxBuffer
	.uleb128 0x2f
	.long	.LASF74
	.byte	0x1
	.byte	0x3b
	.long	0xb8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPInBuffer
	.uleb128 0x5
	.long	0x30
	.long	0xdcd
	.uleb128 0x6
	.long	0x77
	.byte	0x2
	.byte	0
	.uleb128 0x2f
	.long	.LASF75
	.byte	0x1
	.byte	0x3c
	.long	0xdbd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serESPMidiTmp
	.uleb128 0x2f
	.long	.LASF76
	.byte	0x1
	.byte	0x28
	.long	0xd01
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUSBRxInIndex
	.uleb128 0x2f
	.long	.LASF77
	.byte	0x1
	.byte	0x29
	.long	0xd01
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUSBRxOutIndex
	.uleb128 0x2f
	.long	.LASF78
	.byte	0x1
	.byte	0x2a
	.long	0xd01
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUSBTxOutIndex
	.uleb128 0x2f
	.long	.LASF79
	.byte	0x1
	.byte	0x2b
	.long	0xd01
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUSBTxInIndex
	.uleb128 0x2f
	.long	.LASF80
	.byte	0x1
	.byte	0x2c
	.long	0xd07
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUSBOvflFlag
	.uleb128 0x2f
	.long	.LASF81
	.byte	0x1
	.byte	0x2d
	.long	0xd07
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUSB_Active
	.uleb128 0x5
	.long	0x30
	.long	0xe5b
	.uleb128 0x6
	.long	0x77
	.byte	0x3f
	.byte	0
	.uleb128 0x2f
	.long	.LASF82
	.byte	0x1
	.byte	0x2f
	.long	0xe4b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUSBRxBuffer
	.uleb128 0x2f
	.long	.LASF83
	.byte	0x1
	.byte	0x30
	.long	0x11d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	serUSBTxBuffer
	.uleb128 0x2f
	.long	.LASF84
	.byte	0x1
	.byte	0x1c
	.long	0xe91
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxBytesCount
	.uleb128 0x30
	.long	0x49
	.uleb128 0x2f
	.long	.LASF85
	.byte	0x1
	.byte	0x1d
	.long	0xe91
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxBytesCount
	.uleb128 0x2f
	.long	.LASF86
	.byte	0x1
	.byte	0x17
	.long	0xd07
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxInIndex
	.uleb128 0x2f
	.long	.LASF87
	.byte	0x1
	.byte	0x18
	.long	0xd07
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxOutIndex
	.uleb128 0x2f
	.long	.LASF88
	.byte	0x1
	.byte	0x1a
	.long	0xd07
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxOutIndex
	.uleb128 0x2f
	.long	.LASF89
	.byte	0x1
	.byte	0x19
	.long	0xd07
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxInIndex
	.uleb128 0x5
	.long	0x30
	.long	0xf00
	.uleb128 0x6
	.long	0x77
	.byte	0xff
	.byte	0
	.uleb128 0x2f
	.long	.LASF90
	.byte	0x1
	.byte	0x14
	.long	0xef0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxBuffer
	.uleb128 0x2f
	.long	.LASF91
	.byte	0x1
	.byte	0x15
	.long	0xef0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxBuffer
	.uleb128 0x2f
	.long	.LASF92
	.byte	0x1
	.byte	0x22
	.long	0xd07
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxOvflCount
	.uleb128 0x2f
	.long	.LASF93
	.byte	0x1
	.byte	0x23
	.long	0xd07
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxOvflCount
	.uleb128 0x2f
	.long	.LASF94
	.byte	0x1
	.byte	0x25
	.long	0xd07
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxBuffUsage
	.uleb128 0x2f
	.long	.LASF95
	.byte	0x1
	.byte	0x26
	.long	0xd07
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxBuffUsage
	.uleb128 0x2f
	.long	.LASF96
	.byte	0x1
	.byte	0x1e
	.long	0xd07
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxLastCmd
	.uleb128 0x2e
	.long	.LASF97
	.byte	0x5
	.byte	0xee
	.long	0xfb
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.long	0x30
	.long	0xf9b
	.uleb128 0x6
	.long	0x77
	.byte	0x9
	.byte	0
	.uleb128 0x2f
	.long	.LASF98
	.byte	0x8
	.byte	0xaf
	.long	0xf8b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x31
	.long	.LASF99
	.byte	0x8
	.word	0x104
	.long	0xfbb
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0xcd2
	.uleb128 0x31
	.long	.LASF100
	.byte	0x8
	.word	0x105
	.long	0xfce
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0xcd2
	.uleb128 0x5
	.long	0xfe3
	.long	0xfe3
	.uleb128 0x6
	.long	0x77
	.byte	0x9
	.byte	0
	.uleb128 0x30
	.long	0x153
	.uleb128 0x2e
	.long	.LASF101
	.byte	0x6
	.byte	0x57
	.long	0xff5
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	0xfd3
	.uleb128 0x2f
	.long	.LASF102
	.byte	0x1
	.byte	0x20
	.long	0xd07
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiRxOvfl
	.uleb128 0x2f
	.long	.LASF103
	.byte	0x1
	.byte	0x21
	.long	0xd07
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	midiTxOvfl
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF104
	.long	.LASF104
	.byte	0x7
	.byte	0x1d
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF105
	.long	.LASF105
	.byte	0x9
	.byte	0x23
	.uleb128 0x32
	.byte	0x1
	.byte	0x1
	.long	.LASF106
	.long	.LASF106
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
	.uleb128 0x27
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
	.uleb128 0x2a
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x21
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.long	.LVL11
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
	.long	.LVL9
	.long	.LVL10
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST4:
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
.LLST5:
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
.LLST6:
	.long	.LVL12
	.long	.LVL15
	.word	0x1
	.byte	0x68
	.long	.LVL15
	.long	.LVL22
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL22
	.long	.LFE25
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL13
	.long	.LVL14
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14
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
.LLST8:
	.long	.LVL17
	.long	.LVL23
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST9:
	.long	.LVL18
	.long	.LVL19
	.word	0x1
	.byte	0x68
	.long	.LVL19
	.long	.LVL20
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL20
	.long	.LVL24
	.word	0x1
	.byte	0x68
	.long	.LVL25
	.long	.LVL26
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST10:
	.long	.LVL21
	.long	.LVL23
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+621
	.sleb128 0
	.long	0
	.long	0
.LLST11:
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
.LLST12:
	.long	.LVL27
	.long	.LVL28
	.word	0x1
	.byte	0x68
	.long	.LVL28
	.long	.LVL33
	.word	0x1
	.byte	0x6c
	.long	.LVL33
	.long	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
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
.LLST14:
	.long	.LVL34
	.long	.LVL36
	.word	0x1
	.byte	0x6c
	.long	.LVL37
	.long	.LVL38
	.word	0x1
	.byte	0x6c
	.long	.LVL38
	.long	.LFE13
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST15:
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
.LLST16:
	.long	.LVL39
	.long	.LVL40
	.word	0x1
	.byte	0x68
	.long	.LVL40
	.long	.LVL45
	.word	0x1
	.byte	0x6c
	.long	.LVL45
	.long	.LFE18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
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
.LLST18:
	.long	.LVL46
	.long	.LVL54
	.word	0x1
	.byte	0x68
	.long	.LVL54
	.long	.LVL65
	.word	0x1
	.byte	0x6c
	.long	.LVL65
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL56
	.long	.LVL57
	.word	0x1
	.byte	0x68
	.long	.LVL61
	.long	.LVL62
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST20:
	.long	.LVL63
	.long	.LVL64
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST21:
	.long	.LVL47
	.long	.LVL53
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST22:
	.long	.LVL48
	.long	.LVL49
	.word	0x1
	.byte	0x69
	.long	.LVL50
	.long	.LVL51
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL51
	.long	.LVL55-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST23:
	.long	.LVL52
	.long	.LVL53
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1126
	.sleb128 0
	.long	0
	.long	0
.LLST24:
	.long	.LVL57
	.long	.LVL58
	.word	0x1
	.byte	0x68
	.long	.LVL58
	.long	.LVL59
	.word	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.long	.LVL59
	.long	.LVL60
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST25:
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
.LLST26:
	.long	.LVL66
	.long	.LVL67
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL76
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
.LLST27:
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
.LLST28:
	.long	.LVL77
	.long	.LVL78
	.word	0x1
	.byte	0x68
	.long	.LVL78
	.long	.LVL87
	.word	0x1
	.byte	0x6d
	.long	.LVL87
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL77
	.long	.LVL79-1
	.word	0x1
	.byte	0x66
	.long	.LVL79-1
	.long	.LVL87
	.word	0x1
	.byte	0x6c
	.long	.LVL87
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
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
.LLST31:
	.long	.LVL88
	.long	.LVL89
	.word	0x1
	.byte	0x68
	.long	.LVL89
	.long	.LVL98
	.word	0x1
	.byte	0x6d
	.long	.LVL98
	.long	.LFE21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL88
	.long	.LVL90-1
	.word	0x1
	.byte	0x66
	.long	.LVL90-1
	.long	.LVL98
	.word	0x1
	.byte	0x6c
	.long	.LVL98
	.long	.LFE21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
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
.LLST34:
	.long	.LVL99
	.long	.LVL100
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL100
	.long	.LVL102
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL102
	.long	.LVL103
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL103
	.long	.LVL105
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL105
	.long	.LFE22
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL100
	.long	.LVL101-1
	.word	0x1
	.byte	0x68
	.long	.LVL104
	.long	.LFE22
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST36:
	.long	.LVL100
	.long	.LVL101-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL101-1
	.long	.LVL102
	.word	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.long	.LVL103
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
.LLST38:
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
.LLST39:
	.long	.LVL113
	.long	.LVL115
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL115
	.long	.LVL119
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST40:
	.long	.LVL114
	.long	.LVL115
	.word	0x3
	.byte	0x8
	.byte	0x50
	.byte	0x9f
	.long	.LVL115
	.long	.LVL120
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST41:
	.long	.LVL123
	.long	.LVL125
	.word	0x1
	.byte	0x68
	.long	.LVL126
	.long	.LFE26
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST42:
	.long	.LVL121
	.long	.LVL122
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL122
	.long	.LVL125
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL125
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
.LLST43:
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
.LLST44:
	.long	.LVL127
	.long	.LVL128
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL128
	.long	.LVL139
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST45:
	.long	.LVL131
	.long	.LVL140
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST46:
	.long	.LVL130
	.long	.LVL135
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST47:
	.long	.LVL131
	.long	.LVL132
	.word	0x1
	.byte	0x68
	.long	.LVL132
	.long	.LVL133
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL133
	.long	.LVL136
	.word	0x1
	.byte	0x68
	.long	.LVL137
	.long	.LVL138
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST48:
	.long	.LVL134
	.long	.LVL135
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2399
	.sleb128 0
	.long	0
	.long	0
.LLST49:
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
.LLST50:
	.long	.LVL141
	.long	.LVL142
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL142
	.long	.LVL144
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL144
	.long	.LVL145
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL145
	.long	.LVL146
	.word	0x5
	.byte	0x3
	.long	serUSBTxOutIndex
	.long	0
	.long	0
.LLST51:
	.long	.LVL147
	.long	.LVL148
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL148
	.long	.LFE29
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST52:
	.long	.LVL150
	.long	.LVL153
	.word	0x1
	.byte	0x68
	.long	.LVL153
	.long	.LVL160
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL160
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LVL151
	.long	.LVL152
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL152
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
.LLST54:
	.long	.LVL155
	.long	.LVL161
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST55:
	.long	.LVL156
	.long	.LVL157
	.word	0x1
	.byte	0x68
	.long	.LVL157
	.long	.LVL158
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL158
	.long	.LVL162
	.word	0x1
	.byte	0x68
	.long	.LVL163
	.long	.LVL164
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST56:
	.long	.LVL159
	.long	.LVL161
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2657
	.sleb128 0
	.long	0
	.long	0
.LLST57:
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
.LLST58:
	.long	.LVL165
	.long	.LVL167
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL167
	.long	.LVL169
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL169
	.long	.LVL170
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL170
	.long	.LVL174
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL174
	.long	.LFE31
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST59:
	.long	.LVL166
	.long	.LVL167
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL167
	.long	.LVL169
	.word	0x1
	.byte	0x61
	.long	.LVL169
	.long	.LVL172
	.word	0x1
	.byte	0x69
	.long	.LVL172
	.long	.LVL173
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST60:
	.long	.LVL167
	.long	.LVL168-1
	.word	0x1
	.byte	0x68
	.long	.LVL171
	.long	.LFE31
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST61:
	.long	.LVL167
	.long	.LVL168-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL168-1
	.long	.LVL169
	.word	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.long	.LVL170
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
.LLST63:
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
.LLST64:
	.long	.LVL175
	.long	.LVL177
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL177
	.long	.LVL179
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL179
	.long	.LVL180
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL180
	.long	.LVL184
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL184
	.long	.LFE32
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST65:
	.long	.LVL176
	.long	.LVL177
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL177
	.long	.LVL179
	.word	0x1
	.byte	0x61
	.long	.LVL179
	.long	.LVL182
	.word	0x1
	.byte	0x69
	.long	.LVL182
	.long	.LVL183
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST66:
	.long	.LVL177
	.long	.LVL178-1
	.word	0x1
	.byte	0x68
	.long	.LVL181
	.long	.LFE32
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST67:
	.long	.LVL188
	.long	.LVL190
	.word	0x1
	.byte	0x68
	.long	.LVL191
	.long	.LFE34
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST68:
	.long	.LVL186
	.long	.LVL187
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL187
	.long	.LVL190
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL190
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
.LLST69:
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
.LLST70:
	.long	.LVL192
	.long	.LVL194
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL194
	.long	.LVL210
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST71:
	.long	.LVL193
	.long	.LVL209
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST72:
	.long	.LVL197
	.long	.LVL211
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST73:
	.long	.LVL204
	.long	.LVL207
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST74:
	.long	.LVL196
	.long	.LVL201
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST75:
	.long	.LVL197
	.long	.LVL198
	.word	0x1
	.byte	0x68
	.long	.LVL198
	.long	.LVL199
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL199
	.long	.LVL202
	.word	0x1
	.byte	0x68
	.long	.LVL203
	.long	.LVL204
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST76:
	.long	.LVL200
	.long	.LVL201
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+3138
	.sleb128 0
	.long	0
	.long	0
.LLST77:
	.long	.LVL204
	.long	.LVL208
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST78:
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
.LLST79:
	.long	.LVL212
	.long	.LVL213
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL213
	.long	.LVL215
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL215
	.long	.LVL216
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL216
	.long	.LVL217
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
.LASF41:
	.string	"bitNr"
.LASF40:
	.string	"serial0USB_logPipeOutOn"
.LASF49:
	.string	"init_Serial0SerUSB"
.LASF101:
	.string	"swTimer"
.LASF100:
	.string	"HelloMsg"
.LASF82:
	.string	"serUSBRxBuffer"
.LASF110:
	.string	"__iCliRetVal"
.LASF46:
	.string	"__addr16"
.LASF23:
	.string	"rxBufferLoad"
.LASF53:
	.string	"__vector_25"
.LASF54:
	.string	"__vector_26"
.LASF56:
	.string	"serial3SER_ESPSend"
.LASF8:
	.string	"long long unsigned int"
.LASF79:
	.string	"serUSBTxInIndex"
.LASF39:
	.string	"pipe"
.LASF58:
	.string	"serial3SER_ESP_sendString"
.LASF11:
	.string	"message8"
.LASF97:
	.string	"midi_Setting"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF107:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF62:
	.string	"receivedByte"
.LASF69:
	.string	"serESPTxInIndex"
.LASF81:
	.string	"serUSB_Active"
.LASF5:
	.string	"long int"
.LASF25:
	.string	"__vector_36"
.LASF113:
	.string	"__vector_37"
.LASF75:
	.string	"serESPMidiTmp"
.LASF77:
	.string	"serUSBRxOutIndex"
.LASF67:
	.string	"serESPRxOutIndex"
.LASF3:
	.string	"uint16_t"
.LASF68:
	.string	"serESPTxOutIndex"
.LASF98:
	.string	"lcdData"
.LASF96:
	.string	"midiTxLastCmd"
.LASF45:
	.string	"progmem_s"
.LASF47:
	.string	"__result"
.LASF51:
	.string	"count"
.LASF63:
	.string	"inpBufferPtr"
.LASF30:
	.string	"__ToDo"
.LASF4:
	.string	"unsigned int"
.LASF15:
	.string	"AcceptProgChange"
.LASF6:
	.string	"long unsigned int"
.LASF90:
	.string	"midiRxBuffer"
.LASF65:
	.string	"cr_lf"
.LASF78:
	.string	"serUSBTxOutIndex"
.LASF29:
	.string	"sreg_save"
.LASF32:
	.string	"data"
.LASF73:
	.string	"serESPTxBuffer"
.LASF74:
	.string	"serESPInBuffer"
.LASF83:
	.string	"serUSBTxBuffer"
.LASF22:
	.string	"newIndex"
.LASF85:
	.string	"midiRxBytesCount"
.LASF72:
	.string	"serESPRxBuffer"
.LASF88:
	.string	"midiTxOutIndex"
.LASF61:
	.string	"__vector_54"
.LASF64:
	.string	"__vector_55"
.LASF12:
	.string	"PipeMessage_t"
.LASF48:
	.string	"serial0SER_USB_sendCRLF"
.LASF37:
	.string	"txBufferLoad"
.LASF95:
	.string	"midiTxBuffUsage"
.LASF20:
	.string	"Timer"
.LASF52:
	.string	"serial0SER_USBReadRx"
.LASF24:
	.string	"ovflCount"
.LASF9:
	.string	"sizetype"
.LASF86:
	.string	"midiRxInIndex"
.LASF108:
	.string	".././serial.c"
.LASF43:
	.string	"serial0USB_logPipeOutOff"
.LASF103:
	.string	"midiTxOvfl"
.LASF80:
	.string	"serUSBOvflFlag"
.LASF16:
	.string	"MidiSetting_t"
.LASF38:
	.string	"serial0USB_logPipeIn"
.LASF94:
	.string	"midiRxBuffUsage"
.LASF19:
	.string	"prescaler"
.LASF66:
	.string	"serESPRxInIndex"
.LASF109:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF1:
	.string	"unsigned char"
.LASF26:
	.string	"serial0SER_USBSend"
.LASF106:
	.string	"log_putError"
.LASF18:
	.string	"counter"
.LASF42:
	.string	"moduleMask"
.LASF92:
	.string	"midiRxOvflCount"
.LASF104:
	.string	"nibbleToChr"
.LASF87:
	.string	"midiRxOutIndex"
.LASF105:
	.string	"eeprom_ReadUSB"
.LASF91:
	.string	"midiTxBuffer"
.LASF57:
	.string	"serial3SER_ESP_sendStringP"
.LASF17:
	.string	"char"
.LASF50:
	.string	"serial0SER_USB_sendString"
.LASF55:
	.string	"init_Serial3SerESP"
.LASF27:
	.string	"index"
.LASF36:
	.string	"serial1MIDISend"
.LASF71:
	.string	"serESP_Active"
.LASF14:
	.string	"VelZero4Off"
.LASF21:
	.string	"received_byte"
.LASF111:
	.string	"__iRestore"
.LASF44:
	.string	"serial0SER_USB_sendStringP"
.LASF60:
	.string	"serial3SER_ESPReadRx"
.LASF84:
	.string	"midiTxBytesCount"
.LASF33:
	.string	"serial1MIDIReadRx"
.LASF59:
	.string	"serial3SER_ESP_sendCRLF"
.LASF10:
	.string	"Message16"
.LASF2:
	.string	"uint8_t"
.LASF35:
	.string	"serial0USB_logMIDIout"
.LASF31:
	.string	"serial0USB_logMIDIin"
.LASF76:
	.string	"serUSBRxInIndex"
.LASF93:
	.string	"midiTxOvflCount"
.LASF70:
	.string	"serESPOvflFlag"
.LASF99:
	.string	"sw_version"
.LASF13:
	.string	"TxActivceSense"
.LASF102:
	.string	"midiRxOvfl"
.LASF89:
	.string	"midiTxInIndex"
.LASF34:
	.string	"result"
.LASF112:
	.string	"init_Serial1MIDI"
.LASF28:
	.string	"outIndex"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_clear_bss
