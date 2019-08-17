	.file	"main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB17:
	.file 1 ".././main.c"
	.loc 1 37 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 41 0
	call init_iopins
.LVL0:
	.loc 1 42 0
	call init_log
.LVL1:
	.loc 1 43 0
	call init_Serial0SerUSB
.LVL2:
	.loc 1 44 0
	call init_message
.LVL3:
	.loc 1 45 0
	call init_HwTimer
.LVL4:
	.loc 1 46 0
	call init_Timers
.LVL5:
	.loc 1 47 0
	call init_ADC
.LVL6:
	.loc 1 48 0
	call init_Pipe
.LVL7:
	.loc 1 49 0
	call init_Serial1MIDI
.LVL8:
	.loc 1 50 0
	call init_PipeModules
.LVL9:
	.loc 1 51 0
	call init_Midi2Manual
.LVL10:
	.loc 1 52 0
	call init_Manual2Midi
.LVL11:
	.loc 1 53 0
	call init_Midi
.LVL12:
	.loc 1 54 0
	call init_Registers
.LVL13:
	.loc 1 55 0
	call init_Manual2Module
.LVL14:
	.loc 1 56 0
	call init_SoftKeys
.LVL15:
	.loc 1 57 0
	call eeprom_UpdateALL
.LVL16:
	.loc 1 58 0
	sts menu_TestModulePattern,__zero_reg__
	.loc 1 63 0
	call lcd_init
.LVL17:
	.loc 1 64 0
	call lcd_initCG
.LVL18:
	.loc 1 65 0
	call lcd_clrscr
.LVL19:
	.loc 1 66 0
	ldi r24,lo8(67)
	call lcd_goto
.LVL20:
	.loc 1 67 0
	ldi r24,lo8(prog_name)
	ldi r25,hi8(prog_name)
	call lcd_puts_P
.LVL21:
	.loc 1 68 0
	ldi r24,lo8(27)
	call lcd_goto
.LVL22:
	.loc 1 69 0
	ldi r24,lo8(sw_version)
	ldi r25,hi8(sw_version)
	call lcd_puts_P
.LVL23:
	.loc 1 70 0
/* #APP */
 ;  70 ".././main.c" 1
	sei
 ;  0 "" 2
.LVL24:
/* #NOAPP */
.LBB56:
.LBB57:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 2 187 0
	ldi r18,lo8(3839999)
	ldi r24,hi8(3839999)
	ldi r25,hlo8(3839999)
1:	subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LVL25:
.LBE57:
.LBE56:
	.loc 1 72 0
	call lcd_clrscr
.LVL26:
	.loc 1 76 0
	call module_StartPowerOn
.LVL27:
	.loc 1 77 0
	ldi r24,lo8(-1)
	sts msgPipe_Handling,r24
	.loc 1 79 0
	sts menuNotActive,r24
.LVL28:
	.loc 1 81 0
	ldi r29,lo8(-1)
.LVL29:
.L2:
.LBB58:
	.loc 1 85 0
	call message_status
.LVL30:
	tst r24
	brne .+2
	rjmp .L3
.LBB59:
	.loc 1 86 0
	call message_get
.LVL31:
	mov r28,r24
.LVL32:
	.loc 1 87 0
	cpi r24,lo8(-122)
	brne .L4
	.loc 1 89 0
	call midiSendAllNotesOff
.LVL33:
	.loc 1 90 0
	call midi_AllManualsOff
.LVL34:
	.loc 1 91 0
	call midi_resetRegisters
.LVL35:
	.loc 1 92 0
	call midi_CouplerReset
.LVL36:
	.loc 1 93 0
	ldi r24,lo8(panicString)
	ldi r25,hi8(panicString)
	call menu_DisplayMainMessage_P
.LVL37:
.L4:
	.loc 1 95 0
	lds r24,menuNotActive
	cpi r24,lo8(-1)
	brne .L5
.LBB60:
	.loc 1 98 0
	mov r24,r28
	andi r24,lo8(63)
.LVL38:
	.loc 1 99 0
	cpi r28,lo8(5)
	brne .L6
	.loc 1 102 0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.LVL39:
	call menu_Init
.LVL40:
	.loc 1 103 0
	call menu_InitLCD
.LVL41:
	.loc 1 104 0
	sts menuNotActive,__zero_reg__
	.loc 1 105 0
	ldi r24,0
	call softKey_WantLong
.LVL42:
	rjmp .L3
.LVL43:
.L6:
	.loc 1 106 0
	ldi r25,lo8(-1)
	add r25,r24
	cpi r25,lo8(4)
	brsh .L3
.LBB61:
	.loc 1 108 0
	call softKey_MessageKey_ToSoftKeyNr
.LVL44:
	.loc 1 109 0
	mov r22,r28
	call softKey_Execute
.LVL45:
	sts menuNotActive,r24
	.loc 1 110 0
	call softKeys_toLCD
.LVL46:
	rjmp .L3
.LVL47:
.L5:
.LBE61:
.LBE60:
	.loc 1 114 0
	lds r24,menu_TestModulePattern
	cpse r24,__zero_reg__
	rjmp .L7
	.loc 1 116 0
	mov r24,r28
	call menu_ProcessMessage
.LVL48:
	sts menuNotActive,r24
	rjmp .L3
.L7:
	.loc 1 119 0
	ldi r24,lo8(-3)
	sts menu_TestModuleBitCounter,r24
	.loc 1 120 0
	call menu_ModuleTestExecute
.LVL49:
.L3:
.LBE59:
	.loc 1 124 0
	lds r24,menuNotActive
	cpi r24,lo8(-1)
	brne .L48
	.loc 1 126 0
	cpi r29,lo8(-1)
	brne .L8
	.loc 1 128 0
	call menu_ClearAllDisp
.LVL50:
	.loc 1 129 0
	call softKeys_toLCD
.LVL51:
	.loc 1 130 0
	ldi r24,lo8(-1)
	call softKey_WantLong
.LVL52:
	.loc 1 131 0
	ldi r29,0
	rjmp .L8
.LVL53:
.L48:
	.loc 1 135 0
	ldi r29,lo8(-1)
.LVL54:
.L8:
	.loc 1 138 0
	lds r24,swTimer+14
	cpse r24,__zero_reg__
	rjmp .L9
.LBB62:
	.loc 1 141 0
	lds r28,lcd_cursorPos
.LVL55:
	.loc 1 142 0
	call menu_deleteMessage
.LVL56:
	.loc 1 143 0
	mov r24,r28
	call lcd_goto
.LVL57:
	.loc 1 145 0
	ldi r24,lo8(-1)
	sts swTimer+14,r24
.LVL58:
.L9:
.LBE62:
	.loc 1 149 0
	lds r24,swTimer+12
	cpse r24,__zero_reg__
	rjmp .L10
	.loc 1 150 0
	lds r24,menu_TestModulePattern
	tst r24
	breq .L11
	.loc 1 151 0
	call menu_ModuleTestExecute
.LVL59:
	rjmp .L10
.L11:
	.loc 1 153 0
	ldi r24,lo8(-1)
	sts swTimer+12,r24
.L10:
	.loc 1 159 0
	lds r24,swTimer+2
	cpse r24,__zero_reg__
	rjmp .L12
	.loc 1 160 0
	call module_PowerControl
.LVL60:
	.loc 1 161 0
	call menu_showPowerState
.LVL61:
	.loc 1 162 0
	lds r24,menuNotActive
	cpi r24,lo8(-1)
	brne .L12
.LBB63:
	.loc 1 164 0
	lds r28,lcd_cursorPos
.LVL62:
	.loc 1 165 0
	ldi r24,lo8(20)
	call lcd_goto
