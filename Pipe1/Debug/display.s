	.file	"display.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.calcSpaces,"ax",@progbits
.global	calcSpaces
	.type	calcSpaces, @function
calcSpaces:
.LFB1:
	.file 1 ".././display.c"
	.loc 1 45 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r30,lo8(sectionBuffer)
	ldi r31,hi8(sectionBuffer)
	.loc 1 47 0
	ldi r24,0
.LVL1:
	rjmp .L2
.LVL2:
.L3:
	.loc 1 50 0
	subi r24,lo8(-(1))
.LVL3:
	.loc 1 49 0
	cpi r24,lo8(32)
	breq .L6
.LVL4:
.L2:
	.loc 1 49 0 is_stmt 0 discriminator 1
	ld r25,Z+
.LVL5:
	cpse r25,__zero_reg__
	rjmp .L3
.LVL6:
.L6:
	sts textLen,r24
	ret
	.cfi_endproc
.LFE1:
	.size	calcSpaces, .-calcSpaces
	.section	.text.init_disp,"ax",@progbits
.global	init_disp
	.type	init_disp, @function
init_disp:
.LFB2:
	.loc 1 63 0 is_stmt 1
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL7:
	ldi r30,lo8(sectionStatus)
	ldi r31,hi8(sectionStatus)
.LBB6:
	.loc 1 65 0
	ldi r24,lo8(-1)
.LVL8:
.L9:
	.loc 1 65 0 is_stmt 0 discriminator 3
	st Z,r24
	.loc 1 66 0 is_stmt 1 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 67 0 discriminator 3
	std Z+1,__zero_reg__
	adiw r30,3
	.loc 1 64 0 discriminator 3
	ldi r25,hi8(sectionStatus+60)
	cpi r30,lo8(sectionStatus+60)
	cpc r31,r25
	brne .L9
.LBE6:
.LBB7:
.LBB8:
	.loc 1 74 0
	call lcd_clrscr
.LVL9:
	ldi r30,lo8(displayBuffer)
	ldi r31,hi8(displayBuffer)
.LBB9:
	.loc 1 76 0
	ldi r24,lo8(32)
.LVL10:
.L10:
	st Z+,r24
.LVL11:
	.loc 1 75 0
	ldi r25,hi8(displayBuffer+128)
	cpi r30,lo8(displayBuffer+128)
	cpc r31,r25
	brne .L10
/* epilogue start */
.LBE9:
.LBE8:
.LBE7:
	.loc 1 70 0
	ret
	.cfi_endproc
.LFE2:
	.size	init_disp, .-init_disp
	.section	.text.disp_clear,"ax",@progbits
.global	disp_clear
	.type	disp_clear, @function
disp_clear:
.LFB3:
	.loc 1 72 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 74 0
	call lcd_clrscr
.LVL12:
	ldi r30,lo8(displayBuffer)
	ldi r31,hi8(displayBuffer)
.LBB10:
	.loc 1 76 0
	ldi r24,lo8(32)
.LVL13:
.L14:
	.loc 1 76 0 is_stmt 0 discriminator 3
	st Z+,r24
.LVL14:
	.loc 1 75 0 is_stmt 1 discriminator 3
	ldi r25,hi8(displayBuffer+128)
	cpi r30,lo8(displayBuffer+128)
	cpc r31,r25
	brne .L14
/* epilogue start */
.LBE10:
	.loc 1 78 0
	ret
	.cfi_endproc
.LFE3:
	.size	disp_clear, .-disp_clear
	.section	.text.disp_redraw,"ax",@progbits
.global	disp_redraw
	.type	disp_redraw, @function
disp_redraw:
.LFB4:
	.loc 1 80 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI1:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 82 0
	ldi r24,0
	call lcd_goto
.LVL15:
	ldi r28,lo8(displayBuffer)
	ldi r29,hi8(displayBuffer)
.LVL16:
.L17:
.LBB11:
	.loc 1 84 0 discriminator 3
	ld r24,Y+
.LVL17:
	call lcd_putc
