	.file	"hd44780.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.lcd_write,"ax",@progbits
	.type	lcd_write, @function
lcd_write:
.LFB5:
	.file 1 ".././hd44780.c"
	.loc 1 394 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 404 0
	tst r22
	breq .L2
	.loc 1 406 0
	ldi r30,lo8(2)
	ldi r31,lo8(1)
	ld r25,Z
	ori r25,lo8(32)
	st Z,r25
	rjmp .L3
.L2:
	.loc 1 413 0
	ldi r30,lo8(2)
	ldi r31,lo8(1)
	ld r25,Z
	andi r25,lo8(-33)
	st Z,r25
.L3:
	.loc 1 420 0
	tst r24
	brge .L4
	.loc 1 420 0 discriminator 1
	ldi r30,lo8(2)
	ldi r31,lo8(1)
	ld r25,Z
	ori r25,lo8(16)
	st Z,r25
	rjmp .L5
.L4:
	.loc 1 420 0 discriminator 2
	ldi r30,lo8(2)
	ldi r31,lo8(1)
	ld r25,Z
	andi r25,lo8(-17)
	st Z,r25
.L5:
	.loc 1 421 0
	sbrs r24,6
	rjmp .L6
	.loc 1 421 0 discriminator 1
	ldi r30,lo8(2)
	ldi r31,lo8(1)
	ld r25,Z
	ori r25,lo8(8)
	st Z,r25
	rjmp .L7
.L6:
	.loc 1 421 0 discriminator 2
	ldi r30,lo8(2)
	ldi r31,lo8(1)
	ld r25,Z
	andi r25,lo8(-9)
	st Z,r25
.L7:
	.loc 1 422 0
	sbrs r24,5
	rjmp .L8
	.loc 1 422 0 discriminator 1
	in r25,0xe
	ori r25,lo8(8)
	out 0xe,r25
	rjmp .L9
.L8:
	.loc 1 422 0 discriminator 2
	in r25,0xe
	andi r25,lo8(-9)
	out 0xe,r25
.L9:
	.loc 1 423 0
	sbrs r24,4
	rjmp .L10
	.loc 1 423 0 discriminator 1
	in r25,0x14
	ori r25,lo8(32)
	out 0x14,r25
	rjmp .L11
.L10:
	.loc 1 423 0 discriminator 2
	in r25,0x14
	andi r25,lo8(-33)
	out 0x14,r25
.L11:
	.loc 1 425 0 discriminator 1
	rjmp .
.LBB38:
.LBB39:
	.loc 1 195 0 discriminator 1
	ldi r30,lo8(2)
	ldi r31,lo8(1)
	ld r25,Z
	ori r25,lo8(64)
	st Z,r25
.LBE39:
.LBE38:
	.loc 1 428 0 discriminator 1
	ldi r25,lo8(2)
1:	dec r25
	brne 1b
	rjmp .
.LBB40:
.LBB41:
	.loc 1 172 0 discriminator 1
	ld r25,Z
	andi r25,lo8(-65)
	st Z,r25
.LBE41:
.LBE40:
	.loc 1 431 0 discriminator 1
	sbrs r24,3
	rjmp .L12
	.loc 1 431 0 discriminator 1
	ld r25,Z
	ori r25,lo8(16)
	st Z,r25
	rjmp .L13
.L12:
	.loc 1 431 0 discriminator 2
	ldi r30,lo8(2)
	ldi r31,lo8(1)
	ld r25,Z
	andi r25,lo8(-17)
	st Z,r25
.L13:
	.loc 1 432 0
	sbrs r24,2
	rjmp .L14
	.loc 1 432 0 discriminator 1
	ldi r30,lo8(2)
	ldi r31,lo8(1)
	ld r25,Z
	ori r25,lo8(8)
	st Z,r25
	rjmp .L15
.L14:
	.loc 1 432 0 discriminator 2
	ldi r30,lo8(2)
	ldi r31,lo8(1)
	ld r25,Z
	andi r25,lo8(-9)
	st Z,r25
.L15:
	.loc 1 433 0
	sbrs r24,1
	rjmp .L16
	.loc 1 433 0 discriminator 1
	in r25,0xe
	ori r25,lo8(8)
	out 0xe,r25
	rjmp .L17
.L16:
	.loc 1 433 0 discriminator 2
	in r25,0xe
	andi r25,lo8(-9)
	out 0xe,r25
