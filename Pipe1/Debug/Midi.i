# 1 ".././Midi.c"
# 1 "E:\\Users\\Anwender\\Sync\\Atmel Studio\\Pipe1\\Pipe1\\Debug//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 ".././Midi.c"







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
# 9 ".././Midi.c" 2
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
# 10 ".././Midi.c" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\interrupt.h" 1 3
# 11 ".././Midi.c" 2

# 1 ".././lcd_u.h" 1
# 117 ".././lcd_u.h"

# 117 ".././lcd_u.h"
extern void lcd_initCG();
extern void lcd_setCG(uint8_t charNr, const uint8_t* patternPtr);
extern uint8_t lcd_cursorIsOn;


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

extern void lcd_cursoroff();
extern void lcd_cursosblink();
# 13 ".././Midi.c" 2
# 1 ".././initio.h" 1
# 14 ".././initio.h"
extern void init_iopins (void);
# 14 ".././Midi.c" 2
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

extern uint8_t nibbleToChr(uint8_t myNibble);

extern void lcd_wordout(uint16_t hexNumber);
extern void lcd_hexout(uint8_t hexNumber);
extern void lcd_ManualOut(uint8_t manual);
extern void lcd_ManualOutDec(uint8_t manual);
extern void lcd_ChannelOut(uint8_t channel);
extern void lcd_longout();
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
# 68 ".././utils.h"
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
# 96 ".././utils.h"
extern char string_Buf[64];

extern const char cr_lf [] 
# 98 ".././utils.h" 3
                          __attribute__((__progmem__))
# 98 ".././utils.h"
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
# 15 ".././Midi.c" 2
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
# 16 ".././Midi.c" 2
# 1 ".././utils.h" 1
# 17 ".././Midi.c" 2
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
extern uint8_t midiRxBuffer[256];
extern uint8_t midiTxBuffer[256];
extern volatile uint16_t midiTxBytesCount;
extern volatile uint16_t midiRxBytesCount;
extern volatile uint8_t midiRxOvflCount;
extern volatile uint8_t midiTxOvflCount;

extern volatile uint8_t midiRxBuffUsage;
extern volatile uint8_t midiTxBuffUsage;

extern volatile uint8_t midiTxLastCmd;
# 173 ".././serial.h"
extern uint8_t midi_ExtraBuffer[3];
# 18 ".././Midi.c" 2
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
# 19 ".././Midi.c" 2
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



typedef struct {
 uint8_t ccInRegOn;
 uint8_t ccInRegOff;
 uint8_t ccOutRegOn;
 uint8_t ccOutRegOff;
} MidiCCreg_t;

extern MidiCCreg_t midi_ccReg;




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
# 274 ".././Midi.h"
extern uint8_t midi_Couplers[12];

typedef struct{
 uint8_t dest;
 uint8_t source;
} CplInfo_t;
extern const __flash CplInfo_t cplInfo[12];

extern uint8_t set_Coupler(uint8_t);
# 20 ".././Midi.c" 2
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







# 1 ".././hw_defs.h" 1
# 9 ".././menu.h" 2
# 53 ".././menu.h"

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
# 17 ".././ee_prom.h" 2
# 31 ".././ee_prom.h"
extern uint8_t eeprom_ReadManualMap();
extern uint8_t eeprom_ReadMidiInMap();
extern uint8_t eeprom_ReadMidiOutMap();
extern uint8_t eeprom_ReadModules();
extern uint8_t eeprom_ReadUSB();
extern uint8_t eeprom_ReadReg();
extern uint8_t eeprom_ReadRegOut();
extern uint8_t eeprom_ReadProg();
extern uint8_t eeprom_ReadSoftkeys();
extern uint8_t eeprom_ReadMidiThrough();
extern uint8_t eeprom_ReadCCreg();

extern void eeprom_UpdateManualMap();
extern void eeprom_UpdateMidiInMap();
extern void eeprom_UpdateMidiOutMap();
extern void eeprom_UpdateModules();
extern void eeprom_UpdateUSB();
extern void eeprom_UpdateReg();
extern void eeprom_UpdateRegOut();
extern void eeprom_UpdateProg();
extern void eeprom_UpdateSoftkeys();
extern void eeprom_UpdateMidiThrough();
extern void eeprom_UpdateCCreg();
extern void eeprom_Backup();
extern void eeprom_Restore();
extern void eeprom_UpdateALL();
# 96 ".././ee_prom.h"
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
 uint8_t charRegOut;
 RegOut_t reg_Out[8];
 uint16_t regOut_crc;
 uint8_t charMidiCCreg;
 MidiCCreg_t midi_CCreg;
 uint16_t midiCCreg_crc;
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
# 158 ".././ee_prom.h" 3
      __attribute__((section(".eeprom"))) 
# 158 ".././ee_prom.h"
            EECompl_t ee;
# 170 ".././ee_prom.h"
extern uint8_t ee_initError;
# 21 ".././Midi.c" 2
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
# 91 ".././log.h"
extern uint8_t log_unreadErrors;
# 22 ".././Midi.c" 2







