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
	.loc 1 41 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 45 0
	call init_iopins
.LVL0:
	.loc 1 47 0
	in r24,0x5
	andi r24,lo8(-49)
	out 0x5,r24
	.loc 1 49 0
	call init_log
.LVL1:
	.loc 1 50 0
	call init_Serial0SerUSB
.LVL2:
	.loc 1 51 0
	call init_message
.LVL3:
	.loc 1 52 0
	call init_HwTimer
.LVL4:
	.loc 1 53 0
	call init_Timers
.LVL5:
	.loc 1 54 0
	call init_ADC
.LVL6:
	.loc 1 55 0
	call init_Pipe
.LVL7:
	.loc 1 56 0
	call init_Serial1MIDI
.LVL8:
	.loc 1 57 0
	call init_PipeModules
.LVL9:
	.loc 1 58 0
	call init_Midi2Manual
.LVL10:
	.loc 1 59 0
	call init_Manual2Midi
.LVL11:
	.loc 1 60 0
	call init_Midi
.LVL12:
	.loc 1 61 0
	call init_Registers
.LVL13:
	.loc 1 62 0
	call init_Manual2Module
.LVL14:
	.loc 1 63 0
	call init_SoftKeys
.LVL15:
	.loc 1 64 0
	call eeprom_UpdateALL
.LVL16:
	.loc 1 65 0
	sts menu_TestModulePattern,__zero_reg__
	.loc 1 70 0
	call lcd_init
.LVL17:
	.loc 1 71 0
	call lcd_initCG
.LVL18:
	.loc 1 72 0
	call lcd_clrscr
.LVL19:
	.loc 1 73 0
	ldi r24,lo8(67)
	call lcd_goto
.LVL20:
	.loc 1 74 0
	ldi r24,lo8(prog_name)
	ldi r25,hi8(prog_name)
	call lcd_puts_P
.LVL21:
	.loc 1 75 0
	ldi r24,lo8(27)
	call lcd_goto
.LVL22:
	.loc 1 76 0
	ldi r24,lo8(sw_version)
	ldi r25,hi8(sw_version)
	call lcd_puts_P
.LVL23:
	.loc 1 77 0
/* #APP */
 ;  77 ".././main.c" 1
	sei
 ;  0 "" 2
.LVL24:
/* #NOAPP */
.LBB70:
.LBB71:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 2 187 0
	ldi r18,lo8(3839999)
	ldi r20,hi8(3839999)
	ldi r24,hlo8(3839999)
1:	subi r18,1
	sbci r20,0
	sbci r24,0
	brne 1b
	rjmp .
	nop
.LVL25:
.LBE71:
.LBE70:
	.loc 1 79 0
	call init_Serial3SerESP
.LVL26:
	.loc 1 80 0
	call lcd_clrscr
.LVL27:
	.loc 1 84 0
	call module_StartPowerOn
.LVL28:
	.loc 1 85 0
	ldi r24,lo8(-1)
	sts msgPipe_Handling,r24
	.loc 1 87 0
	sts menuNotActive,r24
.LVL29:
	.loc 1 90 0
	ldi r24,lo8(-2)
	sts messageFromESP,r24
	.loc 1 89 0
	ldi r29,lo8(-1)
.LVL30:
.L2:
.LBB72:
	.loc 1 93 0
	in r24,0x5
	andi r24,lo8(-49)
	out 0x5,r24
	.loc 1 95 0
	lds r18,serESPRxInIndex
	lds r19,serESPRxInIndex+1
	lds r24,serESPRxOutIndex
	lds r25,serESPRxOutIndex+1
	cp r18,r24
	cpc r19,r25
	brne .+2
	rjmp .L3
.LBB73:
	.loc 1 96 0
	call serial3SER_ESPReadRx
.LVL31:
	mov r28,r24
.LVL32:
	.loc 1 97 0
	sts messageFromESP,r24
	.loc 1 98 0
	call serial0SER_USBSend
.LVL33:
	.loc 1 99 0
	ldi r24,lo8(127)
	add r24,r28
	cpi r24,lo8(6)
	brsh .L4
	.loc 1 101 0
	ldi r24,lo8(-128)
	add r24,r28
	call message_push
.LVL34:
	rjmp .L3
.L4:
	.loc 1 102 0
	cpi r28,lo8(-112)
	breq .+2
	rjmp .L3
	.loc 1 105 0
	lds r24,serESPInBuffer
	cpi r24,lo8(-112)
	breq .+2
	rjmp .L3
	ldi r25,lo8(1)
.L6:
.LVL35:
.LBB74:
	.loc 1 110 0
	mov r30,r25
	mov __tmp_reg__,r25
	lsl r0
	sbc r31,r31
	subi r30,lo8(-(serESPInBuffer))
	sbci r31,hi8(-(serESPInBuffer))
	ld r24,Z
	cpi r24,lo8(61)
	breq .L5
	.loc 1 113 0
	subi r25,lo8(-(1))
.LVL36:
	.loc 1 114 0
	cpi r25,lo8(8)
	brlt .L6
.L5:
	.loc 1 116 0
	cpi r25,lo8(8)
	brlt .+2
	rjmp .L3
.LBB75:
	.loc 1 118 0
	mov r24,r25
	asr r24
.LVL37:
.LBB76:
	.loc 1 120 0
	ldi r18,0
	rjmp .L7
.LVL38:
.L8:
	.loc 1 121 0 discriminator 3
	mov r30,r18
	ldi r31,0
	subi r30,lo8(-(serESPMidiTmp))
	sbci r31,hi8(-(serESPMidiTmp))
	st Z,__zero_reg__
	.loc 1 120 0 discriminator 3
	subi r18,lo8(-(1))
.LVL39:
.L7:
	.loc 1 120 0 is_stmt 0 discriminator 1
	cpi r18,lo8(3)
	brlo .L8
	rjmp .L9
.LVL40:
.L11:
.LBE76:
.LBB77:
	.loc 1 125 0 is_stmt 1
	mov r30,r25
	mov __tmp_reg__,r25
	lsl r0
	sbc r31,r31
	subi r30,lo8(-(serESPInBuffer))
	sbci r31,hi8(-(serESPInBuffer))
	ld r19,Z
	ldi r18,lo8(-48)
	add r18,r19
.LVL41:
	.loc 1 126 0
	cpi r18,lo8(10)
	brlo .L10
	.loc 1 127 0
	ldi r18,lo8(-41)
.LVL42:
	add r18,r19
.LVL43:
.L10:
	.loc 1 129 0
	mov r26,r18
	andi r26,lo8(15)
.LVL44:
	.loc 1 130 0
	ldi r30,lo8(serESPMidiTmp)
	ldi r31,hi8(serESPMidiTmp)
	ldd r22,Z+2
	ldi r18,lo8(16)
	mul r22,r18
	movw r22,r0
	clr __zero_reg__
	ldd r20,Z+1
	mov r18,r20
	swap r18
	andi r18,lo8(15)
	or r22,r18
	std Z+2,r22
	.loc 1 131 0
	ldi r18,lo8(16)
	mul r20,r18
	movw r20,r0
	clr __zero_reg__
	ld r18,Z
	mov r19,r18
	swap r19
	andi r19,lo8(15)
	or r20,r19
	std Z+1,r20
	.loc 1 132 0
	ldi r20,lo8(16)
	mul r18,r20
	movw r18,r0
	clr __zero_reg__
	or r18,r26
	st Z,r18
.LVL45:
.L9:
.LBE77:
	.loc 1 123 0
	subi r25,lo8(-(-1))
.LVL46:
	cp __zero_reg__,r25
	brlt .L11
	.loc 1 135 0
	call proc_ESPmidi
.LVL47:
.L3:
.LBE75:
.LBE74:
.LBE73:
	.loc 1 141 0
	call message_status
.LVL48:
	tst r24
	brne .+2
	rjmp .L12
.LBB78:
	.loc 1 142 0
	in r24,0x5
	ori r24,lo8(48)
	out 0x5,r24
	.loc 1 143 0
	call message_get
.LVL49:
	mov r28,r24
.LVL50:
	.loc 1 144 0
	cpi r24,lo8(-122)
	brne .L13
	.loc 1 146 0
	call midiSendAllNotesOff
.LVL51:
	.loc 1 147 0
	call midi_AllManualsOff
.LVL52:
	.loc 1 148 0
	call midi_resetRegisters
.LVL53:
	.loc 1 149 0
	call midi_CouplerReset
.LVL54:
	.loc 1 150 0
	ldi r24,lo8(panicString)
	ldi r25,hi8(panicString)
	call menu_DisplayMainMessage_P
.LVL55:
.L13:
	.loc 1 152 0
	lds r24,menuNotActive
	cpi r24,lo8(-1)
	brne .L14
.LBB79:
	.loc 1 155 0
	mov r24,r28
	andi r24,lo8(63)
.LVL56:
	.loc 1 156 0
	cpi r28,lo8(5)
	brne .L15
	.loc 1 159 0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.LVL57:
	call menu_Init
.LVL58:
	.loc 1 160 0
	call menu_InitLCD
.LVL59:
	.loc 1 161 0
	sts menuNotActive,__zero_reg__
	.loc 1 162 0
	ldi r24,0
	call softKey_WantLong
.LVL60:
	rjmp .L12
