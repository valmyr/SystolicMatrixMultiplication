/******************************************************************************
* Copyright (C) 2013 - 2022 Xilinx, Inc.  All rights reserved.
* Copyright (c) 2022 - 2025 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

/*****************************************************************************/
/**
 *
 * @file XLlFifo_polling_example.c
 * This file demonstrates how to use the Streaming fifo driver on the xilinx AXI
 * Streaming FIFO IP.The AXI4-Stream FIFO core allows memory mapped access to a
 * AXI-Stream interface. The core can be used to interface to AXI Streaming IPs
 * similar to the LogiCORE IP AXI Ethernet core, without having to use full DMA
 * solution.
 *
 * This is the polling example for the FIFO it assumes that at the
 * h/w level FIFO is connected in loopback.In these we write known amount of
 * data to the FIFO and Receive the data and compare with the data transmitted.
 *
 * Note: The TDEST Must be enabled in the H/W design inorder to
 * get correct RDR value.
 *
 * <pre>
 * MODIFICATION HISTORY:
 *
 * Ver   Who  Date     Changes
 * ----- ---- -------- -------------------------------------------------------
 * 3.00a adk 08/10/2013 initial release CR:727787
 * 5.1   ms  01/23/17   Modified xil_printf statement in main function to
 *                      ensure that "Successfully ran" and "Failed" strings
 *                      are available in all examples. This is a fix for
 *                      CR-965028.
 *       ms  04/05/17   Added tabspace for return statements in functions for
 *                      proper documentation and Modified Comment lines
 *                      to consider it as a documentation block while
 *                      generating doxygen.
 * 5.3  rsp 11/08/18    Modified TxSend to fill SourceBuffer with non-zero
 *                      data otherwise the test can return a false positive
 *                      because DestinationBuffer is initialized with zeros.
 *                      In fact, fixing this exposed a bug in RxReceive and
 *                      caused the test to start failing. According to the
 *                      product guide (pg080) for the AXI4-Stream FIFO, the
 *                      RDFO should be read before reading RLR. Reading RLR
 *                      first will result in the RDFO being reset to zero and
 *                      no data being received.
 * </pre>
 *
 * ***************************************************************************
 */

/***************************** Include Files *********************************/

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

