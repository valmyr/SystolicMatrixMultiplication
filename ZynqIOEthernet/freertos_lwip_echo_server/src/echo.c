/*
Project 2: send and receive signals
 */

#include <stdio.h>
#include <string.h>


#include "xparameters.h"
#include "lwip/sockets.h"
#include "netif/xadapter.h"
#include "lwipopts.h"
#include "xil_printf.h"
#include "FreeRTOS.h"
#include "task.h"
#include <stdlib.h>  // For abs()
#include "xgpiops.h"

#include <xgpio.h>
#include <xil_printf.h>

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#ifndef SDT
#define GPIO_EXAMPLE_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID
#else
#define	XGPIO_AXI_BASEADDRESS	XPAR_XGPIO_0_BASEADDR
#endif

#define THREAD_STACKSIZE 1024
/*
 * Max number of telnet connections that this application can serve.
 * The existing implementation does not support closing of an existing telnet.
 * Once a telnet connection is made, it stays for ever.
 */
#define MAX_CONNECTIONS 102
int new_sd[MAX_CONNECTIONS];
int connection_index;

u16_t echo_port = 7;

void print_echo_app_header()
{
    xil_printf("%20s %6d %s\r\n", "echo server",
                        echo_port,
                        "$ telnet <board_ip> 7");

}

/* thread spawned for each connection */
/* thread spawned for each connection */
void process_echo_request(void *p)
{
    int sd = *(int *)p;
    int Status;
    int RECV_BUF_SIZE =8;
    int SEND_BUF_SIZE =32;
    int recv_buf;//[RECV_BUF_SIZE / sizeof(int)];  // Buffer to store received integer samples
    int send_buf[SEND_BUF_SIZE / sizeof(int)];  // Buffer to store processed samples
    int n, nwrote;
    const int MULTIPLIER = 2;                  // Constant to multiply signal samples
    XGpio Gpio;
	#ifndef SDT
	Status = XGpio_Initialize(&Gpio, GPIO_EXAMPLE_DEVICE_ID);
	#else
	Status = XGpio_Initialize(&Gpio, XGPIO_AXI_BASEADDRESS);
	#endif
	if (Status != XST_SUCCESS) {
		xil_printf("Gpio Initialization Failed\r\n");
		//return XST_FAILURE;
	}
	XGpio_SetDataDirection(&Gpio, 1, 0x00000000);
    while (1) {
        /* read a max of RECV_BUF_SIZE bytes from socket */
        if ((n = read(sd, &recv_buf, RECV_BUF_SIZE)) < 0) {
            xil_printf("%s: error reading from socket %d, closing socket\r\n", __FUNCTION__, sd);
            break;
        }
        if (n <= 0)
            break;
		XGpio_DiscreteWrite(&Gpio, 1,recv_buf << 1 | 1);
		XGpio_DiscreteWrite(&Gpio, 1,recv_buf << 1 | 0);
		xil_printf("%x %x",recv_buf,recv_buf << 1 | 1);
		xil_printf("\n");

        /* break if client closed connection */


        /* Calculate the number of received samples */
       // int num_samples = n / sizeof(int);
//============================== Signal processing ==================
        /* Process the signal: calculate the abs and multiply each sample by the constant */
        //for (int i = 0; i < num_samples; i++) {
        //    send_buf[i] = abs(recv_buf[i]) * MULTIPLIER;
		//	xil_printf("%d ",recv_buf[i]);
	    //    //XGpio_DiscreteWrite(&Gpio, 1,recv_buf[0]);
        //}
		
//=============================================================
        /* Send the processed signal back to the client */
        //if ((nwrote = write(sd, send_buf, num_samples * sizeof(int))) < 0) {
        //    xil_printf("%s: ERROR responding to client signal processing request. received = %d, written = %d\r\n",
        //            __FUNCTION__, n, nwrote);
        //    xil_printf("Closing socket %d\r\n", sd);
        //    break;
        //}
    }

    /* close connection */
	xil_printf("\n..........end..........\n");

    close(sd);
    vTaskDelete(NULL);
}


void echo_application_thread()
{
	int sock;
	int size;
#if LWIP_IPV6==0
	struct sockaddr_in address, remote;

	memset(&address, 0, sizeof(address));

	if ((sock = lwip_socket(AF_INET, SOCK_STREAM, 0)) < 0)
		return;

	address.sin_family = AF_INET;
	address.sin_port = htons(echo_port);
	address.sin_addr.s_addr = INADDR_ANY;
#else
	struct sockaddr_in6 address, remote;

	memset(&address, 0, sizeof(address));

	address.sin6_len = sizeof(address);
	address.sin6_family = AF_INET6;
	address.sin6_port = htons(echo_port);

	memset(&(address.sin6_addr), 0, sizeof(address.sin6_addr));

	if ((sock = lwip_socket(AF_INET6, SOCK_STREAM, 0)) < 0)
		return;
#endif

	if (lwip_bind(sock, (struct sockaddr *)&address, sizeof (address)) < 0)
		return;

	lwip_listen(sock, 0);

	size = sizeof(remote);

	while (1) {
		if ((new_sd[connection_index] = lwip_accept(sock, (struct sockaddr *)&remote, (socklen_t *)&size)) > 0) {
			sys_thread_new("echos", process_echo_request,
				(void*)&(new_sd[connection_index]),
				THREAD_STACKSIZE,
				DEFAULT_THREAD_PRIO);
			if (++connection_index>= MAX_CONNECTIONS) {
				break;
			}
		}
	}
	xil_printf("Maximum number of connections reached, No further connections will be accepted\r\n");
	vTaskSuspend(NULL);
}