.LVL63:
	.loc 1 166 0
	lds r24,pipe_PowerStatus
	cpi r24,lo8(1)
	brne .L13
	.loc 1 168 0
	ldi r24,lo8(releaseKeyString)
	ldi r25,hi8(releaseKeyString)
	call lcd_puts_P
.LVL64:
	rjmp .L14
.L13:
	.loc 1 169 0
	cpi r24,lo8(18)
	brne .L14
	.loc 1 170 0
	ldi r24,lo8(20)
	call lcd_blank
.LVL65:
.L14:
	.loc 1 172 0
	mov r24,r28
	call lcd_goto
.LVL66:
.L12:
.LBE63:
	.loc 1 177 0
	call midi_CheckTxActiveSense
.LVL67:
	.loc 1 178 0
	call midi_CheckRxActiveSense
.LVL68:
	.loc 1 181 0
	lds r28,lcd_cursorPos
.LVL69:
	.loc 1 182 0
	lds r24,midiLastInNote
	cpi r24,lo8(-1)
	breq .L15
	.loc 1 184 0
	ldi r24,0
	call lcd_goto
.LVL70:
	.loc 1 185 0
	lds r24,midiLastInManual
	cpi r24,lo8(-1)
	brne .L16
	.loc 1 188 0
	lds r24,midiLastInChannel
	call lcd_ChannelOut
.LVL71:
	.loc 1 189 0
	ldi r24,lo8(63)
	call lcd_putc
.LVL72:
	.loc 1 190 0
	lds r24,midiLastInNote
	call lcd_noteOut
.LVL73:
	.loc 1 191 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL74:
	rjmp .L17
.L16:
	.loc 1 195 0
	lds r24,midiLastInNote
	call lcd_noteOut
.LVL75:
	.loc 1 196 0
	ldi r24,lo8(126)
	call lcd_putc
.LVL76:
	.loc 1 197 0
	lds r24,midiLastInManual
	call lcd_ManualOutDec
.LVL77:
	.loc 1 198 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL78:
.L17:
	.loc 1 200 0
	mov r24,r28
	call lcd_goto
.LVL79:
	.loc 1 201 0
	ldi r24,lo8(-1)
	sts midiLastInNote,r24
.LBB64:
	.loc 1 202 0
	in r25,__SREG__
.LVL80:
.LBB65:
.LBB66:
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 3 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE66:
.LBE65:
	.loc 1 202 0
	ldi r24,lo8(1)
	rjmp .L18
.LVL81:
.L19:
	.loc 1 202 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(50)
.LVL82:
	std Z+8,r24
	std Z+9,__zero_reg__
.LVL83:
	.loc 1 202 0 discriminator 3
	ldi r24,0
.LVL84:
.L18:
	.loc 1 202 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L19
.LVL85:
.LBB67:
.LBB68:
	.loc 3 70 0 is_stmt 1
	out __SREG__,r25
	.loc 3 71 0
.LVL86:
.LBE68:
.LBE67:
.LBE64:
	rjmp .L20
.LVL87:
.L15:
	.loc 1 203 0
	lds r24,midiLastProgram
	cpi r24,lo8(-1)
	breq .L21
	.loc 1 205 0
	ldi r24,0
	call lcd_goto
.LVL88:
	.loc 1 206 0
	ldi r24,lo8(112)
	call lcd_putc
.LVL89:
	.loc 1 207 0
	lds r24,midiLastProgram
	call lcd_dec2out
.LVL90:
	.loc 1 208 0
	ldi r24,lo8(126)
	call lcd_putc
.LVL91:
	.loc 1 209 0
	ldi r24,lo8(-1)
	sts midiLastProgram,r24
.LBB69:
	.loc 1 210 0
	in r25,__SREG__
.LVL92:
.LBB70:
.LBB71:
	.loc 3 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE71:
.LBE70:
	.loc 1 210 0
	ldi r24,lo8(1)
	rjmp .L22
.LVL93:
.L23:
	.loc 1 210 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(50)
.LVL94:
	std Z+8,r24
	std Z+9,__zero_reg__
.LVL95:
	.loc 1 210 0 discriminator 3
	ldi r24,0
.LVL96:
.L22:
	.loc 1 210 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L23
.LVL97:
.LBB72:
.LBB73:
	.loc 3 70 0 is_stmt 1
	out __SREG__,r25
	.loc 3 71 0
.LVL98:
.LBE73:
.LBE72:
.LBE69:
	rjmp .L20
.LVL99:
.L21:
	.loc 1 211 0
	lds r24,swTimer+8
	cpse r24,__zero_reg__
	rjmp .L20
	.loc 1 214 0
	call lcd_goto
.LVL100:
	.loc 1 215 0
	ldi r24,lo8(6)
	call lcd_blank
.LVL101:
	.loc 1 216 0
	mov r24,r28
	call lcd_goto
.LVL102:
	.loc 1 217 0
	ldi r24,lo8(-1)
	sts swTimer+8,r24
.L20:
	.loc 1 219 0
	lds r24,midiLastOutNote
	cpi r24,lo8(-1)
	breq .L24
	.loc 1 222 0
	ldi r24,lo8(15)
	call lcd_goto
.LVL103:
	.loc 1 223 0
	lds r24,midiLastOutManual
	call lcd_ManualOutDec
.LVL104:
	.loc 1 224 0
	ldi r24,lo8(126)
	call lcd_putc
.LVL105:
	.loc 1 225 0
	lds r24,midiLastOutNote
	call lcd_noteOut
.LVL106:
	.loc 1 226 0
	mov r24,r28
	call lcd_goto
.LVL107:
	.loc 1 227 0
	ldi r24,lo8(-1)
	sts midiLastOutNote,r24
.LBB74:
	.loc 1 228 0
	in r25,__SREG__
.LVL108:
.LBB75:
.LBB76:
	.loc 3 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE76:
.LBE75:
	.loc 1 228 0
	ldi r24,lo8(1)
	rjmp .L25
.LVL109:
.L26:
	.loc 1 228 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(50)
.LVL110:
	std Z+10,r24
	std Z+11,__zero_reg__
.LVL111:
	.loc 1 228 0 discriminator 3
	ldi r24,0
.LVL112:
.L25:
	.loc 1 228 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L26
.LVL113:
.LBB77:
.LBB78:
	.loc 3 70 0 is_stmt 1
	out __SREG__,r25
	.loc 3 71 0
.LVL114:
.LBE78:
.LBE77:
.LBE74:
	rjmp .L27
.LVL115:
.L24:
	.loc 1 229 0
	lds r24,midi_RegisterChanged
	cpi r24,lo8(-1)
	breq .L28
	.loc 1 231 0
	ldi r24,lo8(15)
	call lcd_goto
.LVL116:
	.loc 1 232 0
	ldi r24,lo8(82)
	call lcd_putc
.LVL117:
	.loc 1 233 0
	lds r24,midi_RegisterChanged
	andi r24,lo8(127)
	call lcd_dec2out
.LVL118:
	.loc 1 234 0
	lds r24,midi_RegisterChanged
	tst r24
	brlt .L49
	ldi r24,lo8(9)
	rjmp .L29
.L49:
	ldi r24,lo8(8)
.L29:
	.loc 1 234 0 is_stmt 0 discriminator 4
	call lcd_putc
.LVL119:
	.loc 1 235 0 is_stmt 1 discriminator 4
	ldi r24,lo8(32)
	call lcd_putc
.LVL120:
	.loc 1 236 0 discriminator 4
	mov r24,r28
	call lcd_goto
.LVL121:
	.loc 1 237 0 discriminator 4
	ldi r24,lo8(-1)
	sts midi_RegisterChanged,r24
.LBB79:
	.loc 1 238 0 discriminator 4
	in r25,__SREG__