int main()
{
	int Status;

	xil_printf("--- Entering main() ---\n\r");
	Status = XLlFifoPollingExample(&FifoInstance, XPAR_XLLFIFO_0_BASEADDR);
	if (Status != XST_SUCCESS) {
		xil_printf("Axi Streaming FIFO Polling Example Test Failed\n\r");
		xil_printf("--- Exiting main() ---\n\r");
		return XST_FAILURE;
	}

	xil_printf("Successfully ran Axi Streaming FIFO Polling Example\n\r");
	xil_printf("--- Exiting main() ---\n\r");

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function demonstrates the usage AXI FIFO
* It does the following:
*       - Set up the output terminal if UART16550 is in the hardware build
*       - Initialize the Axi FIFO Device.
*	- Transmit the data
*	- Receive the data from fifo
*	- Compare the data
*	- Return the result
*
* @param	InstancePtr is a pointer to the instance of the
*		XLlFifo component.
* @param	DeviceId is Device ID of the Axi Fifo Device instance,
*		typically XPAR_<AXI_FIFO_instance>_DEVICE_ID value from
*		xparameters.h.
*
* @return
*		-XST_SUCCESS to indicate success
*		-XST_FAILURE to indicate failure
*
******************************************************************************/

int XLlFifoPollingExample(XLlFifo *InstancePtr, UINTPTR BaseAddress)

{
	XLlFifo_Config *Config;
	int Status;
	Status = XST_SUCCESS;

	/* Initial setup for Uart16550 */

	/* Initialize the Device Configuration Interface driver */

	Config = XLlFfio_LookupConfig(BaseAddress);
	Status = XLlFifo_CfgInitialize(InstancePtr, Config, Config->BaseAddress);
	Status = XLlFifo_Status(InstancePtr);
	XLlFifo_IntClear(InstancePtr,0xffffffff);
    Status = XLlFifo_Status(InstancePtr);
	while(1){
		Status = TxSend(InstancePtr, SourceBuffer);
		Status = RxReceive(InstancePtr, DestinationBuffer);
		sleep(30);
		xil_printf(" Comparing data ...\n\r");
	}
	xil_printf(" Comparing data ...\n\r");
	return Status;
}

int TxSend(XLlFifo *InstancePtr, u32  *SourceAddr)
{
	
	int i;
	int j;
	xil_printf(" Transmitting Data ... \r\n");
	
		/* Fill the transmit buffer with incremental pattern */
*(SourceAddr + 0) = 0xff;
*(SourceAddr + 1) = 0xff;
*(SourceAddr + 2) = 0;
*(SourceAddr + 3) = 0;
*(SourceAddr + 4) = 0;
*(SourceAddr + 5) = 0;
*(SourceAddr + 6) = 0;
*(SourceAddr + 7) = 0;
*(SourceAddr + 8) = 0;
*(SourceAddr + 9) = 0;
*(SourceAddr + 10) = 0;
*(SourceAddr + 11) = 0;
*(SourceAddr + 12) = 0;
*(SourceAddr + 13) = 0;
*(SourceAddr + 14) = 0;
*(SourceAddr + 15) = 0;
*(SourceAddr + 16) = 0;
*(SourceAddr + 17) = 3;
*(SourceAddr + 18) = 0;
*(SourceAddr + 19) = 0;
*(SourceAddr + 20) = 0;
*(SourceAddr + 21) = 0;
*(SourceAddr + 22) = 0;
*(SourceAddr + 23) = 0;
*(SourceAddr + 24) = 0;
*(SourceAddr + 25) = 0;
*(SourceAddr + 26) = 0;
*(SourceAddr + 27) = 0;
*(SourceAddr + 28) = 0;
*(SourceAddr + 29) = 0;
*(SourceAddr + 30) = 0;
*(SourceAddr + 31) = 0;
*(SourceAddr + 32) = 3;
*(SourceAddr + 33) = 4;
*(SourceAddr + 34) = 0;
*(SourceAddr + 35) = 0;
*(SourceAddr + 36) = 0;
*(SourceAddr + 37) = 0;
*(SourceAddr + 38) = 0;
*(SourceAddr + 39) = 0;
*(SourceAddr + 40) = 0;
*(SourceAddr + 41) = 0;
*(SourceAddr + 42) = 0;
*(SourceAddr + 43) = 0;
*(SourceAddr + 44) = 0;
*(SourceAddr + 45) = 0;
*(SourceAddr + 46) = 0;
*(SourceAddr + 47) = 2;
*(SourceAddr + 48) = 1;
*(SourceAddr + 49) = 2;
*(SourceAddr + 50) = 0;
*(SourceAddr + 51) = 0;
*(SourceAddr + 52) = 0;
*(SourceAddr + 53) = 0;
*(SourceAddr + 54) = 0;
*(SourceAddr + 55) = 0;
*(SourceAddr + 56) = 0;
*(SourceAddr + 57) = 0;
*(SourceAddr + 58) = 0;
*(SourceAddr + 59) = 0;
*(SourceAddr + 60) = 0;
*(SourceAddr + 61) = 0;
*(SourceAddr + 62) = 1;
*(SourceAddr + 63) = 2;
*(SourceAddr + 64) = 3;
*(SourceAddr + 65) = 3;
*(SourceAddr + 66) = 0;
*(SourceAddr + 67) = 0;
*(SourceAddr + 68) = 0;
*(SourceAddr + 69) = 0;
*(SourceAddr + 70) = 0;
*(SourceAddr + 71) = 0;
*(SourceAddr + 72) = 0;
*(SourceAddr + 73) = 0;
*(SourceAddr + 74) = 0;
*(SourceAddr + 75) = 0;
*(SourceAddr + 76) = 0;
*(SourceAddr + 77) = 3;
*(SourceAddr + 78) = 4;
*(SourceAddr + 79) = 2;
*(SourceAddr + 80) = 1;
*(SourceAddr + 81) = 3;
*(SourceAddr + 82) = 0;
*(SourceAddr + 83) = 0;
*(SourceAddr + 84) = 0;
*(SourceAddr + 85) = 0;
*(SourceAddr + 86) = 0;
*(SourceAddr + 87) = 0;
*(SourceAddr + 88) = 0;
*(SourceAddr + 89) = 0;
*(SourceAddr + 90) = 0;
*(SourceAddr + 91) = 0;
*(SourceAddr + 92) = 3;
*(SourceAddr + 93) = 4;
*(SourceAddr + 94) = 3;
*(SourceAddr + 95) = 2;
*(SourceAddr + 96) = 4;
*(SourceAddr + 97) = 1;
*(SourceAddr + 98) = 0;
*(SourceAddr + 99) = 0;
*(SourceAddr + 100) = 0;
*(SourceAddr + 101) = 0;
*(SourceAddr + 102) = 0;
*(SourceAddr + 103) = 0;
*(SourceAddr + 104) = 0;
*(SourceAddr + 105) = 0;
*(SourceAddr + 106) = 0;
*(SourceAddr + 107) = 1;
*(SourceAddr + 108) = 4;
*(SourceAddr + 109) = 2;
*(SourceAddr + 110) = 2;
*(SourceAddr + 111) = 3;
*(SourceAddr + 112) = 2;
*(SourceAddr + 113) = 4;
*(SourceAddr + 114) = 0;
*(SourceAddr + 115) = 0;
*(SourceAddr + 116) = 0;
*(SourceAddr + 117) = 0;
*(SourceAddr + 118) = 0;
*(SourceAddr + 119) = 0;
*(SourceAddr + 120) = 0;
*(SourceAddr + 121) = 0;
*(SourceAddr + 122) = 2;
*(SourceAddr + 123) = 2;
*(SourceAddr + 124) = 1;
*(SourceAddr + 125) = 3;
*(SourceAddr + 126) = 4;
*(SourceAddr + 127) = 4;
*(SourceAddr + 128) = 1;
*(SourceAddr + 129) = 4;
*(SourceAddr + 130) = 0;
*(SourceAddr + 131) = 0;
*(SourceAddr + 132) = 0;
*(SourceAddr + 133) = 0;
*(SourceAddr + 134) = 0;
*(SourceAddr + 135) = 0;
*(SourceAddr + 136) = 0;
*(SourceAddr + 137) = 1;
*(SourceAddr + 138) = 3;
*(SourceAddr + 139) = 3;
*(SourceAddr + 140) = 3;
*(SourceAddr + 141) = 4;
*(SourceAddr + 142) = 2;
*(SourceAddr + 143) = 3;
*(SourceAddr + 144) = 1;
*(SourceAddr + 145) = 3;
*(SourceAddr + 146) = 0;
*(SourceAddr + 147) = 0;
*(SourceAddr + 148) = 0;
*(SourceAddr + 149) = 0;
*(SourceAddr + 150) = 0;
*(SourceAddr + 151) = 0;
*(SourceAddr + 152) = 2;
*(SourceAddr + 153) = 2;
*(SourceAddr + 154) = 1;
*(SourceAddr + 155) = 3;
*(SourceAddr + 156) = 4;
*(SourceAddr + 157) = 3;
*(SourceAddr + 158) = 4;
*(SourceAddr + 159) = 1;
*(SourceAddr + 160) = 4;
*(SourceAddr + 161) = 1;
*(SourceAddr + 162) = 0;
*(SourceAddr + 163) = 0;
*(SourceAddr + 164) = 0;
*(SourceAddr + 165) = 0;
*(SourceAddr + 166) = 0;
*(SourceAddr + 167) = 4;
*(SourceAddr + 168) = 4;
*(SourceAddr + 169) = 4;
*(SourceAddr + 170) = 2;
*(SourceAddr + 171) = 2;
*(SourceAddr + 172) = 4;
*(SourceAddr + 173) = 1;
*(SourceAddr + 174) = 3;
*(SourceAddr + 175) = 1;
*(SourceAddr + 176) = 1;
*(SourceAddr + 177) = 2;
*(SourceAddr + 178) = 0;
*(SourceAddr + 179) = 0;
*(SourceAddr + 180) = 0;
*(SourceAddr + 181) = 0;
*(SourceAddr + 182) = 4;
*(SourceAddr + 183) = 4;
*(SourceAddr + 184) = 4;
*(SourceAddr + 185) = 2;
*(SourceAddr + 186) = 4;
*(SourceAddr + 187) = 2;
*(SourceAddr + 188) = 3;
*(SourceAddr + 189) = 1;
*(SourceAddr + 190) = 4;
*(SourceAddr + 191) = 3;
*(SourceAddr + 192) = 1;
*(SourceAddr + 193) = 4;
*(SourceAddr + 194) = 0;
*(SourceAddr + 195) = 0;
*(SourceAddr + 196) = 0;
*(SourceAddr + 197) = 1;
*(SourceAddr + 198) = 4;
*(SourceAddr + 199) = 2;
*(SourceAddr + 200) = 2;
*(SourceAddr + 201) = 1;
*(SourceAddr + 202) = 2;
*(SourceAddr + 203) = 4;
*(SourceAddr + 204) = 2;
*(SourceAddr + 205) = 4;
*(SourceAddr + 206) = 3;
*(SourceAddr + 207) = 3;
*(SourceAddr + 208) = 4;
*(SourceAddr + 209) = 1;
*(SourceAddr + 210) = 0;
*(SourceAddr + 211) = 0;
*(SourceAddr + 212) = 4;
*(SourceAddr + 213) = 4;
*(SourceAddr + 214) = 2;
*(SourceAddr + 215) = 1;
*(SourceAddr + 216) = 2;
*(SourceAddr + 217) = 3;
*(SourceAddr + 218) = 1;
*(SourceAddr + 219) = 3;
*(SourceAddr + 220) = 3;
*(SourceAddr + 221) = 1;
*(SourceAddr + 222) = 4;
*(SourceAddr + 223) = 3;
*(SourceAddr + 224) = 3;
*(SourceAddr + 225) = 4;
*(SourceAddr + 226) = 0;
*(SourceAddr + 227) = 4;
*(SourceAddr + 228) = 2;
*(SourceAddr + 229) = 3;
*(SourceAddr + 230) = 2;
*(SourceAddr + 231) = 4;
*(SourceAddr + 232) = 3;
*(SourceAddr + 233) = 2;
*(SourceAddr + 234) = 2;
*(SourceAddr + 235) = 3;
*(SourceAddr + 236) = 3;
*(SourceAddr + 237) = 1;
*(SourceAddr + 238) = 1;
*(SourceAddr + 239) = 4;
*(SourceAddr + 240) = 3;
*(SourceAddr + 241) = 3;
*(SourceAddr + 242) = 4;
*(SourceAddr + 243) = 3;
*(SourceAddr + 244) = 1;
*(SourceAddr + 245) = 1;
*(SourceAddr + 246) = 3;
*(SourceAddr + 247) = 1;
*(SourceAddr + 248) = 1;
*(SourceAddr + 249) = 1;
*(SourceAddr + 250) = 1;
*(SourceAddr + 251) = 4;
*(SourceAddr + 252) = 3;
*(SourceAddr + 253) = 1;
*(SourceAddr + 254) = 2;
*(SourceAddr + 255) = 4;
*(SourceAddr + 256) = 3;
*(SourceAddr + 257) = 3;
*(SourceAddr + 258) = 3;
*(SourceAddr + 259) = 1;
*(SourceAddr + 260) = 3;
*(SourceAddr + 261) = 2;
*(SourceAddr + 262) = 1;
*(SourceAddr + 263) = 1;
*(SourceAddr + 264) = 2;
*(SourceAddr + 265) = 2;
*(SourceAddr + 266) = 1;
*(SourceAddr + 267) = 4;
*(SourceAddr + 268) = 4;
*(SourceAddr + 269) = 2;
*(SourceAddr + 270) = 4;
*(SourceAddr + 271) = 1;
*(SourceAddr + 272) = 3;
*(SourceAddr + 273) = 0;
*(SourceAddr + 274) = 3;
*(SourceAddr + 275) = 2;
*(SourceAddr + 276) = 1;
*(SourceAddr + 277) = 3;
*(SourceAddr + 278) = 1;
*(SourceAddr + 279) = 4;
*(SourceAddr + 280) = 2;
*(SourceAddr + 281) = 3;
*(SourceAddr + 282) = 2;
*(SourceAddr + 283) = 4;
*(SourceAddr + 284) = 1;
*(SourceAddr + 285) = 2;
*(SourceAddr + 286) = 4;
*(SourceAddr + 287) = 1;
*(SourceAddr + 288) = 0;
*(SourceAddr + 289) = 0;
*(SourceAddr + 290) = 2;
*(SourceAddr + 291) = 3;
*(SourceAddr + 292) = 3;
*(SourceAddr + 293) = 1;
*(SourceAddr + 294) = 4;
*(SourceAddr + 295) = 3;
*(SourceAddr + 296) = 2;
*(SourceAddr + 297) = 2;
*(SourceAddr + 298) = 1;
*(SourceAddr + 299) = 3;
*(SourceAddr + 300) = 2;
*(SourceAddr + 301) = 4;
*(SourceAddr + 302) = 3;
*(SourceAddr + 303) = 0;
*(SourceAddr + 304) = 0;
*(SourceAddr + 305) = 0;
*(SourceAddr + 306) = 2;
*(SourceAddr + 307) = 3;
*(SourceAddr + 308) = 1;
*(SourceAddr + 309) = 3;
*(SourceAddr + 310) = 3;
*(SourceAddr + 311) = 2;
*(SourceAddr + 312) = 1;
*(SourceAddr + 313) = 1;
*(SourceAddr + 314) = 2;
*(SourceAddr + 315) = 3;
*(SourceAddr + 316) = 1;
*(SourceAddr + 317) = 1;
*(SourceAddr + 318) = 0;
*(SourceAddr + 319) = 0;
*(SourceAddr + 320) = 0;
*(SourceAddr + 321) = 0;
*(SourceAddr + 322) = 1;
*(SourceAddr + 323) = 1;
*(SourceAddr + 324) = 2;
*(SourceAddr + 325) = 2;
*(SourceAddr + 326) = 3;
*(SourceAddr + 327) = 4;
*(SourceAddr + 328) = 2;
*(SourceAddr + 329) = 3;
*(SourceAddr + 330) = 3;
*(SourceAddr + 331) = 2;
*(SourceAddr + 332) = 3;
*(SourceAddr + 333) = 0;
*(SourceAddr + 334) = 0;
*(SourceAddr + 335) = 0;
*(SourceAddr + 336) = 0;
*(SourceAddr + 337) = 0;
*(SourceAddr + 338) = 3;
*(SourceAddr + 339) = 2;
*(SourceAddr + 340) = 4;
*(SourceAddr + 341) = 1;
*(SourceAddr + 342) = 2;
*(SourceAddr + 343) = 1;
*(SourceAddr + 344) = 1;
*(SourceAddr + 345) = 3;
*(SourceAddr + 346) = 2;
*(SourceAddr + 347) = 2;
*(SourceAddr + 348) = 0;
*(SourceAddr + 349) = 0;
*(SourceAddr + 350) = 0;
*(SourceAddr + 351) = 0;
*(SourceAddr + 352) = 0;
*(SourceAddr + 353) = 0;
*(SourceAddr + 354) = 2;
*(SourceAddr + 355) = 1;
*(SourceAddr + 356) = 4;
*(SourceAddr + 357) = 4;
*(SourceAddr + 358) = 1;
*(SourceAddr + 359) = 3;
*(SourceAddr + 360) = 2;
*(SourceAddr + 361) = 4;
*(SourceAddr + 362) = 1;
*(SourceAddr + 363) = 0;
*(SourceAddr + 364) = 0;
*(SourceAddr + 365) = 0;
*(SourceAddr + 366) = 0;
*(SourceAddr + 367) = 0;
*(SourceAddr + 368) = 0;
*(SourceAddr + 369) = 0;
*(SourceAddr + 370) = 1;
*(SourceAddr + 371) = 4;
*(SourceAddr + 372) = 4;
*(SourceAddr + 373) = 2;
*(SourceAddr + 374) = 2;
*(SourceAddr + 375) = 2;
*(SourceAddr + 376) = 2;
*(SourceAddr + 377) = 2;
*(SourceAddr + 378) = 0;
*(SourceAddr + 379) = 0;
*(SourceAddr + 380) = 0;
*(SourceAddr + 381) = 0;
*(SourceAddr + 382) = 0;
*(SourceAddr + 383) = 0;
*(SourceAddr + 384) = 0;
*(SourceAddr + 385) = 0;
*(SourceAddr + 386) = 2;
*(SourceAddr + 387) = 2;
*(SourceAddr + 388) = 3;
*(SourceAddr + 389) = 1;
*(SourceAddr + 390) = 3;
*(SourceAddr + 391) = 1;
*(SourceAddr + 392) = 1;
*(SourceAddr + 393) = 0;
*(SourceAddr + 394) = 0;
*(SourceAddr + 395) = 0;
*(SourceAddr + 396) = 0;
*(SourceAddr + 397) = 0;
*(SourceAddr + 398) = 0;
*(SourceAddr + 399) = 0;
*(SourceAddr + 400) = 0;
*(SourceAddr + 401) = 0;
*(SourceAddr + 402) = 4;
*(SourceAddr + 403) = 1;
*(SourceAddr + 404) = 1;
*(SourceAddr + 405) = 2;
*(SourceAddr + 406) = 2;
*(SourceAddr + 407) = 1;
*(SourceAddr + 408) = 0;
*(SourceAddr + 409) = 0;
*(SourceAddr + 410) = 0;
*(SourceAddr + 411) = 0;
*(SourceAddr + 412) = 0;
*(SourceAddr + 413) = 0;
*(SourceAddr + 414) = 0;
*(SourceAddr + 415) = 0;
*(SourceAddr + 416) = 0;
*(SourceAddr + 417) = 0;
*(SourceAddr + 418) = 4;
*(SourceAddr + 419) = 4;
*(SourceAddr + 420) = 3;
*(SourceAddr + 421) = 4;
*(SourceAddr + 422) = 4;
*(SourceAddr + 423) = 0;
*(SourceAddr + 424) = 0;
*(SourceAddr + 425) = 0;
*(SourceAddr + 426) = 0;
*(SourceAddr + 427) = 0;
*(SourceAddr + 428) = 0;
*(SourceAddr + 429) = 0;
*(SourceAddr + 430) = 0;
*(SourceAddr + 431) = 0;
*(SourceAddr + 432) = 0;
*(SourceAddr + 433) = 0;
*(SourceAddr + 434) = 2;
*(SourceAddr + 435) = 3;
*(SourceAddr + 436) = 2;
*(SourceAddr + 437) = 2;
*(SourceAddr + 438) = 0;
*(SourceAddr + 439) = 0;
*(SourceAddr + 440) = 0;
*(SourceAddr + 441) = 0;
*(SourceAddr + 442) = 0;
*(SourceAddr + 443) = 0;
*(SourceAddr + 444) = 0;
*(SourceAddr + 445) = 0;
*(SourceAddr + 446) = 0;
*(SourceAddr + 447) = 0;
*(SourceAddr + 448) = 0;
*(SourceAddr + 449) = 0;
*(SourceAddr + 450) = 3;
*(SourceAddr + 451) = 4;
*(SourceAddr + 452) = 1;
*(SourceAddr + 453) = 0;
*(SourceAddr + 454) = 0;
*(SourceAddr + 455) = 0;
*(SourceAddr + 456) = 0;
*(SourceAddr + 457) = 0;
*(SourceAddr + 458) = 0;
*(SourceAddr + 459) = 0;
*(SourceAddr + 460) = 0;
*(SourceAddr + 461) = 0;
*(SourceAddr + 462) = 0;
*(SourceAddr + 463) = 0;
*(SourceAddr + 464) = 0;
*(SourceAddr + 465) = 0;
*(SourceAddr + 466) = 2;
*(SourceAddr + 467) = 3;
*(SourceAddr + 468) = 0;
*(SourceAddr + 469) = 0;
*(SourceAddr + 470) = 0;
*(SourceAddr + 471) = 0;
*(SourceAddr + 472) = 0;
*(SourceAddr + 473) = 0;
*(SourceAddr + 474) = 0;
*(SourceAddr + 475) = 0;
*(SourceAddr + 476) = 0;
*(SourceAddr + 477) = 0;
*(SourceAddr + 478) = 0;
*(SourceAddr + 479) = 0;
*(SourceAddr + 480) = 0;
*(SourceAddr + 481) = 0;
*(SourceAddr + 482) = 2;
*(SourceAddr + 483) = 0;
*(SourceAddr + 484) = 0;
*(SourceAddr + 485) = 0;
*(SourceAddr + 486) = 0;
*(SourceAddr + 487) = 0;
*(SourceAddr + 488) = 0;
*(SourceAddr + 489) = 0;
*(SourceAddr + 490) = 0;
*(SourceAddr + 491) = 0;
*(SourceAddr + 492) = 0;
*(SourceAddr + 493) = 0;
*(SourceAddr + 494) = 0;
*(SourceAddr + 495) = 0;
*(SourceAddr + 496) = 0;
*(SourceAddr + 497) = 0;
*(SourceAddr + 498) = 173;
*(SourceAddr + 499) = 218;
	
*(SourceAddr + 500) = 0xff;
*(SourceAddr + 501) = 0xff;
*(SourceAddr + 502) = 0;
*(SourceAddr + 503) = 0;
*(SourceAddr + 504) = 0;
*(SourceAddr + 505) = 0;
*(SourceAddr + 506) = 0;
*(SourceAddr + 507) = 0;
*(SourceAddr + 508) = 0;
*(SourceAddr + 509) = 0;
*(SourceAddr + 510) = 0;
*(SourceAddr + 511) = 0;
*(SourceAddr + 512) = 0;
*(SourceAddr + 513) = 0;
*(SourceAddr + 514) = 0;
*(SourceAddr + 515) = 0;
*(SourceAddr + 516) = 0;
*(SourceAddr + 517) = 1;
*(SourceAddr + 518) = 0;
*(SourceAddr + 519) = 0;
*(SourceAddr + 520) = 0;
*(SourceAddr + 521) = 0;
*(SourceAddr + 522) = 0;
*(SourceAddr + 523) = 0;
*(SourceAddr + 524) = 0;
*(SourceAddr + 525) = 0;
*(SourceAddr + 526) = 0;
*(SourceAddr + 527) = 0;
*(SourceAddr + 528) = 0;
*(SourceAddr + 529) = 0;
*(SourceAddr + 530) = 0;
*(SourceAddr + 531) = 0;
*(SourceAddr + 532) = 4;
*(SourceAddr + 533) = 3;
*(SourceAddr + 534) = 0;
*(SourceAddr + 535) = 0;
*(SourceAddr + 536) = 0;
*(SourceAddr + 537) = 0;
*(SourceAddr + 538) = 0;
*(SourceAddr + 539) = 0;
*(SourceAddr + 540) = 0;
*(SourceAddr + 541) = 0;
*(SourceAddr + 542) = 0;
*(SourceAddr + 543) = 0;
*(SourceAddr + 544) = 0;
*(SourceAddr + 545) = 0;
*(SourceAddr + 546) = 0;
*(SourceAddr + 547) = 4;
*(SourceAddr + 548) = 4;
*(SourceAddr + 549) = 3;
*(SourceAddr + 550) = 0;
*(SourceAddr + 551) = 0;
*(SourceAddr + 552) = 0;
*(SourceAddr + 553) = 0;
*(SourceAddr + 554) = 0;
*(SourceAddr + 555) = 0;
*(SourceAddr + 556) = 0;
*(SourceAddr + 557) = 0;
*(SourceAddr + 558) = 0;
*(SourceAddr + 559) = 0;
*(SourceAddr + 560) = 0;
*(SourceAddr + 561) = 0;
*(SourceAddr + 562) = 3;
*(SourceAddr + 563) = 2;
*(SourceAddr + 564) = 2;
*(SourceAddr + 565) = 3;
*(SourceAddr + 566) = 0;
*(SourceAddr + 567) = 0;
*(SourceAddr + 568) = 0;
*(SourceAddr + 569) = 0;
*(SourceAddr + 570) = 0;
*(SourceAddr + 571) = 0;
*(SourceAddr + 572) = 0;
*(SourceAddr + 573) = 0;
*(SourceAddr + 574) = 0;
*(SourceAddr + 575) = 0;
*(SourceAddr + 576) = 0;
*(SourceAddr + 577) = 2;
*(SourceAddr + 578) = 4;
*(SourceAddr + 579) = 3;
*(SourceAddr + 580) = 4;
*(SourceAddr + 581) = 3;
*(SourceAddr + 582) = 0;
*(SourceAddr + 583) = 0;
*(SourceAddr + 584) = 0;
*(SourceAddr + 585) = 0;
*(SourceAddr + 586) = 0;
*(SourceAddr + 587) = 0;
*(SourceAddr + 588) = 0;
*(SourceAddr + 589) = 0;
*(SourceAddr + 590) = 0;
*(SourceAddr + 591) = 0;
*(SourceAddr + 592) = 1;
*(SourceAddr + 593) = 3;
*(SourceAddr + 594) = 2;
*(SourceAddr + 595) = 3;
*(SourceAddr + 596) = 2;
*(SourceAddr + 597) = 3;
*(SourceAddr + 598) = 0;
*(SourceAddr + 599) = 0;
*(SourceAddr + 600) = 0;
*(SourceAddr + 601) = 0;
*(SourceAddr + 602) = 0;
*(SourceAddr + 603) = 0;
*(SourceAddr + 604) = 0;
*(SourceAddr + 605) = 0;
*(SourceAddr + 606) = 0;
*(SourceAddr + 607) = 4;
*(SourceAddr + 608) = 4;
*(SourceAddr + 609) = 1;
*(SourceAddr + 610) = 2;
*(SourceAddr + 611) = 2;
*(SourceAddr + 612) = 4;
*(SourceAddr + 613) = 2;
*(SourceAddr + 614) = 0;
*(SourceAddr + 615) = 0;
*(SourceAddr + 616) = 0;
*(SourceAddr + 617) = 0;
*(SourceAddr + 618) = 0;
*(SourceAddr + 619) = 0;
*(SourceAddr + 620) = 0;
*(SourceAddr + 621) = 0;
*(SourceAddr + 622) = 1;
*(SourceAddr + 623) = 4;
*(SourceAddr + 624) = 1;
*(SourceAddr + 625) = 1;
*(SourceAddr + 626) = 4;
*(SourceAddr + 627) = 4;
*(SourceAddr + 628) = 3;
*(SourceAddr + 629) = 1;
*(SourceAddr + 630) = 0;
*(SourceAddr + 631) = 0;
*(SourceAddr + 632) = 0;
*(SourceAddr + 633) = 0;
*(SourceAddr + 634) = 0;
*(SourceAddr + 635) = 0;
*(SourceAddr + 636) = 0;
*(SourceAddr + 637) = 1;
*(SourceAddr + 638) = 4;
*(SourceAddr + 639) = 3;
*(SourceAddr + 640) = 1;
*(SourceAddr + 641) = 2;
*(SourceAddr + 642) = 3;
*(SourceAddr + 643) = 1;
*(SourceAddr + 644) = 2;
*(SourceAddr + 645) = 4;
*(SourceAddr + 646) = 0;
*(SourceAddr + 647) = 0;
*(SourceAddr + 648) = 0;
*(SourceAddr + 649) = 0;
*(SourceAddr + 650) = 0;
*(SourceAddr + 651) = 0;
*(SourceAddr + 652) = 1;
*(SourceAddr + 653) = 2;
*(SourceAddr + 654) = 1;
*(SourceAddr + 655) = 1;
*(SourceAddr + 656) = 3;
*(SourceAddr + 657) = 2;
*(SourceAddr + 658) = 2;
*(SourceAddr + 659) = 2;
*(SourceAddr + 660) = 1;
*(SourceAddr + 661) = 2;
*(SourceAddr + 662) = 0;
*(SourceAddr + 663) = 0;
*(SourceAddr + 664) = 0;
*(SourceAddr + 665) = 0;
*(SourceAddr + 666) = 0;
*(SourceAddr + 667) = 4;
*(SourceAddr + 668) = 1;
*(SourceAddr + 669) = 4;
*(SourceAddr + 670) = 1;
*(SourceAddr + 671) = 3;
*(SourceAddr + 672) = 2;
*(SourceAddr + 673) = 4;
*(SourceAddr + 674) = 3;
*(SourceAddr + 675) = 2;
*(SourceAddr + 676) = 3;
*(SourceAddr + 677) = 1;
*(SourceAddr + 678) = 0;
*(SourceAddr + 679) = 0;
*(SourceAddr + 680) = 0;
*(SourceAddr + 681) = 0;
*(SourceAddr + 682) = 4;
*(SourceAddr + 683) = 4;
*(SourceAddr + 684) = 4;
*(SourceAddr + 685) = 1;
*(SourceAddr + 686) = 4;
*(SourceAddr + 687) = 2;
*(SourceAddr + 688) = 2;
*(SourceAddr + 689) = 3;
*(SourceAddr + 690) = 1;
*(SourceAddr + 691) = 1;
*(SourceAddr + 692) = 2;
*(SourceAddr + 693) = 4;
*(SourceAddr + 694) = 0;
*(SourceAddr + 695) = 0;
*(SourceAddr + 696) = 0;
*(SourceAddr + 697) = 2;
*(SourceAddr + 698) = 2;
*(SourceAddr + 699) = 2;
*(SourceAddr + 700) = 1;
*(SourceAddr + 701) = 4;
*(SourceAddr + 702) = 4;
*(SourceAddr + 703) = 3;
*(SourceAddr + 704) = 4;
*(SourceAddr + 705) = 2;
*(SourceAddr + 706) = 3;
*(SourceAddr + 707) = 4;
*(SourceAddr + 708) = 4;
*(SourceAddr + 709) = 2;
*(SourceAddr + 710) = 0;
*(SourceAddr + 711) = 0;
*(SourceAddr + 712) = 3;
*(SourceAddr + 713) = 2;
*(SourceAddr + 714) = 3;
*(SourceAddr + 715) = 4;
*(SourceAddr + 716) = 2;
*(SourceAddr + 717) = 2;
*(SourceAddr + 718) = 2;
*(SourceAddr + 719) = 1;
*(SourceAddr + 720) = 2;
*(SourceAddr + 721) = 4;
*(SourceAddr + 722) = 4;
*(SourceAddr + 723) = 4;
*(SourceAddr + 724) = 3;
*(SourceAddr + 725) = 4;
*(SourceAddr + 726) = 0;
*(SourceAddr + 727) = 4;
*(SourceAddr + 728) = 1;
*(SourceAddr + 729) = 4;
*(SourceAddr + 730) = 4;
*(SourceAddr + 731) = 4;
*(SourceAddr + 732) = 4;
*(SourceAddr + 733) = 3;
*(SourceAddr + 734) = 3;
*(SourceAddr + 735) = 4;
*(SourceAddr + 736) = 3;
*(SourceAddr + 737) = 1;
*(SourceAddr + 738) = 2;
*(SourceAddr + 739) = 2;
*(SourceAddr + 740) = 4;
*(SourceAddr + 741) = 3;
*(SourceAddr + 742) = 4;
*(SourceAddr + 743) = 4;
*(SourceAddr + 744) = 4;
*(SourceAddr + 745) = 3;
*(SourceAddr + 746) = 1;
*(SourceAddr + 747) = 4;
*(SourceAddr + 748) = 3;
*(SourceAddr + 749) = 2;
*(SourceAddr + 750) = 2;
*(SourceAddr + 751) = 3;
*(SourceAddr + 752) = 2;
*(SourceAddr + 753) = 3;
*(SourceAddr + 754) = 2;
*(SourceAddr + 755) = 1;
*(SourceAddr + 756) = 1;
*(SourceAddr + 757) = 2;
*(SourceAddr + 758) = 2;
*(SourceAddr + 759) = 4;
*(SourceAddr + 760) = 2;
*(SourceAddr + 761) = 3;
*(SourceAddr + 762) = 3;
*(SourceAddr + 763) = 4;
*(SourceAddr + 764) = 2;
*(SourceAddr + 765) = 2;
*(SourceAddr + 766) = 4;
*(SourceAddr + 767) = 2;
*(SourceAddr + 768) = 4;
*(SourceAddr + 769) = 1;
*(SourceAddr + 770) = 4;
*(SourceAddr + 771) = 1;
*(SourceAddr + 772) = 4;
*(SourceAddr + 773) = 0;
*(SourceAddr + 774) = 1;
*(SourceAddr + 775) = 2;
*(SourceAddr + 776) = 4;
*(SourceAddr + 777) = 4;
*(SourceAddr + 778) = 4;
*(SourceAddr + 779) = 4;
*(SourceAddr + 780) = 4;
*(SourceAddr + 781) = 4;
*(SourceAddr + 782) = 4;
*(SourceAddr + 783) = 2;
*(SourceAddr + 784) = 3;
*(SourceAddr + 785) = 1;
*(SourceAddr + 786) = 4;
*(SourceAddr + 787) = 3;
*(SourceAddr + 788) = 0;
*(SourceAddr + 789) = 0;
*(SourceAddr + 790) = 4;
*(SourceAddr + 791) = 3;
*(SourceAddr + 792) = 1;
*(SourceAddr + 793) = 2;
*(SourceAddr + 794) = 3;
*(SourceAddr + 795) = 3;
*(SourceAddr + 796) = 4;
*(SourceAddr + 797) = 3;
*(SourceAddr + 798) = 1;
*(SourceAddr + 799) = 3;
*(SourceAddr + 800) = 3;
*(SourceAddr + 801) = 3;
*(SourceAddr + 802) = 2;
*(SourceAddr + 803) = 0;
*(SourceAddr + 804) = 0;
*(SourceAddr + 805) = 0;
*(SourceAddr + 806) = 2;
*(SourceAddr + 807) = 4;
*(SourceAddr + 808) = 4;
*(SourceAddr + 809) = 2;
*(SourceAddr + 810) = 3;
*(SourceAddr + 811) = 1;
*(SourceAddr + 812) = 1;
*(SourceAddr + 813) = 1;
*(SourceAddr + 814) = 2;
*(SourceAddr + 815) = 4;
*(SourceAddr + 816) = 3;
*(SourceAddr + 817) = 4;
*(SourceAddr + 818) = 0;
*(SourceAddr + 819) = 0;
*(SourceAddr + 820) = 0;
*(SourceAddr + 821) = 0;
*(SourceAddr + 822) = 1;
*(SourceAddr + 823) = 3;
*(SourceAddr + 824) = 1;
*(SourceAddr + 825) = 4;
*(SourceAddr + 826) = 4;
*(SourceAddr + 827) = 4;
*(SourceAddr + 828) = 2;
*(SourceAddr + 829) = 1;
*(SourceAddr + 830) = 2;
*(SourceAddr + 831) = 1;
*(SourceAddr + 832) = 1;
*(SourceAddr + 833) = 0;
*(SourceAddr + 834) = 0;
*(SourceAddr + 835) = 0;
*(SourceAddr + 836) = 0;
*(SourceAddr + 837) = 0;
*(SourceAddr + 838) = 4;
*(SourceAddr + 839) = 2;
*(SourceAddr + 840) = 4;
*(SourceAddr + 841) = 2;
*(SourceAddr + 842) = 3;
*(SourceAddr + 843) = 1;
*(SourceAddr + 844) = 1;
*(SourceAddr + 845) = 4;
*(SourceAddr + 846) = 3;
*(SourceAddr + 847) = 1;
*(SourceAddr + 848) = 0;
*(SourceAddr + 849) = 0;
*(SourceAddr + 850) = 0;
*(SourceAddr + 851) = 0;
*(SourceAddr + 852) = 0;
*(SourceAddr + 853) = 0;
*(SourceAddr + 854) = 1;
*(SourceAddr + 855) = 3;
*(SourceAddr + 856) = 4;
*(SourceAddr + 857) = 2;
*(SourceAddr + 858) = 1;
*(SourceAddr + 859) = 1;
*(SourceAddr + 860) = 4;
*(SourceAddr + 861) = 1;
*(SourceAddr + 862) = 2;
*(SourceAddr + 863) = 0;
*(SourceAddr + 864) = 0;
*(SourceAddr + 865) = 0;
*(SourceAddr + 866) = 0;
*(SourceAddr + 867) = 0;
*(SourceAddr + 868) = 0;
*(SourceAddr + 869) = 0;
*(SourceAddr + 870) = 4;
*(SourceAddr + 871) = 1;
*(SourceAddr + 872) = 3;
*(SourceAddr + 873) = 2;
*(SourceAddr + 874) = 4;
*(SourceAddr + 875) = 4;
*(SourceAddr + 876) = 4;
*(SourceAddr + 877) = 2;
*(SourceAddr + 878) = 0;
*(SourceAddr + 879) = 0;
*(SourceAddr + 880) = 0;
*(SourceAddr + 881) = 0;
*(SourceAddr + 882) = 0;
*(SourceAddr + 883) = 0;
*(SourceAddr + 884) = 0;
*(SourceAddr + 885) = 0;
*(SourceAddr + 886) = 3;
*(SourceAddr + 887) = 4;
*(SourceAddr + 888) = 2;
*(SourceAddr + 889) = 3;
*(SourceAddr + 890) = 2;
*(SourceAddr + 891) = 3;
*(SourceAddr + 892) = 3;
*(SourceAddr + 893) = 0;
*(SourceAddr + 894) = 0;
*(SourceAddr + 895) = 0;
*(SourceAddr + 896) = 0;
*(SourceAddr + 897) = 0;
*(SourceAddr + 898) = 0;
*(SourceAddr + 899) = 0;
*(SourceAddr + 900) = 0;
*(SourceAddr + 901) = 0;
*(SourceAddr + 902) = 1;
*(SourceAddr + 903) = 2;
*(SourceAddr + 904) = 1;
*(SourceAddr + 905) = 1;
*(SourceAddr + 906) = 1;
*(SourceAddr + 907) = 1;
*(SourceAddr + 908) = 0;
*(SourceAddr + 909) = 0;
*(SourceAddr + 910) = 0;
*(SourceAddr + 911) = 0;
*(SourceAddr + 912) = 0;
*(SourceAddr + 913) = 0;
*(SourceAddr + 914) = 0;
*(SourceAddr + 915) = 0;
*(SourceAddr + 916) = 0;
*(SourceAddr + 917) = 0;
*(SourceAddr + 918) = 2;
*(SourceAddr + 919) = 2;
*(SourceAddr + 920) = 1;
*(SourceAddr + 921) = 4;
*(SourceAddr + 922) = 3;
*(SourceAddr + 923) = 0;
*(SourceAddr + 924) = 0;
*(SourceAddr + 925) = 0;
*(SourceAddr + 926) = 0;
*(SourceAddr + 927) = 0;
*(SourceAddr + 928) = 0;
*(SourceAddr + 929) = 0;
*(SourceAddr + 930) = 0;
*(SourceAddr + 931) = 0;
*(SourceAddr + 932) = 0;
*(SourceAddr + 933) = 0;
*(SourceAddr + 934) = 4;
*(SourceAddr + 935) = 4;
*(SourceAddr + 936) = 4;
*(SourceAddr + 937) = 3;
*(SourceAddr + 938) = 0;
*(SourceAddr + 939) = 0;
*(SourceAddr + 940) = 0;
*(SourceAddr + 941) = 0;
*(SourceAddr + 942) = 0;
*(SourceAddr + 943) = 0;
*(SourceAddr + 944) = 0;
*(SourceAddr + 945) = 0;
*(SourceAddr + 946) = 0;
*(SourceAddr + 947) = 0;
*(SourceAddr + 948) = 0;
*(SourceAddr + 949) = 0;
*(SourceAddr + 950) = 2;
*(SourceAddr + 951) = 1;
*(SourceAddr + 952) = 1;
*(SourceAddr + 953) = 0;
*(SourceAddr + 954) = 0;
*(SourceAddr + 955) = 0;
*(SourceAddr + 956) = 0;
*(SourceAddr + 957) = 0;
*(SourceAddr + 958) = 0;
*(SourceAddr + 959) = 0;
*(SourceAddr + 960) = 0;
*(SourceAddr + 961) = 0;
*(SourceAddr + 962) = 0;
*(SourceAddr + 963) = 0;
*(SourceAddr + 964) = 0;
*(SourceAddr + 965) = 0;
*(SourceAddr + 966) = 2;
*(SourceAddr + 967) = 4;
*(SourceAddr + 968) = 0;
*(SourceAddr + 969) = 0;
*(SourceAddr + 970) = 0;
*(SourceAddr + 971) = 0;
*(SourceAddr + 972) = 0;
*(SourceAddr + 973) = 0;
*(SourceAddr + 974) = 0;
*(SourceAddr + 975) = 0;
*(SourceAddr + 976) = 0;
*(SourceAddr + 977) = 0;
*(SourceAddr + 978) = 0;
*(SourceAddr + 979) = 0;
*(SourceAddr + 980) = 0;
*(SourceAddr + 981) = 0;
*(SourceAddr + 982) = 2;
*(SourceAddr + 983) = 0;
*(SourceAddr + 984) = 0;
*(SourceAddr + 985) = 0;
*(SourceAddr + 986) = 0;
*(SourceAddr + 987) = 0;
*(SourceAddr + 988) = 0;
*(SourceAddr + 989) = 0;
*(SourceAddr + 990) = 0;
*(SourceAddr + 991) = 0;
*(SourceAddr + 992) = 0;
*(SourceAddr + 993) = 0;
*(SourceAddr + 994) = 0;
*(SourceAddr + 995) = 0;
*(SourceAddr + 996) = 0;
*(SourceAddr + 997) = 0;
*(SourceAddr + 998) = 0xad;
*(SourceAddr + 999) = 0xda;
*(SourceAddr + 1000) = 0xea;
*(SourceAddr + 1001) = 0xea;
	//*(SourceAddr 10099) =0xea;0xea
	int k =0;
	long long int strinf;
	//sleep(1);
	for(i=0 ; i < NO_OF_PACKETS ; i++){

		/* Writing into the FIFO Transmit Port Buffer */
		for (j=0 ; j < MAX_PACKET_LEN ; j++){
			if( XLlFifo_iTxVacancy(InstancePtr) ){
				
				xil_printf("Send Data PS-to-PL	[	%d	]	=	%d\n",i*MAX_PACKET_LEN+j,*(SourceAddr+(i*MAX_PACKET_LEN)+j));
				XLlFifo_TxPutWord(InstancePtr,
					*(SourceAddr+(i*MAX_PACKET_LEN)+j));
					
				if(j != 0 && j != 1&&j != 498 && j != 499 && j != 500 && j!= 501)
					k+=1;
				else
					k=0; 
				//sstrinf += (*(SourceAddr+(i*MAX_PACKET_LEN)+j))*pow(10,k);
				if(k>=16){
					xil_printf("-------------------------------------------------\n");
					//msleep(10000);
					k=0;
				}
			}
		}

	/* Start Transmission by writing transmission length into the TLR */
	XLlFifo_iTxSetLen(InstancePtr, (MAX_DATA_BUFFER_SIZE * WORD_SIZE));

	/* Check for Transmission completion */
		while( !(XLlFifo_IsTxDone(InstancePtr)) ){

		}
	}

	/* Transmission Complete */
	return XST_SUCCESS;
}

int RxReceive (XLlFifo *InstancePtr, u32* DestinationAddr)
{

	u32 i;
	int Status;
	u32 RxWord;
	static u32 ReceiveLength=256;
	//sleep(1);
	xil_printf(" Receiving data %d....\n\r",XLlFifo_iRxOccupancy(InstancePtr));

		//xil_printf("aqui: -- %d \n",XLlFifo_iRxOccupancy(InstancePtr));
		//sleep(30);

		//xil_printf("XLlFifo_iRxOccupancy -> %d\n",iRxOccupancy);
		while(XLlFifo_iRxOccupancy(InstancePtr)) {
			/* Read Receive Length */
			ReceiveLength = (XLlFifo_iRxGetLen(InstancePtr))/WORD_SIZE;
			if(i == ReceiveLength)break;
			//xil_printf("Aqui %d\n",ReceiveLength);
			for (i=0; i < ReceiveLength; i++) {
				if(i == ReceiveLength)break;
				RxWord = XLlFifo_RxGetWord(InstancePtr);
				//msleep(1500);
				//xil_printf("Aqui %d\n",RxWord);
				*(DestinationAddr+i) = RxWord;
				xil_printf("Receving data PL-to-PS-1 [	%d	]	=	%d	 %d\n",i,*(DestinationAddr+i),ReceiveLength);
				*(DestinationAddr+i) = 0;
				//sleep(1);
			}
			
			//iRxOccupancy = XLlFifo_iRxOccupancy(InstancePtr);
			
		}
		/*
	for (i=0; i < ReceiveLength; i++) {
		RxWord = XLlFifo_RxGetWord(InstancePtr);
		xil_printf("Receving data PL-to-PS-2 [	%d	]	=	%d\n",i,*(DestinationAddr+i));
		//msleep(500);
	}*/
	xil_printf("Before status... \r\n");
	Status = XLlFifo_IsRxDone(InstancePtr);
	if(Status != TRUE){
		xil_printf("Failing in receive complete ... \r\n");
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}
