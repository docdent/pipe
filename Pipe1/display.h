/*
 * display.h
 *
 * Created: 25.07.2019 08:56:33
 *  Author: Anwender
 */


#ifndef DISPLAY_H_
#define DISPLAY_H_

#include <inttypes.h>

#define DISPLAY_BUFFER_SIZE 128 // takes whole display content
#define DISPLAY_SECTION_BUF_SIZE 32 // takes content of a section to be displayed, max 31 char!
#define DISPLAY_SECTION_COUNT 20
#define DISPLAY_SECTION_MIDIIN 0
#define DISPLAY_SECTION_MIDIOUT 1
#define DISPLAY_SECTION_CLOCK 2
#define DISPLAY_SECTION_POWER 3
#define DISPLAY_SECTION_ERROR 4
#define DISPLAY_SECTION_MENU 5
#define DISPLAY_SECTION_MENU_DATA 6
#define DISPLAY_SECTION_MENU_EXTRA 7
#define DISPLAY_SECTION_MENU_MESSAGE 7
#define DISPLAY_SECTION_MAIN_MESSAGE 8
#define DISPLAY_SECTION_MAIN_SOFTKEYS 9
// 1111111.3333333.....
// |.2222222..|.4444444
#define DISPLAY_SECTION_MENU_SOFTKEYS 10
// 11111222223333344444

extern void init_disp(); // reset int vars, init HW
extern void disp_clear();  // reset int vars, clear display
extern void disp_redraw(); // output all buffer to HW
extern void disp_sectionClear(uint8_t sect);
extern void disp_sectionWrite(uint8_t centered);
extern void disp_beginSectionUpdate(uint8_t sect);
extern void disp_endSectionUpdate(uint8_t sect);
extern void disp_sectionClearSub(uint8_t sect, uint8_t subsect);

#define VOIDSTART 0xFF
typedef struct{
	uint8_t CursorStart; // LCD-RAM Adress of active Section start (section may contain other elemts in frame)
	uint8_t SectionLen; // length
	uint8_t SubSectCount; // nr of subsections if !=
	} SectionInfo_t;

#define SECTION_INACTIVE 0xFF
typedef struct{
	uint8_t CursorPos; // relative Cursor adress in Section
	uint8_t SectionUpdating; // true: changes (clear/write) are written in RAM only, not yet transferred to HW
	uint8_t SectionChanged; // true: (only if SectionUpdating): notify that section was changed
	} SectionStatus_t;

extern uint8_t display_SectionUpdating; // true: changed (clear/write) are written in RAM only, not yet transferred to HW
extern uint8_t sectionBuffer[DISPLAY_SECTION_BUF_SIZE]; // used by sectionWrite to transfer text.

#endif /* DISPLAY_H_ */