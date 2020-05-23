	.file	"log.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.init_log,"ax",@progbits
.global	init_log
	.type	init_log, @function
init_log:
.LFB6:
	.file 1 ".././log.c"
	.loc 1 40 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 41 0
	ldi r24,lo8(log_List)
	ldi r25,hi8(log_List)
	sts pLogStart+1,r25
	sts pLogStart,r24
	.loc 1 42 0
	sts pLogEnd+1,r25
	sts pLogEnd,r24
	ret
	.cfi_endproc
.LFE6:
	.size	init_log, .-init_log
	.section	.text.log_count,"ax",@progbits
.global	log_count
	.type	log_count, @function
log_count:
.LFB12:
	.loc 1 102 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 103 0
	lds r24,pLogEnd
	lds r25,pLogEnd+1
	lds r18,pLogStart
	lds r19,pLogStart+1
	cp r24,r18
	cpc r25,r19
	brlo .L3
	.loc 1 104 0
	sub r24,r18
	sbc r25,r19
	asr r25
	ror r24
	ldi r25,lo8(-51)
	mul r24,r25
	mov r24,r0
	clr r1
	ret
.L3:
	.loc 1 106 0
	subi r24,112
	sbci r25,-2
	sub r24,r18
	sbc r25,r19
	asr r25
	ror r24
	ldi r25,lo8(-51)
	mul r24,r25
	mov r24,r0
	clr r1
	.loc 1 108 0
	ret
	.cfi_endproc
.LFE12:
	.size	log_count, .-log_count
	.section	.text.log_getLog,"ax",@progbits
.global	log_getLog
	.type	log_getLog, @function
log_getLog:
.LFB13:
	.loc 1 110 0
	.cfi_startproc
.LVL0:
	push r28
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	.loc 1 111 0
	call log_count
.LVL1:
	cp r28,r24
	brsh .L7
	.loc 1 115 0
	lds r20,pLogStart
	lds r21,pLogStart+1
	mov r24,r28
	ldi r25,0
	movw r18,r24
	lsl r18
	rol r19
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r18,r24
	adc r19,r25
	movw r24,r20
	add r24,r18
	adc r25,r19
	ldi r22,hi8(log_List+390)
	cpi r24,lo8(log_List+390)
	cpc r25,r22
	breq .L6
	brlo .L6
	.loc 1 118 0
	subi r18,-112
	sbci r19,1
	movw r24,r20
	add r24,r18
	adc r25,r19
	rjmp .L6
.L7:
	.loc 1 113 0
	ldi r24,0
	ldi r25,0
.L6:
/* epilogue start */
	.loc 1 121 0
	pop r28
.LVL2:
	ret
	.cfi_endproc
.LFE13:
	.size	log_getLog, .-log_getLog
	.section	.text.log_getErrorText,"ax",@progbits
.global	log_getErrorText
	.type	log_getErrorText, @function
log_getErrorText:
.LFB7:
	.loc 1 46 0
	.cfi_startproc
.LVL3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 48 0
	call log_getLog
.LVL4:
	.loc 1 49 0
	sbiw r24,0
	breq .L13
.LBB2:
	.loc 1 50 0
	movw r30,r24
	ldd r19,Z+6
.LVL5:
	.loc 1 51 0
	ldd r22,Z+7
.LVL6:
.LBB3:
	.loc 1 52 0
	ldi r18,0
	rjmp .L10
.LVL7:
.L12:
	.loc 1 53 0
	mov r20,r18
	ldi r21,0
	movw r30,r20
	lsl r30
	rol r31
	movw r24,r30
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(ErrorText))
	sbci r31,hi8(-(ErrorText))
	lpm r24,Z
	cpse r19,r24
	rjmp .L11
	.loc 1 53 0 is_stmt 0 discriminator 1
	movw r30,r20
	lsl r30
	rol r31
	movw r24,r30
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(ErrorText+1))
	sbci r31,hi8(-(ErrorText+1))
	lpm r24,Z
	cpse r22,r24
	rjmp .L11
	.loc 1 54 0 is_stmt 1
	lsl r20
	rol r21
	movw r24,r20
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r20,r24
	adc r21,r25
	movw r24,r20
	subi r24,lo8(-(ErrorText+2))
	sbci r25,hi8(-(ErrorText+2))
	ret
.L11:
	.loc 1 52 0 discriminator 2
	subi r18,lo8(-(1))
.LVL8:
.L10:
	.loc 1 52 0 is_stmt 0 discriminator 1
	cpi r18,lo8(16)
	brlo .L12
.LBE3:
.LBE2:
	.loc 1 58 0 is_stmt 1
	ldi r24,0
	ldi r25,0
.LBB5:
.LBB4:
	ret
.LVL9:
.L13:
.LBE4:
.LBE5:
	ldi r24,0
	ldi r25,0
.LVL10:
	.loc 1 59 0
	ret
	.cfi_endproc
.LFE7:
	.size	log_getErrorText, .-log_getErrorText
	.section	.text.logCheckUnreadErrorLogs,"ax",@progbits
.global	logCheckUnreadErrorLogs
	.type	logCheckUnreadErrorLogs, @function
