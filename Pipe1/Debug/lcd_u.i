# 1 ".././lcd_u.c"
# 1 "E:\\Users\\Anwender\\Sync\\Atmel Studio\\Pipe1\\Pipe1\\Debug//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 ".././lcd_u.c"







# 1 ".././lcd_u.h" 1







# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 1 3
# 37 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdint.h" 1 3 4
# 9 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdint.h" 3 4
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 1 3 4
# 125 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4

# 125 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 146 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 163 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 217 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 277 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdint.h" 2 3 4
# 38 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 2 3
# 77 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 9 ".././lcd_u.h" 2
# 117 ".././lcd_u.h"

# 117 ".././lcd_u.h"
extern void lcd_write_nibble(uint8_t data);
extern void lcd_write_command(uint8_t data);
extern void lcd_write_character(uint8_t data);
extern uint8_t getCursorFromLCDRAMcursor(uint8_t lcd_cursor);
extern void lcd_init();


extern void lcd_clrscr();
extern void lcd_home();
extern void lcd_goto(uint8_t pos);
extern void lcd_putc(char c);
extern void lcd_puts(const char *s);
extern void lcd_puts_P(const char *progmem_s);
extern void lcd_message(const char *s);
extern void lcd_message_P(const char *progmem_s);
extern void lcd_message_clear();

extern uint8_t lcd_cursorPos;
extern uint8_t lcd_buffer[4*20];
extern uint8_t lcd_displayingMessage;
# 9 ".././lcd_u.c" 2
# 29 ".././lcd_u.c"
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 1 3
# 99 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\sfr_defs.h" 1 3
# 100 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3
# 174 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 3
# 1 "C:\\Program Files (x86)\\Atmel\\Studio\\7.0\\Packs\\atmel\\ATmega_DFP\\1.2.209\\include/avr/iom2560.h" 1 3
# 38 "C:\\Program Files (x86)\\Atmel\\Studio\\7.0\\Packs\\atmel\\ATmega_DFP\\1.2.209\\include/avr/iom2560.h" 3
# 1 "C:\\Program Files (x86)\\Atmel\\Studio\\7.0\\Packs\\atmel\\ATmega_DFP\\1.2.209\\include/avr/iomxx0_1.h" 1 3
# 1630 "C:\\Program Files (x86)\\Atmel\\Studio\\7.0\\Packs\\atmel\\ATmega_DFP\\1.2.209\\include/avr/iomxx0_1.h" 3
       
# 1631 "C:\\Program Files (x86)\\Atmel\\Studio\\7.0\\Packs\\atmel\\ATmega_DFP\\1.2.209\\include/avr/iomxx0_1.h" 3

       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
# 39 "C:\\Program Files (x86)\\Atmel\\Studio\\7.0\\Packs\\atmel\\ATmega_DFP\\1.2.209\\include/avr/iom2560.h" 2 3
# 175 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3
# 627 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\portpins.h" 1 3
# 628 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3

# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\common.h" 1 3
# 630 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3

# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\version.h" 1 3
# 632 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3






# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\fuse.h" 1 3
# 239 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\fuse.h" 3

# 239 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 639 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3


# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\lock.h" 1 3
# 642 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3
# 30 ".././lcd_u.c" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 1 3
# 45 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay_basic.h" 1 3
# 40 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay_basic.h" 3
static __inline__ void _delay_loop_1(uint8_t __count) __attribute__((__always_inline__));
static __inline__ void _delay_loop_2(uint16_t __count) __attribute__((__always_inline__));
# 80 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay_basic.h" 3
void
_delay_loop_1(uint8_t __count)
{
 __asm__ volatile (
  "1: dec %0" "\n\t"
  "brne 1b"
  : "=r" (__count)
  : "0" (__count)
 );
}
# 102 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay_basic.h" 3
void
_delay_loop_2(uint16_t __count)
{
 __asm__ volatile (
  "1: sbiw %0,1" "\n\t"
  "brne 1b"
  : "=w" (__count)
  : "0" (__count)
 );
}
# 46 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 2 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 1 3
# 127 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double modf(double __x, double *__iptr);


extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));


extern float sqrtf (float) __attribute__((__const__));




extern double cbrt(double __x) __attribute__((__const__));
# 195 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 235 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 299 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 334 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern int isinf(double __x) __attribute__((__const__));






__attribute__((__const__)) static inline int isfinite (double __x)
{
    unsigned char __exp;
    __asm__ (
 "mov	%0, %C1		\n\t"
 "lsl	%0		\n\t"
 "mov	%0, %D1		\n\t"
 "rol	%0		"
 : "=r" (__exp)
 : "r" (__x) );
    return __exp != 0xff;
}






__attribute__((__const__)) static inline double copysign (double __x, double __y)
{
    __asm__ (
 "bst	%D2, 7	\n\t"
 "bld	%D0, 7	"
 : "=r" (__x)
 : "0" (__x), "r" (__y) );
    return __x;
}
# 377 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 393 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 427 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double round (double __x) __attribute__((__const__));
# 440 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 454 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 47 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 2 3
# 86 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
static __inline__ void _delay_us(double __us) __attribute__((__always_inline__));
static __inline__ void _delay_ms(double __ms) __attribute__((__always_inline__));
# 165 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
void
_delay_ms(double __ms)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((
# 174 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
          16000000UL
# 174 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
               ) / 1e3) * __ms;
