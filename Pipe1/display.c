/*
 * display.c
 *
 * Created: 25.07.2019 08:56:57
 *  Author: Anwender
 */
#include "display.h"
#include "lcd_u.h"
#include "utils.h"
#include <inttypes.h>
#include <stddef.h>

/*

static uint8_t displayBuffer[DISPLAY_BUFFER_SIZE];
uint8_t sectionBuffer[DISPLAY_SECTION_BUF_SIZE];
static uint8_t leftSpaces;
static uint8_t rightSpaces;
static uint8_t textLen;

const uint8_t displaySize = LCD_EOLINE3;
const __flash SectionInfo_t sectionInfo[DISPLAY_SECTION_COUNT] = {
	{LCD_LINE0+0, DISPLAY_SECTION_LEN_MIDIIN, DISPLAY_BUFFER_MIDIIN}, // DISPLAY_SECTION_MIDIIN 0
	{LCD_LINE0+20-5, DISPLAY_SECTION_LEN_MIDIOUT, DISPLAY_BUFFER_MIDIOUT},//  DISPLAY_SECTION_MIDIOUT 1
	{LCD_LINE0+10-3, DISPLAY_SECTION_LEN_CLOCK, DISPLAY_BUFFER_CLOCK}, //  DISPLAY_SECTION_CLOCK 2
	{LCD_LINE0+10+2, DISPLAY_SECTION_LEN_POWER, DISPLAY_BUFFER_POWER},//  DISPLAY_SECTION_POWER 3
	{LCD_LINE0+10+3, DISPLAY_SECTION_LEN_ERROR, DISPLAY_BUFFER_ERROR},//  DISPLAY_SECTION_ERROR 4
	{LCD_LINE1+0, DISPLAY_SECTION_LEN_MENU_TITLE, DISPLAY_BUFFER_MENU_TITLE},//  DISPLAY_SECTION_MENU 5
	{LCD_LINE2+10, DISPLAY_SECTION_LEN_MENU_ITEM, DISPLAY_BUFFER_MENU_ITEM},//  DISPLAY_SECTION_MENU_DATA 6
	{LCD_LINE2+0, DISPLAY_SECTION_LEN_MENU_DATA, DISPLAY_BUFFER_MENU_DATA},//  DISPLAY_SECTION_MENU_EXTRA 7
	{LCD_LINE2+0, DISPLAY_SECTION_LEN_MENU_EXTRA, DISPLAY_BUFFER_MENU_EXTRA},//  DISPLAY_SECTION_MENU_MESSAGE 7
	{LCD_LINE2+0, DISPLAY_SECTION_LEN_MENU_MESSAGE, DISPLAY_BUFFER_MENU_MESSAGE},//  DISPLAY_SECTION_MAIN_MESSAGE 8
	{LCD_LINE1+0, DISPLAY_SECTION_LEN_MAIN_MESSAGE, DISPLAY_BUFFER_MAIN_MESSAGE},//  DISPLAY_SECTION_MAIN_SOFTKEYS 9
	{LCD_LINE3+0, DISPLAY_SECTION_LEN_MAIN_SOFTKEYS, DISPLAY_BUFFER_MAIN_SOFTKEYS} // DISPLAY_SECTION_MAIN_SOFTKEYS 11
};

static SectionStatus_t sectionStatus[DISPLAY_SECTION_COUNT];

void calcSpaces(uint8_t centered, uint8_t sectionLen){
	uint8_t i=0;
	textLen = 0;
	uint8_t* pChar = sectionBuffer;
	while ((i < DISPLAY_SECTION_BUF_SIZE) && (*pChar != 0)){
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

void init_disp(){ // reset int vars, init HW
	for (uint8_t i = 0; i < DISPLAY_SECTION_COUNT; i++) {
		sectionStatus[i].CursorPos = SECTION_INACTIVE; // Section is not used
		sectionStatus[i].SectionChanged = FALSE;
		sectionStatus[i].SectionUpdating = FALSE;
	}
	disp_clear();
}

void disp_clear(){
	  // reset clear display
	  lcd_clrscr();
	  for (uint8_t i = 0; i < DISPLAY_BUFFER_SIZE; i++){
		  displayBuffer[i] = ' ';
	  }
}

extern void disp_redraw(){
	 // output all buffer to HW
	 lcd_goto(LCD_LINE0);
	  for (uint8_t i = 0; i < displaySize; i++){
		  lcd_putc(displayBuffer[i]);
	  }
}

extern void disp_sectionClear(uint8_t sect);
extern void disp_sectionWrite(uint8_t centered);

void disp_beginSectionUpdate(uint8_t sect){
	sectionStatus[sect].SectionUpdating = TRUE;
}

void disp_endSectionUpdate(uint8_t sect){
	sectionStatus[sect].SectionUpdating = FALSE;
	if (sectionStatus[sect].SectionChanged){
		if (sectionInfo[sect].CursorStart == VOIDSTART) {
			// we got subsections!
			const __flash SectionInfo_t* currentSection = &(sectionInfo[sect]) + 1; // points to first subsection
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
			// no subsections
			lcd_goto(sectionInfo[sect].CursorStart);
			uint8_t * pChar = & displayBuffer[sectionInfo[sect].CursorStart];
			for (uint8_t i = 0; i < sectionInfo[sect].SectionLen; i++){
				lcd_putc(*pChar++);
			}
		}
		sectionStatus[sect].SectionChanged = FALSE;
	}
}

extern void disp_sectionClearSub(uint8_t sect, uint8_t subsect){
	if (sectionInfo[sect].CursorStart == VOIDSTART) {
		// we got subsections!
		uint8_t updating = sectionStatus[sect].SectionUpdating;
		if (updating){
			sectionStatus[sect].SectionChanged = TRUE;
		}
		const __flash SectionInfo_t* currentSection = &(sectionInfo[sect]) + 1 + subsect; // points to first subsection
		uint8_t cursorPos = currentSection->CursorStart;
		uint8_t charCount = currentSection->SectionLen;
		uint8_t* pChar = &(displayBuffer[cursorPos]);
		if (updating == 0) {
			// not updating, write to lcd
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

*/