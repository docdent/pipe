# 1 ".././test.c"
# 1 "E:\\Users\\Anwender\\Sync\\Atmel Studio\\Pipe1\\Pipe1\\Debug//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 ".././test.c"







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
# 9 ".././test.c" 2
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
# 10 ".././test.c" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\interrupt.h" 1 3
# 11 ".././test.c" 2
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
# 12 ".././test.c" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 1 3 4
# 149 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 328 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4
typedef int wchar_t;
# 13 ".././test.c" 2

# 1 ".././lcd_u.h" 1
# 74 ".././lcd_u.h"

# 74 ".././lcd_u.h"
extern uint8_t lcd_cursorPos;


extern void lcd_write_nibble(uint8_t data);
extern void lcd_write_command(uint8_t data);
extern void lcd_write_character(uint8_t data);

extern void lcd_init();
extern void lcd_clrscr();
extern void lcd_home();
extern void lcd_goto(uint8_t pos);
extern void lcd_putc(char c);
extern void lcd_puts(const char *s);
extern void lcd_puts_P(const char *progmem_s);
# 15 ".././test.c" 2
# 1 ".././initio.h" 1
# 14 ".././initio.h"
extern void init_iopins (void);
# 16 ".././test.c" 2
# 1 ".././message.h" 1
# 13 ".././message.h"
extern void init_message (void);
extern void message_push (uint8_t msg);
extern uint8_t message_get (void);
extern uint8_t message_status (void);
extern volatile uint8_t msgOverflow;
# 60 ".././message.h"
typedef union {
 uint16_t Message16;
 uint8_t message8[2];
} PipeMessage_t;

extern void pipeMsgInit (void);
extern void pipeMsgPush (PipeMessage_t message);
extern PipeMessage_t pipeMsgGet (void);
extern uint8_t pipeMsgStatus (void);
extern volatile uint8_t msgPipeOverflow;
# 17 ".././test.c" 2
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
# 54 ".././hwtimer.h"
typedef struct {
 uint8_t counter;
 uint8_t prescaler;
} Timer;
extern volatile Timer swTimer[6];
extern volatile uint8_t time_Uptime[4];
extern volatile uint8_t time_UpTimeUpdated;

extern void init_HwTimer();
extern void init_Timers();
extern void init_ADC();
extern void init_Pipe();
# 106 ".././hwtimer.h"
typedef struct {
 uint8_t mux;
 uint8_t ADCval;
 uint8_t key;

 uint8_t keyRepeating;
 uint16_t keyTimer;
} KeyInfo;
extern volatile KeyInfo adcKeys[1];

extern uint8_t keyWants[6];
# 139 ".././hwtimer.h"
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
extern uint8_t pipe_ModuleAssnRead;
extern uint8_t pipe_ModuleAssnWrite;



extern void init_PipeModules();
extern uint32_t test_PipeModule(uint8_t moduleNr);
# 18 ".././test.c" 2
# 1 ".././utils.h" 1
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

extern char* putChar_Dec2(uint8_t val, char* pOutput);
extern char* putChar_hex(uint8_t val, char* pOutput);
extern char* putChar_long(uint16_t val, char* pOutput);
extern char* putChar_Note(uint8_t note, char* pOutput);
extern char* putChar_Manual(uint8_t manual, char* pOutput);

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

extern void keylabel_set(uint8_t keyNr, const __flash char* labelPStr);
extern void keylabel_toLCD();
extern void keylabel_clr(uint8_t keyNr);
extern uint8_t keylabel_statcheck(uint8_t keyNr, uint8_t status);
# 95 ".././utils.h"
extern char string_Buf[40];

extern const char cr_lf [] 
# 97 ".././utils.h" 3
                          __attribute__((__progmem__))
# 97 ".././utils.h"
                                 ;