.LVL18:
	.loc 1 83 0 discriminator 3
	ldi r24,hi8(displayBuffer+104)
	cpi r28,lo8(displayBuffer+104)
	cpc r29,r24
	brne .L17
/* epilogue start */
.LBE11:
	.loc 1 86 0
	pop r29
	pop r28
.LVL19:
	ret
	.cfi_endproc
.LFE4:
	.size	disp_redraw, .-disp_redraw
	.section	.text.disp_beginSectionUpdate,"ax",@progbits
.global	disp_beginSectionUpdate
	.type	disp_beginSectionUpdate, @function
disp_beginSectionUpdate:
.LFB5:
	.loc 1 91 0
	.cfi_startproc
.LVL20:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 92 0
	ldi r25,0
	movw r30,r24
	lsl r30
	rol r31
	add r24,r30
	adc r25,r31
.LVL21:
	movw r30,r24
	subi r30,lo8(-(sectionStatus))
	sbci r31,hi8(-(sectionStatus))
	ldi r24,lo8(-1)
	std Z+1,r24
	ret
	.cfi_endproc
.LFE5:
	.size	disp_beginSectionUpdate, .-disp_beginSectionUpdate
	.section	.text.disp_endSectionUpdate,"ax",@progbits
.global	disp_endSectionUpdate
	.type	disp_endSectionUpdate, @function
disp_endSectionUpdate:
.LFB6:
	.loc 1 95 0
	.cfi_startproc
.LVL22:
	push r8
.LCFI2:
	.cfi_def_cfa_offset 4
	.cfi_offset 8, -3
	push r9
.LCFI3:
	.cfi_def_cfa_offset 5
	.cfi_offset 9, -4
	push r10
.LCFI4:
	.cfi_def_cfa_offset 6
	.cfi_offset 10, -5
	push r11
.LCFI5:
	.cfi_def_cfa_offset 7
	.cfi_offset 11, -6
	push r12
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_offset 12, -7
	push r13
.LCFI7:
	.cfi_def_cfa_offset 9
	.cfi_offset 13, -8
	push r14
.LCFI8:
	.cfi_def_cfa_offset 10
	.cfi_offset 14, -9
	push r15
.LCFI9:
	.cfi_def_cfa_offset 11
	.cfi_offset 15, -10
	push r16
.LCFI10:
	.cfi_def_cfa_offset 12
	.cfi_offset 16, -11
	push r17
.LCFI11:
	.cfi_def_cfa_offset 13
	.cfi_offset 17, -12
	push r28
.LCFI12:
	.cfi_def_cfa_offset 14
	.cfi_offset 28, -13
	push r29
.LCFI13:
	.cfi_def_cfa_offset 15
	.cfi_offset 29, -14
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	.loc 1 96 0
	mov r10,r24
	mov r11,__zero_reg__
	movw r8,r10
	lsl r8
	rol r9
.LVL23:
	movw r16,r8
	add r16,r10
	adc r17,r11
	movw r26,r16
	subi r26,lo8(-(sectionStatus))
	sbci r27,hi8(-(sectionStatus))
	adiw r26,1
	st X,__zero_reg__
	sbiw r26,1
	.loc 1 97 0
	adiw r26,2
	ld r24,X
	tst r24
	breq .L20
	.loc 1 98 0
	subi r16,lo8(-(sectionInfo))
	sbci r17,hi8(-(sectionInfo))
	movw r30,r16
	lpm r28,Z
	cpi r28,lo8(-1)
	breq .L39
.LBB12:
	.loc 1 112 0
	mov r24,r28
	call lcd_goto
.LVL24:
	.loc 1 113 0
	ldi r29,0
	subi r28,lo8(-(displayBuffer))
	sbci r29,hi8(-(displayBuffer))
.LVL25:
.LBB13:
	.loc 1 114 0
	movw r30,r16
	adiw r30,1
	lpm r16,Z
	tst r16
	breq .L26
	subi r16,lo8(-(-1))
	ldi r17,0
	subi r16,-1
	sbci r17,-1
	add r16,r28
	adc r17,r29
