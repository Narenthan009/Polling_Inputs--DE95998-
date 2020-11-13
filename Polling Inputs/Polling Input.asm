
	#include<p18f4550.inc>
	
		org 0x00
		goto start
		org 0x08
		retfie
		org 0x18	
		retfie

;=====================================================================
;Connect two (2) active high push button to PORTB.
;Connect two (2) active low LEDs on PORTD.
;If the first push button is pressed, the first LED on PORTD should light up.
;If the second button is pressed, the second LED should light up.
;Other than that, all LEDs should turn off.
;======================================================================


start   clrf TRISB,A
		setf TRISD,A
		clrf PORTB,A
		clrf PORTD,A

check 	btfsc PORTB,0,A ; If B0 not pressed, skip next line
		bcf PORTD,0,A
		bsf PORTD,0,A ; Off
		bra check1

check1	btfsc PORTB,1,A ; If B1 not pressed, skip next line
		bcf PORTD,1,A
		bsf PORTD,1,A ; Off
		bra check

		end



	


























































