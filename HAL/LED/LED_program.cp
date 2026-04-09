#line 1 "C:/Users/OmarT/OneDrive/Pictures/Embedded Assignment/HAL/LED/LED_program.c"
#line 1 "c:/users/omart/onedrive/pictures/embedded assignment/hal/led/../../services/std_types.h"




typedef unsigned char u8;
typedef unsigned short int u16;
typedef unsigned long int u32;


typedef signed char s8;
typedef signed short int s16;
typedef signed long int s32;


typedef float f32;
typedef double f64;
#line 1 "c:/users/omart/onedrive/pictures/embedded assignment/hal/led/../../services/bit_math.h"
#line 1 "c:/users/omart/onedrive/pictures/embedded assignment/hal/led/../../mcal/gpio/gpio_interface.h"
#line 20 "c:/users/omart/onedrive/pictures/embedded assignment/hal/led/../../mcal/gpio/gpio_interface.h"
void GPIO_voidSetPortDirection(unsigned char copy_u8Port, unsigned char copy_u8Direction);
void GPIO_voidSetPinDirection(unsigned char copy_u8Port, unsigned char copy_u8Pin, unsigned char copy_u8Direction);
void GPIO_voidSetPortValue(unsigned char copy_u8Port, unsigned char copy_u8Value);
void GPIO_voidSetPinValue(unsigned char copy_u8Port, unsigned char copy_u8Pin, unsigned char copy_u8Value);
unsigned char GPIO_u8GetPinValue(unsigned char copy_u8Port, unsigned char copy_u8Pin);
#line 1 "c:/users/omart/onedrive/pictures/embedded assignment/hal/led/led_interface.h"
#line 1 "c:/users/omart/onedrive/pictures/embedded assignment/hal/led/../../services/std_types.h"
#line 10 "c:/users/omart/onedrive/pictures/embedded assignment/hal/led/led_interface.h"
void LED_voidInit(u8 copy_u8Led);
void LED_voidOn(u8 copy_u8Led);
void LED_voidOff(u8 copy_u8Led);
void LED_voidToggle(u8 copy_u8Led);
#line 6 "C:/Users/OmarT/OneDrive/Pictures/Embedded Assignment/HAL/LED/LED_program.c"
void LED_voidInit(u8 copy_u8Led) {
 if(copy_u8Led ==  0 ) {
 GPIO_voidSetPinDirection( 1 , 0,  0 );
 }
}

void LED_voidOn(u8 copy_u8Led) {
 if(copy_u8Led ==  0 ) {
 GPIO_voidSetPinValue( 1 , 0,  1 );
 }
}

void LED_voidOff(u8 copy_u8Led) {
 if(copy_u8Led ==  0 ) {
 GPIO_voidSetPinValue( 1 , 0,  0 );
 }
}