.LVL26:
.L29:
	.loc 1 115 0 discriminator 3
	ld r24,Y+
.LVL27:
	call lcd_putc
.LVL28:
	.loc 1 114 0 discriminator 3
	cp r28,r16
	cpc r29,r17
	brne .L29
.LVL29:
.L26:
.LBE13:
.LBE12:
	.loc 1 118 0
	movw r30,r8
	add r30,r10
	adc r31,r11
	subi r30,lo8(-(sectionStatus))
	sbci r31,hi8(-(sectionStatus))
	std Z+2,__zero_reg__
.L20:
/* epilogue start */
	.loc 1 120 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
.LVL30:
	pop r9
	pop r8
	ret
.LVL31:
.L39:
.LBB14:
	.loc 1 100 0
	movw r12,r16
	ldi r31,3
	add r12,r31
	adc r13,__zero_reg__
.LVL32:
	.loc 1 101 0
	movw r30,r16
	adiw r30,2
	lpm r29,Z
.LVL33:
	.loc 1 102 0
	tst r29
	breq .L26
	movw r14,r16
	ldi r24,4
	add r14,r24
	adc r15,__zero_reg__
.LVL34:
.L25:
.LBB15:
	.loc 1 103 0
	movw r30,r12
	lpm r24,Z
	call lcd_goto
.LVL35:
	.loc 1 104 0
	movw r30,r12
	lpm r16,Z
	ldi r17,0
	subi r16,lo8(-(displayBuffer))
	sbci r17,hi8(-(displayBuffer))
.LVL36:
.LBB16:
	.loc 1 105 0
	movw r30,r14
	lpm r24,Z
	tst r24
	breq .L28
	ldi r28,0
.LVL37:
.L27:
	.loc 1 106 0 discriminator 3
	movw r30,r16
	ld r24,Z+
.LVL38:
	movw r16,r30
	call lcd_putc
.LVL39:
	.loc 1 105 0 discriminator 3
	subi r28,lo8(-(1))
.LVL40:
	movw r30,r14
	lpm r24,Z
	cp r28,r24
	brlo .L27
.LVL41:
.L28:
.LBE16:
	.loc 1 108 0
	ldi r31,3
	add r12,r31
	adc r13,__zero_reg__
.LVL42:
	ldi r24,3
	add r14,r24
	adc r15,__zero_reg__
	subi r29,lo8(-(-1))
.LVL43:
.LBE15:
	.loc 1 102 0
	brne .L25
.LBE14:
	.loc 1 118 0
	movw r30,r8
	add r30,r10
	adc r31,r11
	subi r30,lo8(-(sectionStatus))
	sbci r31,hi8(-(sectionStatus))
	std Z+2,__zero_reg__
	rjmp .L20
	.cfi_endproc
.LFE6:
	.size	disp_endSectionUpdate, .-disp_endSectionUpdate
	.section	.text.disp_sectionClearSub,"ax",@progbits
.global	disp_sectionClearSub
	.type	disp_sectionClearSub, @function
disp_sectionClearSub:
.LFB7:
	.loc 1 122 0
	.cfi_startproc
.LVL44:
	push r15
.LCFI14:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI15:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI16:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI17:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI18:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	.loc 1 123 0
	ldi r25,0
	movw r18,r24
	lsl r18
	rol r19
	add r24,r18
	adc r25,r19
.LVL45:
	movw r30,r24
	subi r30,lo8(-(sectionInfo))
	sbci r31,hi8(-(sectionInfo))
	lpm r18,Z
	cpi r18,lo8(-1)
	breq .L46
/* epilogue start */
	.loc 1 144 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
.L46:
.LVL46:
.LBB17:
	.loc 1 125 0
	movw r26,r24
	subi r26,lo8(-(sectionStatus))
	sbci r27,hi8(-(sectionStatus))
	.loc 1 126 0
	adiw r26,1
	ld r19,X
	sbiw r26,1
	cpse r19,__zero_reg__
	rjmp .L47
	.loc 1 129 0
	mov r24,r22
	ldi r25,0
	adiw r24,1
	movw r18,r24
	lsl r18
	rol r19
	add r24,r18
	adc r25,r19
