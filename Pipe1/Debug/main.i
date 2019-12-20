# 1 ".././main.c"
# 1 "E:\\Users\\Anwender\\Sync\\Atmel Studio\\Pipe1\\Pipe1\\Debug//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 ".././main.c"
# 12 ".././main.c"
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 1 3
# 44 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
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
# 45 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 2 3
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
# 13 ".././main.c" 2
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
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 639 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3


# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\lock.h" 1 3
# 642 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3
# 14 ".././main.c" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\interrupt.h" 1 3
# 15 ".././main.c" 2


# 1 ".././lcd_u.h" 1
# 111 ".././lcd_u.h"

# 111 ".././lcd_u.h"
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

extern uint8_t lcd_cursorPos;
extern uint8_t lcd_buffer[4*20];
# 18 ".././main.c" 2
# 1 ".././initio.h" 1
# 14 ".././initio.h"
extern void init_iopins (void);
# 19 ".././main.c" 2
# 1 ".././message.h" 1
# 11 ".././message.h"
# 1 ".././utils.h" 1
# 9 ".././utils.h"
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 1 3
# 89 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 1 3 4
# 216 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4

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
# 10 ".././utils.h" 2







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
extern char* putChar_long(uint16_t val, char* pOutput);
extern char* putChar_Note(uint8_t note, char* pOutput);
extern char* putChar_Manual(uint8_t manual, char* pOutput);
extern char* putChar_MidiChan(uint8_t channel, char* pOutput);

extern uint8_t lcd_edit_longint(uint8_t cursor);
extern uint8_t lcd_edit_byte(uint8_t cursor);
# 73 ".././utils.h"
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
# 101 ".././utils.h"
extern char string_Buf[40];

extern const char cr_lf [] 
# 103 ".././utils.h" 3
                          __attribute__((__progmem__))
# 103 ".././utils.h"
                                 ;

extern uint8_t get_StrLenP(const __flash char* pString);
extern uint8_t get_StrLen(const char* pString);
extern uint8_t reverse_Bits(uint8_t val);
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
# 20 ".././main.c" 2
# 1 ".././hwtimer.h" 1
# 14 ".././hwtimer.h"
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h" 1 3
# 42 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\atomic.h" 3

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
# 79 ".././hwtimer.h"
typedef struct {
 uint8_t counter;
 uint8_t prescaler;
} Timer;
extern volatile Timer swTimer[9];
extern volatile uint8_t time_Uptime[4];
extern volatile uint8_t time_UpTimeUpdated;

extern void init_HwTimer();
extern void init_Timers();
extern void init_ADC();
extern void init_Pipe();
# 132 ".././hwtimer.h"
typedef struct {
 uint8_t mux;
 uint8_t ADCval;
 uint8_t key;

 uint8_t keyRepeating;
 uint16_t keyTimer;
} KeyInfo;
extern volatile KeyInfo adcKeys[1];

extern uint8_t keyWants[6];
# 165 ".././hwtimer.h"
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
# 200 ".././hwtimer.h"
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
# 21 ".././main.c" 2
# 1 ".././utils.h" 1
# 22 ".././main.c" 2
# 1 ".././serial.h" 1
# 34 ".././serial.h"
extern void init_Serial3SerESP();
extern void serial3SER_ESPSend(uint8_t data);
extern void serial3SER_ESP_sendStringP(const char *progmem_s);
extern void serial3SER_ESP_sendString(char *s);
extern void serial3SER_ESP_sendCRLF();
extern uint8_t serial3SER_ESPReadRx();

extern volatile uint8_t* serESPRxInIndex;
extern volatile uint8_t* serESPRxOutIndex;
extern volatile uint8_t* serESPTxOutIndex;
extern volatile uint8_t* serESPTxInIndex;
extern volatile uint8_t serESPOvflFlag;
extern volatile uint8_t serESP_Active;



extern uint8_t serESPRxBuffer[128];
extern uint8_t serESPTxBuffer[512];
extern uint8_t serESPInBuffer[8];
extern uint8_t serESPMidiTmp[3];
# 90 ".././serial.h"
extern volatile uint8_t* serUSBRxInIndex;
extern volatile uint8_t* serUSBRxOutIndex;
extern volatile uint8_t* serUSBTxOutIndex;
extern volatile uint8_t* serUSBTxInIndex;
extern volatile uint8_t serUSBOvflFlag;
extern volatile uint8_t serUSB_Active;

