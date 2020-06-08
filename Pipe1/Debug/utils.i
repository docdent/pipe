# 1 ".././utils.c"
# 1 "E:\\Users\\Anwender\\Sync\\Atmel Studio\\Pipe1\\Pipe1\\Debug//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 ".././utils.c"







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
# 9 ".././utils.c" 2
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
# 10 ".././utils.c" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\interrupt.h" 1 3
# 11 ".././utils.c" 2

# 1 ".././utils.h" 1
# 9 ".././utils.h"
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
# 13 ".././utils.c" 2
# 1 ".././lcd_u.h" 1
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
# 14 ".././utils.c" 2
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
# 1 ".././message.h" 1
# 11 ".././message.h"
# 1 ".././utils.h" 1
# 12 ".././message.h" 2




# 15 ".././message.h"
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
# 16 ".././hwtimer.h" 2
# 31 ".././hwtimer.h"
extern volatile uint8_t time_Uptime[4];
# 87 ".././hwtimer.h"
typedef struct {
 uint8_t counter;
 uint8_t prescaler;
} Timer;
extern volatile Timer swTimer[11];
extern volatile uint8_t time_Uptime[4];
extern volatile uint8_t time_UpTimeUpdated;

extern void init_HwTimer();
extern void init_Timers();
extern void init_ADC();
extern void init_Pipe();
# 140 ".././hwtimer.h"
typedef struct {
 uint8_t mux;
 uint8_t ADCval;
 uint8_t key;

 uint8_t keyRepeating;
 uint16_t keyTimer;
} KeyInfo;
extern volatile KeyInfo adcKeys[1];

extern uint8_t keyWants[6];
# 173 ".././hwtimer.h"
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
# 208 ".././hwtimer.h"
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
# 15 ".././utils.c" 2

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
# 276 ".././Midi.h"
extern uint8_t midi_Couplers[12];

typedef struct{
 uint8_t dest;
 uint8_t source;
} CplInfo_t;
extern const __flash CplInfo_t cplInfo[12];

extern uint8_t set_Coupler(uint8_t);
# 17 ".././utils.c" 2

const char cr_lf [] 
# 18 ".././utils.c" 3
                   __attribute__((__progmem__)) 
# 18 ".././utils.c"
                           = "\r\n";
char string_Buf[64];


Longint_t editLong;
uint8_t editByte;

uint8_t nibbleToChr(uint8_t myNibble){
 if (myNibble > 9){
  return ('A'+myNibble-10);
 } else {
  return ('0'+myNibble);
 }
}



void lcd_hexout(uint8_t hexNumber){
 uint8_t nibble = hexNumber >> 4;
 lcd_putc( (nibble > 9 ) ? 'A'-10+nibble : '0'+nibble);
 nibble = hexNumber & 0x0F;
 lcd_putc( (nibble > 9 ) ? 'A'-10+nibble : '0'+nibble);
 }

void lcd_longout(){

 uint8_t hexNumber;
 for (int8_t i = 3; i >= 0; i--){
  hexNumber = editLong.byteval[i];
  uint8_t nibble = hexNumber >> 4;
  lcd_putc( (nibble > 9 ) ? 'A'-10+nibble : '0'+nibble);
  nibble = hexNumber & 0x0F;
  lcd_putc( (nibble > 9 ) ? 'A'-10+nibble : '0'+nibble);
 }
}

void lcd_dec2out(uint8_t val){
 if (val > 99) {
  lcd_putc('-');
  lcd_putc('-');
 } else {
  uint8_t tens = 0;
  while (val > 9) {
   val -= 10;
   tens++;
  }
  lcd_putc('0'+tens);
  lcd_putc('0'+val);
 }
}

char* putChar_Dec2(uint8_t val, char* pOutput) {
 if (val > 99) {
  *(pOutput++) = '-';
  *(pOutput++) = '-';
 } else {
  uint8_t tens = 0;
  while (val > 9) {
   val -= 10;
   tens++;
  }
  *(pOutput++) = '0'+tens;
  *(pOutput++) = '0'+val;
 }
 *pOutput = 0;
 return pOutput;
}