.LVL47:
	.loc 1 130 0
	add r30,r24
	adc r31,r25
.LVL48:
	lpm r24,Z+
.LVL49:
	.loc 1 131 0
	lpm r17,Z
.LVL50:
	.loc 1 132 0
	mov r28,r24
	ldi r29,0
	subi r28,lo8(-(displayBuffer))
	sbci r29,hi8(-(displayBuffer))
.LVL51:
	.loc 1 135 0
	call lcd_goto
.LVL52:
	movw r24,r28
	add r24,r17
	adc r25,__zero_reg__
	movw r16,r24
	.loc 1 138 0
	ldi r21,lo8(32)
	mov r15,r21
	rjmp .L45
.LVL53:
.L43:
	st Y+,r15
.LVL54:
	.loc 1 140 0
	ldi r24,lo8(32)
	call lcd_putc
.LVL55:
.L45:
	.loc 1 137 0
	cp r16,r28
	cpc r17,r29
	brne .L43
/* epilogue start */
.LBE17:
	.loc 1 144 0
	pop r29
	pop r28
.LVL56:
	pop r17
	pop r16
	pop r15
	ret
.LVL57:
.L47:
.LBB18:
	.loc 1 127 0
	adiw r26,2
	st X,r18
	.loc 1 129 0
	ldi r23,0
	subi r22,-1
	sbci r23,-1
.LVL58:
	movw r24,r22
	lsl r24
	rol r25
	add r22,r24
	adc r23,r25
.LVL59:
	add r30,r22
	adc r31,r23
.LVL60:
	lpm r24,Z+
.LVL61:
	ldi r25,0
	lpm r20,Z
	ldi r21,0
	ldi r22,lo8(32)
	ldi r23,0
	subi r24,lo8(-(displayBuffer))
	sbci r25,hi8(-(displayBuffer))
/* epilogue start */
.LBE18:
	.loc 1 144 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	jmp memset
.LVL62:
	.cfi_endproc
.LFE7:
	.size	disp_sectionClearSub, .-disp_sectionClearSub
	.section	.bss.sectionStatus,"aw",@nobits
	.type	sectionStatus, @object
	.size	sectionStatus, 60
sectionStatus:
	.zero	60
.global	sectionInfo
	.section	.progmem.data.sectionInfo,"a",@progbits
	.type	sectionInfo, @object
	.size	sectionInfo, 60
sectionInfo:
	.byte	0
	.byte	5
	.byte	0
	.byte	15
	.byte	5
	.byte	0
	.byte	7
	.byte	5
	.byte	0
	.byte	12
	.byte	1
	.byte	0
	.byte	13
	.byte	1
	.byte	0
	.byte	64
	.byte	20
	.byte	0
	.byte	30
	.byte	10
	.byte	0
	.byte	20
	.byte	10
	.byte	0
	.byte	20
	.byte	20
	.byte	0
	.byte	64
	.byte	20
	.byte	0
	.byte	-1
	.byte	0
	.byte	4
	.byte	20
	.byte	7
	.byte	0
	.byte	20
	.byte	7
	.byte	0
	.byte	86
	.byte	7
	.byte	0
	.byte	32
	.byte	7
	.byte	0
	.byte	84
	.byte	20
	.byte	0
	.byte	84
	.byte	5
	.byte	0
	.byte	89
	.byte	5
	.byte	0
	.byte	94
	.byte	5
	.byte	0
	.byte	99
	.byte	5
	.byte	0
.global	displaySize
	.section	.rodata.displaySize,"a",@progbits
	.type	displaySize, @object
	.size	displaySize, 1
displaySize:
	.byte	104
	.section	.bss.textLen,"aw",@nobits
	.type	textLen, @object
	.size	textLen, 1
textLen:
	.zero	1
	.comm	sectionBuffer,32,1
	.section	.bss.displayBuffer,"aw",@nobits
	.type	displayBuffer, @object
	.size	displayBuffer, 128
displayBuffer:
	.zero	128
	.text