logCheckUnreadErrorLogs:
.LFB14:
	.loc 1 123 0
	.cfi_startproc
	push r28
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 124 0
	call log_count
.LVL11:
	.loc 1 126 0
	sts log_unreadErrors,__zero_reg__
	.loc 1 127 0
	cpse r24,__zero_reg__
	rjmp .L15
	rjmp .L14
.LVL12:
.L17:
	.loc 1 130 0
	mov r24,r28
	call log_getLog
.LVL13:
	.loc 1 131 0
	sbiw r24,0
	breq .L18
	.loc 1 131 0 discriminator 1
	movw r30,r24
	ldd r18,Z+4
	cpi r18,lo8(32)
	breq .L19
	.loc 1 131 0 is_stmt 0 discriminator 2
	ldd r25,Z+5
	mov r24,r28
.LVL14:
	cpi r25,lo8(69)
	brne .L15
	.loc 1 133 0 is_stmt 1
	ldi r24,lo8(-1)
	sts log_unreadErrors,r24
	.loc 1 134 0
	rjmp .L14
.LVL15:
.L18:
	mov r24,r28
.LVL16:
	rjmp .L15
.LVL17:
.L19:
	mov r24,r28
.LVL18:
.L15:
	.loc 1 129 0
	ldi r28,lo8(-1)
	add r28,r24
.LVL19:
	cpse r24,__zero_reg__
	rjmp .L17
.LVL20:
.L14:
/* epilogue start */
	.loc 1 138 0
	pop r28
	ret
	.cfi_endproc
.LFE14:
	.size	logCheckUnreadErrorLogs, .-logCheckUnreadErrorLogs
	.section	.text.log_getShortTextFromPtr,"ax",@progbits
.global	log_getShortTextFromPtr
	.type	log_getShortTextFromPtr, @function
log_getShortTextFromPtr:
.LFB15:
	.loc 1 140 0
	.cfi_startproc
.LVL21:
	push r17
.LCFI2:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI3:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI4:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
.LVL22:
	.loc 1 143 0
	sbiw r24,0
	brne .+2
	rjmp .L21
	mov r17,r22
	movw r28,r24
	.loc 1 145 0
	ldd r24,Y+3
.LVL23:
	tst r24
	breq .L22
	.loc 1 147 0
	ldi r22,lo8(Log_TextBuff)
	ldi r23,hi8(Log_TextBuff)
.LVL24:
	call putChar_Dec2
.LVL25:
	.loc 1 148 0
	movw r22,r24
	subi r22,-1
	sbci r23,-1
.LVL26:
	ldi r18,lo8(104)
	movw r30,r24
	st Z,r18
	.loc 1 149 0
	ldd r24,Y+2
	call putChar_Dec2
.LVL27:
	movw r26,r24
.LVL28:
	rjmp .L23
.LVL29:
.L22:
	.loc 1 150 0
	ldd r24,Y+2
	tst r24
	breq .L24
	.loc 1 152 0
	ldi r22,lo8(Log_TextBuff)
	ldi r23,hi8(Log_TextBuff)
	call putChar_Dec2
.LVL30:
	.loc 1 153 0
	movw r22,r24
	subi r22,-1
	sbci r23,-1
.LVL31:
	ldi r18,lo8(109)
	movw r30,r24
	st Z,r18
	.loc 1 154 0
	ldd r24,Y+1
	call putChar_Dec2
.LVL32:
	movw r26,r24
.LVL33:
	rjmp .L23
.LVL34:
.L24:
.LBB6:
	.loc 1 156 0
	ldi r22,lo8(Log_TextBuff)
	ldi r23,hi8(Log_TextBuff)
	ldd r24,Y+1
	call putChar_Dec2
.LVL35:
	movw r30,r24
.LVL36:
	.loc 1 157 0
	ldi r24,lo8(115)
.LVL37:
	st Z,r24
	.loc 1 158 0
	ld r25,Y
	lsl r25
.LVL38:
	.loc 1 159 0
	ldi r18,0
	.loc 1 160 0
	rjmp .L25
.LVL39:
.L26:
	.loc 1 161 0
	subi r25,lo8(-(-25))
.LVL40:
	.loc 1 162 0
	subi r18,lo8(-(1))
.LVL41:
.L25:
	.loc 1 160 0
	cpi r25,lo8(25)
	brsh .L26
.LVL42:
	.loc 1 164 0
	subi r18,lo8(-(48))
.LVL43:
	std Z+1,r18
.LVL44:
	.loc 1 166 0
	lsl r25
.LVL45:
	.loc 1 165 0
	ldi r18,0
	.loc 1 167 0
	rjmp .L27
.LVL46:
.L28:
	.loc 1 168 0
	subi r25,lo8(-(-5))
.LVL47:
	.loc 1 169 0
	subi r18,lo8(-(1))
.LVL48:
.L27:
	.loc 1 167 0
	cpi r25,lo8(5)
	brsh .L28
	.loc 1 171 0
	movw r26,r30
	adiw r26,3
.LVL49:
	subi r18,lo8(-(48))
.LVL50:
	std Z+2,r18
