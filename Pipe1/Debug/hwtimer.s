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
	.loc 1 42 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL0:
.LBB55:
	.loc 1 43 0
	ldi r24,0
	rjmp .L2
.LVL1:
.L3:
	.loc 1 44 0 discriminator 3
	mov r30,r24
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(swTimer))
	sbci r31,hi8(-(swTimer))
	ldi r25,lo8(-1)
	st Z,r25
	.loc 1 45 0 discriminator 3
	std Z+1,__zero_reg__
	.loc 1 43 0 discriminator 3
	subi r24,lo8(-(1))
.LVL2:
.L2:
	.loc 1 43 0 is_stmt 0 discriminator 1
	cpi r24,lo8(9)
	brlo .L3
.LBE55:
	.loc 1 47 0 is_stmt 1
	ldi r30,lo8(time_Uptime)
	ldi r31,hi8(time_Uptime)
	st Z,__zero_reg__
	.loc 1 48 0
	std Z+1,__zero_reg__
	.loc 1 49 0
	std Z+2,__zero_reg__
	.loc 1 50 0
	std Z+3,__zero_reg__
	.loc 1 51 0
	ldi r24,lo8(-1)
.LVL3:
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
	.loc 1 54 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 55 0
	ldi r24,lo8(2)
	out 0x24,r24
	.loc 1 56 0
	ldi r25,lo8(3)
	out 0x25,r25
	.loc 1 57 0
	sts 110,r24
	.loc 1 58 0
	ldi r24,lo8(-7)
	out 0x27,r24
	.loc 1 59 0
	in r24,0x5
	andi r24,lo8(127)
	out 0x5,r24
	.loc 1 60 0
	in r24,0x4
	ori r24,lo8(-128)
	out 0x4,r24
	ret
	.cfi_endproc
.LFE18:
	.size	init_HwTimer, .-init_HwTimer
	.section	.text.init_ADC,"ax",@progbits
.global	init_ADC
	.type	init_ADC, @function
init_ADC:
.LFB19:
	.loc 1 63 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 65 0
	ldi r24,lo8(-121)
	sts 122,r24
	.loc 1 66 0
	sts 123,__zero_reg__
	.loc 1 67 0
	ldi r24,lo8(127)
	sts 124,r24
	.loc 1 68 0
	ldi r24,lo8(1)
	sts 126,r24
	.loc 1 69 0
	sts 127,__zero_reg__
	.loc 1 70 0
	ldi r30,lo8(adcKeys)
	ldi r31,hi8(adcKeys)
	st Z,__zero_reg__
	.loc 1 71 0
	ldi r24,lo8(-1)
	std Z+1,r24
	.loc 1 72 0
	std Z+2,r24
	.loc 1 73 0
	sts adcNr,r24
.LVL4:
.LBB56:
	.loc 1 75 0
	ldi r24,0
	rjmp .L6
.LVL5:
.L9:
	.loc 1 77 0
	cpi r24,lo8(5)
	brne .L7
	.loc 1 78 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(keyWants))
	sbci r31,hi8(-(keyWants))
	ldi r25,lo8(6)
	st Z,r25
	rjmp .L8
.L7:
	.loc 1 80 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(keyWants))
	sbci r31,hi8(-(keyWants))
	ldi r25,lo8(10)
	st Z,r25
.L8:
	.loc 1 75 0 discriminator 2
	subi r24,lo8(-(1))
.LVL6:
.L6:
	.loc 1 75 0 is_stmt 0 discriminator 1
	cpi r24,lo8(6)
	brlo .L9
/* epilogue start */
.LBE56:
	.loc 1 83 0 is_stmt 1
	ret
	.cfi_endproc
.LFE19:
	.size	init_ADC, .-init_ADC
	.section	.text.init_Pipe,"ax",@progbits
.global	init_Pipe
	.type	init_Pipe, @function
init_Pipe:
.LFB20:
	.loc 1 85 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 86 0
	ldi r24,lo8(-1)
	out 0x8,r24
	.loc 1 87 0
	out 0x7,r24
	.loc 1 88 0
	out 0x2,r24
	.loc 1 89 0
	out 0x1,__zero_reg__
	.loc 1 90 0
	in r24,0x14
	ori r24,lo8(7)
	out 0x14,r24
	.loc 1 91 0
	in r24,0x13
	ori r24,lo8(7)
	out 0x13,r24
	.loc 1 92 0
	in r24,0xb
	andi r24,lo8(127)
	out 0xb,r24
	.loc 1 93 0
	in r24,0xa
	ori r24,lo8(-128)
	out 0xa,r24
.LVL7:
.LBB57:
	.loc 1 94 0
	ldi r24,0
	rjmp .L11
.LVL8:
.L12:
	.loc 1 95 0 discriminator 3
	mov r30,r24
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldi r25,lo8(-1)
	std Z+1,r25
	.loc 1 96 0 discriminator 3
	st Z,r25
	.loc 1 94 0 discriminator 3
	subi r24,lo8(-(1))
.LVL9:
.L11:
	.loc 1 94 0 is_stmt 0 discriminator 1
	cpi r24,lo8(32)
	brlo .L12
.LBE57:
	.loc 1 99 0 is_stmt 1
	sts pipeProcessing,__zero_reg__
	.loc 1 100 0
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
	.loc 1 103 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 104 0
	call eeprom_ReadModules
.LVL10:
	cpi r24,lo8(-1)
	brne .L14
	.loc 1 105 0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r24,lo8(1)
	call log_putError
.LVL11:
	.loc 1 106 0
	ldi r30,lo8(pipe_Module)
	ldi r31,hi8(pipe_Module)
	ldi r24,lo8(-1)
	st Z,r24
	.loc 1 107 0
	std Z+1,r24
.L14:
.LVL12:
	.loc 1 111 0
	in r24,0xb
	andi r24,lo8(127)
	out 0xb,r24
	.loc 1 112 0
	in r24,0x14
	ori r24,lo8(7)
	out 0x14,r24
	.loc 1 114 0
	in r24,0x14
	andi r24,lo8(-5)
	out 0x14,r24
.LVL13:
.LBB58:
.LBB59:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 2 276 0
	ldi r24,lo8(5)
1:	dec r24
	brne 1b
	nop
.LVL14:
.LBE59:
.LBE58:
	.loc 1 118 0
	in r24,0x14
	ori r24,lo8(4)
	out 0x14,r24
	.loc 1 115 0
	ldi r25,lo8(32)
.LVL15:
.L16:
	.loc 1 120 0
	in r24,0x14
	ori r24,lo8(1)
	out 0x14,r24
	.loc 1 121 0
	sbrc r25,0
	rjmp .L22
	ldi r24,lo8(85)
	rjmp .L15
.L22:
	ldi r24,lo8(-86)
.L15:
	.loc 1 121 0 is_stmt 0 discriminator 4
	out 0x8,r24
	.loc 1 124 0 is_stmt 1 discriminator 4
	in r24,0
.LVL16:
	.loc 1 125 0 discriminator 4
	sts pipe+255,r24
	.loc 1 126 0 discriminator 4
	sts pipe+254,r24
	.loc 1 127 0 discriminator 4
	sts pipe+253,r24
	.loc 1 128 0 discriminator 4
	sts pipe+252,r24
	.loc 1 129 0 discriminator 4
	sts pipe+251,r24
	.loc 1 130 0 discriminator 4
	sts pipe+250,r24
	.loc 1 131 0 discriminator 4
	in r24,0x14
.LVL17:
	andi r24,lo8(-2)
	out 0x14,r24
.LVL18:
.LBB60:
.LBB61:
	.loc 2 276 0 discriminator 4
	ldi r24,lo8(5)
1:	dec r24
	brne 1b
	nop
.LVL19:
.LBE61:
.LBE60:
	.loc 1 133 0 discriminator 4
	subi r25,lo8(-(-1))
.LVL20:
	brne .L16
	ldi r25,lo8(32)
.LVL21:
	rjmp .L17
.LVL22:
.L18:
	.loc 1 136 0 discriminator 3
	in r24,0x14
	ori r24,lo8(1)
	out 0x14,r24
.LVL23:
.LBB62:
.LBB63:
	.loc 2 276 0 discriminator 3
	ldi r24,lo8(2)
1:	dec r24
	brne 1b
	rjmp .
.LVL24:
.LBE63:
.LBE62:
	.loc 1 138 0 discriminator 3
	in r24,0x14
	andi r24,lo8(-2)
	out 0x14,r24
.LVL25:
.LBB64:
.LBB65:
	.loc 2 276 0 discriminator 3
	ldi r24,lo8(2)
1:	dec r24
	brne 1b
	rjmp .
.LVL26:
.LBE65:
.LBE64:
	.loc 1 135 0 discriminator 3
	subi r25,lo8(-(-1))
.LVL27:
.L17:
	.loc 1 135 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L18
	.loc 1 143 0 is_stmt 1
	ldi r24,lo8(-1)
	sts pipe_ModuleTested,r24
.LVL28:
	.loc 1 144 0
	ldi r25,lo8(32)
.LVL29:
.L20:
	.loc 1 146 0
	in r24,0x14
	ori r24,lo8(1)
	out 0x14,r24
	.loc 1 147 0
	ldi r24,lo8(-1)
	out 0x8,r24
	.loc 1 149 0
	in r18,0
.LVL30:
	.loc 1 150 0
	sbrc r25,0
	rjmp .L23
	ldi r24,lo8(-86)
	rjmp .L19
.L23:
	ldi r24,lo8(85)
.L19:
	.loc 1 150 0 is_stmt 0 discriminator 4
	eor r24,r18
	lds r18,pipe_ModuleTested
.LVL31:
	and r24,r18
	sts pipe_ModuleTested,r24
	.loc 1 151 0 is_stmt 1 discriminator 4
	in r24,0x14
	andi r24,lo8(-2)
	out 0x14,r24
.LVL32:
.LBB66:
.LBB67:
	.loc 2 276 0 discriminator 4
	ldi r24,lo8(5)
1:	dec r24
	brne 1b
	nop
.LVL33:
.LBE67:
.LBE66:
	.loc 1 153 0 discriminator 4
	subi r25,lo8(-(-1))
.LVL34:
	brne .L20
	.loc 1 154 0
/* #APP */
 ;  154 ".././hwtimer.c" 1
	nop
 ;  0 "" 2
	.loc 1 155 0
 ;  155 ".././hwtimer.c" 1
	nop
 ;  0 "" 2
	.loc 1 156 0
/* #NOAPP */
	in r24,0x14
	ori r24,lo8(1)
	out 0x14,r24
	.loc 1 158 0
	in r24,0x14
	ori r24,lo8(7)
	out 0x14,r24
	.loc 1 159 0
	in r24,0x14
	andi r24,lo8(-5)
	out 0x14,r24
.LVL35:
.LBB68:
.LBB69:
	.loc 2 276 0
	ldi r24,lo8(2)
1:	dec r24
	brne 1b
	rjmp .
.LVL36:
.LBE69:
.LBE68:
	.loc 1 163 0
	in r24,0x14
	ori r24,lo8(4)
	out 0x14,r24
	.loc 1 161 0
	ldi r25,lo8(32)
	.loc 1 160 0
	ldi r30,lo8(pipe+248)
	ldi r31,hi8(pipe+248)
