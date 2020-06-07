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
	cpi r24,lo8(10)
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
	rjmp .L23
	ldi r24,lo8(85)
	rjmp .L15
.L23:
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
	rjmp .L24
	ldi r24,lo8(-86)
	rjmp .L19
.L24:
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
	.loc 1 192 0
	ldi r30,lo8(pipe_Module)
	ldi r31,hi8(pipe_Module)
.LVL42:
	ldd r24,Z+1
	ld r20,Z
	or r24,r20
	lds r25,pipe_ModuleTested
.LVL43:
	cp r24,r25
	breq .L13
	.loc 1 194 0
	ldi r21,0
	mov r21,r20
	clr r20
	or r20,r25
	ldi r22,0
	ldi r24,lo8(2)
	call log_putError
.LVL44:
.L13:
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
.LVL45:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 202 0
	cpi r24,lo8(8)
	brlo .+2
	rjmp .L36
	.loc 1 206 0
	ldi r19,lo8(1)
	rjmp 2f
	1:
	lsl r19
	2:
	dec r24
	brpl 1b
.LVL46:
	.loc 1 207 0
	ldi r24,lo8(-128)
.LVL47:
	sts pipeProcessing,r24
	.loc 1 208 0
	in r24,0xb
	andi r24,lo8(127)
	out 0xb,r24
	.loc 1 210 0
	in r24,0x14
	ori r24,lo8(7)
	out 0x14,r24
.LVL48:
.LBB72:
	.loc 1 212 0
	ldi r20,0
	rjmp .L27
.LVL49:
.L29:
.LBB73:
.LBB74:
	.loc 1 215 0
	sbrc r18,0
	rjmp .L37
	.loc 1 215 0 is_stmt 0 discriminator 1
	mov r24,r19
	com r24
	rjmp .L28
.L37:
	.loc 1 215 0
	ldi r24,lo8(-1)
.L28:
	.loc 1 215 0 discriminator 4
	out 0x8,r24
	.loc 1 216 0 is_stmt 1 discriminator 4
	lsr r18
.LVL50:
.LBB75:
.LBB76:
	.loc 2 276 0 discriminator 4
	ldi r24,lo8(2)
1:	dec r24
	brne 1b
	rjmp .
.LVL51:
.LBE76:
.LBE75:
	.loc 1 218 0 discriminator 4
	in r24,0x14
	andi r24,lo8(-2)
	out 0x14,r24
.LVL52:
.LBB77:
.LBB78:
	.loc 2 276 0 discriminator 4
	ldi r24,lo8(2)
1:	dec r24
	brne 1b
	rjmp .
.LVL53:
.LBE78:
.LBE77:
	.loc 1 220 0 discriminator 4
	in r24,0x14
	ori r24,lo8(1)
	out 0x14,r24
	.loc 1 214 0 discriminator 4
	subi r25,lo8(-(1))
.LVL54:
	rjmp .L30
.LVL55:
.L38:
.LBE74:
.LBE73:
	ldi r25,0
	ldi r18,lo8(-91)
.L30:
.LVL56:
.LBB80:
.LBB79:
	.loc 1 214 0 is_stmt 0 discriminator 2
	cpi r25,lo8(8)
	brlo .L29
.LBE79:
.LBE80:
	.loc 1 212 0 is_stmt 1 discriminator 2
	subi r20,lo8(-(1))
.LVL57:
.L27:
	.loc 1 212 0 is_stmt 0 discriminator 1
	cpi r20,lo8(4)
	brlo .L38
	ldi r25,0
	rjmp .L31
.LVL58:
.L32:
.LBE72:
.LBB81:
.LBB82:
.LBB83:
	.loc 2 276 0 is_stmt 1
	ldi r24,lo8(2)
1:	dec r24
	brne 1b
	rjmp .
.LVL59:
.LBE83:
.LBE82:
	.loc 1 226 0
	in r24,0x14
	andi r24,lo8(-2)
	out 0x14,r24
.LVL60:
.LBB84:
.LBB85:
	.loc 2 276 0
	ldi r24,lo8(2)
1:	dec r24
	brne 1b
	rjmp .
.LVL61:
.LBE85:
.LBE84:
	.loc 1 228 0
	in r24,0x14
	ori r24,lo8(1)
	out 0x14,r24
	.loc 1 224 0
	subi r25,lo8(-(1))
.LVL62:
.L31:
	.loc 1 224 0 is_stmt 0 discriminator 1
	cpi r25,lo8(32)
	brlo .L32
	ldi r25,0
.LVL63:
	ldi r20,0
	ldi r21,0
	movw r22,r20
.LVL64:
	rjmp .L33
.LVL65:
.L35:
.LBE81:
.LBB86:
	.loc 1 234 0 is_stmt 1
	lsl r20
	rol r21
	rol r22
	rol r23
.LVL66:
.LBB87:
.LBB88:
	.loc 2 276 0
	ldi r24,lo8(2)
1:	dec r24
	brne 1b
	rjmp .
.LVL67:
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
	breq .L34
	.loc 1 238 0
	ori r20,1
.LVL68:
.L34:
.LBB89:
.LBB90:
	.loc 2 276 0 discriminator 2
	ldi r24,lo8(2)
1:	dec r24
	brne 1b
	rjmp .
.LVL69:
.LBE90:
.LBE89:
	.loc 1 241 0 discriminator 2
	in r24,0x14
	ori r24,lo8(1)
	out 0x14,r24
	.loc 1 233 0 discriminator 2
	subi r25,lo8(-(1))
.LVL70:
.L33:
	.loc 1 233 0 is_stmt 0 discriminator 1
	cpi r25,lo8(32)
	brlo .L35
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
.LVL71:
	rjmp .L26
.LVL72:
.L36:
	.loc 1 204 0
	ldi r19,0
	ldi r18,0
	ldi r24,0
.LVL73:
	ldi r25,0
.L26:
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
.LVL74:
.LBB91:
	.loc 1 253 0
	ldi r24,0
.LBE91:
	.loc 1 251 0
	ldi r30,lo8(pipe)
	ldi r31,hi8(pipe)
.LBB92:
	.loc 1 253 0
	rjmp .L40
.LVL75:
.L41:
	.loc 1 254 0 discriminator 3
	ldi r25,lo8(-1)
	std Z+1,r25
	.loc 1 255 0 discriminator 3
	st Z,r25
	.loc 1 256 0 discriminator 3
	adiw r30,8
.LVL76:
	.loc 1 253 0 discriminator 3
	subi r24,lo8(-(1))