# 19 ".././test.c" 2
# 1 ".././serial.h" 1
# 34 ".././serial.h"
extern void init_Serial0SerUSB();
extern void serial0SER_USBSend(uint8_t data);
extern void serial0SER_USB_sendStringP(const char *progmem_s);
extern void serial0SER_USB_sendString(char *s);
extern void serial0SER_USB_sendCRLF();
extern uint8_t serial0SER_USBReadRx();

extern volatile uint8_t serusbRxInIndex;
extern volatile uint8_t serusbRxOutIndex;
extern volatile uint8_t serusbTxOutIndex;
extern volatile uint8_t serusbTxInIndex;
extern volatile uint8_t serusbOvflFlag;
extern volatile uint8_t serusb_Active;

extern uint8_t serUsbRxBuffer[64];
extern uint8_t serUsbTxBuffer[256];
extern volatile uint16_t midiTxBytesCount;
extern volatile uint16_t midiRxBytesCount;
# 77 ".././serial.h"
extern void init_Serial1MIDI();
extern void serial1MIDISend(uint8_t data);
extern uint8_t serial1MIDIReadRx();

extern volatile uint8_t midiRxInIndex;
extern volatile uint8_t midiRxOutIndex;
extern volatile uint8_t midiTxOutIndex;
extern volatile uint8_t midiTxInIndex;
extern uint8_t midiRxBuffer[32];
extern uint8_t midiTxBuffer[32];
extern volatile uint16_t midiTxBytesCount;
extern volatile uint16_t midiRxBytesCount;
extern volatile uint8_t midiRxOvflCount;
extern volatile uint8_t midiTxOvflCount;
# 20 ".././test.c" 2
# 1 ".././menu.h" 1







# 1 ".././hw_defs.h" 1
# 9 ".././menu.h" 2
# 48 ".././menu.h"
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
# 146 ".././menu.h"
extern const __flash Menu_t * menuStack[16];

uint8_t lcdData[10];




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
extern void menuClearDataDisp();
extern void menuClearExtraDisp();
extern void menuDisplayValue();
extern void menuTextOut(const __flash char* pChar, char finalChar);
extern void menuCursorSetDataNibble();

extern void nibbleToData();
extern void nibbleChange(uint8_t nibbleNr , int8_t addValue);
uint8_t nibbleCheckOvfl(int8_t myNibble);
extern void LCDStringOut();
extern void nibbleToLCDstring();
extern void dataToNibbles();
# 209 ".././menu.h"
typedef struct{
 const __flash struct Menu *pSelMenu;
} SoftKey_List_t;

extern SoftKey_List_t soft_Key[4];

extern void init_SoftKeys();
extern void softKey_Set(const __flash Menu_t* pSoftKey, uint8_t nrSoftKey);
extern void softKeys_toLCD();
extern uint8_t softKey_MessageKey_ToSoftKeyNr(uint8_t messageKey);
extern uint8_t softKey_Execute(uint8_t nrSoftKey, uint8_t myMessage);





void menu_Init(const __flash Menu_t* newMenu, const __flash char* pTitle);
extern void menu_InitLCD();
extern uint8_t menu_ProcessMessage(uint8_t message);
extern void menu_ClearAllDisp();

extern const char sw_version [] 
# 230 ".././menu.h" 3
                               __attribute__((__progmem__))
# 230 ".././menu.h"
                                      ;
extern const char HelloMsg [] 
# 231 ".././menu.h" 3
                             __attribute__((__progmem__))
# 231 ".././menu.h"
                                    ;
# 21 ".././test.c" 2

uint32_t pipe_getInput(uint8_t moduleNr){
 uint32_t result = 0;
 uint8_t moduleMask = (1 << moduleNr);
 Pipe_t *myPipe;
 myPipe = &(pipe[32 -1]);
 for (uint8_t i = 0; i < 32; i++) {
  result = result << 1;
  if ((myPipe->pipeInStat & moduleMask) != 0) {
   result |= 1;
  }
  myPipe--;
 }
 return (result);
}

