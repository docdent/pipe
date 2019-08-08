/*
 * main.h
 *
 * Created: 22.07.2019 08:57:01
 *  Author: Anwender
 */


#ifndef MAIN_H_
#define MAIN_H_

/*
0.55
eeprom_UpdateALL: update EEPROM in main() after init
menu: EEUPdate
power on via: module_StartPowerOn, module_PowerControl in main loop
Log of message pipe overflow
removed unused old edit functions from utils.h
eeprom restore
0.56
Text for Error Log
midi.h Error note onOff sent even though midi out channel unassigned
midi.h softcoupler off turns off all manual notes
menu.c changed entry for bin values (1/0) instead of (+/-)
main.c longpress of esc key clears all manual notes
menu.c Tasten Koppler
0.57
register storage changed, similar to manuals
couplers extended to 12
on set couplers reset corresponding inverse coupler
menu.c check for soft_coupler function assigned correctly
menu.c soft_coupler list changed
0.58
main.c Panic key extended functions: couplers off
menu.c OnOff Variables easier to edit
menu.c Save Programs in EEPROM
menu. cSave Softkeys in EEPROM
Improved message for menu and softkey
Program Settings Show registers
midi.h Extend Program memory to coupplers
TODO
EEPROM memory structure
MIDI Through SW
Program Change like viscount
Register Setting liek viscount
Failsafe for keys from time to time
watchdog
*/



#endif /* MAIN_H_ */