extern uint8_t serUSBRxBuffer[64];
extern uint8_t serUSBTxBuffer[2048];




extern void init_Serial0SerUSB();
extern void serial0SER_USBSend(uint8_t data);
extern void serial0SER_USB_sendStringP(const char *progmem_s);
extern void serial0SER_USB_sendString(char *s);
extern void serial0SER_USB_sendCRLF();
extern uint8_t serial0SER_USBReadRx();


extern void serial0USB_logMIDIin(uint8_t data);

extern void serial0USB_logMIDIout(uint8_t data);

extern void serial0USB_logPipeIn(PipeMessage_t pipe);

extern void serial0USB_logPipeOutOn(uint8_t bitNr, uint8_t moduleMask);

extern void serial0USB_logPipeOutOff(uint8_t bitNr, uint8_t moduleMask);

extern volatile uint16_t midiTxBytesCount;
extern volatile uint16_t midiRxBytesCount;
# 143 ".././serial.h"
extern void init_Serial1MIDI();
extern void serial1MIDISend(uint8_t data);
extern uint8_t serial1MIDIReadRx();

extern volatile uint8_t midiRxInIndex;
extern volatile uint8_t midiRxOutIndex;
extern volatile uint8_t midiTxOutIndex;
extern volatile uint8_t midiTxInIndex;
extern uint8_t midiRxBuffer[32];
extern uint8_t midiTxBuffer[256];
extern volatile uint16_t midiTxBytesCount;
extern volatile uint16_t midiRxBytesCount;
extern volatile uint8_t midiRxOvflCount;
extern volatile uint8_t midiTxOvflCount;

extern volatile uint8_t midiTxLastCmd;
# 168 ".././serial.h"
extern uint8_t midi_ExtraBuffer[3];
# 23 ".././main.c" 2
# 1 ".././test.h" 1
# 15 ".././test.h"
# 1 ".././lcd_u.h" 1
# 16 ".././test.h" 2



# 1 ".././utils.h" 1
# 20 ".././test.h" 2




extern uint8_t test_pipeIO();
extern void test_PipePins();
extern void testMenu();
extern void testMIDIin();
extern void test_USBser();
extern uint8_t test_PipePatterns();
extern void test_input();
# 24 ".././main.c" 2
# 1 ".././Midi.h" 1
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
# 118 ".././Midi.h"
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




extern void register_onOff(uint8_t regNr, uint8_t onOff);
extern void registers_CalcCount();
extern uint8_t register_toProgram(uint8_t program, uint8_t SaveEEProm);
extern uint8_t program_toRegister(uint8_t program);
extern void midi_resetRegisters();

extern uint8_t midi_RegisterMatchProgram(uint8_t program);





extern uint8_t count_Registers(uint8_t mode);


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
# 240 ".././Midi.h"
extern uint8_t midi_Couplers[12];

typedef struct{
 uint8_t dest;
 uint8_t source;
} CplInfo_t;
extern const __flash CplInfo_t cplInfo[12];

extern uint8_t set_Coupler(uint8_t);
# 25 ".././main.c" 2
# 1 ".././menu.h" 1







# 1 ".././hw_defs.h" 1
# 9 ".././menu.h" 2
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
# 171 ".././menu.h"
extern const __flash Menu_t * menuStack[16];

uint8_t lcdData[10];
# 183 ".././menu.h"
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
# 240 ".././menu.h"
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
# 258 ".././menu.h" 3
                               __attribute__((__progmem__))
# 258 ".././menu.h"
                                      ;
extern const char HelloMsg [] 
# 259 ".././menu.h" 3
                             __attribute__((__progmem__))
# 259 ".././menu.h"
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
# 26 ".././main.c" 2
# 1 ".././ee_prom.h" 1
# 11 ".././ee_prom.h"
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\crc16.h" 1 3
# 112 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\crc16.h" 3