.LVL51:
.L23:
.LBE6:
	.loc 1 174 0
	ldd r25,Y+4
	cpi r25,lo8(64)
	breq .L30
	cpi r25,lo8(-128)
	breq .L31
	cpi r25,lo8(32)
	brne .L35
	rjmp .L32
.L31:
	.loc 1 176 0
	movw r30,r26
	adiw r30,1
.LVL52:
	ldi r24,lo8(42)
	st X,r24
	.loc 1 177 0
	rjmp .L33
.LVL53:
.L30:
	.loc 1 179 0
	movw r30,r26
	adiw r30,1
.LVL54:
	ldi r24,lo8(-91)
	st X,r24
	.loc 1 180 0
	rjmp .L33
.LVL55:
.L32:
	.loc 1 182 0
	movw r30,r26
	adiw r30,1
.LVL56:
	ldi r24,lo8(32)
	st X,r24
	.loc 1 183 0
	rjmp .L33
.LVL57:
.L35:
	.loc 1 185 0
	movw r30,r26
	adiw r30,1
.LVL58:
	ldi r24,lo8(63)
	st X,r24
.L33:
	.loc 1 189 0
	movw r22,r30
	subi r22,-1
	sbci r23,-1
.LVL59:
	ldd r24,Y+5
	st Z,r24
	.loc 1 191 0
	ldd r24,Y+6
	call putChar_hex
.LVL60:
	.loc 1 192 0
	movw r22,r24
	ldd r24,Y+7
.LVL61:
	call putChar_hex
.LVL62:
	.loc 1 193 0
	movw r22,r24
	subi r22,-1
	sbci r23,-1
.LVL63:
	ldi r18,lo8(45)
	movw r30,r24
	st Z,r18
	.loc 1 194 0
	ldd r24,Y+8
	ldd r25,Y+9
	call putChar_word
.LVL64:
	.loc 1 195 0
	movw r30,r24
	st Z,__zero_reg__
	.loc 1 196 0
	cpi r17,lo8(-1)
	breq .L34
	.loc 1 198 0
	std Y+4,r17
	.loc 1 200 0
	call logCheckUnreadErrorLogs
.LVL65:
	rjmp .L34
.LVL66:
.L21:
	.loc 1 203 0
	ldi r30,lo8(Log_TextBuff)
	ldi r31,hi8(Log_TextBuff)
	ldi r24,lo8(45)
.LVL67:
	st Z,r24
	.loc 1 204 0
	std Z+1,__zero_reg__
.LVL68:
.L34:
	.loc 1 207 0
	ldi r24,lo8(Log_TextBuff)
	ldi r25,hi8(Log_TextBuff)
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
	.cfi_endproc
.LFE15:
	.size	log_getShortTextFromPtr, .-log_getShortTextFromPtr
	.section	.text.log_put,"ax",@progbits
.global	log_put
	.type	log_put, @function
log_put:
.LFB11:
	.loc 1 75 0
	.cfi_startproc
.LVL69:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 76 0
	lds r30,pLogEnd
	lds r31,pLogEnd+1
	ldi r26,lo8(time_Uptime)
	ldi r27,hi8(time_Uptime)
	ld r25,X
	st Z,r25
	.loc 1 77 0
	lds r30,pLogEnd
	lds r31,pLogEnd+1
	adiw r26,1
	ld r25,X
	sbiw r26,1
	std Z+1,r25
	.loc 1 78 0
	lds r30,pLogEnd
	lds r31,pLogEnd+1
	adiw r26,2
	ld r25,X
	sbiw r26,2
	std Z+2,r25
	.loc 1 79 0
	adiw r26,3
	ld r25,X
	std Z+3,r25
	.loc 1 80 0
	std Z+5,r18
	.loc 1 81 0
	std Z+6,r24
	.loc 1 82 0
	std Z+7,r22
	.loc 1 83 0
	std Z+9,r21
	std Z+8,r20
	.loc 1 84 0
	ldi r24,lo8(-128)
.LVL70:
	std Z+4,r24
	.loc 1 85 0
	lds r24,serUSB_Active
	cpi r24,lo8(-1)
	brne .L37
	.loc 1 86 0
	ldi r24,lo8(stringLog)
	ldi r25,hi8(stringLog)
	call serial0SER_USB_sendStringP
.LVL71:
	.loc 1 87 0
	ldi r22,lo8(-1)
	lds r24,pLogEnd
	lds r25,pLogEnd+1
	call log_getShortTextFromPtr
.LVL72:
	call serial0SER_USB_sendString
.LVL73:
	.loc 1 88 0
	ldi r24,lo8(cr_lf)
	ldi r25,hi8(cr_lf)
	call serial0SER_USB_sendStringP
.LVL74:
.L37:
	.loc 1 90 0
	lds r24,pLogEnd
	lds r25,pLogEnd+1
	adiw r24,10
	sts pLogEnd+1,r25
	sts pLogEnd,r24
	.loc 1 91 0
	subi r24,lo8(log_List+390)
	sbci r25,hi8(log_List+390)
	breq .L38
	brlo .L38
	.loc 1 92 0
	ldi r24,lo8(log_List)
	ldi r25,hi8(log_List)
	sts pLogEnd+1,r25
	sts pLogEnd,r24