void pipe_setOutput(uint8_t moduleNr, uint32_t outVal){

 uint8_t moduleMask = (1 << moduleNr);
 Pipe_t *myPipe;
 myPipe = &(pipe[0]);
 for (uint8_t i = 0; i < 32; i++) {
  if ((outVal & 1) != 0) {

   myPipe->pipeOut &= ~moduleMask;
  } else {

   myPipe->pipeOut |= moduleMask;
  }
  outVal = outVal >> 1;
  myPipe++;
 }
}

uint32_t pipe_getOutput(uint8_t moduleNr){

 uint32_t result = 0;
 uint8_t moduleMask = (1 << moduleNr);
 Pipe_t *myPipe;
 myPipe = &(pipe[32 -1]);
 for (uint8_t i = 0; i < 32; i++) {
  result = result << 1;
  if ((myPipe->pipeOut & moduleMask) == 0) {
   result |= 1;
  }
  myPipe--;
 }
 return (result);
}

uint8_t test_pipeIO(){
 uint8_t moduleNr = 0;




 uint8_t status = 1;
 uint8_t retCode;
 while (status != 0){
  switch (status){
   case 1:
    lcd_clrscr();
    lcd_putc('M');
    lcd_putc(':');
    editByte = moduleNr ;
    retCode = lcd_edit_byte(0x02);
    moduleNr = editByte & 0x07;
    if (moduleNr != editByte) {
     lcd_goto(0x02);
     lcd_hexout(moduleNr);
    }
    if ((retCode == 1) || (retCode == 5)) {
     status = 2;
    } else if (retCode == 4) {
     status = 0;
    }
    break;
   case 2:
    while (status == 2) {
     lcd_goto(0x05);
     editLong.longval = pipe_getInput(moduleNr);
     lcd_longout();
     
# 103 ".././test.c" 3
    for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) 
# 103 ".././test.c"
    {swTimer[0].counter = 100 / 20; swTimer[0].prescaler = (100 % 20) / 4;};;
     while ((message_status() == 0x00) && (((swTimer[0].counter != 0x00) && (swTimer[0].counter != 0xFF))));
     if (message_status() == 0x00) {

     } else {
      retCode = message_get();
      if ((retCode == 3) || (retCode == 1) || (retCode == 5)) {
       status = 3;
      } else if ((retCode == 4) || (retCode == 2)) {
       status = 1;
      }
     }
    }
    break;
   case 3:
    editLong.longval = pipe_getOutput(moduleNr);
    retCode = lcd_edit_longint(0x45);
    pipe_setOutput(moduleNr, editLong.longval);
    editLong.longval = pipe_getOutput(moduleNr);
    lcd_goto(0x45);
    lcd_longout();
    if ((retCode == 4)) {
     status = 1;
    } else {
     status = 2;
    }
    break;
  }
 }
 return(status);
}
const char test_text1 [] 
# 134 ".././test.c" 3
                        __attribute__((__progmem__)) 
# 134 ".././test.c"
                                = "SEL:start IO-Pins";
const char test_text2 [] 
# 135 ".././test.c" 3
                        __attribute__((__progmem__)) 
# 135 ".././test.c"
                                = "</> other test";