uint8_t midi_Couplers[12];
const __flash CplInfo_t cplInfo[12] = {
 {1, 0},
 {2, 0},
 {2, 1},
 {3, 0},
 {3, 1},
 {3, 2},
 {0, 1},
 {0, 2},
 {1, 2},
 {0, 3},
 {1, 3},
 {2, 3}
};

ManualMap_t manualMap[4][4];
ManualNoteRange_t ManualNoteRange[4];
MidiInMap_t midiInMap[16][4];
MidiOutMap_t midiOutMap[4];
uint8_t midiRxActivceSensing = 0;
MidiSetting_t midi_Setting;
uint8_t midiEEPromLoadError = 0x00;
RegisterMap_t registerMap[8];
uint8_t registerCount;
ProgramInfo_t programMap[64];
MidiThrough_t midiThrough;
uint8_t midi_RegisterChanged;
MidiCCreg_t midi_ccReg;



void init_Midi(){
 midi_CouplerReset();
 prog_Display = 0xFF;
 prog_UpdDisplay = 0x00;
}

void midi_CouplerReset(){

 uint8_t* pCoupler = midi_Couplers;
 for (uint8_t i = 0; i < 12; i++){
  *pCoupler++ = 0;
 }
}



uint8_t set_Coupler(uint8_t cplNr){

 if (cplNr < 12){
  midi_Couplers[cplNr] = 0xFF;

  if (cplNr >= 12/2){

   cplNr = cplNr - 12/2;
  } else {

   cplNr = cplNr + 12/2;
  }
  if (midi_Couplers[cplNr] != 0){

   midi_Couplers[cplNr] = 0;
   return cplInfo[cplNr].dest;
  }
 }
 return 0x00;
}

Word_t getAllCouplers(){
 Word_t result;
 result.wordval = 0;
 uint8_t cplNr = 12 -1;
 do
 {
  result.wordval = result.wordval << 1;
  if (midi_Couplers[cplNr] == 0xFF) {
   result.byteval[0] |= 1;
  }
 } while (cplNr-- > 0);
 return result;
}

void setAllCouplers(Word_t couplers){
 uint8_t cplNr = 0;
 do
 {
  if ((couplers.byteval[0] & 0x01) != 0){
   midi_Couplers[cplNr] = 0xFF;
  } else {
   midi_Couplers[cplNr] = 0;
  }
  couplers.wordval = couplers.wordval >> 1;
 } while (++cplNr < 12);
}


uint8_t midiLastCommand;
uint8_t midiDataByte[8];
uint8_t midiDataByteCount;
uint8_t midiDataByteExpected = 0xFF;

uint8_t midiLastOutNote = 0xFF;
uint8_t midiLastOutManual = 0xFF;
uint8_t midiLastInNote = 0xFF;
uint8_t midiLastInChannel = 0xFF;
uint8_t midiLastInManual = 0xFF;
uint8_t midiLastProgram = 0xFF;


void manual_NoteOnOff(uint8_t manual, uint8_t note, uint8_t onOff);

void midiAllReset(){
 pipeProcessing = 0x80;
 init_Pipe();
}

void midiAllNotesOff(uint8_t channel){
 uint8_t splitRange = 0;
 while (splitRange < 4){
  uint8_t manual = midiInMap[channel][splitRange].manual;

  if (manual < 4) {

   uint8_t note = midiInMap[channel][splitRange].manualNote;

   for (uint8_t i = midiInMap[channel][splitRange].noteRange; i > 0; i--){
    manual_NoteOnOff(midiInMap[channel][splitRange].manual, note++, 0x00 | 0x80);
   }
   uint8_t midiChanel = midiOutMap[manual].hw_channel;
   if (midiChanel <= 15){

    serial1MIDISend(0xB0 | midiChanel);
    serial1MIDISend(0x7B);
    serial1MIDISend(0);

   }
  }



  splitRange++;
 }
}

void midi_ManualOff(uint8_t manual){

 if ((manual < 4) && (ManualNoteRange[manual].startNote != 0xFF) && (ManualNoteRange[manual].endNote != 0xFF)){
  for (uint8_t note = ManualNoteRange[manual].startNote; note <= ManualNoteRange[manual].endNote; note++){
   manual_NoteOnOff(manual,note,0x00 | 0x80);
  }
 }

 uint8_t midiChanel = midiOutMap[manual].hw_channel;
 if (midiChanel <= 15){

  serial1MIDISend(0xB0 | midiChanel);
  serial1MIDISend(0x7B);
  serial1MIDISend(0);

 }
}

void midi_AllManualsOff(){
 for (uint8_t manual = 0; manual < 4; manual++){
  midi_ManualOff(manual);
 }



}

void midi_CheckRxActiveSense(){
 if (midiRxActivceSensing != 0){

  if ((swTimer[3].counter == 0x00)) {

   midi_AllManualsOff();
   midiRxActivceSensing = 0;
  }
 }
}