.LVL37:
.L21:
	.loc 1 165 0 discriminator 1
	ldd r24,Z+3
	std Z+2,r24
	.loc 1 166 0 discriminator 1
	ldd r24,Z+4
	std Z+3,r24
	.loc 1 167 0 discriminator 1
	in r24,0x14
	ori r24,lo8(1)
	out 0x14,r24
	.loc 1 168 0 discriminator 1
	ldi r24,lo8(-1)
	std Z+1,r24
	.loc 1 169 0 discriminator 1
	out 0x8,r24
	.loc 1 170 0 discriminator 1
	ldd r24,Z+5
	std Z+4,r24
	.loc 1 171 0 discriminator 1
	ldd r24,Z+6
	std Z+5,r24
	.loc 1 172 0 discriminator 1
	in r24,0
	.loc 1 172 0 discriminator 1
	std Z+6,r24
	.loc 1 173 0 discriminator 1
	std Z+2,r24
	.loc 1 174 0 discriminator 1
	std Z+3,r24
	.loc 1 175 0 discriminator 1
	std Z+4,r24
	.loc 1 176 0 discriminator 1
	std Z+5,r24
	.loc 1 177 0 discriminator 1
	std Z+7,r24
	.loc 1 178 0 discriminator 1
	in r24,0x14
	andi r24,lo8(-2)
	out 0x14,r24
	.loc 1 179 0 discriminator 1
	sbiw r30,8
.LVL38:
	.loc 1 180 0 discriminator 1
	subi r25,lo8(-(-1))
.LVL39:
	brne .L21
	.loc 1 181 0
/* #APP */
 ;  181 ".././hwtimer.c" 1
	nop
 ;  0 "" 2
	.loc 1 182 0
 ;  182 ".././hwtimer.c" 1
	nop
 ;  0 "" 2
	.loc 1 183 0
/* #NOAPP */
	in r24,0x14
	ori r24,lo8(1)
	out 0x14,r24
	.loc 1 184 0
	in r24,0x14
	andi r24,lo8(-3)
	out 0x14,r24
	.loc 1 185 0
	out 0x8,__zero_reg__
.LVL40:
.LBB70:
.LBB71:
	.loc 2 276 0
	ldi r24,lo8(5)
1:	dec r24
	brne 1b
	nop
.LVL41:
.LBE71:
.LBE70:
	.loc 1 187 0
	in r24,0x14
	ori r24,lo8(2)
	out 0x14,r24
	ret
	.cfi_endproc
.LFE21:
	.size	init_PipeModules, .-init_PipeModules
	.section	.text.test_PipeModule,"ax",@progbits
.global	test_PipeModule
	.type	test_PipeModule, @function
test_PipeModule:
.LFB22:
	.loc 1 200 0
	.cfi_startproc
.LVL42:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 202 0
	cpi r24,lo8(8)
	brlo .+2
	rjmp .L35
	.loc 1 206 0
	ldi r19,lo8(1)
	rjmp 2f
	1:
	lsl r19
	2:
	dec r24
	brpl 1b
.LVL43:
	.loc 1 207 0
	ldi r24,lo8(-128)
.LVL44:
	sts pipeProcessing,r24
	.loc 1 208 0
	in r24,0xb
	andi r24,lo8(127)
	out 0xb,r24
	.loc 1 210 0
	in r24,0x14
	ori r24,lo8(7)
	out 0x14,r24
.LVL45:
.LBB72:
	.loc 1 212 0
	ldi r20,0
	rjmp .L26
.LVL46:
.L28:
.LBB73:
.LBB74:
	.loc 1 215 0
	sbrc r18,0
	rjmp .L36
	.loc 1 215 0 is_stmt 0 discriminator 1
	mov r24,r19
	com r24
	rjmp .L27
.L36:
	.loc 1 215 0
	ldi r24,lo8(-1)
.L27:
	.loc 1 215 0 discriminator 4
	out 0x8,r24
	.loc 1 216 0 is_stmt 1 discriminator 4
	lsr r18
.LVL47:
.LBB75:
.LBB76:
	.loc 2 276 0 discriminator 4
	ldi r24,lo8(2)
1:	dec r24
	brne 1b
	rjmp .
.LVL48:
.LBE76:
.LBE75:
	.loc 1 218 0 discriminator 4
	in r24,0x14
	andi r24,lo8(-2)
	out 0x14,r24
.LVL49:
.LBB77:
.LBB78:
	.loc 2 276 0 discriminator 4
	ldi r24,lo8(2)
1:	dec r24
	brne 1b
	rjmp .
.LVL50:
.LBE78:
.LBE77:
	.loc 1 220 0 discriminator 4
	in r24,0x14
	ori r24,lo8(1)
	out 0x14,r24
	.loc 1 214 0 discriminator 4
	subi r25,lo8(-(1))
.LVL51:
	rjmp .L29
.LVL52:
.L37:
.LBE74:
.LBE73:
	ldi r25,0
	ldi r18,lo8(-91)
.L29:
.LVL53:
.LBB80:
.LBB79:
	.loc 1 214 0 is_stmt 0 discriminator 2
	cpi r25,lo8(8)
	brlo .L28
.LBE79:
.LBE80:
	.loc 1 212 0 is_stmt 1 discriminator 2
	subi r20,lo8(-(1))
.LVL54:
.L26:
	.loc 1 212 0 is_stmt 0 discriminator 1
	cpi r20,lo8(4)
	brlo .L37
	ldi r25,0
	rjmp .L30
.LVL55:
.L31:
.LBE72:
.LBB81:
.LBB82:
.LBB83:
	.loc 2 276 0 is_stmt 1
	ldi r24,lo8(2)
1:	dec r24
	brne 1b
	rjmp .
.LVL56:
.LBE83:
.LBE82:
	.loc 1 226 0
	in r24,0x14
	andi r24,lo8(-2)
	out 0x14,r24
.LVL57:
.LBB84:
.LBB85:
	.loc 2 276 0
	ldi r24,lo8(2)
1:	dec r24
	brne 1b
	rjmp .
.LVL58:
.LBE85:
.LBE84:
	.loc 1 228 0
	in r24,0x14
	ori r24,lo8(1)
	out 0x14,r24
	.loc 1 224 0
	subi r25,lo8(-(1))
.LVL59:
.L30:
	.loc 1 224 0 is_stmt 0 discriminator 1
	cpi r25,lo8(32)
	brlo .L31
	ldi r25,0
.LVL60:
	ldi r20,0
	ldi r21,0
	movw r22,r20
.LVL61:
	rjmp .L32
.LVL62:
.L34:
.LBE81:
.LBB86:
	.loc 1 234 0 is_stmt 1
	lsl r20
	rol r21
	rol r22
	rol r23
.LVL63:
.LBB87:
.LBB88:
	.loc 2 276 0
	ldi r24,lo8(2)
1:	dec r24
	brne 1b
	rjmp .
.LVL64:
.LBE88:
.LBE87:
	.loc 1 236 0
	in r24,0x14
	andi r24,lo8(-2)
	out 0x14,r24
	.loc 1 237 0
	in r24,0
	.loc 1 237 0
	and r24,r19
	.loc 1 237 0
	breq .L33
	.loc 1 238 0
	ori r20,1
.LVL65:
.L33:
.LBB89:
.LBB90:
	.loc 2 276 0 discriminator 2
	ldi r24,lo8(2)
1:	dec r24
	brne 1b
	rjmp .
.LVL66:
.LBE90:
.LBE89:
	.loc 1 241 0 discriminator 2
	in r24,0x14
	ori r24,lo8(1)
	out 0x14,r24
	.loc 1 233 0 discriminator 2
	subi r25,lo8(-(1))
.LVL67:
.L32:
	.loc 1 233 0 is_stmt 0 discriminator 1
	cpi r25,lo8(32)
	brlo .L34
.LBE86:
	.loc 1 244 0 is_stmt 1
	sts pipeProcessing,__zero_reg__
	.loc 1 245 0
	in r24,0xb
	ori r24,lo8(-128)
	out 0xb,r24
	.loc 1 246 0
	mov r19,r20
	mov r18,r21
	mov r24,r22
	mov r25,r23
.LVL68:
	rjmp .L25
.LVL69:
.L35:
	.loc 1 204 0
	ldi r19,0
	ldi r18,0
	ldi r24,0
.LVL70:
	ldi r25,0
.L25:
	.loc 1 247 0
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
	.loc 1 249 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL71:
.LBB91:
	.loc 1 253 0
	ldi r24,0
.LBE91:
	.loc 1 251 0
	ldi r30,lo8(pipe)
	ldi r31,hi8(pipe)
.LBB92:
	.loc 1 253 0
	rjmp .L39
.LVL72:
.L40:
	.loc 1 254 0 discriminator 3
	ldi r25,lo8(-1)
	std Z+1,r25
	.loc 1 255 0 discriminator 3
	st Z,r25
	.loc 1 256 0 discriminator 3
	adiw r30,8
.LVL73:
	.loc 1 253 0 discriminator 3
	subi r24,lo8(-(1))
.LVL74:
.L39:
	.loc 1 253 0 is_stmt 0 discriminator 1
	cpi r24,lo8(32)
	brlo .L40
.LBE92:
	.loc 1 258 0 is_stmt 1
	ldi r24,lo8(-1)
.LVL75:
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
	.loc 1 262 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL76:
.LBB93:
	.loc 1 271 0
	ldi r25,0
.LBE93:
	.loc 1 267 0
	ldi r30,lo8(pipe)
	ldi r31,hi8(pipe)
	.loc 1 266 0
	ldi r24,0
.LBB94:
	.loc 1 271 0
	rjmp .L42
.LVL77:
.L43:
	.loc 1 272 0 discriminator 3
	ldi r18,lo8(-1)
	std Z+1,r18
	.loc 1 273 0 discriminator 3
	ldd r18,Z+6
	or r24,r18
.LVL78:
	.loc 1 274 0 discriminator 3
	adiw r30,8
.LVL79:
	.loc 1 271 0 discriminator 3
	subi r25,lo8(-(1))
.LVL80:
.L42:
	.loc 1 271 0 is_stmt 0 discriminator 1
	cpi r25,lo8(32)
	brlo .L43
.LBE94:
	.loc 1 277 0 is_stmt 1
	lds r25,pipe_Module
.LVL81:
	and r24,r25
.LVL82:
	lds r25,pipe_ModuleTested
	.loc 1 278 0
	and r24,r25
	ret
	.cfi_endproc
.LFE24:
	.size	module_TestAllInputs, .-module_TestAllInputs
	.section	.text.module_WaitOutputInput2Cycles,"ax",@progbits
.global	module_WaitOutputInput2Cycles
	.type	module_WaitOutputInput2Cycles, @function
module_WaitOutputInput2Cycles:
.LFB25:
	.loc 1 280 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 283 0
	sts pipeProcessing,__zero_reg__
.L45:
	.loc 1 284 0 discriminator 1
	lds r24,pipeProcessing
	sbrs r24,1
	rjmp .L45
	.loc 1 287 0
	sts pipeProcessing,__zero_reg__
.L46:
	.loc 1 288 0 discriminator 1
	lds r24,pipeProcessing
	sbrs r24,1
	rjmp .L46
/* epilogue start */
	.loc 1 291 0
	ret
	.cfi_endproc
.LFE25:
	.size	module_WaitOutputInput2Cycles, .-module_WaitOutputInput2Cycles
	.section	.text.module_StartPowerOn,"ax",@progbits
.global	module_StartPowerOn
	.type	module_StartPowerOn, @function
module_StartPowerOn:
.LFB26:
	.loc 1 293 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 295 0
	ldi r24,lo8(1)
	sts pipe_PowerStatus,r24
.LBB95:
	.loc 1 296 0
	in r25,__SREG__
.LVL83:
.LBB96:
.LBB97:
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 3 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE97:
.LBE96:
	.loc 1 296 0
	rjmp .L48
.LVL84:
.L49:
	.loc 1 296 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(40)
.LVL85:
	std Z+2,r24
	std Z+3,__zero_reg__
.LVL86:
	.loc 1 296 0 discriminator 3
	ldi r24,0
.LVL87:
.L48:
	.loc 1 296 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L49
.LVL88:
.LBB98:
.LBB99:
	.loc 3 70 0 is_stmt 1
	out __SREG__,r25
	.loc 3 71 0