.LVL61:
.L15:
	.loc 1 163 0
	ldi r25,lo8(-1)
	add r25,r24
	cpi r25,lo8(4)
	brsh .L12
.LBB80:
	.loc 1 165 0
	call softKey_MessageKey_ToSoftKeyNr
.LVL62:
	.loc 1 166 0
	mov r22,r28
	call softKey_Execute
.LVL63:
	sts menuNotActive,r24
	.loc 1 167 0
	call softKeys_toLCD
.LVL64:
	rjmp .L12
.LVL65:
.L14:
.LBE80:
.LBE79:
	.loc 1 171 0
	lds r24,menu_TestModulePattern
	cpse r24,__zero_reg__
	rjmp .L16
	.loc 1 173 0
	mov r24,r28
	call menu_ProcessMessage
.LVL66:
	sts menuNotActive,r24
	rjmp .L12
.L16:
	.loc 1 176 0
	ldi r24,lo8(-3)
	sts menu_TestModuleBitCounter,r24
	.loc 1 177 0
	call menu_ModuleTestExecute
.LVL67:
.L12:
.LBE78:
	.loc 1 181 0
	lds r24,menuNotActive
	cpi r24,lo8(-1)
	brne .L65
	.loc 1 183 0
	cpi r29,lo8(-1)
	brne .L17
	.loc 1 185 0
	call menu_ClearAllDisp
.LVL68:
	.loc 1 186 0
	call softKeys_toLCD
.LVL69:
	.loc 1 187 0
	ldi r24,lo8(-1)
	call softKey_WantLong
.LVL70:
	.loc 1 188 0
	ldi r29,0
	rjmp .L17
.LVL71:
.L65:
	.loc 1 192 0
	ldi r29,lo8(-1)
.LVL72:
.L17:
	.loc 1 194 0
	in r24,0x5
	andi r24,lo8(-49)
	out 0x5,r24
	.loc 1 196 0
	lds r24,swTimer+14
	cpse r24,__zero_reg__
	rjmp .L18
.LBB81:
	.loc 1 199 0
	lds r28,lcd_cursorPos
.LVL73:
	.loc 1 200 0
	call menu_deleteMessage
.LVL74:
	.loc 1 201 0
	mov r24,r28
	call lcd_goto
.LVL75:
	.loc 1 203 0
	ldi r24,lo8(-1)
	sts swTimer+14,r24
.LVL76:
.L18:
.LBE81:
	.loc 1 207 0
	lds r24,swTimer+12
	cpse r24,__zero_reg__
	rjmp .L19
	.loc 1 208 0
	lds r24,menu_TestModulePattern
	tst r24
	breq .L20
	.loc 1 209 0
	call menu_ModuleTestExecute
.LVL77:
	rjmp .L19
.L20:
	.loc 1 211 0
	ldi r24,lo8(-1)
	sts swTimer+12,r24
.L19:
	.loc 1 217 0
	lds r24,swTimer+2
	cpse r24,__zero_reg__
	rjmp .L21
	.loc 1 218 0
	call module_PowerControl
.LVL78:
	.loc 1 219 0
	call menu_showPowerState
.LVL79:
	.loc 1 220 0
	lds r24,menuNotActive
	cpi r24,lo8(-1)
	brne .L21
.LBB82:
	.loc 1 222 0
	lds r28,lcd_cursorPos
.LVL80:
	.loc 1 223 0
	ldi r24,lo8(20)
	call lcd_goto
.LVL81:
	.loc 1 224 0
	lds r24,pipe_PowerStatus
	cpi r24,lo8(1)
	brne .L22
	.loc 1 226 0
	ldi r24,lo8(releaseKeyString)
	ldi r25,hi8(releaseKeyString)
	call lcd_puts_P
.LVL82:
	rjmp .L23
.L22:
	.loc 1 227 0
	cpi r24,lo8(18)
	brne .L23
	.loc 1 228 0
	ldi r24,lo8(20)
	call lcd_blank
.LVL83:
.L23:
	.loc 1 230 0
	mov r24,r28
	call lcd_goto
.LVL84:
.L21:
.LBE82:
	.loc 1 235 0
	lds r24,messageFromESP
	ldi r25,lo8(127)
	add r25,r24
	cpi r25,lo8(6)
	brlo .L24
	.loc 1 236 0
	cpi r24,lo8(-2)
	brne .L25
.L24:
.LBB83:
	.loc 1 238 0
	lds r24,lcd_cursorIsOn
	cpi r24,lo8(-1)
	brne .L26
	.loc 1 239 0
	lds r24,lcd_cursorPos
	call getCursorFromLCDRAMcursor
.LVL85:
	call serial3SER_ESPSend
.LVL86:
	rjmp .L27
.L26:
	.loc 1 241 0
	ldi r24,lo8(127)
	call serial3SER_ESPSend
.LVL87:
.L27:
	.loc 1 243 0
	ldi r24,lo8(-127)
	call serial3SER_ESPSend
.LVL88:
.LBB84:
	.loc 1 245 0
	ldi r28,0
.LBE84:
	.loc 1 244 0
	ldi r30,lo8(lcd_buffer)
	ldi r31,hi8(lcd_buffer)
.LBB85:
	.loc 1 245 0
	rjmp .L28
.LVL89:
.L29:
	.loc 1 246 0 discriminator 3
	movw r16,r30
	subi r16,-1
	sbci r17,-1
.LVL90:
	ld r24,Z
	call serial3SER_ESPSend
.LVL91:
	.loc 1 245 0 discriminator 3
	subi r28,lo8(-(1))
.LVL92:
	.loc 1 246 0 discriminator 3
	movw r30,r16
.LVL93:
.L28:
	.loc 1 245 0 discriminator 1
	cpi r28,lo8(80)
	brlo .L29
.LBE85:
	.loc 1 248 0
	ldi r24,lo8(-128)
	call serial3SER_ESPSend
.LVL94:
.L25:
.LBE83:
	.loc 1 250 0
	ldi r24,lo8(-1)
	sts messageFromESP,r24
	.loc 1 253 0
	call midi_CheckTxActiveSense
.LVL95:
	.loc 1 254 0
	call midi_CheckRxActiveSense
.LVL96:
	.loc 1 258 0
	lds r28,lcd_cursorPos
.LVL97:
	.loc 1 260 0
	lds r24,swTimer+8
	cpi r24,lo8(-1)
	breq .L30
	.loc 1 260 0 is_stmt 0 discriminator 1
	lds r24,swTimer+8
	cpse r24,__zero_reg__
	rjmp .L31
.L30:
	.loc 1 262 0 is_stmt 1
	lds r24,midiLastInNote
	cpi r24,lo8(-1)
	breq .L32
	.loc 1 264 0
	ldi r24,0
	call lcd_goto
.LVL98:
	.loc 1 265 0
	lds r24,midiLastInManual
	cpi r24,lo8(-1)
	brne .L33
	.loc 1 268 0
	lds r24,midiLastInChannel
	call lcd_ChannelOut
.LVL99:
	.loc 1 269 0
	ldi r24,lo8(63)
	call lcd_putc
.LVL100:
	.loc 1 270 0
	lds r24,midiLastInNote
	call lcd_noteOut
.LVL101:
	.loc 1 271 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL102:
	rjmp .L34
.L33:
	.loc 1 275 0
	lds r24,midiLastInNote
	call lcd_noteOut
.LVL103:
	.loc 1 276 0
	ldi r24,lo8(126)
	call lcd_putc
.LVL104:
	.loc 1 277 0
	lds r24,midiLastInManual
	call lcd_ManualOutDec
.LVL105:
	.loc 1 278 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL106:
.L34:
	.loc 1 280 0
	mov r24,r28
	call lcd_goto
.LVL107:
	.loc 1 281 0
	ldi r24,lo8(-1)
	sts midiLastInNote,r24
.LBB86:
	.loc 1 283 0
	in r25,__SREG__
.LVL108:
.LBB87:
.LBB88:
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h"
	.loc 3 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE88:
.LBE87:
	.loc 1 283 0
	ldi r24,lo8(1)
	rjmp .L35
.LVL109:
.L36:
	.loc 1 283 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(35)
.LVL110:
	std Z+8,r24
	std Z+9,__zero_reg__
.LVL111:
	.loc 1 283 0 discriminator 3
	ldi r24,0
.LVL112:
.L35:
	.loc 1 283 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L36
.LVL113:
.LBB89:
.LBB90:
	.loc 3 70 0 is_stmt 1
	out __SREG__,r25
	.loc 3 71 0
.LVL114:
.LBE90:
.LBE89:
.LBE86:
	rjmp .L31
.LVL115:
.L32:
	.loc 1 284 0
	lds r24,midiLastProgram
	cpi r24,lo8(-1)
	breq .L37
	.loc 1 286 0
	ldi r24,0
	call lcd_goto
.LVL116:
	.loc 1 287 0
	ldi r24,lo8(112)
	call lcd_putc
.LVL117:
	.loc 1 288 0
	lds r24,midiLastProgram
	call lcd_dec2out
.LVL118:
	.loc 1 289 0
	ldi r24,lo8(126)
	call lcd_putc
.LVL119:
	.loc 1 290 0
	ldi r24,lo8(-1)
	sts midiLastProgram,r24
.LBB91:
	.loc 1 291 0
	in r25,__SREG__