void midi_CheckTxActiveSense(){


 if (!(((swTimer[8].counter != 0x00) && (swTimer[8].counter != 0xFF)))){

  
# 217 ".././Midi.c" 3
 for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) 
# 217 ".././Midi.c"
 {swTimer[8].counter = 200 / 20; swTimer[8].prescaler = (200 % 20) / 4;};
  if (midi_Setting.TxActivceSense) {
   midi_SendActiveSense();
  }

  midiTxLastCmd = 0x00;
 }

}



void midiInSysEx(){

 if ((midiLastCommand == 0xF0) && (midiDataByte[0] == 0x7D)){

  if (((midiDataByte[1] & 0xF0) == 0x40) || ((midiDataByte[1] & 0xF0) == 0x00)){


   if ((midiDataByte[3] == 0xA5) && (midiDataByteCount == 4)) {


    register_onOff(midiDataByte[3], ((midiDataByte[1] & 0xF0) == 0x40) ? 0x01 : 0x00);
   }
  }

 }
}

void midiIn_Process(uint8_t midiByte){
 if (midiByte > 0x7f) {


  if ((midiByte <= 0xFF) && (midiByte >= 0xF8)){

   if (midiByte == 0xFE) {
    midiRxActivceSensing = 1;
    
# 254 ".././Midi.c" 3
   for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) 
# 254 ".././Midi.c"
   {swTimer[3].counter = 500 / 20; swTimer[3].prescaler = (500 % 20) / 4;};
   } else if (midiByte == 0xFF){
    midiAllReset();
   }

  } else {

   midiLastCommand = midiByte;
   midiDataByteCount = 0;
   if ((midiByte >= 0x80) && (midiByte <= (0xB0 | 0x0F))) {

    midiDataByteExpected = 2;
   } else if ((midiByte >= 0xE0) && (midiByte <= (0xE0 | 0x0F))) {

    midiDataByteExpected = 2;
   } else if (midiByte == 0xF2) {

    midiDataByteExpected = 2;
   } else if (midiByte == 0xF0) {

    midiDataByteExpected = 0xFF;
   } else if ((midiByte >= 0xC0) && (midiByte <= (0xD0 | 0x0F))) {

    midiDataByteExpected = 1;
   } else if ((midiByte == 0xF1) || (midiByte == 0xF3)){

    midiDataByteExpected = 1;
   } else if (midiByte == 0xF7) {

   } else {

    midiDataByteExpected = 0;

   }
  }
 } else {

  if (midiDataByteCount < 8) {

   midiDataByte[midiDataByteCount++] = midiByte;
  }
  if (midiDataByteExpected != 0xFF) {

   if (midiDataByteCount >= midiDataByteExpected) {

    if (midiLastCommand < 0xF0) {

     uint8_t channel = midiLastCommand & 0x0F;
     uint8_t noteOnOff;
     switch (midiLastCommand & 0xF0) {

     case 0x80:
      noteOnOff = 0x00;
      midiNote_to_Manual(channel, midiDataByte[0], noteOnOff);
      break;
     case 0x90:
      if (midiDataByte[1] == 0) {

       noteOnOff = 0x00;
      } else {

       noteOnOff = 0x01;
      }
      midiNote_to_Manual(channel, midiDataByte[0], noteOnOff);
      break;
     case 0xB0:
      if (midiDataByte[0] == 0x7B) {
       midiAllNotesOff(channel);
      }
      break;
     case 0xC0:
      midi_ProgramChange(channel,midiDataByte[0]);
      break;

     }

    }

    midiDataByteCount = 0;
   }
  }
 }
}

void proc_ESPmidi(uint8_t midiBytesTransferred){


 (void) midiBytesTransferred;
 uint8_t channel = serESPMidiTmp[2] & 0x0F;
 uint8_t noteOnOff;
 switch (serESPMidiTmp[2] & 0xF0) {

 case 0x80:
  noteOnOff = 0x00;
  midiNote_to_Manual(channel, serESPMidiTmp[1], noteOnOff);
  break;
 case 0x90:
  if (serESPMidiTmp[0] == 0) {

   noteOnOff = 0x00;
  } else {

   noteOnOff = 0x01;
  }
  midiNote_to_Manual(channel, serESPMidiTmp[1], noteOnOff);
  break;
 case 0xB0:
  if (serESPMidiTmp[1] == 0x7B) {
   midiAllNotesOff(channel);
  }
  break;

 case 0:
  channel = serESPMidiTmp[1] & 0x0F;
  switch (serESPMidiTmp[1] & 0xF0) {
  case 0xC0:
   midi_ProgramChange(channel,serESPMidiTmp[0]);
   break;

  }
  break;
 }
}





void registers_CalcCount(){
 uint8_t count = 0;
 for (uint8_t regSec = 0; regSec < 8; regSec++){
  if ((registerMap[regSec].endReg != 0xFF) && (registerMap[regSec].endReg >= count)){

   count = registerMap[regSec].endReg+1;
  }
 }
 registerCount = count;
}

