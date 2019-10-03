	.file	"ee_prom.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.crc16_ram,"ax",@progbits
.global	crc16_ram
	.type	crc16_ram, @function
crc16_ram:
.LFB11:
	.file 1 ".././ee_prom.c"
	.loc 1 39 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
.LVL1:
	.loc 1 40 0
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.LVL2:
	.loc 1 41 0
	rjmp .L2
.LVL3:
.L3:
	.loc 1 42 0
	movw r26,r30
	adiw r26,1
.LVL4:
	ld r18,Z
.LVL5:
.LBB4:
.LBB5:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\crc16.h"
	.loc 2 118 0
/* #APP */
 ;  118 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\crc16.h" 1
	eor r24,r18
	mov r18,r24
	swap r18
	eor r18,r24
	mov __tmp_reg__,r18
	lsr r18
	lsr r18
	eor r18,__tmp_reg__
	mov __tmp_reg__,r18
	lsr r18
	eor r18,__tmp_reg__
	andi r18,0x07
	mov __tmp_reg__,r24
	mov r24,r25
	lsr r18
	ror __tmp_reg__
	ror r18
	mov r25,__tmp_reg__
	eor r24,r18
	lsr __tmp_reg__
	ror r18
	eor r25,__tmp_reg__
	eor r24,r18
 ;  0 "" 2
.LVL6:
/* #NOAPP */
.LBE5:
.LBE4:
	.loc 1 41 0
	movw r22,r20
	.loc 1 42 0
	movw r30,r26
.LVL7:
.L2:
	.loc 1 41 0
	movw r20,r22
	subi r20,1
	sbc r21,__zero_reg__
.LVL8:
	or r22,r23
	brne .L3
/* epilogue start */
	.loc 1 45 0
	ret
	.cfi_endproc
.LFE11:
	.size	crc16_ram, .-crc16_ram
	.section	.text.crc16_eeprom,"ax",@progbits
.global	crc16_eeprom
	.type	crc16_eeprom, @function
crc16_eeprom:
.LFB12:
	.loc 1 47 0
	.cfi_startproc
.LVL9:
	push r14
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI1:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
.LCFI2:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
.LCFI3:
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
.LCFI5:
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
.LVL10:
	.loc 1 48 0
	ldi r28,lo8(-1)
	ldi r29,lo8(-1)
	.loc 1 49 0
	rjmp .L5
.LVL11:
.L6:
	.loc 1 50 0
	movw r14,r24
	ldi r18,-1
	sub r14,r18
	sbc r15,r18
.LVL12:
	call eeprom_read_byte
.LVL13:
.LBB8:
.LBB9:
	.loc 2 118 0
	movw r18,r28
/* #APP */
 ;  118 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\crc16.h" 1
	eor r18,r24
	mov r24,r18
	swap r24
	eor r24,r18
	mov __tmp_reg__,r24
	lsr r24
	lsr r24
	eor r24,__tmp_reg__
	mov __tmp_reg__,r24
	lsr r24
	eor r24,__tmp_reg__
	andi r24,0x07
	mov __tmp_reg__,r18
	mov r18,r19
	lsr r24
	ror __tmp_reg__
	ror r24
	mov r19,__tmp_reg__
	eor r18,r24
	lsr __tmp_reg__
	ror r24
	eor r19,__tmp_reg__
	eor r18,r24
 ;  0 "" 2
.LVL14:
/* #NOAPP */
	movw r28,r18
.LVL15:
.LBE9:
.LBE8:
	.loc 1 49 0
	movw r22,r16
	.loc 1 50 0
	movw r24,r14
.LVL16:
.L5:
	.loc 1 49 0
	movw r16,r22
	subi r16,1
	sbc r17,__zero_reg__
.LVL17:
	or r22,r23
	brne .L6
	.loc 1 53 0
	movw r24,r28
.LVL18:
/* epilogue start */
	pop r29
	pop r28
.LVL19:
	pop r17
	pop r16
.LVL20:
	pop r15
	pop r14
	ret
	.cfi_endproc
.LFE12:
	.size	crc16_eeprom, .-crc16_eeprom
	.section	.text.crc16_ram_startVal,"ax",@progbits
.global	crc16_ram_startVal
	.type	crc16_ram_startVal, @function
crc16_ram_startVal:
.LFB13:
	.loc 1 55 0
	.cfi_startproc
.LVL21:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	movw r24,r20
.LVL22:
	.loc 1 57 0
	rjmp .L8
.LVL23:
.L9:
	.loc 1 58 0
	movw r26,r30
	adiw r26,1
.LVL24:
	ld r18,Z
.LVL25:
.LBB12:
.LBB13:
	.loc 2 118 0
/* #APP */
 ;  118 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\crc16.h" 1
	eor r24,r18
	mov r18,r24
	swap r18
	eor r18,r24
	mov __tmp_reg__,r18
	lsr r18
	lsr r18
	eor r18,__tmp_reg__
	mov __tmp_reg__,r18
	lsr r18
	eor r18,__tmp_reg__
	andi r18,0x07
	mov __tmp_reg__,r24
	mov r24,r25
	lsr r18
	ror __tmp_reg__
	ror r18
	mov r25,__tmp_reg__
	eor r24,r18
	lsr __tmp_reg__
	ror r18
	eor r25,__tmp_reg__
	eor r24,r18
 ;  0 "" 2
.LVL26:
/* #NOAPP */
.LBE13:
.LBE12:
	.loc 1 57 0
	movw r22,r20
	.loc 1 58 0
	movw r30,r26
.LVL27:
.L8:
	.loc 1 57 0
	movw r20,r22
	subi r20,1
	sbc r21,__zero_reg__
.LVL28:
	or r22,r23
	brne .L9
/* epilogue start */
	.loc 1 61 0
	ret
	.cfi_endproc
.LFE13:
	.size	crc16_ram_startVal, .-crc16_ram_startVal
	.section	.text.crc16_eeprom_startVal,"ax",@progbits
.global	crc16_eeprom_startVal
	.type	crc16_eeprom_startVal, @function
crc16_eeprom_startVal:
.LFB14:
	.loc 1 63 0
	.cfi_startproc
.LVL29:
	push r14
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
.LCFI7:
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
.LCFI8:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
.LCFI9:
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
.LCFI10:
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
.LCFI11:
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r28,r20
.LVL30:
	.loc 1 65 0
	rjmp .L11
.LVL31:
.L12:
	.loc 1 66 0
	movw r14,r24
	ldi r18,-1
	sub r14,r18
	sbc r15,r18
.LVL32:
	call eeprom_read_byte
.LVL33:
.LBB16:
.LBB17:
	.loc 2 118 0
	movw r20,r28
/* #APP */
 ;  118 "c:\program files (x86)\atmel\studio\7.0\toolchain\avr8\avr8-gnu-toolchain\avr\include\util\crc16.h" 1
	eor r20,r24
	mov r24,r20
	swap r24
	eor r24,r20
	mov __tmp_reg__,r24
	lsr r24
	lsr r24
	eor r24,__tmp_reg__
	mov __tmp_reg__,r24
	lsr r24
	eor r24,__tmp_reg__
	andi r24,0x07
	mov __tmp_reg__,r20
	mov r20,r21
	lsr r24
	ror __tmp_reg__
	ror r24
	mov r21,__tmp_reg__
	eor r20,r24
	lsr __tmp_reg__
	ror r24
	eor r21,__tmp_reg__
	eor r20,r24
 ;  0 "" 2
.LVL34:
/* #NOAPP */
	movw r28,r20
.LVL35:
.LBE17:
.LBE16:
	.loc 1 65 0
	movw r22,r16
	.loc 1 66 0
	movw r24,r14
.LVL36:
.L11:
	.loc 1 65 0
	movw r16,r22
	subi r16,1
	sbc r17,__zero_reg__
.LVL37:
	or r22,r23
	brne .L12
	.loc 1 69 0
	movw r24,r28
.LVL38:
/* epilogue start */
	pop r29
	pop r28
.LVL39:
	pop r17
	pop r16
.LVL40:
	pop r15
	pop r14
	ret
	.cfi_endproc
.LFE14:
	.size	crc16_eeprom_startVal, .-crc16_eeprom_startVal
	.section	.text.eeprom_ReadManualMap,"ax",@progbits
.global	eeprom_ReadManualMap
	.type	eeprom_ReadManualMap, @function
eeprom_ReadManualMap:
.LFB15:
	.loc 1 72 0
	.cfi_startproc
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
	.loc 1 73 0
	ldi r24,lo8(ee+50)
	ldi r25,hi8(ee+50)
	call eeprom_read_word
.LVL41:
	movw r28,r24
	ldi r22,lo8(48)
	ldi r23,0
	ldi r24,lo8(ee+2)
	ldi r25,hi8(ee+2)
	call crc16_eeprom
.LVL42:
	cp r28,r24
	cpc r29,r25
	brne .L14
	.loc 1 74 0
	ldi r24,lo8(ee+1)
	ldi r25,hi8(ee+1)
	call eeprom_read_byte
.LVL43:
	cpi r24,lo8(77)
	brne .L14
	.loc 1 76 0
	ldi r20,lo8(48)
	ldi r21,0
	ldi r22,lo8(ee+2)
	ldi r23,hi8(ee+2)
	ldi r24,lo8(manualMap)
	ldi r25,hi8(manualMap)
	call eeprom_read_block
.LVL44:
	.loc 1 77 0
	ldi r24,0
	rjmp .L15
.L14:
	.loc 1 79 0
	lds r24,ee_initError
	ori r24,lo8(1)
	sts ee_initError,r24
	.loc 1 80 0
	ldi r24,lo8(-1)
.L15:
/* epilogue start */
	.loc 1 82 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE15:
	.size	eeprom_ReadManualMap, .-eeprom_ReadManualMap
	.section	.text.eeprom_ReadMidiInMap,"ax",@progbits
.global	eeprom_ReadMidiInMap
	.type	eeprom_ReadMidiInMap, @function
eeprom_ReadMidiInMap:
.LFB16:
	.loc 1 84 0
	.cfi_startproc
	push r28
.LCFI14:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI15:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 85 0
	ldi r24,lo8(ee+309)
	ldi r25,hi8(ee+309)
	call eeprom_read_word
.LVL45:
	movw r28,r24
	ldi r22,0
	ldi r23,lo8(1)
	ldi r24,lo8(ee+53)
	ldi r25,hi8(ee+53)
	call crc16_eeprom
.LVL46:
	cp r28,r24
	cpc r29,r25
	brne .L17
	.loc 1 86 0
	ldi r24,lo8(ee+52)
	ldi r25,hi8(ee+52)
	call eeprom_read_byte
.LVL47:
	cpi r24,lo8(73)
	brne .L17
	.loc 1 88 0
	ldi r20,0
	ldi r21,lo8(1)
	ldi r22,lo8(ee+53)
	ldi r23,hi8(ee+53)
	ldi r24,lo8(midiInMap)
	ldi r25,hi8(midiInMap)
	call eeprom_read_block
.LVL48:
	.loc 1 89 0
	ldi r24,0
	rjmp .L18
.L17:
	.loc 1 91 0
	lds r24,ee_initError
	ori r24,lo8(2)
	sts ee_initError,r24
	.loc 1 92 0
	ldi r24,lo8(-1)
.L18:
/* epilogue start */
	.loc 1 94 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE16:
	.size	eeprom_ReadMidiInMap, .-eeprom_ReadMidiInMap
	.section	.text.eeprom_ReadMidiOutMap,"ax",@progbits