.LVL120:
.LBB92:
.LBB93:
	.loc 3 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE93:
.LBE92:
	.loc 1 291 0
	ldi r24,lo8(1)
	rjmp .L38
.LVL121:
.L39:
	.loc 1 291 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(35)
.LVL122:
	std Z+8,r24
	std Z+9,__zero_reg__
.LVL123:
	.loc 1 291 0 discriminator 3
	ldi r24,0
.LVL124:
.L38:
	.loc 1 291 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L39
.LVL125:
.LBB94:
.LBB95:
	.loc 3 70 0 is_stmt 1
	out __SREG__,r25
	.loc 3 71 0
.LVL126:
.LBE95:
.LBE94:
.LBE91:
	rjmp .L31
.LVL127:
.L37:
	.loc 1 292 0
	lds r24,swTimer+8
	cpse r24,__zero_reg__
	rjmp .L31
	.loc 1 294 0
	call lcd_goto
.LVL128:
	.loc 1 295 0
	ldi r24,lo8(6)
	call lcd_blank
.LVL129:
	.loc 1 296 0
	mov r24,r28
	call lcd_goto
.LVL130:
	.loc 1 297 0
	ldi r24,lo8(-1)
	sts swTimer+8,r24
.L31:
	.loc 1 301 0
	lds r24,swTimer+10
	cpi r24,lo8(-1)
	breq .L40
	.loc 1 301 0 is_stmt 0 discriminator 1
	lds r24,swTimer+10
	cpse r24,__zero_reg__
	rjmp .L41
.L40:
	.loc 1 302 0 is_stmt 1
	lds r24,midiLastOutNote
	cpi r24,lo8(-1)
	breq .L42
	.loc 1 305 0
	ldi r24,lo8(15)
	call lcd_goto
.LVL131:
	.loc 1 306 0
	lds r24,midiLastOutManual
	call lcd_ManualOutDec
.LVL132:
	.loc 1 307 0
	ldi r24,lo8(126)
	call lcd_putc
.LVL133:
	.loc 1 308 0
	lds r24,midiLastOutNote
	call lcd_noteOut
.LVL134:
	.loc 1 309 0
	mov r24,r28
	call lcd_goto
.LVL135:
	.loc 1 310 0
	ldi r24,lo8(-1)
	sts midiLastOutNote,r24
.LBB96:
	.loc 1 311 0
	in r25,__SREG__
.LVL136:
.LBB97:
.LBB98:
	.loc 3 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE98:
.LBE97:
	.loc 1 311 0
	ldi r24,lo8(1)
	rjmp .L43
.LVL137:
.L44:
	.loc 1 311 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(40)
.LVL138:
	std Z+10,r24
	std Z+11,__zero_reg__
.LVL139:
	.loc 1 311 0 discriminator 3
	ldi r24,0
.LVL140:
.L43:
	.loc 1 311 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L44
.LVL141:
.LBB99:
.LBB100:
	.loc 3 70 0 is_stmt 1
	out __SREG__,r25
	.loc 3 71 0
.LVL142:
.LBE100:
.LBE99:
.LBE96:
	rjmp .L41
.LVL143:
.L42:
	.loc 1 312 0
	lds r24,midi_RegisterChanged
	cpi r24,lo8(-1)
	breq .L45
	.loc 1 314 0
	ldi r24,lo8(15)
	call lcd_goto
.LVL144:
	.loc 1 315 0
	ldi r24,lo8(82)
	call lcd_putc
.LVL145:
	.loc 1 316 0
	lds r24,midi_RegisterChanged
	andi r24,lo8(127)
	call lcd_dec2out
.LVL146:
	.loc 1 318 0
	lds r24,midi_RegisterChanged
	tst r24
	brlt .L66
	ldi r24,lo8(8)
	rjmp .L46
.L66:
	ldi r24,lo8(9)
.L46:
	.loc 1 318 0 is_stmt 0 discriminator 4
	call lcd_putc
.LVL147:
	.loc 1 319 0 is_stmt 1 discriminator 4
	ldi r24,lo8(32)
	call lcd_putc
.LVL148:
	.loc 1 320 0 discriminator 4
	mov r24,r28
	call lcd_goto
.LVL149:
	.loc 1 321 0 discriminator 4
	ldi r24,lo8(-1)
	sts midi_RegisterChanged,r24
.LBB101:
	.loc 1 322 0 discriminator 4
	in r25,__SREG__
.LVL150:
.LBB102:
.LBB103:
	.loc 3 50 0 discriminator 4
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE103:
.LBE102:
	.loc 1 322 0 discriminator 4
	ldi r24,lo8(1)
	rjmp .L47
.LVL151:
.L48:
	.loc 1 322 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(40)
.LVL152:
	std Z+10,r24
	std Z+11,__zero_reg__
.LVL153:
	.loc 1 322 0 discriminator 3
	ldi r24,0
.LVL154:
.L47:
	.loc 1 322 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L48
.LVL155:
.LBB104:
.LBB105:
	.loc 3 70 0 is_stmt 1
	out __SREG__,r25
	.loc 3 71 0
.LVL156:
.LBE105:
.LBE104:
.LBE101:
	rjmp .L41
.LVL157:
.L45:
	.loc 1 323 0
	lds r24,swTimer+10
	cpse r24,__zero_reg__
	rjmp .L41
	.loc 1 326 0
	ldi r24,lo8(15)
	call lcd_goto
.LVL158:
	.loc 1 327 0
	ldi r24,lo8(5)
	call lcd_blank
.LVL159:
	.loc 1 328 0
	mov r24,r28
	call lcd_goto
.LVL160:
	.loc 1 329 0
	ldi r24,lo8(-1)
	sts swTimer+10,r24
.L41:
	.loc 1 334 0
	lds r24,time_UpTimeUpdated
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L49
.LBB106:
	.loc 1 335 0
	sts time_UpTimeUpdated,__zero_reg__
.LVL161:
	.loc 1 338 0
	lds r15,lcd_cursorPos
.LVL162:
	.loc 1 339 0
	lds r28,lcd_cursorIsOn
.LVL163:
	.loc 1 340 0
	cpi r28,lo8(-1)
	brne .L50
	.loc 1 341 0
	call lcd_cursoroff
.LVL164:
.L50:
	.loc 1 344 0
	lds r24,time_Uptime+3
	tst r24
	breq .L67
	.loc 1 348 0
	lds r24,time_Uptime+1
	sbrc r24,0
	rjmp .L68
	.loc 1 350 0
	mov __tmp_reg__,r31
	ldi r31,lo8(58)
	mov r14,r31
	mov r31,__tmp_reg__
	.loc 1 337 0
	ldi r16,lo8(time_Uptime+3)
	ldi r17,hi8(time_Uptime+3)
.LVL165:
	rjmp .L51
.LVL166:
.L67:
	.loc 1 347 0
	mov __tmp_reg__,r31
	ldi r31,lo8(58)
	mov r14,r31
	mov r31,__tmp_reg__
	.loc 1 346 0
	ldi r16,lo8(time_Uptime+2)
	ldi r17,hi8(time_Uptime+2)
	rjmp .L51
.L68:
	.loc 1 352 0
	set
	clr r14
	bld r14,5
	.loc 1 337 0
	ldi r16,lo8(time_Uptime+3)
	ldi r17,hi8(time_Uptime+3)
.LVL167:
.L51:
	.loc 1 354 0
	ldi r24,lo8(7)
	call lcd_goto
.LVL168:
	.loc 1 355 0
	movw r30,r16
	ld r24,Z
	call lcd_dec2out
.LVL169:
	.loc 1 356 0
	mov r24,r14
	call lcd_putc
.LVL170:
	.loc 1 357 0
	movw r30,r16
	sbiw r30,1
.LVL171:
	ld r24,Z
	call lcd_dec2out
.LVL172:
	.loc 1 359 0
	lds r20,midiRxOvflCount
.LVL173:
	.loc 1 360 0
	tst r20
	breq .L52
	.loc 1 361 0
	ldi r21,0
	ldi r22,0
	ldi r24,lo8(3)
	call log_putError
.LVL174:
	.loc 1 362 0
	sts midiRxOvflCount,__zero_reg__
.L52:
	.loc 1 364 0
	lds r20,midiTxOvflCount
.LVL175:
	.loc 1 365 0
	tst r20
	breq .L53
	.loc 1 366 0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r24,lo8(3)
	call log_putError
.LVL176:
	.loc 1 367 0
	sts midiTxOvflCount,__zero_reg__
.L53:
	.loc 1 370 0
	lds r24,pipe_PowerStatus
	sbrs r24,4
	rjmp .L69
	ldi r24,lo8(32)
	rjmp .L54
.L69:
	ldi r24,lo8(9)
.L54:
	.loc 1 370 0 is_stmt 0 discriminator 4
	call lcd_putc
.LVL177:
	.loc 1 371 0 is_stmt 1 discriminator 4
	lds r24,log_unreadErrors
	cpi r24,lo8(-1)
	brne .L70
	.loc 1 371 0 is_stmt 0
	ldi r24,lo8(69)
	rjmp .L55
.L70:
	ldi r24,lo8(32)
.L55:
	.loc 1 371 0 discriminator 4
	call lcd_putc
