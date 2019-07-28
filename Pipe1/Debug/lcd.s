	.file	"lcd.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.lcd_write,"ax",@progbits
	.type	lcd_write, @function
lcd_write:
.LFB8:
	.file 1 ".././lcd.c"
	.loc 1 119 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 123 0
	tst r22
	breq .L2
	.loc 1 124 0
	sbi 0x18,3
.L3:
	.loc 1 128 0
	cbi 0x18,2
	.loc 1 151 0
	sbi 0x17,4
	.loc 1 152 0
	sbi 0x17,5
	.loc 1 153 0
	sbi 0x17,6
	.loc 1 154 0
	sbi 0x17,7
	.loc 1 157 0
	cbi 0x18,7
	.loc 1 158 0
	cbi 0x18,6
	.loc 1 159 0
	cbi 0x18,5
	.loc 1 160 0
	cbi 0x18,4
	.loc 1 161 0
	sbrc r24,7
	rjmp .L34
.L4:
	.loc 1 162 0
	sbrc r24,6
	.loc 1 162 0 discriminator 1
	sbi 0x18,6
.L5:
	.loc 1 163 0
	sbrc r24,5
	.loc 1 163 0 discriminator 1
	sbi 0x18,5
.L6:
	.loc 1 164 0
	sbrc r24,4
	.loc 1 164 0 discriminator 1
	sbi 0x18,4
.L7:
.LBB84:
.LBB85:
	.loc 1 103 0
	sbi 0x18,1
.LVL1:
.LBB86:
.LBB87:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 2 276 0
	ldi r25,lo8(5)
1:	dec r25
	brne 1b
	nop
.LVL2:
.LBE87:
.LBE86:
	.loc 1 105 0
	cbi 0x18,1
.LBE85:
.LBE84:
	.loc 1 168 0
	cbi 0x18,7
	.loc 1 169 0
	cbi 0x18,6
	.loc 1 170 0
	cbi 0x18,5
	.loc 1 171 0
	cbi 0x18,4
	.loc 1 172 0
	sbrc r24,3
	.loc 1 172 0 discriminator 1
	sbi 0x18,7
.L8:
	.loc 1 173 0
	sbrc r24,2
	.loc 1 173 0 discriminator 1
	sbi 0x18,6
.L9:
	.loc 1 174 0
	sbrc r24,1
	.loc 1 174 0 discriminator 1
	sbi 0x18,5
.L10:
	.loc 1 175 0
	sbrc r24,0
	.loc 1 175 0 discriminator 1
	sbi 0x18,4
.L11:
.LBB88:
.LBB89:
	.loc 1 103 0
	sbi 0x18,1
.LVL3:
.LBB90:
.LBB91:
	.loc 2 276 0
	ldi r24,lo8(5)
1:	dec r24
	brne 1b
.LVL4:
	nop
.LVL5:
.LBE91:
.LBE90:
	.loc 1 105 0
	cbi 0x18,1
.LBE89:
.LBE88:
	.loc 1 179 0
	sbi 0x18,4
	.loc 1 180 0
	sbi 0x18,5
	.loc 1 181 0
	sbi 0x18,6
	.loc 1 182 0
	sbi 0x18,7
	ret
.LVL6:
.L2:
	.loc 1 126 0
	cbi 0x18,3
	rjmp .L3
.L34:
	.loc 1 161 0 discriminator 1
	sbi 0x18,7
	rjmp .L4
	.cfi_endproc
.LFE8:
	.size	lcd_write, .-lcd_write
	.section	.text.lcd_read.constprop.0,"ax",@progbits
	.type	lcd_read.constprop.0, @function
lcd_read.constprop.0:
.LFB22:
	.loc 1 199 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL7:
	.loc 1 207 0
	cbi 0x18,3
	.loc 1 208 0
	sbi 0x18,2
	.loc 1 230 0
	cbi 0x17,4
	.loc 1 231 0
	cbi 0x17,5
	.loc 1 232 0
	cbi 0x17,6
	.loc 1 233 0
	cbi 0x17,7
	.loc 1 236 0
	sbi 0x18,1
.LVL8:
.LBB92:
.LBB93:
	.loc 2 276 0
	ldi r24,lo8(5)
1:	dec r24
	brne 1b
	nop
.LVL9:
.LBE93:
.LBE92:
	.loc 1 239 0
	sbis 0x16,4
	rjmp .L44
	.loc 1 239 0
	ldi r24,lo8(16)
.L36:
.LVL10:
	.loc 1 240 0
	sbic 0x16,5
	.loc 1 240 0
	ori r24,lo8(32)
.LVL11:
.L37:
	.loc 1 241 0
	sbic 0x16,6
	.loc 1 241 0
	ori r24,lo8(64)
.LVL12:
.L38:
	.loc 1 242 0
	sbic 0x16,7
	rjmp .L60
.L39:
	.loc 1 243 0
	cbi 0x18,1
.LVL13:
.LBB94:
.LBB95:
	.loc 2 276 0
	ldi r25,lo8(5)
1:	dec r25
	brne 1b
	nop
.LVL14:
.LBE95:
.LBE94:
	.loc 1 248 0
	sbi 0x18,1
.LVL15:
.LBB96:
.LBB97:
	.loc 2 276 0
	ldi r25,lo8(5)
1:	dec r25
	brne 1b
	nop
.LVL16:
.LBE97:
.LBE96:
	.loc 1 250 0
	sbic 0x16,4
	.loc 1 250 0
	ori r24,lo8(1)
.LVL17:
.L40:
	.loc 1 251 0
	sbic 0x16,5
	.loc 1 251 0
	ori r24,lo8(2)
.LVL18:
.L41:
	.loc 1 252 0
	sbic 0x16,6
	.loc 1 252 0
	ori r24,lo8(4)
.LVL19:
.L42:
	.loc 1 253 0
	sbic 0x16,7
	.loc 1 253 0
	ori r24,lo8(8)
.LVL20:
.L43:
	.loc 1 254 0
	cbi 0x18,1
	.loc 1 257 0
	ret
.LVL21:
.L44:
	.loc 1 238 0
	ldi r24,0
	rjmp .L36
.LVL22:
.L60:
	.loc 1 242 0
	ori r24,lo8(-128)
.LVL23:
	rjmp .L39
	.cfi_endproc