.global	eeprom_ReadMidiOutMap
	.type	eeprom_ReadMidiOutMap, @function
eeprom_ReadMidiOutMap:
.LFB17:
	.loc 1 96 0
	.cfi_startproc
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
	.loc 1 97 0
	ldi r24,lo8(ee+323)
	ldi r25,hi8(ee+323)
	call eeprom_read_word
.LVL49:
	movw r28,r24
	ldi r22,lo8(11)
	ldi r23,0
	ldi r24,lo8(ee+312)
	ldi r25,hi8(ee+312)
	call crc16_eeprom
.LVL50:
	cp r28,r24
	cpc r29,r25
	brne .L20
	.loc 1 98 0
	ldi r24,lo8(ee+311)
	ldi r25,hi8(ee+311)
	call eeprom_read_byte
.LVL51:
	cpi r24,lo8(79)
	brne .L20
	.loc 1 100 0
	ldi r20,lo8(8)
	ldi r21,0
	ldi r22,lo8(ee+312)
	ldi r23,hi8(ee+312)
	ldi r24,lo8(midiOutMap)
	ldi r25,hi8(midiOutMap)
	call eeprom_read_block
.LVL52:
	.loc 1 101 0
	ldi r20,lo8(3)
	ldi r21,0
	ldi r22,lo8(ee+320)
	ldi r23,hi8(ee+320)
	ldi r24,lo8(midi_Setting)
	ldi r25,hi8(midi_Setting)
	call eeprom_read_block
.LVL53:
	.loc 1 102 0
	ldi r24,0
	rjmp .L21
.L20:
	.loc 1 104 0
	lds r24,ee_initError
	ori r24,lo8(4)
	sts ee_initError,r24
	.loc 1 105 0
	ldi r24,lo8(-1)
.L21:
/* epilogue start */
	.loc 1 107 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE17:
	.size	eeprom_ReadMidiOutMap, .-eeprom_ReadMidiOutMap
	.section	.text.eeprom_ReadModules,"ax",@progbits
.global	eeprom_ReadModules
	.type	eeprom_ReadModules, @function
eeprom_ReadModules:
.LFB18:
	.loc 1 109 0
	.cfi_startproc
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
	.loc 1 110 0
	ldi r24,lo8(ee+328)
	ldi r25,hi8(ee+328)
	call eeprom_read_word
.LVL54:
	movw r28,r24
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(ee+326)
	ldi r25,hi8(ee+326)
	call crc16_eeprom
.LVL55:
	cp r28,r24
	cpc r29,r25
	brne .L23
	.loc 1 111 0
	ldi r24,lo8(ee+325)
	ldi r25,hi8(ee+325)
	call eeprom_read_byte
.LVL56:
	cpi r24,lo8(105)
	brne .L23
	.loc 1 113 0
	ldi r24,lo8(ee+326)
	ldi r25,hi8(ee+326)
	call eeprom_read_byte
.LVL57:
	sts pipe_ModuleAssnRead,r24
	.loc 1 114 0
	ldi r24,lo8(ee+327)
	ldi r25,hi8(ee+327)
	call eeprom_read_byte
.LVL58:
	sts pipe_ModuleAssnWrite,r24
	.loc 1 115 0
	ldi r24,0
	rjmp .L24
.L23:
	.loc 1 117 0
	lds r24,ee_initError
	ori r24,lo8(8)
	sts ee_initError,r24
	.loc 1 118 0
	ldi r24,lo8(-1)
.L24:
/* epilogue start */
	.loc 1 120 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE18:
	.size	eeprom_ReadModules, .-eeprom_ReadModules
	.section	.text.eeprom_ReadMidiThrough,"ax",@progbits
.global	eeprom_ReadMidiThrough
	.type	eeprom_ReadMidiThrough, @function
eeprom_ReadMidiThrough:
.LFB19:
	.loc 1 122 0
	.cfi_startproc
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
	.loc 1 123 0
	ldi r24,lo8(ee+1015)
	ldi r25,hi8(ee+1015)
	call eeprom_read_word
.LVL59:
	movw r28,r24
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,lo8(ee+1013)
	ldi r25,hi8(ee+1013)
	call crc16_eeprom
.LVL60:
	cp r28,r24
	cpc r29,r25
	brne .L26
	.loc 1 124 0
	ldi r24,lo8(ee+1012)
	ldi r25,hi8(ee+1012)
	call eeprom_read_byte
.LVL61:
	cpi r24,lo8(84)
	brne .L26
	.loc 1 126 0
	ldi r20,lo8(2)
	ldi r21,0
	ldi r22,lo8(ee+1013)
	ldi r23,hi8(ee+1013)
	ldi r24,lo8(midiThrough)
	ldi r25,hi8(midiThrough)
	call eeprom_read_block
.LVL62:
	.loc 1 127 0
	ldi r24,0
	rjmp .L27
.L26:
	.loc 1 129 0
	lds r24,ee_initError
	ori r24,lo8(2)
	sts ee_initError,r24
	.loc 1 130 0
	ldi r24,lo8(-1)
.L27:
/* epilogue start */
	.loc 1 132 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE19:
	.size	eeprom_ReadMidiThrough, .-eeprom_ReadMidiThrough
	.section	.text.eeprom_ReadUSB,"ax",@progbits
.global	eeprom_ReadUSB
	.type	eeprom_ReadUSB, @function
eeprom_ReadUSB:
.LFB20:
	.loc 1 134 0
	.cfi_startproc
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
	.loc 1 135 0
	ldi r24,lo8(ee+332)
	ldi r25,hi8(ee+332)
	call eeprom_read_word
.LVL63:
	movw r28,r24
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(ee+331)
	ldi r25,hi8(ee+331)
	call crc16_eeprom
.LVL64:
	cp r28,r24
	cpc r29,r25
	brne .L29
	.loc 1 136 0
	ldi r24,lo8(ee+330)
	ldi r25,hi8(ee+330)
	call eeprom_read_byte
.LVL65:
	cpi r24,lo8(85)
	brne .L29
	.loc 1 138 0
	ldi r24,lo8(ee+331)
	ldi r25,hi8(ee+331)
	call eeprom_read_byte
.LVL66:
	sts serusb_Active,r24
	.loc 1 139 0
	ldi r24,0
	rjmp .L30
.L29:
	.loc 1 141 0
	lds r24,ee_initError
	ori r24,lo8(8)
	sts ee_initError,r24
	.loc 1 142 0
	ldi r24,lo8(-1)
.L30:
/* epilogue start */
	.loc 1 144 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE20:
	.size	eeprom_ReadUSB, .-eeprom_ReadUSB
	.section	.text.eeprom_ReadReg,"ax",@progbits
.global	eeprom_ReadReg
	.type	eeprom_ReadReg, @function
eeprom_ReadReg:
.LFB21:
	.loc 1 146 0
	.cfi_startproc
	push r28
.LCFI24:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI25:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 148 0
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(ee+335)
	ldi r25,hi8(ee+335)
	call crc16_eeprom
.LVL67:
	.loc 1 149 0
	movw r20,r24
	ldi r22,lo8(24)
	ldi r23,0
	ldi r24,lo8(ee+336)
	ldi r25,hi8(ee+336)
.LVL68:
	call crc16_eeprom_startVal
.LVL69:
	movw r28,r24
.LVL70:
	.loc 1 150 0
	ldi r24,lo8(ee+360)
	ldi r25,hi8(ee+360)
.LVL71:
	call eeprom_read_word
.LVL72:
	cp r28,r24
	cpc r29,r25
	brne .L32
	.loc 1 150 0 is_stmt 0 discriminator 1
	ldi r24,lo8(ee+334)
	ldi r25,hi8(ee+334)
	call eeprom_read_byte
.LVL73:
	cpi r24,lo8(82)
	brne .L32
	.loc 1 152 0 is_stmt 1
	ldi r24,lo8(ee+335)
	ldi r25,hi8(ee+335)
	call eeprom_read_byte
.LVL74:
	sts registerCount,r24
	.loc 1 153 0
	ldi r20,lo8(24)
	ldi r21,0
	ldi r22,lo8(ee+336)
	ldi r23,hi8(ee+336)
	ldi r24,lo8(registerMap)
	ldi r25,hi8(registerMap)
	call eeprom_read_block
.LVL75:
	.loc 1 154 0
	ldi r24,0
	rjmp .L33
.L32:
	.loc 1 156 0
	lds r24,ee_initError
	ori r24,lo8(32)
	sts ee_initError,r24
	.loc 1 157 0
	ldi r24,lo8(-1)
.L33:
/* epilogue start */
	.loc 1 159 0
	pop r29
	pop r28
.LVL76:
	ret
	.cfi_endproc
.LFE21:
	.size	eeprom_ReadReg, .-eeprom_ReadReg
	.section	.text.eeprom_ReadProg,"ax",@progbits
.global	eeprom_ReadProg
	.type	eeprom_ReadProg, @function
eeprom_ReadProg:
.LFB22:
	.loc 1 161 0
	.cfi_startproc
	push r28
.LCFI26:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI27:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 162 0
	ldi r24,lo8(ee+1003)
	ldi r25,hi8(ee+1003)
	call eeprom_read_word
.LVL77:
	movw r28,r24
	ldi r22,lo8(-128)
	ldi r23,lo8(2)
	ldi r24,lo8(ee+363)
	ldi r25,hi8(ee+363)
	call crc16_eeprom
.LVL78:
	cp r28,r24
	cpc r29,r25
	brne .L35
	.loc 1 162 0 is_stmt 0 discriminator 1
	ldi r24,lo8(ee+362)
	ldi r25,hi8(ee+362)
	call eeprom_read_byte
.LVL79:
	cpi r24,lo8(80)
	brne .L35
	.loc 1 164 0 is_stmt 1
	ldi r20,lo8(-128)
	ldi r21,lo8(2)
	ldi r22,lo8(ee+363)
	ldi r23,hi8(ee+363)
	ldi r24,lo8(programMap)
	ldi r25,hi8(programMap)
	call eeprom_read_block
.LVL80:
	.loc 1 165 0
	ldi r24,0
	rjmp .L36
.L35:
	.loc 1 167 0
	lds r24,ee_initError
	ori r24,lo8(64)
	sts ee_initError,r24
	.loc 1 168 0
	ldi r24,lo8(-1)
.L36:
/* epilogue start */
	.loc 1 170 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE22:
	.size	eeprom_ReadProg, .-eeprom_ReadProg
	.section	.text.eeprom_ReadSoftkeys,"ax",@progbits
.global	eeprom_ReadSoftkeys
	.type	eeprom_ReadSoftkeys, @function
eeprom_ReadSoftkeys:
.LFB23:
	.loc 1 172 0
	.cfi_startproc
	push r28
.LCFI28:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI29:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 173 0
	ldi r24,lo8(ee+1010)
	ldi r25,hi8(ee+1010)
	call eeprom_read_word
.LVL81:
	movw r28,r24
	ldi r22,lo8(4)
	ldi r23,0
	ldi r24,lo8(ee+1006)
	ldi r25,hi8(ee+1006)
	call crc16_eeprom
.LVL82:
	cp r28,r24
	cpc r29,r25
	brne .L38
	.loc 1 175 0
	ldi r20,lo8(4)
	ldi r21,0
	ldi r22,lo8(ee+1006)
	ldi r23,hi8(ee+1006)
	ldi r24,lo8(soft_KeyMenuIndex)
	ldi r25,hi8(soft_KeyMenuIndex)
	call eeprom_read_block
.LVL83:
	.loc 1 176 0
	ldi r24,0
	rjmp .L39