.LVL178:
	.loc 1 373 0 is_stmt 1 discriminator 4
	mov r24,r15
	call lcd_goto
.LVL179:
	.loc 1 374 0 discriminator 4
	cpi r28,lo8(-1)
	brne .L56
	.loc 1 375 0
	call lcd_cursosblink
.LVL180:
.L56:
	.loc 1 379 0
	lds r24,swTimer+8
	cpi r24,lo8(-1)
	brne .L57
.LBB107:
	.loc 1 380 0
	in r25,__SREG__
.LVL181:
.LBB108:
.LBB109:
	.loc 3 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE109:
.LBE108:
	.loc 1 380 0
	ldi r24,lo8(1)
	rjmp .L58
.LVL182:
.L59:
	.loc 1 380 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(125)
.LVL183:
	std Z+8,r24
	std Z+9,__zero_reg__
.LVL184:
	.loc 1 380 0 discriminator 3
	ldi r24,0
.LVL185:
.L58:
	.loc 1 380 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L59
.LVL186:
.LBB110:
.LBB111:
	.loc 3 70 0 is_stmt 1
	out __SREG__,r25
	.loc 3 71 0
.LVL187:
.L57:
.LBE111:
.LBE110:
.LBE107:
	.loc 1 382 0
	lds r24,swTimer+10
	cpi r24,lo8(-1)
	brne .L49
.LBB112:
	.loc 1 383 0
	in r25,__SREG__
.LVL188:
.LBB113:
.LBB114:
	.loc 3 50 0
/* #APP */
 ;  50 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE114:
.LBE113:
	.loc 1 383 0
	ldi r24,lo8(1)
	rjmp .L60
.LVL189:
.L61:
	.loc 1 383 0 discriminator 3
	ldi r30,lo8(swTimer)
	ldi r31,hi8(swTimer)
	ldi r24,lo8(125)
.LVL190:
	std Z+10,r24
	std Z+11,__zero_reg__
.LVL191:
	.loc 1 383 0 discriminator 3
	ldi r24,0
.LVL192:
.L60:
	.loc 1 383 0 is_stmt 0 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L61
.LVL193:
.LBB115:
.LBB116:
	.loc 3 70 0 is_stmt 1
	out __SREG__,r25
	.loc 3 71 0
.LVL194:
.L49:
.LBE116:
.LBE115:
.LBE112:
.LBE106:
	.loc 1 388 0
	lds r24,msgPipeOverflow
	cpi r24,lo8(-1)
	brne .L62
	.loc 1 389 0
	sts msgPipeOverflow,__zero_reg__
	.loc 1 390 0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r24,lo8(4)
	call log_putError
.LVL195:
.L62:
	.loc 1 392 0
	in r24,0x5
	.loc 1 392 0
	andi r24,lo8(-49)
	ori r24,lo8(32)
	out 0x5,r24
	.loc 1 394 0
	lds r25,midiRxInIndex
	lds r24,midiRxOutIndex
	cp r25,r24
	breq .L63
	.loc 1 395 0
	call serial1MIDIReadRx
.LVL196:
	call midiIn_Process
.LVL197:
.L63:
	.loc 1 398 0
	call pipeMsgStatus
.LVL198:
	cpi r24,lo8(-1)
	breq .+2
	rjmp .L2
	.loc 1 399 0
	call pipeMsgGet
.LVL199:
	call midiKeyPress_Process
.LVL200:
	rjmp .L2
.LBE72:
	.cfi_endproc