.L38:
	.loc 1 94 0
	lds r18,pLogEnd
	lds r19,pLogEnd+1
	lds r24,pLogStart
	lds r25,pLogStart+1
	cp r18,r24
	cpc r19,r25
	brne .L36
	.loc 1 95 0
	adiw r24,10
	sts pLogStart+1,r25
	sts pLogStart,r24
	.loc 1 96 0
	subi r24,lo8(log_List+390)
	sbci r25,hi8(log_List+390)
	breq .L36
	brlo .L36
	.loc 1 97 0
	ldi r24,lo8(log_List)
	ldi r25,hi8(log_List)
	sts pLogStart+1,r25
	sts pLogStart,r24
.L36:
	ret
	.cfi_endproc
.LFE11:
	.size	log_put, .-log_put
	.section	.text.log_putError,"ax",@progbits
.global	log_putError
	.type	log_putError, @function
log_putError:
.LFB8:
	.loc 1 61 0
	.cfi_startproc
.LVL75:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 62 0
	ldi r18,lo8(69)
	call log_put
.LVL76:
	.loc 1 63 0
	ldi r24,lo8(-1)
	sts log_unreadErrors,r24
	ret
	.cfi_endproc
.LFE8:
	.size	log_putError, .-log_putError
	.section	.text.log_putWarning,"ax",@progbits
.global	log_putWarning
	.type	log_putWarning, @function
log_putWarning:
.LFB9:
	.loc 1 66 0
	.cfi_startproc
.LVL77:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 67 0
	ldi r18,lo8(87)
	call log_put
.LVL78:
	ret
	.cfi_endproc
.LFE9:
	.size	log_putWarning, .-log_putWarning
	.section	.text.log_putInfo,"ax",@progbits
.global	log_putInfo
	.type	log_putInfo, @function
log_putInfo:
.LFB10:
	.loc 1 69 0
	.cfi_startproc
.LVL79:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 70 0
	ldi r18,lo8(73)
	call log_put
.LVL80:
	ret
	.cfi_endproc
.LFE10:
	.size	log_putInfo, .-log_putInfo
	.section	.text.log_getShortTextFromIndex,"ax",@progbits
.global	log_getShortTextFromIndex
	.type	log_getShortTextFromIndex, @function
log_getShortTextFromIndex:
.LFB16:
	.loc 1 211 0
	.cfi_startproc
.LVL81:
	push r28
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r22
	.loc 1 213 0
	call log_getLog
.LVL82:
	.loc 1 214 0
	sbiw r24,0
	breq .L44
	.loc 1 215 0
	mov r22,r28
	call log_getShortTextFromPtr
.LVL83:
	rjmp .L45
.LVL84:
.L44:
	.loc 1 217 0
	ldi r30,lo8(Log_TextBuff)
	ldi r31,hi8(Log_TextBuff)
	ldi r24,lo8(45)
.LVL85:
	st Z,r24
	.loc 1 218 0
	std Z+1,__zero_reg__
	.loc 1 219 0
	movw r24,r30
.L45:
/* epilogue start */
	.loc 1 221 0
	pop r28
.LVL86:
	ret
	.cfi_endproc
.LFE16:
	.size	log_getShortTextFromIndex, .-log_getShortTextFromIndex
.global	nullLog
	.section	.progmem.data.nullLog,"a",@progbits
	.type	nullLog, @object
	.size	nullLog, 2
nullLog:
	.string	"-"
.global	stringLog
	.section	.progmem.data.stringLog,"a",@progbits
	.type	stringLog, @object
	.size	stringLog, 6
stringLog:
	.string	"Log: "
.global	ErrorText
	.section	.progmem.data.ErrorText,"a",@progbits
	.type	ErrorText, @object
	.size	ErrorText, 288