# 112 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\crc16.h" 3
static __inline__ uint16_t
_crc16_update(uint16_t __crc, uint8_t __data)
{
 uint8_t __tmp;
 uint16_t __ret;

 __asm__ __volatile__ (
  "eor %A0,%2" "\n\t"
  "mov %1,%A0" "\n\t"
  "swap %1" "\n\t"
  "eor %1,%A0" "\n\t"
  "mov __tmp_reg__,%1" "\n\t"
  "lsr %1" "\n\t"
  "lsr %1" "\n\t"
  "eor %1,__tmp_reg__" "\n\t"
  "mov __tmp_reg__,%1" "\n\t"
  "lsr %1" "\n\t"
  "eor %1,__tmp_reg__" "\n\t"
  "andi %1,0x07" "\n\t"
  "mov __tmp_reg__,%A0" "\n\t"
  "mov %A0,%B0" "\n\t"
  "lsr %1" "\n\t"
  "ror __tmp_reg__" "\n\t"
  "ror %1" "\n\t"
  "mov %B0,__tmp_reg__" "\n\t"
  "eor %A0,%1" "\n\t"
  "lsr __tmp_reg__" "\n\t"
  "ror %1" "\n\t"
  "eor %B0,__tmp_reg__" "\n\t"
  "eor %A0,%1"
  : "=r" (__ret), "=d" (__tmp)
  : "r" (__data), "0" (__crc)
  : "r0"
 );
 return __ret;
}
# 178 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\crc16.h" 3
static __inline__ uint16_t
_crc_xmodem_update(uint16_t __crc, uint8_t __data)
{
    uint16_t __ret;
    uint8_t __tmp1;
    uint8_t __tmp2;


    __asm__ __volatile__ (
        "eor    %B0,%3" "\n\t"
        "mov    __tmp_reg__,%B0" "\n\t"
        "swap   __tmp_reg__" "\n\t"


        "mov    %1,__tmp_reg__" "\n\t"
        "andi   %1,0x0f" "\n\t"
        "eor    %1,%B0" "\n\t"
        "mov    %2,%B0" "\n\t"
        "eor    %2,__tmp_reg__" "\n\t"
        "lsl    %2" "\n\t"
        "andi   %2,0xe0" "\n\t"
        "eor    %1,%2" "\n\t"


        "mov    %2,__tmp_reg__" "\n\t"
        "eor    %2,%B0" "\n\t"
        "andi   %2,0xf0" "\n\t"
        "lsr    %2" "\n\t"
        "mov    __tmp_reg__,%B0" "\n\t"
        "lsl    __tmp_reg__" "\n\t"
        "rol    %2" "\n\t"
        "lsr    %B0" "\n\t"
        "lsr    %B0" "\n\t"
        "lsr    %B0" "\n\t"
        "andi   %B0,0x1f" "\n\t"
        "eor    %B0,%2" "\n\t"
        "eor    %B0,%A0" "\n\t"
        "mov    %A0,%1" "\n\t"
        : "=d" (__ret), "=d" (__tmp1), "=d" (__tmp2)
        : "r" (__data), "0" (__crc)
        : "r0"
    );
    return __ret;
}
# 252 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\crc16.h" 3
static __inline__ uint16_t
_crc_ccitt_update (uint16_t __crc, uint8_t __data)
{
    uint16_t __ret;

    __asm__ __volatile__ (
        "eor    %A0,%1" "\n\t"

        "mov    __tmp_reg__,%A0" "\n\t"
        "swap   %A0" "\n\t"
        "andi   %A0,0xf0" "\n\t"
        "eor    %A0,__tmp_reg__" "\n\t"

        "mov    __tmp_reg__,%B0" "\n\t"

        "mov    %B0,%A0" "\n\t"

        "swap   %A0" "\n\t"
        "andi   %A0,0x0f" "\n\t"
        "eor    __tmp_reg__,%A0" "\n\t"

        "lsr    %A0" "\n\t"
        "eor    %B0,%A0" "\n\t"

        "eor    %A0,%B0" "\n\t"
        "lsl    %A0" "\n\t"
        "lsl    %A0" "\n\t"
        "lsl    %A0" "\n\t"
        "eor    %A0,__tmp_reg__"

        : "=d" (__ret)
        : "r" (__data), "0" (__crc)
        : "r0"
    );
    return __ret;
}
# 319 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\crc16.h" 3
static __inline__ uint8_t
_crc_ibutton_update(uint8_t __crc, uint8_t __data)
{
 uint8_t __i, __pattern;
 __asm__ __volatile__ (
  "	eor	%0, %4" "\n\t"
  "	ldi	%1, 8" "\n\t"
  "	ldi	%2, 0x8C" "\n\t"
  "1:	lsr	%0" "\n\t"
  "	brcc	2f" "\n\t"
  "	eor	%0, %2" "\n\t"
  "2:	dec	%1" "\n\t"
  "	brne	1b" "\n\t"
  : "=r" (__crc), "=d" (__i), "=d" (__pattern)
  : "0" (__crc), "r" (__data));
 return __crc;
}
# 385 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\crc16.h" 3
static __inline__ uint8_t
_crc8_ccitt_update(uint8_t __crc, uint8_t __data)
{
    uint8_t __i, __pattern;
    __asm__ __volatile__ (
        "    eor    %0, %4" "\n\t"
        "    ldi    %1, 8" "\n\t"
        "    ldi    %2, 0x07" "\n\t"
        "1:  lsl    %0" "\n\t"
        "    brcc   2f" "\n\t"
        "    eor    %0, %2" "\n\t"
        "2:  dec    %1" "\n\t"
        "    brne   1b" "\n\t"
        : "=r" (__crc), "=d" (__i), "=d" (__pattern)
        : "0" (__crc), "r" (__data));
    return __crc;
}
# 12 ".././ee_prom.h" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\eeprom.h" 1 3
# 50 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\eeprom.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 1 3 4
# 149 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 328 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4
typedef int wchar_t;
# 51 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\eeprom.h" 2 3
# 139 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\eeprom.h" 3
uint8_t eeprom_read_byte (const uint8_t *__p) __attribute__((__pure__));