.Letext0:
	.file 2 ".././display.h"
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 ".././lcd_u.h"
	.file 5 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x513
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF44
	.byte	0xc
	.long	.LASF45
	.long	.LASF46
	.long	.Ldebug_ranges0+0x18
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF10
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x5
	.byte	0x3
	.byte	0x2
	.byte	0x2b
	.long	0x9f
	.uleb128 0x6
	.long	.LASF7
	.byte	0x2
	.byte	0x2c
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF8
	.byte	0x2
	.byte	0x2d
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF9
	.byte	0x2
	.byte	0x2e
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF11
	.byte	0x2
	.byte	0x2f
	.long	0x6c
	.uleb128 0x5
	.byte	0x3
	.byte	0x2
	.byte	0x32
	.long	0xdd
	.uleb128 0x6
	.long	.LASF12
	.byte	0x2
	.byte	0x33
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.byte	0x34
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.byte	0x35
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF15
	.byte	0x2
	.byte	0x36
	.long	0xaa
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF16
	.uleb128 0x7
	.byte	0x1
	.long	.LASF47
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.long	0x108
	.uleb128 0x8
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x4b
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x15b
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0x2d
	.long	0x30
	.long	.LLST0
	.uleb128 0xc
	.long	.LASF18
	.byte	0x1
	.byte	0x2d
	.long	0x30
	.byte	0x1
	.byte	0x66
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x2e
	.long	0x30
	.long	.LLST1
	.uleb128 0xe
	.long	.LASF19
	.byte	0x1
	.byte	0x30
	.long	0x15b
	.long	.LLST2
	.byte	0
	.uleb128 0xf
	.byte	0x2
	.long	0x30
	.uleb128 0x10
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x3f
	.long	.LFB2
	.long	.LFE2
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1c6
	.uleb128 0x11
	.long	.LBB6
	.long	.LBE6
	.long	0x195
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x40
	.long	0x30
	.long	.LLST3
	.byte	0
	.uleb128 0x12
	.long	0xef
	.long	.LBB7
	.long	.LBE7
	.byte	0x1
	.byte	0x45
	.uleb128 0x11
	.long	.LBB9
	.long	.LBE9
	.long	0x1bb
	.uleb128 0x13
	.long	0xfd
	.long	.LLST4
	.byte	0
	.uleb128 0x14
	.long	.LVL9
	.long	0x4de
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0xef
	.long	.LFB3
	.long	.LFE3
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1fd
	.uleb128 0x11
	.long	.LBB10
	.long	.LBE10
	.long	0x1f3
	.uleb128 0x13
	.long	0xfd
	.long	.LLST5
	.byte	0
	.uleb128 0x14
	.long	.LVL12
	.long	0x4de
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x50
	.long	.LFB4
	.long	.LFE4
	.long	.LLST6
	.byte	0x1
	.long	0x24a
	.uleb128 0x11
	.long	.LBB11
	.long	.LBE11
	.long	0x23a
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x53
	.long	0x30
	.long	.LLST7
	.uleb128 0x14
	.long	.LVL18
	.long	0x4eb
	.byte	0
	.uleb128 0x17
	.long	.LVL15
	.long	0x4f8
	.uleb128 0x18
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF23
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x274
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1
	.byte	0x5b
	.long	0x30
	.long	.LLST8
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF25
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST9
	.byte	0x1
	.long	0x360
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1
	.byte	0x5f
	.long	0x30
	.long	.LLST10
	.uleb128 0x11
	.long	.LBB12
	.long	.LBE12
	.long	0x2ee
	.uleb128 0xe
	.long	.LASF19
	.byte	0x1
	.byte	0x71
	.long	0x15b
	.long	.LLST11
	.uleb128 0x11
	.long	.LBB13
	.long	.LBE13
	.long	0x2dd
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x72
	.long	0x30
	.long	.LLST12
	.uleb128 0x14
	.long	.LVL28
	.long	0x4eb
	.byte	0
	.uleb128 0x17
	.long	.LVL24
	.long	0x4f8
	.uleb128 0x18
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x1b
	.long	.LASF26
	.byte	0x1
	.byte	0x64
	.long	0x360
	.byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xe
	.long	.LASF27
	.byte	0x1
	.byte	0x65
	.long	0x30
	.long	.LLST13
	.uleb128 0x1a
	.long	.LBB15
	.long	.LBE15
	.uleb128 0xe
	.long	.LASF19
	.byte	0x1
	.byte	0x68
	.long	0x15b
	.long	.LLST14
	.uleb128 0x11
	.long	.LBB16
	.long	.LBE16
	.long	0x354
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x69
	.long	0x30
	.long	.LLST15
	.uleb128 0x14
	.long	.LVL39
	.long	0x4eb
	.byte	0
	.uleb128 0x14
	.long	.LVL35
	.long	0x4f8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x2
	.byte	0x1
	.long	0x367
	.uleb128 0x1d
	.long	0x9f
	.uleb128 0x19
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST16
	.byte	0x1
	.long	0x429
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1
	.byte	0x7a
	.long	0x30
	.long	.LLST17
	.uleb128 0xb
	.long	.LASF29
	.byte	0x1
	.byte	0x7a
	.long	0x30
	.long	.LLST18
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0
	.long	0x412
	.uleb128 0xe
	.long	.LASF30
	.byte	0x1
	.byte	0x7d
	.long	0x30
	.long	.LLST19
	.uleb128 0xe
	.long	.LASF26
	.byte	0x1
	.byte	0x81
	.long	0x360
	.long	.LLST20
	.uleb128 0xe
	.long	.LASF31
	.byte	0x1
	.byte	0x82
	.long	0x30
	.long	.LLST21
	.uleb128 0xe
	.long	.LASF32
	.byte	0x1
	.byte	0x83
	.long	0x30
	.long	.LLST22
	.uleb128 0xe
	.long	.LASF19
	.byte	0x1
	.byte	0x84
	.long	0x15b
	.long	.LLST23
	.uleb128 0x14
	.long	.LVL52
	.long	0x4f8
	.uleb128 0x17
	.long	.LVL55
	.long	0x4eb
	.uleb128 0x18
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LVL62
	.byte	0x1
	.long	0x505
	.uleb128 0x18
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x30
	.long	0x439
	.uleb128 0x21
	.long	0xe8
	.byte	0x7f
	.byte	0
	.uleb128 0x1b
	.long	.LASF33
	.byte	0x1
	.byte	0xd
	.long	0x429
	.byte	0x5
	.byte	0x3
	.long	displayBuffer
	.uleb128 0x22
	.long	.LASF34
	.byte	0x1
	.byte	0xf
	.long	0x30
	.uleb128 0x22
	.long	.LASF35
	.byte	0x1
	.byte	0x10
	.long	0x30
	.uleb128 0x1b
	.long	.LASF36
	.byte	0x1
	.byte	0x11
	.long	0x30
	.byte	0x5
	.byte	0x3
	.long	textLen
	.uleb128 0x20
	.long	0xdd
	.long	0x481
	.uleb128 0x21
	.long	0xe8
	.byte	0x13
	.byte	0
	.uleb128 0x1b
	.long	.LASF37
	.byte	0x1
	.byte	0x2b
	.long	0x471
	.byte	0x5
	.byte	0x3
	.long	sectionStatus
	.uleb128 0x20
	.long	0x30
	.long	0x4a2
	.uleb128 0x21
	.long	0xe8
	.byte	0x1f
	.byte	0
	.uleb128 0x23
	.long	.LASF38
	.byte	0x1
	.byte	0xe
	.long	0x492
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sectionBuffer
	.uleb128 0x23
	.long	.LASF39
	.byte	0x1
	.byte	0x13
	.long	0x4c6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	displaySize
	.uleb128 0x1d
	.long	0x30
	.uleb128 0x23
	.long	.LASF40
	.byte	0x1
	.byte	0x14
	.long	0x4dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sectionInfo
	.uleb128 0x24
	.uleb128 0x25
	.byte	0x1
	.byte	0x1
	.long	.LASF41
	.long	.LASF41
	.byte	0x4
	.byte	0x5a
	.uleb128 0x25
	.byte	0x1
	.byte	0x1
	.long	.LASF42
	.long	.LASF42
	.byte	0x4
	.byte	0x5d
	.uleb128 0x25
	.byte	0x1
	.byte	0x1
	.long	.LASF43
	.long	.LASF43
	.byte	0x4
	.byte	0x5c
	.uleb128 0x26
	.byte	0x1
	.byte	0x1
	.long	.LASF48
	.long	.LASF49
	.byte	0x5
	.byte	0
	.long	.LASF48
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x6
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.long	.LFE1
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL3
	.word	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.long	.LVL3
	.long	.LVL5
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5
	.long	.LVL6
	.word	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL7
	.long	.LVL8
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL9
	.long	.LVL10
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL10
	.long	.LFE2
	.word	0x9
	.byte	0x8e
	.sleb128 0
	.byte	0x3
	.long	displayBuffer
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL12
	.long	.LVL13
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL13
	.long	.LFE3
	.word	0x9
	.byte	0x8e
	.sleb128 0
	.byte	0x3
	.long	displayBuffer
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LFB4
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
	.long	.LFE4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST7:
	.long	.LVL15
	.long	.LVL16
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.word	0x9
	.byte	0x8c
	.sleb128 0
	.byte	0x3
	.long	displayBuffer
	.byte	0x1c
	.byte	0x9f
	.long	.LVL17
	.long	.LVL18
	.word	0xa
	.byte	0x3
	.long	displayBuffer
	.byte	0x20
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL18
	.long	.LVL19
	.word	0x9
	.byte	0x8c
	.sleb128 0
	.byte	0x3
	.long	displayBuffer
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL20
	.long	.LVL21
	.word	0x1
	.byte	0x68
	.long	.LVL21
	.long	.LFE5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LFB6
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
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI13
	.long	.LFE6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	0
	.long	0