.LVL77:
.L40:
	.loc 1 253 0 is_stmt 0 discriminator 1
	cpi r24,lo8(32)
	brlo .L41
.LBE92:
	.loc 1 258 0 is_stmt 1
	ldi r24,lo8(-1)
.LVL78:
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
.LVL79:
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
	rjmp .L43
.LVL80:
.L44:
	.loc 1 272 0 discriminator 3
	ldi r18,lo8(-1)
	std Z+1,r18
	.loc 1 273 0 discriminator 3
	ldd r18,Z+6
	or r24,r18
.LVL81:
	.loc 1 274 0 discriminator 3
	adiw r30,8
.LVL82:
	.loc 1 271 0 discriminator 3
	subi r25,lo8(-(1))
.LVL83:
.L43:
	.loc 1 271 0 is_stmt 0 discriminator 1
	cpi r25,lo8(32)
	brlo .L44
.LBE94:
	.loc 1 277 0 is_stmt 1
	lds r25,pipe_Module
.LVL84:
	and r24,r25
.LVL85:
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
.L46:
	.loc 1 284 0 discriminator 1
	lds r24,pipeProcessing
	sbrs r24,1
	rjmp .L46
	.loc 1 287 0
	sts pipeProcessing,__zero_reg__
.L47:
	.loc 1 288 0 discriminator 1
	lds r24,pipeProcessing
	sbrs r24,1
	rjmp .L47
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
.LVL86:
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
	rjmp .L49
.LVL87:
.L50:
	.loc 1 296 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(40)
.LVL88:
	std Z+2,r24
	std Z+3,__zero_reg__
.LVL89:
	.loc 1 296 0 discriminator 3
	ldi r24,0
.LVL90:
.L49:
	.loc 1 296 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L50
.LVL91:
.LBB98:
.LBB99:
	.loc 3 70 0 is_stmt 1
	out __SREG__,r25
	.loc 3 71 0
.LVL92:
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
	brne .L52
	.loc 1 303 0
	call module_TestAllInputs
.LVL93:
	cpse r24,__zero_reg__
	rjmp .L53
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
.LVL94:
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
	rjmp .L54
.LVL95:
.L55:
	.loc 1 307 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(1)
.LVL96:
	std Z+2,r24
	std Z+3,__zero_reg__
.LVL97:
	.loc 1 307 0 discriminator 3
	ldi r24,0
.LVL98:
.L54:
	.loc 1 307 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L55
.LVL99:
.LBB103:
.LBB104:
	.loc 3 70 0 is_stmt 1
	out __SREG__,r25
	.loc 3 71 0
.LVL100:
.LBE104:
.LBE103:
.LBE100:
	ret
.LVL101:
.L53:
.LBB105:
	.loc 1 310 0
	in r25,__SREG__
.LVL102:
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
	rjmp .L57
.LVL103:
.L58:
	.loc 1 310 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(12)
.LVL104:
	std Z+2,r24
	ldi r24,lo8(2)
	std Z+3,r24
.LVL105:
	.loc 1 310 0 discriminator 3
	ldi r24,0
.LVL106:
.L57:
	.loc 1 310 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L58
.LVL107:
.LBB108:
.LBB109:
	.loc 3 70 0 is_stmt 1
	out __SREG__,r25
	.loc 3 71 0
.LVL108:
	ret
.LVL109:
.L52:
.LBE109:
.LBE108:
.LBE105:
	.loc 1 312 0
	cpi r24,lo8(18)
	brne .L59
.LBB110:
	.loc 1 314 0
	call module_TestAllInputs
.LVL110:
	.loc 1 315 0
	cpse r24,__zero_reg__
	rjmp .L60
	.loc 1 317 0
	ldi r24,lo8(20)
.LVL111:
	sts pipe_PowerStatus,r24
	rjmp .L61
.LVL112:
.L60:
	.loc 1 320 0
	mov r20,r24
	ldi r21,0
	ldi r22,0
	ldi r24,lo8(5)
.LVL113:
	call log_putError
.LVL114:
	.loc 1 321 0
	in r24,0x5
	andi r24,lo8(-65)
	out 0x5,r24
	.loc 1 322 0
	ldi r24,lo8(-128)
	sts pipe_PowerStatus,r24
.L61:
	.loc 1 325 0
	ldi r24,lo8(-1)
	sts swTimer+2,r24
.LBE110:
	ret
.L59:
	.loc 1 327 0
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
	.loc 1 486 0
	.cfi_startproc
.LVL115:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB111:
	.loc 1 488 0
	ldi r25,0
	rjmp .L63
.LVL116:
.L66:
	.loc 1 490 0
	cpi r25,lo8(4)
	brsh .L64
	.loc 1 491 0
	mov r30,r25
	ldi r31,0
	cpse r24,__zero_reg__
	rjmp .L67
	ldi r18,lo8(10)
	rjmp .L65
.L67:
	ldi r18,lo8(6)
.L65:
	.loc 1 491 0 is_stmt 0 discriminator 4
	subi r30,lo8(-(keyWants))
	sbci r31,hi8(-(keyWants))
	st Z,r18
.L64:
	.loc 1 488 0 is_stmt 1 discriminator 2
	subi r25,lo8(-(1))
.LVL117:
.L63:
	.loc 1 488 0 is_stmt 0 discriminator 1
	cpi r25,lo8(6)
	brlo .L66
/* epilogue start */
.LBE111:
	.loc 1 495 0 is_stmt 1
	ret
	.cfi_endproc
.LFE31:
	.size	softKey_WantLong, .-softKey_WantLong
	.section	.text.__vector_21,"ax",@progbits
.global	__vector_21
	.type	__vector_21, @function
__vector_21:
.LFB34:
	.loc 1 591 0
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
	.loc 1 593 0
	in r24,0x5
	ori r24,lo8(-128)
	out 0x5,r24
	.loc 1 595 0
	lds r24,msecCtr
	subi r24,lo8(-(1))
	sts msecCtr,r24
	andi r24,lo8(3)
	cpi r24,lo8(1)
	brne .+2
	rjmp .L70
	brlo .L71
	cpi r24,lo8(2)
	brne .+2
	rjmp .L94
	cpi r24,lo8(3)
	brne .+2
	rjmp .L73
	rjmp .L69
.L71:
.LBB130:
.LBB131:
	.loc 1 383 0
	lds r24,adcNr
	cpse r24,__zero_reg__
	rjmp .L74
	.loc 1 383 0
	lds r25,122
	.loc 1 383 0
	sbrc r25,6
	rjmp .L74
.LBB132:
	.loc 1 387 0
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
.LVL118:
	.loc 1 388 0
	lds r20,121