uint16_t eeprom_read_word (const uint16_t *__p) __attribute__((__pure__));




uint32_t eeprom_read_dword (const uint32_t *__p) __attribute__((__pure__));




float eeprom_read_float (const float *__p) __attribute__((__pure__));





void eeprom_read_block (void *__dst, const void *__src, size_t __n);





void eeprom_write_byte (uint8_t *__p, uint8_t __value);




void eeprom_write_word (uint16_t *__p, uint16_t __value);




void eeprom_write_dword (uint32_t *__p, uint32_t __value);




void eeprom_write_float (float *__p, float __value);





void eeprom_write_block (const void *__src, void *__dst, size_t __n);





void eeprom_update_byte (uint8_t *__p, uint8_t __value);




void eeprom_update_word (uint16_t *__p, uint16_t __value);




void eeprom_update_dword (uint32_t *__p, uint32_t __value);




void eeprom_update_float (float *__p, float __value);





void eeprom_update_block (const void *__src, void *__dst, size_t __n);
# 13 ".././ee_prom.h" 2



# 1 ".././menu.h" 1
# 17 ".././ee_prom.h" 2
# 31 ".././ee_prom.h"

# 31 ".././ee_prom.h"
extern uint8_t eeprom_ReadManualMap();
extern uint8_t eeprom_ReadMidiInMap();
extern uint8_t eeprom_ReadMidiOutMap();
extern uint8_t eeprom_ReadModules();
extern uint8_t eeprom_ReadUSB();
extern uint8_t eeprom_ReadReg();
extern uint8_t eeprom_ReadProg();
extern uint8_t eeprom_ReadSoftkeys();
extern uint8_t eeprom_ReadMidiThrough();

extern void eeprom_UpdateManualMap();
extern void eeprom_UpdateMidiInMap();
extern void eeprom_UpdateMidiOutMap();
extern void eeprom_UpdateModules();
extern void eeprom_UpdateUSB();
extern void eeprom_UpdateReg();
extern void eeprom_UpdateProg();
extern void eeprom_UpdateSoftkeys();
extern void eeprom_UpdateMidiThrough();