void init_Registers(){


 midi_RegisterChanged = 0xFF;

 for (uint8_t regSec = 0; regSec < 8; regSec++){
  registerMap[regSec].startReg = 0xFF;
  registerMap[regSec].endReg = 0xFF;
  registerMap[regSec].bitStart = 0;
 }
 if (eeprom_ReadReg() == 0xFF){
  registerCount = 0;
  log_putError(1,5,0);
 } else {
  registers_CalcCount();
 }

 if (eeprom_ReadProg() == 0xFF){

  for (uint8_t progNr = 0; progNr < 64; progNr++){
   for (uint8_t regNr = 0; regNr < (64 / 8); regNr++) {
    programMap[progNr].registers[regNr] = 0;
   }
   programMap[progNr].couplers = 0;
  }
  log_putError(1,6,0);
 }

 if (eeprom_ReadCCreg() == 0xFF){
  midi_ccReg.ccInRegOff = 0xFF;
  midi_ccReg.ccInRegOn = 0xFF;
  midi_ccReg.ccOutRegOff = 0xFF;
  midi_ccReg.ccOutRegOn= 0xFF;
  log_putError(1,10,0);
 }
}

ModulBitError_t regNr_to_moduleBit(uint8_t regNr){

 ModulBitError_t result;
 if ((regNr < registerCount) && (regNr < 64)) {

  RegisterMap_t *pRange;
  pRange = &(registerMap[0]);
  uint8_t i = 8;
  do {
   if ((regNr >= pRange->startReg) && (regNr <= pRange->endReg)) {

    result.error = 0x00;
    result.moduleBit = pRange->bitStart + (regNr - pRange->startReg);
    return (result);
   }
   pRange++;
  } while (--i > 0);
 }

 result.error = 0xFF;
 return (result);
}

uint8_t moduleBit_to_registerNr(uint8_t modulebit){
 RegisterMap_t * pSection = & (registerMap[0]);
 for (uint8_t section = 0; section < 8; section++){
  if ((modulebit >= pSection->bitStart) && (modulebit <= pSection->bitStart + pSection->endReg - pSection->startReg)) {

   return pSection->startReg + (modulebit - pSection->bitStart);
  }
 }
 return 0xFF;
}

uint8_t read_Register(uint8_t regNr, uint8_t mode){


 if (regNr < registerCount) {

  ModulBitError_t modBitComplette = regNr_to_moduleBit(regNr);
  if (modBitComplette.error == 0x00) {

   uint8_t modBit = modBitComplette.moduleBit;
   uint8_t bitNr = (modBit & 0x1f);
   uint8_t modulNr = (modBit >> 5);
   uint8_t mask = 1 << modulNr;
   if (((pipe[bitNr].pipeOut & mask) == 0) && ((mode & 0x02) != 0)) {

    return 0x01;
   } else if (((pipe[bitNr].pipeIn & mask & pipe_Module.AssnRead) != 0) && ((mode & 0x01) != 0)) {


    return 0x01;
   } else if (((pipe[bitNr].pipeOut & mask) != 0) && ((pipe[bitNr].pipeIn & mask & pipe_Module.AssnRead) != 0) && (mode == 0x04)){
    return 0x01;

   } else {
    return 0x00;
   }
  }
 }
 return 0x00;
}

uint8_t get_RegisterStatus(uint8_t regNr){


 uint8_t result = 0;
 if (regNr < registerCount) {

  ModulBitError_t modBitComplette = regNr_to_moduleBit(regNr);
  if (modBitComplette.error == 0x00) {

   uint8_t modBit = modBitComplette.moduleBit;
   uint8_t bitNr = (modBit & 0x1f);
   uint8_t modulNr = (modBit >> 5);
   uint8_t mask = 1 << modulNr;
   if ((pipe[bitNr].pipeOut & mask) == 0) {

    result |= 0x02;
   }
   if ((pipe[bitNr].pipeIn & mask & pipe_Module.AssnRead) != 0) {



    result |= 0x01;
   }
  }
 }
 return result;
}


uint8_t count_Registers(uint8_t mode){
 uint8_t result = 0;
 for (uint8_t regNr = 0; regNr < 64; regNr++){
  if (read_Register(regNr, mode) != 0x00 ){
   result++;
  }
 }
 return result;
}

uint8_t read_allRegister(uint8_t* resultPtr){
 uint8_t result = 0;

 uint8_t mask = 0;
 for (uint8_t regNr = 0; regNr < 64; regNr++){


  if ((regNr & 0x07) == 0) {

   mask = 0;
  }
  mask = (mask >> 1 );
  if (read_Register(regNr, 0x03) != 0x00 ){
   mask |= 0x80;
   result++;
  }
  if ((regNr & 0x07) == 0x07) {

   if (resultPtr != 
# 551 ".././Midi.c" 3 4
                   ((void *)0)
# 551 ".././Midi.c"
                       ) {
    *resultPtr++ = mask;
   }
  }
 }
 return result;
}