.L17:
	.loc 1 434 0
	sbrs r24,0
	rjmp .L18
	.loc 1 434 0 discriminator 1
	in r25,0x14
	ori r25,lo8(32)
	out 0x14,r25
	rjmp .L19
.L18:
	.loc 1 434 0 discriminator 2
	in r25,0x14
	andi r25,lo8(-33)
	out 0x14,r25
.L19:
	.loc 1 436 0 discriminator 1
	rjmp .
.LBB42:
.LBB43:
	.loc 1 195 0 discriminator 1
	ldi r30,lo8(2)
	ldi r31,lo8(1)
	ld r25,Z
	ori r25,lo8(64)
	st Z,r25
.LBE43:
.LBE42:
	.loc 1 439 0 discriminator 1
	ldi r25,lo8(2)
1:	dec r25
	brne 1b
	rjmp .
.LBB44:
.LBB45:
	.loc 1 172 0 discriminator 1
	ld r25,Z
	andi r25,lo8(-65)
	st Z,r25
.LBE45:
.LBE44:
	.loc 1 442 0 discriminator 1
	ld r25,Z
	ori r25,lo8(16)
	st Z,r25
	.loc 1 443 0 discriminator 1
	ld r25,Z
	ori r25,lo8(8)
	st Z,r25
	.loc 1 444 0 discriminator 1
	in r25,0xe
	ori r25,lo8(8)
	out 0xe,r25
	.loc 1 445 0 discriminator 1
	in r25,0x14
	ori r25,lo8(32)
	out 0x14,r25
	.loc 1 473 0 discriminator 1
	cpse r22,__zero_reg__
	rjmp .L20
	cpi r24,lo8(4)
	brsh .L20
	.loc 1 474 0 discriminator 2
	ldi r24,lo8(6559)
	ldi r25,hi8(6559)
1:	sbiw r24,1
	brne 1b
.LVL1:
	rjmp .
	nop
	ret
.LVL2:
.L20:
	.loc 1 475 0 discriminator 2
	ldi r25,lo8(-43)
1:	dec r25
	brne 1b
	nop
	ret
	.cfi_endproc
.LFE5:
	.size	lcd_write, .-lcd_write
	.section	.text.lcd_command,"ax",@progbits
.global	lcd_command
	.type	lcd_command, @function
lcd_command:
.LFB6:
	.loc 1 485 0
	.cfi_startproc
.LVL3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 486 0
	ldi r22,0
	call lcd_write
.LVL4:
	ret
	.cfi_endproc
.LFE6:
	.size	lcd_command, .-lcd_command
	.section	.text.lcd_goto,"ax",@progbits
.global	lcd_goto
	.type	lcd_goto, @function
lcd_goto:
.LFB7:
	.loc 1 495 0
	.cfi_startproc
.LVL5:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 496 0
	sts lcd_cursorPos,r24
	.loc 1 497 0
	subi r24,lo8(-(-128))
.LVL6:
	call lcd_command
.LVL7:
	ret
	.cfi_endproc
.LFE7:
	.size	lcd_goto, .-lcd_goto
	.section	.text.lcd_clrscr,"ax",@progbits
.global	lcd_clrscr
	.type	lcd_clrscr, @function
lcd_clrscr:
.LFB8:
	.loc 1 507 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 508 0
	sts lcd_cursorPos,__zero_reg__
	.loc 1 509 0
	ldi r24,lo8(1)
	call lcd_command
.LVL8:
	ret
	.cfi_endproc
.LFE8:
	.size	lcd_clrscr, .-lcd_clrscr
	.section	.text.lcd_home,"ax",@progbits
.global	lcd_home
	.type	lcd_home, @function
lcd_home:
.LFB9:
	.loc 1 519 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 520 0
	sts lcd_cursorPos,__zero_reg__
	.loc 1 521 0
	ldi r24,lo8(2)
	call lcd_command
.LVL9:
	ret
	.cfi_endproc
.LFE9:
	.size	lcd_home, .-lcd_home
	.section	.text.lcd_putc,"ax",@progbits
.global	lcd_putc
	.type	lcd_putc, @function
lcd_putc:
.LFB10:
	.loc 1 531 0
	.cfi_startproc
.LVL10:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 532 0
	lds r25,lcd_cursorPos
	subi r25,lo8(-(1))
	andi r25,lo8(63)
	sts lcd_cursorPos,r25
	.loc 1 533 0
	ldi r22,lo8(1)
	call lcd_write
.LVL11:
	ret
	.cfi_endproc
.LFE10:
	.size	lcd_putc, .-lcd_putc
	.section	.text.lcd_puts,"ax",@progbits