.LVL122:
.LBB80:
.LBB81:
	.loc 3 50 0 discriminator 4
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE81:
.LBE80:
	.loc 1 238 0 discriminator 4
	ldi r24,lo8(1)
	rjmp .L30
.LVL123:
.L31:
	.loc 1 238 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(50)
.LVL124:
	std Z+10,r24
	std Z+11,__zero_reg__
.LVL125:
	.loc 1 238 0 discriminator 3
	ldi r24,0
.LVL126:
.L30:
	.loc 1 238 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L31
.LVL127:
.LBB82:
.LBB83:
	.loc 3 70 0 is_stmt 1
	out __SREG__,r25
	.loc 3 71 0
.LVL128:
.LBE83:
.LBE82:
.LBE79:
	rjmp .L27
.LVL129:
.L28:
	.loc 1 239 0
	lds r24,swTimer+10
	cpse r24,__zero_reg__
	rjmp .L27
	.loc 1 242 0
	ldi r24,lo8(15)
	call lcd_goto
.LVL130:
	.loc 1 243 0
	ldi r24,lo8(5)
	call lcd_blank
.LVL131:
	.loc 1 244 0
	mov r24,r28
	call lcd_goto
.LVL132:
	.loc 1 245 0
	ldi r24,lo8(-1)
	sts swTimer+10,r24
.L27:
	.loc 1 249 0
	lds r24,time_UpTimeUpdated
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L32
.LBB84:
	.loc 1 250 0
	sts time_UpTimeUpdated,__zero_reg__
.LVL133:
	.loc 1 253 0
	lds r15,lcd_cursorPos
.LVL134:
	.loc 1 254 0
	lds r28,lcd_cursorIsOn
.LVL135:
	.loc 1 255 0
	cpi r28,lo8(-1)
	brne .L33
	.loc 1 256 0
	call lcd_cursoroff
.LVL136:
.L33:
	.loc 1 259 0
	lds r24,time_Uptime+3
	tst r24
	breq .L50
	.loc 1 263 0
	lds r24,time_Uptime+1
	sbrc r24,0
	rjmp .L51
	.loc 1 265 0
	mov __tmp_reg__,r31
	ldi r31,lo8(58)
	mov r14,r31
	mov r31,__tmp_reg__
	.loc 1 252 0
	ldi r16,lo8(time_Uptime+3)
	ldi r17,hi8(time_Uptime+3)
.LVL137:
	rjmp .L34
.LVL138:
.L50:
	.loc 1 262 0
	mov __tmp_reg__,r31
	ldi r31,lo8(58)
	mov r14,r31
	mov r31,__tmp_reg__
	.loc 1 261 0
	ldi r16,lo8(time_Uptime+2)
	ldi r17,hi8(time_Uptime+2)
	rjmp .L34
.L51:
	.loc 1 267 0
	set
	clr r14
	bld r14,5
	.loc 1 252 0
	ldi r16,lo8(time_Uptime+3)
	ldi r17,hi8(time_Uptime+3)
.LVL139:
.L34:
	.loc 1 269 0
	ldi r24,lo8(7)
	call lcd_goto
.LVL140:
	.loc 1 270 0
	movw r30,r16
	ld r24,Z
	call lcd_dec2out
.LVL141:
	.loc 1 271 0
	mov r24,r14
	call lcd_putc
.LVL142:
	.loc 1 272 0
	movw r30,r16
	sbiw r30,1
.LVL143:
	ld r24,Z
	call lcd_dec2out
.LVL144:
	.loc 1 274 0
	lds r20,midiRxOvflCount
.LVL145:
	.loc 1 275 0
	tst r20
	breq .L35
	.loc 1 276 0
	ldi r21,0
	ldi r22,0
	ldi r24,lo8(3)
	call log_putError
.LVL146:
	.loc 1 277 0
	sts midiRxOvflCount,__zero_reg__
.L35:
	.loc 1 279 0
	lds r20,midiTxOvflCount
.LVL147:
	.loc 1 280 0
	tst r20
	breq .L36
	.loc 1 281 0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(3)
	call log_putError
.LVL148:
	.loc 1 282 0
	sts midiTxOvflCount,__zero_reg__
.L36:
	.loc 1 285 0
	lds r24,pipe_PowerStatus
	sbrs r24,4
	rjmp .L52
	ldi r24,lo8(32)
	rjmp .L37
.L52:
	ldi r24,lo8(9)
.L37:
	.loc 1 285 0 is_stmt 0 discriminator 4
	call lcd_putc
.LVL149:
	.loc 1 286 0 is_stmt 1 discriminator 4
	lds r24,log_unreadErrors
	cpi r24,lo8(-1)
	brne .L53
	.loc 1 286 0 is_stmt 0
	ldi r24,lo8(69)
	rjmp .L38
.L53:
	ldi r24,lo8(32)
.L38:
	.loc 1 286 0 discriminator 4
	call lcd_putc
.LVL150:
	.loc 1 288 0 is_stmt 1 discriminator 4
	mov r24,r15
	call lcd_goto
.LVL151:
	.loc 1 289 0 discriminator 4
	cpi r28,lo8(-1)
	brne .L39
	.loc 1 290 0
	call lcd_cursosblink
.LVL152:
.L39:
	.loc 1 294 0
	lds r24,swTimer+8
	cpi r24,lo8(-1)
	brne .L40
.LBB85:
	.loc 1 295 0
	in r25,__SREG__
.LVL153:
.LBB86:
.LBB87:
	.loc 3 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE87:
.LBE86:
	.loc 1 295 0
	ldi r24,lo8(1)
	rjmp .L41
.LVL154:
.L42:
	.loc 1 295 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(125)
.LVL155:
	std Z+8,r24
	std Z+9,__zero_reg__
.LVL156:
	.loc 1 295 0 discriminator 3
	ldi r24,0
.LVL157:
.L41:
	.loc 1 295 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L42
.LVL158:
.LBB88:
.LBB89:
	.loc 3 70 0 is_stmt 1
	out __SREG__,r25
	.loc 3 71 0
.LVL159:
.L40:
.LBE89:
.LBE88:
.LBE85:
	.loc 1 297 0
	lds r24,swTimer+10
	cpi r24,lo8(-1)
	brne .L32
.LBB90:
	.loc 1 298 0
	in r25,__SREG__
.LVL160:
.LBB91:
.LBB92:
	.loc 3 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE92:
.LBE91:
	.loc 1 298 0
	ldi r24,lo8(1)
	rjmp .L43
.LVL161:
.L44:
	.loc 1 298 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(125)
.LVL162:
	std Z+10,r24
	std Z+11,__zero_reg__
.LVL163:
	.loc 1 298 0 discriminator 3
	ldi r24,0
.LVL164:
.L43:
	.loc 1 298 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L44
.LVL165:
.LBB93:
.LBB94:
	.loc 3 70 0 is_stmt 1
	out __SREG__,r25
	.loc 3 71 0
.LVL166:
.L32:
.LBE94:
.LBE93:
.LBE90:
.LBE84:
	.loc 1 303 0
	lds r24,msgPipeOverflow
	cpi r24,lo8(-1)
	brne .L45
	.loc 1 304 0
	sts msgPipeOverflow,__zero_reg__
	.loc 1 305 0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r24,lo8(4)
	call log_putError
.LVL167:
.L45:
	.loc 1 309 0
	lds r25,midiRxInIndex
	lds r24,midiRxOutIndex
	cp r25,r24
	breq .L46
	.loc 1 310 0
	call serial1MIDIReadRx
.LVL168:
	call midiIn_Process
.LVL169:
.L46:
	.loc 1 313 0
	call pipeMsgStatus
.LVL170:
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L2
	.loc 1 314 0
	call pipeMsgGet
.LVL171:
	call midiKeyPress_Process
.LVL172:
	rjmp .L2
.LBE58:
	.cfi_endproc
