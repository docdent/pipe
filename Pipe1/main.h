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
menu.c Save Softkeys in EEPROM
menu.c Improved message for menu and softkey
menu.c Show registers
midi.h Extend Program memory to coupplers
midi.h Midi IN Program Change accepted if channel is valid
midi.h MIDI Through SW for Notes, Program Change
0.59
midi.c Register Setting received as midi sysex
midi.c Setting to ignore program change on midi in
menu.c Clear Combination as Softkey
main.c Show received Program Change

TODO

Show Set of Registers
EEPROM memory structure
Program Change like viscount
Combination in selecteable Bank
Failsafe for keys from time to time
watchdog
log for events and input
REstore Manu display after panic button message
Restore Menu display after MEssage
Coupler for lowest bass note  only
*/



#endif /* MAIN_H_ */