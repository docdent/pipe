/*
 * hw_defs.h
 *
 * Created: 19.01.2019 19:58:26
 *  Author: Anwender
 */


#ifndef HW_DEFS_H_
#define HW_DEFS_H_

// ************************* LCD ***************************
// G5,E3,H3-6
// #define LCD_DB4_PORT             PORTG       // If using 4 bit mode, you must configure DB4-DB7
// #define LCD_DB4_PIN              5
// #define LCD_DB5_PORT             PORTE
// #define LCD_DB5_PIN              3
// #define LCD_DB6_PORT             PORTH
// #define LCD_DB6_PIN              3
// #define LCD_DB7_PORT             PORTH
// #define LCD_DB7_PIN              4
//
// #define LCD_RS_PORT              PORTH       // Port for RS line
// #define LCD_RS_PIN               5           // Pin for RS line
//
// #define LCD_E_PORT               PORTH       // Port for E line
// #define LCD_E_PIN                6           // Pin for E line

#define LCD_D7_PORT     PORTH                   // lcd D7 connection
#define LCD_D7_BIT      PORTH4
#define LCD_D7_DDR      DDRH

#define LCD_D6_PORT     PORTH                   // lcd D6 connection
#define LCD_D6_BIT      PORTH3
#define LCD_D6_DDR      DDRH

#define LCD_D5_PORT     PORTE                   // lcd D5 connection
#define LCD_D5_BIT      PORTE3
#define LCD_D5_DDR      DDRE

#define LCD_D4_PORT     PORTG                   // lcd D4 connection
#define LCD_D4_BIT      PORTG5
#define LCD_D4_DDR      DDRG

#define LCD_E_PORT      PORTH                   // lcd Enable pin
#define LCD_E_BIT       PORTH6
#define LCD_E_DDR       DDRH

#define LCD_RS_PORT     PORTH                   // lcd Register Select pin
#define LCD_RS_BIT      PORTH5
#define LCD_RS_DDR      DDRH


// *********************** LCD KBD *************************
// F0

#undef LCD_KBD_SHIELD // use arduino kbd Shield (or 3d printer lcd/kbd shield if undef)
#ifdef LCD_KBD_SHIELD // 8bit ADC-Values for Arduino LCD KBD Shield and key functions (in hw_defs.h)
	#define ADC_KEY_NIL_VAL 0xFF
	#define ADC_KEY1_VAL 185
	#define ADC_KEY2_VAL 126
	#define ADC_KEY3_VAL 82
	#define ADC_KEY4_VAL 36
	#define ADC_KEY5_VAL 0
	#define ADC_KEY1_FUNC MESSAGE_KEY_SEL
	#define ADC_KEY2_FUNC MESSAGE_KEY_LEFT
	#define ADC_KEY3_FUNC MESSAGE_KEY_DOWN
	#define ADC_KEY4_FUNC MESSAGE_KEY_UP
	#define ADC_KEY5_FUNC MESSAGE_KEY_RIGHT
#else // 3d printer LCD and KBD
	#define ADC_KEY_NIL_VAL 0xFF
	#define ADC_KEY0_VAL 210
	#define ADC_KEY1_VAL 173
	#define ADC_KEY2_VAL 128
	#define ADC_KEY3_VAL 81
	#define ADC_KEY4_VAL 45
	#define ADC_KEY5_VAL 23
	#define ADC_KEY0_FUNC MESSAGE_KEY_ESC
	#define ADC_KEY1_FUNC MESSAGE_KEY_UP
	#define ADC_KEY2_FUNC MESSAGE_KEY_RIGHT
	#define ADC_KEY3_FUNC MESSAGE_KEY_SEL
	#define ADC_KEY4_FUNC MESSAGE_KEY_DOWN
	#define ADC_KEY5_FUNC MESSAGE_KEY_LEFT
#endif
#define ADC_KBDLCD_PORT			PORTF	// Analog in for keys of lcd_kbd shield
#define ADC_KBDLCD_PIN			0		// PortNr

// *********************** ARDUINO MEGA HW *****************
// B7
#define LED_DDR					DDRB
#define LED_PORT				PORTB
#define LED_PIN					7
// B6
#define PWR_EN_DDR				DDRB
#define PWR_EN_PORT				PORTB
#define PWR_EN_PIN				6
#define POWER_ON				PWR_EN_PORT |= 1 << PWR_EN_PIN;
#define POWER_OFF				PWR_EN_PORT &= ~(1 << PWR_EN_PIN);

// ********************** PIPE INTERFACE ********************
// A0-7, C0-7, G0-2, D7
#define PIPEOUT_PORT			PORTC
#define PIPEOUT_DDR				DDRC
#define PIPEIN_PORT				PORTA
#define PIPEIN_PIN				PINA
#define PIPEIN_DDR				DDRA
#define PIPECTRL_PORT			PORTG
#define PIPECTRL_DDR			DDRG
#define PIPEIO_CLK				0
#define PIPEIO_LATCH2PIPE		1
#define PIPEIO_LATCH2CPU		2

#define PIPE_OE_PORT			PORTD
#define PIPE_OE_DDR				DDRD
#define PIPE_OE_NR				7

#define PIPE_CLOCK_L PIPECTRL_PORT &= ~(1 << PIPEIO_CLK); // set -CLK low (active)
#define PIPE_CLOCK_H PIPECTRL_PORT |= (1 << PIPEIO_CLK); // set -CLK high (inactive)
#define PIPE_LATCH2PIPE_L PIPECTRL_PORT &= ~(1 << PIPEIO_LATCH2PIPE); // set -LATCH2PIPE low (active)
#define PIPE_LATCH2PIPE_H PIPECTRL_PORT |= (1 << PIPEIO_LATCH2PIPE); // set -LATCH2PIPE low (inactive)
#define PIPE_LATCH2CPU_L PIPECTRL_PORT &= ~(1 << PIPEIO_LATCH2CPU); // set -LATCH2CPU low (active)
#define PIPE_LATCH2CPU_H PIPECTRL_PORT |= (1 << PIPEIO_LATCH2CPU); // set -LATCH2PIPE high (inactive)
#define PIPE_OE_L PIPE_OE_PORT &= ~(1 << PIPE_OE_NR); // set OE low (inactive)
#define PIPE_OE_H PIPE_OE_PORT |= (1 << PIPE_OE_NR); // set OE high (active)


//************************ BIT MACROS *************************

#endif /* HW_DEFS_H_ */