/*
 * log.h
 *
 * Created: 24.02.2019 11:23:57
 *  Author: Anwender
 */ 


#ifndef LOG_H_
#define LOG_H_

#include <ctype.h>
#include <inttypes.h>

// intern

// exterrn
#define LOG_TYPE_ERROR 'E'
#define LOG_TYPE_WARNING 'W'
#define LOG_TYPE_INFO 'I'
#define LOG_STATUS_ACTIVVE 0x80 // user not yet informed
#define LOG_STATUS_NOTIFYIED 0x40 // user has been informed
#define LOG_STATUS_READ 0x20 // user has read message
#define LOG_CHAR_ACTIVE '*'
#define LOG_CHAR_NOTIFYED 0xA5
#define LOG_CHAR_READ ' '
#define LOG_CHAR_UNKNOWN '?'
typedef struct {
	uint8_t uptime[4]; // corresponds to hwtimer  0: prescaler cycles @ 4ms, 1: seconds, 2: minutes, 3:hours
	uint8_t logStatus; // new&active, informed/sent, read
	uint8_t logType; // Error, Warning, Info...
	uint8_t logCategory; // general category
	uint8_t logNr; // nr 
	uint16_t logInfo; // defined by main
} LogList_t;
#define LOG_LIST_LEN 40
extern LogList_t log_List[LOG_LIST_LEN];

typedef struct {
	uint8_t logCategory; // general category
	uint8_t logNr; // nr
	uint16_t logInfo; // defined by main
} Log_t;
#define LOG_TEXTBUF_LEN 40
extern char Log_TextBuff[LOG_TEXTBUF_LEN];

#define LOG_CHANGENOTIFYNO 0xFF

void init_log(); // init Log Vars
void log_putError(uint8_t LogCat, uint8_t LogNr, uint16_t LogInfo);
void log_putWarning(uint8_t LogCat, uint8_t LogNr, uint16_t LogInfo);
void log_putInfo(uint8_t LogCat, uint8_t LogNr, uint16_t LogInfo);
void log_put(uint8_t LogCat, uint8_t LogNr, uint16_t LogInfo,  uint8_t logType);
uint8_t log_count();
LogList_t* log_getLog(uint8_t nr);
char* log_getShortTextFromIndex(uint8_t nr, char changeNotifyStatus);
char* log_getShortTextFromPtr(LogList_t* pLogEntry,  char changeNotifyStatus);
const __flash char* log_getErrorText(uint8_t logNr);

#define LOG_ERRTEXT_LEN 16
typedef struct{
	uint8_t errCat;
	uint8_t errNr;
	char text[LOG_ERRTEXT_LEN];
	} ErrorText_t;

#define LOG_CAT_INIT 0
#define LOG_CAT_EE 1
#define LOG_CATEE_MODULES 0
#define LOG_CATEE_MIDI2MAN 1
#define LOG_CATEE_MAN2MIDI 2
#define LOG_CATEE_MAN2MOD 3
#define LOG_CATEE_USBACTIVE 4
#define LOG_CATEE_REGISTER 5
#define LOG_CATEE_PROGRAM 6
#define LOG_CATEE_SOFTKEY 7
#define LOG_CATEE_MIDITHROUGH 8
#define LOG_CATEE_REGOUT 9
#define LOG_CATEE_CCREG 10
#define LOG_CAT_MODULES 2
#define LOG_CATMODULES_NOTWORKING 0
#define LOG_CATMODULES_UNKNOWNINP 1
#define LOG_CAT_SERIAL 3
#define LOG_CAT_SERIALMIDIINOVFL 0
#define LOG_CAT_SERIALMIDIOUTOVFL 1
#define LOG_CAT_MESSAGE 4
#define LOG_CATMESSAGE_PIPEOVFL 0
#define LOG_CAT_POWER 5
#define LOG_CATPOWER_OUTPUTSON 0

extern uint8_t log_unreadErrors; // TRUE if there are unread errors

#endif /* LOG_H_ */