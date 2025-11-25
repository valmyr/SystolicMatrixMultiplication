// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
// DO NOT MODIFY THIS FILE.

// MODULE VLNV: xilinx.com:ip:axi_uartlite:2.0

`timescale 1ps / 1ps

`include "vivado_interfaces.svh"

module uart_systolic_core_sv (
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI" *)
  (* X_INTERFACE_MODE = "slave S_AXI" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
  vivado_axi4_lite_v1_0.slave S_AXI,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire s_axi_aclk,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire s_axi_aresetn,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire interrupt,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire rx,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire tx
);

  uart_systolic_core inst (
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
    .interrupt(interrupt),
    .s_axi_awaddr(S_AXI.AWADDR),
    .s_axi_awvalid(S_AXI.AWVALID),
    .s_axi_awready(S_AXI.AWREADY),
    .s_axi_wdata(S_AXI.WDATA),
    .s_axi_wstrb(S_AXI.WSTRB),
    .s_axi_wvalid(S_AXI.WVALID),
    .s_axi_wready(S_AXI.WREADY),
    .s_axi_bresp(S_AXI.BRESP),
    .s_axi_bvalid(S_AXI.BVALID),
    .s_axi_bready(S_AXI.BREADY),
    .s_axi_araddr(S_AXI.ARADDR),
    .s_axi_arvalid(S_AXI.ARVALID),
    .s_axi_arready(S_AXI.ARREADY),
    .s_axi_rdata(S_AXI.RDATA),
    .s_axi_rresp(S_AXI.RRESP),
    .s_axi_rvalid(S_AXI.RVALID),
    .s_axi_rready(S_AXI.RREADY),
    .rx(rx),
    .tx(tx)
  );

endmodule