.LFE17:
	.size	main, .-main
	.comm	menuNotActive,1,1
.global	panicString
	.section	.progmem.data.panicString,"a",@progbits
	.type	panicString, @object
	.size	panicString, 9
panicString:
	.string	"T\357ne aus"
.global	releaseKeyString
	.section	.progmem.data.releaseKeyString,"a",@progbits
	.type	releaseKeyString, @object
	.size	releaseKeyString, 18
releaseKeyString:
	.string	"Tasten/Reg. l\357sen"
.global	prog_name
	.section	.progmem.data.prog_name,"a",@progbits
	.type	prog_name, @object
	.size	prog_name, 15
prog_name:
	.string	"MIDI-Interface"
.global	module_string
	.section	.progmem.data.module_string,"a",@progbits
	.type	module_string, @object
	.size	module_string, 7
module_string:
	.string	" Mod.:"
.global	eprom_ok
	.section	.progmem.data.eprom_ok,"a",@progbits
	.type	eprom_ok, @object
	.size	eprom_ok, 4
eprom_ok:
	.string	"EE:"
	.comm	lcdData,10,1
	.text
.Letext0:
	.file 4 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 5 ".././hwtimer.h"
	.file 6 ".././lcd_u.h"
	.file 7 ".././utils.h"
	.file 8 ".././message.h"
	.file 9 ".././serial.h"
	.file 10 ".././Midi.h"
	.file 11 ".././menu.h"
	.file 12 ".././log.h"
	.file 13 ".././initio.h"
	.file 14 ".././ee_prom.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf6c
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF121
	.byte	0xc
	.long	.LASF122
	.long	.LASF123
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF4
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF3
	.uleb128 0x3
	.long	.LASF5
	.byte	0x4
	.byte	0x82
	.long	0x62
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
	.byte	0x5
	.byte	0x4f
	.long	0xa3
	.uleb128 0x6
	.long	.LASF10
	.byte	0x5
	.byte	0x50
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF11
	.byte	0x5
	.byte	0x51
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF12
	.byte	0x5
	.byte	0x52
	.long	0x7e
	.uleb128 0x7
	.byte	0x2
	.long	0x30
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF13
	.uleb128 0x8
	.long	0xb4
	.uleb128 0x8
	.long	0x30
	.uleb128 0x9
	.long	.LASF17
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.byte	0x3
	.long	0xfe
	.uleb128 0xa
	.long	.LASF19
	.byte	0x2
	.byte	0xa6
	.long	0xfe
	.uleb128 0xb
	.long	.LASF14
	.byte	0x2
	.byte	0xa8
	.long	0xfe
	.uleb128 0xb
	.long	.LASF15
	.byte	0x2
	.byte	0xac
	.long	0x57
	.uleb128 0xc
	.byte	0x1
	.long	.LASF124
	.byte	0x2
	.byte	0xad
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF16
	.uleb128 0xd
	.long	.LASF125
	.byte	0x3
	.byte	0x30
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0x9
	.long	.LASF18
	.byte	0x3
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x12b
	.uleb128 0xe
	.string	"__s"
	.byte	0x3
	.byte	0x44
	.long	0x12b
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.long	0xc0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF126
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.long	0x42
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xa36
	.uleb128 0x10
	.long	.LASF20
	.byte	0x1
	.byte	0x51
	.long	0x30
	.long	.LLST0
	.uleb128 0x11
	.long	0xc5
	.long	.LBB56
	.long	.LBE56
	.byte	0x1
	.byte	0x47
	.long	0x198
	.uleb128 0x12
	.long	0xd2
	.long	.LLST1
	.uleb128 0x13
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x14
	.long	0xdd
	.long	.LLST2
	.uleb128 0x14
	.long	0xe8
	.long	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LBB58
	.long	.LBE58
	.long	0x923
	.uleb128 0x10
	.long	.LASF21
	.byte	0x1
	.byte	0xb5
	.long	0x30
	.long	.LLST4
	.uleb128 0x15
	.long	.LBB59
	.long	.LBE59
	.long	0x2df
	.uleb128 0x10
	.long	.LASF22
	.byte	0x1
	.byte	0x56
	.long	0x30
	.long	.LLST5
	.uleb128 0x15
	.long	.LBB60
	.long	.LBE60
	.long	0x278
	.uleb128 0x10
	.long	.LASF23
	.byte	0x1
	.byte	0x62
	.long	0x30
	.long	.LLST6
	.uleb128 0x15
	.long	.LBB61
	.long	.LBE61
	.long	0x23d
	.uleb128 0x10
	.long	.LASF24
	.byte	0x1
	.byte	0x6c
	.long	0x30
	.long	.LLST7
	.uleb128 0x16
	.long	.LVL44
	.long	0xc77
	.long	0x21f
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x16
	.long	.LVL45
	.long	0xc84
	.long	0x233
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.long	.LVL46
	.long	0xc91
	.byte	0
	.uleb128 0x16
	.long	.LVL40
	.long	0xc9e
	.long	0x25f
	.uleb128 0x17
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.long	.LVL41
	.long	0xcac
	.uleb128 0x19
	.long	.LVL42
	.long	0xcba
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LVL31
	.long	0xcc7
	.uleb128 0x18
	.long	.LVL33
	.long	0xcd4
	.uleb128 0x18
	.long	.LVL34
	.long	0xce1
	.uleb128 0x18
	.long	.LVL35
	.long	0xcee
	.uleb128 0x18
	.long	.LVL36
	.long	0xcfb
	.uleb128 0x16
	.long	.LVL37
	.long	0xd08
	.long	0x2c1
	.uleb128 0x17
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	panicString
	.byte	0
	.uleb128 0x16
	.long	.LVL48
	.long	0xd15
	.long	0x2d5
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.long	.LVL49
	.long	0xd23
	.byte	0
	.uleb128 0x15
	.long	.LBB62
	.long	.LBE62
	.long	0x315
	.uleb128 0x10
	.long	.LASF25
	.byte	0x1
	.byte	0x8d
	.long	0x30
	.long	.LLST8
	.uleb128 0x18
	.long	.LVL56
	.long	0xd31
	.uleb128 0x19
	.long	.LVL57
	.long	0xd3e
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LBB63
	.long	.LBE63
	.long	0x384
	.uleb128 0x10
	.long	.LASF25
	.byte	0x1
	.byte	0xa4
	.long	0x30
	.long	.LLST9
	.uleb128 0x16
	.long	.LVL63
	.long	0xd3e
	.long	0x344
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x44
	.byte	0
	.uleb128 0x16
	.long	.LVL64
	.long	0xd4b
	.long	0x360
	.uleb128 0x17
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	releaseKeyString
	.byte	0
	.uleb128 0x16
	.long	.LVL65
	.long	0xd58
	.long	0x373
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x44
	.byte	0
	.uleb128 0x19
	.long	.LVL66
	.long	0xd3e
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LBB64
	.long	.LBE64
	.long	0x3d8
	.uleb128 0x10
	.long	.LASF26
	.byte	0x1
	.byte	0xca
	.long	0x30
	.long	.LLST10
	.uleb128 0x10
	.long	.LASF27
	.byte	0x1
	.byte	0xca
	.long	0x30
	.long	.LLST11
	.uleb128 0x1a
	.long	0x105
	.long	.LBB65
	.long	.LBE65
	.byte	0x1
	.byte	0xca
	.uleb128 0x1b
	.long	0x112
	.long	.LBB67
	.long	.LBE67
	.byte	0x1
	.byte	0xca
	.uleb128 0x12
	.long	0x11f
	.long	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LBB69
	.long	.LBE69
	.long	0x42c
	.uleb128 0x10
	.long	.LASF26
	.byte	0x1
	.byte	0xd2
	.long	0x30
	.long	.LLST13
	.uleb128 0x10
	.long	.LASF27
	.byte	0x1
	.byte	0xd2
	.long	0x30
	.long	.LLST14
	.uleb128 0x1a
	.long	0x105
	.long	.LBB70
	.long	.LBE70
	.byte	0x1
	.byte	0xd2
	.uleb128 0x1b
	.long	0x112
	.long	.LBB72
	.long	.LBE72
	.byte	0x1
	.byte	0xd2
	.uleb128 0x12
	.long	0x11f
	.long	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LBB74
	.long	.LBE74
	.long	0x480
	.uleb128 0x10
	.long	.LASF26
	.byte	0x1
	.byte	0xe4
	.long	0x30
	.long	.LLST16
	.uleb128 0x10
	.long	.LASF27
	.byte	0x1
	.byte	0xe4
	.long	0x30
	.long	.LLST17
	.uleb128 0x1a
	.long	0x105
	.long	.LBB75
	.long	.LBE75
	.byte	0x1
	.byte	0xe4
	.uleb128 0x1b
	.long	0x112
	.long	.LBB77
	.long	.LBE77
	.byte	0x1
	.byte	0xe4
	.uleb128 0x12
	.long	0x11f
	.long	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LBB79
	.long	.LBE79
	.long	0x4d4
	.uleb128 0x10
	.long	.LASF26
	.byte	0x1
	.byte	0xee
	.long	0x30
	.long	.LLST19
	.uleb128 0x10
	.long	.LASF27
	.byte	0x1
	.byte	0xee
	.long	0x30
	.long	.LLST20
	.uleb128 0x1a
	.long	0x105
	.long	.LBB80
	.long	.LBE80
	.byte	0x1
	.byte	0xee
	.uleb128 0x1b
	.long	0x112
	.long	.LBB82
	.long	.LBE82
	.byte	0x1
	.byte	0xee
	.uleb128 0x12
	.long	0x11f
	.long	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LBB84
	.long	.LBE84
	.long	0x680
	.uleb128 0x10
	.long	.LASF28
	.byte	0x1
	.byte	0xfc
	.long	0xae
	.long	.LLST22
	.uleb128 0x10
	.long	.LASF29
	.byte	0x1
	.byte	0xfd
	.long	0x30
	.long	.LLST23
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1
	.byte	0xfe
	.long	0x30
	.long	.LLST24
	.uleb128 0x1c
	.long	.LASF31
	.byte	0x1
	.word	0x102
	.long	0xb4
	.long	.LLST25
	.uleb128 0x1c
	.long	.LASF32
	.byte	0x1
	.word	0x112
	.long	0x30
	.long	.LLST26
	.uleb128 0x15
	.long	.LBB85
	.long	.LBE85
	.long	0x586
	.uleb128 0x1c
	.long	.LASF26
	.byte	0x1
	.word	0x127
	.long	0x30
	.long	.LLST27
	.uleb128 0x1c
	.long	.LASF27
	.byte	0x1
	.word	0x127
	.long	0x30
	.long	.LLST28
	.uleb128 0x1d
	.long	0x105
	.long	.LBB86
	.long	.LBE86
	.byte	0x1
	.word	0x127
	.uleb128 0x1e
	.long	0x112
	.long	.LBB88
	.long	.LBE88
	.byte	0x1
	.word	0x127
	.uleb128 0x12
	.long	0x11f
	.long	.LLST29
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LBB90
	.long	.LBE90
	.long	0x5de
	.uleb128 0x1c
	.long	.LASF26
	.byte	0x1
	.word	0x12a
	.long	0x30
	.long	.LLST30
	.uleb128 0x1c
	.long	.LASF27
	.byte	0x1
	.word	0x12a
	.long	0x30
	.long	.LLST31
	.uleb128 0x1d
	.long	0x105
	.long	.LBB91
	.long	.LBE91
	.byte	0x1
	.word	0x12a
	.uleb128 0x1e
	.long	0x112
	.long	.LBB93
	.long	.LBE93
	.byte	0x1
	.word	0x12a
	.uleb128 0x12
	.long	0x11f
	.long	.LLST32
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LVL136
	.long	0xd65
	.uleb128 0x16
	.long	.LVL140
	.long	0xd3e
	.long	0x5fa
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x37
	.byte	0
	.uleb128 0x18
	.long	.LVL141
	.long	0xd72
	.uleb128 0x16
	.long	.LVL142
	.long	0xd7f
	.long	0x617
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.long	.LVL144
	.long	0xd72
	.uleb128 0x16
	.long	.LVL146
	.long	0xd8c
	.long	0x638
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.long	.LVL148
	.long	0xd8c
	.long	0x650
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x18
	.long	.LVL149
	.long	0xd7f
	.uleb128 0x18
	.long	.LVL150
	.long	0xd7f
	.uleb128 0x16
	.long	.LVL151
	.long	0xd3e
	.long	0x676
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.long	.LVL152
	.long	0xd99
	.byte	0
	.uleb128 0x18
	.long	.LVL30
	.long	0xda6
	.uleb128 0x18
	.long	.LVL50
	.long	0xdb3
	.uleb128 0x18
	.long	.LVL51
	.long	0xc91
	.uleb128 0x16
	.long	.LVL52
	.long	0xcba
	.long	0x6af
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x18
	.long	.LVL59
	.long	0xd23
	.uleb128 0x18
	.long	.LVL60
	.long	0xdc1
	.uleb128 0x18
	.long	.LVL61
	.long	0xdce
	.uleb128 0x18
	.long	.LVL67
	.long	0xddc
	.uleb128 0x18
	.long	.LVL68
	.long	0xde9
	.uleb128 0x16
	.long	.LVL70
	.long	0xd3e
	.long	0x6ef
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.long	.LVL71
	.long	0xdf6
	.uleb128 0x16
	.long	.LVL72
	.long	0xd7f
	.long	0x70c
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x3f
	.byte	0
	.uleb128 0x18
	.long	.LVL73
	.long	0xe03
	.uleb128 0x16
	.long	.LVL74
	.long	0xd7f
	.long	0x729
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x18
	.long	.LVL75
	.long	0xe03
	.uleb128 0x16
	.long	.LVL76
	.long	0xd7f
	.long	0x746
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7e
	.byte	0
	.uleb128 0x18
	.long	.LVL77
	.long	0xe10
	.uleb128 0x16
	.long	.LVL78
	.long	0xd7f
	.long	0x763
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x16
	.long	.LVL79
	.long	0xd3e
	.long	0x777
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.long	.LVL88
	.long	0xd3e
	.long	0x78a
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.long	.LVL89
	.long	0xd7f
	.long	0x79e
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x70
	.byte	0
	.uleb128 0x18
	.long	.LVL90
	.long	0xd72
	.uleb128 0x16
	.long	.LVL91
	.long	0xd7f
	.long	0x7bb
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7e
	.byte	0
	.uleb128 0x18
	.long	.LVL100
	.long	0xd3e
	.uleb128 0x16
	.long	.LVL101
	.long	0xd58
	.long	0x7d7
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x36
	.byte	0
	.uleb128 0x16
	.long	.LVL102
	.long	0xd3e
	.long	0x7eb
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.long	.LVL103
	.long	0xd3e
	.long	0x7fe
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x18
	.long	.LVL104
	.long	0xe10
	.uleb128 0x16
	.long	.LVL105
	.long	0xd7f
	.long	0x81b
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7e
	.byte	0
	.uleb128 0x18
	.long	.LVL106
	.long	0xe03
	.uleb128 0x16
	.long	.LVL107
	.long	0xd3e
	.long	0x838
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.long	.LVL116
	.long	0xd3e
	.long	0x84b
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x16
	.long	.LVL117
	.long	0xd7f
	.long	0x85f
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x52
	.byte	0
	.uleb128 0x18
	.long	.LVL118
	.long	0xd72
	.uleb128 0x18
	.long	.LVL119
	.long	0xd7f
	.uleb128 0x16
	.long	.LVL120
	.long	0xd7f
	.long	0x885
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x16
	.long	.LVL121
	.long	0xd3e
	.long	0x899
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.long	.LVL130
	.long	0xd3e
	.long	0x8ac
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x16
	.long	.LVL131
	.long	0xd58
	.long	0x8bf
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x16
	.long	.LVL132
	.long	0xd3e
	.long	0x8d3
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.long	.LVL167
	.long	0xd8c
	.long	0x8f5
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x34
	.uleb128 0x17
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
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
	.uleb128 0x18
	.long	.LVL168
	.long	0xe1d
	.uleb128 0x18
	.long	.LVL169
	.long	0xe2a
	.uleb128 0x18
	.long	.LVL170
	.long	0xe37
	.uleb128 0x18
	.long	.LVL171
	.long	0xe44
	.uleb128 0x18
	.long	.LVL172
	.long	0xe51
	.byte	0
	.uleb128 0x18
	.long	.LVL0
	.long	0xe5e
	.uleb128 0x18
	.long	.LVL1
	.long	0xe6b
	.uleb128 0x18
	.long	.LVL2
	.long	0xe78
	.uleb128 0x18
	.long	.LVL3
	.long	0xe85
	.uleb128 0x18
	.long	.LVL4
	.long	0xe92
	.uleb128 0x18
	.long	.LVL5
	.long	0xe9f
	.uleb128 0x18
	.long	.LVL6
	.long	0xeac
	.uleb128 0x18
	.long	.LVL7
	.long	0xeb9
	.uleb128 0x18
	.long	.LVL8
	.long	0xec6
	.uleb128 0x18
	.long	.LVL9
	.long	0xed3
	.uleb128 0x18
	.long	.LVL10
	.long	0xee0
	.uleb128 0x18
	.long	.LVL11
	.long	0xeed
	.uleb128 0x18
	.long	.LVL12
	.long	0xefa
	.uleb128 0x18
	.long	.LVL13
	.long	0xf07
	.uleb128 0x18
	.long	.LVL14
	.long	0xf14
	.uleb128 0x18
	.long	.LVL15
	.long	0xf21
	.uleb128 0x18
	.long	.LVL16
	.long	0xf2e
	.uleb128 0x18
	.long	.LVL17
	.long	0xf3b
	.uleb128 0x18
	.long	.LVL18
	.long	0xf48
	.uleb128 0x18
	.long	.LVL19
	.long	0xf55
	.uleb128 0x16
	.long	.LVL20
	.long	0xd3e
	.long	0x9eb
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x43
	.byte	0
	.uleb128 0x16
	.long	.LVL21
	.long	0xd4b
	.long	0xa07
	.uleb128 0x17
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	prog_name
	.byte	0
	.uleb128 0x16
	.long	.LVL22
	.long	0xd3e
	.long	0xa1a
	.uleb128 0x17
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x4b
	.byte	0
	.uleb128 0x18
	.long	.LVL23
	.long	0xd4b
	.uleb128 0x18
	.long	.LVL26
	.long	0xf55
	.uleb128 0x18
	.long	.LVL27
	.long	0xf62
	.byte	0
	.uleb128 0x1f
	.long	.LASF33
	.byte	0x6
	.byte	0x52
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF34
	.byte	0x7
	.byte	0x1d
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF35
	.byte	0x8
	.byte	0x49
	.long	0xa5d
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.long	0x30
	.uleb128 0x1f
	.long	.LASF36
	.byte	0x8
	.byte	0x4a
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	0xa5d
	.long	0xa7f
	.uleb128 0x22
	.long	0x77
	.byte	0x3
	.byte	0
	.uleb128 0x1f
	.long	.LASF37
	.byte	0x5
	.byte	0x54
	.long	0xa8c
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.long	0xa6f
	.uleb128 0x21
	.long	0xaa1
	.long	0xaa1
	.uleb128 0x22
	.long	0x77
	.byte	0x8
	.byte	0
	.uleb128 0x20
	.long	0xa3
	.uleb128 0x1f
	.long	.LASF38
	.byte	0x5
	.byte	0x53
	.long	0xab3
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.long	0xa91
	.uleb128 0x1f
	.long	.LASF39
	.byte	0x5
	.byte	0x55
	.long	0xa5d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF40
	.byte	0x5
	.byte	0xc3
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF41
	.byte	0x9
	.byte	0x51
	.long	0xa5d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF42
	.byte	0x9
	.byte	0x52
	.long	0xa5d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF43
	.byte	0x9
	.byte	0x59
	.long	0xa5d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF44
	.byte	0x9
	.byte	0x5a
	.long	0xa5d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF45
	.byte	0xa
	.byte	0x99
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF46
	.byte	0xa
	.byte	0xc7
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF47
	.byte	0xa
	.byte	0xc8
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF48
	.byte	0xa
	.byte	0xc9
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF49
	.byte	0xa
	.byte	0xca
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF50
	.byte	0xa
	.byte	0xcb
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF51
	.byte	0xa
	.byte	0xcc
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	0x30
	.long	0xb71
	.uleb128 0x22
	.long	0x77
	.byte	0x9
	.byte	0
	.uleb128 0x23
	.long	.LASF52
	.byte	0xb
	.byte	0xad
	.long	0xb61
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x21
	.long	0xbb
	.long	0xb8e
	.uleb128 0x24
	.byte	0
	.uleb128 0x25
	.long	.LASF53
	.byte	0xb
	.word	0x102
	.long	0xb9c
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	0xb83
	.uleb128 0x25
	.long	.LASF54
	.byte	0xb
	.word	0x105
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.long	.LASF55
	.byte	0xb
	.word	0x106
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.long	.LASF56
	.byte	0xc
	.byte	0x59
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	0xbb
	.long	0xbda
	.uleb128 0x22
	.long	0x77
	.byte	0x3
	.byte	0
	.uleb128 0x23
	.long	.LASF57
	.byte	0x1
	.byte	0x1d
	.long	0xbec
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	eprom_ok
	.uleb128 0x8
	.long	0xbca
	.uleb128 0x21
	.long	0xbb
	.long	0xc01
	.uleb128 0x22
	.long	0x77
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.long	.LASF58
	.byte	0x1
	.byte	0x1e
	.long	0xc13
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	module_string
	.uleb128 0x8
	.long	0xbf1
	.uleb128 0x21
	.long	0xbb
	.long	0xc28
	.uleb128 0x22
	.long	0x77
	.byte	0xe
	.byte	0
	.uleb128 0x23
	.long	.LASF59
	.byte	0x1
	.byte	0x1f
	.long	0xc3a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	prog_name
	.uleb128 0x8
	.long	0xc18
	.uleb128 0x23
	.long	.LASF60
	.byte	0x1
	.byte	0x20
	.long	0xc51
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	releaseKeyString
	.uleb128 0x26
	.uleb128 0x23
	.long	.LASF61
	.byte	0x1
	.byte	0x21
	.long	0xc64
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	panicString
	.uleb128 0x26
	.uleb128 0x23
	.long	.LASF62
	.byte	0x1
	.byte	0x22
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	menuNotActive
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF63
	.long	.LASF63
	.byte	0xb
	.byte	0xfb
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF64
	.long	.LASF64
	.byte	0xb
	.byte	0xfc
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF65
	.long	.LASF65
	.byte	0xb
	.byte	0xfa
	.uleb128 0x28
	.byte	0x1
	.byte	0x1
	.long	.LASF66
	.long	.LASF66
	.byte	0xb
	.word	0x110
	.uleb128 0x28
	.byte	0x1
	.byte	0x1
	.long	.LASF67
	.long	.LASF67
	.byte	0xb
	.word	0x111
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF68
	.long	.LASF68
	.byte	0x5
	.byte	0xcb
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF69
	.long	.LASF69
	.byte	0x8
	.byte	0x11
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF70
	.long	.LASF70
	.byte	0xa
	.byte	0xb8
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF71
	.long	.LASF71
	.byte	0xa
	.byte	0xbb
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF72
	.long	.LASF72
	.byte	0xa
	.byte	0xa4
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF73
	.long	.LASF73
	.byte	0xa
	.byte	0xd6
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF74
	.long	.LASF74
	.byte	0xb
	.byte	0xe5
	.uleb128 0x28
	.byte	0x1
	.byte	0x1
	.long	.LASF75
	.long	.LASF75
	.byte	0xb
	.word	0x112
	.uleb128 0x28
	.byte	0x1
	.byte	0x1
	.long	.LASF76
	.long	.LASF76
	.byte	0xb
	.word	0x115
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF77
	.long	.LASF77
	.byte	0xb
	.byte	0xe7
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF78
	.long	.LASF78
	.byte	0x6
	.byte	0x5c
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF79
	.long	.LASF79
	.byte	0x6
	.byte	0x5f
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF80
	.long	.LASF80
	.byte	0x7
	.byte	0x33
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF81
	.long	.LASF81
	.byte	0x7
	.byte	0x31
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF82
	.long	.LASF82
	.byte	0x7
	.byte	0x34
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF83
	.long	.LASF83
	.byte	0x6
	.byte	0x5d
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF84
	.long	.LASF84
	.byte	0xc
	.byte	0x32
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF85
	.long	.LASF85
	.byte	0x7
	.byte	0x32
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF86
	.long	.LASF86
	.byte	0x8
	.byte	0x12
	.uleb128 0x28
	.byte	0x1
	.byte	0x1
	.long	.LASF87
	.long	.LASF87
	.byte	0xb
	.word	0x113
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF88
	.long	.LASF88
	.byte	0x5
	.byte	0xca
	.uleb128 0x28
	.byte	0x1
	.byte	0x1
	.long	.LASF89
	.long	.LASF89
	.byte	0xb
	.word	0x109
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF90
	.long	.LASF90
	.byte	0xa
	.byte	0xd3
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF91
	.long	.LASF91
	.byte	0xa
	.byte	0xd2
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF92
	.long	.LASF92
	.byte	0x7
	.byte	0x2f
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF93
	.long	.LASF93
	.byte	0x7
	.byte	0x38
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF94
	.long	.LASF94
	.byte	0x7
	.byte	0x2e
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF95
	.long	.LASF95
	.byte	0x9
	.byte	0x4f
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF96
	.long	.LASF96
	.byte	0xa
	.byte	0xcf
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF97
	.long	.LASF97
	.byte	0x8
	.byte	0x48
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF98
	.long	.LASF98
	.byte	0x8
	.byte	0x47
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF99
	.long	.LASF99
	.byte	0xa
	.byte	0xce
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF100
	.long	.LASF100
	.byte	0xd
	.byte	0xe
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF101
	.long	.LASF101
	.byte	0xc
	.byte	0x31
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF102
	.long	.LASF102
	.byte	0x9
	.byte	0x22
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF103
	.long	.LASF103
	.byte	0x8
	.byte	0xf
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF104
	.long	.LASF104
	.byte	0x5
	.byte	0x57
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF105
	.long	.LASF105
	.byte	0x5
	.byte	0x58
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF106
	.long	.LASF106
	.byte	0x5
	.byte	0x59
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF107
	.long	.LASF107
	.byte	0x5
	.byte	0x5a
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF108
	.long	.LASF108
	.byte	0x9
	.byte	0x4d
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF109
	.long	.LASF109
	.byte	0x5
	.byte	0xcd
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF110
	.long	.LASF110
	.byte	0xa
	.byte	0xaf
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF111
	.long	.LASF111
	.byte	0xa
	.byte	0xb0
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF112
	.long	.LASF112
	.byte	0xa
	.byte	0xb9
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF113
	.long	.LASF113
	.byte	0xa
	.byte	0xb2
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF114
	.long	.LASF114
	.byte	0xa
	.byte	0xb1
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF115
	.long	.LASF115
	.byte	0xb
	.byte	0xf8
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF116
	.long	.LASF116
	.byte	0xe
	.byte	0x2d
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF117
	.long	.LASF117
	.byte	0x6
	.byte	0x59
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF118
	.long	.LASF118
	.byte	0x7
	.byte	0x29
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF119
	.long	.LASF119
	.byte	0x6
	.byte	0x5a
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF120
	.long	.LASF120
	.byte	0x5
	.byte	0xc9
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x87
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL28
	.long	.LVL29
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL29
	.long	.LVL52
	.word	0x1
	.byte	0x6d
	.long	.LVL52
	.long	.LVL53
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL53
	.long	.LFE17
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST1:
	.long	.LVL24
	.long	.LVL25
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x44960000
	.long	0
	.long	0