void register_onOff(uint8_t regNr, uint8_t onOff){

 if (regNr < registerCount) {

  ModulBitError_t modBitComplette = regNr_to_moduleBit(regNr);
  if (modBitComplette.error == 0x00) {

   uint8_t modBit = modBitComplette.moduleBit;
   uint8_t bitNr = (modBit & 0x1f);
   uint8_t modulNr = (modBit >> 5);
   if ((onOff & 0x01) != 0){

    pipe_on(bitNr,1 << modulNr);
   } else {

    pipe_off(bitNr,1 << modulNr);
   }
  }
 }

}

uint8_t program_toRegister(uint8_t program){

 uint8_t result = 0;
 if (program < 64){
  prog_set(program);
  uint8_t regBits;
  uint8_t regNr = 0;
  uint8_t *regBytePtr = &(programMap[program].registers[0]);
  for (uint8_t byteNr = 0; byteNr < (64 / 8); byteNr++){


   regBits = *(regBytePtr++);
   for (uint8_t bitNr = 0; bitNr < 8; bitNr++){
    if ((regBits & 0x01) != 0) {
     result++;
    }
    register_onOff(regNr, ((regBits & 0x01) == 0 ? 0x00 : 0x01));

    regBits = regBits >> 1;
    regNr++;
   }
  }
  Word_t couplers;
  couplers.wordval = programMap[program].couplers;
  setAllCouplers(couplers);
 }
 return result;
}

void midi_ProgramChange(uint8_t channel, uint8_t program){
 if (midi_Setting.AcceptProgChange != 0x00){

  uint8_t channelValid = 0x00;

  for (uint8_t splitCount = 0; splitCount < 4; splitCount++){
   if (midiInMap[channel][splitCount].manual != 0xFF){

    channelValid = 0xFF;
    break;
   }
  }
  if (channelValid == 0xFF) {

   program_toRegister(program);
   prog_set(program);
   midiLastProgram = program;
  }
 }



  if (midiThrough.OutChannel != 0xFF) {

   serial1MIDISend(0xC0 | midiThrough.OutChannel);

   serial1MIDISend(program);
  }

}


void midi_resetRegisters(){
 for (uint8_t i = 0; i < registerCount; i++){
  prog_set(0xFF);
  register_onOff(i,0x00);
 }
}

uint8_t register_toProgram(uint8_t program, uint8_t SaveEEProm){



 midi_resetRegisters();
 module_WaitOutputInput2Cycles();
 uint8_t result = 0;
 if (program < 64){
  uint8_t *regBytePtr = &(programMap[program].registers[0]);
  result = read_allRegister(regBytePtr);
 }
 programMap[program].couplers = getAllCouplers().wordval;
 if (SaveEEProm) {
  eeprom_UpdateProg();
 }
 return result;
}

uint8_t midi_RegisterMatchProgram(uint8_t program){


 uint8_t result = 0;
 uint8_t* progPtr = &(programMap[program].registers[0]);
 uint8_t tempReg = 0;
 uint8_t actualReg;
 for (uint8_t i = 0; i < registerCount; i++){
  if ((i & 0x07) == 0) {

   tempReg = * progPtr++;
  }
  actualReg = get_RegisterStatus(i);
  if ((tempReg & 0x01) != 0) {

   if (!(actualReg & 0x02)) {

    return 0xFF;
   }

  } else {

   if (actualReg & 0x02) {

    return 0xFF;
   } else if (actualReg & 0x01) {

    result++;
   }
  }
  tempReg = tempReg >> 1;
 }
 return result;
}

uint8_t midi_CountRegisterInProgram(uint8_t program){

 uint8_t result = 0;
 uint8_t* progPtr = &(programMap[program].registers[0]);
 uint8_t tempReg = 0;
 for (uint8_t i = 0; i < registerCount; i++){
  if ((i & 0x07) == 0) {

   tempReg = * progPtr++;
  }
  if ((tempReg & 0x01) == 1) {
   result++;
  }
  tempReg = tempReg >> 1;
 }
 return result;

}


uint8_t prog_Display;
uint8_t prog_UpdDisplay;

void prog_set(uint8_t prog){
 if (prog != prog_Display){
  prog_Display = prog;
  prog_UpdDisplay = 0xFF;
 }
}

void prog_toLcd(){
 if (prog_Display <= 63) {
  lcd_putc('P');
  lcd_putc('-');
  lcd_putc('A' + ((prog_Display >> 3) & 0x07));
  lcd_putc('1' + (prog_Display & 0x07));
  lcd_putc(' ');
 } else {
  lcd_blank(5);
 }
}

RegOut_t reg_Out[8] = {{0x40 +1,'1',10,14},{0x40 +6,' ',15,18},
{0x40 +10,'2',20,24},{0x40 +15,' ',25,29},{(0+20)+1,'P',0,4},{(0+20)+6,' ',5,9},
{0,' ',0xFF,0xFF},{0,' ',0xFF,0xFF}};

void init_RegOut(){
 if (eeprom_ReadRegOut() == 0xFF) {

  log_putError(1,9,0); }
}

