/*
 * display.h
 *
 * Created: 25.07.2019 08:56:33
 *  Author: Anwender
 */

/*
#ifndef DISPLAY_H_
#define DISPLAY_H_

#include <inttypes.h>

// HW dependent
#define DISPLAY_SECTION_LEN_MIDIIN 5
#define DISPLAY_SECTION_LEN_MIDIOUT 5
#define DISPLAY_SECTION_LEN_CLOCK 5
#define DISPLAY_SECTION_LEN_POWER 1
#define DISPLAY_SECTION_LEN_ERROR 1
#define DISPLAY_SECTION_LEN_MENU_TITLE 10
#define DISPLAY_SECTION_LEN_MENU_ITEM 10
#define DISPLAY_SECTION_LEN_MENU_DATA 10
#define DISPLAY_SECTION_LEN_MENU_EXTRA 10
#define DISPLAY_SECTION_LEN_MENU_MESSAGE 20
#define DISPLAY_SECTION_LEN_MAIN_MESSAGE 20
#define DISPLAY_SECTION_LEN_MAIN_SOFTKEYS 20

#define DISPLAY_BUFFER_MIDIIN		0
#define DISPLAY_BUFFER_MIDIOUT		DISPLAY_BUFFER_MIDIIN + DISPLAY_SECTION_LEN_MIDIIN
#define DISPLAY_BUFFER_CLOCK		DISPLAY_BUFFER_MIDIOUT + DISPLAY_SECTION_LEN_MIDIOUT
#define DISPLAY_BUFFER_POWER		DISPLAY_BUFFER_CLOCK + DISPLAY_SECTION_LEN_CLOCK
#define DISPLAY_BUFFER_ERROR		DISPLAY_BUFFER_POWER + DISPLAY_SECTION_LEN_POWER
#define DISPLAY_BUFFER_MENU_TITLE	DISPLAY_BUFFER_ERROR + DISPLAY_SECTION_LEN_ERROR
#define DISPLAY_BUFFER_MENU_ITEM	DISPLAY_BUFFER_MENU_TITLE + DISPLAY_SECTION_LEN_MENU_TITLE
#define DISPLAY_BUFFER_MENU_DATA	DISPLAY_BUFFER_MENU_ITEM + DISPLAY_SECTION_LEN_MENU_ITEM
#define DISPLAY_BUFFER_MENU_EXTRA	DISPLAY_BUFFER_MENU_DATA + DISPLAY_SECTION_LEN_MENU_DATA
#define DISPLAY_BUFFER_MENU_MESSAGE	DISPLAY_BUFFER_MENU_EXTRA + DISPLAY_SECTION_LEN_MENU_EXTRA
#define DISPLAY_BUFFER_MAIN_MESSAGE	DISPLAY_BUFFER_MENU_MESSAGE + DISPLAY_SECTION_LEN_MENU_MESSAGE
#define DISPLAY_BUFFER_MAIN_SOFTKEYS	DISPLAY_BUFFER_MAIN_MESSAGE + DISPLAY_SECTION_LEN_MAIN_MESSAGE
#define DISPLAY_BUFFER_LEN			DISPLAY_BUFFER_MAIN_SOFTKEYS + DISPLAY_SECTION_LEN_MAIN_SOFTKEYS

uint8_t displayBuffer[DISPLAY_BUFFER_LEN]

typedef struct{ // definition may be dependent from HW
	uint8_t CursorStart; // LCD-RAM Adress of active Section start (section may contain other elemts in frame)
	uint8_t SectionLen; // length
	uint8_t BufferStart; // start index in displayBuffer[]
} SectionInfo_t;

typedef struct{
	uint8_t CursorPos; // relative Cursor adress in Section
	uint8_t SectionUpdating; // true: changes (clear/write) are written in RAM only, not yet transferred to HW
	uint8_t SectionChanged; // true: (only if SectionUpdating): notify that section was changed
} SectionStatus_t;


extern uint8_t sectionBuffer[DISPLAY_SECTION_BUF_SIZE]; // used by sectionWrite to transfer text.

// intern
#define DISPLAY_SECTION_COUNT 12
extern uint8_t display_SectionUpdating; // true: changed (clear/write) are written in RAM only, not yet transferred to HW

// extern
#define DISPLAY_SECTION_MIDIIN 0
#define DISPLAY_SECTION_MIDIOUT 1
#define DISPLAY_SECTION_CLOCK 2
#define DISPLAY_SECTION_POWER 3
#define DISPLAY_SECTION_ERROR 4
#define DISPLAY_SECTION_MENU_TITLE 5
#define DISPLAY_SECTION_MENU_ITEM 6
#define DISPLAY_SECTION_MENU_DATA 7
#define DISPLAY_SECTION_MENU_EXTRA 8
#define DISPLAY_SECTION_MENU_MESSAGE 9
#define DISPLAY_SECTION_MAIN_MESSAGE 10
#define DISPLAY_SECTION_MAIN_SOFTKEYS 11



extern void init_disp(); // reset int vars, init HW
extern void disp_clear();  // reset int vars, clear display, draw boxes/lines
extern void disp_redraw(); // output all buffer to HW
extern void disp_sectionClear(uint8_t sect); // clear section or buffer (after beginSectionUpdate)
extern void disp_sectionWrite(uint8_t sect, uint8_t* buffer); // write char from buffer to display (or section or buffer after beginSectionUpdate)
extern void disp_beginSectionUpdate(uint8_t sect);
extern void disp_endSectionUpdate(uint8_t sect);


#endif /* DISPLAY_H_ */
*/