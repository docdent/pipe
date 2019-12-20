/*
 * log.c
 *
 * Created: 24.02.2019 11:23:42
 *  Author: Anwender
 */
#include <stddef.h>
#include <inttypes.h>
#include "log.h"
#include "hwtimer.h"
#include "utils.h"
#include "serial.h"

LogList_t log_List[LOG_LIST_LEN];
LogList_t* pLogStart;
LogList_t* pLogEnd;
char Log_TextBuff[LOG_TEXTBUF_LEN];
uint8_t log_unreadErrors;

const __flash ErrorText_t ErrorText[] = {
	//											"1234567890123456"
	{LOG_CAT_INIT,0,							"Initialisation"},
	{LOG_CAT_EE,LOG_CATEE_MODULES,				"EE:Module"},
	{LOG_CAT_EE,LOG_CATEE_MIDI2MAN,				"EE:Midi-In"},
	{LOG_CAT_EE,LOG_CATEE_MAN2MIDI,				"EE:Midi-Out"},
	{LOG_CAT_EE,LOG_CATEE_MAN2MOD,				"EE:Man-Module"},
	{LOG_CAT_EE,LOG_CATEE_USBACTIVE,			"EE:USB"},
	{LOG_CAT_EE,LOG_CATEE_REGISTER,				"EE:Register"},
	{LOG_CAT_EE,LOG_CATEE_PROGRAM,				"EE:Programs"},
	{LOG_CAT_EE,LOG_CATEE_SOFTKEY,				"EE:Softkeys"},
	{LOG_CAT_EE,LOG_CATEE_MIDITHROUGH,			"EE:MidiThru"},
	{LOG_CAT_MODULES,LOG_CATMODULES_NOTWORKING,	"Mod:Fail"},
	{LOG_CAT_MODULES,LOG_CATMODULES_UNKNOWNINP,	"Mod:UnknowInp"},
	{LOG_CAT_SERIAL,LOG_CAT_SERIALMIDIINOVFL,	"OVFL:MidiIn"},
	{LOG_CAT_SERIAL,LOG_CAT_SERIALMIDIOUTOVFL,	"OVFL:MidiOut"},
	{LOG_CAT_MESSAGE,LOG_CATMESSAGE_PIPEOVFL,	"OVFL:PipeMsg"},
	{LOG_CAT_POWER,LOG_CATPOWER_OUTPUTSON,		"Pwr:OuptutOn"},
};

void init_log(){ // init Log Vars
	pLogStart = &(log_List[0]);
	pLogEnd = &(log_List[0]);
}


const __flash char* log_getErrorText(uint8_t logNr){
	LogList_t* pLogEntry;
	pLogEntry = log_getLog(logNr);
	if (pLogEntry != NULL){
		uint8_t errCat = pLogEntry->logCategory;
		uint8_t errNr = pLogEntry->logNr;
		for(uint8_t i = 0; i < sizeof(ErrorText) / sizeof(ErrorText[0]); i++){
			if ((errCat == ErrorText[i].errCat) && (errNr == ErrorText[i].errNr)){
				return(&(ErrorText[i].text[0]));
			}
		}
	}
	return NULL;
}

void log_putError(uint8_t LogCat, uint8_t LogNr, uint16_t LogInfo){
	log_put(LogCat, LogNr, LogInfo, LOG_TYPE_ERROR)	;
	log_unreadErrors = TRUE;
}

void log_putWarning(uint8_t LogCat, uint8_t LogNr, uint16_t LogInfo){
	log_put(LogCat, LogNr, LogInfo, LOG_TYPE_WARNING)	;
}
void log_putInfo(uint8_t LogCat, uint8_t LogNr, uint16_t LogInfo){
	log_put(LogCat, LogNr, LogInfo, LOG_TYPE_INFO)	;
}

const char stringLog [] PROGMEM = "Log: ";

void log_put(uint8_t LogCat, uint8_t LogNr, uint16_t LogInfo, uint8_t logType){
	pLogEnd->uptime[0] = time_Uptime[0];
	pLogEnd->uptime[1] = time_Uptime[1];
	pLogEnd->uptime[2] = time_Uptime[2];
	pLogEnd->uptime[3] = time_Uptime[3];
	pLogEnd->logType = logType;
	pLogEnd->logCategory = LogCat;
	pLogEnd->logNr = LogNr;
	pLogEnd->logInfo = LogInfo;
	pLogEnd->logStatus = LOG_STATUS_ACTIVVE;
	if (serUSB_Active == TRUE) {
		serial0SER_USB_sendStringP(stringLog);
		serial0SER_USB_sendString(log_getShortTextFromPtr(pLogEnd,LOG_CHANGENOTIFYNO));
		serial0SER_USB_sendStringP(cr_lf);
	}
	pLogEnd++;
	if (pLogEnd > &(log_List[LOG_LIST_LEN-1])){
		pLogEnd = &(log_List[0]);
	}
	if (pLogEnd == pLogStart){
		pLogStart++;
		if (pLogStart > &(log_List[LOG_LIST_LEN-1])){
			pLogStart = &(log_List[0]);
		}
	}
}