void reg_toLCD(uint8_t readHWonly){

 for (uint8_t i = 0; i < 8; i++){
  lcd_goto(reg_Out[i].cursor);
  char myChar = reg_Out[i].manualChar;
  if ((myChar > ' ') && (myChar <= 0x7F)) {

   lcd_putc(myChar);
   lcd_putc(' ');
  }
  uint8_t reg = reg_Out[i].regStart;
  if (reg == 0xFF) {
   break;
  }
  while (reg <= reg_Out[i].regEnd) {
   if (reg == reg_Out[i].regEnd) {

    if (readHWonly == 0xFF) {
     lcd_putc(0x0A + ((get_RegisterStatus(reg) & 0x01) ? 1 : 0));
    } else {
     lcd_putc(0x0A + ((get_RegisterStatus(reg) & 0x02) ? 1 : 0));
    }
   } else {

    if (readHWonly == 0xFF) {
     uint8_t addChar = (get_RegisterStatus(reg++) & 0x01) ? 2 : 0;
     addChar += (get_RegisterStatus(reg) & 0x01) ? 1 : 0;
     lcd_putc(0x0C + addChar);
    } else {
     uint8_t addChar = (get_RegisterStatus(reg++) & 0x02) ? 2 : 0;
     addChar += (get_RegisterStatus(reg) & 0x02) ? 1 : 0;
     lcd_putc(0x0C + addChar);
    }
   }
   reg++;
  }
  lcd_putc(' ');
 }
}

void reg_ClearOnLCD(){
 for (uint8_t i = 0; i < 8; i++){
  lcd_goto(reg_Out[i].cursor);
  char myChar = reg_Out[i].manualChar;
  uint8_t spaceCount;
  spaceCount = (reg_Out[i].regEnd - reg_Out[i].regStart) + 1;
  spaceCount = (spaceCount + 1) >> 1;
  spaceCount += ((myChar > ' ') && (myChar <= 0x7F)) ? 2 : 0;
  lcd_blank(spaceCount);
 }
}



void init_Midi2Manual(){
 MidiInMap_t *pMidiInMap;
 pMidiInMap = &(midiInMap[0][0]);

 for (uint8_t i = 16 * 4; i > 0; i--){

  pMidiInMap->manual = 0xFF;
  pMidiInMap->midiNote = 0xFF;
  pMidiInMap->manualNote = 0xFF;
  pMidiInMap->noteRange = 0;
  pMidiInMap++;
 }

 if (eeprom_ReadMidiInMap() == 0xFF){
  midiEEPromLoadError = 0xFF;
  midiInMap[0][0].manual = 0;
  midiInMap[0][0].midiNote = 36;
  midiInMap[0][0].manualNote = 36;
  midiInMap[0][0].noteRange = 91 - 36 + 1;
  midiInMap[1][0].manual = 1;
  midiInMap[1][0].midiNote = 36;
  midiInMap[1][0].manualNote = 36;
  midiInMap[1][0].noteRange = 91 - 36 + 1;
  midiInMap[2][0].manual = 2;
  midiInMap[2][0].midiNote = 36;
  midiInMap[2][0].manualNote = 36;
  midiInMap[2][0].noteRange = 91 - 36 + 1;
  midiInMap[3][0].manual = 3;
  midiInMap[3][0].midiNote = 36;
  midiInMap[3][0].manualNote = 36;
  midiInMap[3][0].noteRange = 65 - 36 + 1;
  log_putError(1,1,0);
 }
 if (eeprom_ReadMidiThrough() == 0xFF){
  midiThrough.InChannel = 0xFF;
  midiThrough.OutChannel = 0xFF;
  log_putError(1,1,0);
 }
}

void init_Manual2Midi(){

 for (uint8_t i = 0; i << 4; i++){
  midiOutMap[i].hw_channel = 0xFF;
  midiOutMap[i].sw_channel = 0xFF;
 }
 if (eeprom_ReadMidiOutMap() == 0xFF){
  midiEEPromLoadError = 0xFF;

  midiOutMap[0].hw_channel = 0;
  midiOutMap[1].hw_channel = 1;
  midiOutMap[2].hw_channel = 2;
  midiOutMap[3].hw_channel = 3;
  midi_Setting.TxActivceSense = 0x00;
  midi_Setting.VelZero4Off = 0x00;
  midi_Setting.AcceptProgChange = 0xFF;
  log_putError(1,2,0);
 }
}

void midiNote_to_Manual(uint8_t channel, uint8_t note, uint8_t onOff){
 channel = channel & 0x0F;
 uint8_t found = 0;
 for (uint8_t i = 0; i < 4; i++){
  if (midiInMap[channel][i].manual < 4){

   int8_t noteBase0 = note - midiInMap[channel][i].midiNote;
   if ((noteBase0 >= 0) && (noteBase0 < midiInMap[channel][i].noteRange)) {

    uint8_t manual = midiInMap[channel][i].manual;
    uint8_t manNote = noteBase0 + midiInMap[channel][i].manualNote;
    if (onOff == 0x01) {
     midiLastInManual = manual;
     midiLastInNote = manNote;
    }
    manual_NoteOnOff(manual, manNote, onOff);
    found |= 0xFF;
   }
  }
 }
 if ((onOff == 0x01) && (found == 0)){

  midiLastInNote = note;
  midiLastInChannel = channel;
  midiLastInManual = 0xFF;
 }

 if (channel == midiThrough.InChannel){

  if (midiThrough.OutChannel != 0xFF) {

   serial1MIDISend(((onOff == 0x01) || (midi_Setting.VelZero4Off) ? 0x90 : 0x80) | midiThrough.OutChannel);

   serial1MIDISend(note);

   serial1MIDISend(((onOff == 0x00) && (midi_Setting.VelZero4Off)) ? 0 : 64);
  }
 }
}