# 184 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 210 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
}
# 254 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
void
_delay_us(double __us)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((
# 263 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
          16000000UL
# 263 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
               ) / 1e6) * __us;
# 273 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 299 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
}
# 31 ".././lcd_u.c" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 1 3
# 89 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 1 3 4
# 216 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 90 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 2 3
# 1158 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern const void * memchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
# 1172 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int memcmp_P(const void *, const void *, size_t) __attribute__((__pure__));






extern void *memccpy_P(void *, const void *, int __val, size_t);
# 1188 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern void *memcpy_P(void *, const void *, size_t);






extern void *memmem_P(const void *, size_t, const void *, size_t) __attribute__((__pure__));
# 1207 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern const void * memrchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
# 1217 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strcat_P(char *, const char *);
# 1233 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern const char * strchr_P(const char *, int __val) __attribute__((__const__));
# 1245 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern const char * strchrnul_P(const char *, int __val) __attribute__((__const__));
# 1258 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int strcmp_P(const char *, const char *) __attribute__((__pure__));
# 1268 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strcpy_P(char *, const char *);
# 1285 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int strcasecmp_P(const char *, const char *) __attribute__((__pure__));






extern char *strcasestr_P(const char *, const char *) __attribute__((__pure__));
# 1305 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strcspn_P(const char *__s, const char * __reject) __attribute__((__pure__));
# 1321 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strlcat_P (char *, const char *, size_t );
# 1334 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strlcpy_P (char *, const char *, size_t );
# 1346 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strnlen_P(const char *, size_t) __attribute__((__const__));
# 1357 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int strncmp_P(const char *, const char *, size_t) __attribute__((__pure__));
# 1376 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int strncasecmp_P(const char *, const char *, size_t) __attribute__((__pure__));
# 1387 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strncat_P(char *, const char *, size_t);
# 1401 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strncpy_P(char *, const char *, size_t);
# 1416 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strpbrk_P(const char *__s, const char * __accept) __attribute__((__pure__));
# 1427 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern const char * strrchr_P(const char *, int __val) __attribute__((__const__));
# 1447 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strsep_P(char **__sp, const char * __delim);
# 1460 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strspn_P(const char *__s, const char * __accept) __attribute__((__pure__));
# 1474 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strstr_P(const char *, const char *) __attribute__((__pure__));
# 1496 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strtok_P(char *__s, const char * __delim);
# 1516 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strtok_rP(char *__s, const char * __delim, char **__last);
# 1529 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strlen_PF(uint_farptr_t src) __attribute__((__const__));
# 1545 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strnlen_PF(uint_farptr_t src, size_t len) __attribute__((__const__));
# 1560 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern void *memcpy_PF(void *dest, uint_farptr_t src, size_t len);
# 1575 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strcpy_PF(char *dest, uint_farptr_t src);
# 1595 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strncpy_PF(char *dest, uint_farptr_t src, size_t len);
# 1611 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strcat_PF(char *dest, uint_farptr_t src);
# 1632 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strlcat_PF(char *dst, uint_farptr_t src, size_t siz);
# 1649 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strncat_PF(char *dest, uint_farptr_t src, size_t len);
# 1665 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int strcmp_PF(const char *s1, uint_farptr_t s2) __attribute__((__pure__));
# 1682 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int strncmp_PF(const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
# 1698 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int strcasecmp_PF(const char *s1, uint_farptr_t s2) __attribute__((__pure__));
# 1716 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int strncasecmp_PF(const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
# 1732 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern char *strstr_PF(const char *s1, uint_farptr_t s2);
# 1744 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strlcpy_PF(char *dst, uint_farptr_t src, size_t siz);
# 1760 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern int memcmp_PF(const void *, uint_farptr_t, size_t) __attribute__((__pure__));
# 1779 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
extern size_t __strlen_P(const char *) __attribute__((__const__));
__attribute__((__always_inline__)) static __inline__ size_t strlen_P(const char * s);
static __inline__ size_t strlen_P(const char *s) {
  return __builtin_constant_p(__builtin_strlen(s))
     ? __builtin_strlen(s) : __strlen_P(s);
}
# 32 ".././lcd_u.c" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 1 3 4
# 149 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 328 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4
typedef int wchar_t;
# 33 ".././lcd_u.c" 2
# 1 ".././hw_defs.h" 1
# 34 ".././lcd_u.c" 2
# 1 ".././utils.h" 1
# 16 ".././utils.h"

# 16 ".././utils.h"
typedef union{
 uint32_t longval;
 uint8_t byteval[4];
 } Longint_t;

extern Longint_t editLong;
extern uint8_t editByte;

typedef union{
 uint16_t wordval;
 uint8_t byteval[2];
 } Word_t;

extern uint8_t lcd_cursorIsOn;

extern uint8_t nibbleToChr(uint8_t myNibble);



extern void lcd_initCG();
extern void lcd_setCG(uint8_t charNr, const uint8_t* patternPtr);
extern void lcd_wordout(uint16_t hexNumber);
extern void lcd_hexout(uint8_t hexNumber);
extern void lcd_ManualOut(uint8_t manual);
extern void lcd_ManualOutDec(uint8_t manual);
extern void lcd_ChannelOut(uint8_t channel);
extern void lcd_longout();
extern void lcd_cursoroff();
extern void lcd_cursosblink();
extern void lcd_blank(uint8_t count);
extern void lcd_dec2out(uint8_t val);
extern void lcd_clrEol();
extern void lcd_waitSymbolOn();
extern void lcd_waitSymbolOff();
extern uint8_t lcd_noteOut(uint8_t noteNr);



