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
	.loc 1 47 0
	sts textLen,__zero_reg__
.LVL1:
	.loc 1 48 0
	ldi r30,lo8(sectionBuffer)
	ldi r31,hi8(sectionBuffer)
	.loc 1 46 0
	ldi r25,0
	.loc 1 49 0
	rjmp .L2
.LVL2:
.L4:
	.loc 1 50 0
	lds r24,textLen
	subi r24,lo8(-(1))
	sts textLen,r24
	.loc 1 51 0
	adiw r30,1
.LVL3:
	.loc 1 52 0
	subi r25,lo8(-(1))
.LVL4:
.L2:
	.loc 1 49 0
	cpi r25,lo8(32)
	brsh .L1
	.loc 1 49 0 is_stmt 0 discriminator 1
	ld r24,Z
	cpse r24,__zero_reg__
	rjmp .L4
.L1:
	ret
	.cfi_endproc
.LFE1:
	.size	calcSpaces, .-calcSpaces
	.section	.text.disp_clear,"ax",@progbits
.global	disp_clear
	.type	disp_clear, @function
disp_clear:
.LFB3:
	.loc 1 72 0 is_stmt 1
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 74 0
	call lcd_clrscr
.LVL5:
.LBB2:
	.loc 1 75 0
	ldi r24,0
	rjmp .L6
.LVL6:
.L7:
	.loc 1 76 0 discriminator 3
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(displayBuffer))
	sbci r31,hi8(-(displayBuffer))
	ldi r25,lo8(32)
	st Z,r25
	.loc 1 75 0 discriminator 3
	subi r24,lo8(-(1))
.LVL7:
.L6:
	.loc 1 75 0 is_stmt 0 discriminator 1
	tst r24
	brge .L7
/* epilogue start */
.LBE2:
	.loc 1 78 0 is_stmt 1
	ret
	.cfi_endproc
.LFE3:
	.size	disp_clear, .-disp_clear
	.section	.text.init_disp,"ax",@progbits
.global	init_disp
	.type	init_disp, @function
init_disp:
.LFB2:
	.loc 1 63 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL8:
.LBB3:
	.loc 1 64 0
	ldi r24,0
	rjmp .L9
.LVL9:
.L10:
	.loc 1 65 0 discriminator 3
	mov r30,r24
	ldi r31,0
	movw r18,r30
	lsl r18
	rol r19
	add r30,r18
	adc r31,r19
	subi r30,lo8(-(sectionStatus))
	sbci r31,hi8(-(sectionStatus))
	ldi r25,lo8(-1)
	st Z,r25
	.loc 1 66 0 discriminator 3
	std Z+2,__zero_reg__
	.loc 1 67 0 discriminator 3
	std Z+1,__zero_reg__
	.loc 1 64 0 discriminator 3
	subi r24,lo8(-(1))
.LVL10:
.L9:
	.loc 1 64 0 is_stmt 0 discriminator 1
	cpi r24,lo8(20)
	brlo .L10
.LBE3:
	.loc 1 69 0 is_stmt 1
	call disp_clear
.LVL11:
	ret
	.cfi_endproc
.LFE2:
	.size	init_disp, .-init_disp
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
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 82 0
	ldi r24,0
	call lcd_goto
.LVL12:
.LBB4:
	.loc 1 83 0
	ldi r28,0
	rjmp .L12
.LVL13:
.L13:
	.loc 1 84 0 discriminator 3
	mov r30,r28
	ldi r31,0
	subi r30,lo8(-(displayBuffer))
	sbci r31,hi8(-(displayBuffer))
	ld r24,Z
	call lcd_putc
.LVL14:
	.loc 1 83 0 discriminator 3
	subi r28,lo8(-(1))
.LVL15:
.L12:
	.loc 1 83 0 is_stmt 0 discriminator 1
	cpi r28,lo8(104)
	brlo .L13
/* epilogue start */
.LBE4:
	.loc 1 86 0 is_stmt 1
	pop r28