uint8_t log_count(){
	if (pLogEnd >= pLogStart){
		return pLogEnd - pLogStart;
	} else {
		return LOG_LIST_LEN + pLogEnd - pLogStart;
	}
}

LogList_t* log_getLog(uint8_t index) {
	if (index >= log_count()) {
		// index more than possible
		return NULL;
	} else {
		if (pLogStart + index <= &(log_List[LOG_LIST_LEN-1])) {
			return (pLogStart + index);
		} else {
			return (pLogStart + index - LOG_LIST_LEN);
		}
	}
}

void logCheckUnreadErrorLogs(){
	uint8_t nrOfMEssage = log_count();
	LogList_t* pLog;
	log_unreadErrors = FALSE;
	if (nrOfMEssage > 0) {
		// check all messages
		while (nrOfMEssage-- > 0) {
			pLog = log_getLog(nrOfMEssage);
			if ((pLog != NULL) && (pLog->logStatus != LOG_STATUS_READ) && (pLog->logType == LOG_TYPE_ERROR)) {
				// this is an unread error
				log_unreadErrors = TRUE;
				break;
			}
		} // while
	}
}

char* log_getShortTextFromPtr(LogList_t* pLogEntry,  char changeNotifyStatus){
	char* pChar;
	pChar = &(Log_TextBuff[0]);
	if (pLogEntry != NULL){
		// 0..4: xxhxx, xxmxx, xxsxx
		if (pLogEntry->uptime[3] != 0) {
			// hout entry
			pChar = putChar_Dec2(pLogEntry->uptime[3], pChar);
			*(pChar++) = 'h';
			pChar = putChar_Dec2(pLogEntry->uptime[2], pChar);
		} else if (pLogEntry->uptime[2] != 0) {
			// minute entry
			pChar = putChar_Dec2(pLogEntry->uptime[2], pChar);
			*(pChar++) = 'm';
			pChar = putChar_Dec2(pLogEntry->uptime[1], pChar);
		} else {
			pChar = putChar_Dec2(pLogEntry->uptime[1], pChar);
			*(pChar++) = 's';
			uint8_t val = pLogEntry->uptime[0] << 1;
			uint8_t digit = 0;
			while (val >= 25){
				val = val - 25; // 0..249 = 0..999 ms, also 25 divisor ergibt zehner
				digit++;
			}
			*(pChar++) = '0'+digit;
			digit = 0;
			val = val << 1; // divide by 2.5 = * 2 div 5
			while (val >= 5){
				val = val - 5; // 0..249 = 0..999 ms, also 25 divisor ergibt zehner
				digit++;
			}
			*(pChar++) = '0'+digit;
		}
		// 5: status
		switch (pLogEntry->logStatus) {
		case LOG_STATUS_ACTIVVE:
			*(pChar++) = LOG_CHAR_ACTIVE;
			break;
		case LOG_STATUS_NOTIFYIED:
			*(pChar++) = LOG_CHAR_NOTIFYED;
			break;
		case LOG_STATUS_READ:
			*(pChar++) = LOG_CHAR_READ;
			break;
		default:
			*(pChar++) = LOG_CHAR_UNKNOWN;
			break;
		}
		// 6: type
		*(pChar++) = pLogEntry->logType;
		// 7..11
		pChar = putChar_hex(pLogEntry->logCategory, pChar);
		pChar = putChar_hex(pLogEntry->logNr, pChar);
		*(pChar++) = '-';
		pChar = putChar_long(pLogEntry->logInfo, pChar);
		*pChar = '\0';
		if (changeNotifyStatus != LOG_CHANGENOTIFYNO){
			// when Status is to be changed (to read)
			pLogEntry->logStatus = changeNotifyStatus;
			// then also check if there are still unread errors
			logCheckUnreadErrorLogs();
		}
	} else {
		Log_TextBuff[0] = '-';
		Log_TextBuff[1] = '\0';
	}
	return Log_TextBuff;
}

const char nullLog [] PROGMEM = "-";

char* log_getShortTextFromIndex(uint8_t index,  char changeNotifyStatus){
	LogList_t* pLogEntry;
	pLogEntry = log_getLog(index);
	if (pLogEntry != NULL){
		return log_getShortTextFromPtr(pLogEntry,changeNotifyStatus);
	} else {
		Log_TextBuff[0] = '-';
		Log_TextBuff[1] = '\0';
		return Log_TextBuff;
	}
}