.LVL89:
	ret
.LBE99:
.LBE98:
.LBE95:
	.cfi_endproc
.LFE26:
	.size	module_StartPowerOn, .-module_StartPowerOn
	.section	.text.module_PowerControl,"ax",@progbits
.global	module_PowerControl
	.type	module_PowerControl, @function
module_PowerControl:
.LFB27:
	.loc 1 299 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 301 0
	lds r24,pipe_PowerStatus
	cpi r24,lo8(1)
	brne .L51
	.loc 1 303 0
	call module_TestAllInputs
.LVL90:
	cpse r24,__zero_reg__
	rjmp .L52
	.loc 1 305 0
	in r24,0x5
	ori r24,lo8(64)
	out 0x5,r24
	.loc 1 306 0
	ldi r24,lo8(18)
	sts pipe_PowerStatus,r24
.LBB100:
	.loc 1 307 0
	in r25,__SREG__
.LVL91:
.LBB101:
.LBB102:
	.loc 3 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE102:
.LBE101:
	.loc 1 307 0
	ldi r24,lo8(1)
	rjmp .L53
.LVL92:
.L54:
	.loc 1 307 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(1)
.LVL93:
	std Z+2,r24
	std Z+3,__zero_reg__
.LVL94:
	.loc 1 307 0 discriminator 3
	ldi r24,0
.LVL95:
.L53:
	.loc 1 307 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L54
.LVL96:
.LBB103:
.LBB104:
	.loc 3 70 0 is_stmt 1
	out __SREG__,r25
	.loc 3 71 0
.LVL97:
.LBE104:
.LBE103:
.LBE100:
	ret
.LVL98:
.L52:
.LBB105:
	.loc 1 310 0
	in r25,__SREG__
.LVL99:
.LBB106:
.LBB107:
	.loc 3 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE107:
.LBE106:
	.loc 1 310 0
	ldi r24,lo8(1)
	rjmp .L56
.LVL100:
.L57:
	.loc 1 310 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(12)
.LVL101:
	std Z+2,r24
	ldi r24,lo8(2)
	std Z+3,r24
.LVL102:
	.loc 1 310 0 discriminator 3
	ldi r24,0
.LVL103:
.L56:
	.loc 1 310 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L57
.LVL104:
.LBB108:
.LBB109:
	.loc 3 70 0 is_stmt 1
	out __SREG__,r25
	.loc 3 71 0
.LVL105:
	ret
.LVL106:
.L51:
.LBE109:
.LBE108:
.LBE105:
	.loc 1 312 0
	cpi r24,lo8(18)
	brne .L58
.LBB110:
	.loc 1 313 0
	call module_TestAllInputs
.LVL107:
	.loc 1 314 0
	cpse r24,__zero_reg__
	rjmp .L59
	.loc 1 316 0
	ldi r24,lo8(20)
.LVL108:
	sts pipe_PowerStatus,r24
	rjmp .L60
.LVL109:
.L59:
	.loc 1 319 0
	mov r20,r24
	ldi r21,0
	ldi r22,0
	ldi r24,lo8(5)
.LVL110:
	call log_putError
.LVL111:
	.loc 1 320 0
	in r24,0x5
	andi r24,lo8(-65)
	out 0x5,r24
	.loc 1 321 0
	ldi r24,lo8(-128)
	sts pipe_PowerStatus,r24
.L60:
	.loc 1 324 0
	ldi r24,lo8(-1)
	sts swTimer+2,r24
.LBE110:
	ret
.L58:
	.loc 1 326 0
	ldi r24,lo8(-1)
	sts swTimer+2,r24
	ret
	.cfi_endproc
.LFE27:
	.size	module_PowerControl, .-module_PowerControl
	.section	.text.softKey_WantLong,"ax",@progbits
.global	softKey_WantLong
	.type	softKey_WantLong, @function
softKey_WantLong:
.LFB31:
	.loc 1 485 0
	.cfi_startproc
.LVL112:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB111:
	.loc 1 487 0
	ldi r25,0
	rjmp .L62
.LVL113:
.L65:
	.loc 1 489 0
	cpi r25,lo8(4)
	brsh .L63
	.loc 1 490 0
	mov r30,r25
	ldi r31,0
	cpse r24,__zero_reg__
	rjmp .L66
	ldi r18,lo8(10)
	rjmp .L64
.L66:
	ldi r18,lo8(6)
.L64:
	.loc 1 490 0 is_stmt 0 discriminator 4
	subi r30,lo8(-(keyWants))
	sbci r31,hi8(-(keyWants))
	st Z,r18
.L63:
	.loc 1 487 0 is_stmt 1 discriminator 2
	subi r25,lo8(-(1))
.LVL114:
.L62:
	.loc 1 487 0 is_stmt 0 discriminator 1
	cpi r25,lo8(6)
	brlo .L65
/* epilogue start */
.LBE111:
	.loc 1 494 0 is_stmt 1
	ret
	.cfi_endproc
.LFE31:
	.size	softKey_WantLong, .-softKey_WantLong
	.section	.text.__vector_21,"ax",@progbits
.global	__vector_21
	.type	__vector_21, @function
__vector_21:
.LFB34:
	.loc 1 590 0
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
	push r14
.LCFI2:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI3:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI5:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r18
.LCFI6:
	.cfi_def_cfa_offset 10
	.cfi_offset 18, -9
	push r19
.LCFI7:
	.cfi_def_cfa_offset 11
	.cfi_offset 19, -10
	push r20
.LCFI8:
	.cfi_def_cfa_offset 12
	.cfi_offset 20, -11
	push r21
.LCFI9:
	.cfi_def_cfa_offset 13
	.cfi_offset 21, -12
	push r22
.LCFI10:
	.cfi_def_cfa_offset 14
	.cfi_offset 22, -13
	push r23
.LCFI11:
	.cfi_def_cfa_offset 15
	.cfi_offset 23, -14
	push r24
.LCFI12:
	.cfi_def_cfa_offset 16
	.cfi_offset 24, -15
	push r25
.LCFI13:
	.cfi_def_cfa_offset 17
	.cfi_offset 25, -16
	push r26
.LCFI14:
	.cfi_def_cfa_offset 18
	.cfi_offset 26, -17
	push r27
.LCFI15:
	.cfi_def_cfa_offset 19
	.cfi_offset 27, -18
	push r28
.LCFI16:
	.cfi_def_cfa_offset 20
	.cfi_offset 28, -19
	push r29
.LCFI17:
	.cfi_def_cfa_offset 21
	.cfi_offset 29, -20
	push r30
.LCFI18:
	.cfi_def_cfa_offset 22
	.cfi_offset 30, -21
	push r31
.LCFI19:
	.cfi_def_cfa_offset 23
	.cfi_offset 31, -22
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 22 */
.L__stack_usage = 22
	.loc 1 592 0
	in r24,0x5
	ori r24,lo8(-128)
	out 0x5,r24
	.loc 1 594 0
	lds r24,msecCtr
	subi r24,lo8(-(1))
	sts msecCtr,r24
	andi r24,lo8(3)
	cpi r24,lo8(1)
	brne .+2
	rjmp .L69
	brlo .L70
	cpi r24,lo8(2)
	brne .+2
	rjmp .L93
	cpi r24,lo8(3)
	brne .+2
	rjmp .L72
	rjmp .L68
.L70:
.LBB130:
.LBB131:
	.loc 1 382 0
	lds r24,adcNr
	cpse r24,__zero_reg__
	rjmp .L73
	.loc 1 382 0
	lds r25,122
	.loc 1 382 0
	sbrc r25,6
	rjmp .L73
.LBB132:
	.loc 1 386 0
	mov r18,r24
	ldi r19,0
	movw r30,r18
	lsl r30
	rol r31
	add r30,r18
	adc r31,r19
	lsl r30
	rol r31
	subi r30,lo8(-(adcKeys))
	sbci r31,hi8(-(adcKeys))
	ldd r25,Z+1
.LVL115:
	.loc 1 387 0
	lds r20,121
.LVL116:
	.loc 1 388 0
	std Z+1,r20
.LVL117:
.LBB133:
.LBB134:
	.loc 1 335 0
	cp r20,r25
	brsh .L74
	.loc 1 336 0
	sub r25,r20
.LVL118:
	rjmp .L75
.LVL119:
.L74:
	.loc 1 338 0
	mov r21,r20
	sub r21,r25
	mov r25,r21
.LVL120:
.L75:
.LBE134:
.LBE133:
	.loc 1 389 0
	cpi r25,lo8(4)
	brlo .+2
	rjmp .L73
.LBB135:
	.loc 1 392 0
	cpse r24,__zero_reg__
	rjmp .L103
	.loc 1 395 0
	cpi r20,lo8(34)
	brlo .L95
	.loc 1 397 0
	cpi r20,lo8(63)
	brlo .L96
	.loc 1 399 0
	cpi r20,lo8(104)
	brlo .L97
	.loc 1 401 0
	cpi r20,lo8(-106)
	brlo .L98
	.loc 1 403 0
	cpi r20,lo8(-65)
	brlo .L99
	.loc 1 405 0
	cpi r20,lo8(-24)
	brsh .L100
	.loc 1 406 0
	ldi r28,lo8(6)
	rjmp .L76
.L103:
	.loc 1 413 0
	ldi r28,lo8(-1)
	rjmp .L76
.L95:
	.loc 1 396 0
	ldi r28,lo8(4)
	rjmp .L76
.L96:
	.loc 1 398 0
	ldi r28,lo8(3)
	rjmp .L76
.L97:
	.loc 1 400 0
	ldi r28,lo8(5)
	rjmp .L76
.L98:
	.loc 1 402 0
	ldi r28,lo8(1)
	rjmp .L76
.L99:
	.loc 1 404 0
	ldi r28,lo8(2)
	rjmp .L76
.L100:
	.loc 1 408 0
	ldi r28,lo8(-1)
.L76:
.LVL121:
	.loc 1 415 0
	movw r30,r18
	lsl r30
	rol r31
	add r30,r18
	adc r31,r19
	lsl r30
	rol r31
	subi r30,lo8(-(adcKeys))
	sbci r31,hi8(-(adcKeys))
	ldd r29,Z+2
.LVL122:
	.loc 1 416 0
	cp r29,r28
	brne .+2
	rjmp .L78
	.loc 1 418 0
	cpi r29,lo8(-1)
	breq .L79
	cpi r28,lo8(-1)
	breq .L79
	.loc 1 420 0
	ldi r28,lo8(-1)
.LVL123:
.L79:
	.loc 1 422 0
	movw r30,r18
	lsl r30
	rol r31
	add r30,r18
	adc r31,r19
	lsl r30
	rol r31
	subi r30,lo8(-(adcKeys))
	sbci r31,hi8(-(adcKeys))
	std Z+2,r28
	.loc 1 423 0
	cpi r29,lo8(-1)
	brne .L80
	.loc 1 425 0
	movw r24,r18
	lsl r24
	rol r25
	movw r30,r24
	add r30,r18
	adc r31,r19
	lsl r30
	rol r31
	subi r30,lo8(-(adcKeys))
	sbci r31,hi8(-(adcKeys))
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	.loc 1 426 0
	movw r30,r24
	add r30,r18
	adc r31,r19
	lsl r30
	rol r31
	subi r30,lo8(-(adcKeys))
	sbci r31,hi8(-(adcKeys))
	std Z+3,__zero_reg__
	.loc 1 427 0
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(keyWants-1))
	sbci r31,hi8(-(keyWants-1))
	ld r24,Z
	sbrs r24,0
	rjmp .L73
	.loc 1 428 0
	mov r24,r28
	call message_push
.LVL124:
	rjmp .L73