.LVL16:
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
.LVL17:
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
.LVL18:
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
.LVL19:
	push r12
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
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
	push r28
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 1 96 0
	mov r14,r24
	mov r15,__zero_reg__
	movw r30,r14
	lsl r30
	rol r31
	add r30,r14
	adc r31,r15
	subi r30,lo8(-(sectionStatus))
	sbci r31,hi8(-(sectionStatus))
	std Z+1,__zero_reg__
	.loc 1 97 0
	ldd r24,Z+2
.LVL20:
	tst r24
	brne .+2
	rjmp .L15
	.loc 1 98 0
	movw r30,r14
	lsl r30
	rol r31
	add r30,r14
	adc r31,r15
	subi r30,lo8(-(sectionInfo))
	sbci r31,hi8(-(sectionInfo))
	lpm r28,Z
	cpi r28,lo8(-1)
	brne .L17
.LBB5:
	.loc 1 100 0
	movw r30,r14
	lsl r30
	rol r31
	add r30,r14
	adc r31,r15
	subi r30,lo8(-(sectionInfo))
	sbci r31,hi8(-(sectionInfo))
	movw r16,r30
	subi r16,-3
	sbci r17,-1
.LVL21:
	.loc 1 101 0
	adiw r30,2
	lpm r24,Z
.LVL22:
	.loc 1 102 0
	rjmp .L18
.LVL23:
.L21:
.LBB6:
	.loc 1 103 0
	movw r30,r16
	lpm r24,Z
	call lcd_goto
.LVL24:
	.loc 1 104 0
	movw r30,r16
	lpm r24,Z
	mov r30,r24
	ldi r31,0
	movw r26,r30
	subi r26,lo8(-(displayBuffer))
	sbci r27,hi8(-(displayBuffer))
.LVL25:
.LBB7:
	.loc 1 105 0
	ldi r28,0
	rjmp .L19
.LVL26:
.L20:
	.loc 1 106 0 discriminator 3
	movw r12,r26
	ldi r31,-1
	sub r12,r31
	sbc r13,r31
.LVL27:
	ld r24,X
	call lcd_putc
.LVL28:
	.loc 1 105 0 discriminator 3
	subi r28,lo8(-(1))
.LVL29:
	.loc 1 106 0 discriminator 3
	movw r26,r12
.LVL30:
.L19:
	.loc 1 105 0 discriminator 1
	movw r24,r16
	adiw r24,1
	movw r30,r24
	lpm r24,Z
	cp r28,r24
	brlo .L20
.LBE7:
	.loc 1 108 0
	subi r16,-3
	sbci r17,-1
.LVL31:
.LBE6:
	.loc 1 102 0
	mov r24,r29
.LVL32:
.L18:
	ldi r29,lo8(-1)
	add r29,r24
.LVL33:
	cpse r24,__zero_reg__
	rjmp .L21
	rjmp .L22
.LVL34:
.L17:
.LBE5:
.LBB8:
	.loc 1 112 0
	mov r24,r28
	call lcd_goto
.LVL35:
	.loc 1 113 0
	mov r26,r28
	ldi r27,0
	subi r26,lo8(-(displayBuffer))
	sbci r27,hi8(-(displayBuffer))
.LVL36:
.LBB9:
	.loc 1 114 0
	ldi r28,0
	rjmp .L23
.LVL37:
.L24:
	.loc 1 115 0 discriminator 3
	movw r16,r26
	subi r16,-1
	sbci r17,-1
.LVL38:
	ld r24,X
	call lcd_putc
.LVL39:
	.loc 1 114 0 discriminator 3
	subi r28,lo8(-(1))
.LVL40:
	.loc 1 115 0 discriminator 3
	movw r26,r16
.LVL41:
.L23:
	.loc 1 114 0 discriminator 1
	movw r30,r14
	lsl r30
	rol r31
	add r30,r14
	adc r31,r15
	subi r30,lo8(-(sectionInfo+1))
	sbci r31,hi8(-(sectionInfo+1))
	lpm r24,Z
	cp r28,r24
	brlo .L24