char* putChar_Dec(uint8_t val, char* pOutput) {
 uint8_t hundreds = 0;
 uint8_t weHadHundreds = 0x00;
 while (val > 99) {
  val -= 100;
  hundreds++;
 }
 if (hundreds > 0){
  *(pOutput++) = '0'+hundreds;
  weHadHundreds = 0xFF;
 }
 uint8_t tens = 0;
 while (val > 9) {
  val -= 10;
  tens++;
 }
 if ((tens > 0) || (weHadHundreds == 0xFF)){
  *(pOutput++) = '0'+tens;
 }
 *(pOutput++) = '0'+val;
 *pOutput = 0;
 return pOutput;
}


char* putChar_hex(uint8_t val, char* pOutput){
 uint8_t nibble = val >> 4;
 *(pOutput++) = (nibble > 9 ) ? 'A'-10+nibble : '0'+nibble;
 nibble = val & 0x0F;
 *(pOutput++) = (nibble > 9 ) ? 'A'-10+nibble : '0'+nibble;
 *pOutput = 0;
 return pOutput;
}

char* putChar_MidiChan(uint8_t channel, char* pOutput){
 if (channel > 15){
  *pOutput++ = 'n';
  *pOutput++ = 'o';
 } else {
  channel++;
  if (channel > 9){
   *pOutput++ = '1';
   channel -= 10;
  } else {
   *pOutput++ = ' ';
  }
  *pOutput++ = '0'+channel;
 }
 *pOutput = 0;
 return pOutput;
}

char* putChar_word(uint16_t val, char* pOutput){
 pOutput = pOutput + 4;
 *pOutput = 0;
 uint8_t nibble;
 for (uint8_t i = 0; i < 4; i++){
  nibble = val & 0x0F;
  *(--pOutput) = (nibble > 9 ) ? 'A'-10+nibble : '0'+nibble;
  val = val >> 4;
 }
 return pOutput+4;
}

char* putChar_long(uint32_t val, char* pOutput){
 pOutput = pOutput + 8;
 *pOutput = 0;
 uint8_t nibble;
 for (uint8_t i = 0; i < 4; i++){
  nibble = val & 0x0F;
  *(--pOutput) = (nibble > 9 ) ? 'A'-10+nibble : '0'+nibble;
  val = val >> 4;
 }
 return pOutput+4;
}


char* putChar_Note(uint8_t midiNote, char* pOutput){
 char prefix;
 uint8_t octave = 0;
 uint8_t note = midiNote;
 if (note > 0x7F) {
  *pOutput++ = '-';
  *pOutput++ = 'n';
  *pOutput++ = '-';
  *pOutput++ = 0;
 } else {
  prefix = '_';
  while(note >= 12){
   note = note-12;
   octave++;
  }
  if (note == 11){
   *pOutput++ = 'H';
  } else if (note < 5) {

   *pOutput++ = 'C' + (note >> 1);
   if ((note & 0x01) == 0x01) {
    prefix = '#';
   }
  } else {

   if (note > 8) {

    *pOutput++ = 'A';
   } else {

    *pOutput++ = 'F' + ((note-5) >> 1);
   }
   if ((note & 0x01) == 0x00) {
    prefix = '#';
   }
  }
  *pOutput++ = prefix;
  if (octave == 0){
   *pOutput++ = 'm';
  } else if (octave < 12) {
   *pOutput++ = '0'+ octave-1;
  } else {
   *pOutput++ = '-';
  }
  }
 *pOutput = 0;
 return pOutput;
}

char* putChar_Manual(uint8_t manual, char* pOutput){
 if (manual < 3){
  *pOutput++ = '3' - (manual - 0);
 } else if (manual == 3) {
  *pOutput++ = 'P';
 } else {
  *pOutput++ ='-';
 }
 *pOutput = 0;
 return pOutput;
}