.LFE22:
	.size	lcd_read.constprop.0, .-lcd_read.constprop.0
	.section	.text.lcd_waitbusy,"ax",@progbits
	.type	lcd_waitbusy, @function
lcd_waitbusy:
.LFB10:
	.loc 1 270 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L62:
	.loc 1 274 0 discriminator 1
	call lcd_read.constprop.0
.LVL24:
	sbrc r24,7
	rjmp .L62
.LVL25:
.LBB98:
.LBB99:
	.loc 2 276 0
	ldi r24,lo8(21)
1:	dec r24
	brne 1b
.LVL26:
	nop
.LVL27:
.LBE99:
.LBE98:
	.loc 1 280 0
	jmp lcd_read.constprop.0
.LVL28:
	.cfi_endproc
.LFE10:
	.size	lcd_waitbusy, .-lcd_waitbusy
	.section	.text.lcd_command,"ax",@progbits
.global	lcd_command
	.type	lcd_command, @function
lcd_command:
.LFB12:
	.loc 1 339 0
	.cfi_startproc
.LVL29:
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	.loc 1 340 0
	call lcd_waitbusy
.LVL30:
	.loc 1 341 0
	ldi r22,0
	mov r24,r28
/* epilogue start */
	.loc 1 342 0
	pop r28
.LVL31:
	.loc 1 341 0
	jmp lcd_write
.LVL32:
	.cfi_endproc
.LFE12:
	.size	lcd_command, .-lcd_command
	.section	.text.lcd_data,"ax",@progbits
.global	lcd_data
	.type	lcd_data, @function
lcd_data:
.LFB13:
	.loc 1 351 0
	.cfi_startproc
.LVL33:
	push r28
.LCFI1:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	.loc 1 352 0
	call lcd_waitbusy
.LVL34:
	.loc 1 353 0
	ldi r22,lo8(1)
	mov r24,r28
/* epilogue start */
	.loc 1 354 0
	pop r28
.LVL35:
	.loc 1 353 0
	jmp lcd_write
.LVL36:
	.cfi_endproc
.LFE13:
	.size	lcd_data, .-lcd_data
	.section	.text.lcd_gotoxy,"ax",@progbits
.global	lcd_gotoxy
	.type	lcd_gotoxy, @function
lcd_gotoxy:
.LFB14:
	.loc 1 365 0
	.cfi_startproc
.LVL37:
	push r28
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	.loc 1 370 0
	tst r22
	breq .L68
.LVL38:
.LBB100:
.LBB101:
	.loc 1 340 0
	call lcd_waitbusy
.LVL39:
	.loc 1 341 0
	ldi r22,0
	ldi r24,lo8(-64)
	add r24,r28
.LVL40:
/* epilogue start */
.LBE101:
.LBE100:
	.loc 1 386 0
	pop r28
.LVL41:
.LBB103:
.LBB102:
	.loc 1 341 0
	jmp lcd_write
.LVL42:
.L68:
.LBE102:
.LBE103:
.LBB104:
.LBB105:
	.loc 1 340 0
	call lcd_waitbusy
.LVL43:
	.loc 1 341 0
	ldi r22,0
	ldi r24,lo8(-128)
	add r24,r28
.LVL44:
/* epilogue start */
.LBE105:
.LBE104:
	.loc 1 386 0
	pop r28
.LVL45:
.LBB107:
.LBB106:
	.loc 1 341 0
	jmp lcd_write
.LVL46:
.LBE106:
.LBE107:
	.cfi_endproc
.LFE14:
	.size	lcd_gotoxy, .-lcd_gotoxy
	.section	.text.lcd_getxy,"ax",@progbits
.global	lcd_getxy
	.type	lcd_getxy, @function
lcd_getxy:
.LFB15:
	.loc 1 392 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 393 0
	call lcd_waitbusy
.LVL47:
	.loc 1 394 0
	ldi r25,0
	ret
	.cfi_endproc
.LFE15:
	.size	lcd_getxy, .-lcd_getxy
	.section	.text.lcd_clrscr,"ax",@progbits
.global	lcd_clrscr
	.type	lcd_clrscr, @function
lcd_clrscr:
.LFB16:
	.loc 1 401 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL48:
.LBB108:
.LBB109:
	.loc 1 340 0
	call lcd_waitbusy
.LVL49:
	.loc 1 341 0
	ldi r22,0
	ldi r24,lo8(1)
	jmp lcd_write
.LVL50:
.LBE109:
.LBE108:
	.cfi_endproc
.LFE16:
	.size	lcd_clrscr, .-lcd_clrscr
	.section	.text.lcd_home,"ax",@progbits
.global	lcd_home
	.type	lcd_home, @function
lcd_home:
.LFB17:
	.loc 1 410 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL51:
.LBB110:
.LBB111:
	.loc 1 340 0
	call lcd_waitbusy
.LVL52:
	.loc 1 341 0
	ldi r22,0
	ldi r24,lo8(2)
	jmp lcd_write
.LVL53:
.LBE111:
.LBE110:
	.cfi_endproc
.LFE17:
	.size	lcd_home, .-lcd_home
	.section	.text.lcd_putc,"ax",@progbits
.global	lcd_putc
	.type	lcd_putc, @function
lcd_putc:
.LFB18:
	.loc 1 421 0
	.cfi_startproc
.LVL54:
	push r28
.LCFI3:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	.loc 1 425 0
	call lcd_waitbusy
.LVL55:
	.loc 1 426 0
	cpi r28,lo8(10)
	breq .L76
	.loc 1 456 0
	ldi r22,lo8(1)
	mov r24,r28
.LVL56:
/* epilogue start */
	.loc 1 459 0
	pop r28
.LVL57:
	.loc 1 456 0
	jmp lcd_write
.LVL58:
.L76:
.LBB116:
.LBB117:
	.loc 1 298 0
	cpi r24,lo8(64)
	brlo .L77
	ldi r28,lo8(-128)
.LVL59:
.L74:
.LBB118:
.LBB119:
	.loc 1 340 0
	call lcd_waitbusy
.LVL60:
	.loc 1 341 0
	ldi r22,0
	mov r24,r28
/* epilogue start */
.LBE119:
.LBE118:
.LBE117:
.LBE116:
	.loc 1 459 0
	pop r28