ErrorText:
	.byte	0
	.byte	0
	.string	"Initialisation"
	.zero	1
	.byte	1
	.byte	0
	.string	"EE:Module"
	.zero	6
	.byte	1
	.byte	1
	.string	"EE:Midi-In"
	.zero	5
	.byte	1
	.byte	2
	.string	"EE:Midi-Out"
	.zero	4
	.byte	1
	.byte	3
	.string	"EE:Man-Module"
	.zero	2
	.byte	1
	.byte	4
	.string	"EE:USB"
	.zero	9
	.byte	1
	.byte	5
	.string	"EE:Register"
	.zero	4
	.byte	1
	.byte	6
	.string	"EE:Programs"
	.zero	4
	.byte	1
	.byte	7
	.string	"EE:Softkeys"
	.zero	4
	.byte	1
	.byte	8
	.string	"EE:MidiThru"
	.zero	4
	.byte	2
	.byte	0
	.string	"Mod:Fail"
	.zero	7
	.byte	2
	.byte	1
	.string	"Mod:UnknowInp"
	.zero	2
	.byte	3
	.byte	0
	.string	"OVFL:MidiIn"
	.zero	4
	.byte	3
	.byte	1
	.string	"OVFL:MidiOut"
	.zero	3
	.byte	4
	.byte	0
	.string	"OVFL:PipeMsg"
	.zero	3
	.byte	5
	.byte	0
	.string	"Pwr:OuptutOn"
	.zero	3
	.comm	log_unreadErrors,1,1
	.comm	Log_TextBuff,40,1
	.comm	pLogEnd,2,1
	.comm	pLogStart,2,1
	.comm	log_List,400,1
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 ".././log.h"
	.file 4 ".././utils.h"
	.file 5 ".././hwtimer.h"
	.file 6 ".././serial.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x71c
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF54
	.byte	0xc
	.long	.LASF55
	.long	.LASF56
	.long	.Ldebug_ranges0+0x30
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x4
	.long	.LASF3
	.byte	0x2
	.byte	0x7e
	.long	0x49
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x4
	.long	.LASF4
	.byte	0x2
	.byte	0x80
	.long	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x5
	.byte	0xa
	.byte	0x3
	.byte	0x1c
	.long	0xd4
	.uleb128 0x6
	.long	.LASF9
	.byte	0x3
	.byte	0x1d
	.long	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF10
	.byte	0x3
	.byte	0x1e
	.long	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.long	.LASF11
	.byte	0x3
	.byte	0x1f
	.long	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.long	.LASF12
	.byte	0x3
	.byte	0x20
	.long	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.long	.LASF13
	.byte	0x3
	.byte	0x21
	.long	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.long	.LASF14
	.byte	0x3
	.byte	0x22
	.long	0x50
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.long	0x3e
	.long	0xe4
	.uleb128 0x8
	.long	0xe4
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF15
	.uleb128 0x4
	.long	.LASF16
	.byte	0x3
	.byte	0x23
	.long	0x77
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF17
	.uleb128 0x9
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.byte	0x28
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.long	.LASF58
	.byte	0x1
	.byte	0x66
	.long	0x3e
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.long	0x162
	.long	.LFB13
	.long	.LFE13
	.long	.LLST0
	.byte	0x1
	.long	0x162
	.uleb128 0xc
	.long	.LASF20
	.byte	0x1
	.byte	0x6e
	.long	0x3e
	.long	.LLST1
	.uleb128 0xd
	.long	.LVL1
	.long	0x112
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0xeb
	.uleb128 0xf
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.long	0x1f1
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1f1
	.uleb128 0xc
	.long	.LASF13
	.byte	0x1
	.byte	0x2e
	.long	0x3e
	.long	.LLST2
	.uleb128 0x10
	.long	.LASF21
	.byte	0x1
	.byte	0x2f
	.long	0x162
	.long	.LLST3
	.uleb128 0x11
	.long	.Ldebug_ranges0+0
	.long	0x1df
	.uleb128 0x10
	.long	.LASF22
	.byte	0x1
	.byte	0x32
	.long	0x3e
	.long	.LLST4
	.uleb128 0x10
	.long	.LASF23
	.byte	0x1
	.byte	0x33
	.long	0x3e
	.long	.LLST5
	.uleb128 0x12
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x34
	.long	0x3e
	.long	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL4
	.long	0x12b
	.uleb128 0x15
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x2
	.byte	0x1
	.long	0x1f8
	.uleb128 0x17
	.long	0xf6
	.uleb128 0x18
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.byte	0x7b
	.long	.LFB14
	.long	.LFE14
	.long	.LLST7
	.byte	0x1
	.long	0x24e
	.uleb128 0x10
	.long	.LASF24
	.byte	0x1
	.byte	0x7c
	.long	0x3e
	.long	.LLST8
	.uleb128 0x10
	.long	.LASF25
	.byte	0x1
	.byte	0x7d
	.long	0x162
	.long	.LLST9
	.uleb128 0xd
	.long	.LVL11
	.long	0x112
	.uleb128 0x14
	.long	.LVL13
	.long	0x12b
	.uleb128 0x15
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.long	0x34c
	.long	.LFB15
	.long	.LFE15
	.long	.LLST10
	.byte	0x1
	.long	0x34c
	.uleb128 0xc
	.long	.LASF21
	.byte	0x1
	.byte	0x8c
	.long	0x162
	.long	.LLST11
	.uleb128 0xc
	.long	.LASF27
	.byte	0x1
	.byte	0x8c
	.long	0xf6
	.long	.LLST12
	.uleb128 0x10
	.long	.LASF28
	.byte	0x1
	.byte	0x8d
	.long	0x34c
	.long	.LLST13
	.uleb128 0x19
	.long	.LBB6
	.long	.LBE6
	.long	0x2dd
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.byte	0x9e
	.long	0x3e
	.long	.LLST14
	.uleb128 0x10
	.long	.LASF29
	.byte	0x1
	.byte	0x9f
	.long	0x3e
	.long	.LLST15
	.uleb128 0x14
	.long	.LVL35
	.long	0x6de
	.uleb128 0x15
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Log_TextBuff
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LVL25
	.long	0x6de
	.long	0x2f9
	.uleb128 0x15
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Log_TextBuff
	.byte	0
	.uleb128 0xd
	.long	.LVL27
	.long	0x6de
	.uleb128 0x1a
	.long	.LVL30
	.long	0x6de
	.long	0x31e
	.uleb128 0x15
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Log_TextBuff
	.byte	0
	.uleb128 0xd
	.long	.LVL32
	.long	0x6de
	.uleb128 0xd
	.long	.LVL60
	.long	0x6eb
	.uleb128 0xd
	.long	.LVL62
	.long	0x6eb
	.uleb128 0xd
	.long	.LVL64
	.long	0x6f8
	.uleb128 0xd
	.long	.LVL65
	.long	0x1fd
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0xf6
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF33
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x3eb
	.uleb128 0xc
	.long	.LASF30
	.byte	0x1
	.byte	0x4b
	.long	0x3e
	.long	.LLST16
	.uleb128 0xc
	.long	.LASF31
	.byte	0x1
	.byte	0x4b
	.long	0x3e
	.long	.LLST17
	.uleb128 0xc
	.long	.LASF32
	.byte	0x1
	.byte	0x4b
	.long	0x50
	.long	.LLST18
	.uleb128 0xc
	.long	.LASF11
	.byte	0x1
	.byte	0x4b
	.long	0x3e
	.long	.LLST19
	.uleb128 0x1a
	.long	.LVL71
	.long	0x705
	.long	0x3c4
	.uleb128 0x15
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	stringLog
	.byte	0
	.uleb128 0x1a
	.long	.LVL72
	.long	0x24e
	.long	0x3d8
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0xd
	.long	.LVL73
	.long	0x712
	.uleb128 0xd
	.long	.LVL74
	.long	0x705
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF34
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x45d
	.uleb128 0xc
	.long	.LASF30
	.byte	0x1
	.byte	0x3d
	.long	0x3e
	.long	.LLST20
	.uleb128 0xc
	.long	.LASF31
	.byte	0x1
	.byte	0x3d
	.long	0x3e
	.long	.LLST21
	.uleb128 0xc
	.long	.LASF32
	.byte	0x1
	.byte	0x3d
	.long	0x50
	.long	.LLST22
	.uleb128 0x14
	.long	.LVL76
	.long	0x352
	.uleb128 0x15
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x15
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x15
	.byte	0x1
	.byte	0x62
	.byte	0x2
	.byte	0x8
	.byte	0x45
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF35
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x4cf
	.uleb128 0xc
	.long	.LASF30
	.byte	0x1
	.byte	0x42
	.long	0x3e
	.long	.LLST23
	.uleb128 0xc
	.long	.LASF31
	.byte	0x1
	.byte	0x42
	.long	0x3e
	.long	.LLST24
	.uleb128 0xc
	.long	.LASF32
	.byte	0x1
	.byte	0x42
	.long	0x50
	.long	.LLST25
	.uleb128 0x14
	.long	.LVL78
	.long	0x352
	.uleb128 0x15
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x15
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x15
	.byte	0x1
	.byte	0x62
	.byte	0x2
	.byte	0x8
	.byte	0x57
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF36
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x541
	.uleb128 0xc
	.long	.LASF30
	.byte	0x1
	.byte	0x45
	.long	0x3e
	.long	.LLST26
	.uleb128 0xc
	.long	.LASF31
	.byte	0x1
	.byte	0x45
	.long	0x3e
	.long	.LLST27
	.uleb128 0xc
	.long	.LASF32
	.byte	0x1
	.byte	0x45
	.long	0x50
	.long	.LLST28
	.uleb128 0x14
	.long	.LVL80
	.long	0x352
	.uleb128 0x15
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x15
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x15
	.byte	0x1
	.byte	0x62
	.byte	0x2
	.byte	0x8
	.byte	0x49
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF37
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.long	0x34c
	.long	.LFB16
	.long	.LFE16
	.long	.LLST29
	.byte	0x1
	.long	0x5b2
	.uleb128 0xc
	.long	.LASF20
	.byte	0x1
	.byte	0xd3
	.long	0x3e
	.long	.LLST30
	.uleb128 0xc
	.long	.LASF27
	.byte	0x1
	.byte	0xd3
	.long	0xf6
	.long	.LLST31
	.uleb128 0x10
	.long	.LASF21
	.byte	0x1
	.byte	0xd4
	.long	0x162
	.long	.LLST32
	.uleb128 0x1a
	.long	.LVL82
	.long	0x12b
	.long	0x5a1
	.uleb128 0x15
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.uleb128 0x14
	.long	.LVL83
	.long	0x24e
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0xeb
	.long	0x5c2
	.uleb128 0x8
	.long	0xe4
	.byte	0x27
	.byte	0
	.uleb128 0x1c
	.long	.LASF38
	.byte	0x1
	.byte	0xe
	.long	0x5b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	log_List
	.uleb128 0x7
	.long	0xf6
	.long	0x5e4
	.uleb128 0x8
	.long	0xe4
	.byte	0x27
	.byte	0
	.uleb128 0x1c
	.long	.LASF39
	.byte	0x1
	.byte	0x11
	.long	0x5d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Log_TextBuff
	.uleb128 0x1c
	.long	.LASF40
	.byte	0x1
	.byte	0x12
	.long	0x3e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	log_unreadErrors
	.uleb128 0x7
	.long	0x1f8
	.long	0x613
	.uleb128 0x1d
	.byte	0
	.uleb128 0x1e
	.long	.LASF41
	.byte	0x4
	.byte	0x6a
	.long	0x620
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.long	0x608
	.uleb128 0x7
	.long	0x635
	.long	0x635
	.uleb128 0x8
	.long	0xe4
	.byte	0x3
	.byte	0
	.uleb128 0x1f
	.long	0x3e
	.uleb128 0x1e
	.long	.LASF42
	.byte	0x5
	.byte	0x54
	.long	0x647
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.long	0x625
	.uleb128 0x1e
	.long	.LASF43
	.byte	0x6
	.byte	0x5f
	.long	0x635
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF44
	.byte	0x1
	.byte	0xf
	.long	0x162
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pLogStart
	.uleb128 0x1c
	.long	.LASF45
	.byte	0x1
	.byte	0x10
	.long	0x162
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pLogEnd
	.uleb128 0x1c
	.long	.LASF46
	.byte	0x1
	.byte	0x14
	.long	0x68f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ErrorText
	.uleb128 0x20
	.uleb128 0x7
	.long	0x1f8
	.long	0x6a0
	.uleb128 0x8
	.long	0xe4
	.byte	0x5
	.byte	0
	.uleb128 0x1c
	.long	.LASF47
	.byte	0x1
	.byte	0x49
	.long	0x6b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	stringLog
	.uleb128 0x17
	.long	0x690
	.uleb128 0x7
	.long	0x1f8
	.long	0x6c7
	.uleb128 0x8
	.long	0xe4
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.long	.LASF48
	.byte	0x1
	.byte	0xd1
	.long	0x6d9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	nullLog
	.uleb128 0x17
	.long	0x6b7
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF49
	.long	.LASF49
	.byte	0x4
	.byte	0x37
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF50
	.long	.LASF50
	.byte	0x4
	.byte	0x39
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF51
	.long	.LASF51
	.byte	0x4
	.byte	0x3a
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF52
	.long	.LASF52
	.byte	0x6
	.byte	0x69
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.long	.LASF53
	.long	.LASF53
	.byte	0x6
	.byte	0x6a
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
	.uleb128 0x8
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
	.uleb128 0x5
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
	.uleb128 0x38
	.uleb128 0xa
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
	.byte	0
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x33
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.long	.LFB13
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI0
	.long	.LFE13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1-1
	.word	0x1
	.byte	0x68
	.long	.LVL1-1
	.long	.LVL2
	.word	0x1
	.byte	0x6c
	.long	.LVL2
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL4-1
	.word	0x1
	.byte	0x68
	.long	.LVL4-1
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL7
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LVL10
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
	.long	.LVL5
	.long	.LVL9
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST5:
	.long	.LVL6
	.long	.LVL9
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST6:
	.long	.LVL6
	.long	.LVL7
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL7
	.long	.LVL9
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST7:
	.long	.LFB14
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LFE14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST8:
	.long	.LVL11
	.long	.LVL12
	.word	0x1
	.byte	0x68
	.long	.LVL12
	.long	.LVL18
	.word	0x1
	.byte	0x6c
	.long	.LVL18
	.long	.LVL19
	.word	0x1
	.byte	0x68
	.long	.LVL19
	.long	.LVL20
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST9:
	.long	.LVL13
	.long	.LVL14
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14
	.long	.LVL15
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15
	.long	.LVL16
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
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
.LLST10:
	.long	.LFB15
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI4
	.long	.LFE15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST11:
	.long	.LVL21
	.long	.LVL23
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL23
	.long	.LVL66
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL66
	.long	.LVL67
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL67
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL21
	.long	.LVL24
	.word	0x1
	.byte	0x66
	.long	.LVL24
	.long	.LVL66
	.word	0x1
	.byte	0x61
	.long	.LVL66
	.long	.LVL68
	.word	0x1
	.byte	0x66
	.long	.LVL68
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL25
	.long	.LVL26
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL26
	.long	.LVL27-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL28
	.long	.LVL29
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL30
	.long	.LVL31
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL31
	.long	.LVL32-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL33
	.long	.LVL34
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL36
	.long	.LVL37
	.word	0x3
	.byte	0x88
	.sleb128 1
	.byte	0x9f
	.long	.LVL37
	.long	.LVL42
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL42
	.long	.LVL49
	.word	0x3
	.byte	0x8e
	.sleb128 2
	.byte	0x9f
	.long	.LVL49
	.long	.LVL52
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL52
	.long	.LVL53
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL53
	.long	.LVL54
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL54
	.long	.LVL55
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL55
	.long	.LVL56
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL56
	.long	.LVL57
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL57
	.long	.LVL58
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL58
	.long	.LVL59
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL59
	.long	.LVL60-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL60
	.long	.LVL61
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL61
	.long	.LVL62-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL62
	.long	.LVL63
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL63
	.long	.LVL64-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL64
	.long	.LVL65-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST14:
	.long	.LVL38
	.long	.LVL51
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST15:
	.long	.LVL38
	.long	.LVL39
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL39
	.long	.LVL43
	.word	0x1
	.byte	0x62
	.long	.LVL43
	.long	.LVL44
	.word	0x3
	.byte	0x82
	.sleb128 -48
	.byte	0x9f
	.long	.LVL44
	.long	.LVL46
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL46
	.long	.LVL50
	.word	0x1
	.byte	0x62
	.long	.LVL50
	.long	.LVL51
	.word	0x3
	.byte	0x82
	.sleb128 -48
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL69
	.long	.LVL70
	.word	0x1
	.byte	0x68
	.long	.LVL70
	.long	.LVL71-1
	.word	0x2
	.byte	0x8e
	.sleb128 6
	.long	.LVL71-1
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL69
	.long	.LVL71-1
	.word	0x1
	.byte	0x66
	.long	.LVL71-1
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL69
	.long	.LVL71-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL71-1
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL69
	.long	.LVL71-1
	.word	0x1
	.byte	0x62
	.long	.LVL71-1
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL75
	.long	.LVL76-1
	.word	0x1
	.byte	0x68
	.long	.LVL76-1
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL75
	.long	.LVL76-1
	.word	0x1
	.byte	0x66
	.long	.LVL76-1
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL75
	.long	.LVL76-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL76-1
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL77
	.long	.LVL78-1
	.word	0x1
	.byte	0x68
	.long	.LVL78-1
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL77
	.long	.LVL78-1
	.word	0x1
	.byte	0x66
	.long	.LVL78-1
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL77
	.long	.LVL78-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL78-1
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL79
	.long	.LVL80-1
	.word	0x1
	.byte	0x68
	.long	.LVL80-1
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL79
	.long	.LVL80-1
	.word	0x1
	.byte	0x66
	.long	.LVL80-1
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL79
	.long	.LVL80-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL80-1
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LFB16
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5
	.long	.LFE16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST30:
	.long	.LVL81
	.long	.LVL82-1
	.word	0x1
	.byte	0x68
	.long	.LVL82-1
	.long	.LFE16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL81
	.long	.LVL82-1
	.word	0x1
	.byte	0x66
	.long	.LVL82-1
	.long	.LVL86
	.word	0x1
	.byte	0x6c
	.long	.LVL86
	.long	.LFE16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL82
	.long	.LVL83-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL84
	.long	.LVL85
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x6c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB2
	.long	.LBE2
	.long	.LBB5
	.long	.LBE5
	.long	0
	.long	0
	.long	.LBB3
	.long	.LBE3
	.long	.LBB4
	.long	.LBE4
	.long	0
	.long	0
	.long	.LFB6
	.long	.LFE6
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB7
	.long	.LFE7
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB11
	.long	.LFE11
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	.LFB16
	.long	.LFE16
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"pChar"
.LASF35:
	.string	"log_putWarning"
