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
 
    Status = XGpio_Initialize(&Gpio, XPAR_AXI_GPIO_0_BASEADDR);
    xil_printf("%d\n\r",Status);
    Status = XGpio_Initialize(&Gpio, XPAR_AXI_GPIO_1_BASEADDR);

	xil_printf("%d\n\r",Status);
 
    print("\nSetting the direction for LED signals\n\r");
	//XGpio_SetDataDirection(&Gpio, 1, ~LED);
	XGpio_SetDataDirection(&Gpio, 2, LED);
    print("\n/Have set the direction for LED signals\n\r");
 
    while (0) {
        print("Inside loop\n\r");
    	u32 switches = XGpio_DiscreteRead(&Gpio,2);
		XGpio_DiscreteWrite(&Gpio, 1, switches);
		xil_printf("checked! %x\n\r",switches);
       // sleep (1);
    }
 
	while (1) {
        print("Inside LED blink loop\n\r");
		/* Set the LED to High */
		XGpio_DiscreteWrite(&Gpio, 1, LED);
 
		/* Wait a small amount of time so the LED is visible */
		for (Delay = 0; Delay < LED_DELAY; Delay++);
 
		/* Clear the LED bit */
		XGpio_DiscreteClear(&Gpio, 1, LED);
 
		/* Wait a small amount of time so the LED is visible */
		for (Delay = 0; Delay < LED_DELAY; Delay++);
	}
 
    //cleanup_platform();
    return 0;
}