.LVL42:
.L22:
.LBE9:
.LBE8:
	.loc 1 118 0
	movw r30,r14
	lsl r30
	rol r31
	add r30,r14
	adc r31,r15
	subi r30,lo8(-(sectionStatus))
	sbci r31,hi8(-(sectionStatus))
	std Z+2,__zero_reg__
.L15:
/* epilogue start */
	.loc 1 120 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
.LVL43:
	pop r13
	pop r12
	ret
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
	push r13
.LCFI9:
	.cfi_def_cfa_offset 4
	.cfi_offset 13, -3
	push r14
.LCFI10:
	.cfi_def_cfa_offset 5
	.cfi_offset 14, -4
	push r15
.LCFI11:
	.cfi_def_cfa_offset 6
	.cfi_offset 15, -5
	push r16
.LCFI12:
	.cfi_def_cfa_offset 7
	.cfi_offset 16, -6
	push r17
.LCFI13:
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -7
	push r28
.LCFI14:
	.cfi_def_cfa_offset 9
	.cfi_offset 28, -8
	push r29
.LCFI15:
	.cfi_def_cfa_offset 10
	.cfi_offset 29, -9
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	.loc 1 123 0
	ldi r25,0
	movw r30,r24
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(sectionInfo))
	sbci r31,hi8(-(sectionInfo))
	lpm r18,Z
	cpi r18,lo8(-1)
	breq .+2
	rjmp .L25
.LBB10:
	.loc 1 125 0
	movw r30,r24
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(sectionStatus))
	sbci r31,hi8(-(sectionStatus))
	ldd r13,Z+1
.LVL45:
	.loc 1 126 0
	tst r13
	breq .L27
	.loc 1 127 0
	movw r30,r24
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(sectionStatus))
	sbci r31,hi8(-(sectionStatus))
	std Z+2,r18
.L27:
	.loc 1 129 0
	movw r30,r24
	lsl r30
	rol r31
	add r24,r30
	adc r25,r31
.LVL46:
	subi r24,lo8(-(sectionInfo))
	sbci r25,hi8(-(sectionInfo))
	ldi r23,0
	subi r22,-1
	sbci r23,-1
.LVL47:
	movw r30,r22
	lsl r30
	rol r31
	add r30,r22
	adc r31,r23
.LVL48:
	.loc 1 130 0
	add r30,r24
	adc r31,r25
.LVL49:
	lpm r24,Z+
.LVL50:
	.loc 1 131 0
	lpm r28,Z
.LVL51:
	.loc 1 132 0
	mov r16,r24
	ldi r17,0
	subi r16,lo8(-(displayBuffer))
	sbci r17,hi8(-(displayBuffer))
.LVL52:
	.loc 1 133 0
	cpse r13,__zero_reg__
	rjmp .L29
	.loc 1 135 0
	call lcd_goto
.LVL53:
	rjmp .L29
.LVL54:
.L31:
	.loc 1 138 0
	movw r14,r16
	ldi r24,-1
	sub r14,r24
	sbc r15,r24
.LVL55:
	ldi r24,lo8(32)
	movw r30,r16
	st Z,r24
	.loc 1 139 0
	cpse r13,__zero_reg__
	rjmp .L30
	.loc 1 140 0
	call lcd_putc
.LVL56:
.L30:
	mov r28,r29
.LBE10:
	.loc 1 122 0
	movw r16,r14
.LVL57:
.L29:
.LBB11:
	.loc 1 137 0
	ldi r29,lo8(-1)
	add r29,r28
.LVL58:
	cpse r28,__zero_reg__
	rjmp .L31