.LVL125:
.L80:
	.loc 1 432 0
	mov r30,r29
	ldi r31,0
	subi r30,lo8(-(keyWants-1))
	sbci r31,hi8(-(keyWants-1))
	ld r24,Z
	sbrs r24,1
	rjmp .L73
	.loc 1 433 0
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
	andi r24,lo8(3)
	breq .+2
	rjmp .L73
	.loc 1 435 0
	mov r24,r29
	call message_push
.LVL126:
	rjmp .L73
.LVL127:
.L78:
	.loc 1 441 0
	cpi r28,lo8(-1)
	brne .+2
	rjmp .L73
	.loc 1 443 0
	movw r30,r18
	lsl r30
	rol r31
	movw r26,r30
	add r26,r18
	adc r27,r19
	lsl r26
	rol r27
	subi r26,lo8(-(adcKeys))
	sbci r27,hi8(-(adcKeys))
	adiw r26,4
	ld r24,X+
	ld r25,X
	sbiw r26,4+1
	adiw r24,1
	adiw r26,4+1
	st X,r25
	st -X,r24
	sbiw r26,4
	.loc 1 444 0
	movw r30,r26
	ldd r24,Z+4
	ldd r25,Z+5
	cpi r24,75
	cpc r25,__zero_reg__
	brne .L81
	.loc 1 446 0
	mov r30,r29
	ldi r31,0
	subi r30,lo8(-(keyWants-1))
	sbci r31,hi8(-(keyWants-1))
	ld r24,Z
	sbrs r24,2
	rjmp .L81
	.loc 1 447 0
	mov r24,r28
	ori r24,lo8(-128)
	call message_push
.LVL128:
	.loc 1 448 0
	lds r30,adcNr
	ldi r24,lo8(6)
	mul r30,r24
	movw r30,r0
	clr __zero_reg__
	subi r30,lo8(-(adcKeys))
	sbci r31,hi8(-(adcKeys))
	ldi r24,lo8(2)
	std Z+3,r24
.L81:
	.loc 1 451 0
	mov r30,r29
	ldi r31,0
	subi r30,lo8(-(keyWants-1))
	sbci r31,hi8(-(keyWants-1))
	ld r24,Z
	sbrs r24,3
	rjmp .L73
	.loc 1 452 0
	lds r24,adcNr
	ldi r25,0
	movw r30,r24
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	lsl r30
	rol r31
	subi r30,lo8(-(adcKeys))
	sbci r31,hi8(-(adcKeys))
	ldd r18,Z+3
	cpse r18,__zero_reg__
	rjmp .L82
	.loc 1 453 0
	movw r30,r24
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	lsl r30
	rol r31
	subi r30,lo8(-(adcKeys))
	sbci r31,hi8(-(adcKeys))
	ldd r18,Z+4
	ldd r19,Z+5
	cpi r18,50
	cpc r19,__zero_reg__
	brne .L73
	.loc 1 455 0
	ldi r18,lo8(6)
	mul r18,r24
	movw r30,r0
	mul r18,r25
	add r31,r0
	clr __zero_reg__
	subi r30,lo8(-(adcKeys))
	sbci r31,hi8(-(adcKeys))
	ldi r24,lo8(1)
	std Z+3,r24
	.loc 1 456 0
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	.loc 1 457 0
	mov r24,r28
	call message_push
.LVL129:
	rjmp .L73
.L82:
	.loc 1 459 0
	movw r30,r24
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	lsl r30
	rol r31
	subi r30,lo8(-(adcKeys))
	sbci r31,hi8(-(adcKeys))
	ldd r18,Z+3
	cpi r18,lo8(1)
	brne .L73
	ldi r18,lo8(6)
	mul r18,r24
	movw r30,r0
	mul r18,r25
	add r31,r0
	clr __zero_reg__
	subi r30,lo8(-(adcKeys))
	sbci r31,hi8(-(adcKeys))
	ldd r18,Z+4
	ldd r19,Z+5
	cpi r18,12
	cpc r19,__zero_reg__
	brne .L73
	.loc 1 461 0
	ldi r18,lo8(6)
	mul r18,r24
	movw r30,r0
	mul r18,r25
	add r31,r0
	clr __zero_reg__
	subi r30,lo8(-(adcKeys))
	sbci r31,hi8(-(adcKeys))
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	.loc 1 462 0
	mov r24,r28
	call message_push
.LVL130:
.L73:
.LBE135:
.LBE132:
	.loc 1 470 0
	lds r24,adcNr
	subi r24,lo8(-(1))
	sts adcNr,r24
	cpi r24,lo8(4)
	brlo .L83
	.loc 1 471 0
	sts adcNr,__zero_reg__
.L83:
	.loc 1 474 0
	lds r24,adcNr
	cpse r24,__zero_reg__
	rjmp .L102
	.loc 1 475 0
	ldi r25,0
	movw r30,r24
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	lsl r30
	rol r31
	subi r30,lo8(-(adcKeys))
	sbci r31,hi8(-(adcKeys))
	ld r24,Z
.LVL131:
	rjmp .L84
.LVL132:
.L102:
	.loc 1 478 0
	ldi r24,lo8(31)
.L84:
.LVL133:
	.loc 1 480 0
	mov r25,r24
	andi r25,lo8(31)
	ori r25,lo8(96)
	sts 124,r25
	.loc 1 481 0
	ldi r30,lo8(123)
	ldi r31,0
	ld r18,Z
	.loc 1 481 0
	andi r24,lo8(32)
.LVL134:
	ldi r25,0
	asr r25
	ror r24
	asr r25
	ror r24
	.loc 1 481 0
	mov r25,r18
	andi r25,lo8(-33)
	or r24,r25
	st Z,r24
	.loc 1 482 0
	ldi r30,lo8(122)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(64)
	st Z,r24
	rjmp .L68
.L69:
.LBE131:
.LBE130:
	.loc 1 597 0
	lds r24,pipeProcessing
	cpi r24,lo8(-128)
	brne .+2
	rjmp .L68
.LBB136:
.LBB137:
	.loc 1 559 0
	in r24,0x14
	ori r24,lo8(7)
	out 0x14,r24
	.loc 1 560 0
	in r24,0x14
	andi r24,lo8(-5)
	out 0x14,r24
.LVL135:
	.loc 1 562 0
	lds r18,pipe_Module+1
	com r18
.LVL136:
.LBB138:
.LBB139:
	.loc 2 276 0
	ldi r30,lo8(2)
1:	dec r30
	brne 1b
	rjmp .
.LVL137:
.LBE139:
.LBE138:
	.loc 1 565 0
	in r24,0x14
	ori r24,lo8(4)
	out 0x14,r24
	.loc 1 563 0
	ldi r25,lo8(32)
	.loc 1 561 0
	ldi r30,lo8(pipe+248)
	ldi r31,hi8(pipe+248)
.LVL138:
.L85:
	.loc 1 567 0
	ldd r24,Z+3
	std Z+2,r24
	.loc 1 568 0
	ldd r24,Z+4
	std Z+3,r24
	.loc 1 569 0
	in r24,0x14
	ori r24,lo8(1)
	out 0x14,r24
	.loc 1 570 0
	ldd r24,Z+1
	or r24,r18
	out 0x8,r24
	.loc 1 571 0
	ldd r24,Z+5
	std Z+4,r24
	.loc 1 572 0
	ldd r24,Z+6
	std Z+5,r24
	.loc 1 573 0
	in r24,0
	.loc 1 573 0
	std Z+6,r24
	.loc 1 574 0
	in r24,0x14
	andi r24,lo8(-2)
	out 0x14,r24
	.loc 1 575 0
	sbiw r30,8
.LVL139:
	.loc 1 576 0
	subi r25,lo8(-(-1))
.LVL140:
	brne .L85
	.loc 1 577 0
/* #APP */
 ;  577 ".././hwtimer.c" 1
	nop
 ;  0 "" 2
	.loc 1 578 0
 ;  578 ".././hwtimer.c" 1
	nop
 ;  0 "" 2
	.loc 1 579 0
/* #NOAPP */
	in r24,0x14
	ori r24,lo8(1)
	out 0x14,r24
	.loc 1 580 0
	in r24,0x14
	andi r24,lo8(-3)
	out 0x14,r24
	.loc 1 581 0
	lds r24,pipeProcessing
	ori r24,lo8(2)
	sts pipeProcessing,r24
	.loc 1 582 0
	out 0x8,__zero_reg__
	.loc 1 583 0
	in r24,0xb
	ori r24,lo8(-128)
	out 0xb,r24
	.loc 1 584 0
	in r24,0x14
	ori r24,lo8(2)
	out 0x14,r24
	rjmp .L68
.LVL141:
.L88:
.LBE137:
.LBE136:
.LBB140:
.LBB141:
.LBB142:
	.loc 1 348 0
	ld r24,Z
	subi r24,lo8(-(-1))
	cpi r24,lo8(-2)
	brsh .L86
.LBB143:
	.loc 1 349 0
	ldd r18,Z+1
	subi r18,lo8(-(1))
.LVL142:
	.loc 1 350 0
	cpi r18,lo8(5)
	brlo .L87
.LVL143:
	.loc 1 353 0
	st Z,r24
	.loc 1 352 0
	ldi r18,0
.LVL144:
.L87:
	.loc 1 355 0
	std Z+1,r18
.LVL145:
.L86:
.LBE143:
	.loc 1 357 0
	adiw r30,2
.LVL146:
	.loc 1 347 0
	subi r25,lo8(-(1))
.LVL147:
	rjmp .L71
.LVL148:
.L93:
	ldi r25,0
.LBE142:
	.loc 1 346 0
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
.L71:
.LVL149:
.LBB144:
	.loc 1 347 0
	cpi r25,lo8(9)
	brlo .L88
.LVL150:
.LBE144:
	.loc 1 360 0
	ldi r30,lo8(time_Uptime)
	ldi r31,hi8(time_Uptime)
.LVL151:
	ld r24,Z
	subi r24,lo8(-(1))
	st Z,r24
	cpi r24,lo8(-6)
	breq .+2
	rjmp .L68
	.loc 1 362 0
	ldi r24,lo8(-1)
	sts time_UpTimeUpdated,r24
.LVL152:
	.loc 1 363 0
	st Z,__zero_reg__
	.loc 1 364 0
	ldd r24,Z+1
	subi r24,lo8(-(1))
	std Z+1,r24
	cpi r24,lo8(60)
	brsh .+2
	rjmp .L68
.LVL153:
	.loc 1 366 0
	std Z+1,__zero_reg__
	.loc 1 367 0
	ldd r24,Z+2
	subi r24,lo8(-(1))
	std Z+2,r24
	cpi r24,lo8(60)
	brsh .+2
	rjmp .L68
.LVL154:
	.loc 1 369 0
	std Z+2,__zero_reg__
	.loc 1 370 0
	ldd r24,Z+3
	subi r24,lo8(-(1))
	std Z+3,r24
	cpi r24,lo8(100)
	brsh .+2
	rjmp .L68
	.loc 1 372 0
	sts time_Uptime+3,__zero_reg__
	rjmp .L68
.LVL155:
.L72:
.LBE141:
.LBE140:
	.loc 1 602 0
	lds r24,pipeProcessing
	cpi r24,lo8(-128)
	breq .L68
.LVL156:
.LBB145:
.LBB146:
	.loc 1 502 0
	lds r14,pipe_Module
	lds r24,pipe_ModuleTested
	and r14,r24
.LVL157:
.LBB147:
	.loc 1 503 0
	mov r15,__zero_reg__
.LBE147:
	.loc 1 500 0
	ldi r16,lo8(pipe)
	ldi r17,hi8(pipe)
	rjmp .L89
.LVL158:
.L92:
.LBB149:
.LBB148:
	.loc 1 524 0
	movw r30,r16
	ldd r28,Z+2