.LLST2:
	.long	.LVL24
	.long	.LVL25
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4b927c00
	.long	0
	.long	0
.LLST3:
	.long	.LVL24
	.long	.LVL25
	.word	0x6
	.byte	0xc
	.long	0x124f800
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL69
	.long	.LVL135
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST5:
	.long	.LVL32
	.long	.LVL33-1
	.word	0x1
	.byte	0x68
	.long	.LVL33-1
	.long	.LVL49
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST6:
	.long	.LVL38
	.long	.LVL39
	.word	0x1
	.byte	0x68
	.long	.LVL39
	.long	.LVL43
	.word	0x6
	.byte	0x8c
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL43
	.long	.LVL44-1
	.word	0x1
	.byte	0x68
	.long	.LVL44-1
	.long	.LVL47
	.word	0x6
	.byte	0x8c
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL44
	.long	.LVL45-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST8:
	.long	.LVL55
	.long	.LVL58
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST9:
	.long	.LVL62
	.long	.LVL66
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST10:
	.long	.LVL80
	.long	.LVL86
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST11:
	.long	.LVL81
	.long	.LVL82
	.word	0x1
	.byte	0x68
	.long	.LVL83
	.long	.LVL84
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL84
	.long	.LVL87
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST12:
	.long	.LVL85
	.long	.LVL86
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+913
	.sleb128 0
	.long	0
	.long	0