.LFE17:
	.size	main, .-main
	.comm	messageFromESP,1,1
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
	.long	0x11bf
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF139
	.byte	0xc
	.long	.LASF140
	.long	.LASF141
	.long	.Ldebug_ranges0+0x18
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x4
	.byte	0x7d
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x4
	.byte	0x7e
	.long	0x46
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.long	.LASF6
	.byte	0x4
	.byte	0x82
	.long	0x6d
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.byte	0x4f
	.long	0xae
	.uleb128 0x6
	.long	.LASF11
	.byte	0x5
	.byte	0x50
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF12
	.byte	0x5
	.byte	0x51
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF13
	.byte	0x5
	.byte	0x52
	.long	0x89
	.uleb128 0x7
	.long	0x3b
	.long	0xc9
	.uleb128 0x8
	.long	0x82
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x3b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF14
	.uleb128 0xa
	.long	0xcf
	.uleb128 0xa
	.long	0x3b
	.uleb128 0xb
	.long	.LASF18
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.byte	0x3
	.long	0x119
	.uleb128 0xc
	.long	.LASF20
	.byte	0x2
	.byte	0xa6
	.long	0x119
	.uleb128 0xd
	.long	.LASF15
	.byte	0x2
	.byte	0xa8
	.long	0x119
	.uleb128 0xd
	.long	.LASF16
	.byte	0x2
	.byte	0xac
	.long	0x62
	.uleb128 0xe
	.byte	0x1
	.long	.LASF142
	.byte	0x2
	.byte	0xad
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF17
	.uleb128 0xf
	.long	.LASF143
	.byte	0x3
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0xb
	.long	.LASF19
	.byte	0x3
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x146
	.uleb128 0x10
	.string	"__s"
	.byte	0x3
	.byte	0x44
	.long	0x146
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0xdb
	.uleb128 0x11
	.byte	0x1
	.long	.LASF144
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.long	0x4d
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xbb5
	.uleb128 0x12
	.long	.LASF21
	.byte	0x1
	.byte	0x59
	.long	0x3b
	.long	.LLST0
	.uleb128 0x13
	.long	0xe0
	.long	.LBB70
	.long	.LBE70
	.byte	0x1
	.byte	0x4e
	.long	0x1b3
	.uleb128 0x14
	.long	0xed
	.long	.LLST1
	.uleb128 0x15
	.long	.LBB71
	.long	.LBE71
	.uleb128 0x16
	.long	0xf8
	.long	.LLST2
	.uleb128 0x16
	.long	0x103
	.long	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LBB72
	.long	.LBE72
	.long	0xa99
	.uleb128 0x18
	.long	.LASF22
	.byte	0x1
	.word	0x102
	.long	0x3b
	.long	.LLST4
	.uleb128 0x17
	.long	.LBB73
	.long	.LBE73
	.long	0x290
	.uleb128 0x12
	.long	.LASF23
	.byte	0x1
	.byte	0x60
	.long	0x3b
	.long	.LLST5
	.uleb128 0x17
	.long	.LBB74
	.long	.LBE74
	.long	0x261
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x6b
	.long	0x29
	.long	.LLST6
	.uleb128 0x15
	.long	.LBB75
	.long	.LBE75
	.uleb128 0x12
	.long	.LASF24
	.byte	0x1
	.byte	0x76
	.long	0x3b
	.long	.LLST7
	.uleb128 0x17
	.long	.LBB76
	.long	.LBE76
	.long	0x239
	.uleb128 0x19
	.string	"j"
	.byte	0x1
	.byte	0x78
	.long	0x3b
	.long	.LLST8
	.byte	0
	.uleb128 0x17
	.long	.LBB77
	.long	.LBE77
	.long	0x256
	.uleb128 0x12
	.long	.LASF25
	.byte	0x1
	.byte	0x7d
	.long	0x3b
	.long	.LLST9
	.byte	0
	.uleb128 0x1a
	.long	.LVL47
	.long	0xe6f
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LVL31
	.long	0xe7c
	.uleb128 0x1b
	.long	.LVL33
	.long	0xe89
	.long	0x27e
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL34
	.long	0xe96
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0x8c
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LBB78
	.long	.LBE78
	.long	0x3bb
	.uleb128 0x12
	.long	.LASF26
	.byte	0x1
	.byte	0x8f
	.long	0x3b
	.long	.LLST10
	.uleb128 0x17
	.long	.LBB79
	.long	.LBE79
	.long	0x354
	.uleb128 0x12
	.long	.LASF27
	.byte	0x1
	.byte	0x9b
	.long	0x3b
	.long	.LLST11
	.uleb128 0x17
	.long	.LBB80
	.long	.LBE80
	.long	0x319
	.uleb128 0x12
	.long	.LASF28
	.byte	0x1
	.byte	0xa5
	.long	0x3b
	.long	.LLST12
	.uleb128 0x1b
	.long	.LVL62
	.long	0xea3
	.long	0x2fb
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x1b
	.long	.LVL63
	.long	0xeb0
	.long	0x30f
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.long	.LVL64
	.long	0xebd
	.byte	0
	.uleb128 0x1b
	.long	.LVL58
	.long	0xeca
	.long	0x33b
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x1c
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
	.uleb128 0x1a
	.long	.LVL59
	.long	0xed8
	.uleb128 0x1d
	.long	.LVL60
	.long	0xee6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LVL49
	.long	0xef3
	.uleb128 0x1a
	.long	.LVL51
	.long	0xf00
	.uleb128 0x1a
	.long	.LVL52
	.long	0xf0d
	.uleb128 0x1a
	.long	.LVL53
	.long	0xf1a
	.uleb128 0x1a
	.long	.LVL54
	.long	0xf27
	.uleb128 0x1b
	.long	.LVL55
	.long	0xf34
	.long	0x39d
	.uleb128 0x1c
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
	.uleb128 0x1b
	.long	.LVL66
	.long	0xf41
	.long	0x3b1
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.long	.LVL67
	.long	0xf4f
	.byte	0
	.uleb128 0x17
	.long	.LBB81
	.long	.LBE81
	.long	0x3f1
	.uleb128 0x12
	.long	.LASF29
	.byte	0x1
	.byte	0xc7
	.long	0x3b
	.long	.LLST13
	.uleb128 0x1a
	.long	.LVL74
	.long	0xf5d
	.uleb128 0x1d
	.long	.LVL75
	.long	0xf6a
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LBB82
	.long	.LBE82
	.long	0x460
	.uleb128 0x12
	.long	.LASF29
	.byte	0x1
	.byte	0xde
	.long	0x3b
	.long	.LLST14
	.uleb128 0x1b
	.long	.LVL81
	.long	0xf6a
	.long	0x420
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x44
	.byte	0
	.uleb128 0x1b
	.long	.LVL82
	.long	0xf77
	.long	0x43c
	.uleb128 0x1c
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
	.uleb128 0x1b
	.long	.LVL83
	.long	0xf84
	.long	0x44f
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x44
	.byte	0
	.uleb128 0x1d
	.long	.LVL84
	.long	0xf6a
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LBB83
	.long	.LBE83
	.long	0x4e7
	.uleb128 0x12
	.long	.LASF30
	.byte	0x1
	.byte	0xf4
	.long	0xc9
	.long	.LLST15
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0
	.long	0x49c
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0xf5
	.long	0x3b
	.long	.LLST16
	.uleb128 0x1a
	.long	.LVL91
	.long	0xf91
	.byte	0
	.uleb128 0x1a
	.long	.LVL85
	.long	0xf9e
	.uleb128 0x1a
	.long	.LVL86
	.long	0xf91
	.uleb128 0x1b
	.long	.LVL87
	.long	0xf91
	.long	0x4c2
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7f
	.byte	0
	.uleb128 0x1b
	.long	.LVL88
	.long	0xf91
	.long	0x4d6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x81
	.byte	0
	.uleb128 0x1d
	.long	.LVL94
	.long	0xf91
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LBB86
	.long	.LBE86
	.long	0x53f
	.uleb128 0x18
	.long	.LASF31
	.byte	0x1
	.word	0x11b
	.long	0x3b
	.long	.LLST17
	.uleb128 0x18
	.long	.LASF32
	.byte	0x1
	.word	0x11b
	.long	0x3b
	.long	.LLST18
	.uleb128 0x1f
	.long	0x120
	.long	.LBB87
	.long	.LBE87
	.byte	0x1
	.word	0x11b
	.uleb128 0x20
	.long	0x12d
	.long	.LBB89
	.long	.LBE89
	.byte	0x1
	.word	0x11b
	.uleb128 0x14
	.long	0x13a
	.long	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LBB91
	.long	.LBE91
	.long	0x597
	.uleb128 0x18
	.long	.LASF31
	.byte	0x1
	.word	0x123
	.long	0x3b
	.long	.LLST20
	.uleb128 0x18
	.long	.LASF32
	.byte	0x1
	.word	0x123
	.long	0x3b
	.long	.LLST21
	.uleb128 0x1f
	.long	0x120
	.long	.LBB92
	.long	.LBE92
	.byte	0x1
	.word	0x123
	.uleb128 0x20
	.long	0x12d
	.long	.LBB94
	.long	.LBE94
	.byte	0x1
	.word	0x123
	.uleb128 0x14
	.long	0x13a
	.long	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LBB96
	.long	.LBE96
	.long	0x5ef
	.uleb128 0x18
	.long	.LASF31
	.byte	0x1
	.word	0x137
	.long	0x3b
	.long	.LLST23
	.uleb128 0x18
	.long	.LASF32
	.byte	0x1
	.word	0x137
	.long	0x3b
	.long	.LLST24
	.uleb128 0x1f
	.long	0x120
	.long	.LBB97
	.long	.LBE97
	.byte	0x1
	.word	0x137
	.uleb128 0x20
	.long	0x12d
	.long	.LBB99
	.long	.LBE99
	.byte	0x1
	.word	0x137
	.uleb128 0x14
	.long	0x13a
	.long	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LBB101
	.long	.LBE101
	.long	0x647
	.uleb128 0x18
	.long	.LASF31
	.byte	0x1
	.word	0x142
	.long	0x3b
	.long	.LLST26
	.uleb128 0x18
	.long	.LASF32
	.byte	0x1
	.word	0x142
	.long	0x3b
	.long	.LLST27
	.uleb128 0x1f
	.long	0x120
	.long	.LBB102
	.long	.LBE102
	.byte	0x1
	.word	0x142
	.uleb128 0x20
	.long	0x12d
	.long	.LBB104
	.long	.LBE104
	.byte	0x1
	.word	0x142
	.uleb128 0x14
	.long	0x13a
	.long	.LLST28
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LBB106
	.long	.LBE106
	.long	0x7f6
	.uleb128 0x18
	.long	.LASF33
	.byte	0x1
	.word	0x151
	.long	0xc9
	.long	.LLST29
	.uleb128 0x18
	.long	.LASF34
	.byte	0x1
	.word	0x152
	.long	0x3b
	.long	.LLST30
	.uleb128 0x18
	.long	.LASF35
	.byte	0x1
	.word	0x153
	.long	0x3b
	.long	.LLST31
	.uleb128 0x18
	.long	.LASF36
	.byte	0x1
	.word	0x157
	.long	0xcf
	.long	.LLST32
	.uleb128 0x18
	.long	.LASF37
	.byte	0x1
	.word	0x167
	.long	0x3b
	.long	.LLST33
	.uleb128 0x17
	.long	.LBB107
	.long	.LBE107
	.long	0x6fc
	.uleb128 0x18
	.long	.LASF31
	.byte	0x1
	.word	0x17c
	.long	0x3b
	.long	.LLST34
	.uleb128 0x18
	.long	.LASF32
	.byte	0x1
	.word	0x17c
	.long	0x3b
	.long	.LLST35
	.uleb128 0x1f
	.long	0x120
	.long	.LBB108
	.long	.LBE108
	.byte	0x1
	.word	0x17c
	.uleb128 0x20
	.long	0x12d
	.long	.LBB110
	.long	.LBE110
	.byte	0x1
	.word	0x17c
	.uleb128 0x14
	.long	0x13a
	.long	.LLST36
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LBB112
	.long	.LBE112
	.long	0x754
	.uleb128 0x18
	.long	.LASF31
	.byte	0x1
	.word	0x17f
	.long	0x3b
	.long	.LLST37
	.uleb128 0x18
	.long	.LASF32
	.byte	0x1
	.word	0x17f
	.long	0x3b
	.long	.LLST38
	.uleb128 0x1f
	.long	0x120
	.long	.LBB113
	.long	.LBE113
	.byte	0x1
	.word	0x17f
	.uleb128 0x20
	.long	0x12d
	.long	.LBB115
	.long	.LBE115
	.byte	0x1
	.word	0x17f
	.uleb128 0x14
	.long	0x13a
	.long	.LLST39
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LVL164
	.long	0xfab
	.uleb128 0x1b
	.long	.LVL168
	.long	0xf6a
	.long	0x770
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x37
	.byte	0
	.uleb128 0x1a
	.long	.LVL169
	.long	0xfb8
	.uleb128 0x1b
	.long	.LVL170
	.long	0xfc5
	.long	0x78d
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.long	.LVL172
	.long	0xfb8
	.uleb128 0x1b
	.long	.LVL174
	.long	0xfd2
	.long	0x7ae
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.long	.LVL176
	.long	0xfd2
	.long	0x7c6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x33
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1a
	.long	.LVL177
	.long	0xfc5
	.uleb128 0x1a
	.long	.LVL178
	.long	0xfc5
	.uleb128 0x1b
	.long	.LVL179
	.long	0xf6a
	.long	0x7ec
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.long	.LVL180
	.long	0xfdf
	.byte	0
	.uleb128 0x1a
	.long	.LVL48
	.long	0xfec
	.uleb128 0x1a
	.long	.LVL68
	.long	0xff9
	.uleb128 0x1a
	.long	.LVL69
	.long	0xebd
	.uleb128 0x1b
	.long	.LVL70
	.long	0xee6
	.long	0x825
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.long	.LVL77
	.long	0xf4f
	.uleb128 0x1a
	.long	.LVL78
	.long	0x1007
	.uleb128 0x1a
	.long	.LVL79
	.long	0x1014
	.uleb128 0x1a
	.long	.LVL95
	.long	0x1022
	.uleb128 0x1a
	.long	.LVL96
	.long	0x102f
	.uleb128 0x1b
	.long	.LVL98
	.long	0xf6a
	.long	0x865
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.long	.LVL99
	.long	0x103c
	.uleb128 0x1b
	.long	.LVL100
	.long	0xfc5
	.long	0x882
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x3f
	.byte	0
	.uleb128 0x1a
	.long	.LVL101
	.long	0x1049
	.uleb128 0x1b
	.long	.LVL102
	.long	0xfc5
	.long	0x89f
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1a
	.long	.LVL103
	.long	0x1049
	.uleb128 0x1b
	.long	.LVL104
	.long	0xfc5
	.long	0x8bc
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7e
	.byte	0
	.uleb128 0x1a
	.long	.LVL105
	.long	0x1056
	.uleb128 0x1b
	.long	.LVL106
	.long	0xfc5
	.long	0x8d9
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1b
	.long	.LVL107
	.long	0xf6a
	.long	0x8ed
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL116
	.long	0xf6a
	.long	0x900
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.long	.LVL117
	.long	0xfc5
	.long	0x914
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x70
	.byte	0
	.uleb128 0x1a
	.long	.LVL118
	.long	0xfb8
	.uleb128 0x1b
	.long	.LVL119
	.long	0xfc5
	.long	0x931
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7e
	.byte	0
	.uleb128 0x1a
	.long	.LVL128
	.long	0xf6a
	.uleb128 0x1b
	.long	.LVL129
	.long	0xf84
	.long	0x94d
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x36
	.byte	0
	.uleb128 0x1b
	.long	.LVL130
	.long	0xf6a
	.long	0x961
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL131
	.long	0xf6a
	.long	0x974
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x1a
	.long	.LVL132
	.long	0x1056
	.uleb128 0x1b
	.long	.LVL133
	.long	0xfc5
	.long	0x991
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x7e
	.byte	0
	.uleb128 0x1a
	.long	.LVL134
	.long	0x1049
	.uleb128 0x1b
	.long	.LVL135
	.long	0xf6a
	.long	0x9ae
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL144
	.long	0xf6a
	.long	0x9c1
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x1b
	.long	.LVL145
	.long	0xfc5
	.long	0x9d5
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x52
	.byte	0
	.uleb128 0x1a
	.long	.LVL146
	.long	0xfb8
	.uleb128 0x1a
	.long	.LVL147
	.long	0xfc5
	.uleb128 0x1b
	.long	.LVL148
	.long	0xfc5
	.long	0x9fb
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1b
	.long	.LVL149
	.long	0xf6a
	.long	0xa0f
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL158
	.long	0xf6a
	.long	0xa22
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x1b
	.long	.LVL159
	.long	0xf84
	.long	0xa35
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1b
	.long	.LVL160
	.long	0xf6a
	.long	0xa49
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LVL195
	.long	0xfd2
	.long	0xa6b
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x34
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.uleb128 0x1c
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
	.uleb128 0x1a
	.long	.LVL196
	.long	0x1063
	.uleb128 0x1a
	.long	.LVL197
	.long	0x1070
	.uleb128 0x1a
	.long	.LVL198
	.long	0x107d
	.uleb128 0x1a
	.long	.LVL199
	.long	0x108a
	.uleb128 0x1a
	.long	.LVL200
	.long	0x1097
	.byte	0
	.uleb128 0x1a
	.long	.LVL0
	.long	0x10a4
	.uleb128 0x1a
	.long	.LVL1
	.long	0x10b1
	.uleb128 0x1a
	.long	.LVL2
	.long	0x10be
	.uleb128 0x1a
	.long	.LVL3
	.long	0x10cb
	.uleb128 0x1a
	.long	.LVL4
	.long	0x10d8
	.uleb128 0x1a
	.long	.LVL5
	.long	0x10e5
	.uleb128 0x1a
	.long	.LVL6
	.long	0x10f2
	.uleb128 0x1a
	.long	.LVL7
	.long	0x10ff
	.uleb128 0x1a
	.long	.LVL8
	.long	0x110c
	.uleb128 0x1a
	.long	.LVL9
	.long	0x1119
	.uleb128 0x1a
	.long	.LVL10
	.long	0x1126
	.uleb128 0x1a
	.long	.LVL11
	.long	0x1133
	.uleb128 0x1a
	.long	.LVL12
	.long	0x1140
	.uleb128 0x1a
	.long	.LVL13
	.long	0x114d
	.uleb128 0x1a
	.long	.LVL14
	.long	0x115a
	.uleb128 0x1a
	.long	.LVL15
	.long	0x1167
	.uleb128 0x1a
	.long	.LVL16
	.long	0x1174
	.uleb128 0x1a
	.long	.LVL17
	.long	0x1181
	.uleb128 0x1a
	.long	.LVL18
	.long	0x118e
	.uleb128 0x1a
	.long	.LVL19
	.long	0x119b
	.uleb128 0x1b
	.long	.LVL20
	.long	0xf6a
	.long	0xb61
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x43
	.byte	0
	.uleb128 0x1b
	.long	.LVL21
	.long	0xf77
	.long	0xb7d
	.uleb128 0x1c
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
	.uleb128 0x1b
	.long	.LVL22
	.long	0xf6a
	.long	0xb90
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x4b
	.byte	0
	.uleb128 0x1a
	.long	.LVL23
	.long	0xf77
	.uleb128 0x1a
	.long	.LVL26
	.long	0x11a8
	.uleb128 0x1a
	.long	.LVL27
	.long	0x119b
	.uleb128 0x1a
	.long	.LVL28
	.long	0x11b5
	.byte	0
	.uleb128 0x21
	.long	.LASF38
	.byte	0x6
	.byte	0x7d
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0x3b
	.long	0xbd2
	.uleb128 0x8
	.long	0x82
	.byte	0x4f
	.byte	0
	.uleb128 0x21
	.long	.LASF39
	.byte	0x6
	.byte	0x7e
	.long	0xbc2
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF40
	.byte	0x7
	.byte	0x1d
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF41
	.byte	0x8
	.byte	0x49
	.long	0xbf9
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.long	0x3b
	.uleb128 0x21
	.long	.LASF42
	.byte	0x8
	.byte	0x4a
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0xbf9
	.long	0xc1b
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x21
	.long	.LASF43
	.byte	0x5
	.byte	0x54
	.long	0xc28
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.long	0xc0b
	.uleb128 0x7
	.long	0xc3d
	.long	0xc3d
	.uleb128 0x8
	.long	0x82
	.byte	0x8
	.byte	0
	.uleb128 0x22
	.long	0xae
	.uleb128 0x21
	.long	.LASF44
	.byte	0x5
	.byte	0x53
	.long	0xc4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.long	0xc2d
	.uleb128 0x21
	.long	.LASF45
	.byte	0x5
	.byte	0x55
	.long	0xbf9
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF46
	.byte	0x5
	.byte	0xc8
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF47
	.byte	0x9
	.byte	0x29
	.long	0xc7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.byte	0x2
	.long	0xbf9
	.uleb128 0x21
	.long	.LASF48
	.byte	0x9
	.byte	0x2a
	.long	0xc7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF49
	.byte	0x9
	.byte	0x34
	.long	0xb9
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0x3b
	.long	0xcab
	.uleb128 0x8
	.long	0x82
	.byte	0x2
	.byte	0
	.uleb128 0x21
	.long	.LASF50
	.byte	0x9
	.byte	0x35
	.long	0xc9b
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF51
	.byte	0x9
	.byte	0x93
	.long	0xbf9
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF52
	.byte	0x9
	.byte	0x94
	.long	0xbf9
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF53
	.byte	0x9
	.byte	0x9b
	.long	0xbf9
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF54
	.byte	0x9
	.byte	0x9c
	.long	0xbf9
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF55
	.byte	0xa
	.byte	0xa1
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF56
	.byte	0xa
	.byte	0xd0
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF57
	.byte	0xa
	.byte	0xd1
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF58
	.byte	0xa
	.byte	0xd2
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF59
	.byte	0xa
	.byte	0xd3
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF60
	.byte	0xa
	.byte	0xd4
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF61
	.byte	0xa
	.byte	0xd5
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0x3b
	.long	0xd57
	.uleb128 0x8
	.long	0x82
	.byte	0x9
	.byte	0
	.uleb128 0x23
	.long	.LASF62
	.byte	0xb
	.byte	0xad
	.long	0xd47
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x7
	.long	0xd6
	.long	0xd74
	.uleb128 0x24
	.byte	0
	.uleb128 0x25
	.long	.LASF63
	.byte	0xb
	.word	0x102
	.long	0xd82
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0xd69
	.uleb128 0x25
	.long	.LASF64
	.byte	0xb
	.word	0x105
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.long	.LASF65
	.byte	0xb
	.word	0x106
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF66
	.byte	0xc
	.byte	0x59
	.long	0x3b
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.long	0xd6
	.long	0xdc0
	.uleb128 0x8
	.long	0x82
	.byte	0x3
	.byte	0
	.uleb128 0x23
	.long	.LASF67
	.byte	0x1
	.byte	0x20
	.long	0xdd2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	eprom_ok
	.uleb128 0xa
	.long	0xdb0
	.uleb128 0x7
	.long	0xd6
	.long	0xde7
	.uleb128 0x8
	.long	0x82
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.long	.LASF68
	.byte	0x1
	.byte	0x21
	.long	0xdf9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	module_string
	.uleb128 0xa
	.long	0xdd7
	.uleb128 0x7
	.long	0xd6
	.long	0xe0e
	.uleb128 0x8
	.long	0x82
	.byte	0xe
	.byte	0
	.uleb128 0x23
	.long	.LASF69
	.byte	0x1
	.byte	0x22
	.long	0xe20
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	prog_name
	.uleb128 0xa
	.long	0xdfe
	.uleb128 0x23
	.long	.LASF70
	.byte	0x1
	.byte	0x23
	.long	0xe37
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	releaseKeyString
	.uleb128 0x26
	.uleb128 0x23
	.long	.LASF71
	.byte	0x1
	.byte	0x24
	.long	0xe4a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	panicString
	.uleb128 0x26
	.uleb128 0x23
	.long	.LASF72
	.byte	0x1
	.byte	0x25
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	menuNotActive
	.uleb128 0x23
	.long	.LASF73
	.byte	0x1
	.byte	0x26
	.long	0x3b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	messageFromESP
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF74
	.long	.LASF74
	.byte	0xa
	.byte	0xc5
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF75
	.long	.LASF75
	.byte	0x9
	.byte	0x27
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF76
	.long	.LASF76
	.byte	0x9
	.byte	0x68
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF77
	.long	.LASF77
	.byte	0x8
	.byte	0x10
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF78
	.long	.LASF78
	.byte	0xb
	.byte	0xfb
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF79
	.long	.LASF79
	.byte	0xb
	.byte	0xfc
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF80
	.long	.LASF80
	.byte	0xb
	.byte	0xfa
	.uleb128 0x28
	.byte	0x1
	.byte	0x1
	.long	.LASF81
	.long	.LASF81
	.byte	0xb
	.word	0x110
	.uleb128 0x28
	.byte	0x1
	.byte	0x1
	.long	.LASF82
	.long	.LASF82
	.byte	0xb
	.word	0x111
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF83
	.long	.LASF83
	.byte	0x5
	.byte	0xd0
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF84
	.long	.LASF84
	.byte	0x8
	.byte	0x11
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF85
	.long	.LASF85
	.byte	0xa
	.byte	0xc0
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF86
	.long	.LASF86
	.byte	0xa
	.byte	0xc3
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF87
	.long	.LASF87
	.byte	0xa
	.byte	0xac
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF88
	.long	.LASF88
	.byte	0xa
	.byte	0xdf
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF89
	.long	.LASF89
	.byte	0xb
	.byte	0xe5
	.uleb128 0x28
	.byte	0x1
	.byte	0x1
	.long	.LASF90
	.long	.LASF90
	.byte	0xb
	.word	0x112
	.uleb128 0x28
	.byte	0x1
	.byte	0x1
	.long	.LASF91
	.long	.LASF91
	.byte	0xb
	.word	0x115
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF92
	.long	.LASF92
	.byte	0xb
	.byte	0xe7
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF93
	.long	.LASF93
	.byte	0x6
	.byte	0x78
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF94
	.long	.LASF94
	.byte	0x6
	.byte	0x7b
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF95
	.long	.LASF95
	.byte	0x7
	.byte	0x2d
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF96
	.long	.LASF96
	.byte	0x9
	.byte	0x23
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF97
	.long	.LASF97
	.byte	0x6
	.byte	0x72
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF98
	.long	.LASF98
	.byte	0x7
	.byte	0x2b
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF99
	.long	.LASF99
	.byte	0x7
	.byte	0x2e
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF100
	.long	.LASF100
	.byte	0x6
	.byte	0x79
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF101
	.long	.LASF101
	.byte	0xc
	.byte	0x32
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF102
	.long	.LASF102
	.byte	0x7
	.byte	0x2c
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF103
	.long	.LASF103
	.byte	0x8
	.byte	0x12
	.uleb128 0x28
	.byte	0x1
	.byte	0x1
	.long	.LASF104
	.long	.LASF104
	.byte	0xb
	.word	0x113
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF105
	.long	.LASF105
	.byte	0x5
	.byte	0xcf
	.uleb128 0x28
	.byte	0x1
	.byte	0x1
	.long	.LASF106
	.long	.LASF106
	.byte	0xb
	.word	0x109
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF107
	.long	.LASF107
	.byte	0xa
	.byte	0xdc
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF108
	.long	.LASF108
	.byte	0xa
	.byte	0xdb
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF109
	.long	.LASF109
	.byte	0x7
	.byte	0x29
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF110
	.long	.LASF110
	.byte	0x7
	.byte	0x32
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF111
	.long	.LASF111
	.byte	0x7
	.byte	0x28
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF112
	.long	.LASF112
	.byte	0x9
	.byte	0x91
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF113
	.long	.LASF113
	.byte	0xa
	.byte	0xd8
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF114
	.long	.LASF114
	.byte	0x8
	.byte	0x48
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF115
	.long	.LASF115
	.byte	0x8
	.byte	0x47
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF116
	.long	.LASF116
	.byte	0xa
	.byte	0xd7
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF117
	.long	.LASF117
	.byte	0xd
	.byte	0xe
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF118
	.long	.LASF118
	.byte	0xc
	.byte	0x31
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF119
	.long	.LASF119
	.byte	0x9
	.byte	0x67
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF120
	.long	.LASF120
	.byte	0x8
	.byte	0xf
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF121
	.long	.LASF121
	.byte	0x5
	.byte	0x57
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF122
	.long	.LASF122
	.byte	0x5
	.byte	0x58
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF123
	.long	.LASF123
	.byte	0x5
	.byte	0x59
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF124
	.long	.LASF124
	.byte	0x5
	.byte	0x5a
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF125
	.long	.LASF125
	.byte	0x9
	.byte	0x8f
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF126
	.long	.LASF126
	.byte	0x5
	.byte	0xd2
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF127
	.long	.LASF127
	.byte	0xa
	.byte	0xb7
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF128
	.long	.LASF128
	.byte	0xa
	.byte	0xb8
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF129
	.long	.LASF129
	.byte	0xa
	.byte	0xc1
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF130
	.long	.LASF130
	.byte	0xa
	.byte	0xba
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF131
	.long	.LASF131
	.byte	0xa
	.byte	0xb9
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF132
	.long	.LASF132
	.byte	0xb
	.byte	0xf8
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF133
	.long	.LASF133
	.byte	0xe
	.byte	0x35
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF134
	.long	.LASF134
	.byte	0x6
	.byte	0x73
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF135
	.long	.LASF135
	.byte	0x7
	.byte	0x23
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF136
	.long	.LASF136
	.byte	0x6
	.byte	0x76
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF137
	.long	.LASF137
	.byte	0x9
	.byte	0x22
	.uleb128 0x27
	.byte	0x1
	.byte	0x1
	.long	.LASF138
	.long	.LASF138
	.byte	0x5
	.byte	0xce
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.long	.LVL29
	.long	.LVL30
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL30
	.long	.LVL70
	.word	0x1
	.byte	0x6d
	.long	.LVL70
	.long	.LVL71
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL71
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
	.long	.LVL97
	.long	.LVL163
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
	.long	.LVL47
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST6:
	.long	.LVL35
	.long	.LVL47-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST7:
	.long	.LVL37
	.long	.LVL47-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST8:
	.long	.LVL37
	.long	.LVL38
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL38
	.long	.LVL40
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST9:
	.long	.LVL41
	.long	.LVL42
	.word	0x1
	.byte	0x62
	.long	.LVL42
	.long	.LVL43
	.word	0x3
	.byte	0x83
	.sleb128 -48
	.byte	0x9f
	.long	.LVL43
	.long	.LVL44
	.word	0x1
	.byte	0x62
	.long	.LVL44
	.long	.LVL45
	.word	0x1
	.byte	0x6a
	.long	0
	.long	0