extern void eeprom_Backup();
extern void eeprom_Restore();
extern void eeprom_UpdateALL();
# 83 ".././ee_prom.h"
typedef struct{
 uint8_t label;
 uint8_t version;
 uint16_t sizeData;
 uint16_t crcData;
 uint8_t data;
} ee_dataBlockBasic;

typedef struct{
 uint8_t label;
 uint8_t version;
 uint16_t size;
 uint8_t* pMemory;
} EeVarList_t;

extern const __flash EeVarList_t ee_VarList[];

typedef struct{
 uint8_t charStart;
 uint8_t charManMap;
 ManualMap_t manualMap[4][4];
 uint16_t manualMap_crc;
 uint8_t charMidiInMap;
 MidiInMap_t midiInMap[16][4];
 uint16_t midiInMap_crc;
 uint8_t charMidiOutMap;
 MidiOutMap_t midiOutMap[4];
 MidiSetting_t midiSettings;
 uint16_t midiOutMap_crc;
 uint8_t charModInst;
 uint8_t moduleAssignRead;
 uint8_t moduleAssignWrite;
 uint16_t moduleInstalled_crc;
 uint8_t charUSB;
 uint8_t usbActive;
 uint16_t usb_crc;
 uint8_t charReg;
 uint8_t regCount;
 RegisterMap_t registerMap[8];
 uint16_t reg_crc;
 uint8_t charProg;
 ProgramInfo_t programMap[64];
 uint16_t prog_crc;
 uint8_t charSoftkey;
 uint8_t softKeyMenuIndex[4];
 uint16_t softKeys_crc;
 uint8_t charMidiThrough;
 MidiThrough_t midiThrough;
 uint16_t midiThrough_crc;
 uint8_t charEnd;
} Ee_t;



typedef union{
 Ee_t ee;
 uint8_t raw[2048];
} EEblock_t;

typedef struct{
 EEblock_t eeData;
 EEblock_t eeBackup;
} EECompl_t;

extern 
# 147 ".././ee_prom.h" 3
      __attribute__((section(".eeprom"))) 
# 147 ".././ee_prom.h"
            EECompl_t ee;
# 159 ".././ee_prom.h"
extern uint8_t ee_initError;
# 27 ".././main.c" 2
# 1 ".././log.h" 1
# 12 ".././log.h"
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\ctype.h" 1 3
# 74 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\ctype.h" 3

# 74 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\ctype.h" 3
extern int isalnum(int __c) __attribute__((__const__));






extern int isalpha(int __c) __attribute__((__const__));






extern int isascii(int __c) __attribute__((__const__));





extern int isblank(int __c) __attribute__((__const__));





extern int iscntrl(int __c) __attribute__((__const__));





extern int isdigit(int __c) __attribute__((__const__));





extern int isgraph(int __c) __attribute__((__const__));





extern int islower(int __c) __attribute__((__const__));





extern int isprint(int __c) __attribute__((__const__));






extern int ispunct(int __c) __attribute__((__const__));







extern int isspace(int __c) __attribute__((__const__));





extern int isupper(int __c) __attribute__((__const__));






extern int isxdigit(int __c) __attribute__((__const__));
# 173 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\ctype.h" 3
extern int toascii(int __c) __attribute__((__const__));





extern int tolower(int __c) __attribute__((__const__));





extern int toupper(int __c) __attribute__((__const__));
# 13 ".././log.h" 2
# 28 ".././log.h"

# 28 ".././log.h"
typedef struct {
 uint8_t uptime[4];
 uint8_t logStatus;
 uint8_t logType;
 uint8_t logCategory;
 uint8_t logNr;
 uint16_t logInfo;
} LogList_t;

extern LogList_t log_List[40];

typedef struct {
 uint8_t logCategory;
 uint8_t logNr;
 uint16_t logInfo;
} Log_t;

extern char Log_TextBuff[40];