.LBB123:
.LBB122:
.LBB121:
.LBB120:
	.loc 1 341 0
	jmp lcd_write
.LVL61:
.L77:
.LBE120:
.LBE121:
	.loc 1 298 0
	ldi r28,lo8(-64)
.LVL62:
	rjmp .L74
.LBE122:
.LBE123:
	.cfi_endproc
.LFE18:
	.size	lcd_putc, .-lcd_putc
	.section	.text.lcd_puts,"ax",@progbits
.global	lcd_puts
	.type	lcd_puts, @function
lcd_puts:
.LFB19:
	.loc 1 469 0
	.cfi_startproc
.LVL63:
	push r28
.LCFI4:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 472 0
	movw r28,r24
	adiw r28,1
.LVL64:
	movw r30,r24
	ld r24,Z
.LVL65:
	tst r24
	breq .L78
.L80:
	.loc 1 473 0
	call lcd_putc
.LVL66:
	.loc 1 472 0
	ld r24,Y+
.LVL67:
	cpse r24,__zero_reg__
	rjmp .L80
.L78:
/* epilogue start */
	.loc 1 476 0
	pop r29
	pop r28
.LVL68:
	ret
	.cfi_endproc
.LFE19:
	.size	lcd_puts, .-lcd_puts
	.section	.text.lcd_puts_p,"ax",@progbits
.global	lcd_puts_p
	.type	lcd_puts_p, @function
lcd_puts_p:
.LFB20:
	.loc 1 486 0
	.cfi_startproc
.LVL69:
	push r28
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LBB124:
	.loc 1 489 0
	movw r28,r24
	adiw r28,1
.LVL70:
	.loc 1 489 0
	movw r30,r24
/* #APP */
 ;  489 ".././lcd.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL71:
/* #NOAPP */
.LBE124:
	.loc 1 489 0
	tst r24
	breq .L83
.L85:
.LVL72:
	.loc 1 490 0
	call lcd_putc
.LVL73:
.LBB125:
	.loc 1 489 0
	movw r30,r28
/* #APP */
 ;  489 ".././lcd.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL74:
/* #NOAPP */
	adiw r28,1
.LVL75:
.LBE125:
	.loc 1 489 0
	cpse r24,__zero_reg__
	rjmp .L85
.L83:
/* epilogue start */
	.loc 1 493 0
	pop r29
	pop r28
.LVL76:
	ret
	.cfi_endproc
.LFE20:
	.size	lcd_puts_p, .-lcd_puts_p
	.section	.text.lcd_init,"ax",@progbits
.global	lcd_init
	.type	lcd_init, @function
lcd_init:
.LFB21:
	.loc 1 505 0
	.cfi_startproc
.LVL77:
	push r28
.LCFI8:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	.loc 1 531 0
	sbi 0x17,3
	.loc 1 532 0
	sbi 0x17,2
	.loc 1 533 0
	sbi 0x17,1
	.loc 1 534 0
	sbi 0x17,4
	.loc 1 535 0
	sbi 0x17,5
	.loc 1 536 0
	sbi 0x17,6
	.loc 1 537 0
	sbi 0x17,7
.LVL78:
.LBB126:
.LBB127:
	.loc 2 276 0
	ldi r24,lo8(-1537)
	ldi r25,hi8(-1537)
1:	sbiw r24,1
	brne 1b
.LVL79:
	rjmp .
	nop
.LVL80:
.LBE127:
.LBE126:
	.loc 1 542 0
	sbi 0x18,5
	.loc 1 543 0
	sbi 0x18,4
.LBB128:
.LBB129:
	.loc 1 103 0
	sbi 0x18,1
.LVL81:
.LBB130:
.LBB131:
	.loc 2 276 0
	ldi r25,lo8(5)
1:	dec r25
	brne 1b
	nop
.LVL82:
.LBE131:
.LBE130:
	.loc 1 105 0
	cbi 0x18,1
.LVL83:
.LBE129:
.LBE128:
.LBB132:
.LBB133:
	.loc 2 276 0
	ldi r24,lo8(19999)
	ldi r25,hi8(19999)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL84:
.LBE133:
.LBE132:
.LBB134:
.LBB135:
	.loc 1 103 0
	sbi 0x18,1
.LVL85:
.LBB136:
.LBB137:
	.loc 2 276 0
	ldi r25,lo8(5)
1:	dec r25
	brne 1b
	nop
.LVL86:
.LBE137:
.LBE136:
	.loc 1 105 0
	cbi 0x18,1
.LVL87:
.LBE135:
.LBE134:
.LBB138:
.LBB139:
	.loc 2 276 0
	ldi r24,lo8(255)
	ldi r25,hi8(255)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL88:
.LBE139:
.LBE138:
.LBB140:
.LBB141:
	.loc 1 103 0
	sbi 0x18,1
.LVL89:
.LBB142:
.LBB143:
	.loc 2 276 0
	ldi r25,lo8(5)
1:	dec r25
	brne 1b
	nop
.LVL90:
.LBE143:
.LBE142:
	.loc 1 105 0
	cbi 0x18,1
.LVL91:
.LBE141:
.LBE140:
.LBB144:
.LBB145:
	.loc 2 276 0
	ldi r24,lo8(255)
	ldi r25,hi8(255)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL92:
.LBE145:
.LBE144:
	.loc 1 556 0
	cbi 0x18,4
.LBB146:
.LBB147:
	.loc 1 103 0
	sbi 0x18,1
.LVL93:
.LBB148:
.LBB149:
	.loc 2 276 0
	ldi r25,lo8(5)
1:	dec r25
	brne 1b
	nop
.LVL94:
.LBE149:
.LBE148:
	.loc 1 105 0
	cbi 0x18,1
.LVL95:
.LBE147:
.LBE146:
.LBB150:
.LBB151:
	.loc 2 276 0
	ldi r24,lo8(255)
	ldi r25,hi8(255)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL96:
.LBE151:
.LBE150:
.LBB152:
.LBB153:
	.loc 1 340 0
	call lcd_waitbusy
.LVL97:
	.loc 1 341 0
	ldi r22,0
	ldi r24,lo8(40)
	call lcd_write
.LVL98:
.LBE153:
.LBE152:
.LBB154:
.LBB155:
	.loc 1 340 0
	call lcd_waitbusy