.LVL159:
	.loc 1 526 0
	ldd r24,Z+3
	mov r25,r28
	and r25,r24
.LVL160:
	.loc 1 527 0
	or r28,r24
.LVL161:
	.loc 1 528 0
	ldd r24,Z+4
	and r25,r24
.LVL162:
	.loc 1 529 0
	or r28,r24
.LVL163:
	.loc 1 530 0
	ldd r18,Z+5
	and r25,r18
.LVL164:
	.loc 1 531 0
	or r28,r18
.LVL165:
	.loc 1 532 0
	ldd r24,Z+6
	and r25,r24
.LVL166:
	.loc 1 533 0
	or r28,r24
.LVL167:
	.loc 1 534 0
	ldd r29,Z+7
.LVL168:
	.loc 1 535 0
	and r28,r29
.LVL169:
	or r28,r25
.LVL170:
	.loc 1 536 0
	std Z+7,r28
	.loc 1 538 0
	mov r24,r29
.LVL171:
	com r24
	and r24,r28
	and r24,r14
.LVL172:
	.loc 1 539 0
	breq .L90
	.loc 1 543 0
	mov r25,r15
.LVL173:
	ori r25,lo8(32)
	call pipeMsgPush
.LVL174:
.L90:
	.loc 1 545 0
	com r28
.LVL175:
	and r28,r29
.LVL176:
	mov r24,r28
	and r24,r14
.LVL177:
	.loc 1 546 0
	breq .L91
	.loc 1 550 0
	mov r25,r15
	call pipeMsgPush
.LVL178:
.L91:
	.loc 1 552 0
	subi r16,-8
	sbci r17,-1
.LVL179:
	.loc 1 553 0
	lds r24,pipeProcessing
	ori r24,lo8(1)
	sts pipeProcessing,r24
.LBE148:
	.loc 1 503 0
	inc r15
.LVL180:
.L89:
	ldi r31,lo8(31)
	cp r31,r15
	brsh .L92
.LVL181:
.L68:
.LBE149:
.LBE146:
.LBE145:
	.loc 1 607 0
	in r24,0x5
	andi r24,lo8(127)
	out 0x5,r24
/* epilogue start */
	.loc 1 609 0
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
	.cfi_endproc
.LFE34:
	.size	__vector_21, .-__vector_21
	.section	.text.pipe_on,"ax",@progbits
.global	pipe_on
	.type	pipe_on, @function
pipe_on:
.LFB35:
	.loc 1 613 0
	.cfi_startproc
.LVL182:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 614 0
	mov r30,r24
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	com r22
.LVL183:
	ldd r24,Z+1
.LVL184:
	and r22,r24
.LVL185:
	std Z+1,r22
	ret
	.cfi_endproc
.LFE35:
	.size	pipe_on, .-pipe_on
	.section	.text.pipe_off,"ax",@progbits
.global	pipe_off
	.type	pipe_off, @function
pipe_off:
.LFB36:
	.loc 1 617 0
	.cfi_startproc
.LVL186:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 618 0
	mov r30,r24
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(pipe))
	sbci r31,hi8(-(pipe))
	ldd r24,Z+1
.LVL187:
	or r22,r24
.LVL188:
	std Z+1,r22
	ret
	.cfi_endproc