extern char* putString_P(const __flash char* pSourceString, char* pOutput);
extern char* putChar_Dec2(uint8_t val, char* pOutput);
extern char* putChar_Dec(uint8_t val, char* pOutput);
extern char* putChar_hex(uint8_t val, char* pOutput);
extern char* putChar_word(uint16_t val, char* pOutput);
extern char* putChar_long(uint32_t val, char* pOutput);
extern char* putChar_Note(uint8_t note, char* pOutput);
extern char* putChar_Manual(uint8_t manual, char* pOutput);
extern char* putChar_MidiChan(uint8_t channel, char* pOutput);
extern char* putString_Prog(char* pOutput, uint8_t progNr);

extern uint8_t lcd_edit_longint(uint8_t cursor);
extern uint8_t lcd_edit_byte(uint8_t cursor);
# 76 ".././utils.h"
extern const __flash char keylabel_plus [] ;
extern const __flash char keylabel_minus [] ;
extern const __flash char keylabel_up [] ;
extern const __flash char keylabel_down [] ;
extern const __flash char keylabel_right [] ;
extern const __flash char keylabel_left [] ;
extern const __flash char keylabel_onoff [] ;
extern const __flash char keylabel_exit [] ;
extern const __flash char keylabel_text [] ;
extern const __flash char keylabel_0 [] ;
extern const __flash char keylabel_1 [] ;
extern const __flash char keylabel_on [] ;
extern const __flash char keylabel_off [] ;


extern void keylabel_set(uint8_t keyNr, const __flash char* labelPStr);
extern void keylabel_toLCD();
extern void keylabel_clr(uint8_t keyNr);
extern uint8_t keylabel_statcheck(uint8_t keyNr, uint8_t status);
# 104 ".././utils.h"
extern char string_Buf[64];

extern const char cr_lf [] 
# 106 ".././utils.h" 3
                          __attribute__((__progmem__))
# 106 ".././utils.h"
                                 ;

extern uint8_t get_StrLenP(const __flash char* pString);
extern uint8_t get_StrLen(const char* pString);
extern uint8_t reverse_Bits(uint8_t val);
# 35 ".././lcd_u.c" 2
# 1 ".././menu.h" 1
# 9 ".././menu.h"
# 1 ".././Midi.h" 1
# 12 ".././Midi.h"
# 1 ".././message.h" 1
# 11 ".././message.h"
# 1 ".././utils.h" 1
# 12 ".././message.h" 2



extern void init_message (void);
extern void message_push (uint8_t msg);
extern uint8_t message_get (void);
extern uint8_t message_status (void);
extern uint8_t message_peek();
extern volatile uint8_t msgOverflow;
# 64 ".././message.h"
typedef union {
 uint16_t Message16;
 uint8_t message8[2];
} PipeMessage_t;

extern void pipeMsgInit (void);
extern void pipeMsgPush (PipeMessage_t message);
extern PipeMessage_t pipeMsgGet (void);
extern uint8_t pipeMsgStatus (void);
extern volatile uint8_t msgPipeOverflow;
extern uint8_t msgPipe_Handling;
# 13 ".././Midi.h" 2
# 47 ".././Midi.h"
typedef struct {
 uint8_t hw_channel;
 uint8_t note;
} ChannelNote_t;

typedef struct {
 uint8_t manual;
 uint8_t note;
} ManualNote_t;

typedef struct {
 uint8_t moduleNr;
 uint8_t bitNr;
} ModuleBit_t;




typedef struct {
 uint8_t error;
 uint8_t moduleBit;
} ModulBitError_t;

typedef struct{
 uint8_t startNote;
 uint8_t endNote;
 uint8_t bitStart;
} ManualMap_t;
extern ManualMap_t manualMap[4][4];

typedef struct{
 uint8_t startNote;
 uint8_t endNote;
} ManualNoteRange_t;
extern ManualNoteRange_t ManualNoteRange[4];

extern void midi_ProgramChange(uint8_t channel, uint8_t program);
# 120 ".././Midi.h"
typedef struct{
 uint8_t manual;
 uint8_t midiNote;
 uint8_t noteRange;
 uint8_t manualNote;
} MidiInMap_t;

extern MidiInMap_t midiInMap[16][4];

typedef struct{
 uint8_t InChannel;
 uint8_t OutChannel;
} MidiThrough_t;

extern MidiThrough_t midiThrough;


typedef struct{
 uint8_t hw_channel;
 uint8_t sw_channel;

 } MidiOutMap_t;
extern MidiOutMap_t midiOutMap[4];




typedef struct{
 uint8_t startReg;
 uint8_t endReg;
 uint8_t bitStart;
} RegisterMap_t;
extern RegisterMap_t registerMap[8];

extern uint8_t registerCount;
typedef struct{
 uint8_t registers [64 / 8];
 uint16_t couplers;
 } ProgramInfo_t;
extern ProgramInfo_t programMap[64] ;

