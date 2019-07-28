	.file	"hwtimer.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.init_Timers,"ax",@progbits
.global	init_Timers
	.type	init_Timers, @function
init_Timers:
.LFB17:
	.file 1 ".././hwtimer.c"
	.loc 1 41 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL0:
.LBB61:
	.loc 1 43 0
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 44 0
	std Z+1,__zero_reg__
.LVL1:
	.loc 1 43 0
	std Z+2,r24
	.loc 1 44 0
	std Z+3,__zero_reg__
.LVL2:
	.loc 1 43 0
	std Z+4,r24
	.loc 1 44 0
	std Z+5,__zero_reg__
.LVL3:
	.loc 1 43 0
	std Z+6,r24
	.loc 1 44 0
	std Z+7,__zero_reg__
.LVL4:
	.loc 1 43 0
	std Z+8,r24
	.loc 1 44 0
	std Z+9,__zero_reg__
.LVL5:
	.loc 1 43 0
	std Z+10,r24
	.loc 1 44 0
	std Z+11,__zero_reg__
.LVL6:
	.loc 1 43 0
	std Z+12,r24
	.loc 1 44 0
	std Z+13,__zero_reg__
.LVL7:
	.loc 1 43 0
	std Z+14,r24
	.loc 1 44 0
	std Z+15,__zero_reg__
.LVL8:
	.loc 1 43 0
	std Z+16,r24
	.loc 1 44 0
	std Z+17,__zero_reg__
.LVL9:
.LBE61:
	.loc 1 46 0
	ldi r30,lo8(time_Uptime)
	ldi r31,hi8(time_Uptime)
	st Z,__zero_reg__
	.loc 1 47 0
	std Z+1,__zero_reg__
	.loc 1 48 0
	std Z+2,__zero_reg__
	.loc 1 49 0
	std Z+3,__zero_reg__
	.loc 1 50 0
	sts time_UpTimeUpdated,r24
	ret
	.cfi_endproc
.LFE17:
	.size	init_Timers, .-init_Timers
	.section	.text.init_HwTimer,"ax",@progbits
.global	init_HwTimer
	.type	init_HwTimer, @function
init_HwTimer:
.LFB18:
	.loc 1 53 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 54 0
	ldi r24,lo8(2)
	out 0x24,r24
	.loc 1 55 0
	ldi r25,lo8(3)
	out 0x25,r25
	.loc 1 56 0
	sts 110,r24
	.loc 1 57 0
	ldi r24,lo8(-7)
	out 0x27,r24
	.loc 1 58 0
	cbi 0x5,7
	.loc 1 59 0
	sbi 0x4,7
	ret
	.cfi_endproc
.LFE18:
	.size	init_HwTimer, .-init_HwTimer
	.section	.text.init_ADC,"ax",@progbits
.global	init_ADC
	.type	init_ADC, @function
init_ADC:
.LFB19:
	.loc 1 62 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 64 0
	ldi r24,lo8(-121)
	sts 122,r24
	.loc 1 65 0
	sts 123,__zero_reg__
	.loc 1 66 0
	ldi r24,lo8(127)
	sts 124,r24
	.loc 1 67 0
	ldi r24,lo8(1)
	sts 126,r24
	.loc 1 68 0
	sts 127,__zero_reg__
	.loc 1 69 0
	ldi r30,lo8(adcKeys)
	ldi r31,hi8(adcKeys)
	st Z,__zero_reg__
	.loc 1 70 0
	ldi r24,lo8(-1)
	std Z+1,r24
	.loc 1 71 0
	std Z+2,r24
	.loc 1 72 0
	sts adcNr,r24
.LVL10:
.LBB62:
	.loc 1 79 0
	ldi r30,lo8(keyWants)
	ldi r31,hi8(keyWants)
	ldi r24,lo8(10)
	st Z,r24
.LVL11:
	std Z+1,r24
.LVL12:
	std Z+2,r24
.LVL13:
	std Z+3,r24
.LVL14:
	std Z+4,r24
.LVL15:
	.loc 1 77 0
	ldi r24,lo8(6)
	std Z+5,r24
.LVL16:
	ret
.LBE62:
	.cfi_endproc
.LFE19:
	.size	init_ADC, .-init_ADC
	.section	.text.init_Pipe,"ax",@progbits
.global	init_Pipe
	.type	init_Pipe, @function
init_Pipe:
.LFB20:
	.loc 1 84 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 85 0
	ldi r24,lo8(-1)
	out 0x8,r24
	.loc 1 86 0
	out 0x7,r24
	.loc 1 87 0
	out 0x2,r24
	.loc 1 88 0
	out 0x1,__zero_reg__
	.loc 1 89 0
	in r24,0x14
	ori r24,lo8(7)
	out 0x14,r24
	.loc 1 90 0
	in r24,0x13
	ori r24,lo8(7)
	out 0x13,r24
	.loc 1 91 0
	cbi 0xb,7
	.loc 1 92 0
	sbi 0xa,7
.LVL17:
	ldi r30,lo8(pipe)
	ldi r31,hi8(pipe)
.LBB63:
	.loc 1 94 0
	ldi r24,lo8(-1)
.LVL18:
.L5:
	.loc 1 94 0 is_stmt 0 discriminator 3
	std Z+1,r24
	.loc 1 95 0 is_stmt 1 discriminator 3
	st Z,r24
	adiw r30,8
	.loc 1 93 0 discriminator 3
	ldi r25,hi8(pipe+256)
	cpi r30,lo8(pipe+256)
	cpc r31,r25
	brne .L5
.LBE63:
	.loc 1 98 0
	sts pipeProcessing,__zero_reg__
	.loc 1 99 0
	sts pipe_PowerStatus,__zero_reg__
	ret
	.cfi_endproc
.LFE20:
	.size	init_Pipe, .-init_Pipe
	.section	.text.init_PipeModules,"ax",@progbits
.global	init_PipeModules
	.type	init_PipeModules, @function
init_PipeModules:
.LFB21:
	.loc 1 102 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 103 0
	call eeprom_ReadModules
.LVL19:
	mov r28,r24
	cpi r24,lo8(-1)
	brne .+2
	rjmp .L23
.L9:
.LVL20:
	.loc 1 110 0
	cbi 0xb,7
	.loc 1 111 0
	in r24,0x14
	ori r24,lo8(7)
	out 0x14,r24
	.loc 1 113 0
	cbi 0x14,2
.LVL21:
.LBB64:
.LBB65:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 2 276 0
	ldi r24,lo8(5)
1:	dec r24
	brne 1b
	nop
.LVL22:
.LBE65:
.LBE64:
	.loc 1 117 0
	sbi 0x14,2
	.loc 1 114 0
	ldi r25,lo8(32)
	rjmp .L11
.LVL23:
.L25:
	.loc 1 120 0
	ldi r24,lo8(-86)
.L10:
	.loc 1 120 0 is_stmt 0 discriminator 4
	out 0x8,r24
	.loc 1 123 0 is_stmt 1 discriminator 4
	in r24,0
.LVL24:
	.loc 1 124 0 discriminator 4
	sts pipe+255,r24
	.loc 1 125 0 discriminator 4
	sts pipe+254,r24
	.loc 1 126 0 discriminator 4
	sts pipe+253,r24
	.loc 1 127 0 discriminator 4
	sts pipe+252,r24
	.loc 1 128 0 discriminator 4
	sts pipe+251,r24
	.loc 1 129 0 discriminator 4
	sts pipe+250,r24
	.loc 1 130 0 discriminator 4
	cbi 0x14,0
.LVL25:
.LBB66:
.LBB67:
	.loc 2 276 0 discriminator 4
	ldi r24,lo8(5)
1:	dec r24
	brne 1b
.LVL26:
	nop
.LVL27:
.LBE67:
.LBE66:
	.loc 1 132 0 discriminator 4
	subi r25,lo8(-(-1))
.LVL28:
	breq .L24
.LVL29:
.L11:
	.loc 1 119 0
	sbi 0x14,0
	.loc 1 120 0
	sbrc r25,0
	rjmp .L25
	ldi r24,lo8(85)
	rjmp .L10
.LVL30:
.L24:
	ldi r24,lo8(32)
.LVL31:
.L12:
	.loc 1 135 0 discriminator 3
	sbi 0x14,0
.LVL32:
.LBB68:
.LBB69:
	.loc 2 276 0 discriminator 3
	ldi r25,lo8(2)
1:	dec r25
	brne 1b
	rjmp .
.LVL33:
.LBE69:
.LBE68:
	.loc 1 137 0 discriminator 3
	cbi 0x14,0
.LVL34:
.LBB70:
.LBB71:
	.loc 2 276 0 discriminator 3
	ldi r25,lo8(2)
1:	dec r25
	brne 1b
	rjmp .
.LVL35:
	subi r24,lo8(-(-1))
.LBE71:
.LBE70:
	.loc 1 134 0 discriminator 3
	brne .L12
	.loc 1 142 0
	ldi r24,lo8(-1)
	sts pipe_ModuleTested,r24
.LVL36:
	.loc 1 143 0
	ldi r25,lo8(32)
	.loc 1 146 0
	ldi r19,lo8(-1)
	rjmp .L14
.LVL37:
.L27:
	.loc 1 149 0
	ldi r24,lo8(85)
.L13:
	.loc 1 149 0 is_stmt 0 discriminator 4
	eor r24,r18
	lds r18,pipe_ModuleTested
.LVL38:
	and r24,r18
	sts pipe_ModuleTested,r24
	.loc 1 150 0 is_stmt 1 discriminator 4
	cbi 0x14,0
.LVL39:
.LBB72:
.LBB73:
	.loc 2 276 0 discriminator 4
	ldi r24,lo8(5)
1:	dec r24
	brne 1b
	nop
.LVL40:
.LBE73:
.LBE72:
	.loc 1 152 0 discriminator 4
	subi r25,lo8(-(-1))
.LVL41:
	breq .L26
.LVL42:
.L14:
	.loc 1 145 0
	sbi 0x14,0
	.loc 1 146 0
	out 0x8,r19
	.loc 1 148 0
	in r18,0
.LVL43:
	.loc 1 149 0
	sbrc r25,0
	rjmp .L27
	ldi r24,lo8(-86)
	rjmp .L13
.LVL44:
.L26:
	.loc 1 153 0
/* #APP */
 ;  153 ".././hwtimer.c" 1
	nop
 ;  0 "" 2
	.loc 1 154 0
 ;  154 ".././hwtimer.c" 1
	nop
 ;  0 "" 2
	.loc 1 155 0
/* #NOAPP */
	sbi 0x14,0
	.loc 1 157 0
	in r24,0x14
	ori r24,lo8(7)
	out 0x14,r24
	.loc 1 158 0
	cbi 0x14,2
.LVL45:
.LBB74:
.LBB75:
	.loc 2 276 0
	ldi r25,lo8(2)
1:	dec r25
	brne 1b
	rjmp .
.LVL46:
.LBE75:
.LBE74:
	.loc 1 162 0
	sbi 0x14,2
	.loc 1 159 0
	ldi r30,lo8(pipe+248)
	ldi r31,hi8(pipe+248)
.LVL47:
	.loc 1 167 0
	ldi r25,lo8(-1)
.LVL48:
.L15:
	.loc 1 164 0 discriminator 1
	ldd r24,Z+3
	std Z+2,r24
	.loc 1 165 0 discriminator 1
	ldd r24,Z+4
	std Z+3,r24
	.loc 1 166 0 discriminator 1
	sbi 0x14,0
	.loc 1 167 0 discriminator 1
	std Z+1,r25
	.loc 1 168 0 discriminator 1
	out 0x8,r25
	.loc 1 169 0 discriminator 1
	ldd r24,Z+5
	std Z+4,r24
	.loc 1 170 0 discriminator 1
	ldd r24,Z+6
	std Z+5,r24
	.loc 1 171 0 discriminator 1
	in r24,0
	.loc 1 171 0 discriminator 1
	std Z+6,r24
	.loc 1 172 0 discriminator 1
	std Z+2,r24
	.loc 1 173 0 discriminator 1
	std Z+3,r24
	.loc 1 174 0 discriminator 1
	std Z+4,r24
	.loc 1 175 0 discriminator 1
	std Z+5,r24
	.loc 1 176 0 discriminator 1
	std Z+7,r24
	.loc 1 177 0 discriminator 1
	cbi 0x14,0
	.loc 1 178 0 discriminator 1
	sbiw r30,8