.LASF13:
	.string	"logNr"
.LASF51:
	.string	"putChar_word"
.LASF10:
	.string	"logStatus"
.LASF18:
	.string	"log_getLog"
.LASF57:
	.string	"init_log"
.LASF20:
	.string	"index"
.LASF23:
	.string	"errNr"
.LASF15:
	.string	"sizetype"
.LASF26:
	.string	"log_getShortTextFromPtr"
.LASF45:
	.string	"pLogEnd"
.LASF36:
	.string	"log_putInfo"
.LASF27:
	.string	"changeNotifyStatus"
.LASF43:
	.string	"serUSB_Active"
.LASF3:
	.string	"uint8_t"
.LASF46:
	.string	"ErrorText"
.LASF24:
	.string	"nrOfMEssage"
.LASF7:
	.string	"long long int"
.LASF14:
	.string	"logInfo"
.LASF19:
	.string	"log_getErrorText"
.LASF5:
	.string	"long int"
.LASF16:
	.string	"LogList_t"
.LASF53:
	.string	"serial0SER_USB_sendString"
.LASF40:
	.string	"log_unreadErrors"
.LASF2:
	.string	"unsigned char"
.LASF48:
	.string	"nullLog"
.LASF30:
	.string	"LogCat"
.LASF37:
	.string	"log_getShortTextFromIndex"