.LVL119:
	.loc 1 389 0
	std Z+1,r20
.LVL120:
.LBB133:
.LBB134:
	.loc 1 336 0
	cp r20,r25
	brsh .L75
	.loc 1 337 0
	sub r25,r20
.LVL121:
	rjmp .L76
.LVL122:
.L75:
	.loc 1 339 0
	mov r21,r20
	sub r21,r25
	mov r25,r21
.LVL123:
.L76:
.LBE134:
.LBE133:
	.loc 1 390 0
	cpi r25,lo8(4)
	brlo .+2
	rjmp .L74
.LBB135:
	.loc 1 393 0
	cpse r24,__zero_reg__
	rjmp .L104
	.loc 1 396 0
	cpi r20,lo8(34)
	brlo .L96
	.loc 1 398 0
	cpi r20,lo8(63)
	brlo .L97
	.loc 1 400 0
	cpi r20,lo8(104)
	brlo .L98
	.loc 1 402 0
	cpi r20,lo8(-106)
	brlo .L99
	.loc 1 404 0
	cpi r20,lo8(-65)
	brlo .L100
	.loc 1 406 0
	cpi r20,lo8(-24)
	brsh .L101
	.loc 1 407 0
	ldi r28,lo8(6)
	rjmp .L77
.L104:
	.loc 1 414 0
	ldi r28,lo8(-1)
	rjmp .L77
.L96:
	.loc 1 397 0
	ldi r28,lo8(4)
	rjmp .L77
.L97:
	.loc 1 399 0
	ldi r28,lo8(3)
	rjmp .L77
.L98:
	.loc 1 401 0
	ldi r28,lo8(5)
	rjmp .L77
.L99:
	.loc 1 403 0
	ldi r28,lo8(1)
	rjmp .L77
.L100:
	.loc 1 405 0
	ldi r28,lo8(2)
	rjmp .L77
.L101:
	.loc 1 409 0
	ldi r28,lo8(-1)
.L77:
.LVL124:
	.loc 1 416 0
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
.LVL125:
	.loc 1 417 0
	cp r29,r28
	brne .+2
	rjmp .L79
	.loc 1 419 0
	cpi r29,lo8(-1)
	breq .L80
	cpi r28,lo8(-1)
	breq .L80
	.loc 1 421 0
	ldi r28,lo8(-1)
.LVL126:
.L80:
	.loc 1 423 0
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
	.loc 1 424 0
	cpi r29,lo8(-1)
	brne .L81
	.loc 1 426 0
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
	.loc 1 427 0
	movw r30,r24
	add r30,r18
	adc r31,r19
	lsl r30
	rol r31
	subi r30,lo8(-(adcKeys))
	sbci r31,hi8(-(adcKeys))
	std Z+3,__zero_reg__
	.loc 1 428 0
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(keyWants-1))
	sbci r31,hi8(-(keyWants-1))
	ld r24,Z
	sbrs r24,0
	rjmp .L74
	.loc 1 429 0
	mov r24,r28
	call message_push
.LVL127:
	rjmp .L74
.LVL128:
.L81:
	.loc 1 433 0
	mov r30,r29
	ldi r31,0
	subi r30,lo8(-(keyWants-1))
	sbci r31,hi8(-(keyWants-1))
	ld r24,Z
	sbrs r24,1
	rjmp .L74
	.loc 1 434 0
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
	rjmp .L74
	.loc 1 436 0
	mov r24,r29
	call message_push
.LVL129:
	rjmp .L74
.LVL130:
.L79:
	.loc 1 442 0
	cpi r28,lo8(-1)
	brne .+2
	rjmp .L74
	.loc 1 444 0
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
	.loc 1 445 0
	movw r30,r26
	ldd r24,Z+4
	ldd r25,Z+5
	cpi r24,75
	cpc r25,__zero_reg__
	brne .L82
	.loc 1 447 0
	mov r30,r29
	ldi r31,0
	subi r30,lo8(-(keyWants-1))
	sbci r31,hi8(-(keyWants-1))
	ld r24,Z
	sbrs r24,2
	rjmp .L82
	.loc 1 448 0
	mov r24,r28
	ori r24,lo8(-128)
	call message_push
.LVL131:
	.loc 1 449 0
	lds r30,adcNr
	ldi r24,lo8(6)
	mul r30,r24
	movw r30,r0
	clr __zero_reg__
	subi r30,lo8(-(adcKeys))
	sbci r31,hi8(-(adcKeys))
	ldi r24,lo8(2)
	std Z+3,r24
.L82:
	.loc 1 452 0
	mov r30,r29
	ldi r31,0
	subi r30,lo8(-(keyWants-1))
	sbci r31,hi8(-(keyWants-1))
	ld r24,Z
	sbrs r24,3
	rjmp .L74
	.loc 1 453 0
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
	rjmp .L83
	.loc 1 454 0
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
	brne .L74
	.loc 1 456 0
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
	.loc 1 457 0
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	.loc 1 458 0
	mov r24,r28
	call message_push
.LVL132:
	rjmp .L74
.L83:
	.loc 1 460 0
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
	brne .L74
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
	brne .L74
	.loc 1 462 0
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
	.loc 1 463 0
	mov r24,r28
	call message_push
.LVL133:
.L74:
.LBE135:
.LBE132:
	.loc 1 471 0
	lds r24,adcNr
	subi r24,lo8(-(1))
	sts adcNr,r24
	cpi r24,lo8(4)
	brlo .L84
	.loc 1 472 0
	sts adcNr,__zero_reg__
.L84:
	.loc 1 475 0
	lds r24,adcNr
	cpse r24,__zero_reg__
	rjmp .L103
	.loc 1 476 0
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
.LVL134:
	rjmp .L85
.LVL135:
.L103:
	.loc 1 479 0
	ldi r24,lo8(31)
.L85:
.LVL136:
	.loc 1 481 0
	mov r25,r24
	andi r25,lo8(31)
	ori r25,lo8(96)
	sts 124,r25
	.loc 1 482 0
	ldi r30,lo8(123)
	ldi r31,0
	ld r18,Z
	.loc 1 482 0
	andi r24,lo8(32)
.LVL137:
	ldi r25,0
	asr r25
	ror r24
	asr r25
	ror r24
	.loc 1 482 0
	mov r25,r18
	andi r25,lo8(-33)
	or r24,r25
	st Z,r24
	.loc 1 483 0
	ldi r30,lo8(122)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(64)
	st Z,r24
	rjmp .L69