.L38:
	.loc 1 178 0
	lds r24,ee_initError
	ori r24,lo8(-128)
	sts ee_initError,r24
	.loc 1 179 0
	ldi r24,lo8(-1)
.L39:
/* epilogue start */
	.loc 1 181 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE23:
	.size	eeprom_ReadSoftkeys, .-eeprom_ReadSoftkeys
	.section	.text.eepromWriteSignature,"ax",@progbits
.global	eepromWriteSignature
	.type	eepromWriteSignature, @function
eepromWriteSignature:
.LFB24:
	.loc 1 183 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 184 0
	ldi r22,0
	ldi r24,lo8(ee)
	ldi r25,hi8(ee)
	call eeprom_update_byte
.LVL84:
	.loc 1 185 0
	ldi r22,lo8(101)
	ldi r24,lo8(ee+1017)
	ldi r25,hi8(ee+1017)
	call eeprom_update_byte
.LVL85:
	ret
	.cfi_endproc
.LFE24:
	.size	eepromWriteSignature, .-eepromWriteSignature
	.section	.text.eeprom_UpdateManualMap,"ax",@progbits
.global	eeprom_UpdateManualMap
	.type	eeprom_UpdateManualMap, @function
eeprom_UpdateManualMap:
.LFB25:
	.loc 1 188 0
	.cfi_startproc
	push r28
.LCFI30:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI31:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 189 0
	ldi r22,lo8(48)
	ldi r23,0
	ldi r24,lo8(manualMap)
	ldi r25,hi8(manualMap)
	call crc16_ram
.LVL86:
	movw r28,r24
.LVL87:
	.loc 1 190 0
	call lcd_waitSymbolOn
.LVL88:
	.loc 1 191 0
	ldi r22,lo8(77)
	ldi r24,lo8(ee+1)
	ldi r25,hi8(ee+1)
	call eeprom_update_byte
.LVL89:
	.loc 1 192 0
	ldi r20,lo8(48)
	ldi r21,0
	ldi r22,lo8(ee+2)
	ldi r23,hi8(ee+2)
	ldi r24,lo8(manualMap)
	ldi r25,hi8(manualMap)
	call eeprom_update_block
.LVL90:
	.loc 1 193 0
	movw r22,r28
	ldi r24,lo8(ee+50)
	ldi r25,hi8(ee+50)
	call eeprom_update_word
.LVL91:
	.loc 1 194 0
	call eepromWriteSignature
.LVL92:
	.loc 1 195 0
	call lcd_waitSymbolOff
.LVL93:
/* epilogue start */
	.loc 1 196 0
	pop r29
	pop r28
.LVL94:
	ret
	.cfi_endproc
.LFE25:
	.size	eeprom_UpdateManualMap, .-eeprom_UpdateManualMap
	.section	.text.eeprom_UpdateMidiInMap,"ax",@progbits
.global	eeprom_UpdateMidiInMap
	.type	eeprom_UpdateMidiInMap, @function
eeprom_UpdateMidiInMap:
.LFB26:
	.loc 1 198 0
	.cfi_startproc
	push r28
.LCFI32:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI33:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 199 0
	ldi r22,0
	ldi r23,lo8(1)
	ldi r24,lo8(midiInMap)
	ldi r25,hi8(midiInMap)
	call crc16_ram
.LVL95:
	movw r28,r24
.LVL96:
	.loc 1 200 0
	call lcd_waitSymbolOn
.LVL97:
	.loc 1 201 0
	ldi r22,lo8(73)
	ldi r24,lo8(ee+52)
	ldi r25,hi8(ee+52)
	call eeprom_update_byte
.LVL98:
	.loc 1 202 0
	ldi r20,0
	ldi r21,lo8(1)
	ldi r22,lo8(ee+53)
	ldi r23,hi8(ee+53)
	ldi r24,lo8(midiInMap)
	ldi r25,hi8(midiInMap)
	call eeprom_update_block
.LVL99:
	.loc 1 203 0
	movw r22,r28
	ldi r24,lo8(ee+309)
	ldi r25,hi8(ee+309)
	call eeprom_update_word
.LVL100:
	.loc 1 204 0
	call eepromWriteSignature
.LVL101:
	.loc 1 205 0
	call lcd_waitSymbolOff
.LVL102:
/* epilogue start */
	.loc 1 206 0
	pop r29
	pop r28
.LVL103:
	ret
	.cfi_endproc
.LFE26:
	.size	eeprom_UpdateMidiInMap, .-eeprom_UpdateMidiInMap
	.section	.text.eeprom_UpdateMidiOutMap,"ax",@progbits
.global	eeprom_UpdateMidiOutMap
	.type	eeprom_UpdateMidiOutMap, @function
eeprom_UpdateMidiOutMap:
.LFB27:
	.loc 1 208 0
	.cfi_startproc
	push r28
.LCFI34:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI35:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 209 0
	ldi r22,lo8(8)
	ldi r23,0
	ldi r24,lo8(midiOutMap)
	ldi r25,hi8(midiOutMap)
	call crc16_ram
.LVL104:
	.loc 1 210 0
	movw r20,r24
	ldi r22,lo8(3)
	ldi r23,0
	ldi r24,lo8(midi_Setting)
	ldi r25,hi8(midi_Setting)
.LVL105:
	call crc16_ram_startVal
.LVL106:
	movw r28,r24
.LVL107:
	.loc 1 211 0
	call lcd_waitSymbolOn
.LVL108:
	.loc 1 212 0
	ldi r22,lo8(79)
	ldi r24,lo8(ee+311)
	ldi r25,hi8(ee+311)
	call eeprom_update_byte
.LVL109:
	.loc 1 213 0
	ldi r20,lo8(8)
	ldi r21,0
	ldi r22,lo8(ee+312)
	ldi r23,hi8(ee+312)
	ldi r24,lo8(midiOutMap)
	ldi r25,hi8(midiOutMap)
	call eeprom_update_block
.LVL110:
	.loc 1 214 0
	ldi r20,lo8(3)
	ldi r21,0
	ldi r22,lo8(ee+320)
	ldi r23,hi8(ee+320)
	ldi r24,lo8(midi_Setting)
	ldi r25,hi8(midi_Setting)
	call eeprom_update_block
.LVL111:
	.loc 1 215 0
	movw r22,r28
	ldi r24,lo8(ee+323)
	ldi r25,hi8(ee+323)
	call eeprom_update_word
.LVL112:
	.loc 1 216 0
	call eepromWriteSignature
.LVL113:
	.loc 1 217 0
	call lcd_waitSymbolOff
.LVL114:
/* epilogue start */
	.loc 1 218 0
	pop r29
	pop r28
.LVL115:
	ret
	.cfi_endproc
.LFE27:
	.size	eeprom_UpdateMidiOutMap, .-eeprom_UpdateMidiOutMap
	.section	.text.eeprom_UpdateModules,"ax",@progbits
.global	eeprom_UpdateModules
	.type	eeprom_UpdateModules, @function
eeprom_UpdateModules:
.LFB28:
	.loc 1 220 0
	.cfi_startproc
	push r28
.LCFI36:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI37:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 221 0
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(pipe_ModuleAssnRead)
	ldi r25,hi8(pipe_ModuleAssnRead)
	call crc16_ram
.LVL116:
	movw r28,r24
.LVL117:
	.loc 1 222 0
	call lcd_waitSymbolOn
.LVL118:
	.loc 1 223 0
	ldi r22,lo8(105)
	ldi r24,lo8(ee+325)
	ldi r25,hi8(ee+325)
	call eeprom_update_byte
.LVL119:
	.loc 1 224 0
	lds r22,pipe_ModuleAssnRead
	ldi r24,lo8(ee+326)
	ldi r25,hi8(ee+326)
	call eeprom_update_byte
.LVL120:
	.loc 1 225 0
	lds r22,pipe_ModuleAssnWrite
	ldi r24,lo8(ee+327)
	ldi r25,hi8(ee+327)
	call eeprom_update_byte
.LVL121:
	.loc 1 226 0
	movw r22,r28
	ldi r24,lo8(ee+328)
	ldi r25,hi8(ee+328)
	call eeprom_update_word
.LVL122:
	.loc 1 227 0
	call eepromWriteSignature
.LVL123:
	.loc 1 228 0
	call lcd_waitSymbolOff
.LVL124:
/* epilogue start */
	.loc 1 229 0
	pop r29
	pop r28
.LVL125:
	ret
	.cfi_endproc
.LFE28:
	.size	eeprom_UpdateModules, .-eeprom_UpdateModules
	.section	.text.eeprom_UpdateUSB,"ax",@progbits
.global	eeprom_UpdateUSB
	.type	eeprom_UpdateUSB, @function
eeprom_UpdateUSB:
.LFB29:
	.loc 1 231 0
	.cfi_startproc
	push r28
.LCFI38:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI39:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 232 0
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(serusb_Active)
	ldi r25,hi8(serusb_Active)
	call crc16_ram
.LVL126:
	movw r28,r24
.LVL127:
	.loc 1 233 0
	call lcd_waitSymbolOn
.LVL128:
	.loc 1 234 0
	ldi r22,lo8(85)
	ldi r24,lo8(ee+330)
	ldi r25,hi8(ee+330)
	call eeprom_update_byte
.LVL129:
	.loc 1 235 0
	lds r22,serusb_Active
	ldi r24,lo8(ee+331)
	ldi r25,hi8(ee+331)
	call eeprom_update_byte
.LVL130:
	.loc 1 236 0
	movw r22,r28
	ldi r24,lo8(ee+332)
	ldi r25,hi8(ee+332)
	call eeprom_update_word
.LVL131:
	.loc 1 237 0
	call eepromWriteSignature
.LVL132:
	.loc 1 238 0
	call lcd_waitSymbolOff
.LVL133:
/* epilogue start */
	.loc 1 239 0
	pop r29
	pop r28
.LVL134:
	ret
	.cfi_endproc
.LFE29:
	.size	eeprom_UpdateUSB, .-eeprom_UpdateUSB
	.section	.text.eeprom_UpdateMidiThrough,"ax",@progbits
.global	eeprom_UpdateMidiThrough
	.type	eeprom_UpdateMidiThrough, @function
eeprom_UpdateMidiThrough:
.LFB30:
	.loc 1 241 0
	.cfi_startproc
	push r28
.LCFI40:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI41:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 242 0
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,lo8(midiThrough)
	ldi r25,hi8(midiThrough)
	call crc16_ram
.LVL135:
	movw r28,r24
.LVL136:
	.loc 1 243 0
	call lcd_waitSymbolOn
.LVL137:
	.loc 1 244 0
	ldi r22,lo8(84)
	ldi r24,lo8(ee+1012)
	ldi r25,hi8(ee+1012)
	call eeprom_update_byte
.LVL138:
	.loc 1 245 0
	ldi r20,lo8(2)
	ldi r21,0
	ldi r22,lo8(ee+1013)
	ldi r23,hi8(ee+1013)
	ldi r24,lo8(midiThrough)
	ldi r25,hi8(midiThrough)
	call eeprom_update_block
.LVL139:
	.loc 1 246 0
	movw r22,r28
	ldi r24,lo8(ee+1015)
	ldi r25,hi8(ee+1015)
	call eeprom_update_word
.LVL140:
	.loc 1 247 0
	call eepromWriteSignature
.LVL141:
	.loc 1 248 0
	call lcd_waitSymbolOff
.LVL142:
/* epilogue start */
	.loc 1 249 0
	pop r29
	pop r28
.LVL143:
	ret
	.cfi_endproc
