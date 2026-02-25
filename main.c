/******************************************************************************
* Copyright (C) 2010 - 2022 Xilinx, Inc.  All rights reserved.
* Copyright (C) 2022 - 2023 Advanced Micro Devices, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

/*****************************************************************************/
/**
 *
 * @file xaxidma_example_simple_poll.c
 *
 * This file demonstrates how to use the xaxidma driver on the Xilinx AXI
 * DMA core (AXIDMA) to transfer packets in polling mode when the AXI DMA core
 * is configured in simple mode.
 *
 * This code assumes a loopback hardware widget is connected to the AXI DMA
 * core for data packet loopback.
 *
 * To see the debug print, you need a Uart16550 or uartlite in your system,
 * and please set "-DDEBUG" in your compiler options. You need to rebuild your
 * software executable.
 *
 *
 * <pre>
 * MODIFICATION HISTORY:
 *
 * Ver   Who  Date     Changes
 * ----- ---- -------- -------------------------------------------------------
 * 4.00a rkv  02/22/11 New example created for simple DMA, this example is for
 *       	       simple DMA
 * 5.00a srt  03/06/12 Added Flushing and Invalidation of Caches to fix CRs
 *		       648103, 648701.
 *		       Added V7 DDR Base Address to fix CR 649405.
 * 6.00a srt  03/27/12 Changed API calls to support MCDMA driver.
 * 7.00a srt  06/18/12 API calls are reverted back for backward compatibility.
 * 7.01a srt  11/02/12 Buffer sizes (Tx and Rx) are modified to meet maximum
 *		       DDR memory limit of the h/w system built with Area mode
 * 7.02a srt  03/01/13 Updated DDR base address for IPI designs (CR 703656).
 * 9.1   adk  01/07/16 Updated DDR base address for Ultrascale (CR 799532) and
 *		       removed the defines for S6/V6.
 * 9.3   ms   01/23/17 Modified xil_printf statement in main function to
 *                     ensure that "Successfully ran" and "Failed" strings are
 *                     available in all examples. This is a fix for CR-965028.
 *       ms   04/05/17 Modified Comment lines in functions to
 *                     recognize it as documentation block for doxygen
 *                     generation of examples.
 * 9.9   rsp  01/21/19 Fix use of #elif check in deriving DDR_BASE_ADDR.
 * 9.10  rsp  09/17/19 Fix cache maintenance ops for source and dest buffer.
 * 9.14  sk   03/08/22 Delete DDR memory limits comments as they are not
 * 		       relevant to this driver version.
 * 9.15  sa   08/12/22 Updated the example to use latest MIG cannoical define
 * 		       i.e XPAR_MIG_0_C0_DDR4_MEMORY_MAP_BASEADDR.
 * 9.16  sa   09/29/22 Fix infinite loops in the example.
 * </pre>
 *
 * ***************************************************************************

 */
/***************************** Include Files *********************************/
#include "xaxidma.h"
#include "xparameters.h"
#include "xdebug.h"
#include "sleep.h"
#include <stdint.h>
#include <xil_types.h>

#if defined(XPAR_UARTNS550_0_BASEADDR)
#include "xuartns550_l.h"       /* to use uartns550 */
#endif

/******************** Constant Definitions **********************************/

/*
 * Device hardware build related constants.
 */

#ifndef SDT
#define DMA_DEV_ID		XPAR_AXIDMA_0_DEVICE_ID

#ifdef XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#define DDR_BASE_ADDR		XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#elif defined (XPAR_MIG7SERIES_0_BASEADDR)
#define DDR_BASE_ADDR	XPAR_MIG7SERIES_0_BASEADDR
#elif defined (XPAR_MIG_0_C0_DDR4_MEMORY_MAP_BASEADDR)
#define DDR_BASE_ADDR	XPAR_MIG_0_C0_DDR4_MEMORY_MAP_BASEADDR
#elif defined (XPAR_PSU_DDR_0_S_AXI_BASEADDR)
#define DDR_BASE_ADDR	XPAR_PSU_DDR_0_S_AXI_BASEADDR
#endif

#else

#ifdef XPAR_MEM0_BASEADDRESS
#define DDR_BASE_ADDR		XPAR_MEM0_BASEADDRESS
#endif
#endif

#ifndef DDR_BASE_ADDR
#warning CHECK FOR THE VALID DDR ADDRESS IN XPARAMETERS.H, \
DEFAULT SET TO 0x01000000
#define MEM_BASE_ADDR		0x01000000
#else
#define MEM_BASE_ADDR		(DDR_BASE_ADDR + 0x1000000)
#endif