.LVL99:
	.loc 1 341 0
	ldi r22,0
	ldi r24,lo8(8)
	call lcd_write
.LVL100:
.LBE155:
.LBE154:
.LBB156:
.LBB157:
.LBB158:
	.loc 1 340 0
	call lcd_waitbusy
.LVL101:
	.loc 1 341 0
	ldi r22,0
	ldi r24,lo8(1)
	call lcd_write
.LVL102:
.LBE158:
.LBE157:
.LBE156:
.LBB159:
.LBB160:
	.loc 1 340 0
	call lcd_waitbusy
.LVL103:
	.loc 1 341 0
	ldi r22,0
	ldi r24,lo8(6)
	call lcd_write
.LVL104:
.LBE160:
.LBE159:
.LBB161:
.LBB162:
	.loc 1 340 0
	call lcd_waitbusy
.LVL105:
	.loc 1 341 0
	ldi r22,0
	mov r24,r28
/* epilogue start */
.LBE162:
.LBE161:
	.loc 1 592 0
	pop r28
.LVL106:
.LBB164:
.LBB163:
	.loc 1 341 0
	jmp lcd_write
.LVL107:
.LBE163:
.LBE164:
	.cfi_endproc
.LFE21:
	.size	lcd_init, .-lcd_init
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa79
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF32
	.byte	0xc
	.long	.LASF33
	.long	.LASF34
	.long	.Ldebug_ranges0+0x90
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
	.uleb128 0x3
	.long	.LASF6
	.byte	0x3
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
	.uleb128 0x5
	.long	.LASF21
	.byte	0x2
	.byte	0xff
	.byte	0x1
	.byte	0x3
	.long	0xbe
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.byte	0xff
	.long	0xbe
	.uleb128 0x7
	.long	.LASF10
	.byte	0x2
	.word	0x101
	.long	0xbe
	.uleb128 0x7
	.long	.LASF11
	.byte	0x2
	.word	0x105
	.long	0x62
	.uleb128 0x8
	.byte	0x1
	.long	.LASF14
	.byte	0x2
	.word	0x106
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x9
	.long	.LASF35
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.long	.LASF36
	.byte	0x1
	.word	0x152
	.byte	0x1
	.byte	0x1
	.long	0xea
	.uleb128 0xb
	.string	"cmd"
	.byte	0x1
	.word	0x152
	.long	0x30
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.word	0x190
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	.LASF37
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.long	0x30
	.byte	0x1
	.long	0x11c
	.uleb128 0xd
	.string	"rs"
	.byte	0x1
	.byte	0xc7
	.long	0x30
	.uleb128 0xe
	.long	.LASF16
	.byte	0x1
	.byte	0xc9
	.long	0x30
	.byte	0
	.uleb128 0xf
	.long	.LASF38
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1ea
	.uleb128 0x10
	.long	.LASF16
	.byte	0x1
	.byte	0x76
	.long	0x30
	.long	.LLST0
	.uleb128 0x11
	.string	"rs"
	.byte	0x1
	.byte	0x76
	.long	0x30
	.byte	0x1
	.byte	0x66
	.uleb128 0xe
	.long	.LASF17
	.byte	0x1
	.byte	0x78
	.long	0x3b
	.uleb128 0x12
	.long	0xc5
	.long	.LBB84
	.long	.LBE84
	.byte	0x1
	.byte	0xa5
	.long	0x1a4
	.uleb128 0x13
	.long	0x82
	.long	.LBB86
	.long	.LBE86
	.byte	0x1
	.byte	0x68
	.uleb128 0x14
	.long	0x8f
	.long	.LLST1
	.uleb128 0x15
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x16
	.long	0x9a
	.long	.LLST2
	.uleb128 0x16
	.long	0xa6
	.long	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xc5
	.long	.LBB88
	.long	.LBE88
	.byte	0x1
	.byte	0xb0
	.uleb128 0x13
	.long	0x82
	.long	.LBB90
	.long	.LBE90
	.byte	0x1
	.byte	0x68
	.uleb128 0x14
	.long	0x8f
	.long	.LLST4
	.uleb128 0x15
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x16
	.long	0x9a
	.long	.LLST5
	.uleb128 0x16
	.long	0xa6
	.long	.LLST6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	0xf5
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2b7
	.uleb128 0x16
	.long	0x110
	.long	.LLST7
	.uleb128 0x18
	.long	0x106
	.byte	0
	.uleb128 0x12
	.long	0x82
	.long	.LBB92
	.long	.LBE92
	.byte	0x1
	.byte	0xed
	.long	0x248
	.uleb128 0x14
	.long	0x8f
	.long	.LLST8
	.uleb128 0x15
	.long	.LBB93
	.long	.LBE93
	.uleb128 0x16
	.long	0x9a
	.long	.LLST9
	.uleb128 0x16
	.long	0xa6
	.long	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x82
	.long	.LBB94
	.long	.LBE94
	.byte	0x1
	.byte	0xf5
	.long	0x281
	.uleb128 0x14
	.long	0x8f
	.long	.LLST11
	.uleb128 0x15
	.long	.LBB95
	.long	.LBE95
	.uleb128 0x16
	.long	0x9a
	.long	.LLST12
	.uleb128 0x16
	.long	0xa6
	.long	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x82
	.long	.LBB96
	.long	.LBE96
	.byte	0x1
	.byte	0xf9
	.uleb128 0x14
	.long	0x8f
	.long	.LLST14
	.uleb128 0x15
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x16
	.long	0x9a
	.long	.LLST15
	.uleb128 0x16
	.long	0xa6
	.long	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF39
	.byte	0x1
	.word	0x10c
	.byte	0x1
	.long	0x30
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x331
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.word	0x10f
	.long	0x30
	.long	.LLST17
	.uleb128 0x1b
	.long	0x82
	.long	.LBB98
	.long	.LBE98
	.byte	0x1
	.word	0x115
	.long	0x31d
	.uleb128 0x14
	.long	0x8f
	.long	.LLST18
	.uleb128 0x15
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x16
	.long	0x9a
	.long	.LLST19
	.uleb128 0x16
	.long	0xa6
	.long	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LVL24
	.long	0x1ea
	.uleb128 0x1d
	.long	.LVL28
	.byte	0x1
	.long	0x1ea
	.byte	0
	.uleb128 0x1e
	.long	0xce
	.long	.LFB12
	.long	.LFE12
	.long	.LLST21
	.byte	0x1
	.long	0x371
	.uleb128 0x14
	.long	0xdd
	.long	.LLST22
	.uleb128 0x1c
	.long	.LVL30
	.long	0x2b7
	.uleb128 0x1f
	.long	.LVL32
	.byte	0x1
	.long	0x11c
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x20
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.word	0x15e
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST23
	.byte	0x1
	.long	0x3bd
	.uleb128 0x22
	.long	.LASF16
	.byte	0x1
	.word	0x15e
	.long	0x30
	.long	.LLST24
	.uleb128 0x1c
	.long	.LVL34
	.long	0x2b7
	.uleb128 0x1f
	.long	.LVL36
	.byte	0x1
	.long	0x11c
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x20
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.word	0x16c
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.long	.LLST25
	.byte	0x1
	.long	0x473
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.word	0x16c
	.long	0x30
	.long	.LLST26
	.uleb128 0x23
	.string	"y"
	.byte	0x1
	.word	0x16c
	.long	0x30
	.long	.LLST27
	.uleb128 0x24
	.long	0xce
	.long	.LBB100
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.word	0x175
	.long	0x435
	.uleb128 0x14
	.long	0xdd
	.long	.LLST28
	.uleb128 0x1c
	.long	.LVL39
	.long	0x2b7
	.uleb128 0x1f
	.long	.LVL42
	.byte	0x1
	.long	0x11c
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.uleb128 0x20
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0xce
	.long	.LBB104
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.word	0x173
	.uleb128 0x14
	.long	0xdd
	.long	.LLST29
	.uleb128 0x1c
	.long	.LVL43
	.long	0x2b7
	.uleb128 0x1f
	.long	.LVL46
	.byte	0x1
	.long	0x11c
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0x80
	.byte	0x1c
	.uleb128 0x20
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.word	0x187
	.byte	0x1
	.long	0x42
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x49c
	.uleb128 0x1c
	.long	.LVL47
	.long	0x2b7
	.byte	0
	.uleb128 0x17
	.long	0xea
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x4e8
	.uleb128 0x27
	.long	0xce
	.long	.LBB108
	.long	.LBE108
	.byte	0x1
	.word	0x192
	.uleb128 0x18
	.long	0xdd
	.byte	0x1
	.uleb128 0x1c
	.long	.LVL49
	.long	0x2b7
	.uleb128 0x1f
	.long	.LVL50
	.byte	0x1
	.long	0x11c
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
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.word	0x199
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x539
	.uleb128 0x27
	.long	0xce
	.long	.LBB110
	.long	.LBE110
	.byte	0x1
	.word	0x19b
	.uleb128 0x18
	.long	0xdd
	.byte	0x2
	.uleb128 0x1c
	.long	.LVL52
	.long	0x2b7
	.uleb128 0x1f
	.long	.LVL53
	.byte	0x1
	.long	0x11c
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
	.byte	0
	.uleb128 0x29
	.long	.LASF22
	.byte	0x1
	.word	0x121
	.byte	0x1
	.byte	0x3
	.long	0x560
	.uleb128 0xb
	.string	"pos"
	.byte	0x1
	.word	0x121
	.long	0x30
	.uleb128 0x7
	.long	.LASF23
	.byte	0x1
	.word	0x123
	.long	0x30
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.word	0x1a4
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST30
	.byte	0x1
	.long	0x612
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.word	0x1a4
	.long	0x612
	.long	.LLST31
	.uleb128 0x1a
	.string	"pos"
	.byte	0x1
	.word	0x1a6
	.long	0x30
	.long	.LLST32
	.uleb128 0x24
	.long	0x539
	.long	.LBB116
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.word	0x1ac
	.long	0x5f1
	.uleb128 0x14
	.long	0x547
	.long	.LLST33
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2b
	.long	0x553
	.uleb128 0x25
	.long	0xce
	.long	.LBB118
	.long	.Ldebug_ranges0+0x48
	.byte	0x1
	.word	0x144
	.uleb128 0x2c
	.long	0xdd
	.uleb128 0x1c
	.long	.LVL60
	.long	0x2b7
	.uleb128 0x1f
	.long	.LVL61
	.byte	0x1
	.long	0x11c
	.uleb128 0x20
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LVL55
	.long	0x2b7
	.uleb128 0x1f
	.long	.LVL58
	.byte	0x1
	.long	0x11c
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x20
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF25
	.uleb128 0x21
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.word	0x1d3
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST34
	.byte	0x1
	.long	0x65a
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.word	0x1d3
	.long	0x65a
	.long	.LLST35
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.word	0x1d6
	.long	0x612
	.long	.LLST36
	.uleb128 0x1c
	.long	.LVL66
	.long	0x560
	.byte	0
	.uleb128 0x2d
	.byte	0x2
	.long	0x660
	.uleb128 0x2e
	.long	0x612
	.uleb128 0x21
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.word	0x1e4
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.long	.LLST37
	.byte	0x1
	.long	0x6d2
	.uleb128 0x22
	.long	.LASF28
	.byte	0x1
	.word	0x1e4
	.long	0x65a
	.long	.LLST38
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.word	0x1e7
	.long	0x612
	.long	.LLST39
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0x60
	.long	0x6c8
	.uleb128 0x30
	.long	.LASF29
	.byte	0x1
	.word	0x1e9
	.long	0x49
	.long	.LLST40
	.uleb128 0x30
	.long	.LASF30
	.byte	0x1
	.word	0x1e9
	.long	0x30
	.long	.LLST39
	.byte	0
	.uleb128 0x1c
	.long	.LVL73
	.long	0x560
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.word	0x1f8
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.long	.LLST42
	.byte	0x1
	.uleb128 0x22
	.long	.LASF31
	.byte	0x1
	.word	0x1f8
	.long	0x30
	.long	.LLST43
	.uleb128 0x1b
	.long	0x82
	.long	.LBB126
	.long	.LBE126
	.byte	0x1
	.word	0x21b
	.long	0x733
	.uleb128 0x14
	.long	0x8f
	.long	.LLST44
	.uleb128 0x15
	.long	.LBB127
	.long	.LBE127
	.uleb128 0x16
	.long	0x9a
	.long	.LLST45
	.uleb128 0x16
	.long	0xa6
	.long	.LLST46
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0xc5
	.long	.LBB128
	.long	.LBE128
	.byte	0x1
	.word	0x220
	.long	0x77d
	.uleb128 0x13
	.long	0x82
	.long	.LBB130
	.long	.LBE130
	.byte	0x1
	.byte	0x68
	.uleb128 0x14
	.long	0x8f
	.long	.LLST47
	.uleb128 0x15
	.long	.LBB131
	.long	.LBE131
	.uleb128 0x16
	.long	0x9a
	.long	.LLST48
	.uleb128 0x16
	.long	0xa6
	.long	.LLST49
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x82
	.long	.LBB132
	.long	.LBE132
	.byte	0x1
	.word	0x221
	.long	0x7b7
	.uleb128 0x14
	.long	0x8f
	.long	.LLST50
	.uleb128 0x15
	.long	.LBB133
	.long	.LBE133
	.uleb128 0x16
	.long	0x9a
	.long	.LLST51
	.uleb128 0x16
	.long	0xa6
	.long	.LLST52
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0xc5
	.long	.LBB134
	.long	.LBE134
	.byte	0x1
	.word	0x224
	.long	0x801
	.uleb128 0x13
	.long	0x82
	.long	.LBB136
	.long	.LBE136
	.byte	0x1
	.byte	0x68
	.uleb128 0x14
	.long	0x8f
	.long	.LLST53
	.uleb128 0x15
	.long	.LBB137
	.long	.LBE137
	.uleb128 0x16
	.long	0x9a
	.long	.LLST54
	.uleb128 0x16
	.long	0xa6
	.long	.LLST55
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x82
	.long	.LBB138
	.long	.LBE138
	.byte	0x1
	.word	0x225
	.long	0x83b
	.uleb128 0x14
	.long	0x8f
	.long	.LLST56
	.uleb128 0x15
	.long	.LBB139
	.long	.LBE139
	.uleb128 0x16
	.long	0x9a
	.long	.LLST57
	.uleb128 0x16
	.long	0xa6
	.long	.LLST58
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0xc5
	.long	.LBB140
	.long	.LBE140
	.byte	0x1
	.word	0x228
	.long	0x885
	.uleb128 0x13
	.long	0x82
	.long	.LBB142
	.long	.LBE142
	.byte	0x1
	.byte	0x68
	.uleb128 0x14
	.long	0x8f
	.long	.LLST59
	.uleb128 0x15
	.long	.LBB143
	.long	.LBE143
	.uleb128 0x16
	.long	0x9a
	.long	.LLST60
	.uleb128 0x16
	.long	0xa6
	.long	.LLST61
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x82
	.long	.LBB144
	.long	.LBE144
	.byte	0x1
	.word	0x229
	.long	0x8bf
	.uleb128 0x14
	.long	0x8f
	.long	.LLST62
	.uleb128 0x15
	.long	.LBB145
	.long	.LBE145
	.uleb128 0x16
	.long	0x9a
	.long	.LLST63
	.uleb128 0x16
	.long	0xa6
	.long	.LLST64
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0xc5
	.long	.LBB146
	.long	.LBE146
	.byte	0x1
	.word	0x22d
	.long	0x909
	.uleb128 0x13
	.long	0x82
	.long	.LBB148
	.long	.LBE148
	.byte	0x1
	.byte	0x68
	.uleb128 0x14
	.long	0x8f
	.long	.LLST65
	.uleb128 0x15
	.long	.LBB149
	.long	.LBE149
	.uleb128 0x16
	.long	0x9a
	.long	.LLST66
	.uleb128 0x16
	.long	0xa6
	.long	.LLST67
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x82
	.long	.LBB150
	.long	.LBE150
	.byte	0x1
	.word	0x22e
	.long	0x943
	.uleb128 0x14
	.long	0x8f
	.long	.LLST68
	.uleb128 0x15
	.long	.LBB151
	.long	.LBE151
	.uleb128 0x16
	.long	0x9a
	.long	.LLST69
	.uleb128 0x16
	.long	0xa6
	.long	.LLST70
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0xce
	.long	.LBB152
	.long	.LBE152
	.byte	0x1
	.word	0x249
	.long	0x97f
	.uleb128 0x14
	.long	0xdd
	.long	.LLST71
	.uleb128 0x1c
	.long	.LVL97
	.long	0x2b7
	.uleb128 0x32
	.long	.LVL98
	.long	0x11c
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.uleb128 0x20
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0xce
	.long	.LBB154
	.long	.LBE154
	.byte	0x1
	.word	0x24b
	.long	0x9ba
	.uleb128 0x14
	.long	0xdd
	.long	.LLST72
	.uleb128 0x1c
	.long	.LVL99
	.long	0x2b7
	.uleb128 0x32
	.long	.LVL100
	.long	0x11c
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x38
	.uleb128 0x20
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0xea
	.long	.LBB156
	.long	.LBE156
	.byte	0x1
	.word	0x24c
	.long	0xa06
	.uleb128 0x27
	.long	0xce
	.long	.LBB157
	.long	.LBE157
	.byte	0x1
	.word	0x192
	.uleb128 0x14
	.long	0xdd
	.long	.LLST73
	.uleb128 0x1c
	.long	.LVL101
	.long	0x2b7
	.uleb128 0x32
	.long	.LVL102
	.long	0x11c
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
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0xce
	.long	.LBB159
	.long	.LBE159
	.byte	0x1
	.word	0x24d
	.long	0xa41
	.uleb128 0x14
	.long	0xdd
	.long	.LLST74
	.uleb128 0x1c
	.long	.LVL103
	.long	0x2b7
	.uleb128 0x32
	.long	.LVL104
	.long	0x11c
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x36
	.uleb128 0x20
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0xce
	.long	.LBB161
	.long	.Ldebug_ranges0+0x78
	.byte	0x1
	.word	0x24e
	.uleb128 0x14
	.long	0xdd
	.long	.LLST75
	.uleb128 0x1c
	.long	.LVL105
	.long	0x2b7
	.uleb128 0x1f
	.long	.LVL107
	.byte	0x1
	.long	0x11c
	.uleb128 0x20
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0x20
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x29
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL4
	.word	0x1
	.byte	0x68
	.long	.LVL4
	.long	.LVL6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL6
	.long	.LFE8
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL2
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST3:
	.long	.LVL1
	.long	.LVL2
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL3
	.long	.LVL5
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST5:
	.long	.LVL3
	.long	.LVL5
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST6:
	.long	.LVL3
	.long	.LVL5
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL9
	.long	.LVL10
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL10
	.long	.LVL21
	.word	0x1
	.byte	0x68
	.long	.LVL21
	.long	.LVL22
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL22
	.long	.LFE22
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST8:
	.long	.LVL8
	.long	.LVL9
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST9:
	.long	.LVL8
	.long	.LVL9
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST10:
	.long	.LVL8
	.long	.LVL9
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL13
	.long	.LVL14
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST12:
	.long	.LVL13
	.long	.LVL14
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST13:
	.long	.LVL13
	.long	.LVL14
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL15
	.long	.LVL16
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST15:
	.long	.LVL15
	.long	.LVL16
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST16:
	.long	.LVL15
	.long	.LVL16
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL24
	.long	.LVL26
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST18:
	.long	.LVL25
	.long	.LVL27
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x40800000
	.long	0
	.long	0