.LVL59:
.L25:
/* epilogue start */
.LBE11:
	.loc 1 144 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	ret
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
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4ac
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF45
	.byte	0xc
	.long	.LASF46
	.long	.LASF47
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
	.long	.LASF23
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
	.long	0x142
	.uleb128 0x8
	.long	.LASF17
	.byte	0x1
	.byte	0x2d
	.long	0x30
	.long	.LLST0
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0x2d
	.long	0x30
	.byte	0x1
	.byte	0x66
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x2e
	.long	0x30
	.long	.LLST1
	.uleb128 0xb
	.long	.LASF19
	.byte	0x1
	.byte	0x30
	.long	0x142
	.long	.LLST2
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.long	0x30
	.uleb128 0xd
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x48
	.long	.LFB3
	.long	.LFE3
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x186
	.uleb128 0xe
	.long	.LBB2
	.long	.LBE2
	.long	0x17c
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x4b
	.long	0x30
	.long	.LLST3
	.byte	0
	.uleb128 0xf
	.long	.LVL5
	.long	0x488
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x3f
	.long	.LFB2
	.long	.LFE2
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1c4
	.uleb128 0xe
	.long	.LBB3
	.long	.LBE3
	.long	0x1ba
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x40
	.long	0x30
	.long	.LLST4
	.byte	0
	.uleb128 0xf
	.long	.LVL11
	.long	0x148
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.byte	0x50
	.long	.LFB4
	.long	.LFE4
	.long	.LLST5
	.byte	0x1
	.long	0x211
	.uleb128 0xe
	.long	.LBB4
	.long	.LBE4
	.long	0x201
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x53
	.long	0x30
	.long	.LLST6
	.uleb128 0xf
	.long	.LVL14
	.long	0x495
	.byte	0
	.uleb128 0x11
	.long	.LVL12
	.long	0x4a2
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF24
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
	.long	0x23b
	.uleb128 0x8
	.long	.LASF25
	.byte	0x1
	.byte	0x5b
	.long	0x30
	.long	.LLST7
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST8
	.byte	0x1
	.long	0x324
	.uleb128 0x8
	.long	.LASF25
	.byte	0x1
	.byte	0x5f
	.long	0x30
	.long	.LLST9
	.uleb128 0xe
	.long	.LBB5
	.long	.LBE5
	.long	0x2d6
	.uleb128 0xb
	.long	.LASF27
	.byte	0x1
	.byte	0x64
	.long	0x324
	.long	.LLST10
	.uleb128 0xb
	.long	.LASF28
	.byte	0x1
	.byte	0x65
	.long	0x30
	.long	.LLST11
	.uleb128 0x14
	.long	.LBB6
	.long	.LBE6
	.uleb128 0xb
	.long	.LASF19
	.byte	0x1
	.byte	0x68
	.long	0x142
	.long	.LLST12
	.uleb128 0xe
	.long	.LBB7
	.long	.LBE7
	.long	0x2cb
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x69
	.long	0x30
	.long	.LLST13
	.uleb128 0xf
	.long	.LVL28
	.long	0x495
	.byte	0
	.uleb128 0xf
	.long	.LVL24
	.long	0x4a2
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LBB8
	.long	.LBE8
	.uleb128 0xb
	.long	.LASF19
	.byte	0x1
	.byte	0x71
	.long	0x142
	.long	.LLST14
	.uleb128 0xe
	.long	.LBB9
	.long	.LBE9
	.long	0x312
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x72
	.long	0x30
	.long	.LLST15
	.uleb128 0xf
	.long	.LVL39
	.long	0x495
	.byte	0
	.uleb128 0x11
	.long	.LVL35
	.long	0x4a2
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x2
	.byte	0x1
	.long	0x32b
	.uleb128 0x16
	.long	0x9f
	.uleb128 0x13
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST16
	.byte	0x1
	.long	0x3d3
	.uleb128 0x8
	.long	.LASF25
	.byte	0x1
	.byte	0x7a
	.long	0x30
	.long	.LLST17
	.uleb128 0x8
	.long	.LASF30
	.byte	0x1
	.byte	0x7a
	.long	0x30
	.long	.LLST18
	.uleb128 0x17
	.long	.Ldebug_ranges0+0
	.uleb128 0xb
	.long	.LASF31
	.byte	0x1
	.byte	0x7d
	.long	0x30
	.long	.LLST19
	.uleb128 0xb
	.long	.LASF27
	.byte	0x1
	.byte	0x81
	.long	0x324
	.long	.LLST20
	.uleb128 0xb
	.long	.LASF32
	.byte	0x1
	.byte	0x82
	.long	0x30
	.long	.LLST21
	.uleb128 0xb
	.long	.LASF33
	.byte	0x1
	.byte	0x83
	.long	0x30
	.long	.LLST22
	.uleb128 0xb
	.long	.LASF19
	.byte	0x1
	.byte	0x84
	.long	0x142
	.long	.LLST23
	.uleb128 0xf
	.long	.LVL53
	.long	0x4a2
	.uleb128 0x11
	.long	.LVL56
	.long	0x495
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x30
	.long	0x3e3
	.uleb128 0x19
	.long	0xe8
	.byte	0x7f
	.byte	0
	.uleb128 0x1a
	.long	.LASF34
	.byte	0x1
	.byte	0xd
	.long	0x3d3
	.byte	0x5
	.byte	0x3
	.long	displayBuffer
	.uleb128 0x1b
	.long	.LASF35
	.byte	0x1
	.byte	0xf
	.long	0x30
	.uleb128 0x1b
	.long	.LASF36
	.byte	0x1
	.byte	0x10
	.long	0x30
	.uleb128 0x1a
	.long	.LASF37
	.byte	0x1
	.byte	0x11
	.long	0x30
	.byte	0x5
	.byte	0x3
	.long	textLen
	.uleb128 0x18
	.long	0xdd
	.long	0x42b
	.uleb128 0x19
	.long	0xe8
	.byte	0x13
	.byte	0
	.uleb128 0x1a
	.long	.LASF38
	.byte	0x1
	.byte	0x2b
	.long	0x41b
	.byte	0x5
	.byte	0x3
	.long	sectionStatus
	.uleb128 0x18
	.long	0x30
	.long	0x44c
	.uleb128 0x19
	.long	0xe8
	.byte	0x1f
	.byte	0
	.uleb128 0x1c
	.long	.LASF39
	.byte	0x1
	.byte	0xe
	.long	0x43c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sectionBuffer
	.uleb128 0x1c
	.long	.LASF40
	.byte	0x1
	.byte	0x13
	.long	0x470
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	displaySize
	.uleb128 0x16
	.long	0x30
	.uleb128 0x1c
	.long	.LASF41
	.byte	0x1
	.byte	0x14
	.long	0x487
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sectionInfo
	.uleb128 0x1d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x1
	.long	.LASF42
	.long	.LASF42
	.byte	0x4
	.byte	0x5a
	.uleb128 0x1e
	.byte	0x1
	.byte	0x1
	.long	.LASF43
	.long	.LASF43
	.byte	0x4
	.byte	0x5d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x1
	.long	.LASF44
	.long	.LASF44
	.byte	0x4
	.byte	0x5c
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.word	0x1
	.byte	0x68
	.long	.LVL2
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
	.long	.LVL2
	.long	.LFE1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LFE1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL6
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL6
	.long	.LFE3
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST4:
	.long	.LVL8
	.long	.LVL9
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL9
	.long	.LVL11-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST5:
	.long	.LFB4
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI0
	.long	.LFE4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST6:
	.long	.LVL12
	.long	.LVL13
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL13
	.long	.LVL16
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST7:
	.long	.LVL17
	.long	.LVL18
	.word	0x1
	.byte	0x68
	.long	.LVL18
	.long	.LFE5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LFB6
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
	.long	.LFE6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	0
	.long	0