ChannelNote_t Manual_to_MidiNote(uint8_t manual, uint8_t note){
 ChannelNote_t result = {0xFF,0xFF};
 if (manual < 4) {
  if (midiOutMap[manual].hw_channel != 0xFF) {
   result.hw_channel = midiOutMap[manual].hw_channel;
   result.note = note;

  }
 }
 return(result);
}



void Midi_updateManualRange(){
 for (uint8_t i = 0; i < 4; i++){
  uint8_t rangeEnd = 0;
  uint8_t rangeStart = 0xFF;
  for (uint8_t range = 0; range < 4; range++){
   if ((manualMap[i][range].startNote != 0xFF) && (manualMap[i][range].endNote != 0xFF)){
    if (manualMap[i][range].startNote < rangeStart) {
     rangeStart = manualMap[i][range].startNote;
    }
    if (manualMap[i][range].endNote > rangeEnd) {
     rangeEnd = manualMap[i][range].endNote;
    }
   }
   if ((rangeEnd == 0) || (rangeStart == 0xFF)){
    ManualNoteRange[i].startNote = 0xFF;
    ManualNoteRange[i].endNote = 0xFF;
   } else {
    ManualNoteRange[i].startNote = rangeStart;
    ManualNoteRange[i].endNote = rangeEnd;
   }
  }
 }
}

void init_Manual2Module(){
 for (int8_t i = 4 -1; i >= 0; i--){

  for (int8_t j = 4 -1; j >= 0; j--){
   manualMap[i][j].startNote = 0xFF;
   manualMap[i][j].endNote = 0xFF;
   manualMap[i][j].bitStart = 0;
  }
 }

 if (eeprom_ReadManualMap() == 0xFF){

  midiEEPromLoadError = 0xFF;
  log_putError(1,3,0);

  manualMap[0][0].startNote = 36;
  manualMap[0][0].endNote = 67;
  manualMap[0][0].bitStart = ((0 << 5) | (0));
  manualMap[0][1].startNote = 68;
  manualMap[0][1].endNote = 91;
  manualMap[0][1].bitStart = ((1 << 5) | (0));
  manualMap[1][0].startNote = 36;
  manualMap[1][0].endNote = 67;
  manualMap[1][0].bitStart = ((2 << 5) | (0));
  manualMap[1][1].startNote = 68;
  manualMap[1][1].endNote = 91;
  manualMap[1][1].bitStart = ((3 << 5) | (0));
  manualMap[2][0].startNote = 36;
  manualMap[2][0].endNote = 67;
  manualMap[2][0].bitStart = ((4 << 5) | (0));
  manualMap[2][1].startNote = 68;
  manualMap[2][1].endNote = 91;
  manualMap[2][1].bitStart = ((5 << 5) | (0));
  manualMap[3][0].startNote = 36;
  manualMap[3][0].endNote = 65;
  manualMap[3][0].bitStart = ((6 << 5) | (0));
  manualMap[4][0].startNote = 0;
  manualMap[4][0].endNote = 29;
  manualMap[4][0].bitStart = ((7 << 5) | (0));
 }
 Midi_updateManualRange();

}

ModulBitError_t manualNote_to_moduleBit(uint8_t manual, uint8_t note){

 ModulBitError_t result;
 if (manual < 4) {

  ManualMap_t *pRange;
  pRange = &(manualMap[manual][0]);
  uint8_t i = 4;
  do {
   if ((note >= pRange->startNote) && (note <= pRange->endNote)) {

    result.error = 0x00;
    result.moduleBit = pRange->bitStart + (note - pRange->startNote);
    return (result);
   }
   pRange++;
  } while (--i > 0);
 }

 result.error = 0xFF;
 return (result);
}

ManualNote_t moduleBit_to_manualNote(uint8_t moduleBit){



 ManualNote_t result;
 ManualMap_t *pRange;
 pRange = &(manualMap[0][0]);
 uint8_t manual = 0;
 do {
  for (uint8_t i = 4; i > 0; i--){
   if ((moduleBit >= pRange->bitStart) && (moduleBit <= pRange->bitStart + (pRange->endNote - pRange->startNote))) {

    result.manual = manual;
    result.note = pRange->startNote + (moduleBit - pRange->bitStart);
    return(result);
   }
   pRange++;
  }
  manual++;
 } while (manual <= 4);
 result.manual = 0xFF;


 return (result);
}