.L70:
.LBE131:
.LBE130:
	.loc 1 598 0
	lds r24,pipeProcessing
	cpi r24,lo8(-128)
	brne .+2
	rjmp .L69
.LBB136:
.LBB137:
	.loc 1 560 0
	in r24,0x14
	ori r24,lo8(7)
	out 0x14,r24
	.loc 1 561 0
	in r24,0x14
	andi r24,lo8(-5)
	out 0x14,r24
.LVL138:
	.loc 1 563 0
	lds r18,pipe_Module+1
	com r18
.LVL139:
.LBB138:
.LBB139:
	.loc 2 276 0
	ldi r30,lo8(2)
1:	dec r30
	brne 1b
	rjmp .
.LVL140:
.LBE139:
.LBE138:
	.loc 1 566 0
	in r24,0x14
	ori r24,lo8(4)
	out 0x14,r24
	.loc 1 564 0
	ldi r25,lo8(32)
	.loc 1 562 0
	ldi r30,lo8(pipe+248)
	ldi r31,hi8(pipe+248)
.LVL141:
.L86:
	.loc 1 568 0
	ldd r24,Z+3
	std Z+2,r24
	.loc 1 569 0
	ldd r24,Z+4
	std Z+3,r24
	.loc 1 570 0
	in r24,0x14
	ori r24,lo8(1)
	out 0x14,r24
	.loc 1 571 0
	ldd r24,Z+1
	or r24,r18
	out 0x8,r24
	.loc 1 572 0
	ldd r24,Z+5
	std Z+4,r24
	.loc 1 573 0
	ldd r24,Z+6
	std Z+5,r24
	.loc 1 574 0
	in r24,0
	.loc 1 574 0
	std Z+6,r24
	.loc 1 575 0
	in r24,0x14
	andi r24,lo8(-2)
	out 0x14,r24
	.loc 1 576 0
	sbiw r30,8
.LVL142:
	.loc 1 577 0
	subi r25,lo8(-(-1))
.LVL143:
	brne .L86
	.loc 1 578 0
/* #APP */
 ;  578 ".././hwtimer.c" 1
	nop
 ;  0 "" 2
	.loc 1 579 0
 ;  579 ".././hwtimer.c" 1
	nop
 ;  0 "" 2
	.loc 1 580 0
/* #NOAPP */
	in r24,0x14
	ori r24,lo8(1)
	out 0x14,r24
	.loc 1 581 0
	in r24,0x14
	andi r24,lo8(-3)
	out 0x14,r24
	.loc 1 582 0
	lds r24,pipeProcessing
	ori r24,lo8(2)
	sts pipeProcessing,r24
	.loc 1 583 0
	out 0x8,__zero_reg__
	.loc 1 584 0
	in r24,0xb
	ori r24,lo8(-128)
	out 0xb,r24
	.loc 1 585 0
	in r24,0x14
	ori r24,lo8(2)
	out 0x14,r24
	rjmp .L69
.LVL144:
.L89:
.LBE137:
.LBE136:
.LBB140:
.LBB141:
.LBB142:
	.loc 1 349 0
	ld r24,Z
	subi r24,lo8(-(-1))
	cpi r24,lo8(-2)
	brsh .L87
.LBB143:
	.loc 1 350 0
	ldd r18,Z+1
	subi r18,lo8(-(1))
.LVL145:
	.loc 1 351 0
	cpi r18,lo8(5)
	brlo .L88
.LVL146:
	.loc 1 354 0
	st Z,r24
	.loc 1 353 0
	ldi r18,0
.LVL147:
.L88:
	.loc 1 356 0
	std Z+1,r18
.LVL148:
.L87:
.LBE143:
	.loc 1 358 0
	adiw r30,2
.LVL149:
	.loc 1 348 0
	subi r25,lo8(-(1))
.LVL150:
	rjmp .L72
.LVL151:
.L94:
	ldi r25,0
.LBE142:
	.loc 1 347 0
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
.L72:
.LVL152:
.LBB144:
	.loc 1 348 0
	cpi r25,lo8(10)
	brlo .L89
.LVL153:
.LBE144:
	.loc 1 361 0
	ldi r30,lo8(time_Uptime)
	ldi r31,hi8(time_Uptime)
.LVL154:
	ld r24,Z
	subi r24,lo8(-(1))
	st Z,r24
	cpi r24,lo8(-6)
	breq .+2
	rjmp .L69
	.loc 1 363 0
	ldi r24,lo8(-1)
	sts time_UpTimeUpdated,r24
.LVL155:
	.loc 1 364 0
	st Z,__zero_reg__
	.loc 1 365 0
	ldd r24,Z+1
	subi r24,lo8(-(1))
	std Z+1,r24
	cpi r24,lo8(60)
	brsh .+2
	rjmp .L69
.LVL156:
	.loc 1 367 0
	std Z+1,__zero_reg__
	.loc 1 368 0
	ldd r24,Z+2
	subi r24,lo8(-(1))
	std Z+2,r24
	cpi r24,lo8(60)
	brsh .+2
	rjmp .L69
.LVL157:
	.loc 1 370 0
	std Z+2,__zero_reg__
	.loc 1 371 0
	ldd r24,Z+3
	subi r24,lo8(-(1))
	std Z+3,r24
	cpi r24,lo8(100)
	brsh .+2
	rjmp .L69
	.loc 1 373 0
	sts time_Uptime+3,__zero_reg__
	rjmp .L69
.LVL158:
.L73:
.LBE141:
.LBE140:
	.loc 1 603 0
	lds r24,pipeProcessing
	cpi r24,lo8(-128)
	breq .L69
.LVL159:
.LBB145:
.LBB146:
	.loc 1 503 0
	lds r14,pipe_Module
	lds r24,pipe_ModuleTested
	and r14,r24
.LVL160:
.LBB147:
	.loc 1 504 0
	mov r15,__zero_reg__
.LBE147:
	.loc 1 501 0
	ldi r16,lo8(pipe)
	ldi r17,hi8(pipe)
	rjmp .L90
.LVL161:
.L93:
.LBB149:
.LBB148:
	.loc 1 525 0
	movw r30,r16
	ldd r28,Z+2
.LVL162:
	.loc 1 527 0
	ldd r24,Z+3
	mov r25,r28
	and r25,r24
.LVL163:
	.loc 1 528 0
	or r28,r24
.LVL164:
	.loc 1 529 0
	ldd r24,Z+4
	and r25,r24
.LVL165:
	.loc 1 530 0
	or r28,r24
.LVL166:
	.loc 1 531 0
	ldd r18,Z+5
	and r25,r18
.LVL167:
	.loc 1 532 0
	or r28,r18