.LVL49:
	.loc 1 179 0 discriminator 1
	ldi r24,hi8(pipe-8)
	cpi r30,lo8(pipe-8)
	cpc r31,r24
	brne .L15
	.loc 1 180 0
/* #APP */
 ;  180 ".././hwtimer.c" 1
	nop
 ;  0 "" 2
	.loc 1 181 0
 ;  181 ".././hwtimer.c" 1
	nop
 ;  0 "" 2
	.loc 1 182 0
/* #NOAPP */
	sbi 0x14,0
	.loc 1 183 0
	cbi 0x14,1
	.loc 1 184 0
	out 0x8,__zero_reg__
.LVL50:
.LBB76:
.LBB77:
	.loc 2 276 0
	ldi r25,lo8(5)
1:	dec r25
	brne 1b
	nop
.LVL51:
.LBE77:
.LBE76:
	.loc 1 186 0
	sbi 0x14,1
	.loc 1 189 0
	lds r25,pipe_ModuleAssnRead
	lds r20,pipe_ModuleTested
	lds r24,pipe_ModuleAssnWrite
	or r24,r25
	cp r24,r20
	breq .L8
	.loc 1 191 0
	ldi r21,0
	or r21,r25
	ldi r22,0
	ldi r24,lo8(2)
/* epilogue start */
	.loc 1 193 0
	pop r28
	.loc 1 191 0
	jmp log_putError
.LVL52:
.L8:
/* epilogue start */
	.loc 1 193 0
	pop r28
	ret
.LVL53:
.L23:
	.loc 1 104 0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r24,lo8(1)
	call log_putError
.LVL54:
	.loc 1 105 0
	sts pipe_ModuleAssnRead,r28
	.loc 1 106 0
	sts pipe_ModuleAssnWrite,r28
	rjmp .L9
	.cfi_endproc
.LFE21:
	.size	init_PipeModules, .-init_PipeModules
	.section	.text.test_PipeModule,"ax",@progbits
.global	test_PipeModule
	.type	test_PipeModule, @function
test_PipeModule:
.LFB22:
	.loc 1 196 0
	.cfi_startproc
.LVL55:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 198 0
	cpi r24,lo8(8)
	brlo .+2
	rjmp .L38
	.loc 1 202 0
	ldi r19,lo8(1)
	rjmp 2f
	1:
	lsl r19
	2:
	dec r24
	brpl 1b
.LVL56:
	.loc 1 203 0
	ldi r24,lo8(-128)
.LVL57:
	sts pipeProcessing,r24
	.loc 1 204 0
	cbi 0xb,7
	.loc 1 206 0
	in r24,0x14
	ori r24,lo8(7)
	out 0x14,r24
.LVL58:
	ldi r21,lo8(4)
.LBB78:
.LBB79:
.LBB80:
	.loc 1 211 0
	mov r20,r19
	com r20
.LVL59:
.L30:
	ldi r24,lo8(8)
	ldi r25,lo8(-91)
	ldi r18,lo8(-1)
.LVL60:
.L34:
	.loc 1 211 0 is_stmt 0 discriminator 4
	out 0x8,r18
	.loc 1 212 0 is_stmt 1 discriminator 4
	lsr r25
.LVL61:
.LBB81:
.LBB82:
	.loc 2 276 0 discriminator 4
	ldi r18,lo8(2)
1:	dec r18
	brne 1b
	rjmp .
.LVL62:
.LBE82:
.LBE81:
	.loc 1 214 0 discriminator 4
	cbi 0x14,0
.LVL63:
.LBB83:
.LBB84:
	.loc 2 276 0 discriminator 4
	ldi r18,lo8(2)
1:	dec r18
	brne 1b
	rjmp .
.LVL64:
.LBE84:
.LBE83:
	.loc 1 216 0 discriminator 4
	sbi 0x14,0
	subi r24,lo8(-(-1))
	.loc 1 210 0 discriminator 4
	breq .L45
	.loc 1 211 0
	sbrc r25,0
	rjmp .L39
	.loc 1 211 0 is_stmt 0 discriminator 1
	mov r18,r20
	rjmp .L34
.L39:
	.loc 1 211 0
	ldi r18,lo8(-1)
	rjmp .L34
.L45:
	subi r21,lo8(-(-1))
.LBE80:
.LBE79:
	.loc 1 208 0 is_stmt 1 discriminator 2
	brne .L30
	ldi r24,lo8(32)
.LVL65:
.L35:
.LBE78:
.LBB85:
.LBB86:
.LBB87:
	.loc 2 276 0
	ldi r25,lo8(2)
1:	dec r25
	brne 1b
	rjmp .
.LVL66:
.LBE87:
.LBE86:
	.loc 1 222 0
	cbi 0x14,0
.LVL67:
.LBB88:
.LBB89:
	.loc 2 276 0
	ldi r18,lo8(2)
1:	dec r18
	brne 1b
	rjmp .
.LVL68:
.LBE89:
.LBE88:
	.loc 1 224 0
	sbi 0x14,0
.LVL69:
	subi r24,lo8(-(-1))
	.loc 1 220 0
	brne .L35
	ldi r25,lo8(32)
	ldi r20,0
	ldi r21,0
	movw r22,r20
.L37:
.LVL70:
.LBE85:
.LBB90:
	.loc 1 230 0
	lsl r20
	rol r21
	rol r22
	rol r23
.LVL71:
.LBB91:
.LBB92:
	.loc 2 276 0
	ldi r24,lo8(2)
1:	dec r24
	brne 1b
	rjmp .
.LVL72:
.LBE92:
.LBE91:
	.loc 1 232 0
	cbi 0x14,0
	.loc 1 233 0
	in r24,0
	.loc 1 233 0
	and r24,r19
	breq .L36
	.loc 1 234 0
	ori r20,1
.LVL73:
.L36:
.LBB93:
.LBB94:
	.loc 2 276 0 discriminator 2
	ldi r18,lo8(2)
1:	dec r18
	brne 1b
	rjmp .
.LVL74:
.LBE94:
.LBE93:
	.loc 1 237 0 discriminator 2
	sbi 0x14,0
.LVL75:
	subi r25,lo8(-(-1))
	.loc 1 229 0 discriminator 2
	brne .L37
.LBE90:
	.loc 1 240 0
	sts pipeProcessing,__zero_reg__
	.loc 1 241 0
	sbi 0xb,7
	.loc 1 242 0
	mov r19,r20
	mov r18,r21
	movw r24,r22
	.loc 1 243 0
	mov r22,r19
	mov r23,r18
	ret
.LVL76:
.L38:
	.loc 1 200 0
	ldi r19,0
	ldi r18,0
	ldi r24,0
.LVL77:
	ldi r25,0
	.loc 1 243 0
	mov r22,r19
	mov r23,r18
	ret
	.cfi_endproc
.LFE22:
	.size	test_PipeModule, .-test_PipeModule
	.section	.text.Pipes_AllOutputsOff,"ax",@progbits
.global	Pipes_AllOutputsOff
	.type	Pipes_AllOutputsOff, @function
Pipes_AllOutputsOff:
.LFB23:
	.loc 1 245 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL78:
	.loc 1 247 0
	ldi r30,lo8(pipe)
	ldi r31,hi8(pipe)
.LBB95:
	.loc 1 250 0
	ldi r24,lo8(-1)
.LVL79:
.L47:
	.loc 1 250 0 is_stmt 0 discriminator 3
	std Z+1,r24
	.loc 1 251 0 is_stmt 1 discriminator 3
	st Z,r24
	.loc 1 252 0 discriminator 3
	adiw r30,8
.LVL80:
	.loc 1 249 0 discriminator 3
	ldi r25,hi8(pipe+256)
	cpi r30,lo8(pipe+256)
	cpc r31,r25
	brne .L47
.LBE95:
	.loc 1 254 0
	ldi r24,lo8(-1)
	sts msgPipe_Handling,r24
	ret
	.cfi_endproc
.LFE23:
	.size	Pipes_AllOutputsOff, .-Pipes_AllOutputsOff
	.section	.text.module_TestAllInputs,"ax",@progbits
.global	module_TestAllInputs
	.type	module_TestAllInputs, @function
module_TestAllInputs:
.LFB24:
	.loc 1 258 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL81:
	.loc 1 263 0
	ldi r30,lo8(pipe)
	ldi r31,hi8(pipe)
	.loc 1 262 0
	ldi r24,0
.LBB96:
	.loc 1 268 0
	ldi r18,lo8(-1)
.LVL82:
.L50:
	.loc 1 268 0 is_stmt 0 discriminator 3
	std Z+1,r18
	.loc 1 269 0 is_stmt 1 discriminator 3
	ldd r25,Z+6
	or r24,r25
.LVL83:
	.loc 1 270 0 discriminator 3
	adiw r30,8
.LVL84:
	.loc 1 267 0 discriminator 3
	ldi r25,hi8(pipe+256)
	cpi r30,lo8(pipe+256)
	cpc r31,r25
	brne .L50
.LBE96:
	.loc 1 272 0
	lds r25,pipe_ModuleAssnRead
	.loc 1 273 0
	and r24,r25
.LVL85:
	ret
	.cfi_endproc
.LFE24:
	.size	module_TestAllInputs, .-module_TestAllInputs
	.section	.text.module_WaitOutputInput2Cycles,"ax",@progbits
.global	module_WaitOutputInput2Cycles
	.type	module_WaitOutputInput2Cycles, @function
module_WaitOutputInput2Cycles:
.LFB25:
	.loc 1 275 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 276 0
	sts pipeProcessing,__zero_reg__
.L53:
	.loc 1 277 0 discriminator 1
	lds r24,pipeProcessing
	sbrs r24,1
	rjmp .L53
	.loc 1 280 0
	sts pipeProcessing,__zero_reg__
.L54:
	.loc 1 281 0 discriminator 1
	lds r24,pipeProcessing
	sbrs r24,1
	rjmp .L54
/* epilogue start */
	.loc 1 284 0
	ret
	.cfi_endproc
.LFE25:
	.size	module_WaitOutputInput2Cycles, .-module_WaitOutputInput2Cycles
	.section	.text.module_StartPowerOn,"ax",@progbits
.global	module_StartPowerOn
	.type	module_StartPowerOn, @function
module_StartPowerOn:
.LFB26:
	.loc 1 286 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 288 0
	ldi r24,lo8(1)
	sts pipe_PowerStatus,r24
.LBB97:
	.loc 1 289 0
	in r24,__SREG__
.LVL86:
.LBB98:
.LBB99:
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 3 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
.LVL87:
/* #NOAPP */
.LBE99:
.LBE98:
	.loc 1 289 0
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r25,lo8(50)
	std Z+2,r25
	std Z+3,__zero_reg__
.LVL88:
.LBB100:
.LBB101:
	.loc 3 70 0
	out __SREG__,r24
	.loc 3 71 0
.LVL89:
	ret
.LBE101:
.LBE100:
.LBE97:
	.cfi_endproc
.LFE26:
	.size	module_StartPowerOn, .-module_StartPowerOn
	.section	.text.module_PowerControl,"ax",@progbits
.global	module_PowerControl
	.type	module_PowerControl, @function
module_PowerControl:
.LFB27:
	.loc 1 292 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 294 0
	lds r24,pipe_PowerStatus
	cpi r24,lo8(1)
	breq .L71
	.loc 1 305 0
	cpi r24,lo8(18)
	breq .L72
.L65:
	.loc 1 319 0
	ldi r24,lo8(-1)
	sts swTimer+2,r24
	ret
.L71:
	ldi r24,0
	ldi r30,lo8(pipe)
	ldi r31,hi8(pipe)
.LBB102:
.LBB103:
.LBB104:
	.loc 1 268 0
	ldi r18,lo8(-1)
.L62:
.LVL90:
	std Z+1,r18
	.loc 1 269 0
	ldd r25,Z+6
	or r24,r25