.LFE30:
	.size	eeprom_UpdateMidiThrough, .-eeprom_UpdateMidiThrough
	.section	.text.eeprom_UpdateReg,"ax",@progbits
.global	eeprom_UpdateReg
	.type	eeprom_UpdateReg, @function
eeprom_UpdateReg:
.LFB31:
	.loc 1 251 0
	.cfi_startproc
	push r28
.LCFI42:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI43:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 252 0
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(registerCount)
	ldi r25,hi8(registerCount)
	call crc16_ram
.LVL144:
	.loc 1 253 0
	movw r20,r24
	ldi r22,lo8(24)
	ldi r23,0
	ldi r24,lo8(registerMap)
	ldi r25,hi8(registerMap)
.LVL145:
	call crc16_ram_startVal
.LVL146:
	movw r28,r24
.LVL147:
	.loc 1 254 0
	call lcd_waitSymbolOn
.LVL148:
	.loc 1 255 0
	ldi r22,lo8(82)
	ldi r24,lo8(ee+334)
	ldi r25,hi8(ee+334)
	call eeprom_update_byte
.LVL149:
	.loc 1 256 0
	lds r22,registerCount
	ldi r24,lo8(ee+335)
	ldi r25,hi8(ee+335)
	call eeprom_update_byte
.LVL150:
	.loc 1 257 0
	ldi r20,lo8(24)
	ldi r21,0
	ldi r22,lo8(ee+336)
	ldi r23,hi8(ee+336)
	ldi r24,lo8(registerMap)
	ldi r25,hi8(registerMap)
	call eeprom_update_block
.LVL151:
	.loc 1 258 0
	movw r22,r28
	ldi r24,lo8(ee+360)
	ldi r25,hi8(ee+360)
	call eeprom_update_word
.LVL152:
	.loc 1 259 0
	call eepromWriteSignature
.LVL153:
	.loc 1 260 0
	call lcd_waitSymbolOff
.LVL154:
/* epilogue start */
	.loc 1 261 0
	pop r29
	pop r28
.LVL155:
	ret
	.cfi_endproc
.LFE31:
	.size	eeprom_UpdateReg, .-eeprom_UpdateReg
	.section	.text.eeprom_UpdateProg,"ax",@progbits
.global	eeprom_UpdateProg
	.type	eeprom_UpdateProg, @function
eeprom_UpdateProg:
.LFB32:
	.loc 1 263 0
	.cfi_startproc
	push r28
.LCFI44:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI45:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 264 0
	ldi r22,lo8(-128)
	ldi r23,lo8(2)
	ldi r24,lo8(programMap)
	ldi r25,hi8(programMap)
	call crc16_ram
.LVL156:
	movw r28,r24
.LVL157:
	.loc 1 265 0
	call lcd_waitSymbolOn
.LVL158:
	.loc 1 266 0
	ldi r22,lo8(80)
	ldi r24,lo8(ee+362)
	ldi r25,hi8(ee+362)
	call eeprom_update_byte
.LVL159:
	.loc 1 267 0
	ldi r20,lo8(-128)
	ldi r21,lo8(2)
	ldi r22,lo8(ee+363)
	ldi r23,hi8(ee+363)
	ldi r24,lo8(programMap)
	ldi r25,hi8(programMap)
	call eeprom_update_block
.LVL160:
	.loc 1 268 0
	movw r22,r28
	ldi r24,lo8(ee+1003)
	ldi r25,hi8(ee+1003)
	call eeprom_update_word
.LVL161:
	.loc 1 269 0
	call eepromWriteSignature
.LVL162:
	.loc 1 270 0
	call lcd_waitSymbolOff
.LVL163:
/* epilogue start */
	.loc 1 271 0
	pop r29
	pop r28
.LVL164:
	ret
	.cfi_endproc
.LFE32:
	.size	eeprom_UpdateProg, .-eeprom_UpdateProg
	.section	.text.eeprom_UpdateSoftkeys,"ax",@progbits
.global	eeprom_UpdateSoftkeys
	.type	eeprom_UpdateSoftkeys, @function
eeprom_UpdateSoftkeys:
.LFB33:
	.loc 1 273 0
	.cfi_startproc
	push r28
.LCFI46:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI47:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 274 0
	ldi r22,lo8(4)
	ldi r23,0
	ldi r24,lo8(soft_KeyMenuIndex)
	ldi r25,hi8(soft_KeyMenuIndex)
	call crc16_ram
.LVL165:
	movw r28,r24
.LVL166:
	.loc 1 275 0
	call lcd_waitSymbolOn
.LVL167:
	.loc 1 276 0
	ldi r22,lo8(75)
	ldi r24,lo8(ee+1005)
	ldi r25,hi8(ee+1005)
	call eeprom_update_byte
.LVL168:
	.loc 1 277 0
	ldi r20,lo8(4)
	ldi r21,0
	ldi r22,lo8(ee+1006)
	ldi r23,hi8(ee+1006)
	ldi r24,lo8(soft_KeyMenuIndex)
	ldi r25,hi8(soft_KeyMenuIndex)
	call eeprom_update_block
.LVL169:
	.loc 1 278 0
	movw r22,r28
	ldi r24,lo8(ee+1010)
	ldi r25,hi8(ee+1010)
	call eeprom_update_word
.LVL170:
	.loc 1 279 0
	call eepromWriteSignature
.LVL171:
	.loc 1 280 0
	call lcd_waitSymbolOff
.LVL172:
/* epilogue start */
	.loc 1 281 0
	pop r29
	pop r28
.LVL173:
	ret
	.cfi_endproc
.LFE33:
	.size	eeprom_UpdateSoftkeys, .-eeprom_UpdateSoftkeys
	.section	.text.eeprom_UpdateALL,"ax",@progbits
.global	eeprom_UpdateALL
	.type	eeprom_UpdateALL, @function
eeprom_UpdateALL:
.LFB34:
	.loc 1 283 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 284 0
	call eeprom_UpdateManualMap
.LVL174:
	.loc 1 285 0
	call eeprom_UpdateMidiInMap
.LVL175:
	.loc 1 286 0
	call eeprom_UpdateMidiOutMap
.LVL176:
	.loc 1 287 0
	call eeprom_UpdateModules
.LVL177:
	.loc 1 288 0
	call eeprom_UpdateUSB
.LVL178:
	.loc 1 289 0
	call eeprom_UpdateReg
.LVL179:
	.loc 1 290 0
	call eeprom_UpdateProg
.LVL180:
	.loc 1 291 0
	call eeprom_UpdateSoftkeys
.LVL181:
	.loc 1 292 0
	call eeprom_UpdateMidiThrough
.LVL182:
	ret
	.cfi_endproc
.LFE34:
	.size	eeprom_UpdateALL, .-eeprom_UpdateALL
	.section	.text.eepromCopy,"ax",@progbits
.global	eepromCopy
	.type	eepromCopy, @function
eepromCopy:
.LFB35:
	.loc 1 296 0
	.cfi_startproc
.LVL183:
	push r12
.LCFI48:
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
.LCFI49:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI50:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI51:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI52:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI53:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI54:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI55:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r28,r22
	.loc 1 297 0
	rjmp .L52
.LVL184:
.L53:
	.loc 1 298 0
	movw r14,r24
	ldi r18,-1
	sub r14,r18
	sbc r15,r18
.LVL185:
	call eeprom_read_byte
.LVL186:
	movw r12,r28
	ldi r25,-1
	sub r12,r25
	sbc r13,r25
.LVL187:
	mov r22,r24
	movw r24,r28
	call eeprom_update_byte
.LVL188:
	.loc 1 297 0
	movw r20,r16
	.loc 1 298 0
	movw r28,r12
	movw r24,r14
.LVL189:
.L52:
	.loc 1 297 0
	movw r16,r20
	subi r16,1
	sbc r17,__zero_reg__
.LVL190:
	or r20,r21
	brne .L53
/* epilogue start */
	.loc 1 300 0
	pop r29
	pop r28
.LVL191:
	pop r17
	pop r16
.LVL192:
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.cfi_endproc
.LFE35:
	.size	eepromCopy, .-eepromCopy
	.section	.text.eeprom_Backup,"ax",@progbits
.global	eeprom_Backup
	.type	eeprom_Backup, @function
eeprom_Backup:
.LFB36:
	.loc 1 302 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 303 0
	call lcd_waitSymbolOn
.LVL193:
	.loc 1 304 0
	ldi r20,0
	ldi r21,lo8(8)
	ldi r22,lo8(ee+2048)
	ldi r23,hi8(ee+2048)
	ldi r24,lo8(ee)
	ldi r25,hi8(ee)
	call eepromCopy
.LVL194:
	.loc 1 305 0
	call lcd_waitSymbolOff
.LVL195:
	ret
	.cfi_endproc
.LFE36:
	.size	eeprom_Backup, .-eeprom_Backup
	.section	.text.eeprom_Restore,"ax",@progbits
.global	eeprom_Restore
	.type	eeprom_Restore, @function
eeprom_Restore:
.LFB37:
	.loc 1 308 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 309 0
	call lcd_waitSymbolOn
.LVL196:
	.loc 1 310 0
	ldi r20,0
	ldi r21,lo8(8)
	ldi r22,lo8(ee)
	ldi r23,hi8(ee)
	ldi r24,lo8(ee+2048)
	ldi r25,hi8(ee+2048)
	call eepromCopy
.LVL197:
	.loc 1 311 0
	call lcd_waitSymbolOff
.LVL198:
	ret
	.cfi_endproc
.LFE37:
	.size	eeprom_Restore, .-eeprom_Restore
.global	ee_initError
	.section	.bss.ee_initError,"aw",@nobits
	.type	ee_initError, @object
	.size	ee_initError, 1
ee_initError:
	.zero	1
.global	ee
	.section	.eeprom,"aw",@progbits
	.type	ee, @object
	.size	ee, 4096