.LLST13:
	.long	.LVL92
	.long	.LVL98
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST14:
	.long	.LVL93
	.long	.LVL94
	.word	0x1
	.byte	0x68
	.long	.LVL95
	.long	.LVL96
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL96
	.long	.LVL99
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST15:
	.long	.LVL97
	.long	.LVL98
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+997
	.sleb128 0
	.long	0
	.long	0
.LLST16:
	.long	.LVL108
	.long	.LVL114
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST17:
	.long	.LVL109
	.long	.LVL110
	.word	0x1
	.byte	0x68
	.long	.LVL111
	.long	.LVL112
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL112
	.long	.LVL115
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST18:
	.long	.LVL113
	.long	.LVL114
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1081
	.sleb128 0
	.long	0
	.long	0
.LLST19:
	.long	.LVL122
	.long	.LVL128
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST20:
	.long	.LVL123
	.long	.LVL124
	.word	0x1
	.byte	0x68
	.long	.LVL125
	.long	.LVL126
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL126
	.long	.LVL129
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST21:
	.long	.LVL127
	.long	.LVL128
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1165
	.sleb128 0
	.long	0
	.long	0
.LLST22:
	.long	.LVL137
	.long	.LVL138
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL139
	.long	.LVL140
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL140
	.long	.LVL143
	.word	0x3
	.byte	0x80
	.sleb128 -1
	.byte	0x9f
	.long	.LVL143
	.long	.LVL144-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL144-1
	.long	.LVL166
	.word	0x3
	.byte	0x80
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL134
	.long	.LVL166
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST24:
	.long	.LVL135
	.long	.LVL166
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST25:
	.long	.LVL139
	.long	.LVL166
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST26:
	.long	.LVL145
	.long	.LVL146-1
	.word	0x1
	.byte	0x64
	.long	.LVL147
	.long	.LVL148-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST27:
	.long	.LVL153
	.long	.LVL159
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST28:
	.long	.LVL154
	.long	.LVL155
	.word	0x1
	.byte	0x68
	.long	.LVL156
	.long	.LVL157
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL157
	.long	.LVL159
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST29:
	.long	.LVL158
	.long	.LVL159
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1339
	.sleb128 0
	.long	0
	.long	0