.LVL91:
	.loc 1 270 0
	adiw r30,8
.LVL92:
	.loc 1 267 0
	ldi r25,hi8(pipe+256)
	cpi r30,lo8(pipe+256)
	cpc r31,r25
	brne .L62
.LVL93:
.LBE104:
.LBE103:
.LBE102:
	.loc 1 296 0
	lds r25,pipe_ModuleAssnRead
	and r24,r25
	brne .L63
	.loc 1 298 0
	sbi 0x5,6
	.loc 1 299 0
	ldi r24,lo8(18)
	sts pipe_PowerStatus,r24
.LBB105:
	.loc 1 300 0
	in r24,__SREG__
.LVL94:
.LBB106:
.LBB107:
	.loc 3 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
.LVL95:
/* #NOAPP */
.LBE107:
.LBE106:
	.loc 1 300 0
	ldi r25,lo8(1)
	sts swTimer+2,r25
	sts swTimer+3,__zero_reg__
.LVL96:
.LBB108:
.LBB109:
	.loc 3 70 0
	out __SREG__,r24
	.loc 3 71 0
.LVL97:
.LBE109:
.LBE108:
.LBE105:
	ret
.LVL98:
.L63:
.LBB110:
	.loc 1 303 0
	in r24,__SREG__
.LVL99:
.LBB111:
.LBB112:
	.loc 3 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
.LVL100:
/* #NOAPP */
.LBE112:
.LBE111:
	.loc 1 303 0
	ldi r25,lo8(12)
	sts swTimer+2,r25
	ldi r25,lo8(2)
	sts swTimer+3,r25
.LVL101:
.LBB113:
.LBB114:
	.loc 3 70 0
	out __SREG__,r24
	.loc 3 71 0
.LVL102:
	ret
.LVL103:
.L72:
.LBE114:
.LBE113:
.LBE110:
	ldi r30,lo8(pipe)
	ldi r31,hi8(pipe)
	ldi r24,0
.LBB115:
.LBB116:
.LBB117:
.LBB118:
	.loc 1 268 0
	ldi r18,lo8(-1)
.L66:
.LVL104:
	std Z+1,r18
	.loc 1 269 0
	ldd r25,Z+6
	or r24,r25
.LVL105:
	.loc 1 270 0
	adiw r30,8
.LVL106:
	.loc 1 267 0
	ldi r25,hi8(pipe+256)
	cpi r30,lo8(pipe+256)
	cpc r31,r25
	brne .L66
.LBE118:
	.loc 1 272 0
	lds r20,pipe_ModuleAssnRead
	and r24,r20
.LVL107:
.LBE117:
.LBE116:
	.loc 1 307 0
	brne .L67
	.loc 1 309 0
	ldi r24,lo8(20)
	sts pipe_PowerStatus,r24
.LBE115:
	.loc 1 319 0
	ldi r24,lo8(-1)
	sts swTimer+2,r24
	ret
.L67:
.LBB119:
	.loc 1 312 0
	mov r20,r24
	ldi r21,0
	ldi r22,0
	ldi r24,lo8(5)
	call log_putError
.LVL108:
	.loc 1 313 0
	cbi 0x5,6
	.loc 1 314 0
	ldi r24,lo8(-128)
	sts pipe_PowerStatus,r24
	rjmp .L65
.LBE119:
	.cfi_endproc
.LFE27:
	.size	module_PowerControl, .-module_PowerControl
	.section	.text.__vector_21,"ax",@progbits
.global	__vector_21
	.type	__vector_21, @function
__vector_21:
.LFB33:
	.loc 1 558 0
	.cfi_startproc
	push r1
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 1, -3
	push r0
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 0, -4
	in r0,__SREG__
	push r0
	clr __zero_reg__
	in r0,__RAMPZ__
	push r0
	push r14
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r18
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 18, -9
	push r19
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 19, -10
	push r20
.LCFI9:
	.cfi_def_cfa_offset 12
	.cfi_offset 20, -11
	push r21
.LCFI10:
	.cfi_def_cfa_offset 13
	.cfi_offset 21, -12
	push r22
.LCFI11:
	.cfi_def_cfa_offset 14
	.cfi_offset 22, -13
	push r23
.LCFI12:
	.cfi_def_cfa_offset 15
	.cfi_offset 23, -14
	push r24
.LCFI13:
	.cfi_def_cfa_offset 16
	.cfi_offset 24, -15
	push r25
.LCFI14:
	.cfi_def_cfa_offset 17
	.cfi_offset 25, -16
	push r26
.LCFI15:
	.cfi_def_cfa_offset 18
	.cfi_offset 26, -17
	push r27
.LCFI16:
	.cfi_def_cfa_offset 19
	.cfi_offset 27, -18
	push r28
.LCFI17:
	.cfi_def_cfa_offset 20
	.cfi_offset 28, -19
	push r29
.LCFI18:
	.cfi_def_cfa_offset 21
	.cfi_offset 29, -20
	push r30
.LCFI19:
	.cfi_def_cfa_offset 22
	.cfi_offset 30, -21
	push r31
.LCFI20:
	.cfi_def_cfa_offset 23
	.cfi_offset 31, -22
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 22 */
.L__stack_usage = 22
	.loc 1 560 0
	sbi 0x5,7
	.loc 1 562 0
	lds r24,msecCtr
	subi r24,lo8(-(1))
	sts msecCtr,r24
	andi r24,lo8(3)
	cpi r24,lo8(2)
	brne .+2
	rjmp .L75
	cpi r24,lo8(3)
	brne .+2
	rjmp .L76
	cpi r24,lo8(1)
	breq .L77
.LBB138:
.LBB139:
	.loc 1 375 0
	lds r25,adcNr
	tst r25
	brne .+2
	rjmp .L171
.L78:
	.loc 1 463 0
	subi r25,lo8(-(1))
	cpi r25,lo8(4)
	brsh .+2
	rjmp .L89
	.loc 1 464 0
	sts adcNr,__zero_reg__
.L90:
	.loc 1 468 0
	lds r24,adcKeys
.LVL109:
	mov r18,r24
	andi r18,lo8(31)
	ori r18,lo8(96)
	andi r24,lo8(32)
.LVL110:
	ldi r25,0
	asr r25
	ror r24
	asr r25
	ror r24
.L91:
	.loc 1 473 0
	sts 124,r18
	.loc 1 474 0
	lds r25,123
	.loc 1 474 0
	andi r25,lo8(-33)
	or r24,r25
	sts 123,r24
	.loc 1 475 0
	lds r24,122
	ori r24,lo8(64)
	sts 122,r24
.L92:
.LBE139:
.LBE138:
	.loc 1 575 0
	cbi 0x5,7
/* epilogue start */
	.loc 1 577 0
	pop r31
	pop r30
	pop r29
	pop r28
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r17
	pop r16
	pop r15
	pop r14
	pop r0
	out __RAMPZ__,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
.L77:
	.loc 1 565 0
	lds r24,pipeProcessing
	cpi r24,lo8(-128)
	breq .L92
.LBB153:
.LBB154:
	.loc 1 527 0
	in r24,0x14
	ori r24,lo8(7)
	out 0x14,r24
	.loc 1 528 0
	cbi 0x14,2
.LVL111:
	.loc 1 530 0
	lds r25,pipe_ModuleAssnWrite
	com r25
.LVL112:
.LBB155:
.LBB156:
	.loc 2 276 0
	ldi r31,lo8(2)
1:	dec r31
	brne 1b
	rjmp .
.LVL113:
.LBE156:
.LBE155:
	.loc 1 533 0
	sbi 0x14,2
	.loc 1 529 0
	ldi r30,lo8(pipe+248)
	ldi r31,hi8(pipe+248)
.LVL114:
.L94:
	.loc 1 535 0
	ldd r24,Z+3
	std Z+2,r24
	.loc 1 536 0
	ldd r24,Z+4
	std Z+3,r24
	.loc 1 537 0
	sbi 0x14,0
	.loc 1 538 0
	ldd r24,Z+1
	or r24,r25
	out 0x8,r24
	.loc 1 539 0
	ldd r24,Z+5
	std Z+4,r24
	.loc 1 540 0
	ldd r24,Z+6
	std Z+5,r24
	.loc 1 541 0
	in r24,0
	.loc 1 541 0
	std Z+6,r24
	.loc 1 542 0
	cbi 0x14,0
	.loc 1 543 0
	sbiw r30,8
.LVL115:
	.loc 1 544 0
	ldi r19,hi8(pipe-8)
	cpi r30,lo8(pipe-8)
	cpc r31,r19
	brne .L94
	.loc 1 545 0
/* #APP */
 ;  545 ".././hwtimer.c" 1
	nop
 ;  0 "" 2
	.loc 1 546 0
 ;  546 ".././hwtimer.c" 1
	nop
 ;  0 "" 2
	.loc 1 547 0
/* #NOAPP */
	sbi 0x14,0
	.loc 1 548 0
	cbi 0x14,1
	.loc 1 549 0
	lds r24,pipeProcessing
	ori r24,lo8(2)
	sts pipeProcessing,r24
	.loc 1 550 0
	out 0x8,__zero_reg__
	.loc 1 551 0
	sbi 0xb,7
	.loc 1 552 0
	sbi 0x14,1
	rjmp .L92
.LVL116:
.L76:
.LBE154:
.LBE153:
	.loc 1 570 0
	lds r24,pipeProcessing
	cpi r24,lo8(-128)
	brne .+2
	rjmp .L92
.LVL117:
	lds r14,pipe_ModuleAssnRead
.LBB157:
.LBB158:
.LBB159:
	.loc 1 484 0
	mov r15,__zero_reg__
.LBE159:
	.loc 1 482 0
	ldi r28,lo8(pipe)
	ldi r29,hi8(pipe)
	rjmp .L127
.LVL118:
.L125:
.LBB162:
.LBB160:
	.loc 1 512 0
	and r17,r14
.LVL119:
	mov r24,r16
.LVL120:
	com r24
	and r24,r17
.LVL121:
	.loc 1 513 0
	brne .L172
.LVL122:
.L126:
	.loc 1 519 0
	std Y+7,r16
	.loc 1 520 0
	adiw r28,8
.LVL123:
	.loc 1 521 0
	lds r24,pipeProcessing
	ori r24,lo8(1)
	sts pipeProcessing,r24
.LBE160:
	.loc 1 484 0
	inc r15
.LVL124:
	ldi r24,hi8(pipe+256)
	cpi r28,lo8(pipe+256)
	cpc r29,r24
	brne .+2
	rjmp .L92
.LVL125:
.L127:
.LBB161:
	.loc 1 502 0
	ldd r16,Y+6
	ldd r24,Y+5
	or r16,r24
	ldd r24,Y+4
	or r16,r24
	ldd r24,Y+3
	or r16,r24
	ldd r24,Y+2
	or r16,r24
.LVL126:
	.loc 1 505 0
	ldd r17,Y+7
	mov r24,r17
	com r24
	and r24,r14
	and r24,r16
.LVL127:
	.loc 1 506 0
	breq .L125
	.loc 1 510 0
	mov r25,r15
	ori r25,lo8(32)
	call pipeMsgPush
.LVL128:
	.loc 1 512 0
	and r17,r14
.LVL129:
	mov r24,r16
	com r24
	and r24,r17
.LVL130:
	.loc 1 513 0
	breq .L126
.L172:
	.loc 1 517 0
	mov r25,r15
	call pipeMsgPush
.LVL131:
	rjmp .L126
.LVL132:
.L75:
.LBE161:
.LBE162:
.LBE158:
.LBE157:
.LBB163:
.LBB164:
.LBB165:
	.loc 1 341 0
	lds r24,swTimer
	subi r24,lo8(-(-1))
	cpi r24,lo8(-2)
	brsh .L95
.LBB166:
	.loc 1 342 0
	lds r25,swTimer+1
	subi r25,lo8(-(1))
.LVL133:
	.loc 1 343 0
	cpi r25,lo8(5)
	brlo .L97
.LVL134:
	.loc 1 346 0
	sts swTimer,r24
	.loc 1 345 0
	ldi r25,0