ee:
	.zero	4096
	.comm	lcdData,10,1
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 ".././Midi.h"
	.file 5 ".././ee_prom.h"
	.file 6 ".././hwtimer.h"
	.file 7 ".././serial.h"
	.file 8 ".././menu.h"
	.file 9 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\eeprom.h"
	.file 10 ".././utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1890
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF127
	.byte	0xc
	.long	.LASF128
	.long	.LASF129
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
	.uleb128 0x5
	.long	0x30
	.long	0x87
	.uleb128 0x6
	.long	0x87
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x7
	.byte	0x3
	.byte	0x4
	.byte	0x43
	.long	0xc1
	.uleb128 0x8
	.long	.LASF10
	.byte	0x4
	.byte	0x44
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF11
	.byte	0x4
	.byte	0x45
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0x46
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF13
	.byte	0x4
	.byte	0x47
	.long	0x8e
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0x73
	.long	0x10d
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0x74
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0x75
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0x76
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0x77
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF18
	.byte	0x4
	.byte	0x78
	.long	0xcc
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.byte	0x7c
	.long	0x13d
	.uleb128 0x8
	.long	.LASF19
	.byte	0x4
	.byte	0x7d
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF20
	.byte	0x4
	.byte	0x7e
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF21
	.byte	0x4
	.byte	0x7f
	.long	0x118
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.byte	0x84
	.long	0x16d
	.uleb128 0x8
	.long	.LASF22
	.byte	0x4
	.byte	0x85
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF23
	.byte	0x4
	.byte	0x86
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF24
	.byte	0x4
	.byte	0x88
	.long	0x148
	.uleb128 0x7
	.byte	0x3
	.byte	0x4
	.byte	0x8e
	.long	0x1ab
	.uleb128 0x8
	.long	.LASF25
	.byte	0x4
	.byte	0x8f
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF26
	.byte	0x4
	.byte	0x90
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0x91
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF27
	.byte	0x4
	.byte	0x92
	.long	0x178
	.uleb128 0x7
	.byte	0xa
	.byte	0x4
	.byte	0x96
	.long	0x1db
	.uleb128 0x8
	.long	.LASF28
	.byte	0x4
	.byte	0x97
	.long	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF29
	.byte	0x4
	.byte	0x98
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.long	0x30
	.long	0x1eb
	.uleb128 0x6
	.long	0x87
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF30
	.byte	0x4
	.byte	0x99
	.long	0x1b6
	.uleb128 0x7
	.byte	0x3
	.byte	0x4
	.byte	0xc3
	.long	0x229
	.uleb128 0x8
	.long	.LASF31
	.byte	0x4
	.byte	0xc4
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF32
	.byte	0x4
	.byte	0xc5
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF33
	.byte	0x4
	.byte	0xc6
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF34
	.byte	0x4
	.byte	0xc7
	.long	0x1f6
	.uleb128 0x9
	.byte	0x2
	.long	0x30
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF35
	.uleb128 0xa
	.long	0x30
	.uleb128 0xb
	.word	0x3fa
	.byte	0x5
	.byte	0x3d
	.long	0x42a
	.uleb128 0x8
	.long	.LASF36
	.byte	0x5
	.byte	0x3e
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x5
	.byte	0x3f
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF38
	.byte	0x5
	.byte	0x40
	.long	0x42a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF39
	.byte	0x5
	.byte	0x41
	.long	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0x8
	.long	.LASF40
	.byte	0x5
	.byte	0x42
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.long	.LASF41
	.byte	0x5
	.byte	0x43
	.long	0x440
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0x8
	.long	.LASF42
	.byte	0x5
	.byte	0x44
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x135
	.uleb128 0x8
	.long	.LASF43
	.byte	0x5
	.byte	0x45
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x137
	.uleb128 0x8
	.long	.LASF44
	.byte	0x5
	.byte	0x46
	.long	0x456
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0x47
	.long	0x229
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0x48
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x143
	.uleb128 0x8
	.long	.LASF47
	.byte	0x5
	.byte	0x49
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x145
	.uleb128 0x8
	.long	.LASF48
	.byte	0x5
	.byte	0x4a
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x146
	.uleb128 0x8
	.long	.LASF49
	.byte	0x5
	.byte	0x4b
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x147
	.uleb128 0x8
	.long	.LASF50
	.byte	0x5
	.byte	0x4c
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x8
	.long	.LASF51
	.byte	0x5
	.byte	0x4d
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x14a
	.uleb128 0x8
	.long	.LASF52
	.byte	0x5
	.byte	0x4e
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x14b
	.uleb128 0x8
	.long	.LASF53
	.byte	0x5
	.byte	0x4f
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x8
	.long	.LASF54
	.byte	0x5
	.byte	0x50
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x14e
	.uleb128 0x8
	.long	.LASF55
	.byte	0x5
	.byte	0x51
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x14f
	.uleb128 0x8
	.long	.LASF56
	.byte	0x5
	.byte	0x52
	.long	0x466
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x8
	.long	.LASF57
	.byte	0x5
	.byte	0x53
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x8
	.long	.LASF58
	.byte	0x5
	.byte	0x54
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x16a
	.uleb128 0x8
	.long	.LASF59
	.byte	0x5
	.byte	0x55
	.long	0x476
	.byte	0x3
	.byte	0x23
	.uleb128 0x16b
	.uleb128 0x8
	.long	.LASF60
	.byte	0x5
	.byte	0x56
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x3eb
	.uleb128 0x8
	.long	.LASF61
	.byte	0x5
	.byte	0x57
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x3ed
	.uleb128 0x8
	.long	.LASF62
	.byte	0x5
	.byte	0x58
	.long	0x77
	.byte	0x3
	.byte	0x23
	.uleb128 0x3ee
	.uleb128 0x8
	.long	.LASF63
	.byte	0x5
	.byte	0x59
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f2
	.uleb128 0x8
	.long	.LASF64
	.byte	0x5
	.byte	0x5a
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f4
	.uleb128 0x8
	.long	.LASF65
	.byte	0x5
	.byte	0x5b
	.long	0x13d
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f5
	.uleb128 0x8
	.long	.LASF66
	.byte	0x5
	.byte	0x5c
	.long	0x49
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f7
	.uleb128 0x8
	.long	.LASF67
	.byte	0x5
	.byte	0x5d
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f9
	.byte	0
	.uleb128 0x5
	.long	0xc1
	.long	0x440
	.uleb128 0x6
	.long	0x87
	.byte	0x3
	.uleb128 0x6
	.long	0x87
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x10d
	.long	0x456
	.uleb128 0x6
	.long	0x87
	.byte	0xf
	.uleb128 0x6
	.long	0x87
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x16d
	.long	0x466
	.uleb128 0x6
	.long	0x87
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x1ab
	.long	0x476
	.uleb128 0x6
	.long	0x87
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	0x1eb
	.long	0x486
	.uleb128 0x6
	.long	0x87
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.long	.LASF68
	.byte	0x5
	.byte	0x5e
	.long	0x246
	.uleb128 0xc
	.word	0x800
	.byte	0x5
	.byte	0x62
	.long	0x4b0
	.uleb128 0xd
	.string	"ee"
	.byte	0x5
	.byte	0x63
	.long	0x486
	.uleb128 0xd
	.string	"raw"
	.byte	0x5
	.byte	0x64
	.long	0x4b0
	.byte	0
	.uleb128 0x5
	.long	0x30
	.long	0x4c1
	.uleb128 0xe
	.long	0x87
	.word	0x7ff
	.byte	0
	.uleb128 0x3
	.long	.LASF69
	.byte	0x5
	.byte	0x65
	.long	0x491
	.uleb128 0xb
	.word	0x1000
	.byte	0x5
	.byte	0x67
	.long	0x4f3
	.uleb128 0x8
	.long	.LASF70
	.byte	0x5
	.byte	0x68
	.long	0x4c1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF71
	.byte	0x5
	.byte	0x69
	.long	0x4c1
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.byte	0
	.uleb128 0x3
	.long	.LASF72
	.byte	0x5
	.byte	0x6a
	.long	0x4cc
	.uleb128 0xf
	.long	.LASF130
	.byte	0x2
	.byte	0x71
	.byte	0x1
	.long	0x49
	.byte	0x3
	.long	0x53c
	.uleb128 0x10
	.long	.LASF73
	.byte	0x2
	.byte	0x71
	.long	0x49
	.uleb128 0x10
	.long	.LASF74
	.byte	0x2
	.byte	0x71
	.long	0x30
	.uleb128 0x11
	.long	.LASF75
	.byte	0x2
	.byte	0x73
	.long	0x30
	.uleb128 0x11
	.long	.LASF76
	.byte	0x2
	.byte	0x74
	.long	0x49
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.long	0x49
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x5be
	.uleb128 0x13
	.long	.LASF77
	.byte	0x1
	.byte	0x27
	.long	0x234
	.long	.LLST0
	.uleb128 0x13
	.long	.LASF78
	.byte	0x1
	.byte	0x27
	.long	0x49
	.long	.LLST1
	.uleb128 0x14
	.long	.LASF82
	.byte	0x1
	.byte	0x28
	.long	0x49
	.long	.LLST2
	.uleb128 0x15
	.long	0x4fe
	.long	.LBB4
	.long	.LBE4
	.byte	0x1
	.byte	0x2a
	.uleb128 0x16
	.long	0x51a
	.long	.LLST3
	.uleb128 0x16
	.long	0x50f
	.long	.LLST4
	.uleb128 0x17
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x18
	.long	0x525
	.uleb128 0x18
	.long	0x530
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.long	0x49
	.long	.LFB12
	.long	.LFE12
	.long	.LLST5
	.byte	0x1
	.long	0x659
	.uleb128 0x13
	.long	.LASF81
	.byte	0x1
	.byte	0x2f
	.long	0x659
	.long	.LLST6
	.uleb128 0x13
	.long	.LASF78
	.byte	0x1
	.byte	0x2f
	.long	0x49
	.long	.LLST7
	.uleb128 0x14
	.long	.LASF82
	.byte	0x1
	.byte	0x30
	.long	0x49
	.long	.LLST8
	.uleb128 0x1a
	.long	0x4fe
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0x32
	.long	0x643
	.uleb128 0x16
	.long	0x51a
	.long	.LLST9
	.uleb128 0x16
	.long	0x50f
	.long	.LLST10
	.uleb128 0x17
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x18
	.long	0x525
	.uleb128 0x18
	.long	0x530
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LVL13
	.long	0x182b
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x241
	.uleb128 0x12
	.byte	0x1
	.long	.LASF83
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.long	0x49
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x6f0
	.uleb128 0x13
	.long	.LASF77
	.byte	0x1
	.byte	0x37
	.long	0x234
	.long	.LLST11
	.uleb128 0x13
	.long	.LASF78
	.byte	0x1
	.byte	0x37
	.long	0x49
	.long	.LLST12
	.uleb128 0x13
	.long	.LASF84
	.byte	0x1
	.byte	0x37
	.long	0x49
	.long	.LLST13
	.uleb128 0x14
	.long	.LASF82
	.byte	0x1
	.byte	0x38
	.long	0x49
	.long	.LLST14
	.uleb128 0x15
	.long	0x4fe
	.long	.LBB12
	.long	.LBE12
	.byte	0x1
	.byte	0x3a
	.uleb128 0x16
	.long	0x51a
	.long	.LLST15
	.uleb128 0x16
	.long	0x50f
	.long	.LLST16
	.uleb128 0x17
	.long	.LBB13
	.long	.LBE13
	.uleb128 0x18
	.long	0x525
	.uleb128 0x18
	.long	0x530
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF85
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.long	0x49
	.long	.LFB14
	.long	.LFE14
	.long	.LLST17
	.byte	0x1
	.long	0x79a
	.uleb128 0x13
	.long	.LASF81
	.byte	0x1
	.byte	0x3f
	.long	0x659
	.long	.LLST18
	.uleb128 0x13
	.long	.LASF78
	.byte	0x1
	.byte	0x3f
	.long	0x49
	.long	.LLST19
	.uleb128 0x13
	.long	.LASF84
	.byte	0x1
	.byte	0x3f
	.long	0x49
	.long	.LLST20
	.uleb128 0x14
	.long	.LASF82
	.byte	0x1
	.byte	0x40
	.long	0x49
	.long	.LLST21
	.uleb128 0x1a
	.long	0x4fe
	.long	.LBB16
	.long	.LBE16
	.byte	0x1
	.byte	0x42
	.long	0x784
	.uleb128 0x16
	.long	0x51a
	.long	.LLST22
	.uleb128 0x16
	.long	0x50f
	.long	.LLST23
	.uleb128 0x17
	.long	.LBB17
	.long	.LBE17
	.uleb128 0x18
	.long	0x525
	.uleb128 0x18
	.long	0x530
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LVL33
	.long	0x182b
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF86
	.byte	0x1
	.byte	0x48
	.long	0x30
	.long	.LFB15
	.long	.LFE15
	.long	.LLST24
	.byte	0x1
	.long	0x83a
	.uleb128 0x1e
	.long	.LVL41
	.long	0x1838
	.long	0x7d3
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
	.long	ee+50
	.byte	0
	.uleb128 0x1e
	.long	.LVL42
	.long	0x5be
	.long	0x7fa
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
	.long	ee+2
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.long	.LVL43
	.long	0x182b
	.long	0x816
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
	.long	ee+1
	.byte	0
	.uleb128 0x1b
	.long	.LVL44
	.long	0x1845
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ee+2
	.uleb128 0x1c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF87
	.byte	0x1
	.byte	0x54
	.long	0x30
	.long	.LFB16
	.long	.LFE16
	.long	.LLST25
	.byte	0x1
	.long	0x8dc
	.uleb128 0x1e
	.long	.LVL45
	.long	0x1838
	.long	0x873
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
	.long	ee+309
	.byte	0
	.uleb128 0x1e
	.long	.LVL46
	.long	0x5be
	.long	0x89b
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
	.long	ee+53
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x100
	.byte	0
	.uleb128 0x1e
	.long	.LVL47
	.long	0x182b
	.long	0x8b7
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
	.long	ee+52
	.byte	0
	.uleb128 0x1b
	.long	.LVL48
	.long	0x1845
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ee+53
	.uleb128 0x1c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x100
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF88
	.byte	0x1
	.byte	0x60
	.long	0x30
	.long	.LFB17
	.long	.LFE17
	.long	.LLST26
	.byte	0x1
	.long	0x9a0
	.uleb128 0x1e
	.long	.LVL49
	.long	0x1838
	.long	0x915
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
	.long	ee+323
	.byte	0
	.uleb128 0x1e
	.long	.LVL50
	.long	0x5be
	.long	0x93b
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
	.long	ee+312
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x1e
	.long	.LVL51
	.long	0x182b
	.long	0x957
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
	.long	ee+311
	.byte	0
	.uleb128 0x1e
	.long	.LVL52
	.long	0x1845
	.long	0x97d
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ee+312
	.uleb128 0x1c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x1b
	.long	.LVL53
	.long	0x1845
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ee+320
	.uleb128 0x1c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF89
	.byte	0x1
	.byte	0x6d
	.long	0x30
	.long	.LFB18
	.long	.LFE18
	.long	.LLST27
	.byte	0x1
	.long	0xa50
	.uleb128 0x1e
	.long	.LVL54
	.long	0x1838
	.long	0x9d9
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
	.long	ee+328
	.byte	0
	.uleb128 0x1e
	.long	.LVL55
	.long	0x5be
	.long	0x9ff
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
	.long	ee+326
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.long	.LVL56
	.long	0x182b
	.long	0xa1b
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
	.long	ee+325
	.byte	0
	.uleb128 0x1e
	.long	.LVL57
	.long	0x182b
	.long	0xa37
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
	.long	ee+326
	.byte	0
	.uleb128 0x1b
	.long	.LVL58
	.long	0x182b
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
	.long	ee+327
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF90
	.byte	0x1
	.byte	0x7a
	.long	0x30
	.long	.LFB19
	.long	.LFE19
	.long	.LLST28
	.byte	0x1
	.long	0xaee
	.uleb128 0x1e
	.long	.LVL59
	.long	0x1838
	.long	0xa89
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
	.long	ee+1015
	.byte	0
	.uleb128 0x1e
	.long	.LVL60
	.long	0x5be
	.long	0xaaf
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
	.long	ee+1013
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1e
	.long	.LVL61
	.long	0x182b
	.long	0xacb
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
	.long	ee+1012
	.byte	0
	.uleb128 0x1b
	.long	.LVL62
	.long	0x1845
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ee+1013
	.uleb128 0x1c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF91
	.byte	0x1
	.byte	0x86
	.long	0x30
	.long	.LFB20
	.long	.LFE20
	.long	.LLST29
	.byte	0x1
	.long	0xb82
	.uleb128 0x1e
	.long	.LVL63
	.long	0x1838
	.long	0xb27
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
	.long	ee+332
	.byte	0
	.uleb128 0x1e
	.long	.LVL64
	.long	0x5be
	.long	0xb4d
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
	.long	ee+331
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.long	.LVL65
	.long	0x182b
	.long	0xb69
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
	.long	ee+330
	.byte	0
	.uleb128 0x1b
	.long	.LVL66
	.long	0x182b
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
	.long	ee+331
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF92
	.byte	0x1
	.byte	0x92
	.long	0x30
	.long	.LFB21
	.long	.LFE21
	.long	.LLST30
	.byte	0x1
	.long	0xc71
	.uleb128 0x1f
	.string	"crc"
	.byte	0x1
	.byte	0x93
	.long	0x49
	.long	.LLST31
	.uleb128 0x1e
	.long	.LVL67
	.long	0x5be
	.long	0xbd4
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
	.long	ee+335
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.long	.LVL69
	.long	0x6f0
	.long	0xbfa
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
	.long	ee+336
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x48
	.byte	0
	.uleb128 0x1e
	.long	.LVL72
	.long	0x1838
	.long	0xc16
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
	.long	ee+360
	.byte	0
	.uleb128 0x1e
	.long	.LVL73
	.long	0x182b
	.long	0xc32
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
	.long	ee+334
	.byte	0
	.uleb128 0x1e
	.long	.LVL74
	.long	0x182b
	.long	0xc4e
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
	.long	ee+335
	.byte	0
	.uleb128 0x1b
	.long	.LVL75
	.long	0x1845
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ee+336
	.uleb128 0x1c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF93
	.byte	0x1
	.byte	0xa1
	.long	0x30
	.long	.LFB22
	.long	.LFE22
	.long	.LLST32
	.byte	0x1
	.long	0xd13
	.uleb128 0x1e
	.long	.LVL77
	.long	0x1838
	.long	0xcaa
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
	.long	ee+1003
	.byte	0
	.uleb128 0x1e
	.long	.LVL78
	.long	0x5be
	.long	0xcd2
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
	.long	ee+363
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x280
	.byte	0
	.uleb128 0x1e
	.long	.LVL79
	.long	0x182b
	.long	0xcee
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
	.long	ee+362
	.byte	0
	.uleb128 0x1b
	.long	.LVL80
	.long	0x1845
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ee+363
	.uleb128 0x1c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x280
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF94
	.byte	0x1
	.byte	0xac
	.long	0x30
	.long	.LFB23
	.long	.LFE23
	.long	.LLST33
	.byte	0x1
	.long	0xd95
	.uleb128 0x1e
	.long	.LVL81
	.long	0x1838
	.long	0xd4c
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
	.long	ee+1010
	.byte	0
	.uleb128 0x1e
	.long	.LVL82
	.long	0x5be
	.long	0xd72
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
	.long	ee+1006
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1b
	.long	.LVL83
	.long	0x1845
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ee+1006
	.uleb128 0x1c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF95
	.byte	0x1
	.byte	0xb7
	.long	.LFB24
	.long	.LFE24
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0xdee
	.uleb128 0x1e
	.long	.LVL84
	.long	0x1852
	.long	0xdcf
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
	.long	ee
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.long	.LVL85
	.long	0x1852
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
	.long	ee+1017
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x65
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF96
	.byte	0x1
	.byte	0xbc
	.long	.LFB25
	.long	.LFE25
	.long	.LLST34
	.byte	0x1
	.long	0xebb
	.uleb128 0x1f
	.string	"crc"
	.byte	0x1
	.byte	0xbd
	.long	0x49
	.long	.LLST35
	.uleb128 0x1e
	.long	.LVL86
	.long	0x53c
	.long	0xe2f
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.long	.LVL88
	.long	0x185f
	.uleb128 0x1e
	.long	.LVL89
	.long	0x1852
	.long	0xe5a
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
	.long	ee+1
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x4d
	.byte	0
	.uleb128 0x1e
	.long	.LVL90
	.long	0x186c
	.long	0xe81
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ee+2
	.uleb128 0x1c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.long	.LVL91
	.long	0x1879
	.long	0xea8
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
	.long	ee+50
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL92
	.long	0xd95
	.uleb128 0x22
	.long	.LVL93
	.long	0x1886
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF97
	.byte	0x1
	.byte	0xc6
	.long	.LFB26
	.long	.LFE26
	.long	.LLST36
	.byte	0x1
	.long	0xf8a
	.uleb128 0x1f
	.string	"crc"
	.byte	0x1
	.byte	0xc7
	.long	0x49
	.long	.LLST37
	.uleb128 0x1e
	.long	.LVL95
	.long	0x53c
	.long	0xefd
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x100
	.byte	0
	.uleb128 0x22
	.long	.LVL97
	.long	0x185f
	.uleb128 0x1e
	.long	.LVL98
	.long	0x1852
	.long	0xf28
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
	.long	ee+52
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x49
	.byte	0
	.uleb128 0x1e
	.long	.LVL99
	.long	0x186c
	.long	0xf50
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ee+53
	.uleb128 0x1c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x100
	.byte	0
	.uleb128 0x1e
	.long	.LVL100
	.long	0x1879
	.long	0xf77
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
	.long	ee+309
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL101
	.long	0xd95
	.uleb128 0x22
	.long	.LVL102
	.long	0x1886
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF98
	.byte	0x1
	.byte	0xd0
	.long	.LFB27
	.long	.LFE27
	.long	.LLST38
	.byte	0x1
	.long	0x1093
	.uleb128 0x1f
	.string	"crc"
	.byte	0x1
	.byte	0xd1
	.long	0x49
	.long	.LLST39
	.uleb128 0x1e
	.long	.LVL104
	.long	0x53c
	.long	0xfca
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x1e
	.long	.LVL106
	.long	0x65f
	.long	0xfe2
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x22
	.long	.LVL108
	.long	0x185f
	.uleb128 0x1e
	.long	.LVL109
	.long	0x1852
	.long	0x100d
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
	.long	ee+311
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x4f
	.byte	0
	.uleb128 0x1e
	.long	.LVL110
	.long	0x186c
	.long	0x1033
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ee+312
	.uleb128 0x1c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x1e
	.long	.LVL111
	.long	0x186c
	.long	0x1059
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ee+320
	.uleb128 0x1c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1e
	.long	.LVL112
	.long	0x1879
	.long	0x1080
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
	.long	ee+323
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL113
	.long	0xd95
	.uleb128 0x22
	.long	.LVL114
	.long	0x1886
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF99
	.byte	0x1
	.byte	0xdc
	.long	.LFB28
	.long	.LFE28
	.long	.LLST40
	.byte	0x1
	.long	0x1170
	.uleb128 0x1f
	.string	"crc"
	.byte	0x1
	.byte	0xdd
	.long	0x49
	.long	.LLST41
	.uleb128 0x1e
	.long	.LVL116
	.long	0x53c
	.long	0x10d3
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x22
	.long	.LVL118
	.long	0x185f
	.uleb128 0x1e
	.long	.LVL119
	.long	0x1852
	.long	0x10fe
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
	.long	ee+325
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x69
	.byte	0
	.uleb128 0x1e
	.long	.LVL120
	.long	0x1852
	.long	0x111a
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
	.long	ee+326
	.byte	0
	.uleb128 0x1e
	.long	.LVL121
	.long	0x1852
	.long	0x1136
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
	.long	ee+327
	.byte	0
	.uleb128 0x1e
	.long	.LVL122
	.long	0x1879
	.long	0x115d
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
	.long	ee+328
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL123
	.long	0xd95
	.uleb128 0x22
	.long	.LVL124
	.long	0x1886
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF100
	.byte	0x1
	.byte	0xe7
	.long	.LFB29
	.long	.LFE29
	.long	.LLST42
	.byte	0x1
	.long	0x1231
	.uleb128 0x1f
	.string	"crc"
	.byte	0x1
	.byte	0xe8
	.long	0x49
	.long	.LLST43
	.uleb128 0x1e
	.long	.LVL126
	.long	0x53c
	.long	0x11b0
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x22
	.long	.LVL128
	.long	0x185f
	.uleb128 0x1e
	.long	.LVL129
	.long	0x1852
	.long	0x11db
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
	.long	ee+330
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x55
	.byte	0
	.uleb128 0x1e
	.long	.LVL130
	.long	0x1852
	.long	0x11f7
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
	.long	ee+331
	.byte	0
	.uleb128 0x1e
	.long	.LVL131
	.long	0x1879
	.long	0x121e
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
	.long	ee+332
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL132
	.long	0xd95
	.uleb128 0x22
	.long	.LVL133
	.long	0x1886
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF101
	.byte	0x1
	.byte	0xf1
	.long	.LFB30
	.long	.LFE30
	.long	.LLST44
	.byte	0x1
	.long	0x12fc
	.uleb128 0x1f
	.string	"crc"
	.byte	0x1
	.byte	0xf2
	.long	0x49
	.long	.LLST45
	.uleb128 0x1e
	.long	.LVL135
	.long	0x53c
	.long	0x1271
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x22
	.long	.LVL137
	.long	0x185f
	.uleb128 0x1e
	.long	.LVL138
	.long	0x1852
	.long	0x129c
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
	.long	ee+1012
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x54
	.byte	0
	.uleb128 0x1e
	.long	.LVL139
	.long	0x186c
	.long	0x12c2
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ee+1013
	.uleb128 0x1c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1e
	.long	.LVL140
	.long	0x1879
	.long	0x12e9
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
	.long	ee+1015
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL141
	.long	0xd95
	.uleb128 0x22
	.long	.LVL142
	.long	0x1886
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF102
	.byte	0x1
	.byte	0xfb
	.long	.LFB31
	.long	.LFE31
	.long	.LLST46
	.byte	0x1
	.long	0x13fb
	.uleb128 0x1f
	.string	"crc"
	.byte	0x1
	.byte	0xfc
	.long	0x49
	.long	.LLST47
	.uleb128 0x1e
	.long	.LVL144
	.long	0x53c
	.long	0x133c
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1e
	.long	.LVL146
	.long	0x65f
	.long	0x1354
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x48
	.byte	0
	.uleb128 0x22
	.long	.LVL148
	.long	0x185f
	.uleb128 0x1e
	.long	.LVL149
	.long	0x1852
	.long	0x137f
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
	.long	ee+334
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x52
	.byte	0
	.uleb128 0x1e
	.long	.LVL150
	.long	0x1852
	.long	0x139b
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
	.long	ee+335
	.byte	0
	.uleb128 0x1e
	.long	.LVL151
	.long	0x186c
	.long	0x13c1
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ee+336
	.uleb128 0x1c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x48
	.byte	0
	.uleb128 0x1e
	.long	.LVL152
	.long	0x1879
	.long	0x13e8
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
	.long	ee+360
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL153
	.long	0xd95
	.uleb128 0x22
	.long	.LVL154
	.long	0x1886
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF103
	.byte	0x1
	.word	0x107
	.long	.LFB32
	.long	.LFE32
	.long	.LLST48
	.byte	0x1
	.long	0x14cc
	.uleb128 0x24
	.string	"crc"
	.byte	0x1
	.word	0x108
	.long	0x49
	.long	.LLST49
	.uleb128 0x1e
	.long	.LVL156
	.long	0x53c
	.long	0x143f
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x280
	.byte	0
	.uleb128 0x22
	.long	.LVL158
	.long	0x185f
	.uleb128 0x1e
	.long	.LVL159
	.long	0x1852
	.long	0x146a
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
	.long	ee+362
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.uleb128 0x1e
	.long	.LVL160
	.long	0x186c
	.long	0x1492
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ee+363
	.uleb128 0x1c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x280
	.byte	0
	.uleb128 0x1e
	.long	.LVL161
	.long	0x1879
	.long	0x14b9
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
	.long	ee+1003
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL162
	.long	0xd95
	.uleb128 0x22
	.long	.LVL163
	.long	0x1886
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF104
	.byte	0x1
	.word	0x111
	.long	.LFB33
	.long	.LFE33
	.long	.LLST50
	.byte	0x1
	.long	0x1599
	.uleb128 0x24
	.string	"crc"
	.byte	0x1
	.word	0x112
	.long	0x49
	.long	.LLST51
	.uleb128 0x1e
	.long	.LVL165
	.long	0x53c
	.long	0x150e
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x22
	.long	.LVL167
	.long	0x185f
	.uleb128 0x1e
	.long	.LVL168
	.long	0x1852
	.long	0x1539
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
	.long	ee+1005
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x4b
	.byte	0
	.uleb128 0x1e
	.long	.LVL169
	.long	0x186c
	.long	0x155f
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ee+1006
	.uleb128 0x1c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1e
	.long	.LVL170
	.long	0x1879
	.long	0x1586
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
	.long	ee+1010
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LVL171
	.long	0xd95
	.uleb128 0x22
	.long	.LVL172
	.long	0x1886
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF105
	.byte	0x1
	.word	0x11b
	.long	.LFB34
	.long	.LFE34
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1605
	.uleb128 0x22
	.long	.LVL174
	.long	0xdee
	.uleb128 0x22
	.long	.LVL175
	.long	0xebb
	.uleb128 0x22
	.long	.LVL176
	.long	0xf8a
	.uleb128 0x22
	.long	.LVL177
	.long	0x1093
	.uleb128 0x22
	.long	.LVL178
	.long	0x1170
	.uleb128 0x22
	.long	.LVL179
	.long	0x12fc
	.uleb128 0x22
	.long	.LVL180
	.long	0x13fb
	.uleb128 0x22
	.long	.LVL181
	.long	0x14cc
	.uleb128 0x22
	.long	.LVL182
	.long	0x1231
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF106
	.byte	0x1
	.word	0x128
	.byte	0x1
	.long	.LFB35
	.long	.LFE35
	.long	.LLST52
	.byte	0x1
	.long	0x167f
	.uleb128 0x27
	.long	.LASF107
	.byte	0x1
	.word	0x128
	.long	0x234
	.long	.LLST53
	.uleb128 0x27
	.long	.LASF108
	.byte	0x1
	.word	0x128
	.long	0x234
	.long	.LLST54
	.uleb128 0x27
	.long	.LASF78
	.byte	0x1
	.word	0x128
	.long	0x49
	.long	.LLST55
	.uleb128 0x1e
	.long	.LVL186
	.long	0x182b
	.long	0x1669
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 -1
	.byte	0
	.uleb128 0x1b
	.long	.LVL188
	.long	0x1852
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF109
	.byte	0x1
	.word	0x12e
	.long	.LFB36
	.long	.LFE36
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x16e2
	.uleb128 0x22
	.long	.LVL193
	.long	0x185f
	.uleb128 0x1e
	.long	.LVL194
	.long	0x1605
	.long	0x16d8
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
	.long	ee
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ee+2048
	.uleb128 0x1c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x800
	.byte	0
	.uleb128 0x22
	.long	.LVL195
	.long	0x1886
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF110
	.byte	0x1
	.word	0x134
	.long	.LFB37
	.long	.LFE37
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1745
	.uleb128 0x22
	.long	.LVL196
	.long	0x185f
	.uleb128 0x1e
	.long	.LVL197
	.long	0x1605
	.long	0x173b
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
	.long	ee+2048
	.uleb128 0x1c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ee
	.uleb128 0x1c
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x800
	.byte	0
	.uleb128 0x22
	.long	.LVL198
	.long	0x1886
	.byte	0
	.uleb128 0x28
	.long	.LASF111
	.byte	0x6
	.byte	0xb9
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.long	.LASF112
	.byte	0x6
	.byte	0xba
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.long	.LASF113
	.byte	0x7
	.byte	0x5c
	.long	0x176c
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.long	0x30
	.uleb128 0x28
	.long	.LASF38
	.byte	0x4
	.byte	0x48
	.long	0x42a
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.long	.LASF41
	.byte	0x4
	.byte	0x7a
	.long	0x440
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.long	.LASF65
	.byte	0x4
	.byte	0x81
	.long	0x13d
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.long	.LASF44
	.byte	0x4
	.byte	0x89
	.long	0x456
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.long	.LASF56
	.byte	0x4
	.byte	0x93
	.long	0x466
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.long	.LASF114
	.byte	0x4
	.byte	0x95
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.long	.LASF59
	.byte	0x4
	.byte	0x9a
	.long	0x476
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.long	.LASF115
	.byte	0x4
	.byte	0xc8
	.long	0x229
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.long	0x30
	.long	0x17e9
	.uleb128 0x6
	.long	0x87
	.byte	0x9
	.byte	0
	.uleb128 0x2a
	.long	.LASF116
	.byte	0x8
	.byte	0xad
	.long	0x17d9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcdData
	.uleb128 0x28
	.long	.LASF117
	.byte	0x8
	.byte	0xf5
	.long	0x77
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"ee"
	.byte	0x1
	.byte	0x1f
	.long	0x4f3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ee
	.uleb128 0x2a
	.long	.LASF118
	.byte	0x1
	.byte	0x23
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ee_initError
	.uleb128 0x2c
	.byte	0x1
	.byte	0x1
	.long	.LASF119
	.long	.LASF119
	.byte	0x9
	.byte	0x8b
	.uleb128 0x2c
	.byte	0x1
	.byte	0x1
	.long	.LASF120
	.long	.LASF120
	.byte	0x9
	.byte	0x90
	.uleb128 0x2c
	.byte	0x1
	.byte	0x1
	.long	.LASF121
	.long	.LASF121
	.byte	0x9
	.byte	0xa0
	.uleb128 0x2c
	.byte	0x1
	.byte	0x1
	.long	.LASF122
	.long	.LASF122
	.byte	0x9
	.byte	0xc1
	.uleb128 0x2c
	.byte	0x1
	.byte	0x1
	.long	.LASF123
	.long	.LASF123
	.byte	0xa
	.byte	0x30
	.uleb128 0x2c
	.byte	0x1
	.byte	0x1
	.long	.LASF124
	.long	.LASF124
	.byte	0x9
	.byte	0xd6
	.uleb128 0x2c
	.byte	0x1
	.byte	0x1
	.long	.LASF125
	.long	.LASF125
	.byte	0x9
	.byte	0xc6
	.uleb128 0x2c
	.byte	0x1
	.byte	0x1
	.long	.LASF126
	.long	.LASF126
	.byte	0xa
	.byte	0x31
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
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x20
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.long	.LVL2
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2
	.long	.LVL4
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4
	.long	.LVL7
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LFE11
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL3
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LVL7
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LVL8
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
	.long	.LFE11
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL3
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL3
	.long	.LVL6
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LFE11
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL6
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST4:
	.long	.LVL5
	.long	.LVL6
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST5:
	.long	.LFB12
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
	.long	.LFE12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST6:
	.long	.LVL9
	.long	.LVL12
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL12
	.long	.LVL16
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
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
.LLST7:
	.long	.LVL9
	.long	.LVL11
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL11
	.long	.LVL16
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LVL20
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20
	.long	.LFE12
	.word	0x3
	.byte	0x86
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL10
	.long	.LVL11
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL11
	.long	.LVL14
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LVL19
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL19
	.long	.LFE12
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST9:
	.long	.LVL13
	.long	.LVL14
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST10:
	.long	.LVL13
	.long	.LVL15
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST11:
	.long	.LVL21
	.long	.LVL22
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL22
	.long	.LVL24
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24
	.long	.LVL27
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL27
	.long	.LFE13
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST12:
	.long	.LVL21
	.long	.LVL23
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL23
	.long	.LVL27
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL27
	.long	.LVL28
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL28
	.long	.LFE13
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST13:
	.long	.LVL21
	.long	.LVL23
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST14:
	.long	.LVL22
	.long	.LVL23
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL23
	.long	.LVL26
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL27
	.long	.LFE13
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST15:
	.long	.LVL25
	.long	.LVL26
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST16:
	.long	.LVL25
	.long	.LVL26
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST17:
	.long	.LFB14
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
	.long	.LFE14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST18:
	.long	.LVL29
	.long	.LVL32
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
	.long	.LVL36
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL36
	.long	.LVL38
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST19:
	.long	.LVL29
	.long	.LVL31
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL31
	.long	.LVL36
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL36
	.long	.LVL37
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL37
	.long	.LVL40
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL40
	.long	.LFE14
	.word	0x3
	.byte	0x86
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL29
	.long	.LVL31
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST21:
	.long	.LVL30
	.long	.LVL31
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL31
	.long	.LVL35
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL36
	.long	.LVL39
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL39
	.long	.LFE14
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST22:
	.long	.LVL33
	.long	.LVL34
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST23:
	.long	.LVL33
	.long	.LVL35
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST24:
	.long	.LFB15
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
	.long	.LFE15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST25:
	.long	.LFB16
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
	.long	.LFE16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST26:
	.long	.LFB17
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
	.long	.LFE17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST27:
	.long	.LFB18
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
	.long	.LFE18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST28:
	.long	.LFB19
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
	.long	.LFE19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST29:
	.long	.LFB20
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
	.long	.LFE20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST30:
	.long	.LFB21
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
	.long	.LFE21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST31:
	.long	.LVL67
	.long	.LVL68
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL68
	.long	.LVL69-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL70
	.long	.LVL71
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL71
	.long	.LVL76
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST32:
	.long	.LFB22
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI27
	.long	.LFE22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST33:
	.long	.LFB23
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI29
	.long	.LFE23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST34:
	.long	.LFB25
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
	.long	.LFE25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST35:
	.long	.LVL87
	.long	.LVL88-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL88-1
	.long	.LVL94
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST36:
	.long	.LFB26
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI32
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI33
	.long	.LFE26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST37:
	.long	.LVL96
	.long	.LVL97-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL97-1
	.long	.LVL103
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
	.long	.LFB27
	.long	.LCFI34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI34
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI35
	.long	.LFE27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST39:
	.long	.LVL104
	.long	.LVL105
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL105
	.long	.LVL106-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL107
	.long	.LVL108-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL108-1
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
.LLST40:
	.long	.LFB28
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
	.long	.LFE28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST41:
	.long	.LVL117
	.long	.LVL118-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL118-1
	.long	.LVL125
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST42:
	.long	.LFB29
	.long	.LCFI38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI38
	.long	.LCFI39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI39
	.long	.LFE29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST43:
	.long	.LVL127
	.long	.LVL128-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL128-1
	.long	.LVL134
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST44:
	.long	.LFB30
	.long	.LCFI40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI40
	.long	.LCFI41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI41
	.long	.LFE30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST45:
	.long	.LVL136
	.long	.LVL137-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL137-1
	.long	.LVL143
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST46:
	.long	.LFB31
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI42
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI43
	.long	.LFE31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST47:
	.long	.LVL144
	.long	.LVL145
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL145
	.long	.LVL146-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL147
	.long	.LVL148-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL148-1
	.long	.LVL155
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST48:
	.long	.LFB32
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
	.long	.LFE32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST49:
	.long	.LVL157
	.long	.LVL158-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL158-1
	.long	.LVL164
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST50:
	.long	.LFB33
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
	.long	.LFE33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST51:
	.long	.LVL166
	.long	.LVL167-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL167-1
	.long	.LVL173
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST52:
	.long	.LFB35
	.long	.LCFI48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI48
	.long	.LCFI49
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI49
	.long	.LCFI50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI50
	.long	.LCFI51
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI51
	.long	.LCFI52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI52
	.long	.LCFI53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI53
	.long	.LCFI54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI54
	.long	.LCFI55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI55
	.long	.LFE35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST53:
	.long	.LVL183
	.long	.LVL185
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL185
	.long	.LVL189
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL189
	.long	.LFE35
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST54:
	.long	.LVL183
	.long	.LVL184
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL184
	.long	.LVL187
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL187
	.long	.LVL189
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL189
	.long	.LVL191
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST55:
	.long	.LVL183
	.long	.LVL184
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL184
	.long	.LVL189
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL189
	.long	.LVL190
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL190
	.long	.LVL192
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL192
	.long	.LFE35
	.word	0x3
	.byte	0x84
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xec
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
	.long	.LFB16
	.long	.LFE16-.LFB16
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
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.long	.LFB16
	.long	.LFE16
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
	.long	.LFB37
	.long	.LFE37
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF78:
	.string	"count"