uint8_t test_PipePins(){
 uint8_t repeating = 1;
 uint8_t result;
 while (repeating) {
  lcd_clrscr();
  lcd_puts_P(test_text1);
  lcd_goto(0x040);
  lcd_puts_P(test_text2);
  while (message_status() == 0x00);
  result = message_get();
  if (result == 5) {
   
# 148 ".././test.c" 3
  __asm__ __volatile__ ("cli" ::: "memory")
# 148 ".././test.c"
       ;
   
# 149 ".././test.c" 3
  (*(volatile uint8_t *)((0x13) + 0x20)) 
# 149 ".././test.c"
               = 
# 149 ".././test.c" 3
                 (*(volatile uint8_t *)((0x13) + 0x20)) 
# 149 ".././test.c"
                              | ((1 << 0) | (1 << 1) | (1 << 2));
   lcd_clrscr();
   
# 151 ".././test.c" 3
  (*(volatile uint8_t *)((0x0B) + 0x20)) 
# 151 ".././test.c"
               &= ~(1 << 7);
   
# 152 ".././test.c" 3
  (*(volatile uint8_t *)((0x14) + 0x20)) 
# 152 ".././test.c"
                &= ~((1 << 0) | (1 << 1) | (1 << 2));
   
# 153 ".././test.c" 3
  (*(volatile uint8_t *)((0x08) + 0x20)) 
# 153 ".././test.c"
               = 0;
   _delay_ms(1500);
   lcd_putc('O');
   lcd_putc('E');
   
# 157 ".././test.c" 3
  (*(volatile uint8_t *)((0x0B) + 0x20)) 
# 157 ".././test.c"
               |= (1 << 7);
   _delay_ms(1500);
   
# 159 ".././test.c" 3
  (*(volatile uint8_t *)((0x0B) + 0x20)) 
# 159 ".././test.c"
               &= ~(1 << 7);
   lcd_goto(0);
   lcd_putc('C');
   lcd_putc('L');
   
# 163 ".././test.c" 3
  (*(volatile uint8_t *)((0x14) + 0x20)) 
# 163 ".././test.c"
                |= (1 << 0);
   _delay_ms(1500);
   
# 165 ".././test.c" 3
  (*(volatile uint8_t *)((0x14) + 0x20)) 
# 165 ".././test.c"
                &= ~(1 << 0);
   lcd_goto(0);
   lcd_putc('L');
   lcd_putc('P');
   
# 169 ".././test.c" 3
  (*(volatile uint8_t *)((0x14) + 0x20)) 
# 169 ".././test.c"
                |= (1 << 1);
   _delay_ms(1500);
   
# 171 ".././test.c" 3
  (*(volatile uint8_t *)((0x14) + 0x20)) 
# 171 ".././test.c"
                &= ~(1 << 1);
   lcd_goto(0);
   lcd_putc('L');
   lcd_putc('C');
   
# 175 ".././test.c" 3
  (*(volatile uint8_t *)((0x14) + 0x20)) 
# 175 ".././test.c"
                |= (1 << 2);
   _delay_ms(1500);
   
# 177 ".././test.c" 3
  (*(volatile uint8_t *)((0x14) + 0x20)) 
# 177 ".././test.c"
                &= ~(1 << 2);
   lcd_goto(0);
   lcd_putc('D');
   lcd_putc('P');
   
# 181 ".././test.c" 3
  (*(volatile uint8_t *)((0x08) + 0x20)) 
# 181 ".././test.c"
               = 0xFF;
   _delay_ms(1500);
   
# 183 ".././test.c" 3
  (*(volatile uint8_t *)((0x08) + 0x20)) 
# 183 ".././test.c"
               = 0;
   
# 184 ".././test.c" 3
  __asm__ __volatile__ ("sei" ::: "memory")
# 184 ".././test.c"
       ;
  } else {
   repeating = 0;
  }
 }
 return(result);
}

void test_input(){
 uint8_t returnCode = 0;
 uint32_t testval = 0x12345678;
 uint8_t status = 0;
 uint8_t testbyte = 0xAB;
 if (status == 0) {
  editLong.longval = testval;
  returnCode = lcd_edit_longint(04);
  testval = editLong.longval;
  lcd_goto(0x40);
  lcd_hexout(returnCode);
  lcd_goto(0x44);
  lcd_hexout((testval & 0xFF000000) >> 24);
  lcd_hexout((testval & 0x00FF0000) >> 16);
  lcd_hexout((testval & 0x0000FF00) >> 8);
  lcd_hexout((testval & 0x000000FF));
  if (returnCode == 1) {
   status = 1;
  }
  } else {
  editByte = testbyte;
  returnCode = lcd_edit_byte(0x0E);
  testbyte = editByte;
  lcd_goto(0x40);
  lcd_hexout(returnCode);
  lcd_goto(0x4E);
  lcd_hexout(editByte);
  if (returnCode == 4) {
   status = 0;
  }
 }
}