.LLST10:
	.long	.LVL50
	.long	.LVL51-1
	.word	0x1
	.byte	0x68
	.long	.LVL51-1
	.long	.LVL67
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST11:
	.long	.LVL56
	.long	.LVL57
	.word	0x1
	.byte	0x68
	.long	.LVL57
	.long	.LVL61
	.word	0x6
	.byte	0x8c
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	.LVL61
	.long	.LVL62-1
	.word	0x1
	.byte	0x68
	.long	.LVL62-1
	.long	.LVL65
	.word	0x6
	.byte	0x8c
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL62
	.long	.LVL63-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST13:
	.long	.LVL73
	.long	.LVL76
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST14:
	.long	.LVL80
	.long	.LVL84
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST15:
	.long	.LVL89
	.long	.LVL90
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL90
	.long	.LVL93
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL93
	.long	.LVL94-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST16:
	.long	.LVL88
	.long	.LVL89
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL89
	.long	.LVL94
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST17:
	.long	.LVL108
	.long	.LVL114
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST18:
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
.LLST19:
	.long	.LVL113
	.long	.LVL114
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1268
	.sleb128 0
	.long	0
	.long	0
.LLST20:
	.long	.LVL120
	.long	.LVL126
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST21:
	.long	.LVL121
	.long	.LVL122
	.word	0x1
	.byte	0x68
	.long	.LVL123
	.long	.LVL124
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL124
	.long	.LVL127
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST22:
	.long	.LVL125
	.long	.LVL126
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1356
	.sleb128 0
	.long	0
	.long	0