void manual_NoteOnOff(uint8_t manual, uint8_t note, uint8_t onOff){
 ModulBitError_t moduleInfo;
 moduleInfo = manualNote_to_moduleBit(manual, note);

 uint8_t modulNrMask = 1 << ((moduleInfo.moduleBit >> 5));
 uint8_t bitNr = (moduleInfo.moduleBit & 0x1f);
 if (moduleInfo.error == 0x00) {
  if (((modulNrMask & pipe_Module.AssnWrite) == 0) && ((onOff & 0x80) == 0)){

   onOff &= ~0x80;
   PipeMessage_t myMessage;
   myMessage.message8[0] = modulNrMask;
   myMessage.message8[1] = ((onOff == 0x01) ? 0x20 : 0x00 )| bitNr;
   pipeMsgPush(myMessage);
  }
  onOff &= ~0x80;
  if (onOff == 0x00) {

   pipe_off(bitNr,modulNrMask);
  } else {

   pipe_on(bitNr,modulNrMask);
  }

 }

 if (midiOutMap[manual].sw_channel != 0xFF){


  serial1MIDISend(((onOff == 0x01) || (midi_Setting.VelZero4Off) ? 0x90 : 0x80) | midiOutMap[manual].sw_channel);
  serial1MIDISend(note);

  serial1MIDISend(((onOff == 0x00)) ? 0 : 64);


 }
}



void midiKeyPress_Process(PipeMessage_t pipeMessage){
 serial0USB_logPipeIn(pipeMessage);
  uint8_t command = pipeMessage.message8[1] & 0xE0;
  uint8_t shiftBit = pipeMessage.message8[1] & 0x1F;
  uint8_t moduleBits = pipeMessage.message8[0];
  ManualNote_t manualNote;
  ChannelNote_t chanNote;
  if ((command == 0x20) || (command == 0x00)){

  for (uint8_t i = 0; i < 8; i++){

   if ((moduleBits & 0x01) != 0) {

    manualNote = moduleBit_to_manualNote(((i << 5) | (shiftBit)));

    if (manualNote.manual != 0xFF){


     chanNote = Manual_to_MidiNote(manualNote.manual, manualNote.note);
     if (chanNote.hw_channel != 0xFF){

      serial1MIDISend(((command == 0x20) || (midi_Setting.VelZero4Off) ? 0x90 : 0x80) | chanNote.hw_channel);

      serial1MIDISend(chanNote.note);

      serial1MIDISend(((command == 0x00) && (midi_Setting.VelZero4Off)) ? 0 : 64);

      if (command == 0x20) {

       midiLastOutManual = manualNote.manual;
       midiLastOutNote = manualNote.note;
      }
     }

     uint8_t noteOnOff = (command == 0x20 ? 0x01 : 0x00);

     if (manualNote.manual == 0){
      if (midi_Couplers[0] == 0xFF){
       manual_NoteOnOff(1, manualNote.note, noteOnOff);
      }
      if (midi_Couplers[1] == 0xFF){
       manual_NoteOnOff(2, manualNote.note, noteOnOff);
      }
      if (midi_Couplers[3] == 0xFF){
       manual_NoteOnOff(3, manualNote.note, noteOnOff);
      }
     } else if (manualNote.manual == 1) {
      if (midi_Couplers[2] == 0xFF){
       manual_NoteOnOff(2, manualNote.note, noteOnOff);
      }
      if (midi_Couplers[4] == 0xFF){
       manual_NoteOnOff(3, manualNote.note, noteOnOff);
      }
      if (midi_Couplers[6] == 0xFF){
       manual_NoteOnOff(0, manualNote.note, noteOnOff);
      }
     } else if (manualNote.manual == 2) {
      if (midi_Couplers[5] == 0xFF){
       manual_NoteOnOff(3, manualNote.note, noteOnOff);
      }
      if (midi_Couplers[7] == 0xFF){
       manual_NoteOnOff(0, manualNote.note, noteOnOff);
      }
      if (midi_Couplers[8] == 0xFF){
       manual_NoteOnOff(1, manualNote.note, noteOnOff);
      }
     } else if (manualNote.manual == 3) {
      if (midi_Couplers[9] == 0xFF){
       manual_NoteOnOff(0, manualNote.note, noteOnOff);
      }
      if (midi_Couplers[10] == 0xFF){
       manual_NoteOnOff(1, manualNote.note, noteOnOff);
      }
      if (midi_Couplers[11] == 0xFF){
       manual_NoteOnOff(2, manualNote.note, noteOnOff);
      }
     }
    }

    midi_RegisterChanged = moduleBit_to_registerNr(((i << 5) | (shiftBit))) | (command == 0x20 ? 0x80 : 0);

   }
   moduleBits >>= 1;
  }
  }
}



void midiSendAllNotesOff(){
 if (midiThrough.OutChannel <= 15) {
  serial1MIDISend(0xB0 | (midiThrough.OutChannel));
  serial1MIDISend(0x7B);
  serial1MIDISend(0);
 }
# 1183 ".././Midi.c"
}

void midi_SendActiveSense(){
 serial1MIDISend(0xFE);
}