.LLST30:
	.long	.LVL160
	.long	.LVL166
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST31:
	.long	.LVL161
	.long	.LVL162
	.word	0x1
	.byte	0x68
	.long	.LVL163
	.long	.LVL164
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL164
	.long	.LVL166
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST32:
	.long	.LVL165
	.long	.LVL166
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1427
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB17
	.long	.LFE17
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF54:
	.string	"menu_TestModulePattern"
.LASF75:
	.string	"menu_ProcessMessage"
.LASF125:
	.string	"__iCliRetVal"
.LASF17:
	.string	"_delay_ms"
.LASF46:
	.string	"midiLastOutNote"
.LASF85:
	.string	"lcd_cursosblink"
.LASF61:
	.string	"panicString"
.LASF96:
	.string	"midiIn_Process"
.LASF8:
	.string	"long long unsigned int"
.LASF90:
	.string	"midi_CheckTxActiveSense"
.LASF45:
	.string	"midi_RegisterChanged"
.LASF93:
	.string	"lcd_noteOut"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF47:
	.string	"midiLastOutManual"
.LASF103:
	.string	"init_message"
.LASF28:
	.string	"pTime"
.LASF121:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF101:
	.string	"init_log"
.LASF111:
	.string	"init_Manual2Midi"
.LASF37:
	.string	"time_Uptime"