.LLST19:
	.long	.LVL25
	.long	.LVL27
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42800000
	.long	0
	.long	0
.LLST20:
	.long	.LVL25
	.long	.LVL27
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LFB12
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LFE12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST22:
	.long	.LVL29
	.long	.LVL30-1
	.word	0x1
	.byte	0x68
	.long	.LVL30-1
	.long	.LVL31
	.word	0x1
	.byte	0x6c
	.long	.LVL31
	.long	.LVL32-1
	.word	0x1
	.byte	0x68
	.long	.LVL32-1
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LFB13
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI1
	.long	.LFE13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST24:
	.long	.LVL33
	.long	.LVL34-1
	.word	0x1
	.byte	0x68
	.long	.LVL34-1
	.long	.LVL35
	.word	0x1
	.byte	0x6c
	.long	.LVL35
	.long	.LVL36-1
	.word	0x1
	.byte	0x68
	.long	.LVL36-1
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LFB14
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI2
	.long	.LFE14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST26:
	.long	.LVL37
	.long	.LVL39-1
	.word	0x1
	.byte	0x68
	.long	.LVL39-1
	.long	.LVL41
	.word	0x1
	.byte	0x6c
	.long	.LVL41
	.long	.LVL42
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL42
	.long	.LVL43-1
	.word	0x1
	.byte	0x68
	.long	.LVL43-1
	.long	.LVL45
	.word	0x1
	.byte	0x6c
	.long	.LVL45
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL37
	.long	.LVL39-1
	.word	0x1
	.byte	0x66
	.long	.LVL39-1
	.long	.LVL42
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL42
	.long	.LVL43-1
	.word	0x1
	.byte	0x66
	.long	.LVL43-1
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL38
	.long	.LVL39-1
	.word	0x3
	.byte	0x88
	.sleb128 -64
	.byte	0x9f
	.long	.LVL39-1
	.long	.LVL40
	.word	0x3
	.byte	0x8c
	.sleb128 -64
	.byte	0x9f
	.long	.LVL40
	.long	.LVL42-1
	.word	0x1
	.byte	0x68
	.long	.LVL42-1
	.long	.LVL42
	.word	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL42
	.long	.LVL43-1
	.word	0x4
	.byte	0x88
	.sleb128 -128
	.byte	0x9f
	.long	.LVL43-1
	.long	.LVL44
	.word	0x4
	.byte	0x8c
	.sleb128 -128
	.byte	0x9f
	.long	.LVL44
	.long	.LVL46-1
	.word	0x1
	.byte	0x68
	.long	.LVL46-1
	.long	.LFE14
	.word	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0x80
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LFB18
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI3
	.long	.LFE18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST31:
	.long	.LVL54
	.long	.LVL55-1
	.word	0x1
	.byte	0x68
	.long	.LVL55-1
	.long	.LVL57
	.word	0x1
	.byte	0x6c
	.long	.LVL57
	.long	.LVL58-1
	.word	0x1
	.byte	0x68
	.long	.LVL58-1
	.long	.LVL58
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL58
	.long	.LVL59
	.word	0x1
	.byte	0x6c
	.long	.LVL59
	.long	.LVL61
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL61
	.long	.LVL62
	.word	0x1
	.byte	0x6c
	.long	.LVL62
	.long	.LFE18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL55
	.long	.LVL56
	.word	0x1
	.byte	0x68
	.long	.LVL58
	.long	.LVL60-1
	.word	0x1
	.byte	0x68
	.long	.LVL61
	.long	.LFE18
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST33:
	.long	.LVL58
	.long	.LVL60-1
	.word	0x1
	.byte	0x68
	.long	.LVL61
	.long	.LFE18
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST34:
	.long	.LFB19
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5
	.long	.LFE19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST35:
	.long	.LVL63
	.long	.LVL64
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL64
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
	.word	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.long	.LVL67
	.long	.LVL68
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
	.long	.LVL65
	.long	.LVL66-1
	.word	0x1
	.byte	0x68
	.long	.LVL67
	.long	.LFE19
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST37:
	.long	.LFB20
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7
	.long	.LFE20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST38:
	.long	.LVL69
	.long	.LVL70
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL70
	.long	.LVL73
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL73
	.long	.LVL75
	.word	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.long	.LVL75
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
.LLST39:
	.long	.LVL71
	.long	.LVL73-1
	.word	0x1
	.byte	0x68
	.long	.LVL74
	.long	.LFE20
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST40:
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
	.long	.LVL72
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL72
	.long	.LVL73
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL73
	.long	.LVL75
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL75
	.long	.LFE20
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST42:
	.long	.LFB21
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI8
	.long	.LFE21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST43:
	.long	.LVL77
	.long	.LVL79
	.word	0x1
	.byte	0x68
	.long	.LVL79
	.long	.LVL106
	.word	0x1
	.byte	0x6c
	.long	.LVL106
	.long	.LVL107-1
	.word	0x1
	.byte	0x68
	.long	.LVL107-1
	.long	.LFE21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL78
	.long	.LVL80
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x467a0000
	.long	0
	.long	0