.LLST10:
	.long	.LVL22
	.long	.LVL23
	.word	0x1
	.byte	0x68
	.long	.LVL23
	.long	.LVL30
	.word	0x1
	.byte	0x5a
	.long	.LVL30
	.long	.LVL31
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL31
	.long	.LFE6
	.word	0x1
	.byte	0x5a
	.long	0
	.long	0
.LLST11:
	.long	.LVL25
	.long	.LVL26
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL26
	.long	.LVL27
	.word	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.long	.LVL27
	.long	.LVL29
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST12:
	.long	.LVL25
	.long	.LVL26
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL33
	.long	.LVL42
	.word	0x3
	.byte	0x8d
	.sleb128 -1
	.byte	0x9f
	.long	.LVL42
	.long	.LVL43
	.word	0x3
	.byte	0x8d
	.sleb128 -2
	.byte	0x9f
	.long	.LVL43
	.long	.LFE6
	.word	0x3
	.byte	0x8d
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL36
	.long	.LVL37
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL37
	.long	.LVL38
	.word	0x3
	.byte	0x80
	.sleb128 1
	.byte	0x9f
	.long	.LVL38
	.long	.LVL39-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL39-1
	.long	.LVL41
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST15:
	.long	.LVL36
	.long	.LVL37
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL37
	.long	.LVL41
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST16:
	.long	.LFB7
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
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI18
	.long	.LFE7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST17:
	.long	.LVL44
	.long	.LVL45
	.word	0x1
	.byte	0x68
	.long	.LVL45
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL44
	.long	.LVL52-1
	.word	0x1
	.byte	0x66
	.long	.LVL52-1
	.long	.LVL57
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL57
	.long	.LVL58
	.word	0x1
	.byte	0x66
	.long	.LVL58
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL46
	.long	.LVL52-1
	.word	0xe
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x1e
	.byte	0x3
	.long	sectionStatus+1
	.byte	0x22
	.long	.LVL57
	.long	.LVL62-1
	.word	0xe
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x1e
	.byte	0x3
	.long	sectionStatus+1
	.byte	0x22
	.long	0
	.long	0