void init_log();
void log_putError(uint8_t LogCat, uint8_t LogNr, uint16_t LogInfo);
void log_putWarning(uint8_t LogCat, uint8_t LogNr, uint16_t LogInfo);
void log_putInfo(uint8_t LogCat, uint8_t LogNr, uint16_t LogInfo);
void log_put(uint8_t LogCat, uint8_t LogNr, uint16_t LogInfo, uint8_t logType);
uint8_t log_count();
LogList_t* log_getLog(uint8_t nr);
char* log_getShortTextFromIndex(uint8_t nr, char changeNotifyStatus);
char* log_getShortTextFromPtr(LogList_t* pLogEntry, char changeNotifyStatus);
const __flash char* log_getErrorText(uint8_t logNr);


typedef struct{
 uint8_t errCat;
 uint8_t errNr;
 char text[16];
 } ErrorText_t;
# 89 ".././log.h"
extern uint8_t log_unreadErrors;
# 28 ".././main.c" 2

const char eprom_ok [] 
# 29 ".././main.c" 3
                      __attribute__((__progmem__)) 
# 29 ".././main.c"
                              = "EE:";
const char module_string [] 
# 30 ".././main.c" 3
                           __attribute__((__progmem__)) 
# 30 ".././main.c"
                                   = " Mod.:";
const char prog_name [] 
# 31 ".././main.c" 3
                       __attribute__((__progmem__)) 
# 31 ".././main.c"
                               = "MIDI-Interface";
const __flash char releaseKeyString[] = "Tasten/Reg. l" "\357" "sen";
const __flash char panicString[] = "T" "\357" "ne aus";
uint8_t menuNotActive;
uint8_t messageFromESP;