.LASF3:
	.string	"long int"
.LASF40:
	.string	"pipe_PowerStatus"
.LASF48:
	.string	"midiLastInNote"
.LASF110:
	.string	"init_Midi2Manual"
.LASF106:
	.string	"init_ADC"
.LASF53:
	.string	"sw_version"
.LASF16:
	.string	"double"
.LASF52:
	.string	"lcdData"
.LASF33:
	.string	"lcd_cursorPos"
.LASF66:
	.string	"menu_Init"
.LASF119:
	.string	"lcd_clrscr"
.LASF105:
	.string	"init_Timers"
.LASF14:
	.string	"__tmp"
.LASF91:
	.string	"midi_CheckRxActiveSense"
.LASF60:
	.string	"releaseKeyString"
.LASF27:
	.string	"__ToDo"
.LASF76:
	.string	"menu_ModuleTestExecute"
.LASF112:
	.string	"init_Midi"
.LASF2:
	.string	"unsigned int"
.LASF83:
	.string	"lcd_putc"
.LASF6:
	.string	"long unsigned int"
.LASF94:
	.string	"lcd_ManualOutDec"
.LASF26:
	.string	"sreg_save"
.LASF118:
	.string	"lcd_initCG"
.LASF19:
	.string	"__ms"
.LASF104:
	.string	"init_HwTimer"
.LASF120:
	.string	"module_StartPowerOn"
.LASF122:
	.string	".././main.c"
.LASF81:
	.string	"lcd_cursoroff"
.LASF20:
	.string	"updateStatus"
.LASF59:
	.string	"prog_name"
.LASF108:
	.string	"init_Serial1MIDI"
.LASF92:
	.string	"lcd_ChannelOut"
.LASF50:
	.string	"midiLastInManual"
.LASF72:
	.string	"midi_resetRegisters"
.LASF62:
	.string	"menuNotActive"
.LASF80:
	.string	"lcd_blank"
.LASF12:
	.string	"Timer"
.LASF32:
	.string	"ovflCount"
.LASF9:
	.string	"sizetype"
.LASF114:
	.string	"init_Manual2Module"
.LASF71:
	.string	"midi_AllManualsOff"
.LASF69:
	.string	"message_get"
.LASF70:
	.string	"midiSendAllNotesOff"
.LASF107:
	.string	"init_Pipe"
.LASF25:
	.string	"saveCursor"
.LASF34:
	.string	"lcd_cursorIsOn"
.LASF11:
	.string	"prescaler"
.LASF77:
	.string	"menu_deleteMessage"
.LASF123:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF124:
	.string	"__builtin_avr_delay_cycles"
.LASF1:
	.string	"unsigned char"
.LASF65:
	.string	"softKeys_toLCD"
.LASF73:
	.string	"midi_CouplerReset"
.LASF82:
	.string	"lcd_dec2out"
.LASF74:
	.string	"menu_DisplayMainMessage_P"
.LASF84:
	.string	"log_putError"
.LASF10:
	.string	"counter"
.LASF41:
	.string	"midiRxInIndex"
.LASF67:
	.string	"menu_InitLCD"
.LASF58:
	.string	"module_string"
.LASF43:
	.string	"midiRxOvflCount"
.LASF89:
	.string	"menu_showPowerState"
.LASF115:
	.string	"init_SoftKeys"
.LASF5:
	.string	"uint32_t"
.LASF36:
	.string	"msgPipe_Handling"
.LASF49:
	.string	"midiLastInChannel"
.LASF86:
	.string	"message_status"
.LASF13:
	.string	"char"
.LASF116:
	.string	"eeprom_UpdateALL"
.LASF97:
	.string	"pipeMsgStatus"
.LASF63:
	.string	"softKey_MessageKey_ToSoftKeyNr"
.LASF21:
	.string	"oldcursor"
.LASF102:
	.string	"init_Serial0SerUSB"
.LASF57:
	.string	"eprom_ok"
.LASF109:
	.string	"init_PipeModules"
.LASF78:
	.string	"lcd_goto"
.LASF15:
	.string	"__ticks_dc"
.LASF18:
	.string	"__iRestore"
.LASF88:
	.string	"module_PowerControl"
.LASF22:
	.string	"keyMessage"
.LASF38:
	.string	"swTimer"
.LASF29:
	.string	"oldCursor"
.LASF95:
	.string	"serial1MIDIReadRx"
.LASF39:
	.string	"time_UpTimeUpdated"
.LASF87:
	.string	"menu_ClearAllDisp"
.LASF4:
	.string	"uint8_t"
.LASF99:
	.string	"midiKeyPress_Process"
.LASF79:
	.string	"lcd_puts_P"
.LASF44:
	.string	"midiTxOvflCount"
.LASF100:
	.string	"init_iopins"
.LASF68:
	.string	"softKey_WantLong"
.LASF31:
	.string	"separator"
.LASF24:
	.string	"softKey_Nr"
.LASF113:
	.string	"init_Registers"
.LASF55:
	.string	"menu_TestModuleBitCounter"
.LASF64:
	.string	"softKey_Execute"
.LASF23:
	.string	"keyMasked"
.LASF35:
	.string	"msgPipeOverflow"
.LASF117:
	.string	"lcd_init"
.LASF126:
	.string	"main"
.LASF30:
	.string	"oldBlink"
.LASF98:
	.string	"pipeMsgGet"
.LASF42:
	.string	"midiRxOutIndex"
.LASF56:
	.string	"log_unreadErrors"
.LASF51:
	.string	"midiLastProgram"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_clear_bss