.LFE36:
	.size	pipe_off, .-pipe_off
	.comm	pipe_PowerStatus,1,1
	.comm	pipeProcessing,1,1
	.comm	pipe_Module,2,1
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
	.long	0xf89
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF110
	.byte	0xc
	.long	.LASF111
	.long	.LASF112
	.long	.Ldebug_ranges0+0x78
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
	.byte	0x4f
	.long	0xe8
	.uleb128 0xa
	.long	.LASF14
	.byte	0x6
	.byte	0x50
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x6
	.byte	0x51
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF16
	.byte	0x6
	.byte	0x52
	.long	0xc3
	.uleb128 0x9
	.byte	0x6
	.byte	0x6
	.byte	0x84
	.long	0x142
	.uleb128 0xb
	.string	"mux"
	.byte	0x6
	.byte	0x85
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0x86
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"key"
	.byte	0x6
	.byte	0x87
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0x89
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.byte	0x8a
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF20
	.byte	0x6
	.byte	0x8b
	.long	0xf3
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.byte	0xa5
	.long	0x1c6
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.byte	0xa6
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.byte	0xa7
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.byte	0xa8
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.byte	0xa9
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.byte	0xaa
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0xab
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0xac
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.byte	0xad
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF29
	.byte	0x6
	.byte	0xae
	.long	0x14d
	.uleb128 0x9
	.byte	0x2
	.byte	0x6
	.byte	0xba
	.long	0x1f6
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.byte	0xbb
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.byte	0xbc
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF32
	.byte	0x6
	.byte	0xbd
	.long	0x1d1
	.uleb128 0xc
	.byte	0x2
	.long	0x30
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF33
	.uleb128 0xd
	.long	0x30
	.uleb128 0xe
	.long	.LASF40
	.byte	0x2
	.byte	0xff
	.byte	0x1
	.byte	0x3
	.long	0x24f
	.uleb128 0xf
	.long	.LASF37
	.byte	0x2
	.byte	0xff
	.long	0x24f
	.uleb128 0x10
	.long	.LASF34
	.byte	0x2
	.word	0x101
	.long	0x24f
	.uleb128 0x10
	.long	.LASF35
	.byte	0x2
	.word	0x105
	.long	0x62
	.uleb128 0x11
	.byte	0x1
	.long	.LASF113
	.byte	0x2
	.word	0x106
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF36
	.uleb128 0x12
	.long	.LASF114
	.byte	0x1
	.word	0x14d
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0x281
	.uleb128 0x13
	.long	.LASF38
	.byte	0x1
	.word	0x14d
	.long	0x30
	.uleb128 0x13
	.long	.LASF39
	.byte	0x1
	.word	0x14d
	.long	0x30
	.byte	0
	.uleb128 0x14
	.long	.LASF115
	.byte	0x3
	.byte	0x30
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0xe
	.long	.LASF41
	.byte	0x3
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x2a7
	.uleb128 0x15
	.string	"__s"
	.byte	0x3
	.byte	0x44
	.long	0x2a7
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0x20e
	.uleb128 0x16
	.byte	0x1
	.long	.LASF42
	.byte	0x1
	.byte	0x2a
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x2de
	.uleb128 0x17
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.long	0x30
	.long	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.byte	0x36
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.long	.LASF43
	.byte	0x1
	.byte	0x3f
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x324
	.uleb128 0x17
	.long	.LBB56
	.long	.LBE56
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x4b
	.long	0x30
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.byte	0x55
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x355
	.uleb128 0x17
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x5e
	.long	0x30
	.long	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF45
	.byte	0x1
	.byte	0x67
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x550
	.uleb128 0x1a
	.long	.LASF46
	.byte	0x1
	.byte	0x6e
	.long	0x550
	.long	.LLST3
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x73
	.long	0x30
	.long	.LLST4
	.uleb128 0x1a
	.long	.LASF47
	.byte	0x1
	.byte	0x74
	.long	0x30
	.long	.LLST5
	.uleb128 0x1b
	.long	0x213
	.long	.LBB58
	.long	.LBE58
	.byte	0x1
	.byte	0x75
	.long	0x3d2
	.uleb128 0x1c
	.long	0x220
	.long	.LLST6
	.uleb128 0x17
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x1d
	.long	0x22b
	.long	.LLST7
	.uleb128 0x1d
	.long	0x237
	.long	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x213
	.long	.LBB60
	.long	.LBE60
	.byte	0x1
	.byte	0x84
	.long	0x40b
	.uleb128 0x1c
	.long	0x220
	.long	.LLST9
	.uleb128 0x17
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x1d
	.long	0x22b
	.long	.LLST10
	.uleb128 0x1d
	.long	0x237
	.long	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x213
	.long	.LBB62
	.long	.LBE62
	.byte	0x1
	.byte	0x89
	.long	0x444
	.uleb128 0x1c
	.long	0x220
	.long	.LLST12
	.uleb128 0x17
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x1d
	.long	0x22b
	.long	.LLST13
	.uleb128 0x1d
	.long	0x237
	.long	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x213
	.long	.LBB64
	.long	.LBE64
	.byte	0x1
	.byte	0x8b
	.long	0x47d
	.uleb128 0x1c
	.long	0x220
	.long	.LLST15
	.uleb128 0x17
	.long	.LBB65
	.long	.LBE65
	.uleb128 0x1d
	.long	0x22b
	.long	.LLST16
	.uleb128 0x1d
	.long	0x237
	.long	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x213
	.long	.LBB66
	.long	.LBE66
	.byte	0x1
	.byte	0x98
	.long	0x4b6
	.uleb128 0x1c
	.long	0x220
	.long	.LLST18
	.uleb128 0x17
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x1d
	.long	0x22b
	.long	.LLST19
	.uleb128 0x1d
	.long	0x237
	.long	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x213
	.long	.LBB68
	.long	.LBE68
	.byte	0x1
	.byte	0xa2
	.long	0x4ef
	.uleb128 0x1c
	.long	0x220
	.long	.LLST21
	.uleb128 0x17
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x1d
	.long	0x22b
	.long	.LLST22
	.uleb128 0x1d
	.long	0x237
	.long	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x213
	.long	.LBB70
	.long	.LBE70
	.byte	0x1
	.byte	0xba
	.long	0x528
	.uleb128 0x1c
	.long	0x220
	.long	.LLST24
	.uleb128 0x17
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x1d
	.long	0x22b
	.long	.LLST25
	.uleb128 0x1d
	.long	0x237
	.long	.LLST26
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LVL10
	.long	0xf58
	.uleb128 0x1f
	.long	.LVL11
	.long	0xf65
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x20
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.uleb128 0x20
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
	.uleb128 0xc
	.byte	0x2
	.long	0x1c6
	.uleb128 0x21
	.byte	0x1
	.long	.LASF116
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.long	0x62
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x761
	.uleb128 0x22
	.long	.LASF63
	.byte	0x1
	.byte	0xc8
	.long	0x30
	.long	.LLST27
	.uleb128 0x1a
	.long	.LASF48
	.byte	0x1
	.byte	0xc9
	.long	0x62
	.long	.LLST28
	.uleb128 0x23
	.long	.LASF49
	.byte	0x1
	.byte	0xce
	.long	0x30
	.uleb128 0x24
	.long	.LBB72
	.long	.LBE72
	.long	0x652
	.uleb128 0x1a
	.long	.LASF50
	.byte	0x1
	.byte	0xd4
	.long	0x30
	.long	.LLST29
	.uleb128 0x25
	.long	.Ldebug_ranges0+0
	.uleb128 0x1a
	.long	.LASF51
	.byte	0x1
	.byte	0xd5
	.long	0x30
	.long	.LLST30
	.uleb128 0x25
	.long	.Ldebug_ranges0+0
	.uleb128 0x1a
	.long	.LASF52
	.byte	0x1
	.byte	0xd6
	.long	0x30
	.long	.LLST31
	.uleb128 0x1b
	.long	0x213
	.long	.LBB75
	.long	.LBE75
	.byte	0x1
	.byte	0xd9
	.long	0x61a
	.uleb128 0x1c
	.long	0x220
	.long	.LLST32
	.uleb128 0x17
	.long	.LBB76
	.long	.LBE76
	.uleb128 0x1d
	.long	0x22b
	.long	.LLST33
	.uleb128 0x1d
	.long	0x237
	.long	.LLST34
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x213
	.long	.LBB77
	.long	.LBE77
	.byte	0x1
	.byte	0xdb
	.uleb128 0x1c
	.long	0x220
	.long	.LLST35
	.uleb128 0x17
	.long	.LBB78
	.long	.LBE78
	.uleb128 0x1d
	.long	0x22b
	.long	.LLST36
	.uleb128 0x1d
	.long	0x237
	.long	.LLST37
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LBB81
	.long	.LBE81
	.long	0x6db
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xe0
	.long	0x30
	.long	.LLST38
	.uleb128 0x1b
	.long	0x213
	.long	.LBB82
	.long	.LBE82
	.byte	0x1
	.byte	0xe1
	.long	0x6a5
	.uleb128 0x1c
	.long	0x220
	.long	.LLST39
	.uleb128 0x17
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x1d
	.long	0x22b
	.long	.LLST40
	.uleb128 0x1d
	.long	0x237
	.long	.LLST41
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x213
	.long	.LBB84
	.long	.LBE84
	.byte	0x1
	.byte	0xe3
	.uleb128 0x1c
	.long	0x220
	.long	.LLST42
	.uleb128 0x17
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x1d
	.long	0x22b
	.long	.LLST43
	.uleb128 0x1d
	.long	0x237
	.long	.LLST44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LBB86
	.long	.LBE86
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xe9
	.long	0x30
	.long	.LLST45
	.uleb128 0x1b
	.long	0x213
	.long	.LBB87
	.long	.LBE87
	.byte	0x1
	.byte	0xeb
	.long	0x72a
	.uleb128 0x1c
	.long	0x220
	.long	.LLST46
	.uleb128 0x17
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x1d
	.long	0x22b
	.long	.LLST47
	.uleb128 0x1d
	.long	0x237
	.long	.LLST48
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x213
	.long	.LBB89
	.long	.LBE89
	.byte	0x1
	.byte	0xf0
	.uleb128 0x1c
	.long	0x220
	.long	.LLST49
	.uleb128 0x17
	.long	.LBB90
	.long	.LBE90
	.uleb128 0x1d
	.long	0x22b
	.long	.LLST50
	.uleb128 0x1d
	.long	0x237
	.long	.LLST51
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF53
	.byte	0x1
	.byte	0xf9
	.long	.LFB23
	.long	.LFE23
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x79d
	.uleb128 0x1a
	.long	.LASF46
	.byte	0x1
	.byte	0xfb
	.long	0x550
	.long	.LLST52
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xfd
	.long	0x30
	.long	.LLST53
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF61
	.byte	0x1
	.word	0x106
	.long	0x30
	.long	.LFB24
	.long	.LFE24
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x7f0
	.uleb128 0x28
	.long	.LASF48
	.byte	0x1
	.word	0x10a
	.long	0x30
	.long	.LLST54
	.uleb128 0x28
	.long	.LASF46
	.byte	0x1
	.word	0x10b
	.long	0x550
	.long	.LLST55
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.word	0x10f
	.long	0x30
	.long	.LLST56
	.byte	0
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.word	0x118
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.word	0x125
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x875
	.uleb128 0x17
	.long	.LBB95
	.long	.LBE95
	.uleb128 0x28
	.long	.LASF57
	.byte	0x1
	.word	0x128
	.long	0x30
	.long	.LLST57
	.uleb128 0x28
	.long	.LASF58
	.byte	0x1
	.word	0x128
	.long	0x30
	.long	.LLST58
	.uleb128 0x2c
	.long	0x281
	.long	.LBB96
	.long	.LBE96
	.byte	0x1
	.word	0x128
	.uleb128 0x2d
	.long	0x28e
	.long	.LBB98
	.long	.LBE98
	.byte	0x1
	.word	0x128
	.uleb128 0x1c
	.long	0x29b
	.long	.LLST59
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF59
	.byte	0x1
	.word	0x12b
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x984
	.uleb128 0x24
	.long	.LBB100
	.long	.LBE100
	.long	0x8e7
	.uleb128 0x28
	.long	.LASF57
	.byte	0x1
	.word	0x133
	.long	0x30
	.long	.LLST60
	.uleb128 0x28
	.long	.LASF58
	.byte	0x1
	.word	0x133
	.long	0x30
	.long	.LLST61
	.uleb128 0x2c
	.long	0x281
	.long	.LBB101
	.long	.LBE101
	.byte	0x1
	.word	0x133
	.uleb128 0x2d
	.long	0x28e
	.long	.LBB103
	.long	.LBE103
	.byte	0x1
	.word	0x133
	.uleb128 0x1c
	.long	0x29b
	.long	.LLST62
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LBB105
	.long	.LBE105
	.long	0x93f
	.uleb128 0x28
	.long	.LASF57
	.byte	0x1
	.word	0x136
	.long	0x30
	.long	.LLST63
	.uleb128 0x28
	.long	.LASF58
	.byte	0x1
	.word	0x136
	.long	0x30
	.long	.LLST64
	.uleb128 0x2c
	.long	0x281
	.long	.LBB106
	.long	.LBE106
	.byte	0x1
	.word	0x136
	.uleb128 0x2d
	.long	0x28e
	.long	.LBB108
	.long	.LBE108
	.byte	0x1
	.word	0x136
	.uleb128 0x1c
	.long	0x29b
	.long	.LLST65
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LBB110
	.long	.LBE110
	.long	0x97a
	.uleb128 0x28
	.long	.LASF60
	.byte	0x1
	.word	0x139
	.long	0x30
	.long	.LLST66
	.uleb128 0x1e
	.long	.LVL107
	.long	0x79d
	.uleb128 0x1f
	.long	.LVL111
	.long	0xf65
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x35
	.uleb128 0x20
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LVL90
	.long	0x79d
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.word	0x1e5
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x9c6
	.uleb128 0x2f
	.long	.LASF64
	.byte	0x1
	.word	0x1e5
	.long	0x30
	.byte	0x1
	.byte	0x68
	.uleb128 0x17
	.long	.LBB111
	.long	.LBE111
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.word	0x1e7
	.long	0x30
	.long	.LLST67
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF70
	.byte	0x1
	.word	0x17d
	.byte	0x3
	.long	0xa14
	.uleb128 0x10
	.long	.LASF65
	.byte	0x1
	.word	0x1d9
	.long	0x30
	.uleb128 0x31
	.uleb128 0x10
	.long	.LASF66
	.byte	0x1
	.word	0x181
	.long	0x30
	.uleb128 0x10
	.long	.LASF67
	.byte	0x1
	.word	0x183
	.long	0x30
	.uleb128 0x31
	.uleb128 0x10
	.long	.LASF68
	.byte	0x1
	.word	0x187
	.long	0x30
	.uleb128 0x10
	.long	.LASF69
	.byte	0x1
	.word	0x19f
	.long	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF71
	.byte	0x1
	.word	0x22d
	.byte	0x3
	.long	0xa44
	.uleb128 0x10
	.long	.LASF72
	.byte	0x1
	.word	0x22e
	.long	0x550
	.uleb128 0x10
	.long	.LASF73
	.byte	0x1
	.word	0x232
	.long	0x30
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.word	0x233
	.long	0x30
	.byte	0
	.uleb128 0x30
	.long	.LASF74
	.byte	0x1
	.word	0x158
	.byte	0x3
	.long	0xa84
	.uleb128 0x10
	.long	.LASF75
	.byte	0x1
	.word	0x159
	.long	0xa84
	.uleb128 0x10
	.long	.LASF76
	.byte	0x1
	.word	0x167
	.long	0x201
	.uleb128 0x31
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.word	0x15b
	.long	0x30
	.uleb128 0x31
	.uleb128 0x10
	.long	.LASF77
	.byte	0x1
	.word	0x15d
	.long	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0xe8
	.uleb128 0x30
	.long	.LASF78
	.byte	0x1
	.word	0x1f2
	.byte	0x3
	.long	0xb14
	.uleb128 0x10
	.long	.LASF72
	.byte	0x1
	.word	0x1f3
	.long	0x550
	.uleb128 0x10
	.long	.LASF79
	.byte	0x1
	.word	0x1f6
	.long	0x30
	.uleb128 0x31
	.uleb128 0x10
	.long	.LASF80
	.byte	0x1
	.word	0x1f7
	.long	0x30
	.uleb128 0x31
	.uleb128 0x10
	.long	.LASF81
	.byte	0x1
	.word	0x1f9
	.long	0xb8
	.uleb128 0x10
	.long	.LASF82
	.byte	0x1
	.word	0x209
	.long	0x30
	.uleb128 0x10
	.long	.LASF83
	.byte	0x1
	.word	0x20a
	.long	0x30
	.uleb128 0x10
	.long	.LASF84
	.byte	0x1
	.word	0x20b
	.long	0x201
	.uleb128 0x10
	.long	.LASF85
	.byte	0x1
	.word	0x216
	.long	0x30
	.uleb128 0x10
	.long	.LASF86
	.byte	0x1
	.word	0x217
	.long	0x30
	.uleb128 0x10
	.long	.LASF87
	.byte	0x1
	.word	0x21a
	.long	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.long	.LASF88
	.byte	0x1
	.word	0x24d
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST68
	.byte	0x1
	.long	0xd6c
	.uleb128 0x34
	.long	0x9c6
	.long	.LBB130
	.long	.LBE130
	.byte	0x1
	.word	0x254
	.long	0xc19
	.uleb128 0x17
	.long	.LBB131
	.long	.LBE131
	.uleb128 0x1d
	.long	0x9d3
	.long	.LLST69
	.uleb128 0x17
	.long	.LBB132
	.long	.LBE132
	.uleb128 0x1d
	.long	0x9e0
	.long	.LLST70
	.uleb128 0x1d
	.long	0x9ec
	.long	.LLST71
	.uleb128 0x34
	.long	0x256
	.long	.LBB133
	.long	.LBE133
	.byte	0x1
	.word	0x185
	.long	0xb97
	.uleb128 0x1c
	.long	0x274
	.long	.LLST72
	.uleb128 0x1c
	.long	0x268
	.long	.LLST73
	.byte	0
	.uleb128 0x17
	.long	.LBB135
	.long	.LBE135
	.uleb128 0x1d
	.long	0x9f9
	.long	.LLST74
	.uleb128 0x1d
	.long	0xa05
	.long	.LLST75
	.uleb128 0x35
	.long	.LVL124
	.long	0xf72
	.long	0xbc6
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.long	.LVL126
	.long	0xf72
	.long	0xbda
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.long	.LVL128
	.long	0xf72
	.long	0xbf1
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x9
	.byte	0x80
	.byte	0x21
	.byte	0
	.uleb128 0x35
	.long	.LVL129
	.long	0xf72
	.long	0xc05
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL130
	.long	0xf72
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	0xa14
	.long	.LBB136
	.long	.LBE136
	.byte	0x1
	.word	0x256
	.long	0xc89
	.uleb128 0x17
	.long	.LBB137
	.long	.LBE137
	.uleb128 0x1d
	.long	0xa21
	.long	.LLST76
	.uleb128 0x1d
	.long	0xa2d
	.long	.LLST77
	.uleb128 0x1d
	.long	0xa39
	.long	.LLST78
	.uleb128 0x2d
	.long	0x213
	.long	.LBB138
	.long	.LBE138
	.byte	0x1
	.word	0x234
	.uleb128 0x1c
	.long	0x220
	.long	.LLST79
	.uleb128 0x17
	.long	.LBB139
	.long	.LBE139
	.uleb128 0x1d
	.long	0x22b
	.long	.LLST80
	.uleb128 0x1d
	.long	0x237
	.long	.LLST81
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	0xa44
	.long	.LBB140
	.long	.LBE140
	.byte	0x1
	.word	0x259
	.long	0xcd8
	.uleb128 0x17
	.long	.LBB141
	.long	.LBE141
	.uleb128 0x1d
	.long	0xa51
	.long	.LLST82
	.uleb128 0x36
	.long	0xa5d
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x1d
	.long	0xa6a
	.long	.LLST83
	.uleb128 0x17
	.long	.LBB143
	.long	.LBE143
	.uleb128 0x1d
	.long	0xa75
	.long	.LLST84
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0xa8a
	.long	.LBB145
	.long	.LBE145
	.byte	0x1
	.word	0x25b
	.uleb128 0x17
	.long	.LBB146
	.long	.LBE146
	.uleb128 0x1d
	.long	0xa97
	.long	.LLST85
	.uleb128 0x1d
	.long	0xaa3
	.long	.LLST86
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x1d
	.long	0xab0
	.long	.LLST87
	.uleb128 0x17
	.long	.LBB148
	.long	.LBE148
	.uleb128 0x36
	.long	0xabd
	.uleb128 0x1d
	.long	0xac9
	.long	.LLST88
	.uleb128 0x1d
	.long	0xad5
	.long	.LLST89
	.uleb128 0x1d
	.long	0xae1
	.long	.LLST90
	.uleb128 0x1d
	.long	0xaed
	.long	.LLST91
	.uleb128 0x1d
	.long	0xaf9
	.long	.LLST92
	.uleb128 0x1d
	.long	0xb05
	.long	.LLST93
	.uleb128 0x1e
	.long	.LVL174
	.long	0xf7f
	.uleb128 0x1e
	.long	.LVL178
	.long	0xf7f
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF89
	.byte	0x1
	.word	0x265
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xda8
	.uleb128 0x37
	.long	.LASF52
	.byte	0x1
	.word	0x265
	.long	0x30
	.long	.LLST94
	.uleb128 0x37
	.long	.LASF90
	.byte	0x1
	.word	0x265
	.long	0x30
	.long	.LLST95
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF91
	.byte	0x1
	.word	0x269
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xde4
	.uleb128 0x37
	.long	.LASF52
	.byte	0x1
	.word	0x269
	.long	0x30
	.long	.LLST96
	.uleb128 0x37
	.long	.LASF90
	.byte	0x1
	.word	0x269
	.long	0x30
	.long	.LLST97
	.byte	0
	.uleb128 0x38
	.long	.LASF92
	.byte	0x1
	.byte	0x1b
	.long	0x30
	.byte	0x5
	.byte	0x3
	.long	adcNr
	.uleb128 0x39
	.long	.LASF93
	.byte	0x5
	.byte	0x4a
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.long	0xe12
	.long	0xe12
	.uleb128 0x6
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x3a
	.long	0x30
	.uleb128 0x3b
	.long	.LASF94
	.byte	0x1
	.byte	0x17
	.long	0xe29
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	time_Uptime
	.uleb128 0x3a
	.long	0xe02
	.uleb128 0x5
	.long	0xe3e
	.long	0xe3e
	.uleb128 0x6
	.long	0x82
	.byte	0x8
	.byte	0
	.uleb128 0x3a
	.long	0xe8
	.uleb128 0x3b
	.long	.LASF95
	.byte	0x1
	.byte	0x16
	.long	0xe55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	swTimer
	.uleb128 0x3a
	.long	0xe2e
	.uleb128 0x3b
	.long	.LASF96
	.byte	0x1
	.byte	0x18
	.long	0xe12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	time_UpTimeUpdated
	.uleb128 0x5
	.long	0xe7c
	.long	0xe7c
	.uleb128 0x6
	.long	0x82
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x142
	.uleb128 0x3b
	.long	.LASF97
	.byte	0x1
	.byte	0x1c
	.long	0xe93
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	adcKeys
	.uleb128 0x3a
	.long	0xe6c
	.uleb128 0x5
	.long	0x30
	.long	0xea8
	.uleb128 0x6
	.long	0x82
	.byte	0x5
	.byte	0
	.uleb128 0x3b
	.long	.LASF98
	.byte	0x1
	.byte	0x1d
	.long	0xe98
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	keyWants
	.uleb128 0x5
	.long	0x1c6
	.long	0xeca
	.uleb128 0x6
	.long	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x3b
	.long	.LASF99
	.byte	0x1
	.byte	0x20
	.long	0xeba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pipe
	.uleb128 0x3b
	.long	.LASF100
	.byte	0x1
	.byte	0x25
	.long	0xe12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pipeProcessing
	.uleb128 0x3b
	.long	.LASF101
	.byte	0x1
	.byte	0x21
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pipe_ModuleTested
	.uleb128 0x3b
	.long	.LASF102
	.byte	0x1
	.byte	0x22
	.long	0x1f6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pipe_Module
	.uleb128 0x3b
	.long	.LASF103
	.byte	0x1
	.byte	0x26
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pipe_PowerStatus
	.uleb128 0x5
	.long	0x30
	.long	0xf34
	.uleb128 0x6
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x3b
	.long	.LASF104
	.byte	0x7
	.byte	0xaf
	.long	0xf24
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x3b
	.long	.LASF105
	.byte	0x1
	.byte	0x15
	.long	0xe12
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	msecCtr
	.uleb128 0x3c
	.byte	0x1
	.byte	0x1
	.long	.LASF106
	.long	.LASF106
	.byte	0x8
	.byte	0x22
	.uleb128 0x3c
	.byte	0x1
	.byte	0x1
	.long	.LASF107
	.long	.LASF107
	.byte	0x9
	.byte	0x32
	.uleb128 0x3c
	.byte	0x1
	.byte	0x1
	.long	.LASF108
	.long	.LASF108
	.byte	0x5
	.byte	0x10
	.uleb128 0x3c
	.byte	0x1
	.byte	0x1
	.long	.LASF109
	.long	.LASF109
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x5
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.long	.LVL3
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL5
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL5
	.long	.LFE19
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST2:
	.long	.LVL7
	.long	.LVL8
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL8
	.long	.LFE20
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST3:
	.long	.LVL37
	.long	.LFE21
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST4:
	.long	.LVL13
	.long	.LVL15
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	.LVL15
	.long	.LVL21
	.word	0x1
	.byte	0x69
	.long	.LVL22
	.long	.LVL28
	.word	0x1
	.byte	0x69
	.long	.LVL28
	.long	.LVL29
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	.LVL29
	.long	.LVL35
	.word	0x1
	.byte	0x69
	.long	.LVL35
	.long	.LVL37
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	.LVL37
	.long	.LFE21
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST5:
	.long	.LVL16
	.long	.LVL17
	.word	0x1
	.byte	0x68
	.long	.LVL17
	.long	.LVL29
	.word	0x5
	.byte	0x3
	.long	pipe+255
	.long	.LVL30
	.long	.LVL31
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST6:
	.long	.LVL13
	.long	.LVL14
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST7:
	.long	.LVL13
	.long	.LVL14
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST8:
	.long	.LVL13
	.long	.LVL14
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL18
	.long	.LVL19
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST10:
	.long	.LVL18
	.long	.LVL19
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST11:
	.long	.LVL18
	.long	.LVL19
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL23
	.long	.LVL24
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST13:
	.long	.LVL23
	.long	.LVL24
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST14:
	.long	.LVL23
	.long	.LVL24
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL25
	.long	.LVL26
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST16:
	.long	.LVL25
	.long	.LVL26
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST17:
	.long	.LVL25
	.long	.LVL26
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL32
	.long	.LVL33
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST19:
	.long	.LVL32
	.long	.LVL33
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST20:
	.long	.LVL32
	.long	.LVL33
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL35
	.long	.LVL36
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST22:
	.long	.LVL35
	.long	.LVL36
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST23:
	.long	.LVL35
	.long	.LVL36
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL40
	.long	.LVL41
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST25:
	.long	.LVL40
	.long	.LVL41
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST26:
	.long	.LVL40
	.long	.LVL41
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL42
	.long	.LVL44
	.word	0x1
	.byte	0x68
	.long	.LVL44
	.long	.LVL69
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL69
	.long	.LVL70
	.word	0x1
	.byte	0x68
	.long	.LVL70
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL62
	.long	.LVL69
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
.LLST29:
	.long	.LVL45
	.long	.LVL46
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL46
	.long	.LVL61
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST30:
	.long	.LVL46
	.long	.LVL52
	.word	0x1
	.byte	0x62
	.long	.LVL53
	.long	.LVL54
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST31:
	.long	.LVL46
	.long	.LVL52
	.word	0x1
	.byte	0x69
	.long	.LVL53
	.long	.LVL54
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST32:
	.long	.LVL47
	.long	.LVL48
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST33:
	.long	.LVL47
	.long	.LVL48
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST34:
	.long	.LVL47
	.long	.LVL48
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL49
	.long	.LVL50
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST36:
	.long	.LVL49
	.long	.LVL50
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST37:
	.long	.LVL49
	.long	.LVL50
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL55
	.long	.LVL60
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST39:
	.long	.LVL55
	.long	.LVL56
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST40:
	.long	.LVL55
	.long	.LVL56
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST41:
	.long	.LVL55
	.long	.LVL56
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL57
	.long	.LVL58
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST43:
	.long	.LVL57
	.long	.LVL58
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST44:
	.long	.LVL57
	.long	.LVL58
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL62
	.long	.LVL68
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST46:
	.long	.LVL63
	.long	.LVL64
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST47:
	.long	.LVL63
	.long	.LVL64
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST48:
	.long	.LVL63
	.long	.LVL64
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST49:
	.long	.LVL65
	.long	.LVL66
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST50:
	.long	.LVL65
	.long	.LVL66
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST51:
	.long	.LVL65
	.long	.LVL66
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST52:
	.long	.LVL72
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
.LLST53:
	.long	.LVL71
	.long	.LVL72
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL72
	.long	.LVL75
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST54:
	.long	.LVL76
	.long	.LVL77
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL77
	.long	.LVL82
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST55:
	.long	.LVL77
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
.LLST56:
	.long	.LVL76
	.long	.LVL77
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL77
	.long	.LVL81
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST57:
	.long	.LVL83
	.long	.LVL89
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST58:
	.long	.LVL84
	.long	.LVL85
	.word	0x1
	.byte	0x68
	.long	.LVL86
	.long	.LVL87
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL87
	.long	.LFE26
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST59:
	.long	.LVL88
	.long	.LVL89
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2089
	.sleb128 0
	.long	0
	.long	0