.LVL135:
.L97:
	.loc 1 348 0
	sts swTimer+1,r25
.LVL136:
.L95:
.LBE166:
	.loc 1 341 0
	lds r24,swTimer+2
	subi r24,lo8(-(-1))
	cpi r24,lo8(-2)
	brsh .L98
.LBB167:
	.loc 1 342 0
	lds r25,swTimer+3
	subi r25,lo8(-(1))
.LVL137:
	.loc 1 343 0
	cpi r25,lo8(5)
	brlo .L100
.LVL138:
	.loc 1 346 0
	sts swTimer+2,r24
	.loc 1 345 0
	ldi r25,0
.LVL139:
.L100:
	.loc 1 348 0
	sts swTimer+3,r25
.LVL140:
.L98:
.LBE167:
	.loc 1 341 0
	lds r24,swTimer+4
	subi r24,lo8(-(-1))
	cpi r24,lo8(-2)
	brsh .L101
.LBB168:
	.loc 1 342 0
	lds r25,swTimer+5
	subi r25,lo8(-(1))
.LVL141:
	.loc 1 343 0
	cpi r25,lo8(5)
	brlo .L103
.LVL142:
	.loc 1 346 0
	sts swTimer+4,r24
	.loc 1 345 0
	ldi r25,0
.LVL143:
.L103:
	.loc 1 348 0
	sts swTimer+5,r25
.LVL144:
.L101:
.LBE168:
	.loc 1 341 0
	lds r24,swTimer+6
	subi r24,lo8(-(-1))
	cpi r24,lo8(-2)
	brsh .L104
.LBB169:
	.loc 1 342 0
	lds r25,swTimer+7
	subi r25,lo8(-(1))
.LVL145:
	.loc 1 343 0
	cpi r25,lo8(5)
	brlo .L106
.LVL146:
	.loc 1 346 0
	sts swTimer+6,r24
	.loc 1 345 0
	ldi r25,0
.LVL147:
.L106:
	.loc 1 348 0
	sts swTimer+7,r25
.LVL148:
.L104:
.LBE169:
	.loc 1 341 0
	lds r24,swTimer+8
	subi r24,lo8(-(-1))
	cpi r24,lo8(-2)
	brsh .L107
.LBB170:
	.loc 1 342 0
	lds r25,swTimer+9
	subi r25,lo8(-(1))
.LVL149:
	.loc 1 343 0
	cpi r25,lo8(5)
	brlo .L109
.LVL150:
	.loc 1 346 0
	sts swTimer+8,r24
	.loc 1 345 0
	ldi r25,0
.LVL151:
.L109:
	.loc 1 348 0
	sts swTimer+9,r25
.LVL152:
.L107:
.LBE170:
	.loc 1 341 0
	lds r24,swTimer+10
	subi r24,lo8(-(-1))
	cpi r24,lo8(-2)
	brsh .L110
.LBB171:
	.loc 1 342 0
	lds r25,swTimer+11
	subi r25,lo8(-(1))
.LVL153:
	.loc 1 343 0
	cpi r25,lo8(5)
	brlo .L112
.LVL154:
	.loc 1 346 0
	sts swTimer+10,r24
	.loc 1 345 0
	ldi r25,0
.LVL155:
.L112:
	.loc 1 348 0
	sts swTimer+11,r25
.LVL156:
.L110:
.LBE171:
	.loc 1 341 0
	lds r24,swTimer+12
	subi r24,lo8(-(-1))
	cpi r24,lo8(-2)
	brsh .L113
.LBB172:
	.loc 1 342 0
	lds r25,swTimer+13
	subi r25,lo8(-(1))
.LVL157:
	.loc 1 343 0
	cpi r25,lo8(5)
	brlo .L115
.LVL158:
	.loc 1 346 0
	sts swTimer+12,r24
	.loc 1 345 0
	ldi r25,0
.LVL159:
.L115:
	.loc 1 348 0
	sts swTimer+13,r25
.LVL160:
.L113:
.LBE172:
	.loc 1 341 0
	lds r24,swTimer+14
	subi r24,lo8(-(-1))
	cpi r24,lo8(-2)
	brsh .L116
.LBB173:
	.loc 1 342 0
	lds r25,swTimer+15
	subi r25,lo8(-(1))
.LVL161:
	.loc 1 343 0
	cpi r25,lo8(5)
	brlo .L118
.LVL162:
	.loc 1 346 0
	sts swTimer+14,r24
	.loc 1 345 0
	ldi r25,0
.LVL163:
.L118:
	.loc 1 348 0
	sts swTimer+15,r25
.LVL164:
.L116:
.LBE173:
	.loc 1 341 0
	lds r24,swTimer+16
	subi r24,lo8(-(-1))
	cpi r24,lo8(-2)
	brsh .L119
.LBB174:
	.loc 1 342 0
	lds r25,swTimer+17
	subi r25,lo8(-(1))
.LVL165:
	.loc 1 343 0
	cpi r25,lo8(5)
	brlo .L120
.LVL166:
	.loc 1 346 0
	sts swTimer+16,r24
	.loc 1 345 0
	ldi r25,0
.LVL167:
.L120:
	.loc 1 348 0
	sts swTimer+17,r25
.LVL168:
.L119:
.LBE174:
.LBE165:
	.loc 1 353 0
	lds r24,time_Uptime
	subi r24,lo8(-(1))
	sts time_Uptime,r24
	cpi r24,lo8(-6)
	breq .+2
	rjmp .L92
	.loc 1 355 0
	ldi r24,lo8(-1)
	sts time_UpTimeUpdated,r24
.LVL169:
	.loc 1 356 0
	sts time_Uptime,__zero_reg__
	.loc 1 357 0
	lds r24,time_Uptime+1
	subi r24,lo8(-(1))
	cpi r24,lo8(60)
	brsh .+2
	rjmp .L173
.LVL170:
	.loc 1 359 0
	sts time_Uptime+1,__zero_reg__
	.loc 1 360 0
	lds r24,time_Uptime+2
	subi r24,lo8(-(1))
	cpi r24,lo8(60)
	brsh .+2
	rjmp .L174
.LVL171:
	.loc 1 362 0
	sts time_Uptime+2,__zero_reg__
	.loc 1 363 0
	lds r24,time_Uptime+3
	subi r24,lo8(-(1))
	cpi r24,lo8(100)
	brsh .+2
	rjmp .L175
	.loc 1 365 0
	sts time_Uptime+3,__zero_reg__
	rjmp .L92
.LVL172:
.L171:
.LBE164:
.LBE163:
.LBB177:
.LBB150:
	.loc 1 375 0
	lds r24,122
	.loc 1 375 0
	mov r25,r24
	andi r25,lo8(64)
	sbrc r24,6
	rjmp .L79
.LBB140:
	.loc 1 379 0
	lds r24,adcKeys+1
.LVL173:
	.loc 1 380 0
	lds r18,121
.LVL174:
	.loc 1 381 0
	sts adcKeys+1,r18
.LVL175:
.LBB141:
.LBB142:
	.loc 1 328 0
	cp r18,r24
	brlo .L176
	.loc 1 331 0
	mov r19,r18
	sub r19,r24
	mov r24,r19
.LVL176:
.L81:
.LBE142:
.LBE141:
	.loc 1 382 0
	cpi r24,lo8(4)
	brsh .L79
.LBB144:
	.loc 1 388 0
	cpi r18,lo8(34)
	brsh .+2
	rjmp .L135
	.loc 1 390 0
	cpi r18,lo8(63)
	brsh .+2
	rjmp .L136
	.loc 1 392 0
	cpi r18,lo8(104)
	brsh .+2
	rjmp .L137
	.loc 1 394 0
	cpi r18,lo8(-106)
	brsh .+2
	rjmp .L138
	.loc 1 396 0
	cpi r18,lo8(-65)
	brsh .+2
	rjmp .L139
	.loc 1 398 0
	cpi r18,lo8(-24)
	brsh .+2
	rjmp .L140
.LVL177:
	.loc 1 408 0
	lds r28,adcKeys+2
.LVL178:
	.loc 1 409 0
	cpi r28,lo8(-1)
	breq .L79
.LVL179:
.L84:
	.loc 1 415 0
	ldi r24,lo8(-1)
	sts adcKeys+2,r24
.LVL180:
	.loc 1 425 0
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(keyWants-1))
	sbci r31,hi8(-(keyWants-1))
	ld r24,Z
	sbrs r24,1
	rjmp .L79
	.loc 1 426 0
	lds r24,adcKeys+3
	andi r24,lo8(3)
	breq .L166
.LVL181:
.L79:
.LBE144:
.LBE140:
	.loc 1 463 0
	ldi r24,lo8(1)
	sts adcNr,r24
.L141:
	.loc 1 467 0
	ldi r24,0
	ldi r18,lo8(127)
	rjmp .L91
.LVL182:
.L173:
.LBE150:
.LBE177:
.LBB178:
.LBB175:
	.loc 1 357 0
	sts time_Uptime+1,r24
	rjmp .L92
.LVL183:
.L176:
.LBE175:
.LBE178:
.LBB179:
.LBB151:
.LBB148:
.LBB145:
.LBB143:
	.loc 1 329 0
	sub r24,r18
.LVL184:
	rjmp .L81
.LVL185:
.L88:
.LBE143:
.LBE145:
.LBB146:
	.loc 1 452 0
	ldd r24,Z+3
	cpi r24,lo8(1)
	breq .+2
	rjmp .L78
	ldd r18,Z+4
	ldd r19,Z+5
	cpi r18,12
	cpc r19,__zero_reg__
	breq .+2
	rjmp .L78
	.loc 1 454 0
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
.L166:
	.loc 1 455 0
	mov r24,r28
.L167:
	call message_push
.LVL186:
	lds r25,adcNr
	rjmp .L78
.LVL187:
.L174:
.LBE146:
.LBE148:
.LBE151:
.LBE179:
.LBB180:
.LBB176:
	.loc 1 360 0
	sts time_Uptime+2,r24
	rjmp .L92
.LVL188:
.L175:
	.loc 1 363 0
	sts time_Uptime+3,r24
	rjmp .L92
.LVL189:
.L89:
.LBE176:
.LBE180:
.LBB181:
.LBB152:
	.loc 1 463 0
	sts adcNr,r25
	.loc 1 467 0
	tst r25
	brne .+2
	rjmp .L90
	rjmp .L141
.LVL190:
.L135:
.LBB149:
.LBB147:
	.loc 1 388 0
	ldi r18,lo8(3)
	ldi r19,0
.LVL191:
	.loc 1 389 0
	ldi r24,lo8(4)
.L82:
.LVL192:
	.loc 1 408 0
	lds r28,adcKeys+2
.LVL193:
	.loc 1 409 0
	cp r28,r24
	breq .L177
	.loc 1 411 0
	cpi r28,lo8(-1)
	breq .+2
	rjmp .L84
	.loc 1 415 0
	sts adcKeys+2,r24
.LVL194:
	.loc 1 418 0
	sts adcKeys+4+1,__zero_reg__
	sts adcKeys+4,__zero_reg__
	.loc 1 419 0
	sts adcKeys+3,__zero_reg__
	.loc 1 420 0
	movw r30,r18
	subi r30,lo8(-(keyWants))
	sbci r31,hi8(-(keyWants))
	ld r25,Z
	sbrs r25,0
	rjmp .L79
	rjmp .L167
.LVL195:
.L177:
	.loc 1 436 0
	lds r18,adcKeys+4
	lds r19,adcKeys+4+1
	subi r18,-1
	sbci r19,-1
	sts adcKeys+4+1,r19
	sts adcKeys+4,r18
.LVL196:
	.loc 1 437 0
	lds r18,adcKeys+4
	lds r19,adcKeys+4+1
	cpi r18,93
	cpc r19,__zero_reg__
	breq .L178
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(keyWants-1))
	sbci r31,hi8(-(keyWants-1))
	ld r18,Z
.L87:
	.loc 1 444 0
	sbrs r18,3
	rjmp .L79
	ldi r18,0
	ldi r19,0