.LLST23:
	.long	.LVL136
	.long	.LVL142
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST24:
	.long	.LVL137
	.long	.LVL138
	.word	0x1
	.byte	0x68
	.long	.LVL139
	.long	.LVL140
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL140
	.long	.LVL143
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST25:
	.long	.LVL141
	.long	.LVL142
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1444
	.sleb128 0
	.long	0
	.long	0
.LLST26:
	.long	.LVL150
	.long	.LVL156
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST27:
	.long	.LVL151
	.long	.LVL152
	.word	0x1
	.byte	0x68
	.long	.LVL153
	.long	.LVL154
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL154
	.long	.LVL157
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST28:
	.long	.LVL155
	.long	.LVL156
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1532
	.sleb128 0
	.long	0
	.long	0
.LLST29:
	.long	.LVL165
	.long	.LVL166
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL167
	.long	.LVL168
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL168
	.long	.LVL171
	.word	0x3
	.byte	0x80
	.sleb128 -1
	.byte	0x9f
	.long	.LVL171
	.long	.LVL172-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL172-1
	.long	.LVL194
	.word	0x3
	.byte	0x80
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL162
	.long	.LVL194
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST31:
	.long	.LVL163
	.long	.LVL194
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST32:
	.long	.LVL167
	.long	.LVL194
	.word	0x1
	.byte	0x5e
	.long	0
	.long	0