extern uint8_t midi_RegisterChanged;
extern uint8_t midi_CountRegisterInProgram(uint8_t program);
extern uint8_t read_allRegister(uint8_t* resultPtr);

typedef struct {
 uint8_t cursor;
 uint8_t manualChar;
 uint8_t regStart;
 uint8_t regEnd;
} RegOut_t;


extern RegOut_t reg_Out[8];
extern void init_RegOut();
extern void reg_ClearOnLCD();
extern void reg_toLCD(uint8_t readHWonly);




extern void register_onOff(uint8_t regNr, uint8_t onOff);
extern void registers_CalcCount();
extern uint8_t register_toProgram(uint8_t program, uint8_t SaveEEProm);
extern uint8_t program_toRegister(uint8_t program);
extern void midi_resetRegisters();

extern uint8_t midi_RegisterMatchProgram(uint8_t program);





extern uint8_t count_Registers(uint8_t mode);






extern uint8_t prog_Display;
extern uint8_t prog_UpdDisplay;
extern void prog_set(uint8_t prog);
extern void prog_toLcd();


extern void init_Midi2Manual();
extern void init_Manual2Midi();
extern void init_Manual2Module();
extern void init_Registers();

extern void midiNote_to_Manual(uint8_t channel, uint8_t note, uint8_t onOff);
extern ChannelNote_t Manual_to_MidiNote(uint8_t manual, uint8_t note);
extern void Midi_updateManualRange();

extern void midiSendAllNotesOff();
extern void init_Midi();
extern void midi_ManualOff(uint8_t manual);
extern void midi_AllManualsOff();

extern void proc_ESPmidi(uint8_t midiBytesTransferred);


extern uint8_t midiRxActivceSensing;
typedef struct {
 uint8_t TxActivceSense;
 uint8_t VelZero4Off;
 uint8_t AcceptProgChange;
} MidiSetting_t;
extern MidiSetting_t midi_Setting;

extern uint8_t midiLastOutNote;
extern uint8_t midiLastOutManual;
extern uint8_t midiLastInNote;
extern uint8_t midiLastInChannel;
extern uint8_t midiLastInManual;
extern uint8_t midiLastProgram;

extern void midiKeyPress_Process(PipeMessage_t pipeMessage);
extern void midiIn_Process(uint8_t midiByte);
extern void manual_NoteOnOff(uint8_t manual, uint8_t note, uint8_t onOff);
extern void midi_SendActiveSense();
extern void midi_CheckRxActiveSense();
extern void midi_CheckTxActiveSense();


extern void midi_CouplerReset();
extern Word_t getAllCouplers();
extern void setAllCouplers(Word_t couplers);
# 265 ".././Midi.h"
extern uint8_t midi_Couplers[12];

typedef struct{
 uint8_t dest;
 uint8_t source;
} CplInfo_t;
extern const __flash CplInfo_t cplInfo[12];

extern uint8_t set_Coupler(uint8_t);
# 10 ".././menu.h" 2
# 53 ".././menu.h"
typedef uint8_t (*MenuFunc_t) (uint8_t arg);

typedef struct Menu {
 const uint8_t menuType;
 const uint8_t menuFlags;
 const char text [10];
 const __flash struct Menu *pMenu;
 union {
  uint8_t * pVar;
  uint16_t tag;
  const __flash char* pString;
 };
 MenuFunc_t pFunc;

 MenuFunc_t pOnExitFunc;


} Menu_t;
# 173 ".././menu.h"
extern const __flash Menu_t * menuStack[16];

uint8_t lcdData[10];
# 185 ".././menu.h"
typedef struct {
 uint8_t nibbleCount;
 uint8_t nibblePos[8];
} NibbleInfo_t;

extern uint16_t DataAdressOffset;
extern uint8_t menuNote;
extern uint8_t menuMidiChan;
extern uint8_t menuSection;
extern uint8_t menuManual;
extern uint8_t menuTestModuleBit;
extern uint8_t menuTestData;
extern uint8_t menuVmidiChan;
extern uint8_t menuVsection;
extern uint8_t menuVmanual;
extern uint8_t menuVkey;
extern uint8_t menuVmodule;
extern uint8_t menuVKombination;
extern uint8_t menuVRegisters[64 / 8];

extern uint32_t menuModVal;
extern const __flash char* pMenuTopTitle;
extern const __flash Menu_t* menuVMenuSoftKey;
extern uint8_t menuVSoftKey;

extern void menuCurrMenuToLCD();
extern void menuParentMenuToLCD();
extern void menuTextOut(const __flash char* pChar, char finalChar);
extern void menuItemChanged();
extern void menuCursorSetExtra();
extern void menuCursorSetMenu();
extern void menuResetVars();
extern void menuClearMenuDisp();
extern void menu_ClearDataDisp();
extern void menuClearExtraDisp();
extern void menuDisplayValue();
extern void menuTextOut(const __flash char* pChar, char finalChar);
extern void menuCursorSetDataNibble();

extern void nibbleToData();
extern void nibbleChange(uint8_t nibbleNr , int8_t addValue);
extern uint8_t nibbleCheckOvfl(int8_t myNibble);
extern void LCDStringOut();
extern void nibbleToLCDstring();
extern void dataToNibbles();