.LASF1:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF12:
	.string	"logCategory"
.LASF41:
	.string	"cr_lf"
.LASF11:
	.string	"logType"
.LASF0:
	.string	"unsigned int"
.LASF55:
	.string	".././log.c"
.LASF4:
	.string	"uint16_t"
.LASF44:
	.string	"pLogStart"
.LASF17:
	.string	"char"
.LASF58:
	.string	"log_count"
.LASF54:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF9:
	.string	"uptime"
.LASF59:
	.string	"logCheckUnreadErrorLogs"
.LASF22:
	.string	"errCat"
.LASF6:
	.string	"long unsigned int"
.LASF47:
	.string	"stringLog"
.LASF50:
	.string	"putChar_hex"
.LASF49:
	.string	"putChar_Dec2"
.LASF31:
	.string	"LogNr"
.LASF33:
	.string	"log_put"
.LASF38:
	.string	"log_List"
.LASF34:
	.string	"log_putError"
.LASF42:
	.string	"time_Uptime"
.LASF29:
	.string	"digit"
.LASF39:
	.string	"Log_TextBuff"
.LASF25:
	.string	"pLog"
.LASF21:
	.string	"pLogEntry"
.LASF32:
	.string	"LogInfo"
.LASF56:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF52:
	.string	"serial0SER_USB_sendStringP"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_clear_bss
