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



#define WORD_SIZE 4			/* Size of words in bytes */

#define MAX_PACKET_LEN 1002

#define NO_OF_PACKETS 1

#define MAX_DATA_BUFFER_SIZE NO_OF_PACKETS*MAX_PACKET_LEN

#undef DEBUG

/************************** Function Prototypes ******************************/


int XLlFifoPollingExample(XLlFifo *InstancePtr, UINTPTR BaseAddress);


int TxSend(XLlFifo *InstancePtr, u32 *SourceAddr);
int RxReceive(XLlFifo *InstancePtr, u32 *DestinationAddr);
XLlFifo FifoInstance;
u32 SourceBuffer[MAX_DATA_BUFFER_SIZE * WORD_SIZE];
u32 DestinationBuffer[MAX_DATA_BUFFER_SIZE * WORD_SIZE];
//---------------------------------------------------------------------------------------
#define THREAD_STACKSIZE 1024
/*
 * Max number of telnet connections that this application can serve.
 * The existing implementation does not support closing of an existing telnet.
 * Once a telnet connection is made, it stays for ever.
 */
#define MAX_CONNECTIONS 32000
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

volatile int iterk=0;
void process_echo_request(void *p)
{
    int sd = *(int *)p;

    int RECV_BUF_SIZE =4;
    int SEND_BUF_SIZE =4;
    int recv_buf;//[RECV_BUF_SIZE / sizeof(int)];  // Buffer to store received integer samples
    int n, nwrote;
	u32 i;
	u32 RxWord;
	static u32 ReceiveLength=256;
	XLlFifo_Config *Config;
	int Status;
	Status = XST_SUCCESS;

	/* Initial setup for Uart16550 */

	/* Initialize the Device Configuration Interface driver */

	Config = XLlFfio_LookupConfig(XPAR_XLLFIFO_0_BASEADDR);
	Status = XLlFifo_CfgInitialize(&FifoInstance, Config, Config->BaseAddress);
	Status = XLlFifo_Status(&FifoInstance);
	XLlFifo_IntClear(&FifoInstance,0xffffffff);
    Status = XLlFifo_Status(&FifoInstance);
	xil_printf("debug --");


	int temp;
	int k = 0;
	int counter = 0;
	xil_printf("\n	..........start..........	\n");
    while (1) {
        /* read a max of RECV_BUF_SIZE bytes from socket */
        if ((n = read(sd, &recv_buf, RECV_BUF_SIZE)) < 0) {
            xil_printf("%s: error reading from socket %d, closing socket\r\n", __FUNCTION__, sd);
            break;
        }
		if (n <= 0)
            break;
		temp = recv_buf;
		k+=1;
		*(SourceBuffer+iterk) = temp;
		//msleep();
       // XGpio_DiscreteWrite(&Gpio_output, 1,temp << 1 | 1);
		xil_printf("	%x	%x	%d	%d	%d",temp,temp << 1 | 1,k, k-4,iterk);
		if(iterk==1001){
			*(SourceBuffer + 1002) = 0x00;
			for(i=0 ; i < NO_OF_PACKETS ; i++){
				/* Writing into the FIFO Transmit Port Buffer */
				for (int j=0 ; j < MAX_PACKET_LEN ; j++){
					if( XLlFifo_iTxVacancy(&FifoInstance) ){
						
						xil_printf("\nSend Data PS-to-PL	[	%d	]	=	%d",i*MAX_PACKET_LEN+j,*(SourceBuffer+(i*MAX_PACKET_LEN)+j));
						XLlFifo_TxPutWord(&FifoInstance,
							*(SourceBuffer+(i*MAX_PACKET_LEN)+j));
							
						if(j != 0 && j != 1&&j != 498 && j != 499 && j != 500 && j!= 501)
							k+=1;
						else
							k=0; 
						//sstrinf += (*(SourceAddr+(i*MAX_PACKET_LEN)+j))*pow(10,k);
						if(k>=16){
							xil_printf("\n-------------------------------------------------");
							//msleep(10000);
							k=0;
						}
					}
				}
				/* Start Transmission by writing transmission length into the TLR */
				XLlFifo_iTxSetLen(&FifoInstance, (MAX_DATA_BUFFER_SIZE * WORD_SIZE));
				/* Check for Transmission completion */	
				while( !(XLlFifo_IsTxDone(&FifoInstance)) ){
					xil_printf("Check for Transmission completion\n");
				}
				
			}
			xil_printf("\nAqui -teste %d\n", XLlFifo_iRxOccupancy(&FifoInstance));
			while(XLlFifo_iRxOccupancy(&FifoInstance)) {
			/* Read Receive Length */
				ReceiveLength = (XLlFifo_iRxGetLen(&FifoInstance))/WORD_SIZE;
				xil_printf("Aqui %d\n",ReceiveLength);
				for (i=0; i < ReceiveLength; i++) {
					RxWord = XLlFifo_RxGetWord(&FifoInstance);
					*(SourceBuffer+i) =  RxWord;
					//msleep(1500);
					//xil_printf("Aqui %d\n",RxWord);
					//*(DestinationAddr+i) = RxWord;
					xil_printf("Receving data PL-to-PS-1 [	%d	]	=	%d	\n",i, RxWord);
					//sleep(1);
				}
			
			//iRxOccupancy = XLlFifo_iRxOccupancy(InstancePtr);
			
			xil_printf("Receving data finish 1\n");
			
//			sleep();

		}
		xil_printf("Receving data finish 2\n");
		}
		if(temp==0xea)
			counter++;
		if(iterk>=1001){
			xil_printf("\n --------------------FreeRTOS: Beginning Sending data to HOST----------------------------\n");
				for(int i = 0; i < 256; i++){
					xil_printf("Dado[	%d	]	=	%d\n	",i,*(SourceBuffer+i));
	    	    	if ((nwrote = write(sd, (SourceBuffer+i), SEND_BUF_SIZE)) < 0) {
        			    xil_printf("%s: ERROR responding to client signal processing request. received = %d, written = %d\r\n",
        			            __FUNCTION__, n, nwrote);
        			    xil_printf("Closing socket %d\r\n", sd);
        			    break;
        			}
				}
				xil_printf("\n --------------------FreeRTOS: End of Transmission to HOST----------------------------\n");
			}
    	
		iterk++;
		xil_printf("\n");

		if(nwrote < 0 )
			break;

			
	}
	xil_printf("\n	..........end..........	\n");
	//int DataRead ;
	if(temp==0xea)
			iterk = 0;
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


/*
		if(counter==2){
			if ((nwrote = write(sd, send_buf, 256 * sizeof(int))) < 0) {
            	xil_printf("%s: ERROR responding to client signal processing request. received = %d, written = %d\r\n",
                    __FUNCTION__, n, nwrote);
            	xil_printf("Closing socket %d\r\n", sd);
            	break;
        	}
			xil_printf("Read out matrix...\n");
				for(int i = 0; i < 256; i++){
					xil_printf("%d",RxWord);
	    	    	if ((nwrote = write(sd, &RxWord, SEND_BUF_SIZE)) < 0) {
        			    xil_printf("%s: ERROR responding to client signal processing request. received = %d, written = %d\r\n",
        			            __FUNCTION__, n, nwrote);
        			    xil_printf("Closing socket %d\r\n", sd);
        			    break;
        			}
				}
			}
    	}
		if(nwrote < 0 )
			break;
			*/
    /* close connection */