extern void menu_DisplayMainMessage_P(const __flash char* pMessage);
extern void menu_DisplayMainMessage(const char* pMessage);
extern void menu_deleteMessage();
# 242 ".././menu.h"
typedef struct{
 const __flash struct Menu *pSelMenu;
} SoftKeyMenu_List_t;


extern uint8_t soft_KeyMenuIndex[4];
extern SoftKeyMenu_List_t soft_KeyMenu[4];

extern void init_SoftKeys();
extern void softKey_Set(const __flash Menu_t* pSoftKey, uint8_t nrSoftKey);
extern void softKeys_toLCD();
extern uint8_t softKey_MessageKey_ToSoftKeyNr(uint8_t messageKey);
extern uint8_t softKey_Execute(uint8_t nrSoftKey, uint8_t myMessage);





extern const char sw_version [] 
# 260 ".././menu.h" 3
                               __attribute__((__progmem__))
# 260 ".././menu.h"
                                      ;
extern const char HelloMsg [] 
# 261 ".././menu.h" 3
                             __attribute__((__progmem__))
# 261 ".././menu.h"
                                    ;

extern uint8_t menu_TestModulePattern;
extern uint8_t menu_TestModuleBitCounter;
extern uint32_t menu_TestModuleErrorList;

extern void menu_showPowerState();






void menu_Init(const __flash Menu_t* newMenu, const __flash char* pTitle);
extern void menu_InitLCD();
extern uint8_t menu_ProcessMessage(uint8_t message);
extern void menu_ClearAllDisp();

extern void menu_ModuleTestExecute();
extern uint8_t menu_OnEnterMidiPanic(uint8_t arg);
# 36 ".././lcd_u.c" 2
# 1 ".././hwtimer.h" 1
# 14 ".././hwtimer.h"
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h" 1 3
# 38 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\interrupt.h" 1 3
# 39 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h" 2 3




# 42 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h" 3
static __inline__ uint8_t __iSeiRetVal(void)
{
    __asm__ __volatile__ ("sei" ::: "memory");
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    __asm__ __volatile__ ("cli" ::: "memory");
    return 1;
}

static __inline__ void __iSeiParam(const uint8_t *__s)
{
    __asm__ __volatile__ ("sei" ::: "memory");
    __asm__ volatile ("" ::: "memory");
    (void)__s;
}

static __inline__ void __iCliParam(const uint8_t *__s)
{
    __asm__ __volatile__ ("cli" ::: "memory");
    __asm__ volatile ("" ::: "memory");
    (void)__s;
}

static __inline__ void __iRestore(const uint8_t *__s)
{
    (*(volatile uint8_t *)((0x3F) + 0x20)) = *__s;
    __asm__ volatile ("" ::: "memory");
}
# 15 ".././hwtimer.h" 2
# 31 ".././hwtimer.h"

# 31 ".././hwtimer.h"
extern volatile uint8_t time_Uptime[4];
# 83 ".././hwtimer.h"
typedef struct {
 uint8_t counter;
 uint8_t prescaler;
} Timer;
extern volatile Timer swTimer[10];
extern volatile uint8_t time_Uptime[4];
extern volatile uint8_t time_UpTimeUpdated;

extern void init_HwTimer();
extern void init_Timers();
extern void init_ADC();
extern void init_Pipe();
# 136 ".././hwtimer.h"
typedef struct {
 uint8_t mux;
 uint8_t ADCval;
 uint8_t key;

 uint8_t keyRepeating;
 uint16_t keyTimer;
} KeyInfo;
extern volatile KeyInfo adcKeys[1];

extern uint8_t keyWants[6];
# 169 ".././hwtimer.h"
typedef struct {
 uint8_t pipeOutM4;
 uint8_t pipeOut;
 uint8_t pipeInM16;
 uint8_t pipeInM12;
 uint8_t pipeInM8;
 uint8_t pipeInM4;
 uint8_t pipeIn;
 uint8_t pipeInStat;
} Pipe_t;
extern Pipe_t pipe[32];






extern volatile uint8_t pipeProcessing;

extern uint8_t pipe_ModuleTested;

typedef struct {
 uint8_t AssnRead;
 uint8_t AssnWrite;
} Pipe_Module_t;

extern Pipe_Module_t pipe_Module;
# 204 ".././hwtimer.h"
extern uint8_t pipe_PowerStatus;



extern uint8_t module_TestAllInputs();
extern void module_WaitOutputInput2Cycles();
extern void module_StartPowerOn();
extern void module_PowerControl();
extern void softKey_WantLong(uint8_t wantLong);
extern void Pipes_AllOutputsOff();
extern void init_PipeModules();
extern uint32_t test_PipeModule(uint8_t moduleNr);


extern void pipe_on(uint8_t bitNr, uint8_t moduleMask);
extern void pipe_off(uint8_t bitNr, uint8_t moduleMask);
# 37 ".././lcd_u.c" 2

uint8_t lcd_cursorPos;
uint8_t lcd_buffer[4*20];