.LVL197:
.L133:
	.loc 1 445 0
	movw r30,r18
	lsl r30
	rol r31
	add r30,r18
	adc r31,r19
	lsl r30
	rol r31
	subi r30,lo8(-(adcKeys))
	sbci r31,hi8(-(adcKeys))
	ldd r24,Z+3
	cpse r24,__zero_reg__
	rjmp .L88
	.loc 1 446 0
	ldd r18,Z+4
	ldd r19,Z+5
	cpi r18,75
	cpc r19,__zero_reg__
	breq .+2
	rjmp .L78
	.loc 1 448 0
	ldi r24,lo8(1)
	std Z+3,r24
	.loc 1 449 0
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	.loc 1 450 0
	mov r24,r28
	call message_push
.LVL198:
	lds r25,adcNr
	rjmp .L78
.LVL199:
.L136:
	.loc 1 390 0
	ldi r18,lo8(2)
	ldi r19,0
.LVL200:
	.loc 1 391 0
	ldi r24,lo8(3)
	rjmp .L82
.LVL201:
.L137:
	.loc 1 392 0
	ldi r18,lo8(4)
	ldi r19,0
.LVL202:
	.loc 1 393 0
	ldi r24,lo8(5)
	rjmp .L82
.LVL203:
.L178:
	.loc 1 439 0
	mov r16,r24
	ldi r17,0
	subi r16,lo8(-(keyWants-1))
	sbci r17,hi8(-(keyWants-1))
	movw r30,r16
	ld r18,Z
	sbrs r18,2
	rjmp .L87
	.loc 1 440 0
	ori r24,lo8(-128)
.LVL204:
	call message_push
.LVL205:
	.loc 1 441 0
	lds r25,adcNr
	mov r18,r25
	ldi r19,0
	ldi r24,lo8(6)
	mul r25,r24
	movw r30,r0
	clr __zero_reg__
	subi r30,lo8(-(adcKeys))
	sbci r31,hi8(-(adcKeys))
	ldi r24,lo8(2)
	std Z+3,r24
	.loc 1 444 0
	movw r30,r16
	ld r24,Z
	sbrs r24,3
	rjmp .L78
	rjmp .L133
.LVL206:
.L138:
	.loc 1 394 0
	ldi r18,0
	ldi r19,0
.LVL207:
	.loc 1 395 0
	ldi r24,lo8(1)
	rjmp .L82
.LVL208:
.L140:
	.loc 1 398 0
	ldi r18,lo8(5)
	ldi r19,0
.LVL209:
	.loc 1 399 0
	ldi r24,lo8(6)
	rjmp .L82
.LVL210:
.L139:
	.loc 1 396 0
	ldi r18,lo8(1)
	ldi r19,0
.LVL211:
	.loc 1 397 0
	ldi r24,lo8(2)
	rjmp .L82
.LBE147:
.LBE149:
.LBE152:
.LBE181:
	.cfi_endproc
.LFE33:
	.size	__vector_21, .-__vector_21
	.comm	pipe_PowerStatus,1,1
	.comm	pipeProcessing,1,1
	.comm	pipe_ModuleAssnWrite,1,1
	.comm	pipe_ModuleAssnRead,1,1
	.comm	pipe_ModuleTested,1,1
	.comm	pipe,256,1
	.comm	keyWants,6,1
	.comm	adcKeys,6,1
	.section	.bss.adcNr,"aw",@nobits
	.type	adcNr, @object
	.size	adcNr, 1
adcNr:
	.zero	1
	.comm	time_UpTimeUpdated,1,1
	.comm	time_Uptime,4,1
	.comm	swTimer,18,1
	.comm	msecCtr,1,1
	.comm	lcdData,10,1
	.text
