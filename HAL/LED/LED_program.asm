
_LED_voidInit:

;LED_program.c,6 :: 		void LED_voidInit(u8 copy_u8Led) {
;LED_program.c,7 :: 		if(copy_u8Led == LED0) {
	MOVF       FARG_LED_voidInit_copy_u8Led+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_LED_voidInit0
;LED_program.c,8 :: 		GPIO_voidSetPinDirection(GPIO_PORTB, 0, GPIO_OUTPUT);
	MOVLW      1
	MOVWF      FARG_GPIO_voidSetPinDirection_copy_u8Port+0
	CLRF       FARG_GPIO_voidSetPinDirection_copy_u8Pin+0
	CLRF       FARG_GPIO_voidSetPinDirection_copy_u8Direction+0
	CALL       _GPIO_voidSetPinDirection+0
;LED_program.c,9 :: 		}
L_LED_voidInit0:
;LED_program.c,10 :: 		}
L_end_LED_voidInit:
	RETURN
; end of _LED_voidInit

_LED_voidOn:

;LED_program.c,12 :: 		void LED_voidOn(u8 copy_u8Led) {
;LED_program.c,13 :: 		if(copy_u8Led == LED0) {
	MOVF       FARG_LED_voidOn_copy_u8Led+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_LED_voidOn1
;LED_program.c,14 :: 		GPIO_voidSetPinValue(GPIO_PORTB, 0, GPIO_HIGH);
	MOVLW      1
	MOVWF      FARG_GPIO_voidSetPinValue_copy_u8Port+0
	CLRF       FARG_GPIO_voidSetPinValue_copy_u8Pin+0
	MOVLW      1
	MOVWF      FARG_GPIO_voidSetPinValue_copy_u8Value+0
	CALL       _GPIO_voidSetPinValue+0
;LED_program.c,15 :: 		}
L_LED_voidOn1:
;LED_program.c,16 :: 		}
L_end_LED_voidOn:
	RETURN
; end of _LED_voidOn

_LED_voidOff:

;LED_program.c,18 :: 		void LED_voidOff(u8 copy_u8Led) {
;LED_program.c,19 :: 		if(copy_u8Led == LED0) {
	MOVF       FARG_LED_voidOff_copy_u8Led+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_LED_voidOff2
;LED_program.c,20 :: 		GPIO_voidSetPinValue(GPIO_PORTB, 0, GPIO_LOW);
	MOVLW      1
	MOVWF      FARG_GPIO_voidSetPinValue_copy_u8Port+0
	CLRF       FARG_GPIO_voidSetPinValue_copy_u8Pin+0
	CLRF       FARG_GPIO_voidSetPinValue_copy_u8Value+0
	CALL       _GPIO_voidSetPinValue+0
;LED_program.c,21 :: 		}
L_LED_voidOff2:
;LED_program.c,22 :: 		}
L_end_LED_voidOff:
	RETURN
; end of _LED_voidOff