extern char* putString_P(const __flash char* pSourceString, char* pOutput){
 uint8_t count = 0;
 do {
  if (*pSourceString == 0){
   return pOutput;
  }
  *pOutput++ = *pSourceString++;
 } while (count++ < 20);
 return pOutput;
}

char* putString_Prog(char* pOutput, uint8_t progNr){
 *pOutput++ = 'P';
 *pOutput++ = 'A'+ ((progNr >> 3) & 0x07);
 *pOutput++ = '1'+ (progNr & 0x07);
 return pOutput;
}

void lcd_decout(uint8_t decNumber){
 uint8_t nibble = 0;
 while (decNumber >= 100) {
  nibble++;
  decNumber -= 100;
 }
 lcd_putc('0'+nibble);
 nibble = 0;
 while (decNumber >= 10) {
  nibble++;
  decNumber -= 10;
 }
 lcd_putc('0'+nibble);
 nibble = decNumber;
 lcd_putc('0'+nibble);
}

void lcd_wordout(uint16_t hexNumber){
 uint8_t byteVal = hexNumber >> 8;
 lcd_hexout(byteVal);
 byteVal = hexNumber &0xFF;
 lcd_hexout(byteVal);
}

uint8_t lcd_noteOut(uint8_t noteNr){

 uint8_t octave = 0;
 char char1 = ' ';
 char char2 = '#';
 char char3;
 if (noteNr > 127){

  char1 = '-';
  char2 = '-';
  char3 = '-';
 } else {
  while (noteNr >= 12) {
   octave++;
   noteNr -= 12;
  }
  switch (noteNr){
   case 0:
    char2 = 0xA5;
   case 1:
    char1 = 'C';
   break;
   case 2:
    char2 = 0xA5;
   case 3:
    char1 = 'D';
   break;
   case 4:
    char1 = 'E';
    char2 = 0xA5;
   break;
   case 5:
    char2 = 0xA5;
   case 6:
    char1 = 'F';
   break;
   case 7:
    char2 = 0xA5;
   case 8:
    char1 = 'G';
   break;
   case 9:
    char2 = 0xA5;
   case 10:
    char1 = 'A';
   break;
   case 11:
    char1 = 'H';
    char2 = 0xA5;
   break;
  }
  if (octave == 0) {
   char3 = '-';
  } else {
   char3 = '0'+octave-1;
  }
 }
 lcd_putc(char1);
 lcd_putc(char2);
 lcd_putc(char3);
 return(3);
}

void lcd_ModBitOut(uint8_t modBit){
 lcd_putc('M');
 lcd_putc('0'+(modBit >> 5));
 lcd_putc('B');
 modBit = (modBit & 0x1f);
 uint8_t nibble = '0';
 while (modBit > 10){
  nibble++;
  modBit -= 10;
 }
 lcd_putc(nibble);
 lcd_putc('0'+modBit);
}

void lcd_ManualOut(uint8_t manual){

 if (manual > 3) {
  lcd_putc('-');
 } else {
  if (manual == 3){
   lcd_putc('P');
  } else {
   lcd_putc('I');
   if (manual < 2) {
    lcd_putc('I');
    if (manual < 1) {
     lcd_putc('I');
    }
   }
  }
 }
}

void lcd_ChannelOut(uint8_t channel){
 channel &= 0x0F;
 channel++;
 if (channel > 9) {
  lcd_putc('1');
  channel = channel-10;
 }
 lcd_putc('0'+channel);
}

void lcd_ManualOutDec(uint8_t manual){

 if (manual > 3) {
  lcd_putc('-');
 } else if (manual == 3){
  lcd_putc('P');
 } else {
  lcd_putc('3'-manual);
 }
}

void lcd_blank(uint8_t count){
 while (count-- != 0){
  lcd_putc(' ');
 }
}

void lcd_clrEol(){
 uint8_t i = 0;

 while ((lcd_cursorPos != 20) && (lcd_cursorPos != (0x40+20))
  && (lcd_cursorPos != (20+20)) && (lcd_cursorPos != (0x40+20+20)) && (i++ < 20)){
  lcd_putc(' ');
 }
}