.Letext0:
	.file 4 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 5 ".././message.h"
	.file 6 ".././hwtimer.h"
	.file 7 ".././menu.h"
	.file 8 ".././ee_prom.h"
	.file 9 ".././log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xed0
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF97
	.byte	0xc
	.long	.LASF98
	.long	.LASF99
	.long	.Ldebug_ranges0+0x138
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x4
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
	.byte	0x4
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
	.uleb128 0x3
	.long	.LASF6
	.byte	0x4
	.byte	0x82
	.long	0x6d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.long	0x30
	.long	0x99
	.uleb128 0x6
	.long	0x82
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.byte	0x40
	.long	0xb8
	.uleb128 0x8
	.long	.LASF11
	.byte	0x5
	.byte	0x41
	.long	0x49
	.uleb128 0x8
	.long	.LASF12
	.byte	0x5
	.byte	0x42
	.long	0x89
	.byte	0
	.uleb128 0x3
	.long	.LASF13
	.byte	0x5
	.byte	0x43
	.long	0x99
	.uleb128 0x9
	.byte	0x2
	.byte	0x6
	.byte	0x4d
	.long	0xe8
	.uleb128 0xa
	.long	.LASF14
	.byte	0x6
	.byte	0x4e
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x6
	.byte	0x4f
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF16
	.byte	0x6
	.byte	0x50
	.long	0xc3
	.uleb128 0x9
	.byte	0x6
	.byte	0x6
	.byte	0x82
	.long	0x142
	.uleb128 0xb
	.string	"mux"
	.byte	0x6
	.byte	0x83
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0x84
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"key"
	.byte	0x6
	.byte	0x85
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0x87
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.byte	0x88
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF20
	.byte	0x6
	.byte	0x89
	.long	0xf3
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.byte	0xa3
	.long	0x1c6
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.byte	0xa4
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.byte	0xa5
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.byte	0xa6
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.byte	0xa7
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.byte	0xa8
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0xa9
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0xaa
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.byte	0xab
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF29
	.byte	0x6
	.byte	0xac
	.long	0x14d
	.uleb128 0xc
	.byte	0x2
	.long	0x30
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF30
	.uleb128 0xd
	.long	0x30
	.uleb128 0xe
	.long	.LASF31
	.byte	0x3
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x1fc
	.uleb128 0xf
	.string	"__s"
	.byte	0x3
	.byte	0x44
	.long	0x1fc
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0x1de
	.uleb128 0xe
	.long	.LASF32
	.byte	0x2
	.byte	0xff
	.byte	0x1
	.byte	0x3
	.long	0x23e
	.uleb128 0x10
	.long	.LASF33
	.byte	0x2
	.byte	0xff
	.long	0x23e
	.uleb128 0x11
	.long	.LASF34
	.byte	0x2
	.word	0x101
	.long	0x23e
	.uleb128 0x11
	.long	.LASF35
	.byte	0x2
	.word	0x105
	.long	0x62
	.uleb128 0x12
	.byte	0x1
	.long	.LASF100
	.byte	0x2
	.word	0x106
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF36
	.uleb128 0x13
	.long	.LASF101
	.byte	0x1
	.word	0x146
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0x270
	.uleb128 0x14
	.long	.LASF37
	.byte	0x1
	.word	0x146
	.long	0x30
	.uleb128 0x14
	.long	.LASF38
	.byte	0x1
	.word	0x146
	.long	0x30
	.byte	0
	.uleb128 0x15
	.long	.LASF102
	.byte	0x3
	.byte	0x30
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0x16
	.byte	0x1
	.long	.LASF103
	.byte	0x1
	.word	0x102
	.long	0x30
	.byte	0x1
	.long	0x2b4
	.uleb128 0x11
	.long	.LASF39
	.byte	0x1
	.word	0x106
	.long	0x30
	.uleb128 0x11
	.long	.LASF40
	.byte	0x1
	.word	0x107
	.long	0x2b4
	.uleb128 0x17
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.word	0x10b
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0x1c6
	.uleb128 0x19
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.byte	0x29
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x2eb
	.uleb128 0x1a
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x2a
	.long	0x30
	.long	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.byte	0x35
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.byte	0x3e
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x331
	.uleb128 0x1a
	.long	.LBB62
	.long	.LBE62
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x4a
	.long	0x30
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF43
	.byte	0x1
	.byte	0x54
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x362
	.uleb128 0x1a
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x5d
	.long	0x30
	.long	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.byte	0x66
	.long	.LFB21
	.long	.LFE21
	.long	.LLST3
	.byte	0x1
	.long	0x576
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.byte	0x6d
	.long	0x2b4
	.long	.LLST4
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x72
	.long	0x30
	.long	.LLST5
	.uleb128 0x1e
	.long	.LASF45
	.byte	0x1
	.byte	0x73
	.long	0x30
	.long	.LLST6
	.uleb128 0x1f
	.long	0x202
	.long	.LBB64
	.long	.LBE64
	.byte	0x1
	.byte	0x74
	.long	0x3df
	.uleb128 0x20
	.long	0x20f
	.long	.LLST7
	.uleb128 0x1a
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x21
	.long	0x21a
	.long	.LLST8
	.uleb128 0x21
	.long	0x226
	.long	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x202
	.long	.LBB66
	.long	.LBE66
	.byte	0x1
	.byte	0x83
	.long	0x418
	.uleb128 0x20
	.long	0x20f
	.long	.LLST10
	.uleb128 0x1a
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x21
	.long	0x21a
	.long	.LLST11
	.uleb128 0x21
	.long	0x226
	.long	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x202
	.long	.LBB68
	.long	.LBE68
	.byte	0x1
	.byte	0x88
	.long	0x451
	.uleb128 0x20
	.long	0x20f
	.long	.LLST13
	.uleb128 0x1a
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x21
	.long	0x21a
	.long	.LLST14
	.uleb128 0x21
	.long	0x226
	.long	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x202
	.long	.LBB70
	.long	.LBE70
	.byte	0x1
	.byte	0x8a
	.long	0x48a
	.uleb128 0x20
	.long	0x20f
	.long	.LLST16
	.uleb128 0x1a
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x21
	.long	0x21a
	.long	.LLST17
	.uleb128 0x21
	.long	0x226
	.long	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x202
	.long	.LBB72
	.long	.LBE72
	.byte	0x1
	.byte	0x97
	.long	0x4c3
	.uleb128 0x20
	.long	0x20f
	.long	.LLST19
	.uleb128 0x1a
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x21
	.long	0x21a
	.long	.LLST20
	.uleb128 0x21
	.long	0x226
	.long	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x202
	.long	.LBB74
	.long	.LBE74
	.byte	0x1
	.byte	0xa1
	.long	0x4fc
	.uleb128 0x20
	.long	0x20f
	.long	.LLST22
	.uleb128 0x1a
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x21
	.long	0x21a
	.long	.LLST23
	.uleb128 0x21
	.long	0x226
	.long	.LLST24
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x202
	.long	.LBB76
	.long	.LBE76
	.byte	0x1
	.byte	0xb9
	.long	0x535
	.uleb128 0x20
	.long	0x20f
	.long	.LLST25
	.uleb128 0x1a
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x21
	.long	0x21a
	.long	.LLST26
	.uleb128 0x21
	.long	0x226
	.long	.LLST27
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LVL19
	.long	0xe9f
	.uleb128 0x23
	.long	.LVL52
	.byte	0x1
	.long	0xeac
	.long	0x557
	.uleb128 0x24
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x24
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.long	.LVL54
	.long	0xeac
	.uleb128 0x24
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x24
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.uleb128 0x24
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
	.uleb128 0x26
	.byte	0x1
	.long	.LASF104
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.long	0x62
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x781
	.uleb128 0x27
	.long	.LASF105
	.byte	0x1
	.byte	0xc4
	.long	0x30
	.long	.LLST28
	.uleb128 0x1e
	.long	.LASF39
	.byte	0x1
	.byte	0xc5
	.long	0x62
	.long	.LLST29
	.uleb128 0x28
	.long	.LASF46
	.byte	0x1
	.byte	0xca
	.long	0x30
	.uleb128 0x29
	.long	.LBB78
	.long	.LBE78
	.long	0x67a
	.uleb128 0x1e
	.long	.LASF47
	.byte	0x1
	.byte	0xd0
	.long	0x30
	.long	.LLST30
	.uleb128 0x1a
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x1e
	.long	.LASF48
	.byte	0x1
	.byte	0xd1
	.long	0x30
	.long	.LLST31
	.uleb128 0x1a
	.long	.LBB80
	.long	.LBE80
	.uleb128 0x1e
	.long	.LASF49
	.byte	0x1
	.byte	0xd2
	.long	0x30
	.long	.LLST32
	.uleb128 0x1f
	.long	0x202
	.long	.LBB81
	.long	.LBE81
	.byte	0x1
	.byte	0xd5
	.long	0x642
	.uleb128 0x20
	.long	0x20f
	.long	.LLST33
	.uleb128 0x1a
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x21
	.long	0x21a
	.long	.LLST34
	.uleb128 0x21
	.long	0x226
	.long	.LLST35
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x202
	.long	.LBB83
	.long	.LBE83
	.byte	0x1
	.byte	0xd7
	.uleb128 0x20
	.long	0x20f
	.long	.LLST36
	.uleb128 0x1a
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x21
	.long	0x21a
	.long	.LLST37
	.uleb128 0x21
	.long	0x226
	.long	.LLST38
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LBB85
	.long	.LBE85
	.long	0x6ff
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.byte	0xdc
	.long	0x30
	.uleb128 0x1f
	.long	0x202
	.long	.LBB86
	.long	.LBE86
	.byte	0x1
	.byte	0xdd
	.long	0x6c9
	.uleb128 0x20
	.long	0x20f
	.long	.LLST39
	.uleb128 0x1a
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x21
	.long	0x21a
	.long	.LLST40
	.uleb128 0x21
	.long	0x226
	.long	.LLST41
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x202
	.long	.LBB88
	.long	.LBE88
	.byte	0x1
	.byte	0xdf
	.uleb128 0x20
	.long	0x20f
	.long	.LLST42
	.uleb128 0x1a
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x21
	.long	0x21a
	.long	.LLST43
	.uleb128 0x21
	.long	0x226
	.long	.LLST44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LBB90
	.long	.LBE90
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.byte	0xe5
	.long	0x30
	.uleb128 0x1f
	.long	0x202
	.long	.LBB91
	.long	.LBE91
	.byte	0x1
	.byte	0xe7
	.long	0x74a
	.uleb128 0x20
	.long	0x20f
	.long	.LLST45
	.uleb128 0x1a
	.long	.LBB92
	.long	.LBE92
	.uleb128 0x21
	.long	0x21a
	.long	.LLST46
	.uleb128 0x21
	.long	0x226
	.long	.LLST47
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x202
	.long	.LBB93
	.long	.LBE93
	.byte	0x1
	.byte	0xec
	.uleb128 0x20
	.long	0x20f
	.long	.LLST48
	.uleb128 0x1a
	.long	.LBB94
	.long	.LBE94
	.uleb128 0x21
	.long	0x21a
	.long	.LLST49
	.uleb128 0x21
	.long	0x226
	.long	.LLST50
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.byte	0xf5
	.long	.LFB23
	.long	.LFE23
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x7c1
	.uleb128 0x1e
	.long	.LASF40
	.byte	0x1
	.byte	0xf7
	.long	0x2b4
	.long	.LLST51
	.uleb128 0x1a
	.long	.LBB95
	.long	.LBE95
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0xf9
	.long	0x30
	.long	.LLST52
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x27d
	.long	.LFB24
	.long	.LFE24
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x7fd
	.uleb128 0x21
	.long	0x28f
	.long	.LLST53
	.uleb128 0x21
	.long	0x29b
	.long	.LLST54
	.uleb128 0x1a
	.long	.LBB96
	.long	.LBE96
	.uleb128 0x21
	.long	0x2a8
	.long	.LLST55
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.long	.LASF52
	.byte	0x1
	.word	0x113
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF53
	.byte	0x1
	.word	0x11e
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x885
	.uleb128 0x1a
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x2f
	.long	.LASF54
	.byte	0x1
	.word	0x121
	.long	0x30
	.long	.LLST56
	.uleb128 0x2f
	.long	.LASF55
	.byte	0x1
	.word	0x121
	.long	0x30
	.long	.LLST57
	.uleb128 0x30
	.long	0x270
	.long	.LBB98
	.long	.LBE98
	.byte	0x1
	.word	0x121
	.uleb128 0x31
	.long	0x1e3
	.long	.LBB100
	.long	.LBE100
	.byte	0x1
	.word	0x121
	.uleb128 0x32
	.long	0x1f0
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2102
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.word	0x124
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x9f6
	.uleb128 0x33
	.long	0x27d
	.long	.LBB102
	.long	.LBE102
	.byte	0x1
	.word	0x128
	.long	0x8df
	.uleb128 0x1a
	.long	.LBB103
	.long	.LBE103
	.uleb128 0x21
	.long	0x28f
	.long	.LLST58
	.uleb128 0x21
	.long	0x29b
	.long	.LLST59
	.uleb128 0x1a
	.long	.LBB104
	.long	.LBE104
	.uleb128 0x34
	.long	0x2a8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LBB105
	.long	.LBE105
	.long	0x937
	.uleb128 0x2f
	.long	.LASF54
	.byte	0x1
	.word	0x12c
	.long	0x30
	.long	.LLST60
	.uleb128 0x2f
	.long	.LASF55
	.byte	0x1
	.word	0x12c
	.long	0x30
	.long	.LLST61
	.uleb128 0x30
	.long	0x270
	.long	.LBB106
	.long	.LBE106
	.byte	0x1
	.word	0x12c
	.uleb128 0x31
	.long	0x1e3
	.long	.LBB108
	.long	.LBE108
	.byte	0x1
	.word	0x12c
	.uleb128 0x20
	.long	0x1f0
	.long	.LLST62
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LBB110
	.long	.LBE110
	.long	0x98f
	.uleb128 0x2f
	.long	.LASF54
	.byte	0x1
	.word	0x12f
	.long	0x30
	.long	.LLST63
	.uleb128 0x2f
	.long	.LASF55
	.byte	0x1
	.word	0x12f
	.long	0x30
	.long	.LLST64
	.uleb128 0x30
	.long	0x270
	.long	.LBB111
	.long	.LBE111
	.byte	0x1
	.word	0x12f
	.uleb128 0x31
	.long	0x1e3
	.long	.LBB113
	.long	.LBE113
	.byte	0x1
	.word	0x12f
	.uleb128 0x20
	.long	0x1f0
	.long	.LLST65
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.Ldebug_ranges0+0
	.uleb128 0x11
	.long	.LASF57
	.byte	0x1
	.word	0x132
	.long	0x30
	.uleb128 0x33
	.long	0x27d
	.long	.LBB116
	.long	.LBE116
	.byte	0x1
	.word	0x132
	.long	0x9e0
	.uleb128 0x1a
	.long	.LBB117
	.long	.LBE117
	.uleb128 0x21
	.long	0x28f
	.long	.LLST66
	.uleb128 0x21
	.long	0x29b
	.long	.LLST67
	.uleb128 0x1a
	.long	.LBB118
	.long	.LBE118
	.uleb128 0x34
	.long	0x2a8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL108
	.long	0xeac
	.uleb128 0x24
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x35
	.uleb128 0x24
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF63
	.byte	0x1
	.word	0x176
	.byte	0x3
	.long	0xa44
	.uleb128 0x11
	.long	.LASF58
	.byte	0x1
	.word	0x1d2
	.long	0x30
	.uleb128 0x17
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.word	0x17a
	.long	0x30
	.uleb128 0x11
	.long	.LASF60
	.byte	0x1
	.word	0x17c
	.long	0x30
	.uleb128 0x17
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.word	0x180
	.long	0x30
	.uleb128 0x11
	.long	.LASF62
	.byte	0x1
	.word	0x198
	.long	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF64
	.byte	0x1
	.word	0x20d
	.byte	0x3
	.long	0xa74
	.uleb128 0x11
	.long	.LASF65
	.byte	0x1
	.word	0x20e
	.long	0x2b4
	.uleb128 0x11
	.long	.LASF66
	.byte	0x1
	.word	0x212
	.long	0x30
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.word	0x213
	.long	0x30
	.byte	0
	.uleb128 0x36
	.long	.LASF67
	.byte	0x1
	.word	0x151
	.byte	0x3
	.long	0xab4
	.uleb128 0x11
	.long	.LASF68
	.byte	0x1
	.word	0x152
	.long	0xab4
	.uleb128 0x11
	.long	.LASF69
	.byte	0x1
	.word	0x160
	.long	0x1d1
	.uleb128 0x17
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.word	0x154
	.long	0x30
	.uleb128 0x17
	.uleb128 0x11
	.long	.LASF70
	.byte	0x1
	.word	0x156
	.long	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0xe8
	.uleb128 0x36
	.long	.LASF71
	.byte	0x1
	.word	0x1e0
	.byte	0x3
	.long	0xb2c
	.uleb128 0x11
	.long	.LASF65
	.byte	0x1
	.word	0x1e1
	.long	0x2b4
	.uleb128 0x11
	.long	.LASF72
	.byte	0x1
	.word	0x1e3
	.long	0x30
	.uleb128 0x17
	.uleb128 0x11
	.long	.LASF73
	.byte	0x1
	.word	0x1e4
	.long	0x30
	.uleb128 0x17
	.uleb128 0x11
	.long	.LASF74
	.byte	0x1
	.word	0x1e6
	.long	0xb8
	.uleb128 0x11
	.long	.LASF27
	.byte	0x1
	.word	0x1e7
	.long	0x30
	.uleb128 0x11
	.long	.LASF75
	.byte	0x1
	.word	0x1f6
	.long	0x30
	.uleb128 0x11
	.long	.LASF76
	.byte	0x1
	.word	0x1f8
	.long	0x30
	.uleb128 0x11
	.long	.LASF77
	.byte	0x1
	.word	0x1f9
	.long	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.long	.LASF106
	.byte	0x1
	.word	0x22d
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.long	.LLST68
	.byte	0x1
	.long	0xd19
	.uleb128 0x38
	.long	0x9f6
	.long	.LBB138
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.word	0x234
	.long	0xbe8
	.uleb128 0x35
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x21
	.long	0xa03
	.long	.LLST69
	.uleb128 0x35
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x21
	.long	0xa10
	.long	.LLST70
	.uleb128 0x21
	.long	0xa1c
	.long	.LLST71
	.uleb128 0x38
	.long	0x245
	.long	.LBB141
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.word	0x17e
	.long	0xba7
	.uleb128 0x20
	.long	0x263
	.long	.LLST72
	.uleb128 0x20
	.long	0x257
	.long	.LLST73
	.byte	0
	.uleb128 0x35
	.long	.Ldebug_ranges0+0x78
	.uleb128 0x21
	.long	0xa29
	.long	.LLST74
	.uleb128 0x21
	.long	0xa35
	.long	.LLST75
	.uleb128 0x22
	.long	.LVL186
	.long	0xeb9
	.uleb128 0x39
	.long	.LVL198
	.long	0xeb9
	.long	0xbdb
	.uleb128 0x24
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL205
	.long	0xeb9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	0xa44
	.long	.LBB153
	.long	.LBE153
	.byte	0x1
	.word	0x236
	.long	0xc58
	.uleb128 0x1a
	.long	.LBB154
	.long	.LBE154
	.uleb128 0x21
	.long	0xa51
	.long	.LLST76
	.uleb128 0x21
	.long	0xa5d
	.long	.LLST77
	.uleb128 0x21
	.long	0xa69
	.long	.LLST78
	.uleb128 0x31
	.long	0x202
	.long	.LBB155
	.long	.LBE155
	.byte	0x1
	.word	0x214
	.uleb128 0x20
	.long	0x20f
	.long	.LLST79
	.uleb128 0x1a
	.long	.LBB156
	.long	.LBE156
	.uleb128 0x21
	.long	0x21a
	.long	.LLST80
	.uleb128 0x21
	.long	0x226
	.long	.LLST81
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	0xaba
	.long	.LBB157
	.long	.LBE157
	.byte	0x1
	.word	0x23b
	.long	0xcd9
	.uleb128 0x1a
	.long	.LBB158
	.long	.LBE158
	.uleb128 0x21
	.long	0xac7
	.long	.LLST82
	.uleb128 0x21
	.long	0xad3
	.long	.LLST83
	.uleb128 0x35
	.long	.Ldebug_ranges0+0x98
	.uleb128 0x21
	.long	0xae0
	.long	.LLST84
	.uleb128 0x35
	.long	.Ldebug_ranges0+0xb0
	.uleb128 0x34
	.long	0xaed
	.uleb128 0x21
	.long	0xaf9
	.long	.LLST85
	.uleb128 0x21
	.long	0xb05
	.long	.LLST86
	.uleb128 0x21
	.long	0xb11
	.long	.LLST87
	.uleb128 0x21
	.long	0xb1d
	.long	.LLST88
	.uleb128 0x22
	.long	.LVL128
	.long	0xec6
	.uleb128 0x22
	.long	.LVL131
	.long	0xec6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0xa74
	.long	.LBB163
	.long	.Ldebug_ranges0+0xc8
	.byte	0x1
	.word	0x239
	.uleb128 0x35
	.long	.Ldebug_ranges0+0xc8
	.uleb128 0x34
	.long	0xa81
	.uleb128 0x34
	.long	0xa8d
	.uleb128 0x1a
	.long	.LBB165
	.long	.LBE165
	.uleb128 0x34
	.long	0xa9a
	.uleb128 0x35
	.long	.Ldebug_ranges0+0xe8
	.uleb128 0x21
	.long	0xaa5
	.long	.LLST89
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LASF78
	.byte	0x1
	.byte	0x1b
	.long	0x30
	.byte	0x5
	.byte	0x3
	.long	adcNr
	.uleb128 0x3c
	.long	.LASF79
	.byte	0x5
	.byte	0x4a
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.long	0xd47
	.long	0xd47
	.uleb128 0x6
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x3d
	.long	0x30
	.uleb128 0x3e
	.long	.LASF80
	.byte	0x1
	.byte	0x17
	.long	0xd5e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	time_Uptime
	.uleb128 0x3d
	.long	0xd37
	.uleb128 0x5
	.long	0xd73
	.long	0xd73
	.uleb128 0x6
	.long	0x82
	.byte	0x8
	.byte	0
	.uleb128 0x3d
	.long	0xe8
	.uleb128 0x3e
	.long	.LASF81
	.byte	0x1
	.byte	0x16
	.long	0xd8a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	swTimer
	.uleb128 0x3d
	.long	0xd63
	.uleb128 0x3e
	.long	.LASF82
	.byte	0x1
	.byte	0x18
	.long	0xd47
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	time_UpTimeUpdated
	.uleb128 0x5
	.long	0xdb1
	.long	0xdb1
	.uleb128 0x6
	.long	0x82
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	0x142
	.uleb128 0x3e
	.long	.LASF83
	.byte	0x1
	.byte	0x1c
	.long	0xdc8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	adcKeys
	.uleb128 0x3d
	.long	0xda1
	.uleb128 0x5
	.long	0x30
	.long	0xddd
	.uleb128 0x6
	.long	0x82
	.byte	0x5
	.byte	0
	.uleb128 0x3e
	.long	.LASF84
	.byte	0x1
	.byte	0x1d
	.long	0xdcd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	keyWants
	.uleb128 0x5
	.long	0x1c6
	.long	0xdff
	.uleb128 0x6
	.long	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x3e
	.long	.LASF85
	.byte	0x1
	.byte	0x20
	.long	0xdef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pipe
	.uleb128 0x3e
	.long	.LASF86
	.byte	0x1
	.byte	0x24
	.long	0xd47
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pipeProcessing
	.uleb128 0x3e
	.long	.LASF87
	.byte	0x1
	.byte	0x21
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pipe_ModuleTested
	.uleb128 0x3e
	.long	.LASF88
	.byte	0x1
	.byte	0x22
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pipe_ModuleAssnRead
	.uleb128 0x3e
	.long	.LASF89
	.byte	0x1
	.byte	0x23
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pipe_ModuleAssnWrite
	.uleb128 0x3e
	.long	.LASF90
	.byte	0x1
	.byte	0x25
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pipe_PowerStatus
	.uleb128 0x5
	.long	0x30
	.long	0xe7b
	.uleb128 0x6
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x3e
	.long	.LASF91
	.byte	0x7
	.byte	0x9c
	.long	0xe6b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x3e
	.long	.LASF92
	.byte	0x1
	.byte	0x15
	.long	0xd47
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	msecCtr
	.uleb128 0x3f
	.byte	0x1
	.byte	0x1
	.long	.LASF93
	.long	.LASF93
	.byte	0x8
	.byte	0x1a
	.uleb128 0x3f
	.byte	0x1
	.byte	0x1
	.long	.LASF94
	.long	.LASF94
	.byte	0x9
	.byte	0x32
	.uleb128 0x3f
	.byte	0x1
	.byte	0x1
	.long	.LASF95
	.long	.LASF95
	.byte	0x5
	.byte	0x10
	.uleb128 0x3f
	.byte	0x1
	.byte	0x1
	.long	.LASF96
	.long	.LASF96
	.byte	0x5
	.byte	0x46
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
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
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LVL2
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7
	.word	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8
	.word	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL9
	.long	.LFE17
	.word	0x2
	.byte	0x39
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL10
	.long	.LVL11
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL16
	.long	.LFE19
	.word	0x2
	.byte	0x36
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL17
	.long	.LVL18
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LFB21
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI0
	.long	.LFE21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST4:
	.long	.LVL47
	.long	.LVL52-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
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
	.long	0
	.long	0