.LLST33:
	.long	.LVL173
	.long	.LVL174-1
	.word	0x1
	.byte	0x64
	.long	.LVL175
	.long	.LVL176-1
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST34:
	.long	.LVL181
	.long	.LVL187
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST35:
	.long	.LVL182
	.long	.LVL183
	.word	0x1
	.byte	0x68
	.long	.LVL184
	.long	.LVL185
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL185
	.long	.LVL187
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST36:
	.long	.LVL186
	.long	.LVL187
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1713
	.sleb128 0
	.long	0
	.long	0
.LLST37:
	.long	.LVL188
	.long	.LVL194
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST38:
	.long	.LVL189
	.long	.LVL190
	.word	0x1
	.byte	0x68
	.long	.LVL191
	.long	.LVL192
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL192
	.long	.LVL194
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST39:
	.long	.LVL193
	.long	.LVL194
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1801
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
	.long	.LBB84
	.long	.LBE84
	.long	.LBB85
	.long	.LBE85
	.long	0
	.long	0
	.long	.LFB17
	.long	.LFE17
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF64:
	.string	"menu_TestModulePattern"
.LASF90:
	.string	"menu_ProcessMessage"
.LASF143:
	.string	"__iCliRetVal"
.LASF18:
	.string	"_delay_ms"
.LASF56:
	.string	"midiLastOutNote"
.LASF102:
	.string	"lcd_cursosblink"
.LASF71:
	.string	"panicString"
.LASF113:
	.string	"midiIn_Process"
.LASF96:
	.string	"serial3SER_ESPSend"
.LASF9:
	.string	"long long unsigned int"
.LASF107:
	.string	"midi_CheckTxActiveSense"
.LASF55:
	.string	"midi_RegisterChanged"
.LASF110:
	.string	"lcd_noteOut"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF57:
	.string	"midiLastOutManual"
.LASF120:
	.string	"init_message"
.LASF33:
	.string	"pTime"
.LASF59:
	.string	"midiLastInChannel"
.LASF139:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF118:
	.string	"init_log"
.LASF121:
	.string	"init_HwTimer"
.LASF43:
	.string	"time_Uptime"
.LASF5:
	.string	"long int"
.LASF46:
	.string	"pipe_PowerStatus"
.LASF50:
	.string	"serESPMidiTmp"
.LASF127:
	.string	"init_Midi2Manual"
.LASF137:
	.string	"init_Serial3SerESP"
.LASF123:
	.string	"init_ADC"
.LASF48:
	.string	"serESPRxOutIndex"
.LASF63:
	.string	"sw_version"
.LASF17:
	.string	"double"
.LASF62:
	.string	"lcdData"
.LASF38:
	.string	"lcd_cursorPos"
.LASF81:
	.string	"menu_Init"
.LASF136:
	.string	"lcd_clrscr"
.LASF122:
	.string	"init_Timers"
.LASF15:
	.string	"__tmp"
.LASF108:
	.string	"midi_CheckRxActiveSense"
.LASF70:
	.string	"releaseKeyString"
.LASF32:
	.string	"__ToDo"
.LASF74:
	.string	"proc_ESPmidi"
.LASF129:
	.string	"init_Midi"
.LASF4:
	.string	"unsigned int"
.LASF91:
	.string	"menu_ModuleTestExecute"
.LASF119:
	.string	"init_Serial0SerUSB"
.LASF7:
	.string	"long unsigned int"
.LASF111:
	.string	"lcd_ManualOutDec"
.LASF31:
	.string	"sreg_save"
.LASF135:
	.string	"lcd_initCG"
.LASF23:
	.string	"esp_message"
.LASF20:
	.string	"__ms"
.LASF49:
	.string	"serESPInBuffer"
.LASF77:
	.string	"message_push"
.LASF138:
	.string	"module_StartPowerOn"
.LASF140:
	.string	".././main.c"
.LASF98:
	.string	"lcd_cursoroff"
.LASF21:
	.string	"updateStatus"
.LASF69:
	.string	"prog_name"
.LASF125:
	.string	"init_Serial1MIDI"
.LASF109:
	.string	"lcd_ChannelOut"
.LASF60:
	.string	"midiLastInManual"
.LASF87:
	.string	"midi_resetRegisters"
.LASF72:
	.string	"menuNotActive"
.LASF95:
	.string	"lcd_blank"
.LASF13:
	.string	"Timer"
.LASF97:
	.string	"getCursorFromLCDRAMcursor"
.LASF37:
	.string	"ovflCount"
.LASF10:
	.string	"sizetype"
.LASF51:
	.string	"midiRxInIndex"
.LASF131:
	.string	"init_Manual2Module"
.LASF86:
	.string	"midi_AllManualsOff"
.LASF84:
	.string	"message_get"
.LASF85:
	.string	"midiSendAllNotesOff"
.LASF124:
	.string	"init_Pipe"
.LASF29:
	.string	"saveCursor"
.LASF40:
	.string	"lcd_cursorIsOn"
.LASF12:
	.string	"prescaler"
.LASF24:
	.string	"midiBytesTransferred"
.LASF92:
	.string	"menu_deleteMessage"
.LASF141:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF142:
	.string	"__builtin_avr_delay_cycles"
.LASF73:
	.string	"messageFromESP"
.LASF3:
	.string	"unsigned char"
.LASF80:
	.string	"softKeys_toLCD"
.LASF30:
	.string	"pChar"
.LASF88:
	.string	"midi_CouplerReset"
.LASF75:
	.string	"serial3SER_ESPReadRx"
.LASF99:
	.string	"lcd_dec2out"
.LASF76:
	.string	"serial0SER_USBSend"
.LASF89:
	.string	"menu_DisplayMainMessage_P"
.LASF101:
	.string	"log_putError"
.LASF11:
	.string	"counter"
.LASF82:
	.string	"menu_InitLCD"
.LASF128:
	.string	"init_Manual2Midi"
.LASF68:
	.string	"module_string"
.LASF53:
	.string	"midiRxOvflCount"
.LASF106:
	.string	"menu_showPowerState"
.LASF132:
	.string	"init_SoftKeys"
.LASF6:
	.string	"uint32_t"
.LASF42:
	.string	"msgPipe_Handling"
.LASF58:
	.string	"midiLastInNote"
.LASF103:
	.string	"message_status"
.LASF39:
	.string	"lcd_buffer"
.LASF14:
	.string	"char"
.LASF133:
	.string	"eeprom_UpdateALL"
.LASF114:
	.string	"pipeMsgStatus"
.LASF78:
	.string	"softKey_MessageKey_ToSoftKeyNr"
.LASF22:
	.string	"oldcursor"
.LASF25:
	.string	"asciiData"
.LASF67:
	.string	"eprom_ok"
.LASF100:
	.string	"lcd_putc"
.LASF126:
	.string	"init_PipeModules"
.LASF93:
	.string	"lcd_goto"
.LASF16:
	.string	"__ticks_dc"
.LASF19:
	.string	"__iRestore"
.LASF105:
	.string	"module_PowerControl"
.LASF0:
	.string	"int8_t"
.LASF26:
	.string	"keyMessage"
.LASF44:
	.string	"swTimer"
.LASF34:
	.string	"oldCursor"
.LASF112:
	.string	"serial1MIDIReadRx"
.LASF45:
	.string	"time_UpTimeUpdated"
.LASF104:
	.string	"menu_ClearAllDisp"
.LASF1:
	.string	"uint8_t"
.LASF116:
	.string	"midiKeyPress_Process"
.LASF94:
	.string	"lcd_puts_P"
.LASF54:
	.string	"midiTxOvflCount"
.LASF117:
	.string	"init_iopins"
.LASF83:
	.string	"softKey_WantLong"
.LASF36:
	.string	"separator"
.LASF28:
	.string	"softKey_Nr"
.LASF130:
	.string	"init_Registers"
.LASF65:
	.string	"menu_TestModuleBitCounter"
.LASF79:
	.string	"softKey_Execute"
.LASF27:
	.string	"keyMasked"
.LASF41:
	.string	"msgPipeOverflow"
.LASF47:
	.string	"serESPRxInIndex"
.LASF134:
	.string	"lcd_init"
.LASF144:
	.string	"main"
.LASF35:
	.string	"oldBlink"
.LASF115:
	.string	"pipeMsgGet"
.LASF52:
	.string	"midiRxOutIndex"
.LASF66:
	.string	"log_unreadErrors"
.LASF61:
	.string	"midiLastProgram"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_clear_bss