.LLST45:
	.long	.LVL78
	.long	.LVL80
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x487a0000
	.long	0
	.long	0
.LLST46:
	.long	.LVL78
	.long	.LVL80
	.word	0x5
	.byte	0x8
	.byte	0xfa
	.byte	0x3a
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
	.long	.LVL81
	.long	.LVL82
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST48:
	.long	.LVL81
	.long	.LVL82
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST49:
	.long	.LVL81
	.long	.LVL82
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST50:
	.long	.LVL83
	.long	.LVL84
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x459c4000
	.long	0
	.long	0
.LLST51:
	.long	.LVL83
	.long	.LVL84
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x479c4000
	.long	0
	.long	0
.LLST52:
	.long	.LVL83
	.long	.LVL84
	.word	0x6
	.byte	0xc
	.long	0x13880
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LVL85
	.long	.LVL86
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST54:
	.long	.LVL85
	.long	.LVL86
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST55:
	.long	.LVL85
	.long	.LVL86
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST56:
	.long	.LVL87
	.long	.LVL88
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42800000
	.long	0
	.long	0
.LLST57:
	.long	.LVL87
	.long	.LVL88
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x44800000
	.long	0
	.long	0
.LLST58:
	.long	.LVL87
	.long	.LVL88
	.word	0x4
	.byte	0xa
	.word	0x400
	.byte	0x9f
	.long	0
	.long	0
