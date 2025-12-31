#include <stdio.h>

#include "xil_printf.h"
#include "xgpio.h"
#include "xparameters.h"
 
#define LED_CHANNEL 2  //since GPIO2 is connected to LEDs
#define SWITCH_CHANNEL 1   //since GPIO1 is connected to switches
#define LEDS_MASK 0x0F //4x LEDs
#define SWITCHES_MASK 0x0F //4x switches
 
#define LED_DELAY     10000000
#define LED 0x01   /* Assumes bit 0 of GPIO is connected to an LED  */
 
XGpio Gpio; /* The Instance of the GPIO Driver */
    
int main()
{
   // init_platform();
    
    int Status;
	volatile int Delay;
 
    print("Hello World\n\r");
    print("Successfully ran Hello World application\n");
    
        /* Initialize the GPIO driver */
    #ifndef SDT
        Status = XGpio_Initialize(&Gpio, GPIO_EXAMPLE_DEVICE_ID);
        print("Initialized GPIO at GPIO_EXAMPLE_DEVICE_ID\n\r");
    #else
        Status = XGpio_Initialize(&Gpio, XPAR_XGPIO_0_BASEADDR);
        print("Initialized GPIO at base address\n\r");
    #endif
        if (Status != XST_SUCCESS) {
            xil_printf("Gpio Initialization Failed\r\n");
            return XST_FAILURE;
        }
 
	xil_printf("%d\n\r",Status);
 
    print("\nSetting the direction for LED signals\n\r");
	//XGpio_SetDataDirection(&Gpio, LED_CHANNEL, ~LED);
    print("\n/Have set the direction for LED signals\n\r");
 
    while (0) {
        print("Inside loop\n\r");
    	u32 switches = XGpio_DiscreteRead(&Gpio,SWITCH_CHANNEL);
		XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, switches);
		xil_printf("checked! %x\n\r",switches);
        sleep (1);
    }
 
	while (1) {
        print("Inside LED blink loop\n\r");
		/* Set the LED to High */
		XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, LED);
 
		/* Wait a small amount of time so the LED is visible */
		for (Delay = 0; Delay < LED_DELAY; Delay++);
 
		/* Clear the LED bit */
		XGpio_DiscreteClear(&Gpio, LED_CHANNEL, LED);
 
		/* Wait a small amount of time so the LED is visible */
		for (Delay = 0; Delay < LED_DELAY; Delay++);
	}
 
    //cleanup_platform();
    return 0;
}