#define TX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00300000)
#define RX_BUFFER_HIGH		(MEM_BASE_ADDR + 0x004FFFFF)

#define MAX_PKT_LEN		0x20

#define TEST_START_VALUE	0xC

#define NUMBER_OF_TRANSFERS	16
#define POLL_TIMEOUT_COUNTER    1000000U

/**************************** Type Definitions *******************************/


/***************** Macros (Inline Functions) Definitions *********************/


/************************** Function Prototypes ******************************/

#if (!defined(DEBUG))
extern void xil_printf(const char *format, ...);
#endif

#ifndef SDT
int XAxiDma_SimplePollExample(u16 DeviceId);
#else
int XAxiDma_SimplePollExample(UINTPTR BaseAddress);
#endif
static int CheckData(u8 *RxPacket);

/************************** Variable Definitions *****************************/
/*
 * Device instance definitions
 */
XAxiDma AxiDma;


/*****************************************************************************/
/**
* The entry point for this example. It invokes the example function,
* and reports the execution status.
*
* @param	None.
*
* @return
*		- XST_SUCCESS if example finishes successfully
*		- XST_FAILURE if example fails.
*
* @note		None.
*
******************************************************************************/
int main()
{
	int Status;

	xil_printf("\r\n--- Entering main() --- \r\n");

	/* Run the poll example for simple transfer */
while(1){
#ifndef SDT
	Status = XAxiDma_SimplePollExample(DMA_DEV_ID);
#else
	Status = XAxiDma_SimplePollExample(XPAR_XAXIDMA_0_BASEADDR);
#endif

	if (Status != XST_SUCCESS) {
		xil_printf("XAxiDma_SimplePoll Example Failed\r\n");
		return XST_FAILURE;
	}

	xil_printf("Successfully ran XAxiDma_SimplePoll Example\r\n");

	xil_printf("--- Exiting main() --- \r\n");
}
	return XST_SUCCESS;

}

#if defined(XPAR_UARTNS550_0_BASEADDR)
/*****************************************************************************/
/*
*
* Uart16550 setup routine, need to set baudrate to 9600, and data bits to 8
*
* @param	None.
*
* @return	None
*
* @note		None.
*
******************************************************************************/
static void Uart550_Setup(void)
{

	/* Set the baudrate to be predictable
	 */
	XUartNs550_SetBaud(XPAR_UARTNS550_0_BASEADDR,
			   XPAR_XUARTNS550_CLOCK_HZ, 9600);

	XUartNs550_SetLineControlReg(XPAR_UARTNS550_0_BASEADDR,
				     XUN_LCR_8_DATA_BITS);

}
#endif