.LASF12:
	.string	"bitStart"
.LASF122:
	.string	"eeprom_update_byte"
.LASF58:
	.string	"charProg"
.LASF102:
	.string	"eeprom_UpdateReg"
.LASF39:
	.string	"manualMap_crc"
.LASF110:
	.string	"eeprom_Restore"
.LASF64:
	.string	"charMidiThrough"
.LASF100:
	.string	"eeprom_UpdateUSB"
.LASF107:
	.string	"pSource"
.LASF27:
	.string	"RegisterMap_t"
.LASF66:
	.string	"midiThrough_crc"
.LASF8:
	.string	"long long unsigned int"
.LASF20:
	.string	"OutChannel"
.LASF50:
	.string	"moduleInstalled_crc"
.LASF40:
	.string	"charMidiInMap"
.LASF44:
	.string	"midiOutMap"
.LASF115:
	.string	"midi_Setting"
.LASF62:
	.string	"softKeyMenuIndex"
.LASF87:
	.string	"eeprom_ReadMidiInMap"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF47:
	.string	"charModInst"
.LASF23:
	.string	"sw_channel"
.LASF57:
	.string	"reg_crc"
.LASF127:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF111:
	.string	"pipe_ModuleAssnRead"
.LASF16:
	.string	"noteRange"