.LVL168:
	.loc 1 533 0
	ldd r24,Z+6
	and r25,r24
.LVL169:
	.loc 1 534 0
	or r28,r24
.LVL170:
	.loc 1 535 0
	ldd r29,Z+7
.LVL171:
	.loc 1 536 0
	and r28,r29
.LVL172:
	or r28,r25
.LVL173:
	.loc 1 537 0
	std Z+7,r28
	.loc 1 539 0
	mov r24,r29
.LVL174:
	com r24
	and r24,r28
	and r24,r14
.LVL175:
	.loc 1 540 0
	breq .L91
	.loc 1 544 0
	mov r25,r15
.LVL176:
	ori r25,lo8(32)
	call pipeMsgPush
.LVL177:
.L91:
	.loc 1 546 0
	com r28
.LVL178:
	and r28,r29
.LVL179:
	mov r24,r28
	and r24,r14
.LVL180:
	.loc 1 547 0
	breq .L92
	.loc 1 551 0
	mov r25,r15
	call pipeMsgPush
.LVL181:
.L92:
	.loc 1 553 0
	subi r16,-8
	sbci r17,-1
.LVL182:
	.loc 1 554 0
	lds r24,pipeProcessing
	ori r24,lo8(1)
	sts pipeProcessing,r24
.LBE148:
	.loc 1 504 0
	inc r15
.LVL183:
.L90:
	ldi r31,lo8(31)
	cp r31,r15
	brsh .L93
.LVL184:
.L69:
.LBE149:
.LBE146:
.LBE145:
	.loc 1 608 0
	in r24,0x5
	andi r24,lo8(127)
	out 0x5,r24
/* epilogue start */
	.loc 1 610 0
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
	.loc 1 614 0
	.cfi_startproc
.LVL185:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 615 0
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
.LVL186:
	ldd r24,Z+1
.LVL187:
	and r22,r24
.LVL188:
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
	.loc 1 618 0
	.cfi_startproc
.LVL189:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 619 0
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
.LVL190:
	or r22,r24