const char test_text3 [] 
# 226 ".././test.c" 3
                        __attribute__((__progmem__)) 
# 226 ".././test.c"
                                = "SEL:start Ptrn.Test";
const char test_text4 [] 
# 227 ".././test.c" 3
                        __attribute__((__progmem__)) 
# 227 ".././test.c"
                                = "</> other test";
const char test_text5 [] 
# 228 ".././test.c" 3
                        __attribute__((__progmem__)) 
# 228 ".././test.c"
                                = "Pattern:";
const char test_text6 [] 
# 229 ".././test.c" 3
                        __attribute__((__progmem__)) 
# 229 ".././test.c"
                                = "</> test, SEL:ex";
const uint32_t test_pattern[4] 
# 230 ".././test.c" 3
                              __attribute__((__progmem__)) 
# 230 ".././test.c"
                                      = {1,0x000000FF,0xFFFFFFFE,0x81};


uint8_t test_PipePatterns(){







 uint8_t myStatus = 1;
 uint8_t message;
 uint32_t pattern;
 while (myStatus != 0) {
  switch (myStatus) {
   case 1:
    lcd_clrscr();
    lcd_puts_P(test_text3);
    lcd_goto(0x040);
    lcd_puts_P(test_text4);
    while(message_status() == 0x00); message = message_get();
    if (message == 5) {
     myStatus = 2;
    } else {
     myStatus = 0;
    }
    break;
   case 2:
   case 3:
   case 4:
   case 5:
    pattern = 
# 262 ".././test.c" 3
             (__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(
# 262 ".././test.c"
             &(test_pattern[myStatus-2])
# 262 ".././test.c" 3
             )); uint32_t __result; __asm__ __volatile__ ( "lpm %A0, Z+" "\n\t" "lpm %B0, Z+" "\n\t" "lpm %C0, Z+" "\n\t" "lpm %D0, Z" "\n\t" : "=r" (__result), "=z" (__addr16) : "1" (__addr16) ); __result; }))
# 262 ".././test.c"
                                                                      ;
    lcd_clrscr();
    lcd_puts_P(test_text5);
    editLong.longval = pattern;
    lcd_longout();
    uint8_t count = 32;
    while ((count > 0) && (message_status() == 0x00)) {

     lcd_goto(0x40);
     editLong.longval = pattern;
     lcd_longout();
     for (uint8_t moduleNr = 0; moduleNr < 8; moduleNr++){
      pipe_setOutput(moduleNr,pattern);
     }
     
# 276 ".././test.c" 3
    for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) 
# 276 ".././test.c"
    {swTimer[0].counter = 50 / 20; swTimer[0].prescaler = (50 % 20) / 4;};;
     while ((swTimer[0].counter != 0x00) && (swTimer[0].counter != 0xFF));
     editLong.longval = pipe_getInput(0);
     lcd_longout();
     
# 280 ".././test.c" 3
    for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) 
# 280 ".././test.c"
    {swTimer[0].counter = 200 / 20; swTimer[0].prescaler = (200 % 20) / 4;};;
     while ((swTimer[0].counter != 0x00) && (swTimer[0].counter != 0xFF));
     pattern = (pattern << 1) | (pattern >> 31);





    }
    while(message_status() == 0x00); message = message_get();
    lcd_goto(0);
    lcd_puts_P(test_text6);
    if ((message == 4) && (myStatus > 2)) {
     myStatus--;
    } else if ((message == 1) && (myStatus < 5)) {
     myStatus++;
    } else {
     myStatus = 0;
    }
    break;
  }
 }
 return(message);
}

const char test_texts [] 
# 305 ".././test.c" 3
                        __attribute__((__progmem__)) 
# 305 ".././test.c"
                                = "Serial USB Test";