/*****************************************************************************/
/**
* The example to do the simple transfer through polling. The constant
* NUMBER_OF_TRANSFERS defines how many times a simple transfer is repeated.
*
* @param	DeviceId is the Device Id of the XAxiDma instance
*
* @return
*		- XST_SUCCESS if example finishes successfully
*		- XST_FAILURE if error occurs
*
* @note		None
*

*
******************************************************************************/
u8 a[36][16] __attribute__((aligned(64)))={
{0xff,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
{0xff,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
{0x90,0x48,0x30,0x05,0x60,0x99,0x95,0x89,0x23,0x95,0x30,0x31,0x88,0x11,0x35,0x25},
{0x61,0x35,0x12,0x87,0x20,0x79,0x40,0x03,0x08,0x63,0x76,0x54,0x76,0x95,0x48,0x92},
{0x34,0x68,0x37,0x32,0x12,0x17,0x47,0x96,0x59,0x79,0x12,0x08,0x07,0x29,0x93,0x83},
{0x56,0x94,0x63,0x10,0x85,0x42,0x99,0x16,0x92,0x88,0x80,0x51,0x67,0x61,0x15,0x65},
{0x07,0x73,0x76,0x91,0x39,0x63,0x31,0x54,0x94,0x02,0x52,0x97,0x83,0x93,0x16,0x92},
{0x14,0x30,0x61,0x20,0x96,0x35,0x03,0x30,0x10,0x32,0x02,0x13,0x27,0x52,0x49,0x33},
{0x62,0x89,0x46,0x71,0x98,0x38,0x92,0x40,0x57,0x18,0x88,0x73,0x30,0x71,0x51,0x78},
{0x85,0x27,0x17,0x60,0x88,0x57,0x94,0x91,0x82,0x07,0x32,0x04,0x31,0x28,0x52,0x36},
{0x58,0x55,0x48,0x96,0x75,0x43,0x42,0x49,0x09,0x31,0x52,0x96,0x20,0x78,0x34,0x73},
{0x96,0x01,0x18,0x51,0x91,0x09,0x75,0x98,0x01,0x40,0x33,0x33,0x87,0x84,0x80,0x57},
{0x89,0x10,0x62,0x91,0x70,0x84,0x62,0x68,0x47,0x55,0x03,0x08,0x70,0x31,0x42,0x64},
{0x87,0x21,0x27,0x76,0x04,0x79,0x11,0x71,0x16,0x30,0x46,0x43,0x53,0x90,0x30,0x52},
{0x19,0x44,0x58,0x81,0x46,0x46,0x40,0x27,0x67,0x78,0x64,0x71,0x75,0x29,0x17,0x64},
{0x75,0x03,0x55,0x69,0x74,0x09,0x53,0x29,0x44,0x43,0x17,0x12,0x02,0x88,0x85,0x00},
{0x63,0x64,0x03,0x53,0x91,0x44,0x70,0x78,0x66,0x60,0x65,0x84,0x71,0x30,0x83,0x40},
{0x11,0x68,0x60,0x72,0x30,0x48,0x41,0x57,0x30,0x51,0x38,0x24,0x35,0x75,0x80,0x14},
{0x80,0x87,0x13,0x23,0x05,0x75,0x49,0x81,0x03,0x89,0x07,0x83,0x07,0x53,0x70,0x02},
{0x49,0x26,0x13,0x90,0x91,0x18,0x11,0x99,0x63,0x36,0x59,0x63,0x13,0x63,0x85,0x85},
{0x08,0x21,0x16,0x59,0x38,0x28,0x88,0x55,0x99,0x46,0x12,0x47,0x84,0x39,0x00,0x81},
{0x69,0x59,0x05,0x25,0x56,0x63,0x80,0x98,0x33,0x02,0x11,0x80,0x34,0x78,0x85,0x26},
{0x00,0x28,0x72,0x53,0x24,0x62,0x45,0x98,0x18,0x58,0x90,0x84,0x92,0x19,0x99,0x57},
{0x86,0x70,0x70,0x16,0x74,0x78,0x26,0x03,0x12,0x28,0x40,0x54,0x47,0x39,0x54,0x66},
{0x76,0x60,0x54,0x11,0x09,0x29,0x89,0x20,0x78,0x98,0x27,0x34,0x20,0x31,0x55,0x01},
{0x44,0x39,0x42,0x52,0x16,0x37,0x85,0x35,0x62,0x24,0x20,0x32,0x51,0x26,0x49,0x33},
{0x13,0x85,0x35,0x96,0x53,0x47,0x90,0x96,0x17,0x69,0x00,0x55,0x47,0x35,0x35,0x45},
{0x84,0x26,0x64,0x47,0x18,0x15,0x93,0x93,0x37,0x70,0x97,0x99,0x79,0x57,0x12,0x96},
{0x70,0x22,0x48,0x26,0x18,0x59,0x14,0x14,0x36,0x05,0x66,0x00,0x14,0x06,0x75,0x75},
{0x77,0x08,0x88,0x64,0x70,0x78,0x04,0x22,0x95,0x90,0x59,0x70,0x94,0x48,0x39,0x43},
{0x31,0x78,0x24,0x51,0x91,0x93,0x00,0x60,0x25,0x50,0x88,0x77,0x73,0x75,0x83,0x22},
{0x84,0x15,0x10,0x26,0x21,0x28,0x86,0x52,0x93,0x74,0x46,0x75,0x45,0x82,0x24,0x90},
{0x33,0x25,0x05,0x24,0x06,0x01,0x76,0x39,0x70,0x03,0x42,0x35,0x64,0x59,0x13,0x82},
{0x31,0x59,0x22,0x05,0x03,0x07,0x23,0x36,0x03,0x00,0x70,0x83,0x23,0x04,0x69,0x47},
{0xad,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
{0xda,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00}
};

u8 pl2ps[2][16] __attribute__((aligned(64)))={
{0xea,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},
{0xea,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00}
};

u8 reseult[32][32] __attribute__((aligned(64)));

#ifndef SDT
int XAxiDma_SimplePollExample(u16 DeviceId)
#else
int XAxiDma_SimplePollExample(UINTPTR BaseAddress)
#endif
{
	XAxiDma_Config *CfgPtr;
	int Status;
	int Tries = NUMBER_OF_TRANSFERS;
	int Index;
	u8 *TxBufferPtr;
	u8 *RxBufferPtr;
	u8 Value;
	int TimeOut = POLL_TIMEOUT_COUNTER;
 
	TxBufferPtr = (u8 *)TX_BUFFER_BASE ;
	RxBufferPtr = (u8 *)RX_BUFFER_BASE;
	//sleep(30);

	/* Initialize the XAxiDma device.
	 */
#ifndef SDT
	CfgPtr = XAxiDma_LookupConfig(DeviceId);
	if (!CfgPtr) {
		xil_printf("No config found for %d\r\n", DeviceId);
		return XST_FAILURE;
	}
#else
	CfgPtr = XAxiDma_LookupConfig(BaseAddress);
	if (!CfgPtr) {
		xil_printf("No config found for %d\r\n", BaseAddress);
		return XST_FAILURE;
	}
#endif

	Status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

	if (XAxiDma_HasSg(&AxiDma)) {
		xil_printf("Device configured as SG mode \r\n");
		return XST_FAILURE;
	}

	/* Disable interrupts, we use polling mode
	 */
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
			    XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
			    XAXIDMA_DMA_TO_DEVICE);	Value = 0x00;


	/* Flush the buffers before the DMA transfer, in case the Data Cache
	 * 
	 
	 
	 
	 is enabled
	 */

//Xil_DCacheFlushRange((UINTPTR)reseult, 32*32);
//Xil_DCacheInvalidateRange((UINTPTR)reseult, 32*32);
//
//
//
//XAxiDma_SimpleTransfer(&AxiDma,
//                       (UINTPTR)reseult,
//                       32*32,
//                       XAXIDMA_DEVICE_TO_DMA);
//

xil_printf("PS-PL\n");

XAxiDma_SimpleTransfer(&AxiDma,
                       (UINTPTR)a,
                       576,
                       XAXIDMA_DMA_TO_DEVICE);
//xil_printf("Aqui");

while(XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE));
XAxiDma_SimpleTransfer(&AxiDma,
                       (UINTPTR)a,
                       576,
                       XAXIDMA_DMA_TO_DEVICE);
//xil_printf("Aqui");

while(XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE));


XAxiDma_SimpleTransfer(&AxiDma,
                       (UINTPTR)pl2ps,
                       32,
                       XAXIDMA_DMA_TO_DEVICE);
xil_printf("PL-PS1\n");
//while(XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE));
xil_printf("PL-PS2\n");

Xil_DCacheFlushRange((UINTPTR)reseult, 32*32);
Xil_DCacheInvalidateRange((UINTPTR)reseult, 32*32);

xil_printf("PL-PS3\n");
XAxiDma_SimpleTransfer(&AxiDma,
                       (UINTPTR)reseult,
                       32*32,
                       XAXIDMA_DEVICE_TO_DMA);
xil_printf("PL-PS4\n");

//while(XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA));	  


xil_printf("Pos loop\n");


for (int i =0; i < 32; i++){
	for (int j =0; j < 32; j++)
		xil_printf("%x",reseult[i][j]);
	xil_printf("\n");
}


/*
	for (Index = 0; Index < 77; Index ++) {
//		xil_printf("--------------------%d--------------------\n",Index);
//		Status = CheckData((u8 *)(a+Index));


		Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, MAX_PKT_LEN);
    	XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)TxBufferPtr, MAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);
		TxBufferPtr = (u8 *)(a+Index) ;
		
		//while (TimeOut) {
		//	if (!(XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) &&
		//	    !(XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE))) {
		//		break;
		//	}
		//	TimeOut--;
		//}
	}
	*/

	/* Test finishes successfully
	 */
	return XST_SUCCESS;
}



/*****************************************************************************/
/*
*
* This function checks data buffer after the DMA transfer is finished.
*
* @param	None
*
* @return
*		- XST_SUCCESS if validation is successful.
*		- XST_FAILURE otherwise.
*
* @note		None.
*
******************************************************************************/
static int CheckData(u8 *RxPacket)
{

	int Index = 0;
	u8 Value;

	
	Value = TEST_START_VALUE;

	/* Invalidate the DestBuffer before receiving the data, in case the
	 * Data Cache is enabled
	 */
	Xil_DCacheInvalidateRange((UINTPTR)RxPacket, MAX_PKT_LEN);

	for (Index = 0; Index < 16; Index++) {
			xil_printf("Data  %d: %x\r\n",
				   Index, (unsigned int)RxPacket[Index]);
	}

	return XST_SUCCESS;
}


void MatrixMultiplication_Software(int **A, int **B,int **C, int M, int N, int K)
{
    int sum = 0;
    for(int i = 0; i < M; i++){
        for(int j = 0; j < N; j++){
            for(int k = 0; k < K; k++)
                sum+= A[i][k]*B[k][j];
            C[i][j] = sum;
            sum = 0;
        }
    }
}