.LLST59:
	.long	.LVL89
	.long	.LVL90
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST60:
	.long	.LVL89
	.long	.LVL90
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST61:
	.long	.LVL89
	.long	.LVL90
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST62:
	.long	.LVL91
	.long	.LVL92
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42800000
	.long	0
	.long	0
.LLST63:
	.long	.LVL91
	.long	.LVL92
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x44800000
	.long	0
	.long	0
.LLST64:
	.long	.LVL91
	.long	.LVL92
	.word	0x4
	.byte	0xa
	.word	0x400
	.byte	0x9f
	.long	0
	.long	0
.LLST65:
	.long	.LVL93
	.long	.LVL94
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST66:
	.long	.LVL93
	.long	.LVL94
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41800000
	.long	0
	.long	0
.LLST67:
	.long	.LVL93
	.long	.LVL94
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST68:
	.long	.LVL95
	.long	.LVL96
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42800000
	.long	0
	.long	0
.LLST69:
	.long	.LVL95
	.long	.LVL96
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x44800000
	.long	0
	.long	0
.LLST70:
	.long	.LVL95
	.long	.LVL96
	.word	0x4
	.byte	0xa
	.word	0x400
	.byte	0x9f
	.long	0
	.long	0
.LLST71:
	.long	.LVL96
	.long	.LVL98
	.word	0x3
	.byte	0x8
	.byte	0x28
	.byte	0x9f
	.long	0
	.long	0