.LLST20:
	.long	.LVL47
	.long	.LVL48
	.word	0x6
	.byte	0x8e
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL48
	.long	.LVL49
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL49
	.long	.LVL52-1
	.word	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.long	.LVL59
	.long	.LVL60
	.word	0x6
	.byte	0x8e
	.sleb128 0
	.byte	0x86
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL60
	.long	.LVL61
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL61
	.long	.LVL62-1
	.word	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL49
	.long	.LVL52-1
	.word	0x1
	.byte	0x68
	.long	.LVL59
	.long	.LVL60
	.word	0x5
	.byte	0x8e
	.sleb128 0
	.byte	0x86
	.sleb128 0
	.byte	0x22
	.long	.LVL60
	.long	.LVL61
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL61
	.long	.LVL62-1
	.word	0x2
	.byte	0x8e
	.sleb128 -1
	.long	0
	.long	0
.LLST22:
	.long	.LVL50
	.long	.LVL53
	.word	0x1
	.byte	0x61
	.long	.LVL59
	.long	.LVL60
	.word	0x7
	.byte	0x8e
	.sleb128 0
	.byte	0x86
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.long	.LVL61
	.long	.LVL62-1
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST23:
	.long	.LVL51
	.long	.LVL53
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL53
	.long	.LVL54
	.word	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.long	.LVL54
	.long	.LVL56
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL59
	.long	.LVL60
	.word	0x11
	.byte	0x8e
	.sleb128 0
	.byte	0x86
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.long	displayBuffer
	.byte	0x22
	.byte	0x9f
	.long	.LVL60
	.long	.LVL61
	.word	0xe
	.byte	0x8e
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.long	displayBuffer
	.byte	0x22
	.byte	0x9f
	.long	.LVL61
	.long	.LVL62-1
	.word	0xe
	.byte	0x8e
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.long	displayBuffer
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB17
	.long	.LBE17
	.long	.LBB18
	.long	.LBE18
	.long	0
	.long	0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"lcd_goto"