.global	lcd_puts
	.type	lcd_puts, @function
lcd_puts:
.LFB11:
	.loc 1 543 0
	.cfi_startproc
.LVL12:
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
	movw r30,r24
	.loc 1 546 0
	rjmp .L28
.LVL13:
.L29:
	.loc 1 547 0
	call lcd_putc
.LVL14:
	.loc 1 546 0
	movw r30,r28
.LVL15:
.L28:
	movw r28,r30
	adiw r28,1
.LVL16:
	ld r24,Z
.LVL17:
	cpse r24,__zero_reg__
	rjmp .L29
/* epilogue start */
	.loc 1 548 0
	pop r29
	pop r28
.LVL18:
	ret
	.cfi_endproc
.LFE11:
	.size	lcd_puts, .-lcd_puts
	.section	.text.lcd_puts_P,"ax",@progbits
.global	lcd_puts_P
	.type	lcd_puts_P, @function
lcd_puts_P:
.LFB12:
	.loc 1 557 0
	.cfi_startproc
.LVL19:
	push r28
.LCFI2:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI3:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	.loc 1 560 0
	rjmp .L31
.LVL20:
.L32:
	.loc 1 561 0
	call lcd_putc
.LVL21:
.LBB46:
	.loc 1 560 0
	movw r30,r28
.LVL22:
.L31:
	movw r28,r30
	adiw r28,1
.LVL23:
	.loc 1 560 0
/* #APP */
 ;  560 ".././hd44780.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL24:
/* #NOAPP */
.LBE46:
	.loc 1 560 0
	cpse r24,__zero_reg__
	rjmp .L32
/* epilogue start */
	.loc 1 562 0
	pop r29
	pop r28
.LVL25:
	ret
	.cfi_endproc
.LFE12:
	.size	lcd_puts_P, .-lcd_puts_P
	.section	.text.lcd_init,"ax",@progbits
.global	lcd_init
	.type	lcd_init, @function
lcd_init:
.LFB13:
	.loc 1 570 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB47:
.LBB48:
	.loc 1 241 0
	ldi r30,lo8(1)
	ldi r31,lo8(1)
	ld r24,Z
	ori r24,lo8(64)
	st Z,r24
.LBE48:
.LBE47:
	.loc 1 573 0
	ld r24,Z
	ori r24,lo8(32)
	st Z,r24
	.loc 1 577 0
	ld r24,Z
	ori r24,lo8(16)
	st Z,r24
	.loc 1 578 0
	ld r24,Z
	ori r24,lo8(8)
	st Z,r24
	.loc 1 579 0
	in r24,0xd
	ori r24,lo8(8)
	out 0xd,r24
	.loc 1 580 0
	in r24,0x13
	ori r24,lo8(32)
	out 0x13,r24
.LBB49:
.LBB50:
	.loc 1 172 0
	ldi r30,lo8(2)
	ldi r31,lo8(1)
	ld r24,Z
	andi r24,lo8(-65)
	st Z,r24
.LBE50:
.LBE49:
	.loc 1 590 0
	ld r24,Z
	andi r24,lo8(-33)
	st Z,r24
	.loc 1 596 0
	ld r24,Z
	ori r24,lo8(16)
	st Z,r24
	.loc 1 597 0
	ld r24,Z
	ori r24,lo8(8)
	st Z,r24
	.loc 1 598 0
	in r24,0xe
	ori r24,lo8(8)
	out 0xe,r24
	.loc 1 599 0
	in r24,0x14
	ori r24,lo8(32)
	out 0x14,r24
	.loc 1 608 0
	ldi r24,lo8(-5537)
	ldi r25,hi8(-5537)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
	.loc 1 611 0
	ld r24,Z
	andi r24,lo8(-17)
	st Z,r24
	.loc 1 612 0
	ld r24,Z
	andi r24,lo8(-9)
	st Z,r24
	.loc 1 613 0
	rjmp .
.LBB51:
.LBB52:
	.loc 1 195 0
	ld r24,Z
	ori r24,lo8(64)
	st Z,r24
.LBE52:
.LBE51:
	.loc 1 615 0
	ldi r25,lo8(2)
1:	dec r25
	brne 1b
	rjmp .
.LBB53:
.LBB54:
	.loc 1 172 0
	ld r24,Z
	andi r24,lo8(-65)
	st Z,r24
.LBE54:
.LBE53:
	.loc 1 618 0
	ldi r24,lo8(16399)
	ldi r25,hi8(16399)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LBB55:
.LBB56:
	.loc 1 195 0
	ld r24,Z
	ori r24,lo8(64)
	st Z,r24
.LBE56:
.LBE55:
	.loc 1 621 0
	ldi r25,lo8(2)
1:	dec r25
	brne 1b
	rjmp .
.LBB57:
.LBB58:
	.loc 1 172 0
	ld r24,Z
	andi r24,lo8(-65)
	st Z,r24
.LBE58:
.LBE57:
	.loc 1 624 0
	ldi r24,lo8(399)
	ldi r25,hi8(399)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LBB59:
.LBB60:
	.loc 1 195 0
	ld r24,Z
	ori r24,lo8(64)
	st Z,r24
.LBE60:
.LBE59:
	.loc 1 627 0
	ldi r25,lo8(2)
1:	dec r25
	brne 1b
	rjmp .
.LBB61:
.LBB62:
	.loc 1 172 0
	ld r24,Z
	andi r24,lo8(-65)
	st Z,r24
.LBE62:
.LBE61:
	.loc 1 630 0
	ldi r24,lo8(-43)
1:	dec r24
	brne 1b
	nop
	.loc 1 634 0
	in r24,0x14
	andi r24,lo8(-33)
	out 0x14,r24
	.loc 1 635 0
	rjmp .
.LBB63:
.LBB64:
	.loc 1 195 0
	ld r24,Z
	ori r24,lo8(64)
	st Z,r24
.LBE64:
.LBE63:
	.loc 1 637 0
	ldi r25,lo8(2)
1:	dec r25
	brne 1b
	rjmp .
.LBB65:
.LBB66:
	.loc 1 172 0
	ld r24,Z
	andi r24,lo8(-65)
	st Z,r24
.LBE66:
.LBE65:
	.loc 1 639 0
	ldi r24,lo8(-43)
1:	dec r24
	brne 1b
	nop
	.loc 1 641 0
	in r24,0x14
	andi r24,lo8(-33)
	out 0x14,r24
	.loc 1 642 0
	rjmp .
.LBB67:
.LBB68:
	.loc 1 195 0
	ld r24,Z
	ori r24,lo8(64)
	st Z,r24
.LBE68:
.LBE67:
	.loc 1 644 0
	ldi r25,lo8(2)
1:	dec r25
	brne 1b
	rjmp .
.LBB69:
.LBB70:
	.loc 1 172 0
	ld r24,Z
	andi r24,lo8(-65)
	st Z,r24
.LBE70:
.LBE69:
	.loc 1 646 0
	ldi r24,lo8(2)
1:	dec r24
	brne 1b
	rjmp .
	.loc 1 650 0
	ld r24,Z
	ori r24,lo8(16)
	st Z,r24
	.loc 1 668 0
	rjmp .
.LBB71:
.LBB72:
	.loc 1 195 0
	ld r24,Z
	ori r24,lo8(64)
	st Z,r24
.LBE72:
.LBE71:
	.loc 1 670 0
	ldi r25,lo8(2)
1:	dec r25
	brne 1b
	rjmp .
.LBB73:
.LBB74:
	.loc 1 172 0
	ld r24,Z
	andi r24,lo8(-65)
	st Z,r24
.LBE74:
.LBE73:
	.loc 1 672 0
	ldi r24,lo8(-43)
1:	dec r24
	brne 1b
	nop
	.loc 1 703 0
	ldi r24,lo8(8)
	call lcd_command
.LVL26:
	.loc 1 706 0
	call lcd_clrscr
.LVL27:
	.loc 1 709 0
	ldi r24,lo8(6)
	call lcd_command
.LVL28:
	.loc 1 712 0
	ldi r24,lo8(12)
	call lcd_command
.LVL29:
	ret
	.cfi_endproc