.LLST60:
	.long	.LVL91
	.long	.LVL97
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST61:
	.long	.LVL92
	.long	.LVL93
	.word	0x1
	.byte	0x68
	.long	.LVL94
	.long	.LVL95
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL95
	.long	.LVL98
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST62:
	.long	.LVL96
	.long	.LVL97
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2204
	.sleb128 0
	.long	0
	.long	0
.LLST63:
	.long	.LVL99
	.long	.LVL105
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST64:
	.long	.LVL100
	.long	.LVL101
	.word	0x1
	.byte	0x68
	.long	.LVL102
	.long	.LVL103
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL103
	.long	.LVL106
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST65:
	.long	.LVL104
	.long	.LVL105
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2292
	.sleb128 0
	.long	0
	.long	0
.LLST66:
	.long	.LVL107
	.long	.LVL108
	.word	0x1
	.byte	0x68
	.long	.LVL109
	.long	.LVL110
	.word	0x1
	.byte	0x68
	.long	.LVL110
	.long	.LVL111-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST67:
	.long	.LVL112
	.long	.LVL113
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL113
	.long	.LFE31
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST68:
	.long	.LFB34
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
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 19
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 20
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 21
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 22
	.long	.LCFI19
	.long	.LFE34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 23
	.long	0
	.long	0