void lcd_init(void)
{

 uint8_t debugSave = (
# 46 ".././lcd_u.c" 3
                    (*(volatile uint8_t *)((0x05) + 0x20)) 
# 46 ".././lcd_u.c"
                    & ((1 << 5) | (1 << 4)));
 
# 47 ".././lcd_u.c" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 47 ".././lcd_u.c"
= (
# 47 ".././lcd_u.c" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 47 ".././lcd_u.c"
& (~(((1 << 5) | (1 << 4))))) | (1 << 4);
 lcd_displayingMessage = 0x00;

 
# 50 ".././lcd_u.c" 3
(*(volatile uint8_t *)(0x101)) 
# 50 ".././lcd_u.c"
           |= (1<<
# 50 ".././lcd_u.c" 3
                  4
# 50 ".././lcd_u.c"
                            );
 
# 51 ".././lcd_u.c" 3
(*(volatile uint8_t *)(0x101)) 
# 51 ".././lcd_u.c"
           |= (1<<
# 51 ".././lcd_u.c" 3
                  3
# 51 ".././lcd_u.c"
                            );
 
# 52 ".././lcd_u.c" 3
(*(volatile uint8_t *)((0x0D) + 0x20)) 
# 52 ".././lcd_u.c"
           |= (1<<
# 52 ".././lcd_u.c" 3
                  3
# 52 ".././lcd_u.c"
                            );
 
# 53 ".././lcd_u.c" 3
(*(volatile uint8_t *)((0x13) + 0x20)) 
# 53 ".././lcd_u.c"
           |= (1<<
# 53 ".././lcd_u.c" 3
                  5
# 53 ".././lcd_u.c"
                            );

 
# 55 ".././lcd_u.c" 3
(*(volatile uint8_t *)(0x101)) 
# 55 ".././lcd_u.c"
          |= (1<<
# 55 ".././lcd_u.c" 3
                 6
# 55 ".././lcd_u.c"
                          );
 
# 56 ".././lcd_u.c" 3
(*(volatile uint8_t *)(0x101)) 
# 56 ".././lcd_u.c"
           |= (1<<
# 56 ".././lcd_u.c" 3
                  5
# 56 ".././lcd_u.c"
                            );

    _delay_ms(100);
# 74 ".././lcd_u.c"
    
# 74 ".././lcd_u.c" 3
   (*(volatile uint8_t *)(0x102)) 
# 74 ".././lcd_u.c"
               &= ~(1<<
# 74 ".././lcd_u.c" 3
                       5
# 74 ".././lcd_u.c"
                                 );
    
# 75 ".././lcd_u.c" 3
   (*(volatile uint8_t *)(0x102)) 
# 75 ".././lcd_u.c"
              &= ~(1<<
# 75 ".././lcd_u.c" 3
                      6
# 75 ".././lcd_u.c"
                               );


    lcd_write_nibble(0b00110000);
    _delay_us(5000);
    lcd_write_nibble(0b00110000);
    _delay_us(5000);
    lcd_write_nibble(0b00110000);
    _delay_us(5000);




    lcd_write_nibble(0b00101000);
    _delay_us(64);

    lcd_write_command(0b00101000);





    lcd_write_command(0b00001000);

    lcd_write_command(0b00000001);

    lcd_write_command(0b00000110);



    lcd_write_command(0b00001100);
 
# 106 ".././lcd_u.c" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 106 ".././lcd_u.c"
= (
# 106 ".././lcd_u.c" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 106 ".././lcd_u.c"
& ((1 << 5) | (1 << 4))) | (debugSave);
}
# 117 ".././lcd_u.c"
void lcd_write_character(uint8_t data)
{
 uint8_t debugSave = (
# 119 ".././lcd_u.c" 3
                    (*(volatile uint8_t *)((0x05) + 0x20)) 
# 119 ".././lcd_u.c"
                    & ((1 << 5) | (1 << 4)));
 
# 120 ".././lcd_u.c" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 120 ".././lcd_u.c"
= (
# 120 ".././lcd_u.c" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 120 ".././lcd_u.c"
& (~(((1 << 5) | (1 << 4))))) | (1 << 4);
    
# 121 ".././lcd_u.c" 3
   (*(volatile uint8_t *)(0x102)) 
# 121 ".././lcd_u.c"
               |= (1<<
# 121 ".././lcd_u.c" 3
                      5
# 121 ".././lcd_u.c"
                                );
    
# 122 ".././lcd_u.c" 3
   (*(volatile uint8_t *)(0x102)) 
# 122 ".././lcd_u.c"
              &= ~(1<<
# 122 ".././lcd_u.c" 3
                      6
# 122 ".././lcd_u.c"
                               );
    lcd_write_nibble(data);
    lcd_write_nibble(data << 4);
 _delay_us(64);
 
# 126 ".././lcd_u.c" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 126 ".././lcd_u.c"
= (
# 126 ".././lcd_u.c" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 126 ".././lcd_u.c"
& ((1 << 5) | (1 << 4))) | (debugSave);
}
# 136 ".././lcd_u.c"
void lcd_write_command(uint8_t data)
{
 uint8_t debugSave = (
# 138 ".././lcd_u.c" 3
                    (*(volatile uint8_t *)((0x05) + 0x20)) 
# 138 ".././lcd_u.c"
                    & ((1 << 5) | (1 << 4)));
 
# 139 ".././lcd_u.c" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 139 ".././lcd_u.c"
= (
# 139 ".././lcd_u.c" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 139 ".././lcd_u.c"
& (~(((1 << 5) | (1 << 4))))) | (1 << 4);
    
# 140 ".././lcd_u.c" 3
   (*(volatile uint8_t *)(0x102)) 
# 140 ".././lcd_u.c"
               &= ~(1<<
# 140 ".././lcd_u.c" 3
                       5
# 140 ".././lcd_u.c"
                                 );
    
# 141 ".././lcd_u.c" 3
   (*(volatile uint8_t *)(0x102)) 
# 141 ".././lcd_u.c"
              &= ~(1<<
# 141 ".././lcd_u.c" 3
                      6
# 141 ".././lcd_u.c"
                               );
    lcd_write_nibble(data);
    lcd_write_nibble(data << 4);
 if ((data == 0b00000001) || (data == 0b00000010)){
  _delay_us(2500);
 } else {
  _delay_us(64);
 }
 
# 149 ".././lcd_u.c" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 149 ".././lcd_u.c"
= (
# 149 ".././lcd_u.c" 3
(*(volatile uint8_t *)((0x05) + 0x20)) 
# 149 ".././lcd_u.c"
& ((1 << 5) | (1 << 4))) | (debugSave);
}
# 162 ".././lcd_u.c"
void lcd_write_nibble(uint8_t data)
{
    if (data & 1<<7) {
  
# 165 ".././lcd_u.c" 3
 (*(volatile uint8_t *)(0x102)) 
# 165 ".././lcd_u.c"
             |= (1<<
# 165 ".././lcd_u.c" 3
                    4
# 165 ".././lcd_u.c"
                              );
 } else {
     
# 167 ".././lcd_u.c" 3
    (*(volatile uint8_t *)(0x102)) 
# 167 ".././lcd_u.c"
                &= ~(1<<
# 167 ".././lcd_u.c" 3
                        4
# 167 ".././lcd_u.c"
                                  );
 }
    if (data & 1<<6) {
  
# 170 ".././lcd_u.c" 3
 (*(volatile uint8_t *)(0x102)) 
# 170 ".././lcd_u.c"
             |= (1<<
# 170 ".././lcd_u.c" 3
                    3
# 170 ".././lcd_u.c"
                              );
 } else {
  
# 172 ".././lcd_u.c" 3
 (*(volatile uint8_t *)(0x102)) 
# 172 ".././lcd_u.c"
             &= ~(1<<
# 172 ".././lcd_u.c" 3
                     3
# 172 ".././lcd_u.c"
                               );
 }
    if (data & 1<<5) {
  
# 175 ".././lcd_u.c" 3
 (*(volatile uint8_t *)((0x0E) + 0x20)) 
# 175 ".././lcd_u.c"
             |= (1<<
# 175 ".././lcd_u.c" 3
                    3
# 175 ".././lcd_u.c"
                              );
 } else {
  
# 177 ".././lcd_u.c" 3
 (*(volatile uint8_t *)((0x0E) + 0x20)) 
# 177 ".././lcd_u.c"
             &= ~(1<<
# 177 ".././lcd_u.c" 3
                     3
# 177 ".././lcd_u.c"
                               );
 }
    if (data & 1<<4) {
  
# 180 ".././lcd_u.c" 3
 (*(volatile uint8_t *)((0x14) + 0x20)) 
# 180 ".././lcd_u.c"
             |= (1<<
# 180 ".././lcd_u.c" 3
                    5
# 180 ".././lcd_u.c"
                              );
 } else {
  
# 182 ".././lcd_u.c" 3
 (*(volatile uint8_t *)((0x14) + 0x20)) 
# 182 ".././lcd_u.c"
             &= ~(1<<
# 182 ".././lcd_u.c" 3
                     5
# 182 ".././lcd_u.c"
                               );
 }

    
# 185 ".././lcd_u.c" 3
   (*(volatile uint8_t *)(0x102)) 
# 185 ".././lcd_u.c"
              |= (1<<
# 185 ".././lcd_u.c" 3
                     6
# 185 ".././lcd_u.c"
                              );
    _delay_us(1);
    
# 187 ".././lcd_u.c" 3
   (*(volatile uint8_t *)(0x102)) 
# 187 ".././lcd_u.c"
              &= ~(1<<
# 187 ".././lcd_u.c" 3
                      6
# 187 ".././lcd_u.c"
                               );
    _delay_us(1);
}