.LLST5:
	.long	.LVL21
	.long	.LVL23
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	.LVL23
	.long	.LVL31
	.word	0x1
	.byte	0x69
	.long	.LVL36
	.long	.LVL37
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	.LVL37
	.long	.LVL45
	.word	0x1
	.byte	0x69
	.long	.LVL45
	.long	.LVL48
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL24
	.long	.LVL26
	.word	0x1
	.byte	0x68
	.long	.LVL26
	.long	.LVL29
	.word	0x5
	.byte	0x3
	.long	pipe+255
	.long	.LVL30
	.long	.LVL37
	.word	0x5
	.byte	0x3
	.long	pipe+255
	.long	.LVL37
	.long	.LVL38
	.word	0x1
	.byte	0x62
	.long	.LVL43
	.long	.LVL44
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST7:
	.long	.LVL21
	.long	.LVL22
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST8:
	.long	.LVL21
	.long	.LVL22
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST9:
	.long	.LVL21
	.long	.LVL22
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL25
	.long	.LVL27
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST11:
	.long	.LVL25
	.long	.LVL27
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST12:
	.long	.LVL25
	.long	.LVL27
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL32
	.long	.LVL33
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST14:
	.long	.LVL32
	.long	.LVL33
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST15:
	.long	.LVL32
	.long	.LVL33
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL34
	.long	.LVL35
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST17:
	.long	.LVL34
	.long	.LVL35
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST18:
	.long	.LVL34
	.long	.LVL35
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL39
	.long	.LVL40
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST20:
	.long	.LVL39
	.long	.LVL40
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST21:
	.long	.LVL39
	.long	.LVL40
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL45
	.long	.LVL46
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST23:
	.long	.LVL45
	.long	.LVL46
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST24:
	.long	.LVL45
	.long	.LVL46
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL50
	.long	.LVL51
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST26:
	.long	.LVL50
	.long	.LVL51
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST27:
	.long	.LVL50
	.long	.LVL51
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL55
	.long	.LVL57
	.word	0x1
	.byte	0x68
	.long	.LVL57
	.long	.LVL76
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL76
	.long	.LVL77
	.word	0x1
	.byte	0x68
	.long	.LVL77
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL70
	.long	.LVL76
	.word	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST30:
	.long	.LVL58
	.long	.LVL59
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL59
	.long	.LVL60
	.word	0x3
	.byte	0x9
	.byte	0xa5
	.byte	0x9f
	.long	.LVL61
	.long	.LVL65
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST32:
	.long	.LVL59
	.long	.LVL60
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL61
	.long	.LVL62
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST34:
	.long	.LVL61
	.long	.LVL62
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST35:
	.long	.LVL61
	.long	.LVL62
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL63
	.long	.LVL64
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST37:
	.long	.LVL63
	.long	.LVL64
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST38:
	.long	.LVL63
	.long	.LVL64
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL65
	.long	.LVL66
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST40:
	.long	.LVL65
	.long	.LVL66
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST41:
	.long	.LVL65
	.long	.LVL66
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL67
	.long	.LVL68
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST43:
	.long	.LVL67
	.long	.LVL68
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST44:
	.long	.LVL67
	.long	.LVL68
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL71
	.long	.LVL72
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST46:
	.long	.LVL71
	.long	.LVL72
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST47:
	.long	.LVL71
	.long	.LVL72
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL73
	.long	.LVL74
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST49:
	.long	.LVL73
	.long	.LVL74
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST50:
	.long	.LVL73
	.long	.LVL74
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LVL79
	.long	.LFE23
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST52:
	.long	.LVL78
	.long	.LVL79
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LVL81
	.long	.LVL82
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL82
	.long	.LVL85
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST54:
	.long	.LVL82
	.long	.LFE24
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
	.long	.LVL81
	.long	.LVL82
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST56:
	.long	.LVL86
	.long	.LVL89
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST57:
	.long	.LVL87
	.long	.LVL88
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL88
	.long	.LFE26
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST58:
	.long	.LVL90
	.long	.LVL93
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST59:
	.long	.LVL90
	.long	.LVL93
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST60:
	.long	.LVL94
	.long	.LVL97
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST61:
	.long	.LVL95
	.long	.LVL96
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL96
	.long	.LVL98
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST62:
	.long	.LVL96
	.long	.LVL98
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2284
	.sleb128 0
	.long	0
	.long	0
.LLST63:
	.long	.LVL99
	.long	.LVL102
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST64:
	.long	.LVL100
	.long	.LVL101
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL101
	.long	.LVL103
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST65:
	.long	.LVL101
	.long	.LVL103
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2372
	.sleb128 0
	.long	0
	.long	0
.LLST66:
	.long	.LVL104
	.long	.LVL107
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST67:
	.long	.LVL104
	.long	.LVL107
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
	.long	.LFB33
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
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 19
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 20
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 21
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 22
	.long	.LCFI20
	.long	.LFE33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 23
	.long	0
	.long	0
.LLST69:
	.long	.LVL109
	.long	.LVL110
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST70:
	.long	.LVL173
	.long	.LVL176
	.word	0x1
	.byte	0x68
	.long	.LVL183
	.long	.LVL184
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST71:
	.long	.LVL174
	.long	.LVL179
	.word	0x1
	.byte	0x62
	.long	.LVL179
	.long	.LVL180
	.word	0x5
	.byte	0x3
	.long	adcKeys+1
	.long	.LVL183
	.long	.LVL185
	.word	0x1
	.byte	0x62
	.long	.LVL190
	.long	.LVL191
	.word	0x1
	.byte	0x62
	.long	.LVL191
	.long	.LVL194
	.word	0x5
	.byte	0x3
	.long	adcKeys+1
	.long	.LVL195
	.long	.LVL196
	.word	0x5
	.byte	0x3
	.long	adcKeys+1
	.long	.LVL199
	.long	.LVL200
	.word	0x1
	.byte	0x62
	.long	.LVL200
	.long	.LVL201
	.word	0x5
	.byte	0x3
	.long	adcKeys+1
	.long	.LVL201
	.long	.LVL202
	.word	0x1
	.byte	0x62
	.long	.LVL202
	.long	.LVL203
	.word	0x5
	.byte	0x3
	.long	adcKeys+1
	.long	.LVL206
	.long	.LVL207
	.word	0x1
	.byte	0x62
	.long	.LVL207
	.long	.LVL208
	.word	0x5
	.byte	0x3
	.long	adcKeys+1
	.long	.LVL208
	.long	.LVL209
	.word	0x1
	.byte	0x62
	.long	.LVL209
	.long	.LVL210
	.word	0x5
	.byte	0x3
	.long	adcKeys+1
	.long	.LVL210
	.long	.LVL211
	.word	0x1
	.byte	0x62
	.long	.LVL211
	.long	.LFE33
	.word	0x5
	.byte	0x3
	.long	adcKeys+1
	.long	0
	.long	0