.LLST9:
	.long	.LVL19
	.long	.LVL20
	.word	0x1
	.byte	0x68
	.long	.LVL20
	.long	.LVL43
	.word	0x1
	.byte	0x5e
	.long	.LVL43
	.long	.LFE6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL21
	.long	.LVL34
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST11:
	.long	.LVL22
	.long	.LVL23
	.word	0x1
	.byte	0x68
	.long	.LVL23
	.long	.LVL32
	.word	0x1
	.byte	0x6d
	.long	.LVL32
	.long	.LVL33
	.word	0x1
	.byte	0x68
	.long	.LVL33
	.long	.LVL34
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST12:
	.long	.LVL25
	.long	.LVL27
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL27
	.long	.LVL30
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL30
	.long	.LVL32
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST13:
	.long	.LVL25
	.long	.LVL26
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL26
	.long	.LVL32
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST14:
	.long	.LVL36
	.long	.LVL38
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL38
	.long	.LVL41
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL41
	.long	.LVL42
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
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
	.long	.LVL42
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST16:
	.long	.LFB7
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI15
	.long	.LFE7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	0
	.long	0
.LLST17:
	.long	.LVL44
	.long	.LVL46
	.word	0x1
	.byte	0x68
	.long	.LVL46
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
	.long	.LVL47
	.word	0x1
	.byte	0x66
	.long	.LVL47
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL45
	.long	.LVL59
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST20:
	.long	.LVL48
	.long	.LVL49
	.word	0x6
	.byte	0x88
	.sleb128 0
	.byte	0x8e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL49
	.long	.LVL50
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL50
	.long	.LVL53-1
	.word	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL50
	.long	.LVL53-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST22:
	.long	.LVL51
	.long	.LVL54
	.word	0x1
	.byte	0x6c
	.long	.LVL54
	.long	.LVL57
	.word	0x1
	.byte	0x6d
	.long	.LVL57
	.long	.LVL58
	.word	0x1
	.byte	0x6c
	.long	.LVL58
	.long	.LVL59
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST23:
	.long	.LVL52
	.long	.LVL55
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL55
	.long	.LVL57
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL57
	.long	.LVL59
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
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
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB2
	.long	.LFE2-.LFB2
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
	.long	.LBB10
	.long	.LBE10
	.long	.LBB11
	.long	.LBE11
	.long	0
	.long	0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB3
	.long	.LFE3
	.long	.LFB2
	.long	.LFE2
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
.LASF45:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF44:
	.string	"lcd_goto"