void lcd_goto(uint8_t pos)
{
 lcd_cursorPos = pos;
 lcd_write_command(0b10000000 +pos);
}







void lcd_clrscr()
{
 lcd_cursorPos = 0;
 lcd_write_command(0b00000001);
 uint8_t* pchar = &(lcd_buffer[0]);
 for (uint8_t i = 0; i < sizeof(lcd_buffer); i++){
  *pchar++ = ' ';
 }
}







void lcd_home()
{
 lcd_cursorPos = 0;
 lcd_write_command(0b00000010);
}

uint8_t getCursorFromLCDRAMcursor(uint8_t lcd_cursor){

 if ((lcd_cursor >= 0) && (lcd_cursor < 20)){

  return lcd_cursor-0 + 0;
 } else if ((lcd_cursor >= 0x40) && (lcd_cursor < (0x40+20))){
  return lcd_cursor-0x40 + 20;
 } else if ((lcd_cursor >= (0+20)) && (lcd_cursor < (20+20))){
  return lcd_cursor-(0+20) +40;
 } else if ((lcd_cursor >= (0x40+20)) && (lcd_cursor < (0x40+20+20))){
  return lcd_cursor-(0x40+20) + 60;
 }
 return 0xFF;

}







void lcd_putc(char c)
{

 if ((lcd_displayingMessage == 0x00) || (lcd_cursorPos < 0x40)
  || (lcd_cursorPos >= 0x40 +20)) {
  lcd_write_character(c);
 }


 uint8_t cursor = getCursorFromLCDRAMcursor(lcd_cursorPos);
 if (cursor != 0xFF){
  uint8_t stored_char = c;
  if (stored_char == 0xA1){
   stored_char = 0x20;
  } else if (stored_char == 0x80){
   stored_char = 0x20;
  } else if (stored_char == 0xA5){
   stored_char = 0x14;
  } else if (stored_char == 0x2A){
   stored_char = 0x15;
  } else if (stored_char == 0xE2){
   stored_char = 0x13;
  } else if (stored_char == 0xF5){
   stored_char = 0x12;
  } else if (stored_char == 0xEF){
   stored_char = 0x11;
  } else if (stored_char == 0xE1){
   stored_char = 0x10;
  }
  lcd_buffer[cursor] = stored_char;
 }
 lcd_cursorPos = (lcd_cursorPos+1) &0x7F;
}