int main(void)
{



 init_iopins ();
 init_log();
 init_Serial0SerUSB();
 init_message();
 init_HwTimer();
 init_Timers();
 init_ADC();
 init_Pipe();
 init_Serial1MIDI();
 init_PipeModules();
 init_Midi2Manual();
 init_Manual2Midi();
 init_Midi();
 init_Registers();
 init_Manual2Module();
 init_SoftKeys();
 eeprom_UpdateALL();
 menu_TestModulePattern = 0;




 lcd_init ();
 lcd_initCG();
 lcd_clrscr ();
 lcd_goto(0x40 +3);
 lcd_puts_P(prog_name);
 lcd_goto((0+20)+7);
 lcd_puts_P(sw_version);
 
# 71 ".././main.c" 3
__asm__ __volatile__ ("sei" ::: "memory")
# 71 ".././main.c"
     ;
 _delay_ms(1200);
 init_Serial3SerESP();
 lcd_clrscr ();



 module_StartPowerOn();
 msgPipe_Handling = 0xFF;

 menuNotActive = 0xFF;

 uint8_t updateStatus = 0xFF;
 messageFromESP = 0xFE;
    while (1)
    {

  if (serESPRxInIndex != serESPRxOutIndex) {
   uint8_t esp_message = serial3SER_ESPReadRx();
   messageFromESP = esp_message;
   serial0SER_USBSend(esp_message);
   if ((esp_message > 0x80) && (esp_message <= 0x80 +6)){

    message_push(esp_message-0x80);
   } else if (esp_message == 0x90) {

    if (serESPInBuffer[0] == 0x90) {

     int8_t i = 1;

     do {
      if (serESPInBuffer[i] == '='){
       break;
      }
      i++;
     } while (i < 8);

     if (i < 8) {

      uint8_t midiBytesTransferred = i >> 1;

      for (uint8_t j = 0; j < 3; j++){
       serESPMidiTmp[j] = 0;
      }
      while (--i > 0) {

       uint8_t asciiData = serESPInBuffer[i] - '0';
       if (asciiData > 9){
        asciiData = asciiData - (0x0A - 'A' + '0');
       }
       asciiData &= 0x0F;
       serESPMidiTmp[2] = (serESPMidiTmp[2] << 4) | (serESPMidiTmp[1] >> 4);
       serESPMidiTmp[1] = (serESPMidiTmp[1] << 4) | (serESPMidiTmp[0] >> 4);
       serESPMidiTmp[0] = (serESPMidiTmp[0] << 4) | asciiData;
      }

      proc_ESPmidi(midiBytesTransferred);
     }
    }
   }
  }

  if (message_status() != 0x00) {
   uint8_t keyMessage = message_get();
   if (keyMessage == (0x80 | 6)){

    midiSendAllNotesOff();
    midi_AllManualsOff();
    midi_resetRegisters();
    midi_CouplerReset();
    menu_DisplayMainMessage_P(panicString);
   }
   if (menuNotActive == 0xFF) {


    uint8_t keyMasked = keyMessage & 0x3F;
    if (keyMessage == 5) {


     menu_Init(
# 150 ".././main.c" 3 4
              ((void *)0)
# 150 ".././main.c"
                  , 
# 150 ".././main.c" 3 4
                    ((void *)0)
# 150 ".././main.c"
                        );
     menu_InitLCD();
     menuNotActive = 0x00;
     softKey_WantLong(0x00);
    } else if ((keyMasked == 2) || (keyMasked == 3) || (keyMasked == 4) || (keyMasked == 1)){

     uint8_t softKey_Nr = softKey_MessageKey_ToSoftKeyNr(keyMasked);
     menuNotActive = softKey_Execute(softKey_Nr, keyMessage);
     softKeys_toLCD();
    }
   } else {

    if (menu_TestModulePattern == 0){

     menuNotActive = menu_ProcessMessage(keyMessage);
    } else {

     menu_TestModuleBitCounter = 0xFD;
     menu_ModuleTestExecute();
    }
   }
  }
  if (menuNotActive == 0xFF) {

   if (updateStatus == 0xFF) {

    menu_ClearAllDisp();
    softKeys_toLCD();
    softKey_WantLong(0xFF);
    updateStatus = 0x00;
   }
  } else {

   updateStatus = 0xFF;
  }

  if (swTimer[7].counter == 0x00) {


    uint8_t saveCursor = lcd_cursorPos;
    menu_deleteMessage();
    lcd_goto(saveCursor);

   swTimer[7].counter = 0xFF;
  }


  if (swTimer[6].counter == 0x00) {
   if (menu_TestModulePattern != 0){
    menu_ModuleTestExecute();
   } else {
    swTimer[6].counter = 0xFF;
   }
  }



  if (swTimer[1].counter == 0x00) {
   module_PowerControl();
   menu_showPowerState();
   if (menuNotActive == 0xFF) {

    uint8_t saveCursor = lcd_cursorPos;
    lcd_goto((0+20));
    if (pipe_PowerStatus == 0x01){

     lcd_puts_P(releaseKeyString);
    } else if (pipe_PowerStatus == 0x12) {
     lcd_blank(20);
    }
    lcd_goto(saveCursor);
   }
  }


  if (((messageFromESP > 0x80) && (messageFromESP <= 0x80 +6))
   || (messageFromESP == 0xFE)) {

   if (lcd_cursorIsOn == 0xFF){
    serial3SER_ESPSend(getCursorFromLCDRAMcursor(lcd_cursorPos));
   } else {
    serial3SER_ESPSend(0x7F);
   }
   serial3SER_ESPSend(0x81);
   uint8_t* pChar = &(lcd_buffer[0]);
   for (uint8_t i = 0; i < sizeof(lcd_buffer); i++){
    serial3SER_ESPSend(*pChar++);
   }
   serial3SER_ESPSend(0x80);
  }
  messageFromESP = 0xFF;


  midi_CheckTxActiveSense();
  midi_CheckRxActiveSense();


  uint8_t oldcursor = lcd_cursorPos;
  if (midiLastInNote != 0xFF){

   lcd_goto((0 +0));
   if (midiLastInManual == 0xFF) {


    lcd_ChannelOut(midiLastInChannel);
    lcd_putc('?');
    lcd_noteOut(midiLastInNote);
    lcd_putc(' ');
   } else {


    lcd_noteOut(midiLastInNote);
    lcd_putc(0x7E);
    lcd_ManualOutDec(midiLastInManual);
    lcd_putc(' ');
   }
   lcd_goto(oldcursor);
   midiLastInNote = 0xFF;
   
# 268 ".././main.c" 3
  for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) 
# 268 ".././main.c"
  {swTimer[4].counter = 1000 / 20; swTimer[4].prescaler = (1000 % 20) / 4;};
  } else if (midiLastProgram != 0xFF) {

   lcd_goto((0 +0));
   lcd_putc('p');
   lcd_dec2out(midiLastProgram);
   lcd_putc(0x7E);
   midiLastProgram = 0xFF;
   
# 276 ".././main.c" 3
  for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) 
# 276 ".././main.c"
  {swTimer[4].counter = 1000 / 20; swTimer[4].prescaler = (1000 % 20) / 4;};
  } else if ((swTimer[4].counter == 0x00) ) {


   lcd_goto((0 +0));
   lcd_blank(6);
   lcd_goto(oldcursor);
   swTimer[4].counter = 0xFF;;
  }
  if (midiLastOutNote != 0xFF){


   lcd_goto((0 +20-5));
   lcd_ManualOutDec(midiLastOutManual);
   lcd_putc(0x7E);
   lcd_noteOut(midiLastOutNote);
   lcd_goto(oldcursor);
   midiLastOutNote = 0xFF;
   
# 294 ".././main.c" 3
  for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) 