.LLST72:
	.long	.LVL98
	.long	.LVL100
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST73:
	.long	.LVL100
	.long	.LVL102
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST74:
	.long	.LVL102
	.long	.LVL104
	.word	0x2
	.byte	0x36
	.byte	0x9f
	.long	0
	.long	0
.LLST75:
	.long	.LVL104
	.long	.LVL106
	.word	0x1
	.byte	0x6c
	.long	.LVL106
	.long	.LVL107-1
	.word	0x1
	.byte	0x68
	.long	.LVL107-1
	.long	.LFE21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x7c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB10
	.long	.LFE10-.LFB10
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
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB100
	.long	.LBE100
	.long	.LBB103
	.long	.LBE103
	.long	0
	.long	0
	.long	.LBB104
	.long	.LBE104
	.long	.LBB107
	.long	.LBE107
	.long	0
	.long	0
	.long	.LBB116
	.long	.LBE116
	.long	.LBB123
	.long	.LBE123
	.long	0
	.long	0
	.long	.LBB118
	.long	.LBE118
	.long	.LBB121
	.long	.LBE121
	.long	0
	.long	0
	.long	.LBB124
	.long	.LBE124
	.long	.LBB125
	.long	.LBE125
	.long	0
	.long	0
	.long	.LBB161
	.long	.LBE161
	.long	.LBB164
	.long	.LBE164
	.long	0
	.long	0
	.long	.LFB8
	.long	.LFE8
	.long	.LFB22
	.long	.LFE22
	.long	.LFB10
	.long	.LFE10
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"addressCounter"
.LASF26:
	.string	"lcd_puts"
.LASF36:
	.string	"lcd_command"
.LASF15:
	.string	"lcd_clrscr"
.LASF33:
	.string	".././lcd.c"
.LASF13:
	.string	"__us"
.LASF14:
	.string	"__builtin_avr_delay_cycles"
.LASF18:
	.string	"lcd_data"
.LASF16:
	.string	"data"
.LASF35:
	.string	"toggle_e"
.LASF1:
	.string	"unsigned char"
.LASF19:
	.string	"lcd_gotoxy"
.LASF7:
	.string	"long unsigned int"
.LASF41:
	.string	"lcd_init"
.LASF38:
	.string	"lcd_write"
.LASF34:
	.string	"E:\\\\Users\\\\Anwender\\\\Sync\\\\Atmel Studio\\\\Pipe1\\\\Pipe1\\\\Debug"
.LASF12:
	.string	"double"
.LASF10:
	.string	"__tmp"
.LASF20:
	.string	"lcd_home"
.LASF32:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g2 -O2 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF4:
	.string	"unsigned int"
.LASF21:
	.string	"_delay_us"
.LASF9:
	.string	"long long unsigned int"
.LASF2:
	.string	"uint8_t"
.LASF31:
	.string	"dispAttr"
.LASF29:
	.string	"__addr16"
.LASF30:
	.string	"__result"
.LASF40:
	.string	"lcd_getxy"
.LASF8:
	.string	"long long int"
.LASF27:
	.string	"lcd_puts_p"
.LASF11:
	.string	"__ticks_dc"
.LASF37:
	.string	"lcd_read"
.LASF28:
	.string	"progmem_s"
.LASF3:
	.string	"uint16_t"
.LASF22:
	.string	"lcd_newline"
.LASF6:
	.string	"uint32_t"
.LASF5:
	.string	"long int"
.LASF25:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF24:
	.string	"lcd_putc"
.LASF39:
	.string	"lcd_waitbusy"
.LASF17:
	.string	"dataBits"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.1_1750) 5.4.0"
