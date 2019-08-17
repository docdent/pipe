# 1 ".././display.c"
# 1 "E:\\Users\\Anwender\\Sync\\Atmel Studio\\Pipe1\\Pipe1\\Debug//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 ".././display.c"






# 1 ".././display.h" 1
# 12 ".././display.h"
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
# 13 ".././display.h" 2
# 33 ".././display.h"

# 33 ".././display.h"
extern void init_disp();
extern void disp_clear();
extern void disp_redraw();
extern void disp_sectionClear(uint8_t sect);
extern void disp_sectionWrite(uint8_t centered);
extern void disp_beginSectionUpdate(uint8_t sect);
extern void disp_endSectionUpdate(uint8_t sect);
extern void disp_sectionClearSub(uint8_t sect, uint8_t subsect);


typedef struct{
 uint8_t CursorStart;
 uint8_t SectionLen;
 uint8_t SubSectCount;
 } SectionInfo_t;


typedef struct{
 uint8_t CursorPos;
 uint8_t SectionUpdating;
 uint8_t SectionChanged;
 } SectionStatus_t;

extern uint8_t display_SectionUpdating;
extern uint8_t sectionBuffer[32];
# 8 ".././display.c" 2
# 1 ".././lcd_u.h" 1
# 82 ".././lcd_u.h"
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
# 9 ".././display.c" 2
# 1 ".././utils.h" 1
# 9 ".././utils.h"
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 1 3
# 89 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 1 3 4
# 216 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4

# 216 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 90 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 2 3
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
# 91 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\pgmspace.h" 2 3
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
# 41 ".././utils.h"
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

extern uint8_t lcd_edit_longint(uint8_t cursor);
extern uint8_t lcd_edit_byte(uint8_t cursor);
# 78 ".././utils.h"
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
# 106 ".././utils.h"
extern char string_Buf[40];

extern const char cr_lf [] 
# 108 ".././utils.h" 3
                          __attribute__((__progmem__))
# 108 ".././utils.h"
                                 ;

extern uint8_t get_StrLenP(const __flash char* pString);
extern uint8_t get_StrLen(const char* pString);
extern uint8_t reverse_Bits(uint8_t val);
# 10 ".././display.c" 2

# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 1 3 4
# 149 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4

# 149 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 328 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stddef.h" 3 4
typedef int wchar_t;
# 12 ".././display.c" 2


# 13 ".././display.c"
static uint8_t displayBuffer[128];
uint8_t sectionBuffer[32];
static uint8_t leftSpaces;
static uint8_t rightSpaces;
static uint8_t textLen;

const uint8_t displaySize = 0x40+20+20;
const __flash SectionInfo_t sectionInfo[20] = {
 {0 +0, 5, 0},
 {0 +20-5, 5, 0},
 {0 +10-3, 5, 0},
 {0 +10+2, 1, 0},
 {0 +10+3, 1, 0},
 {0x40 +0,20, 0},
 {0+20 +10, 10, 0},
 {0+20 +0, 10, 0},
 {0+20 +0, 20, 0},
 {0x40 +0, 20, 0},
 {0xFF, 0, 4},
 {0+20 +0, 7, 0},
 {0+20 +0, 7, 0},
 {0x40+20 +2, 7, 0},
 {0+20 +12, 7, 0},
 {0x40+20 +0, 20, 0},
 {0x40+20 +0, 5, 0},
 {0x40+20 +5, 5, 0},
 {0x40+20 +10, 5, 0},
 {0x40+20 +15, 5, 0},
};

static SectionStatus_t sectionStatus[20];

void calcSpaces(uint8_t centered, uint8_t sectionLen){
 uint8_t i=0;
 textLen = 0;
 uint8_t* pChar = sectionBuffer;
 while ((i < 32) && (*pChar != 0)){
  textLen++;
  pChar++;
  i++;
 }
 if (centered) {
  leftSpaces = (sectionLen - textLen) >> 1;
  rightSpaces = sectionLen - textLen - leftSpaces;
 } else {
  leftSpaces = 0;
  rightSpaces = sectionLen - textLen;
 }
}

void init_disp(){
 for (uint8_t i = 0; i < 20; i++) {
  sectionStatus[i].CursorPos = 0xFF;
  sectionStatus[i].SectionChanged = 0x00;
  sectionStatus[i].SectionUpdating = 0x00;
 }
 disp_clear();
}

void disp_clear(){

   lcd_clrscr();
   for (uint8_t i = 0; i < 128; i++){
    displayBuffer[i] = ' ';
   }
}

extern void disp_redraw(){

  lcd_goto(0);
   for (uint8_t i = 0; i < displaySize; i++){
    lcd_putc(displayBuffer[i]);
   }
}

extern void disp_sectionClear(uint8_t sect);
extern void disp_sectionWrite(uint8_t centered);

void disp_beginSectionUpdate(uint8_t sect){
 sectionStatus[sect].SectionUpdating = 0xFF;
}

void disp_endSectionUpdate(uint8_t sect){
 sectionStatus[sect].SectionUpdating = 0x00;
 if (sectionStatus[sect].SectionChanged){
  if (sectionInfo[sect].CursorStart == 0xFF) {

   const __flash SectionInfo_t* currentSection = &(sectionInfo[sect]) + 1;
   uint8_t subSecCount = sectionInfo[sect].SubSectCount;
   while (subSecCount-- != 0){
    lcd_goto(currentSection->CursorStart);
    uint8_t * pChar = & displayBuffer[currentSection->CursorStart];
    for (uint8_t i = 0; i < currentSection->SectionLen; i++){
     lcd_putc(*pChar++);
    }
    currentSection++;
   }
  } else {

   lcd_goto(sectionInfo[sect].CursorStart);
   uint8_t * pChar = & displayBuffer[sectionInfo[sect].CursorStart];
   for (uint8_t i = 0; i < sectionInfo[sect].SectionLen; i++){
    lcd_putc(*pChar++);
   }
  }
  sectionStatus[sect].SectionChanged = 0x00;
 }
}

extern void disp_sectionClearSub(uint8_t sect, uint8_t subsect){
 if (sectionInfo[sect].CursorStart == 0xFF) {

  uint8_t updating = sectionStatus[sect].SectionUpdating;
  if (updating){
   sectionStatus[sect].SectionChanged = 0xFF;
  }
  const __flash SectionInfo_t* currentSection = &(sectionInfo[sect]) + 1 + subsect;
  uint8_t cursorPos = currentSection->CursorStart;
  uint8_t charCount = currentSection->SectionLen;
  uint8_t* pChar = &(displayBuffer[cursorPos]);
  if (updating == 0) {

   lcd_goto(cursorPos);
  }
  while (charCount-- > 0){
   *pChar++ = ' ';
   if (updating == 0){
    lcd_putc(' ');
   }
  }
 }
}