.LFE13:
	.size	lcd_init, .-lcd_init
	.comm	lcd_cursorPos,1,1
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x429
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF25
	.byte	0xc
	.long	.LASF26
	.long	.LASF27
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
	.byte	0x2
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
	.byte	0x2
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
	.long	.LASF9
	.byte	0x1
	.byte	0x9b
	.byte	0x3
	.uleb128 0x5
	.long	.LASF10
	.byte	0x1
	.byte	0xb2
	.byte	0x3
	.uleb128 0x5
	.long	.LASF11
	.byte	0x1
	.byte	0xe0
	.byte	0x3
	.uleb128 0x6
	.long	.LASF28
	.byte	0x1
	.word	0x189
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x107
	.uleb128 0x7
	.long	.LASF12
	.byte	0x1
	.word	0x189
	.long	0x30
	.long	.LLST0
	.uleb128 0x8
	.string	"rs"
	.byte	0x1
	.word	0x189
	.long	0x30
	.byte	0x1
	.byte	0x66
	.uleb128 0x9
	.long	0x7f
	.long	.LBB38
	.long	.LBE38
	.byte	0x1
	.word	0x1aa
	.uleb128 0x9
	.long	0x77
	.long	.LBB40
	.long	.LBE40
	.byte	0x1
	.word	0x1ad
	.uleb128 0x9
	.long	0x7f
	.long	.LBB42
	.long	.LBE42
	.byte	0x1
	.word	0x1b5
	.uleb128 0x9
	.long	0x77
	.long	.LBB44
	.long	.LBE44
	.byte	0x1
	.word	0x1b8
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.word	0x1e4
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x149
	.uleb128 0xb
	.string	"cmd"
	.byte	0x1
	.word	0x1e4
	.long	0x30
	.long	.LLST1
	.uleb128 0xc
	.long	.LVL4
	.long	0x8f
	.uleb128 0xd
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0xd
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.word	0x1ee
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x189
	.uleb128 0xb
	.string	"pos"
	.byte	0x1
	.word	0x1ee
	.long	0x30
	.long	.LLST2
	.uleb128 0xc
	.long	.LVL7
	.long	0x107
	.uleb128 0xd
	.byte	0x1
	.byte	0x68
	.byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0x80
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.word	0x1fa
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1b3
	.uleb128 0xc
	.long	.LVL8
	.long	0x107
	.uleb128 0xd
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.word	0x206
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x1dd
	.uleb128 0xc
	.long	.LVL9
	.long	0x107
	.uleb128 0xd
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF17
	.byte	0x1
	.word	0x212
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x21d
	.uleb128 0xb
	.string	"c"
	.byte	0x1
	.word	0x212
	.long	0x21d
	.long	.LLST3
	.uleb128 0xc
	.long	.LVL11
	.long	0x8f
	.uleb128 0xd
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0xd
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF18
	.uleb128 0xf
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.word	0x21e
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.long	.LLST4
	.byte	0x1
	.long	0x265
	.uleb128 0xb
	.string	"s"
	.byte	0x1
	.word	0x21e
	.long	0x265
	.long	.LLST5
	.uleb128 0x10
	.string	"c"
	.byte	0x1
	.word	0x220
	.long	0x21d
	.long	.LLST6
	.uleb128 0x11
	.long	.LVL14
	.long	0x1dd
	.byte	0
	.uleb128 0x12
	.byte	0x2
	.long	0x26b
	.uleb128 0x13
	.long	0x21d
	.uleb128 0xf
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.word	0x22c
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.long	.LLST7
	.byte	0x1
	.long	0x2e1
	.uleb128 0x7
	.long	.LASF21
	.byte	0x1
	.word	0x22c
	.long	0x265
	.long	.LLST8
	.uleb128 0x10
	.string	"c"
	.byte	0x1
	.word	0x22e
	.long	0x21d
	.long	.LLST9
	.uleb128 0x14
	.long	.LBB46
	.long	.LBE46
	.long	0x2d7
	.uleb128 0x15
	.long	.LASF22
	.byte	0x1
	.word	0x230
	.long	0x49
	.long	.LLST10
	.uleb128 0x15
	.long	.LASF23
	.byte	0x1
	.word	0x230
	.long	0x30
	.long	.LLST9
	.byte	0
	.uleb128 0x11
	.long	.LVL21
	.long	0x1dd
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.word	0x239
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.byte	0x1
	.long	0x41a
	.uleb128 0x9
	.long	0x87
	.long	.LBB47
	.long	.LBE47
	.byte	0x1
	.word	0x23c
	.uleb128 0x9
	.long	0x77
	.long	.LBB49
	.long	.LBE49
	.byte	0x1
	.word	0x24d
	.uleb128 0x9
	.long	0x7f
	.long	.LBB51
	.long	.LBE51
	.byte	0x1
	.word	0x266
	.uleb128 0x9
	.long	0x77
	.long	.LBB53
	.long	.LBE53
	.byte	0x1
	.word	0x268
	.uleb128 0x9
	.long	0x7f
	.long	.LBB55
	.long	.LBE55
	.byte	0x1
	.word	0x26c
	.uleb128 0x9
	.long	0x77
	.long	.LBB57
	.long	.LBE57
	.byte	0x1
	.word	0x26e
	.uleb128 0x9
	.long	0x7f
	.long	.LBB59
	.long	.LBE59
	.byte	0x1
	.word	0x272
	.uleb128 0x9
	.long	0x77
	.long	.LBB61
	.long	.LBE61
	.byte	0x1
	.word	0x274
	.uleb128 0x9
	.long	0x7f
	.long	.LBB63
	.long	.LBE63
	.byte	0x1
	.word	0x27c
	.uleb128 0x9
	.long	0x77
	.long	.LBB65
	.long	.LBE65
	.byte	0x1
	.word	0x27e
	.uleb128 0x9
	.long	0x7f
	.long	.LBB67
	.long	.LBE67
	.byte	0x1
	.word	0x283
	.uleb128 0x9
	.long	0x77
	.long	.LBB69
	.long	.LBE69
	.byte	0x1
	.word	0x285
	.uleb128 0x9
	.long	0x7f
	.long	.LBB71
	.long	.LBE71
	.byte	0x1
	.word	0x29d
	.uleb128 0x9
	.long	0x77
	.long	.LBB73
	.long	.LBE73
	.byte	0x1
	.word	0x29f
	.uleb128 0x16
	.long	.LVL26
	.long	0x107
	.long	0x3ee
	.uleb128 0xd
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x11
	.long	.LVL27
	.long	0x189
	.uleb128 0x16
	.long	.LVL28
	.long	0x107
	.long	0x40a
	.uleb128 0xd
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x36
	.byte	0
	.uleb128 0xc
	.long	.LVL29
	.long	0x107
	.uleb128 0xd
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF29
	.byte	0x1
	.byte	0x99
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lcd_cursorPos
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
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LVL2
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL2
	.long	.LFE5
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL4-1
	.word	0x1
	.byte	0x68
	.long	.LVL4-1
	.long	.LFE6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL6
	.word	0x1
	.byte	0x68
	.long	.LVL6
	.long	.LVL7-1
	.word	0x5
	.byte	0x3
	.long	lcd_cursorPos
	.long	.LVL7-1
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL10
	.long	.LVL11-1
	.word	0x1
	.byte	0x68
	.long	.LVL11-1
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LFB11
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
	.long	.LFE11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST5:
	.long	.LVL12
	.long	.LVL13
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LVL15
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15
	.long	.LVL16
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LVL18
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL18
	.long	.LFE11
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL13
	.long	.LVL14-1
	.word	0x1
	.byte	0x68
	.long	.LVL17
	.long	.LFE11
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST7:
	.long	.LFB12
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
	.long	.LFE12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST8:
	.long	.LVL19
	.long	.LVL20
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20
	.long	.LVL22
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL22
	.long	.LVL23
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL23
	.long	.LVL25
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL25
	.long	.LFE12
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL20
	.long	.LVL21-1
	.word	0x1
	.byte	0x68
	.long	.LVL24
	.long	.LFE12
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST10:
	.long	.LVL20
	.long	.LVL21-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21-1
	.long	.LVL22
	.word	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.long	.LVL23
	.long	.LFE12
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x5c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"GNU C99 5.4.0 -mn-flash=4 -mno-skip-bug -mrelax -mmcu=avr6 -g2 -Og -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF14:
	.string	"lcd_goto"
.LASF29:
	.string	"lcd_cursorPos"
.LASF19:
	.string	"lcd_puts"
.LASF13:
	.string	"lcd_command"
.LASF15:
	.string	"lcd_clrscr"
.LASF22:
	.string	"__addr16"
.LASF26:
	.string	".././hd44780.c"
.LASF12:
	.string	"data"
.LASF1:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF24:
	.string	"lcd_init"
.LASF28:
	.string	"lcd_write"
.LASF27:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF20:
	.string	"lcd_puts_P"
.LASF10:
	.string	"lcd_e_port_high"
.LASF16:
	.string	"lcd_home"
.LASF11:
	.string	"lcd_e_ddr_high"
.LASF4:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF2:
	.string	"uint8_t"
.LASF23:
	.string	"__result"
.LASF7:
	.string	"long long int"
.LASF9:
	.string	"lcd_e_port_low"
.LASF21:
	.string	"progmem_s"
.LASF3:
	.string	"uint16_t"
.LASF5:
	.string	"long int"
.LASF18:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF17:
	.string	"lcd_putc"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.1_1750) 5.4.0"
.global __do_clear_bss