.LLST69:
	.long	.LVL131
	.long	.LVL132
	.word	0x1
	.byte	0x68
	.long	.LVL133
	.long	.LVL134
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST70:
	.long	.LVL115
	.long	.LVL118
	.word	0x1
	.byte	0x69
	.long	.LVL119
	.long	.LVL120
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST71:
	.long	.LVL116
	.long	.LVL124-1
	.word	0x1
	.byte	0x64
	.long	.LVL125
	.long	.LVL126-1
	.word	0x1
	.byte	0x64
	.long	.LVL127
	.long	.LVL128-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST72:
	.long	.LVL117
	.long	.LVL120
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST73:
	.long	.LVL117
	.long	.LVL118
	.word	0x1
	.byte	0x69
	.long	.LVL119
	.long	.LVL120
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST74:
	.long	.LVL121
	.long	.LVL130
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST75:
	.long	.LVL122
	.long	.LVL130
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST76:
	.long	.LVL138
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
.LLST77:
	.long	.LVL136
	.long	.LVL141
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST78:
	.long	.LVL136
	.long	.LVL138
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	.LVL138
	.long	.LVL141
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST79:
	.long	.LVL136
	.long	.LVL137
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST80:
	.long	.LVL136
	.long	.LVL137
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST81:
	.long	.LVL136
	.long	.LVL137
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST82:
	.long	.LVL141
	.long	.LVL148
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL149
	.long	.LVL151
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST83:
	.long	.LVL141
	.long	.LVL148
	.word	0x1
	.byte	0x69
	.long	.LVL149
	.long	.LVL155
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST84:
	.long	.LVL142
	.long	.LVL143
	.word	0x1
	.byte	0x62
	.long	.LVL143
	.long	.LVL144
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL144
	.long	.LVL145
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST85:
	.long	.LVL158
	.long	.LVL181
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST86:
	.long	.LVL157
	.long	.LVL181
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST87:
	.long	.LVL157
	.long	.LVL158
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL158
	.long	.LVL181
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST88:
	.long	.LVL158
	.long	.LVL159
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL159
	.long	.LVL160
	.word	0x1
	.byte	0x6c
	.long	.LVL160
	.long	.LVL173
	.word	0x1
	.byte	0x69
	.long	.LVL173
	.long	.LVL174-1
	.word	0x17
	.byte	0x80
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x80
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x1a
	.byte	0x80
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x1a
	.byte	0x82
	.sleb128 0
	.byte	0x1a
	.byte	0x80
	.sleb128 6
	.byte	0x94
	.byte	0x1
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST89:
	.long	.LVL158
	.long	.LVL159
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL159
	.long	.LVL169
	.word	0x1
	.byte	0x6c
	.long	.LVL169
	.long	.LVL171
	.word	0x15
	.byte	0x80
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x80
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x21
	.byte	0x80
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x21
	.byte	0x82
	.sleb128 0
	.byte	0x21
	.byte	0x88
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.long	.LVL171
	.long	.LVL174-1
	.word	0x17
	.byte	0x80
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x80
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x21
	.byte	0x80
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x21
	.byte	0x82
	.sleb128 0
	.byte	0x21
	.byte	0x80
	.sleb128 6
	.byte	0x94
	.byte	0x1
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
.LLST90:
	.long	.LVL158
	.long	.LVL159
	.word	0x3
	.byte	0x80
	.sleb128 2
	.byte	0x9f
	.long	.LVL159
	.long	.LVL160
	.word	0x3
	.byte	0x80
	.sleb128 3
	.byte	0x9f
	.long	.LVL160
	.long	.LVL162
	.word	0x3
	.byte	0x80
	.sleb128 4
	.byte	0x9f
	.long	.LVL162
	.long	.LVL164
	.word	0x3
	.byte	0x80
	.sleb128 5
	.byte	0x9f
	.long	.LVL164
	.long	.LVL166
	.word	0x3
	.byte	0x80
	.sleb128 6
	.byte	0x9f
	.long	.LVL166
	.long	.LVL179
	.word	0x3
	.byte	0x80
	.sleb128 7
	.byte	0x9f
	.long	.LVL179
	.long	.LVL180
	.word	0x3
	.byte	0x80
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST91:
	.long	.LVL168
	.long	.LVL180
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST92:
	.long	.LVL170
	.long	.LVL175
	.word	0x1
	.byte	0x6c
	.long	.LVL175
	.long	.LVL176
	.word	0x4
	.byte	0x8c
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST93:
	.long	.LVL172
	.long	.LVL174-1
	.word	0x1
	.byte	0x68
	.long	.LVL174-1
	.long	.LVL175
	.word	0xa
	.byte	0x8d
	.sleb128 0
	.byte	0x20
	.byte	0x8c
	.sleb128 0
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.long	.LVL175
	.long	.LVL176
	.word	0xb
	.byte	0x8d
	.sleb128 0
	.byte	0x20
	.byte	0x8c
	.sleb128 0
	.byte	0x20
	.byte	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.long	.LVL177
	.long	.LVL178-1
	.word	0x1
	.byte	0x68
	.long	.LVL178-1
	.long	.LVL180
	.word	0x6
	.byte	0x8c
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST94:
	.long	.LVL182
	.long	.LVL184
	.word	0x1
	.byte	0x68
	.long	.LVL184
	.long	.LFE35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST95:
	.long	.LVL182
	.long	.LVL183
	.word	0x1
	.byte	0x66
	.long	.LVL183
	.long	.LVL185
	.word	0x4
	.byte	0x86
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL185
	.long	.LFE35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST96:
	.long	.LVL186
	.long	.LVL187
	.word	0x1
	.byte	0x68
	.long	.LVL187
	.long	.LFE36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST97:
	.long	.LVL186
	.long	.LVL188
	.word	0x1
	.byte	0x66
	.long	.LVL188
	.long	.LFE36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x8c
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
	.long	.LFB31
	.long	.LFE31-.LFB31
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
	.long	.LBB73
	.long	.LBE73
	.long	.LBB80
	.long	.LBE80
	.long	0
	.long	0
	.long	.LBB91
	.long	.LBE91
	.long	.LBB92
	.long	.LBE92
	.long	0
	.long	0
	.long	.LBB93
	.long	.LBE93
	.long	.LBB94
	.long	.LBE94
	.long	0
	.long	0
	.long	.LBB142
	.long	.LBE142
	.long	.LBB144
	.long	.LBE144
	.long	0
	.long	0
	.long	.LBB147
	.long	.LBE147
	.long	.LBB149
	.long	.LBE149
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
	.long	.LFB31
	.long	.LFE31
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
.LASF52:
	.string	"bitNr"
.LASF115:
	.string	"__iCliRetVal"
.LASF44:
	.string	"init_Pipe"
.LASF69:
	.string	"oldKey"
.LASF88:
	.string	"__vector_21"
.LASF17:
	.string	"ADCval"
.LASF91:
	.string	"pipe_off"
.LASF9:
	.string	"long long unsigned int"
.LASF40:
	.string	"_delay_us"
.LASF99:
	.string	"pipe"
.LASF12:
	.string	"message8"
.LASF72:
	.string	"curPipe"
.LASF57:
	.string	"sreg_save"
.LASF83:
	.string	"newOffState"
.LASF51:
	.string	"testByte"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF100:
	.string	"pipeProcessing"
.LASF76:
	.string	"pTime"
.LASF110:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF73:
	.string	"local_pipe_ModuleAssnWrite"
.LASF5:
	.string	"long int"
.LASF103:
	.string	"pipe_PowerStatus"
.LASF101:
	.string	"pipe_ModuleTested"
.LASF43:
	.string	"init_ADC"
.LASF3:
	.string	"uint16_t"
.LASF36:
	.string	"double"
.LASF104:
	.string	"lcdData"
.LASF111:
	.string	".././hwtimer.c"
.LASF49:
	.string	"modulePattern"
.LASF75:
	.string	"mytimer"
.LASF60:
	.string	"testResult"
.LASF89:
	.string	"pipe_on"
.LASF42:
	.string	"init_Timers"
.LASF34:
	.string	"__tmp"
.LASF26:
	.string	"pipeInM4"
.LASF25:
	.string	"pipeInM8"
.LASF74:
	.string	"timerTimers"
.LASF4:
	.string	"unsigned int"
.LASF55:
	.string	"module_WaitOutputInput2Cycles"
.LASF7:
	.string	"long unsigned int"
.LASF80:
	.string	"shiftBitNr"
.LASF20:
	.string	"KeyInfo"
.LASF87:
	.string	"statChange"
.LASF66:
	.string	"oldADC"
.LASF19:
	.string	"keyTimer"
.LASF18:
	.string	"keyRepeating"
.LASF54:
	.string	"init_HwTimer"
.LASF116:
	.string	"test_PipeModule"
.LASF56:
	.string	"module_StartPowerOn"
.LASF32:
	.string	"Pipe_Module_t"
.LASF71:
	.string	"timerPipeIO"
.LASF68:
	.string	"newKey"
.LASF13:
	.string	"PipeMessage_t"
.LASF37:
	.string	"__us"
.LASF77:
	.string	"newPrescaler"
.LASF85:
	.string	"oldPipeStat"
.LASF16:
	.string	"Timer"
.LASF10:
	.string	"sizetype"
.LASF38:
	.string	"data1"
.LASF39:
	.string	"data2"
.LASF78:
	.string	"timerPipeProcess"
.LASF58:
	.string	"__ToDo"
.LASF29:
	.string	"Pipe_t"
.LASF27:
	.string	"pipeIn"
.LASF79:
	.string	"local_pipe_ModuleAssnRead"
.LASF61:
	.string	"module_TestAllInputs"
.LASF21:
	.string	"pipeOutM4"
.LASF62:
	.string	"softKey_WantLong"
.LASF94:
	.string	"time_Uptime"
.LASF28:
	.string	"pipeInStat"
.LASF15:
	.string	"prescaler"
.LASF65:
	.string	"newMux"
.LASF112:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF53:
	.string	"Pipes_AllOutputsOff"
.LASF113:
	.string	"__builtin_avr_delay_cycles"
.LASF1:
	.string	"unsigned char"
.LASF107:
	.string	"log_putError"
.LASF14:
	.string	"counter"
.LASF109:
	.string	"pipeMsgPush"
.LASF47:
	.string	"pipeInput"
.LASF82:
	.string	"newOnState"
.LASF84:
	.string	"pInByte"
.LASF114:
	.string	"absDifference"
.LASF50:
	.string	"byteCount"
.LASF63:
	.string	"moduleNr"
.LASF90:
	.string	"moduleMask"
.LASF6:
	.string	"uint32_t"
.LASF93:
	.string	"msgPipe_Handling"
.LASF33:
	.string	"char"
.LASF81:
	.string	"myMessage"
.LASF67:
	.string	"newADC"
.LASF45:
	.string	"init_PipeModules"
.LASF35:
	.string	"__ticks_dc"
.LASF41:
	.string	"__iRestore"
.LASF106:
	.string	"eeprom_ReadModules"
.LASF59:
	.string	"module_PowerControl"
.LASF30:
	.string	"AssnRead"
.LASF86:
	.string	"newPipeStat"
.LASF95:
	.string	"swTimer"
.LASF64:
	.string	"wantLong"
.LASF102:
	.string	"pipe_Module"
.LASF96:
	.string	"time_UpTimeUpdated"
.LASF70:
	.string	"timerADC"
.LASF105:
	.string	"msecCtr"
.LASF11:
	.string	"Message16"
.LASF2:
	.string	"uint8_t"
.LASF24:
	.string	"pipeInM12"
.LASF23:
	.string	"pipeInM16"
.LASF31:
	.string	"AssnWrite"
.LASF98:
	.string	"keyWants"
.LASF97:
	.string	"adcKeys"
.LASF22:
	.string	"pipeOut"
.LASF48:
	.string	"result"
.LASF46:
	.string	"pPipe"
.LASF108:
	.string	"message_push"
.LASF92:
	.string	"adcNr"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_clear_bss
