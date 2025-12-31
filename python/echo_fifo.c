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

/***************************** Include Files *********************************/
#include "xparameters.h"
#include "xil_exception.h"
#include "xstreamer.h"
#include "xil_cache.h"
#include "xllfifo.h"
#include "xstatus.h"
#define FIFO_DEV_ID	   	XPAR_AXI_FIFO_0_DEVICE_ID

#define WORD_SIZE 4			/* Size of words in bytes */

#define MAX_PACKET_LEN 4

#define NO_OF_PACKETS 64

#define MAX_DATA_BUFFER_SIZE NO_OF_PACKETS*MAX_PACKET_LEN

/*****************************************************************************/
/**
*
* Main function
*
* This function is the main entry of the Axi FIFO Polling test.
*
* @param	None
*
* @return
*		- XST_SUCCESS if tests pass
* 		- XST_FAILURE if fails.
*
* @note		None
*
******************************************************************************/
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
#define MAX_CONNECTIONS 200
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

    int RECV_BUF_SIZE = 1024;
    int SEND_BUF_SIZE = 1024;
    int recv_buf[RECV_BUF_SIZE / sizeof(int)];  // Buffer to store received integer samples
    int send_buf[SEND_BUF_SIZE / sizeof(int)];  // Buffer to store processed samples
    int n, nwrote;
   // const int MULTIPLIER = 2;                  // Constant to multiply signal samples
	XLlFifo InstancePtr;
	//Status = XLlFifoPollingExample(&FifoInstance, XPAR_XLLFIFO_0_BASEADDR);
	XLlFifo_Config *Config;
	int Status;


	/* Initialize the Device Configuration Interface driver */

	Config = XLlFfio_LookupConfig(XPAR_XLLFIFO_0_BASEADDR);


	/*
	 * This is where the virtual address would be used, this example
	 * uses physical address.
	 */
	Status = XLlFifo_CfgInitialize(&InstancePtr, Config, Config->BaseAddress);

	/* Check for the Reset value */
	Status = XLlFifo_Status(&InstancePtr);
	XLlFifo_IntClear(&InstancePtr,0xffffffff);
	Status = XLlFifo_Status(&InstancePtr);
    while (1) {
        /* read a max of RECV_BUF_SIZE bytes from socket */
        if ((n = read(sd, recv_buf, RECV_BUF_SIZE)) < 0) {
            xil_printf("%s: error reading from socket %d, closing socket\r\n", __FUNCTION__, sd);
            break;
        }

        /* break if client closed connection */
        if (n <= 0)
            break;

        /* Calculate the number of received samples */
        int num_samples = n / sizeof(int);
//============================== Signal processing ==================
        /* Process the signal: calculate the abs and multiply each sample by the constant */

		xil_printf("%d ",recv_buf[0]);
		//if(XLlFifo_iTxVacancy(&InstancePtr))
		XLlFifo_TxPutWord(&InstancePtr,recv_buf[0]);
		XLlFifo_iTxSetLen(&InstancePtr, (1 * 8));
		xil_printf("\n");
        xil_printf("TESTE: \n");
//=============================================================
        /* Send the processed signal back to the client */
       // if ((nwrote = write(sd, send_buf, num_samples * sizeof(int))) < 0) {
       //     xil_printf("%s: ERROR responding to client signal processing request. received = %d, written = %d\r\n",
       //             __FUNCTION__, n, nwrote);
       //     xil_printf("Closing socket %d\r\n", sd);
       //     break;
       // }
    }

    /* close connection */
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
''
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