.LVL191:
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
	.comm	swTimer,20,1
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
	.long	0xfa1
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
	.byte	0x53
	.long	0xe8
	.uleb128 0xa
	.long	.LASF14
	.byte	0x6
	.byte	0x54
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x6
	.byte	0x55
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF16
	.byte	0x6
	.byte	0x56
	.long	0xc3
	.uleb128 0x9
	.byte	0x6
	.byte	0x6
	.byte	0x88
	.long	0x142
	.uleb128 0xb
	.string	"mux"
	.byte	0x6
	.byte	0x89
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0x8a
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.string	"key"
	.byte	0x6
	.byte	0x8b
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0x8d
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.byte	0x8e
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF20
	.byte	0x6
	.byte	0x8f
	.long	0xf3
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.byte	0xa9
	.long	0x1c6
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.byte	0xaa
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.byte	0xab
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.byte	0xac
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.byte	0xad
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.byte	0xae
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.byte	0xaf
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.byte	0xb0
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.byte	0xb1
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF29
	.byte	0x6
	.byte	0xb2
	.long	0x14d
	.uleb128 0x9
	.byte	0x2
	.byte	0x6
	.byte	0xbe
	.long	0x1f6
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.byte	0xbf
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.byte	0xc0
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF32
	.byte	0x6
	.byte	0xc1
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
	.word	0x14e
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0x281
	.uleb128 0x13
	.long	.LASF38
	.byte	0x1
	.word	0x14e
	.long	0x30
	.uleb128 0x13
	.long	.LASF39
	.byte	0x1
	.word	0x14e
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
	.long	0x568
	.uleb128 0x1a
	.long	.LASF46
	.byte	0x1
	.byte	0x6e
	.long	0x568
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
	.long	0xf70
	.uleb128 0x1f
	.long	.LVL11
	.long	0xf7d
	.long	0x553
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
	.uleb128 0x21
	.long	.LVL44
	.long	0xf7d
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x20
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0x1c6
	.uleb128 0x22
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
	.long	0x779
	.uleb128 0x23
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
	.uleb128 0x24
	.long	.LASF49
	.byte	0x1
	.byte	0xce
	.long	0x30
	.uleb128 0x25
	.long	.LBB72
	.long	.LBE72
	.long	0x66a
	.uleb128 0x1a
	.long	.LASF50
	.byte	0x1
	.byte	0xd4
	.long	0x30
	.long	.LLST29
	.uleb128 0x26
	.long	.Ldebug_ranges0+0
	.uleb128 0x1a
	.long	.LASF51
	.byte	0x1
	.byte	0xd5
	.long	0x30
	.long	.LLST30
	.uleb128 0x26
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
	.long	0x632
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
	.uleb128 0x27
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
	.uleb128 0x25
	.long	.LBB81
	.long	.LBE81
	.long	0x6f3
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
	.long	0x6bd
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
	.uleb128 0x27
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
	.long	0x742
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
	.uleb128 0x27
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
	.long	0x7b5
	.uleb128 0x1a
	.long	.LASF46
	.byte	0x1
	.byte	0xfb
	.long	0x568
	.long	.LLST52
	.uleb128 0x26
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xfd
	.long	0x30
	.long	.LLST53
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.long	0x808
	.uleb128 0x29
	.long	.LASF48
	.byte	0x1
	.word	0x10a
	.long	0x30
	.long	.LLST54
	.uleb128 0x29
	.long	.LASF46
	.byte	0x1
	.word	0x10b
	.long	0x568
	.long	.LLST55
	.uleb128 0x26
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.word	0x10f
	.long	0x30
	.long	.LLST56
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.long	0x88d
	.uleb128 0x17
	.long	.LBB95
	.long	.LBE95
	.uleb128 0x29
	.long	.LASF57
	.byte	0x1
	.word	0x128
	.long	0x30
	.long	.LLST57
	.uleb128 0x29
	.long	.LASF58
	.byte	0x1
	.word	0x128
	.long	0x30
	.long	.LLST58
	.uleb128 0x2d
	.long	0x281
	.long	.LBB96
	.long	.LBE96
	.byte	0x1
	.word	0x128
	.uleb128 0x2e
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
	.uleb128 0x2c
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
	.long	0x99c
	.uleb128 0x25
	.long	.LBB100
	.long	.LBE100
	.long	0x8ff
	.uleb128 0x29
	.long	.LASF57
	.byte	0x1
	.word	0x133
	.long	0x30
	.long	.LLST60
	.uleb128 0x29
	.long	.LASF58
	.byte	0x1
	.word	0x133
	.long	0x30
	.long	.LLST61
	.uleb128 0x2d
	.long	0x281
	.long	.LBB101
	.long	.LBE101
	.byte	0x1
	.word	0x133
	.uleb128 0x2e
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
	.uleb128 0x25
	.long	.LBB105
	.long	.LBE105
	.long	0x957
	.uleb128 0x29
	.long	.LASF57
	.byte	0x1
	.word	0x136
	.long	0x30
	.long	.LLST63
	.uleb128 0x29
	.long	.LASF58
	.byte	0x1
	.word	0x136
	.long	0x30
	.long	.LLST64
	.uleb128 0x2d
	.long	0x281
	.long	.LBB106
	.long	.LBE106
	.byte	0x1
	.word	0x136
	.uleb128 0x2e
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
	.uleb128 0x25
	.long	.LBB110
	.long	.LBE110
	.long	0x992
	.uleb128 0x29
	.long	.LASF60
	.byte	0x1
	.word	0x13a
	.long	0x30
	.long	.LLST66
	.uleb128 0x1e
	.long	.LVL110
	.long	0x7b5
	.uleb128 0x21
	.long	.LVL114
	.long	0xf7d
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
	.long	.LVL93
	.long	0x7b5
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF62
	.byte	0x1
	.word	0x1e6
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x9de
	.uleb128 0x30
	.long	.LASF64
	.byte	0x1
	.word	0x1e6
	.long	0x30
	.byte	0x1
	.byte	0x68
	.uleb128 0x17
	.long	.LBB111
	.long	.LBE111
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.word	0x1e8
	.long	0x30
	.long	.LLST67
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF70
	.byte	0x1
	.word	0x17e
	.byte	0x3
	.long	0xa2c
	.uleb128 0x10
	.long	.LASF65
	.byte	0x1
	.word	0x1da
	.long	0x30
	.uleb128 0x32
	.uleb128 0x10
	.long	.LASF66
	.byte	0x1
	.word	0x182
	.long	0x30
	.uleb128 0x10
	.long	.LASF67
	.byte	0x1
	.word	0x184
	.long	0x30
	.uleb128 0x32
	.uleb128 0x10
	.long	.LASF68
	.byte	0x1
	.word	0x188
	.long	0x30
	.uleb128 0x10
	.long	.LASF69
	.byte	0x1
	.word	0x1a0
	.long	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF71
	.byte	0x1
	.word	0x22e
	.byte	0x3
	.long	0xa5c
	.uleb128 0x10
	.long	.LASF72
	.byte	0x1
	.word	0x22f
	.long	0x568
	.uleb128 0x10
	.long	.LASF73
	.byte	0x1
	.word	0x233
	.long	0x30
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.word	0x234
	.long	0x30
	.byte	0
	.uleb128 0x31
	.long	.LASF74
	.byte	0x1
	.word	0x159
	.byte	0x3
	.long	0xa9c
	.uleb128 0x10
	.long	.LASF75
	.byte	0x1
	.word	0x15a
	.long	0xa9c
	.uleb128 0x10
	.long	.LASF76
	.byte	0x1
	.word	0x168
	.long	0x201
	.uleb128 0x32
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.word	0x15c
	.long	0x30
	.uleb128 0x32
	.uleb128 0x10
	.long	.LASF77
	.byte	0x1
	.word	0x15e
	.long	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0xe8
	.uleb128 0x31
	.long	.LASF78
	.byte	0x1
	.word	0x1f3
	.byte	0x3
	.long	0xb2c
	.uleb128 0x10
	.long	.LASF72
	.byte	0x1
	.word	0x1f4
	.long	0x568
	.uleb128 0x10
	.long	.LASF79
	.byte	0x1
	.word	0x1f7
	.long	0x30
	.uleb128 0x32
	.uleb128 0x10
	.long	.LASF80
	.byte	0x1
	.word	0x1f8
	.long	0x30
	.uleb128 0x32
	.uleb128 0x10
	.long	.LASF81
	.byte	0x1
	.word	0x1fa
	.long	0xb8
	.uleb128 0x10
	.long	.LASF82
	.byte	0x1
	.word	0x20a
	.long	0x30
	.uleb128 0x10
	.long	.LASF83
	.byte	0x1
	.word	0x20b
	.long	0x30
	.uleb128 0x10
	.long	.LASF84
	.byte	0x1
	.word	0x20c
	.long	0x201
	.uleb128 0x10
	.long	.LASF85
	.byte	0x1
	.word	0x217
	.long	0x30
	.uleb128 0x10
	.long	.LASF86
	.byte	0x1
	.word	0x218
	.long	0x30
	.uleb128 0x10
	.long	.LASF87
	.byte	0x1
	.word	0x21b
	.long	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.long	.LASF88
	.byte	0x1
	.word	0x24e
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.long	.LLST68
	.byte	0x1
	.long	0xd84
	.uleb128 0x35
	.long	0x9de
	.long	.LBB130
	.long	.LBE130
	.byte	0x1
	.word	0x255
	.long	0xc31
	.uleb128 0x17
	.long	.LBB131
	.long	.LBE131
	.uleb128 0x1d
	.long	0x9eb
	.long	.LLST69
	.uleb128 0x17
	.long	.LBB132
	.long	.LBE132
	.uleb128 0x1d
	.long	0x9f8
	.long	.LLST70
	.uleb128 0x1d
	.long	0xa04
	.long	.LLST71
	.uleb128 0x35
	.long	0x256
	.long	.LBB133
	.long	.LBE133
	.byte	0x1
	.word	0x186
	.long	0xbaf
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
	.long	0xa11
	.long	.LLST74
	.uleb128 0x1d
	.long	0xa1d
	.long	.LLST75
	.uleb128 0x1f
	.long	.LVL127
	.long	0xf8a
	.long	0xbde
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL129
	.long	0xf8a
	.long	0xbf2
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL131
	.long	0xf8a
	.long	0xc09
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
	.uleb128 0x1f
	.long	.LVL132
	.long	0xf8a
	.long	0xc1d
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.long	.LVL133
	.long	0xf8a
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
	.uleb128 0x35
	.long	0xa2c
	.long	.LBB136
	.long	.LBE136
	.byte	0x1
	.word	0x257
	.long	0xca1
	.uleb128 0x17
	.long	.LBB137
	.long	.LBE137
	.uleb128 0x1d
	.long	0xa39
	.long	.LLST76
	.uleb128 0x1d
	.long	0xa45
	.long	.LLST77
	.uleb128 0x1d
	.long	0xa51
	.long	.LLST78
	.uleb128 0x2e
	.long	0x213
	.long	.LBB138
	.long	.LBE138
	.byte	0x1
	.word	0x235
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
	.uleb128 0x35
	.long	0xa5c
	.long	.LBB140
	.long	.LBE140
	.byte	0x1
	.word	0x25a
	.long	0xcf0
	.uleb128 0x17
	.long	.LBB141
	.long	.LBE141
	.uleb128 0x1d
	.long	0xa69
	.long	.LLST82
	.uleb128 0x36
	.long	0xa75
	.uleb128 0x26
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x1d
	.long	0xa82
	.long	.LLST83
	.uleb128 0x17
	.long	.LBB143
	.long	.LBE143
	.uleb128 0x1d
	.long	0xa8d
	.long	.LLST84
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0xaa2
	.long	.LBB145
	.long	.LBE145
	.byte	0x1
	.word	0x25c
	.uleb128 0x17
	.long	.LBB146
	.long	.LBE146
	.uleb128 0x1d
	.long	0xaaf
	.long	.LLST85
	.uleb128 0x1d
	.long	0xabb
	.long	.LLST86
	.uleb128 0x26
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x1d
	.long	0xac8
	.long	.LLST87
	.uleb128 0x17
	.long	.LBB148
	.long	.LBE148
	.uleb128 0x36
	.long	0xad5
	.uleb128 0x1d
	.long	0xae1
	.long	.LLST88
	.uleb128 0x1d
	.long	0xaed
	.long	.LLST89
	.uleb128 0x1d
	.long	0xaf9
	.long	.LLST90
	.uleb128 0x1d
	.long	0xb05
	.long	.LLST91
	.uleb128 0x1d
	.long	0xb11
	.long	.LLST92
	.uleb128 0x1d
	.long	0xb1d
	.long	.LLST93
	.uleb128 0x1e
	.long	.LVL177
	.long	0xf97
	.uleb128 0x1e
	.long	.LVL181
	.long	0xf97
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF89
	.byte	0x1
	.word	0x266
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xdc0
	.uleb128 0x37
	.long	.LASF52
	.byte	0x1
	.word	0x266
	.long	0x30
	.long	.LLST94
	.uleb128 0x37
	.long	.LASF90
	.byte	0x1
	.word	0x266
	.long	0x30
	.long	.LLST95
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.long	.LASF91
	.byte	0x1
	.word	0x26a
	.byte	0x1
	.long	.LFB36
	.long	.LFE36
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xdfc
	.uleb128 0x37
	.long	.LASF52
	.byte	0x1
	.word	0x26a
	.long	0x30
	.long	.LLST96
	.uleb128 0x37
	.long	.LASF90
	.byte	0x1
	.word	0x26a
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
	.long	0xe2a
	.long	0xe2a
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
	.long	0xe41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	time_Uptime
	.uleb128 0x3a
	.long	0xe1a
	.uleb128 0x5
	.long	0xe56
	.long	0xe56
	.uleb128 0x6
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x3a
	.long	0xe8
	.uleb128 0x3b
	.long	.LASF95
	.byte	0x1
	.byte	0x16
	.long	0xe6d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	swTimer
	.uleb128 0x3a
	.long	0xe46
	.uleb128 0x3b
	.long	.LASF96
	.byte	0x1
	.byte	0x18
	.long	0xe2a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	time_UpTimeUpdated
	.uleb128 0x5
	.long	0xe94
	.long	0xe94
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
	.long	0xeab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	adcKeys
	.uleb128 0x3a
	.long	0xe84
	.uleb128 0x5
	.long	0x30
	.long	0xec0
	.uleb128 0x6
	.long	0x82
	.byte	0x5
	.byte	0
	.uleb128 0x3b
	.long	.LASF98
	.byte	0x1
	.byte	0x1d
	.long	0xeb0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	keyWants
	.uleb128 0x5
	.long	0x1c6
	.long	0xee2
	.uleb128 0x6
	.long	0x82
	.byte	0x1f
	.byte	0
	.uleb128 0x3b
	.long	.LASF99
	.byte	0x1
	.byte	0x20
	.long	0xed2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	pipe
	.uleb128 0x3b
	.long	.LASF100
	.byte	0x1
	.byte	0x25
	.long	0xe2a
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
	.long	0xf4c
	.uleb128 0x6
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x3b
	.long	.LASF104
	.byte	0x7
	.byte	0xaf
	.long	0xf3c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x3b
	.long	.LASF105
	.byte	0x1
	.byte	0x15
	.long	0xe2a
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
	.uleb128 0x1
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.long	.LVL42
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
	.long	.LVL43
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
	.long	.LVL45
	.long	.LVL47
	.word	0x1
	.byte	0x68
	.long	.LVL47
	.long	.LVL72
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL72
	.long	.LVL73
	.word	0x1
	.byte	0x68
	.long	.LVL73
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL65
	.long	.LVL72
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
	.long	.LVL48
	.long	.LVL49
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL49
	.long	.LVL64
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST30:
	.long	.LVL49
	.long	.LVL55
	.word	0x1
	.byte	0x62
	.long	.LVL56
	.long	.LVL57
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST31:
	.long	.LVL49
	.long	.LVL55
	.word	0x1
	.byte	0x69
	.long	.LVL56
	.long	.LVL57
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST32:
	.long	.LVL50
	.long	.LVL51
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST33:
	.long	.LVL50
	.long	.LVL51
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST34:
	.long	.LVL50
	.long	.LVL51
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL52
	.long	.LVL53
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST36:
	.long	.LVL52
	.long	.LVL53
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST37:
	.long	.LVL52
	.long	.LVL53
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL58
	.long	.LVL63
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST39:
	.long	.LVL58
	.long	.LVL59
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST40:
	.long	.LVL58
	.long	.LVL59
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST41:
	.long	.LVL58
	.long	.LVL59
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL60
	.long	.LVL61
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST43:
	.long	.LVL60
	.long	.LVL61
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST44:
	.long	.LVL60
	.long	.LVL61
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL65
	.long	.LVL71
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST46:
	.long	.LVL66
	.long	.LVL67
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST47:
	.long	.LVL66
	.long	.LVL67
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST48:
	.long	.LVL66
	.long	.LVL67
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST49:
	.long	.LVL68
	.long	.LVL69
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST50:
	.long	.LVL68
	.long	.LVL69
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST51:
	.long	.LVL68
	.long	.LVL69
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST52:
	.long	.LVL75
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
	.long	.LVL74
	.long	.LVL75
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL75
	.long	.LVL78
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST54:
	.long	.LVL79
	.long	.LVL80
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL80
	.long	.LVL85
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST55:
	.long	.LVL80
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
	.long	.LVL79
	.long	.LVL80
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL80
	.long	.LVL84
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST57:
	.long	.LVL86
	.long	.LVL92
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST58:
	.long	.LVL87
	.long	.LVL88
	.word	0x1
	.byte	0x68
	.long	.LVL89
	.long	.LVL90
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL90
	.long	.LFE26
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST59:
	.long	.LVL91
	.long	.LVL92
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2113
	.sleb128 0
	.long	0
	.long	0