void lcd_waitSymbolOn(){
 uint8_t saveCursor = lcd_cursorPos;
 lcd_goto(0 +12);
 lcd_putc(0xA1);
 lcd_goto(saveCursor);
}

void lcd_waitSymbolOff(){
 uint8_t saveCursor = lcd_cursorPos;
 lcd_goto(0 +12);
 lcd_putc(' ');
 lcd_goto(saveCursor);
}


uint8_t chekcDecNibbles(uint8_t myNibbles[3]){
 if ((myNibbles[0] + 10*myNibbles[1] + 100*myNibbles[2]) > 255) {
  return(0xFF);
 } else {
  return(0);
 }
}



const char __flash keylabel_up [] = "\x08";
const char __flash keylabel_down [] = "\x09";
const char __flash keylabel_right [] = "\x7E";
const char __flash keylabel_left [] = "\x7F";
const char __flash keylabel_plus [] = "+";
const char __flash keylabel_minus [] = "-";
const char __flash keylabel_onoff [] = "Ein" "\x80";
const char __flash keylabel_on [] = "\x7E" "ein";
const char __flash keylabel_off [] = "\x7E" "aus";
const char __flash keylabel_exit [] = "Exit";
const char __flash keylabel_text [] = "Text" "\x80";
const char __flash keylabel_0 [] = "0";
const char __flash keylabel_1 [] = "1";

static char labelBuffer [4 * 5];

void keylabel_set(uint8_t keyNr, const __flash char* labelPStr){
 const __flash char* tempLabelPStr = labelPStr;
 uint8_t labelLen = 0;
 if (keyNr < 4){
  while ((*tempLabelPStr++ != 0) && (labelLen <5)) {
   labelLen++;
  }
 }
 char * charBufPtr = & labelBuffer[keyNr*5];
 uint8_t i = 0;
 uint8_t startText = (5 - labelLen) / 2;
 uint8_t startEndSpaces = startText + labelLen;
 while (i < 5){
  if ((i < startText) || (i >= startEndSpaces)){
   *charBufPtr = ' ';
  } else {
   *charBufPtr = *labelPStr++;
  }
  charBufPtr++;
  i++;
 }
}

void keylabel_clr(uint8_t keyNr){
 char* charPtr = & labelBuffer[keyNr * 5];
 for (uint8_t i = 0; i < 5; i++){
  *charPtr++ = ' ';
 }
}

void keylabel_toLCD(){
 uint8_t oldCursor = lcd_cursorPos;
 lcd_goto((0x40+20));
 char *pChar = &labelBuffer[0];
 for (uint8_t i = 0; i < (4 * 5); i++){
  lcd_putc(*pChar++);
 }
 lcd_goto(oldCursor);
}

uint8_t keylabel_statcheck(uint8_t keyNr, uint8_t status){

 char* charPtr = & labelBuffer[keyNr * 5];
 uint8_t result = 0;
 for (uint8_t i = 0; i < 5; i++){
  uint8_t tempChar = *charPtr;
  if ((status == 0) && (tempChar == 0x2A)) {
   *charPtr = 0x80;
   result = 0xFF;
  } else if ((status != 0) && (tempChar == 0x80)) {
   *charPtr = 0x2A;
   result = 0xFF;
  }
  charPtr++;
 }
 return result;
}


uint8_t get_StrLenP(const __flash char* pString){
 uint8_t result = 0;
 do
 {
  if (*pString == 0) {
   return result;
  }
  pString++;
 } while (++ result < 32);
 return result;
}

uint8_t get_StrLen(const char* pString){
 uint8_t result = 0;
 do
 {
  if (*pString == 0) {
   return result;
  }
  pString++;
 } while (++ result < 32);
 return result;
}

extern uint8_t reverse_Bits(uint8_t val){
 uint8_t result = 0;
 for (uint8_t i = 0; i < 8; i++) {
  result = result << 1;
  result = result | (val & 0x01);
  val = val >> 1;
 }
 return result;
}
