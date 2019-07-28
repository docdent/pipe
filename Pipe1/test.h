/*
 * test.h
 *
 * Created: 23.01.2019 22:25:52
 *  Author: Anwender
 */

#ifndef TEST_H_
#define TEST_H_

#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>

#include "lcd_u.h"
#include "initio.h"
#include "message.h"
#include "hwtimer.h"
#include "utils.h"
#include "serial.h"

#define T_PIPEIO_STATE

extern uint8_t test_pipeIO();
extern void test_PipePins();
extern void testMenu();
extern void testMIDIin();
extern void test_USBser();
extern uint8_t test_PipePatterns();
extern void test_input();
#endif