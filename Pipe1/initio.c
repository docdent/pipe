// initio.c
#include <inttypes.h>
#include <avr/io.h>
#include "hw_defs.h"

// Portpins definieren - alle Eingang mit Pullup
void init_iopins (void)
{
	// DDRs are set to 0 by HW, here pullups only
	PORTA = 0xFF;
	PORTB = 0xFF;
	PORTC = 0xFF;
	PORTD = 0xFF;
	PORTE = 0xFF;
	PORTF = 0xFF;
	PORTG = 0xFF;
	PORTH = 0xFF;
	PORTJ = 0xFF;
	PORTK = 0xFF;
	PORTL = 0xFF; 
	PIPE_OE_DDR  |= 1 << PIPE_OE_NR; // OE output
	PIPE_OE_PORT &= ~(1 << PIPE_OE_NR); // OE off
	PWR_EN_DDR |= 1 << PWR_EN_PIN; // 12V Enable Port
	PWR_EN_PORT &= ~(1 << PWR_EN_PIN); // 0= Power off;
}