.LASF113:
	.string	"serusb_Active"
.LASF5:
	.string	"long int"
.LASF59:
	.string	"programMap"
.LASF124:
	.string	"eeprom_update_block"
.LASF117:
	.string	"soft_KeyMenuIndex"
.LASF41:
	.string	"midiInMap"
.LASF3:
	.string	"uint16_t"
.LASF72:
	.string	"EECompl_t"
.LASF98:
	.string	"eeprom_UpdateMidiOutMap"
.LASF116:
	.string	"lcdData"
.LASF15:
	.string	"midiNote"
.LASF125:
	.string	"eeprom_update_word"
.LASF11:
	.string	"endNote"
.LASF19:
	.string	"InChannel"
.LASF24:
	.string	"MidiOutMap_t"
.LASF55:
	.string	"regCount"
.LASF99:
	.string	"eeprom_UpdateModules"
.LASF75:
	.string	"__tmp"
.LASF88:
	.string	"eeprom_ReadMidiOutMap"
.LASF77:
	.string	"pRam"
.LASF104:
	.string	"eeprom_UpdateSoftkeys"
.LASF65:
	.string	"midiThrough"
.LASF37:
	.string	"charManMap"
.LASF13:
	.string	"ManualMap_t"
.LASF43:
	.string	"charMidiOutMap"