# 294 ".././main.c"
  {swTimer[5].counter = 1000 / 20; swTimer[5].prescaler = (1000 % 20) / 4;};
  } else if (midi_RegisterChanged != 0xFF) {

   lcd_goto((0 +20-5));
   lcd_putc('R');
   lcd_dec2out(midi_RegisterChanged & ~0x80);

   lcd_putc((midi_RegisterChanged & 0x80) == 0 ? 0x08 : 0x09);
   lcd_putc(' ');
   lcd_goto(oldcursor);
   midi_RegisterChanged = 0xFF;
   
# 305 ".././main.c" 3
  for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) 
# 305 ".././main.c"
  {swTimer[5].counter = 1000 / 20; swTimer[5].prescaler = (1000 % 20) / 4;};
  } else if ((swTimer[5].counter == 0x00)) {


   lcd_goto((0 +20-5));
   lcd_blank(5);
   lcd_goto(oldcursor);
   swTimer[5].counter = 0xFF;;
  }


  if (time_UpTimeUpdated == 0xFF) {
   time_UpTimeUpdated = 0x00;

   uint8_t* pTime = (uint8_t*) &(time_Uptime[3]);
   uint8_t oldCursor = lcd_cursorPos;
   uint8_t oldBlink = lcd_cursorIsOn;
   if (oldBlink == 0xFF) {
    lcd_cursoroff();
   }
   char separator;
   if (*pTime == 0) {

    pTime--;
    separator = ':';
   } else if ((time_Uptime[1] & 0x01) == 0) {

    separator = ':';
   } else {
    separator = ' ';
   }
   lcd_goto((0 +10-3));
   lcd_dec2out(*(pTime--));
   lcd_putc(separator);
   lcd_dec2out(*pTime);

   uint8_t ovflCount = midiRxOvflCount;
   if (ovflCount > 0){
    log_putError(3,0,ovflCount);
    midiRxOvflCount = 0;
   }
   ovflCount = midiTxOvflCount;
   if (ovflCount > 0){
    log_putError(3,1,ovflCount);
    midiTxOvflCount = 0;
   }

   lcd_putc((pipe_PowerStatus & 0x10 ? ' ' : 0x09));
   lcd_putc((log_unreadErrors == 0xFF) ? 'E' : ' ');

   lcd_goto(oldCursor);
   if (oldBlink == 0xFF) {
    lcd_cursosblink();
   }


   if ((swTimer[4].counter == 0xFF)) {
    
# 362 ".././main.c" 3
   for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) 
# 362 ".././main.c"
   {swTimer[4].counter = 2500 / 20; swTimer[4].prescaler = (2500 % 20) / 4;};
   }
   if ((swTimer[5].counter == 0xFF)) {
    
# 365 ".././main.c" 3
   for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) 
# 365 ".././main.c"
   {swTimer[5].counter = 2500 / 20; swTimer[5].prescaler = (2500 % 20) / 4;};
   }
  }


  if (msgPipeOverflow == 0xFF){
   msgPipeOverflow = 0x00;
   log_putError(4, 0, 0);
  }


  if (midiRxInIndex != midiRxOutIndex) {
   midiIn_Process(serial1MIDIReadRx());
  }

  if (pipeMsgStatus() == 0xFF) {
   midiKeyPress_Process(pipeMsgGet());
  }

    }
}