.LLST72:
	.long	.LVL175
	.long	.LVL176
	.word	0x1
	.byte	0x62
	.long	.LVL183
	.long	.LVL185
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST73:
	.long	.LVL175
	.long	.LVL176
	.word	0x1
	.byte	0x68
	.long	.LVL183
	.long	.LVL184
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST74:
	.long	.LVL177
	.long	.LVL181
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL192
	.long	.LVL197
	.word	0x1
	.byte	0x68
	.long	.LVL203
	.long	.LVL204
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST75:
	.long	.LVL178
	.long	.LVL181
	.word	0x1
	.byte	0x6c
	.long	.LVL185
	.long	.LVL187
	.word	0x1
	.byte	0x6c
	.long	.LVL193
	.long	.LVL199
	.word	0x1
	.byte	0x6c
	.long	.LVL203
	.long	.LVL206
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST76:
	.long	.LVL114
	.long	.LVL116
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
	.long	.LVL112
	.long	.LVL116
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST78:
	.long	.LVL112
	.long	.LVL114
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST79:
	.long	.LVL112
	.long	.LVL113
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST80:
	.long	.LVL112
	.long	.LVL113
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST81:
	.long	.LVL112
	.long	.LVL113
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST82:
	.long	.LVL118
	.long	.LVL132
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST83:
	.long	.LVL117
	.long	.LVL118
	.word	0x5
	.byte	0x3
	.long	pipe_ModuleAssnRead
	.long	.LVL118
	.long	.LVL132
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST84:
	.long	.LVL117
	.long	.LVL118
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL118
	.long	.LVL132
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST85:
	.long	.LVL118
	.long	.LVL122
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	.LVL125
	.long	.LVL128-1
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	0
	.long	0
.LLST86:
	.long	.LVL118
	.long	.LVL125
	.word	0x1
	.byte	0x60
	.long	.LVL126
	.long	.LVL132
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST87:
	.long	.LVL118
	.long	.LVL119
	.word	0x1
	.byte	0x61
	.long	.LVL119
	.long	.LVL122
	.word	0x2
	.byte	0x8c
	.sleb128 7
	.long	.LVL126
	.long	.LVL128-1
	.word	0x2
	.byte	0x8c
	.sleb128 7
	.long	.LVL128-1
	.long	.LVL129
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST88:
	.long	.LVL118
	.long	.LVL120
	.word	0x1
	.byte	0x68
	.long	.LVL120
	.long	.LVL121
	.word	0xc
	.byte	0x8c
	.sleb128 7
	.byte	0x94
	.byte	0x1
	.byte	0x20
	.byte	0x7e
	.sleb128 0
	.byte	0x1a
	.byte	0x80
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.long	.LVL121
	.long	.LVL122
	.word	0x1
	.byte	0x68
	.long	.LVL127
	.long	.LVL128-1
	.word	0x1
	.byte	0x68
	.long	.LVL128-1
	.long	.LVL129
	.word	0xa
	.byte	0x81
	.sleb128 0
	.byte	0x20
	.byte	0x7e
	.sleb128 0
	.byte	0x1a
	.byte	0x80
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.long	.LVL130
	.long	.LVL131-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST89:
	.long	.LVL133
	.long	.LVL134
	.word	0x1
	.byte	0x69
	.long	.LVL134
	.long	.LVL135
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL135
	.long	.LVL136
	.word	0x1
	.byte	0x69
	.long	.LVL137
	.long	.LVL138
	.word	0x1
	.byte	0x69
	.long	.LVL138
	.long	.LVL139
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL139
	.long	.LVL140
	.word	0x1
	.byte	0x69
	.long	.LVL141
	.long	.LVL142
	.word	0x1
	.byte	0x69
	.long	.LVL142
	.long	.LVL143
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL143
	.long	.LVL144
	.word	0x1
	.byte	0x69
	.long	.LVL145
	.long	.LVL146
	.word	0x1
	.byte	0x69
	.long	.LVL146
	.long	.LVL147
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL147
	.long	.LVL148
	.word	0x1
	.byte	0x69
	.long	.LVL149
	.long	.LVL150
	.word	0x1
	.byte	0x69
	.long	.LVL150
	.long	.LVL151
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL151
	.long	.LVL152
	.word	0x1
	.byte	0x69
	.long	.LVL153
	.long	.LVL154
	.word	0x1
	.byte	0x69
	.long	.LVL154
	.long	.LVL155
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL155
	.long	.LVL156
	.word	0x1
	.byte	0x69
	.long	.LVL157
	.long	.LVL158
	.word	0x1
	.byte	0x69
	.long	.LVL158
	.long	.LVL159
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL159
	.long	.LVL160
	.word	0x1
	.byte	0x69
	.long	.LVL161
	.long	.LVL162
	.word	0x1
	.byte	0x69
	.long	.LVL162
	.long	.LVL163
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL163
	.long	.LVL164
	.word	0x1
	.byte	0x69
	.long	.LVL165
	.long	.LVL166
	.word	0x1
	.byte	0x69
	.long	.LVL166
	.long	.LVL167
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL167
	.long	.LVL168
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x74
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
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB20
	.long	.LFE20-.LFB20
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
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB115
	.long	.LBE115
	.long	.LBB119
	.long	.LBE119
	.long	0
	.long	0
	.long	.LBB138
	.long	.LBE138
	.long	.LBB177
	.long	.LBE177
	.long	.LBB179
	.long	.LBE179
	.long	.LBB181
	.long	.LBE181
	.long	0
	.long	0
	.long	.LBB140
	.long	.LBE140
	.long	.LBB148
	.long	.LBE148
	.long	.LBB149
	.long	.LBE149
	.long	0
	.long	0
	.long	.LBB141
	.long	.LBE141
	.long	.LBB145
	.long	.LBE145
	.long	0
	.long	0
	.long	.LBB144
	.long	.LBE144
	.long	.LBB146
	.long	.LBE146
	.long	.LBB147
	.long	.LBE147
	.long	0
	.long	0
	.long	.LBB159
	.long	.LBE159
	.long	.LBB162
	.long	.LBE162
	.long	0
	.long	0
	.long	.LBB160
	.long	.LBE160
	.long	.LBB161
	.long	.LBE161
	.long	0
	.long	0
	.long	.LBB163
	.long	.LBE163
	.long	.LBB178
	.long	.LBE178
	.long	.LBB180
	.long	.LBE180
	.long	0
	.long	0
	.long	.LBB166
	.long	.LBE166
	.long	.LBB167
	.long	.LBE167
	.long	.LBB168
	.long	.LBE168
	.long	.LBB169
	.long	.LBE169
	.long	.LBB170
	.long	.LBE170
	.long	.LBB171
	.long	.LBE171
	.long	.LBB172
	.long	.LBE172
	.long	.LBB173
	.long	.LBE173
	.long	.LBB174
	.long	.LBE174
	.long	0
	.long	0
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	.LFB20
	.long	.LFE20
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
	.long	.LFB33
	.long	.LFE33
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF49:
	.string	"bitNr"
.LASF89:
	.string	"pipe_ModuleAssnWrite"
.LASF97:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF102:
	.string	"__iCliRetVal"
.LASF43:
	.string	"init_Pipe"
.LASF62:
	.string	"oldKey"
.LASF106:
	.string	"__vector_21"
.LASF17:
	.string	"ADCval"
.LASF9:
	.string	"long long unsigned int"
.LASF32:
	.string	"_delay_us"
.LASF85:
	.string	"pipe"
.LASF12:
	.string	"message8"
.LASF65:
	.string	"curPipe"
.LASF54:
	.string	"sreg_save"
.LASF48:
	.string	"testByte"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF86:
	.string	"pipeProcessing"
.LASF69:
	.string	"pTime"
.LASF58:
	.string	"newMux"
.LASF66:
	.string	"local_pipe_ModuleAssnWrite"
.LASF88:
	.string	"pipe_ModuleAssnRead"
.LASF5:
	.string	"long int"
.LASF90:
	.string	"pipe_PowerStatus"
.LASF87:
	.string	"pipe_ModuleTested"
.LASF42:
	.string	"init_ADC"
.LASF3:
	.string	"uint16_t"
.LASF36:
	.string	"double"
.LASF91:
	.string	"lcdData"
.LASF98:
	.string	".././hwtimer.c"
.LASF46:
	.string	"modulePattern"
.LASF68:
	.string	"mytimer"
.LASF57:
	.string	"testResult"
.LASF41:
	.string	"init_Timers"
.LASF34:
	.string	"__tmp"
.LASF26:
	.string	"pipeInM4"
.LASF25:
	.string	"pipeInM8"
.LASF67:
	.string	"timerTimers"
.LASF4:
	.string	"unsigned int"
.LASF52:
	.string	"module_WaitOutputInput2Cycles"
.LASF7:
	.string	"long unsigned int"
.LASF73:
	.string	"shiftBitNr"
.LASF20:
	.string	"KeyInfo"
.LASF77:
	.string	"statChange"
.LASF59:
	.string	"oldADC"
.LASF19:
	.string	"keyTimer"
.LASF18:
	.string	"keyRepeating"
.LASF51:
	.string	"init_HwTimer"
.LASF104:
	.string	"test_PipeModule"
.LASF53:
	.string	"module_StartPowerOn"
.LASF64:
	.string	"timerPipeIO"
.LASF61:
	.string	"newKey"
.LASF13:
	.string	"PipeMessage_t"
.LASF33:
	.string	"__us"
.LASF70:
	.string	"newPrescaler"
.LASF76:
	.string	"oldPipeStat"
.LASF16:
	.string	"Timer"
.LASF10:
	.string	"sizetype"
.LASF37:
	.string	"data1"
.LASF38:
	.string	"data2"
.LASF71:
	.string	"timerPipeProcess"
.LASF55:
	.string	"__ToDo"
.LASF29:
	.string	"Pipe_t"
.LASF27:
	.string	"pipeIn"
.LASF72:
	.string	"local_pipe_ModuleAssnRead"
.LASF103:
	.string	"module_TestAllInputs"
.LASF21:
	.string	"pipeOutM4"
.LASF80:
	.string	"time_Uptime"
.LASF28:
	.string	"pipeInStat"
.LASF15:
	.string	"prescaler"
.LASF99:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF50:
	.string	"Pipes_AllOutputsOff"
.LASF100:
	.string	"__builtin_avr_delay_cycles"
.LASF1:
	.string	"unsigned char"
.LASF94:
	.string	"log_putError"
.LASF14:
	.string	"counter"
.LASF96:
	.string	"pipeMsgPush"
.LASF45:
	.string	"pipeInput"
.LASF101:
	.string	"absDifference"
.LASF47:
	.string	"byteCount"
.LASF105:
	.string	"moduleNr"
.LASF6:
	.string	"uint32_t"
.LASF79:
	.string	"msgPipe_Handling"
.LASF30:
	.string	"char"
.LASF74:
	.string	"myMessage"
.LASF60:
	.string	"newADC"
.LASF44:
	.string	"init_PipeModules"
.LASF35:
	.string	"__ticks_dc"
.LASF31:
	.string	"__iRestore"
.LASF93:
	.string	"eeprom_ReadModules"
.LASF56:
	.string	"module_PowerControl"
.LASF75:
	.string	"newPipeStat"
.LASF81:
	.string	"swTimer"
.LASF82:
	.string	"time_UpTimeUpdated"
.LASF63:
	.string	"timerADC"
.LASF92:
	.string	"msecCtr"
.LASF11:
	.string	"Message16"
.LASF2:
	.string	"uint8_t"
.LASF24:
	.string	"pipeInM12"
.LASF23:
	.string	"pipeInM16"
.LASF84:
	.string	"keyWants"
.LASF83:
	.string	"adcKeys"
.LASF22:
	.string	"pipeOut"
.LASF39:
	.string	"result"
.LASF40:
	.string	"pPipe"
.LASF95:
	.string	"message_push"
.LASF78:
	.string	"adcNr"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_clear_bss