void lcd_puts(const char *s)
{
 if (s != 
# 295 ".././lcd_u.c" 3 4
         ((void *)0)
# 295 ".././lcd_u.c"
             ){
  register char c;

  while ((c=*s++))
  lcd_putc(c);
 }
}







void lcd_puts_P(const char *progmem_s)
{
 if (progmem_s != 
# 311 ".././lcd_u.c" 3 4
                 ((void *)0)
# 311 ".././lcd_u.c"
                     ){
  register char c;
  while ((c=
# 313 ".././lcd_u.c" 3
           (__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(
# 313 ".././lcd_u.c"
           progmem_s++
# 313 ".././lcd_u.c" 3
           )); uint8_t __result; __asm__ __volatile__ ( "lpm %0, Z" "\n\t" : "=r" (__result) : "z" (__addr16) ); __result; }))
# 313 ".././lcd_u.c"
                                     ))
  lcd_putc(c);
 }
}



uint8_t lcd_displayingMessage;

void lcd_message(const char *pMessage){
 uint8_t saveCursor = lcd_cursorPos;
 uint8_t textLen = get_StrLen(pMessage);
 lcd_goto(0x40);
 uint8_t pos = 0;
 while (pos < ((20 - textLen) >> 1)) {
  lcd_write_character(' ');
  pos++;
 }
 while (*pMessage != 0){
  lcd_write_character(*pMessage++);
  pos++;
 }
 while (pos++ < 20){
  lcd_write_character(' ');
 }
 lcd_goto(saveCursor);
 lcd_displayingMessage = 0xFF;
 
# 340 ".././lcd_u.c" 3
for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) 
# 340 ".././lcd_u.c"
{swTimer[7].counter = 2000 / 20; swTimer[7].prescaler = (2000 % 20) / 4;};;
}

void lcd_message_P(const char *pMessage_P){
 uint8_t saveCursor = lcd_cursorPos;
 uint8_t textLen = get_StrLenP(pMessage_P);
 lcd_goto(0x40);
 uint8_t pos = 0;
 while (pos < ((20 - textLen) >> 1)) {
  lcd_write_character(' ');
  pos++;
 }
 while (
# 352 ".././lcd_u.c" 3
       (__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(
# 352 ".././lcd_u.c"
       pMessage_P
# 352 ".././lcd_u.c" 3
       )); uint8_t __result; __asm__ __volatile__ ( "lpm %0, Z" "\n\t" : "=r" (__result) : "z" (__addr16) ); __result; })) 
# 352 ".././lcd_u.c"
                                 != 0){
  lcd_write_character(
# 353 ".././lcd_u.c" 3
                     (__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(
# 353 ".././lcd_u.c"
                     pMessage_P++
# 353 ".././lcd_u.c" 3
                     )); uint8_t __result; __asm__ __volatile__ ( "lpm %0, Z" "\n\t" : "=r" (__result) : "z" (__addr16) ); __result; }))
# 353 ".././lcd_u.c"
                                                );
  pos++;
 }
 while (pos++ < 20){
  lcd_write_character(' ');
 }
 lcd_goto(saveCursor);
 lcd_displayingMessage = 0xFF;
 
# 361 ".././lcd_u.c" 3
for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) 
# 361 ".././lcd_u.c"
{swTimer[7].counter = 2000 / 20; swTimer[7].prescaler = (2000 % 20) / 4;};;
}


void lcd_message_clear(){
 uint8_t saveCursor = lcd_cursorPos;
 uint8_t lcdBufferPos = getCursorFromLCDRAMcursor(0x40);
 lcd_goto(0x40);
 for (uint8_t i = 0; i < 20; i++){
  uint8_t stored_char = lcd_buffer[lcdBufferPos++];
  if (stored_char == 0x14){
   stored_char = 0xA5;
  } else if (stored_char == 0x15){
   stored_char = 0x2A;
  } else if (stored_char == 0x13){
   stored_char = 0xE2;
  } else if (stored_char == 0x12){
   stored_char = 0xF5;
  } else if (stored_char == 0x11){
   stored_char = 0xEF;
  } else if (stored_char == 0x10){
   stored_char = 0xE1;
  }
  lcd_write_character(stored_char);
 }
 lcd_goto(saveCursor);
 lcd_displayingMessage = 0x00;
}
