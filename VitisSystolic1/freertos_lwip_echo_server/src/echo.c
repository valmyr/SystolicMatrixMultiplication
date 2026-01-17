/*
 * Copyright (C) 2016 - 2019 Xilinx, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 */

#include <arch/cc.h>
#include <stdio.h>
#include <string.h>

#include "lwip/sockets.h"
#include "netif/xadapter.h"
#include "lwipopts.h"
#include "xil_printf.h"
#include "FreeRTOS.h"
#include "task.h"

#include "xparameters.h"
#include "xil_exception.h"
#include "xstreamer.h"
#include "xil_cache.h"
#include "xllfifo.h"
#include "sleep.h"
#include "xstatus.h"
#include <xil_printf.h>


/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/


#define true 1
#define false 0

#define WORD_SIZE 4			/* Size of words in bytes */

#define MAX_PACKET_LEN 1000

#define NO_OF_PACKETS 1

#define MAX_DATA_BUFFER_SIZE NO_OF_PACKETS*MAX_PACKET_LEN

#define DEBUG false

/************************** Function Prototypes ******************************/


int XLlFifoPollingExample(XLlFifo *InstancePtr, UINTPTR BaseAddress);


int TxSend(XLlFifo *InstancePtr, u32 *SourceAddr);
int RxReceive(XLlFifo *InstancePtr, u32 *DestinationAddr);
XLlFifo FifoInstance;
XLlFifo_Config *Config;
	

//---------------------------------------------------------------------------------------
#define THREAD_STACKSIZE 1024*8
/*
 * Max number of telnet connections that this application can serve.
 * The existing implementation does not support closing of an existing telnet.
 * Once a telnet connection is made, it stays for ever.
 */
#define MAX_CONNECTIONS 100
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
int RECV_BUF_SIZE =4*1000;
int SEND_BUF_SIZE =4*256;
volatile int packages_received = 0;
void process_echo_request(void *p)
{
    int sd = *(int *)p;
	int recv_buf[RECV_BUF_SIZE/4];//[RECV_BUF_SIZE / sizeof(int)];  // Buffer to store received integer samples
	int send_buf[SEND_BUF_SIZE/4];//[RECV_BUF_SIZE / sizeof(int)];  // Buffer to store received integer samples

    int n = 0, nwrote;



	
	xil_printf("\n-------------	SERVER ON	-------------\n\n");
    while (1) {
        /* read a max of RECV_BUF_SIZE bytes from socket */
		if (n < 0) {
        	xil_printf("%s: error reading from socket %d, closing socket\r\n", __FUNCTION__, sd);
        	break;
        }
		n = read(sd, recv_buf+packages_received, RECV_BUF_SIZE);
		packages_received += n / sizeof(int);
		if(packages_received==1000){
			if(DEBUG)
				xil_printf("		Host-to-PS \n");
			while (XLlFifo_iTxVacancy(&FifoInstance) < 1000){  };
			XLlFifo_Write(&FifoInstance , recv_buf ,  1000 * 4);
			XLlFifo_TxSetLen(&FifoInstance, (1000 * 4));
			while (!XLlFifo_IsTxDone(&FifoInstance)){ };
			packages_received = 0;
			if(DEBUG)
				xil_printf("		PS-to-PL \n");
			//while( !(XLlFifo_IsTxDone(&FifoInstance))){xil_printf("Loop debug\n");}			
		}
		if(*(recv_buf) == 0xea && *(recv_buf+1) == 0xea){
			packages_received = 0;
			if(DEBUG)
				xil_printf("		PL-to-PS \n");
			while (XLlFifo_iTxVacancy(&FifoInstance) < 1){ };
			XLlFifo_TxPutWord(&FifoInstance  	, *(recv_buf));
			XLlFifo_iTxSetLen(&FifoInstance 	, (1 * 4));
			while (!XLlFifo_IsTxDone(&FifoInstance)){ };
			while (XLlFifo_iTxVacancy(&FifoInstance) < 1){ };
			XLlFifo_TxPutWord(&FifoInstance  	, *(recv_buf)) ;
			XLlFifo_iTxSetLen(&FifoInstance 	, (1 * 4));
			while (!XLlFifo_IsTxDone(&FifoInstance)){ };
			while (XLlFifo_iRxOccupancy(&FifoInstance) < 256){ };
			XLlFifo_Read(&FifoInstance,send_buf,256*sizeof(int));
			if(DEBUG)
				xil_printf("		PS-to-Host \n");
			if ((nwrote = write(sd, send_buf, 256 * sizeof(int))) < 0) {
        		xil_printf("%s: ERROR responding to client signal processing request. received = %d, written = %d\r\n",
        	    __FUNCTION__, n, nwrote);
        		xil_printf("Closing socket %d\r\n", sd);
        		break;
        	}	
		}
		if (n <= 0 || nwrote <= 0 || (*(recv_buf) == 0xea))
            break;
	}
	xil_printf("\n-------------	SERVER OFF	-------------\n\n");
	//int DataRead ;

	vTaskDelay(1);
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
	/* Initialize the Device Configuration Interface driver */
	Config = XLlFfio_LookupConfig(XPAR_XLLFIFO_0_BASEADDR);
	XLlFifo_CfgInitialize(&FifoInstance, Config, Config->BaseAddress);
	XLlFifo_Status(&FifoInstance);
	XLlFifo_IntClear(&FifoInstance,0xffffffff);
    XLlFifo_Status(&FifoInstance);
	XLlFifo_IntDisable(&FifoInstance,0x000000000);	
	while (1) {
    	//XTime_GetTime(&t1);
		if ((new_sd[connection_index] = lwip_accept(sock, (struct sockaddr *)&remote, (socklen_t *)&size)) > 0) {
			sys_thread_new("echos", process_echo_request,
				(void*)&(new_sd[connection_index]),
				THREAD_STACKSIZE,
				DEFAULT_THREAD_PRIO);
		}
    	//XTime_GetTime(&t2);
	}
	xil_printf("Maximum number of connections reached, No further connections will be accepted\r\n");
	vTaskSuspend(NULL);
}