.LLST60:
	.long	.LVL94
	.long	.LVL100
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST61:
	.long	.LVL95
	.long	.LVL96
	.word	0x1
	.byte	0x68
	.long	.LVL97
	.long	.LVL98
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL98
	.long	.LVL101
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST62:
	.long	.LVL99
	.long	.LVL100
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2228
	.sleb128 0
	.long	0
	.long	0
.LLST63:
	.long	.LVL102
	.long	.LVL108
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST64:
	.long	.LVL103
	.long	.LVL104
	.word	0x1
	.byte	0x68
	.long	.LVL105
	.long	.LVL106
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL106
	.long	.LVL109
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST65:
	.long	.LVL107
	.long	.LVL108
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2316
	.sleb128 0
	.long	0
	.long	0
.LLST66:
	.long	.LVL110
	.long	.LVL111
	.word	0x1
	.byte	0x68
	.long	.LVL112
	.long	.LVL113
	.word	0x1
	.byte	0x68
	.long	.LVL113
	.long	.LVL114-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST67:
	.long	.LVL115
	.long	.LVL116
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL116
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
	.long	.LVL134
	.long	.LVL135
	.word	0x1
	.byte	0x68
	.long	.LVL136
	.long	.LVL137
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST70:
	.long	.LVL118
	.long	.LVL121
	.word	0x1
	.byte	0x69
	.long	.LVL122
	.long	.LVL123
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST71:
	.long	.LVL119
	.long	.LVL127-1
	.word	0x1
	.byte	0x64
	.long	.LVL128
	.long	.LVL129-1
	.word	0x1
	.byte	0x64
	.long	.LVL130
	.long	.LVL131-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST72:
	.long	.LVL120
	.long	.LVL123
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST73:
	.long	.LVL120
	.long	.LVL121
	.word	0x1
	.byte	0x69
	.long	.LVL122
	.long	.LVL123
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST74:
	.long	.LVL124
	.long	.LVL133
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST75:
	.long	.LVL125
	.long	.LVL133
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST76:
	.long	.LVL141
	.long	.LVL144
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
	.long	.LVL139
	.long	.LVL144
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST78:
	.long	.LVL139
	.long	.LVL141
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	.LVL141
	.long	.LVL144
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST79:
	.long	.LVL139
	.long	.LVL140
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f000000
	.long	0
	.long	0