.LASF28:
	.string	"disp_sectionClearSub"
.LASF37:
	.string	"sectionStatus"
.LASF45:
	.string	".././display.c"
.LASF23:
	.string	"disp_beginSectionUpdate"
.LASF41:
	.string	"lcd_clrscr"
.LASF7:
	.string	"CursorStart"
.LASF21:
	.string	"disp_redraw"
.LASF38:
	.string	"sectionBuffer"
.LASF9:
	.string	"SubSectCount"
.LASF27:
	.string	"subSecCount"
.LASF47:
	.string	"disp_clear"
.LASF34:
	.string	"leftSpaces"
.LASF14:
	.string	"SectionChanged"
.LASF22:
	.string	"calcSpaces"
.LASF18:
	.string	"sectionLen"
.LASF44:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"SectionUpdating"
.LASF49:
	.string	"__builtin_memset"
.LASF4:
	.string	"long unsigned int"
.LASF32:
	.string	"charCount"
.LASF11:
	.string	"SectionInfo_t"
.LASF30:
	.string	"updating"
.LASF26:
	.string	"currentSection"
.LASF48:
	.string	"memset"
.LASF46:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF12:
	.string	"CursorPos"
.LASF39:
	.string	"displaySize"
.LASF19:
	.string	"pChar"
.LASF2:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF15:
	.string	"SectionStatus_t"
.LASF8:
	.string	"SectionLen"
.LASF16:
	.string	"sizetype"
.LASF33:
	.string	"displayBuffer"
.LASF36:
	.string	"textLen"
.LASF5:
	.string	"long long int"
.LASF29:
	.string	"subsect"
.LASF35:
	.string	"rightSpaces"
.LASF40:
	.string	"sectionInfo"
.LASF17:
	.string	"centered"
.LASF31:
	.string	"cursorPos"
.LASF20:
	.string	"init_disp"
.LASF3:
	.string	"long int"
.LASF25:
	.string	"disp_endSectionUpdate"
.LASF24:
	.string	"sect"
.LASF0:
	.string	"signed char"
.LASF42:
	.string	"lcd_putc"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1759) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