void test_USBser(){
 lcd_init();
 lcd_clrscr();
 lcd_puts_P(test_texts);
 uint8_t counter = 0;
 uint8_t rcv_counter = 0;
 init_Serial0SerUSB();
 while (1) {
  lcd_goto(0x44);
  lcd_putc(' ');
  lcd_putc(' ');
  serial0SER_USBSend('T');
  serial0SER_USBSend('e');
  serial0SER_USBSend('s');
  serial0SER_USBSend('t');
  while ((message_status() == 0x00)){;
   if ((serusbRxInIndex != serusbRxOutIndex)) {
    lcd_goto(0x44);
    lcd_hexout(serial0SER_USBReadRx());
    lcd_putc('#');
    lcd_hexout((++rcv_counter));
   }
  }
  message_get();
  lcd_goto(0x40);
  lcd_hexout(++counter);
 }
}

const char test_textmi [] 
# 336 ".././test.c" 3
                         __attribute__((__progmem__)) 
# 336 ".././test.c"
                                 = "MIDI In Test";

void testMIDIin(){

 uint8_t byteBuf[5];
 uint8_t bufCount = 0;
 uint8_t recByte;
 uint8_t totalCount = 0;
 lcd_init();
 lcd_clrscr();
 lcd_puts_P(test_textmi);
 while (1) {
  while((midiRxInIndex == midiRxOutIndex)) {};
  recByte = serial1MIDIReadRx();
  totalCount++;
  lcd_goto(13);
  lcd_hexout(totalCount);
  if (bufCount >= 5) {
   for (bufCount = 0; bufCount < 5 -1; bufCount++){
    byteBuf[bufCount] = byteBuf[bufCount+1];
   }
   bufCount = 5 -1;
   byteBuf[bufCount++] = recByte;
  } else {
   byteBuf[bufCount++] = recByte;
  }
  lcd_goto(0x40);
  for (uint8_t i = 0; i < bufCount; i++){
   lcd_hexout(byteBuf[i]);
   lcd_putc(' ');
  }
 }
}

void testMenu(){
 uint8_t message;
 menu_Init(
# 372 ".././test.c" 3 4
          ((void *)0)
# 372 ".././test.c"
              , 
# 372 ".././test.c" 3 4
                ((void *)0)
# 372 ".././test.c"
                    );
 menu_InitLCD();
 while (1) {
  while(message_status() == 0x00); message = message_get();;
  menu_ProcessMessage(message);
 }

}

const __flash char titleTestMidiIN[] = "MIDI Inp. Buffer";

void testFunc_MidiIn(){



 lcd_clrscr();
 lcd_puts_P(titleTestMidiIN);
 do {
  uint8_t* pMidiInBuf = &(midiRxBuffer[midiRxInIndex]);
  uint8_t* pMidiInOut = &(midiRxBuffer[midiRxOutIndex]);
  uint8_t count = 0;
  lcd_goto(0x40);
  lcd_putc(':');
  while ((pMidiInOut != pMidiInBuf) && (count++ < 5)){
   lcd_hexout(*pMidiInBuf);
   lcd_putc(' ');
   if (++pMidiInBuf >= &(midiRxBuffer[64])) {
    pMidiInBuf = &(midiRxBuffer[0]);
   }
  }
  
# 402 ".././test.c" 3
 for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) 
# 402 ".././test.c"
 {swTimer[1].counter = 100 / 20; swTimer[1].prescaler = (100 % 20) / 4;};;
  lcd_goto(0x40);
  lcd_putc(' ');
  
# 405 ".././test.c" 3
 for ( uint8_t sreg_save __attribute__((__cleanup__(__iRestore))) = (*(volatile uint8_t *)((0x3F) + 0x20)), __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 ) 
# 405 ".././test.c"
 {swTimer[1].counter = 100 / 20; swTimer[1].prescaler = (100 % 20) / 4;};;
 } while (message_status() == 0x00);
}