.LASF29:
	.string	"disp_sectionClearSub"
.LASF38:
	.string	"sectionStatus"
.LASF46:
	.string	".././display.c"
.LASF24:
	.string	"disp_beginSectionUpdate"
.LASF42:
	.string	"lcd_clrscr"
.LASF7:
	.string	"CursorStart"
.LASF22:
	.string	"disp_redraw"
.LASF2:
	.string	"unsigned int"
.LASF9:
	.string	"SubSectCount"
.LASF28:
	.string	"subSecCount"
.LASF20:
	.string	"disp_clear"
.LASF35:
	.string	"leftSpaces"
.LASF14:
	.string	"SectionChanged"
.LASF23:
	.string	"calcSpaces"
.LASF18:
	.string	"sectionLen"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"SectionUpdating"
.LASF4:
	.string	"long unsigned int"
.LASF33:
	.string	"charCount"
.LASF11:
	.string	"SectionInfo_t"
.LASF31:
	.string	"updating"
.LASF27:
	.string	"currentSection"
.LASF12:
	.string	"CursorPos"
.LASF40:
	.string	"displaySize"
.LASF19:
	.string	"pChar"
.LASF47:
	.string	"C:\\\\Users\\\\Anwender\\\\Documents\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF6:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF15:
	.string	"SectionStatus_t"
.LASF39:
	.string	"sectionBuffer"
.LASF8:
	.string	"SectionLen"
.LASF16:
	.string	"sizetype"
.LASF34:
	.string	"displayBuffer"
.LASF37:
	.string	"textLen"
.LASF5:
	.string	"long long int"
.LASF30:
	.string	"subsect"
.LASF36:
	.string	"rightSpaces"
.LASF41:
	.string	"sectionInfo"
.LASF17:
	.string	"centered"
.LASF32:
	.string	"cursorPos"
.LASF21:
	.string	"init_disp"
.LASF3:
	.string	"long int"
.LASF26:
	.string	"disp_endSectionUpdate"
.LASF25:
	.string	"sect"
.LASF0:
	.string	"signed char"
.LASF43:
	.string	"lcd_putc"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.1_1750) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