.LASF4:
	.string	"unsigned int"
.LASF48:
	.string	"moduleAssignRead"
.LASF103:
	.string	"eeprom_UpdateProg"
.LASF33:
	.string	"AcceptProgChange"
.LASF51:
	.string	"charUSB"
.LASF14:
	.string	"manual"
.LASF68:
	.string	"Ee_t"
.LASF42:
	.string	"midiInMap_crc"
.LASF6:
	.string	"long unsigned int"
.LASF74:
	.string	"__data"
.LASF71:
	.string	"eeBackup"
.LASF28:
	.string	"registers"
.LASF22:
	.string	"hw_channel"
.LASF97:
	.string	"eeprom_UpdateMidiInMap"
.LASF112:
	.string	"pipe_ModuleAssnWrite"
.LASF81:
	.string	"pEeprom"
.LASF10:
	.string	"startNote"
.LASF108:
	.string	"pDest"
.LASF109:
	.string	"eeprom_Backup"
.LASF18:
	.string	"MidiInMap_t"
.LASF30:
	.string	"ProgramInfo_t"
.LASF54:
	.string	"charReg"
.LASF53:
	.string	"usb_crc"
.LASF63:
	.string	"softKeys_crc"
.LASF9:
	.string	"sizetype"
.LASF106:
	.string	"eepromCopy"
.LASF52:
	.string	"usbActive"
.LASF80:
	.string	"crc16_eeprom"
.LASF17:
	.string	"manualNote"
.LASF79:
	.string	"crc16_ram"
.LASF46:
	.string	"midiOutMap_crc"
.LASF114:
	.string	"registerCount"
.LASF90:
	.string	"eeprom_ReadMidiThrough"
.LASF119:
	.string	"eeprom_read_byte"
.LASF34:
	.string	"MidiSetting_t"
.LASF49:
	.string	"moduleAssignWrite"
.LASF60:
	.string	"prog_crc"
.LASF76:
	.string	"__ret"
.LASF29:
	.string	"couplers"
.LASF129:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF73:
	.string	"__crc"
.LASF1:
	.string	"unsigned char"
.LASF126:
	.string	"lcd_waitSymbolOff"
.LASF86:
	.string	"eeprom_ReadManualMap"
.LASF130:
	.string	"_crc16_update"
.LASF93:
	.string	"eeprom_ReadProg"
.LASF21:
	.string	"MidiThrough_t"
.LASF84:
	.string	"crcVal"
.LASF92:
	.string	"eeprom_ReadReg"
.LASF91:
	.string	"eeprom_ReadUSB"
.LASF36:
	.string	"charStart"
.LASF35:
	.string	"char"
.LASF105:
	.string	"eeprom_UpdateALL"
.LASF95:
	.string	"eepromWriteSignature"
.LASF56:
	.string	"registerMap"
.LASF38:
	.string	"manualMap"
.LASF61:
	.string	"charSoftkey"
.LASF25:
	.string	"startReg"
.LASF45:
	.string	"midiSettings"
.LASF120:
	.string	"eeprom_read_word"
.LASF32:
	.string	"VelZero4Off"
.LASF89:
	.string	"eeprom_ReadModules"
.LASF83:
	.string	"crc16_ram_startVal"
.LASF67:
	.string	"charEnd"
.LASF101:
	.string	"eeprom_UpdateMidiThrough"
.LASF26:
	.string	"endReg"
.LASF2:
	.string	"uint8_t"
.LASF118:
	.string	"ee_initError"
.LASF123:
	.string	"lcd_waitSymbolOn"
.LASF128:
	.string	".././ee_prom.c"
.LASF85:
	.string	"crc16_eeprom_startVal"
.LASF96:
	.string	"eeprom_UpdateManualMap"
.LASF31:
	.string	"TxActivceSense"
.LASF94:
	.string	"eeprom_ReadSoftkeys"
.LASF121:
	.string	"eeprom_read_block"
.LASF82:
	.string	"result"
.LASF70:
	.string	"eeData"
.LASF69:
	.string	"EEblock_t"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_clear_bss