.LLST80:
	.long	.LVL139
	.long	.LVL140
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41000000
	.long	0
	.long	0
.LLST81:
	.long	.LVL139
	.long	.LVL140
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST82:
	.long	.LVL144
	.long	.LVL151
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL152
	.long	.LVL154
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
	.long	.LVL144
	.long	.LVL151
	.word	0x1
	.byte	0x69
	.long	.LVL152
	.long	.LVL158
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST84:
	.long	.LVL145
	.long	.LVL146
	.word	0x1
	.byte	0x62
	.long	.LVL146
	.long	.LVL147
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL147
	.long	.LVL148
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST85:
	.long	.LVL161
	.long	.LVL184
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
	.long	.LVL160
	.long	.LVL184
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST87:
	.long	.LVL160
	.long	.LVL161
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL161
	.long	.LVL184
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST88:
	.long	.LVL161
	.long	.LVL162
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL162
	.long	.LVL163
	.word	0x1
	.byte	0x6c
	.long	.LVL163
	.long	.LVL176
	.word	0x1
	.byte	0x69
	.long	.LVL176
	.long	.LVL177-1
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
	.long	.LVL161
	.long	.LVL162
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL162
	.long	.LVL172
	.word	0x1
	.byte	0x6c
	.long	.LVL172
	.long	.LVL174
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
	.long	.LVL174
	.long	.LVL177-1
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
	.long	.LVL161
	.long	.LVL162
	.word	0x3
	.byte	0x80
	.sleb128 2
	.byte	0x9f
	.long	.LVL162
	.long	.LVL163
	.word	0x3
	.byte	0x80
	.sleb128 3
	.byte	0x9f
	.long	.LVL163
	.long	.LVL165
	.word	0x3
	.byte	0x80
	.sleb128 4
	.byte	0x9f
	.long	.LVL165
	.long	.LVL167
	.word	0x3
	.byte	0x80
	.sleb128 5
	.byte	0x9f
	.long	.LVL167
	.long	.LVL169
	.word	0x3
	.byte	0x80
	.sleb128 6
	.byte	0x9f
	.long	.LVL169
	.long	.LVL182
	.word	0x3
	.byte	0x80
	.sleb128 7
	.byte	0x9f
	.long	.LVL182
	.long	.LVL183
	.word	0x3
	.byte	0x80
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST91:
	.long	.LVL171
	.long	.LVL183
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST92:
	.long	.LVL173
	.long	.LVL178
	.word	0x1
	.byte	0x6c
	.long	.LVL178
	.long	.LVL179
	.word	0x4
	.byte	0x8c
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST93:
	.long	.LVL175
	.long	.LVL177-1
	.word	0x1
	.byte	0x68
	.long	.LVL177-1
	.long	.LVL178
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
	.long	.LVL178
	.long	.LVL179
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
	.long	.LVL180
	.long	.LVL181-1
	.word	0x1
	.byte	0x68
	.long	.LVL181-1
	.long	.LVL183
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
	.long	.LVL185
	.long	.LVL187
	.word	0x1
	.byte	0x68
	.long	.LVL187
	.long	.LFE35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST95:
	.long	.LVL185
	.long	.LVL186
	.word	0x1
	.byte	0x66
	.long	.LVL186
	.long	.LVL188
	.word	0x4
	.byte	0x86
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	.LVL188
	.long	.LFE35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST96:
	.long	.LVL189
	.long	.LVL190
	.word	0x1
	.byte	0x68
	.long	.LVL190
	.long	.LFE36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST97:
	.long	.LVL189
	.long	.LVL191
	.word	0x1
	.byte	0x66
	.long	.LVL191
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
