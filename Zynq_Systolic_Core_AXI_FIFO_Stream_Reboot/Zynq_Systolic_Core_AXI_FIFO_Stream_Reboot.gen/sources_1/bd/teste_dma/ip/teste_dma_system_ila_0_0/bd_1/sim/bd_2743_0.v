//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_2743_0.bd
//Design : bd_2743_0
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_2743_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_2743_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=27,numReposBlks=27,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=None}" *) (* HW_HANDOFF = "teste_dma_system_ila_0_0.hwdef" *) 
module bd_2743_0
   (SLOT_0_AXI_araddr,
    SLOT_0_AXI_arcache,
    SLOT_0_AXI_arlen,
    SLOT_0_AXI_arprot,
    SLOT_0_AXI_arready,
    SLOT_0_AXI_arsize,
    SLOT_0_AXI_arvalid,
    SLOT_0_AXI_awaddr,
    SLOT_0_AXI_awcache,
    SLOT_0_AXI_awlen,
    SLOT_0_AXI_awprot,
    SLOT_0_AXI_awready,
    SLOT_0_AXI_awsize,
    SLOT_0_AXI_awvalid,
    SLOT_0_AXI_bready,
    SLOT_0_AXI_bvalid,
    SLOT_0_AXI_rdata,
    SLOT_0_AXI_rlast,
    SLOT_0_AXI_rready,
    SLOT_0_AXI_rresp,
    SLOT_0_AXI_rvalid,
    SLOT_0_AXI_wdata,
    SLOT_0_AXI_wlast,
    SLOT_0_AXI_wready,
    SLOT_0_AXI_wvalid,
    SLOT_1_AXIS_tdata,
    SLOT_1_AXIS_tlast,
    SLOT_1_AXIS_tready,
    SLOT_1_AXIS_tvalid,
    SLOT_2_AXI_araddr,
    SLOT_2_AXI_arburst,
    SLOT_2_AXI_arcache,
    SLOT_2_AXI_arlen,
    SLOT_2_AXI_arlock,
    SLOT_2_AXI_arprot,
    SLOT_2_AXI_arqos,
    SLOT_2_AXI_arready,
    SLOT_2_AXI_arsize,
    SLOT_2_AXI_arvalid,
    SLOT_2_AXI_awaddr,
    SLOT_2_AXI_awburst,
    SLOT_2_AXI_awcache,
    SLOT_2_AXI_awlen,
    SLOT_2_AXI_awlock,
    SLOT_2_AXI_awprot,
    SLOT_2_AXI_awqos,
    SLOT_2_AXI_awready,
    SLOT_2_AXI_awsize,
    SLOT_2_AXI_awvalid,
    SLOT_2_AXI_bready,
    SLOT_2_AXI_bresp,
    SLOT_2_AXI_bvalid,
    SLOT_2_AXI_rdata,
    SLOT_2_AXI_rlast,
    SLOT_2_AXI_rready,
    SLOT_2_AXI_rresp,
    SLOT_2_AXI_rvalid,
    SLOT_2_AXI_wdata,
    SLOT_2_AXI_wlast,
    SLOT_2_AXI_wready,
    SLOT_2_AXI_wstrb,
    SLOT_2_AXI_wvalid,
    SLOT_3_AXI_araddr,
    SLOT_3_AXI_arprot,
    SLOT_3_AXI_arready,
    SLOT_3_AXI_arvalid,
    SLOT_3_AXI_awaddr,
    SLOT_3_AXI_awprot,
    SLOT_3_AXI_awready,
    SLOT_3_AXI_awvalid,
    SLOT_3_AXI_bready,
    SLOT_3_AXI_bresp,
    SLOT_3_AXI_bvalid,
    SLOT_3_AXI_rdata,
    SLOT_3_AXI_rready,
    SLOT_3_AXI_rresp,
    SLOT_3_AXI_rvalid,
    SLOT_3_AXI_wdata,
    SLOT_3_AXI_wready,
    SLOT_3_AXI_wstrb,
    SLOT_3_AXI_wvalid,
    SLOT_4_AXI_araddr,
    SLOT_4_AXI_arburst,
    SLOT_4_AXI_arcache,
    SLOT_4_AXI_arid,
    SLOT_4_AXI_arlen,
    SLOT_4_AXI_arlock,
    SLOT_4_AXI_arprot,
    SLOT_4_AXI_arqos,
    SLOT_4_AXI_arready,
    SLOT_4_AXI_arsize,
    SLOT_4_AXI_aruser,
    SLOT_4_AXI_arvalid,
    SLOT_4_AXI_awaddr,
    SLOT_4_AXI_awburst,
    SLOT_4_AXI_awcache,
    SLOT_4_AXI_awid,
    SLOT_4_AXI_awlen,
    SLOT_4_AXI_awlock,
    SLOT_4_AXI_awprot,
    SLOT_4_AXI_awqos,
    SLOT_4_AXI_awready,
    SLOT_4_AXI_awsize,
    SLOT_4_AXI_awuser,
    SLOT_4_AXI_awvalid,
    SLOT_4_AXI_bid,
    SLOT_4_AXI_bready,
    SLOT_4_AXI_bresp,
    SLOT_4_AXI_bvalid,
    SLOT_4_AXI_rdata,
    SLOT_4_AXI_rid,
    SLOT_4_AXI_rlast,
    SLOT_4_AXI_rready,
    SLOT_4_AXI_rresp,
    SLOT_4_AXI_rvalid,
    SLOT_4_AXI_wdata,
    SLOT_4_AXI_wlast,
    SLOT_4_AXI_wready,
    SLOT_4_AXI_wstrb,
    SLOT_4_AXI_wvalid,
    SLOT_5_AXI_araddr,
    SLOT_5_AXI_arburst,
    SLOT_5_AXI_arcache,
    SLOT_5_AXI_arid,
    SLOT_5_AXI_arlen,
    SLOT_5_AXI_arlock,
    SLOT_5_AXI_arprot,
    SLOT_5_AXI_arqos,
    SLOT_5_AXI_arready,
    SLOT_5_AXI_arsize,
    SLOT_5_AXI_aruser,
    SLOT_5_AXI_arvalid,
    SLOT_5_AXI_awaddr,
    SLOT_5_AXI_awburst,
    SLOT_5_AXI_awcache,
    SLOT_5_AXI_awid,
    SLOT_5_AXI_awlen,
    SLOT_5_AXI_awlock,
    SLOT_5_AXI_awprot,
    SLOT_5_AXI_awqos,
    SLOT_5_AXI_awready,
    SLOT_5_AXI_awsize,
    SLOT_5_AXI_awuser,
    SLOT_5_AXI_awvalid,
    SLOT_5_AXI_bid,
    SLOT_5_AXI_bready,
    SLOT_5_AXI_bresp,
    SLOT_5_AXI_bvalid,
    SLOT_5_AXI_rdata,
    SLOT_5_AXI_rid,
    SLOT_5_AXI_rlast,
    SLOT_5_AXI_rready,
    SLOT_5_AXI_rresp,
    SLOT_5_AXI_rvalid,
    SLOT_5_AXI_wdata,
    SLOT_5_AXI_wlast,
    SLOT_5_AXI_wready,
    SLOT_5_AXI_wstrb,
    SLOT_5_AXI_wvalid,
    SLOT_6_AXIS_tdata,
    SLOT_6_AXIS_tkeep,
    SLOT_6_AXIS_tlast,
    SLOT_6_AXIS_tready,
    SLOT_6_AXIS_tvalid,
    SLOT_7_AXIS_tdata,
    SLOT_7_AXIS_tlast,
    SLOT_7_AXIS_tready,
    SLOT_7_AXIS_tvalid,
    clk,
    resetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN teste_dma_zynq_ultra_ps_e_0_0_pl_clk0, DATA_WIDTH 128, FREQ_HZ 299970032, HAS_BRESP 0, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_0_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARCACHE" *) input [3:0]SLOT_0_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLEN" *) input [7:0]SLOT_0_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT" *) input [2:0]SLOT_0_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY" *) input SLOT_0_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARSIZE" *) input [2:0]SLOT_0_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID" *) input SLOT_0_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR" *) input [31:0]SLOT_0_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWCACHE" *) input [3:0]SLOT_0_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLEN" *) input [7:0]SLOT_0_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT" *) input [2:0]SLOT_0_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY" *) input SLOT_0_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWSIZE" *) input [2:0]SLOT_0_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID" *) input SLOT_0_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY" *) input SLOT_0_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID" *) input SLOT_0_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA" *) input [127:0]SLOT_0_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RLAST" *) input SLOT_0_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY" *) input SLOT_0_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP" *) input [1:0]SLOT_0_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID" *) input SLOT_0_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA" *) input [127:0]SLOT_0_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WLAST" *) input SLOT_0_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY" *) input SLOT_0_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID" *) input SLOT_0_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_1_AXIS, CLK_DOMAIN teste_dma_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 299970032, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [255:0]SLOT_1_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST" *) input SLOT_1_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TREADY" *) input SLOT_1_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID" *) input SLOT_1_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARADDR" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_2_AXI, ADDR_WIDTH 49, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN teste_dma_zynq_ultra_ps_e_0_0_pl_clk0, DATA_WIDTH 128, FREQ_HZ 299970032, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [48:0]SLOT_2_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARBURST" *) input [1:0]SLOT_2_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARCACHE" *) input [3:0]SLOT_2_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLEN" *) input [7:0]SLOT_2_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLOCK" *) input [0:0]SLOT_2_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARPROT" *) input [2:0]SLOT_2_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARQOS" *) input [3:0]SLOT_2_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARREADY" *) input SLOT_2_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARSIZE" *) input [2:0]SLOT_2_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARVALID" *) input SLOT_2_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWADDR" *) input [48:0]SLOT_2_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWBURST" *) input [1:0]SLOT_2_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWCACHE" *) input [3:0]SLOT_2_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLEN" *) input [7:0]SLOT_2_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLOCK" *) input [0:0]SLOT_2_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWPROT" *) input [2:0]SLOT_2_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWQOS" *) input [3:0]SLOT_2_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWREADY" *) input SLOT_2_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWSIZE" *) input [2:0]SLOT_2_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWVALID" *) input SLOT_2_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BREADY" *) input SLOT_2_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BRESP" *) input [1:0]SLOT_2_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BVALID" *) input SLOT_2_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RDATA" *) input [127:0]SLOT_2_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RLAST" *) input SLOT_2_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RREADY" *) input SLOT_2_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RRESP" *) input [1:0]SLOT_2_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RVALID" *) input SLOT_2_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WDATA" *) input [127:0]SLOT_2_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WLAST" *) input SLOT_2_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WREADY" *) input SLOT_2_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WSTRB" *) input [15:0]SLOT_2_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WVALID" *) input SLOT_2_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARADDR" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_3_AXI, ADDR_WIDTH 10, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN teste_dma_zynq_ultra_ps_e_0_0_pl_clk0, DATA_WIDTH 32, FREQ_HZ 299970032, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [9:0]SLOT_3_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARPROT" *) input [2:0]SLOT_3_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARREADY" *) input SLOT_3_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARVALID" *) input SLOT_3_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWADDR" *) input [9:0]SLOT_3_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWPROT" *) input [2:0]SLOT_3_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWREADY" *) input SLOT_3_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWVALID" *) input SLOT_3_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BREADY" *) input SLOT_3_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BRESP" *) input [1:0]SLOT_3_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BVALID" *) input SLOT_3_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RDATA" *) input [31:0]SLOT_3_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RREADY" *) input SLOT_3_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RRESP" *) input [1:0]SLOT_3_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RVALID" *) input SLOT_3_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WDATA" *) input [31:0]SLOT_3_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WREADY" *) input SLOT_3_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WSTRB" *) input [3:0]SLOT_3_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WVALID" *) input SLOT_3_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARADDR" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_4_AXI, ADDR_WIDTH 40, ARUSER_WIDTH 16, AWUSER_WIDTH 16, BUSER_WIDTH 0, CLK_DOMAIN teste_dma_zynq_ultra_ps_e_0_0_pl_clk0, DATA_WIDTH 128, FREQ_HZ 299970032, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 4, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [39:0]SLOT_4_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARBURST" *) input [1:0]SLOT_4_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARCACHE" *) input [3:0]SLOT_4_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARID" *) input [15:0]SLOT_4_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARLEN" *) input [7:0]SLOT_4_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARLOCK" *) input [0:0]SLOT_4_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARPROT" *) input [2:0]SLOT_4_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARQOS" *) input [3:0]SLOT_4_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARREADY" *) input SLOT_4_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARSIZE" *) input [2:0]SLOT_4_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARUSER" *) input [15:0]SLOT_4_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI ARVALID" *) input SLOT_4_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWADDR" *) input [39:0]SLOT_4_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWBURST" *) input [1:0]SLOT_4_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWCACHE" *) input [3:0]SLOT_4_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWID" *) input [15:0]SLOT_4_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWLEN" *) input [7:0]SLOT_4_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWLOCK" *) input [0:0]SLOT_4_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWPROT" *) input [2:0]SLOT_4_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWQOS" *) input [3:0]SLOT_4_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWREADY" *) input SLOT_4_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWSIZE" *) input [2:0]SLOT_4_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWUSER" *) input [15:0]SLOT_4_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI AWVALID" *) input SLOT_4_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BID" *) input [15:0]SLOT_4_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BREADY" *) input SLOT_4_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BRESP" *) input [1:0]SLOT_4_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI BVALID" *) input SLOT_4_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RDATA" *) input [127:0]SLOT_4_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RID" *) input [15:0]SLOT_4_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RLAST" *) input SLOT_4_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RREADY" *) input SLOT_4_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RRESP" *) input [1:0]SLOT_4_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI RVALID" *) input SLOT_4_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WDATA" *) input [127:0]SLOT_4_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WLAST" *) input SLOT_4_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WREADY" *) input SLOT_4_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WSTRB" *) input [15:0]SLOT_4_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_4_AXI WVALID" *) input SLOT_4_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARADDR" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_5_AXI, ADDR_WIDTH 40, ARUSER_WIDTH 16, AWUSER_WIDTH 16, BUSER_WIDTH 0, CLK_DOMAIN teste_dma_zynq_ultra_ps_e_0_0_pl_clk0, DATA_WIDTH 128, FREQ_HZ 299970032, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 4, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [39:0]SLOT_5_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARBURST" *) input [1:0]SLOT_5_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARCACHE" *) input [3:0]SLOT_5_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARID" *) input [15:0]SLOT_5_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARLEN" *) input [7:0]SLOT_5_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARLOCK" *) input [0:0]SLOT_5_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARPROT" *) input [2:0]SLOT_5_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARQOS" *) input [3:0]SLOT_5_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARREADY" *) input SLOT_5_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARSIZE" *) input [2:0]SLOT_5_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARUSER" *) input [15:0]SLOT_5_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI ARVALID" *) input SLOT_5_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWADDR" *) input [39:0]SLOT_5_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWBURST" *) input [1:0]SLOT_5_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWCACHE" *) input [3:0]SLOT_5_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWID" *) input [15:0]SLOT_5_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWLEN" *) input [7:0]SLOT_5_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWLOCK" *) input [0:0]SLOT_5_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWPROT" *) input [2:0]SLOT_5_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWQOS" *) input [3:0]SLOT_5_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWREADY" *) input SLOT_5_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWSIZE" *) input [2:0]SLOT_5_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWUSER" *) input [15:0]SLOT_5_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI AWVALID" *) input SLOT_5_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI BID" *) input [15:0]SLOT_5_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI BREADY" *) input SLOT_5_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI BRESP" *) input [1:0]SLOT_5_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI BVALID" *) input SLOT_5_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RDATA" *) input [127:0]SLOT_5_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RID" *) input [15:0]SLOT_5_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RLAST" *) input SLOT_5_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RREADY" *) input SLOT_5_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RRESP" *) input [1:0]SLOT_5_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI RVALID" *) input SLOT_5_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WDATA" *) input [127:0]SLOT_5_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WLAST" *) input SLOT_5_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WREADY" *) input SLOT_5_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WSTRB" *) input [15:0]SLOT_5_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_5_AXI WVALID" *) input SLOT_5_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TDATA" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_6_AXIS, CLK_DOMAIN teste_dma_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 299970032, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [127:0]SLOT_6_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TKEEP" *) input [15:0]SLOT_6_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TLAST" *) input SLOT_6_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TREADY" *) input SLOT_6_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_6_AXIS TVALID" *) input SLOT_6_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TDATA" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_7_AXIS, CLK_DOMAIN teste_dma_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 299970032, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [255:0]SLOT_7_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TLAST" *) input SLOT_7_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TREADY" *) input SLOT_7_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_7_AXIS TVALID" *) input SLOT_7_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXI:SLOT_1_AXIS:SLOT_2_AXI:SLOT_3_AXI:SLOT_4_AXI:SLOT_5_AXI:SLOT_6_AXIS:SLOT_7_AXIS, ASSOCIATED_RESET resetn, CLK_DOMAIN teste_dma_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 299970032, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input resetn;

  wire [31:0]SLOT_0_AXI_araddr;
  wire [3:0]SLOT_0_AXI_arcache;
  wire [7:0]SLOT_0_AXI_arlen;
  wire [2:0]SLOT_0_AXI_arprot;
  wire SLOT_0_AXI_arready;
  wire [2:0]SLOT_0_AXI_arsize;
  wire SLOT_0_AXI_arvalid;
  wire [31:0]SLOT_0_AXI_awaddr;
  wire [3:0]SLOT_0_AXI_awcache;
  wire [7:0]SLOT_0_AXI_awlen;
  wire [2:0]SLOT_0_AXI_awprot;
  wire SLOT_0_AXI_awready;
  wire [2:0]SLOT_0_AXI_awsize;
  wire SLOT_0_AXI_awvalid;
  wire SLOT_0_AXI_bready;
  wire SLOT_0_AXI_bvalid;
  wire [127:0]SLOT_0_AXI_rdata;
  wire SLOT_0_AXI_rlast;
  wire SLOT_0_AXI_rready;
  wire [1:0]SLOT_0_AXI_rresp;
  wire SLOT_0_AXI_rvalid;
  wire [127:0]SLOT_0_AXI_wdata;
  wire SLOT_0_AXI_wlast;
  wire SLOT_0_AXI_wready;
  wire SLOT_0_AXI_wvalid;
  wire [255:0]SLOT_1_AXIS_tdata;
  wire SLOT_1_AXIS_tlast;
  wire SLOT_1_AXIS_tready;
  wire SLOT_1_AXIS_tvalid;
  wire [48:0]SLOT_2_AXI_araddr;
  wire [1:0]SLOT_2_AXI_arburst;
  wire [3:0]SLOT_2_AXI_arcache;
  wire [7:0]SLOT_2_AXI_arlen;
  wire [0:0]SLOT_2_AXI_arlock;
  wire [2:0]SLOT_2_AXI_arprot;
  wire [3:0]SLOT_2_AXI_arqos;
  wire SLOT_2_AXI_arready;
  wire [2:0]SLOT_2_AXI_arsize;
  wire SLOT_2_AXI_arvalid;
  wire [48:0]SLOT_2_AXI_awaddr;
  wire [1:0]SLOT_2_AXI_awburst;
  wire [3:0]SLOT_2_AXI_awcache;
  wire [7:0]SLOT_2_AXI_awlen;
  wire [0:0]SLOT_2_AXI_awlock;
  wire [2:0]SLOT_2_AXI_awprot;
  wire [3:0]SLOT_2_AXI_awqos;
  wire SLOT_2_AXI_awready;
  wire [2:0]SLOT_2_AXI_awsize;
  wire SLOT_2_AXI_awvalid;
  wire SLOT_2_AXI_bready;
  wire [1:0]SLOT_2_AXI_bresp;
  wire SLOT_2_AXI_bvalid;
  wire [127:0]SLOT_2_AXI_rdata;
  wire SLOT_2_AXI_rlast;
  wire SLOT_2_AXI_rready;
  wire [1:0]SLOT_2_AXI_rresp;
  wire SLOT_2_AXI_rvalid;
  wire [127:0]SLOT_2_AXI_wdata;
  wire SLOT_2_AXI_wlast;
  wire SLOT_2_AXI_wready;
  wire [15:0]SLOT_2_AXI_wstrb;
  wire SLOT_2_AXI_wvalid;
  wire [9:0]SLOT_3_AXI_araddr;
  wire [2:0]SLOT_3_AXI_arprot;
  wire SLOT_3_AXI_arready;
  wire SLOT_3_AXI_arvalid;
  wire [9:0]SLOT_3_AXI_awaddr;
  wire [2:0]SLOT_3_AXI_awprot;
  wire SLOT_3_AXI_awready;
  wire SLOT_3_AXI_awvalid;
  wire SLOT_3_AXI_bready;
  wire [1:0]SLOT_3_AXI_bresp;
  wire SLOT_3_AXI_bvalid;
  wire [31:0]SLOT_3_AXI_rdata;
  wire SLOT_3_AXI_rready;
  wire [1:0]SLOT_3_AXI_rresp;
  wire SLOT_3_AXI_rvalid;
  wire [31:0]SLOT_3_AXI_wdata;
  wire SLOT_3_AXI_wready;
  wire [3:0]SLOT_3_AXI_wstrb;
  wire SLOT_3_AXI_wvalid;
  wire [39:0]SLOT_4_AXI_araddr;
  wire [1:0]SLOT_4_AXI_arburst;
  wire [3:0]SLOT_4_AXI_arcache;
  wire [15:0]SLOT_4_AXI_arid;
  wire [7:0]SLOT_4_AXI_arlen;
  wire [0:0]SLOT_4_AXI_arlock;
  wire [2:0]SLOT_4_AXI_arprot;
  wire [3:0]SLOT_4_AXI_arqos;
  wire SLOT_4_AXI_arready;
  wire [2:0]SLOT_4_AXI_arsize;
  wire [15:0]SLOT_4_AXI_aruser;
  wire SLOT_4_AXI_arvalid;
  wire [39:0]SLOT_4_AXI_awaddr;
  wire [1:0]SLOT_4_AXI_awburst;
  wire [3:0]SLOT_4_AXI_awcache;
  wire [15:0]SLOT_4_AXI_awid;
  wire [7:0]SLOT_4_AXI_awlen;
  wire [0:0]SLOT_4_AXI_awlock;
  wire [2:0]SLOT_4_AXI_awprot;
  wire [3:0]SLOT_4_AXI_awqos;
  wire SLOT_4_AXI_awready;
  wire [2:0]SLOT_4_AXI_awsize;
  wire [15:0]SLOT_4_AXI_awuser;
  wire SLOT_4_AXI_awvalid;
  wire [15:0]SLOT_4_AXI_bid;
  wire SLOT_4_AXI_bready;
  wire [1:0]SLOT_4_AXI_bresp;
  wire SLOT_4_AXI_bvalid;
  wire [127:0]SLOT_4_AXI_rdata;
  wire [15:0]SLOT_4_AXI_rid;
  wire SLOT_4_AXI_rlast;
  wire SLOT_4_AXI_rready;
  wire [1:0]SLOT_4_AXI_rresp;
  wire SLOT_4_AXI_rvalid;
  wire [127:0]SLOT_4_AXI_wdata;
  wire SLOT_4_AXI_wlast;
  wire SLOT_4_AXI_wready;
  wire [15:0]SLOT_4_AXI_wstrb;
  wire SLOT_4_AXI_wvalid;
  wire [39:0]SLOT_5_AXI_araddr;
  wire [1:0]SLOT_5_AXI_arburst;
  wire [3:0]SLOT_5_AXI_arcache;
  wire [15:0]SLOT_5_AXI_arid;
  wire [7:0]SLOT_5_AXI_arlen;
  wire [0:0]SLOT_5_AXI_arlock;
  wire [2:0]SLOT_5_AXI_arprot;
  wire [3:0]SLOT_5_AXI_arqos;
  wire SLOT_5_AXI_arready;
  wire [2:0]SLOT_5_AXI_arsize;
  wire [15:0]SLOT_5_AXI_aruser;
  wire SLOT_5_AXI_arvalid;
  wire [39:0]SLOT_5_AXI_awaddr;
  wire [1:0]SLOT_5_AXI_awburst;
  wire [3:0]SLOT_5_AXI_awcache;
  wire [15:0]SLOT_5_AXI_awid;
  wire [7:0]SLOT_5_AXI_awlen;
  wire [0:0]SLOT_5_AXI_awlock;
  wire [2:0]SLOT_5_AXI_awprot;
  wire [3:0]SLOT_5_AXI_awqos;
  wire SLOT_5_AXI_awready;
  wire [2:0]SLOT_5_AXI_awsize;
  wire [15:0]SLOT_5_AXI_awuser;
  wire SLOT_5_AXI_awvalid;
  wire [15:0]SLOT_5_AXI_bid;
  wire SLOT_5_AXI_bready;
  wire [1:0]SLOT_5_AXI_bresp;
  wire SLOT_5_AXI_bvalid;
  wire [127:0]SLOT_5_AXI_rdata;
  wire [15:0]SLOT_5_AXI_rid;
  wire SLOT_5_AXI_rlast;
  wire SLOT_5_AXI_rready;
  wire [1:0]SLOT_5_AXI_rresp;
  wire SLOT_5_AXI_rvalid;
  wire [127:0]SLOT_5_AXI_wdata;
  wire SLOT_5_AXI_wlast;
  wire SLOT_5_AXI_wready;
  wire [15:0]SLOT_5_AXI_wstrb;
  wire SLOT_5_AXI_wvalid;
  wire [127:0]SLOT_6_AXIS_tdata;
  wire [15:0]SLOT_6_AXIS_tkeep;
  wire SLOT_6_AXIS_tlast;
  wire SLOT_6_AXIS_tready;
  wire SLOT_6_AXIS_tvalid;
  wire [255:0]SLOT_7_AXIS_tdata;
  wire SLOT_7_AXIS_tlast;
  wire SLOT_7_AXIS_tready;
  wire SLOT_7_AXIS_tvalid;
  wire clk;
  wire [1:0]net_slot_0_axi_ar_cnt;
  wire [1:0]net_slot_0_axi_ar_ctrl;
  wire [31:0]net_slot_0_axi_araddr;
  wire [3:0]net_slot_0_axi_arcache;
  wire [7:0]net_slot_0_axi_arlen;
  wire [2:0]net_slot_0_axi_arprot;
  wire net_slot_0_axi_arready;
  wire [2:0]net_slot_0_axi_arsize;
  wire net_slot_0_axi_arvalid;
  wire [1:0]net_slot_0_axi_aw_cnt;
  wire [1:0]net_slot_0_axi_aw_ctrl;
  wire net_slot_0_axi_awready;
  wire net_slot_0_axi_awvalid;
  wire [1:0]net_slot_0_axi_b_cnt;
  wire [1:0]net_slot_0_axi_b_ctrl;
  wire net_slot_0_axi_bready;
  wire net_slot_0_axi_bvalid;
  wire [1:0]net_slot_0_axi_r_cnt;
  wire [2:0]net_slot_0_axi_r_ctrl;
  wire [127:0]net_slot_0_axi_rdata;
  wire net_slot_0_axi_rlast;
  wire net_slot_0_axi_rready;
  wire [1:0]net_slot_0_axi_rresp;
  wire net_slot_0_axi_rvalid;
  wire [2:0]net_slot_0_axi_w_ctrl;
  wire net_slot_0_axi_wlast;
  wire net_slot_0_axi_wready;
  wire net_slot_0_axi_wvalid;
  wire [255:0]net_slot_1_axis_tdata;
  wire net_slot_1_axis_tlast;
  wire net_slot_1_axis_tready;
  wire net_slot_1_axis_tvalid;
  wire [1:0]net_slot_2_axi_ar_cnt;
  wire [1:0]net_slot_2_axi_ar_ctrl;
  wire [48:0]net_slot_2_axi_araddr;
  wire [1:0]net_slot_2_axi_arburst;
  wire [3:0]net_slot_2_axi_arcache;
  wire [7:0]net_slot_2_axi_arlen;
  wire [0:0]net_slot_2_axi_arlock;
  wire [2:0]net_slot_2_axi_arprot;
  wire [3:0]net_slot_2_axi_arqos;
  wire net_slot_2_axi_arready;
  wire [2:0]net_slot_2_axi_arsize;
  wire net_slot_2_axi_arvalid;
  wire [1:0]net_slot_2_axi_aw_cnt;
  wire [1:0]net_slot_2_axi_aw_ctrl;
  wire [48:0]net_slot_2_axi_awaddr;
  wire [1:0]net_slot_2_axi_awburst;
  wire [3:0]net_slot_2_axi_awcache;
  wire [7:0]net_slot_2_axi_awlen;
  wire [0:0]net_slot_2_axi_awlock;
  wire [2:0]net_slot_2_axi_awprot;
  wire [3:0]net_slot_2_axi_awqos;
  wire net_slot_2_axi_awready;
  wire [2:0]net_slot_2_axi_awsize;
  wire net_slot_2_axi_awvalid;
  wire [1:0]net_slot_2_axi_b_cnt;
  wire [1:0]net_slot_2_axi_b_ctrl;
  wire net_slot_2_axi_bready;
  wire [1:0]net_slot_2_axi_bresp;
  wire net_slot_2_axi_bvalid;
  wire [1:0]net_slot_2_axi_r_cnt;
  wire [2:0]net_slot_2_axi_r_ctrl;
  wire [127:0]net_slot_2_axi_rdata;
  wire net_slot_2_axi_rlast;
  wire net_slot_2_axi_rready;
  wire [1:0]net_slot_2_axi_rresp;
  wire net_slot_2_axi_rvalid;
  wire [2:0]net_slot_2_axi_w_ctrl;
  wire [127:0]net_slot_2_axi_wdata;
  wire net_slot_2_axi_wlast;
  wire net_slot_2_axi_wready;
  wire [15:0]net_slot_2_axi_wstrb;
  wire net_slot_2_axi_wvalid;
  wire [1:0]net_slot_3_axi_ar_cnt;
  wire [1:0]net_slot_3_axi_ar_ctrl;
  wire [9:0]net_slot_3_axi_araddr;
  wire [2:0]net_slot_3_axi_arprot;
  wire net_slot_3_axi_arready;
  wire net_slot_3_axi_arvalid;
  wire [1:0]net_slot_3_axi_aw_cnt;
  wire [1:0]net_slot_3_axi_aw_ctrl;
  wire [9:0]net_slot_3_axi_awaddr;
  wire [2:0]net_slot_3_axi_awprot;
  wire net_slot_3_axi_awready;
  wire net_slot_3_axi_awvalid;
  wire [1:0]net_slot_3_axi_b_cnt;
  wire [1:0]net_slot_3_axi_b_ctrl;
  wire net_slot_3_axi_bready;
  wire [1:0]net_slot_3_axi_bresp;
  wire net_slot_3_axi_bvalid;
  wire [1:0]net_slot_3_axi_r_cnt;
  wire [1:0]net_slot_3_axi_r_ctrl;
  wire [31:0]net_slot_3_axi_rdata;
  wire net_slot_3_axi_rready;
  wire [1:0]net_slot_3_axi_rresp;
  wire net_slot_3_axi_rvalid;
  wire [1:0]net_slot_3_axi_w_ctrl;
  wire [31:0]net_slot_3_axi_wdata;
  wire net_slot_3_axi_wready;
  wire [3:0]net_slot_3_axi_wstrb;
  wire net_slot_3_axi_wvalid;
  wire [1:0]net_slot_4_axi_ar_cnt;
  wire [1:0]net_slot_4_axi_ar_ctrl;
  wire [39:0]net_slot_4_axi_araddr;
  wire [1:0]net_slot_4_axi_arburst;
  wire [3:0]net_slot_4_axi_arcache;
  wire [15:0]net_slot_4_axi_arid;
  wire [7:0]net_slot_4_axi_arlen;
  wire [0:0]net_slot_4_axi_arlock;
  wire [2:0]net_slot_4_axi_arprot;
  wire [3:0]net_slot_4_axi_arqos;
  wire net_slot_4_axi_arready;
  wire [2:0]net_slot_4_axi_arsize;
  wire [15:0]net_slot_4_axi_aruser;
  wire net_slot_4_axi_arvalid;
  wire [1:0]net_slot_4_axi_aw_cnt;
  wire [1:0]net_slot_4_axi_aw_ctrl;
  wire [39:0]net_slot_4_axi_awaddr;
  wire [1:0]net_slot_4_axi_awburst;
  wire [3:0]net_slot_4_axi_awcache;
  wire [15:0]net_slot_4_axi_awid;
  wire [7:0]net_slot_4_axi_awlen;
  wire [0:0]net_slot_4_axi_awlock;
  wire [2:0]net_slot_4_axi_awprot;
  wire [3:0]net_slot_4_axi_awqos;
  wire net_slot_4_axi_awready;
  wire [2:0]net_slot_4_axi_awsize;
  wire [15:0]net_slot_4_axi_awuser;
  wire net_slot_4_axi_awvalid;
  wire [1:0]net_slot_4_axi_b_cnt;
  wire [1:0]net_slot_4_axi_b_ctrl;
  wire [15:0]net_slot_4_axi_bid;
  wire net_slot_4_axi_bready;
  wire [1:0]net_slot_4_axi_bresp;
  wire net_slot_4_axi_bvalid;
  wire [1:0]net_slot_4_axi_r_cnt;
  wire [2:0]net_slot_4_axi_r_ctrl;
  wire [127:0]net_slot_4_axi_rdata;
  wire [15:0]net_slot_4_axi_rid;
  wire net_slot_4_axi_rlast;
  wire net_slot_4_axi_rready;
  wire [1:0]net_slot_4_axi_rresp;
  wire net_slot_4_axi_rvalid;
  wire [2:0]net_slot_4_axi_w_ctrl;
  wire [127:0]net_slot_4_axi_wdata;
  wire net_slot_4_axi_wlast;
  wire net_slot_4_axi_wready;
  wire [15:0]net_slot_4_axi_wstrb;
  wire net_slot_4_axi_wvalid;
  wire [1:0]net_slot_5_axi_ar_cnt;
  wire [1:0]net_slot_5_axi_ar_ctrl;
  wire [39:0]net_slot_5_axi_araddr;
  wire [1:0]net_slot_5_axi_arburst;
  wire [3:0]net_slot_5_axi_arcache;
  wire [15:0]net_slot_5_axi_arid;
  wire [7:0]net_slot_5_axi_arlen;
  wire [0:0]net_slot_5_axi_arlock;
  wire [2:0]net_slot_5_axi_arprot;
  wire [3:0]net_slot_5_axi_arqos;
  wire net_slot_5_axi_arready;
  wire [2:0]net_slot_5_axi_arsize;
  wire [15:0]net_slot_5_axi_aruser;
  wire net_slot_5_axi_arvalid;
  wire [1:0]net_slot_5_axi_aw_cnt;
  wire [1:0]net_slot_5_axi_aw_ctrl;
  wire [39:0]net_slot_5_axi_awaddr;
  wire [1:0]net_slot_5_axi_awburst;
  wire [3:0]net_slot_5_axi_awcache;
  wire [15:0]net_slot_5_axi_awid;
  wire [7:0]net_slot_5_axi_awlen;
  wire [0:0]net_slot_5_axi_awlock;
  wire [2:0]net_slot_5_axi_awprot;
  wire [3:0]net_slot_5_axi_awqos;
  wire net_slot_5_axi_awready;
  wire [2:0]net_slot_5_axi_awsize;
  wire [15:0]net_slot_5_axi_awuser;
  wire net_slot_5_axi_awvalid;
  wire [1:0]net_slot_5_axi_b_cnt;
  wire [1:0]net_slot_5_axi_b_ctrl;
  wire [15:0]net_slot_5_axi_bid;
  wire net_slot_5_axi_bready;
  wire [1:0]net_slot_5_axi_bresp;
  wire net_slot_5_axi_bvalid;
  wire [1:0]net_slot_5_axi_r_cnt;
  wire [2:0]net_slot_5_axi_r_ctrl;
  wire [127:0]net_slot_5_axi_rdata;
  wire [15:0]net_slot_5_axi_rid;
  wire net_slot_5_axi_rlast;
  wire net_slot_5_axi_rready;
  wire [1:0]net_slot_5_axi_rresp;
  wire net_slot_5_axi_rvalid;
  wire [2:0]net_slot_5_axi_w_ctrl;
  wire [127:0]net_slot_5_axi_wdata;
  wire net_slot_5_axi_wlast;
  wire net_slot_5_axi_wready;
  wire [15:0]net_slot_5_axi_wstrb;
  wire net_slot_5_axi_wvalid;
  wire [127:0]net_slot_6_axis_tdata;
  wire [15:0]net_slot_6_axis_tkeep;
  wire net_slot_6_axis_tlast;
  wire net_slot_6_axis_tready;
  wire net_slot_6_axis_tvalid;
  wire [255:0]net_slot_7_axis_tdata;
  wire net_slot_7_axis_tlast;
  wire net_slot_7_axis_tready;
  wire net_slot_7_axis_tvalid;
  wire resetn;

  bd_2743_0_g_inst_0 g_inst
       (.aclk(clk),
        .aresetn(resetn),
        .m_slot_0_axi_ar_cnt(net_slot_0_axi_ar_cnt),
        .m_slot_0_axi_araddr(net_slot_0_axi_araddr),
        .m_slot_0_axi_arcache(net_slot_0_axi_arcache),
        .m_slot_0_axi_arlen(net_slot_0_axi_arlen),
        .m_slot_0_axi_arprot(net_slot_0_axi_arprot),
        .m_slot_0_axi_arready(net_slot_0_axi_arready),
        .m_slot_0_axi_arsize(net_slot_0_axi_arsize),
        .m_slot_0_axi_arvalid(net_slot_0_axi_arvalid),
        .m_slot_0_axi_aw_cnt(net_slot_0_axi_aw_cnt),
        .m_slot_0_axi_awready(net_slot_0_axi_awready),
        .m_slot_0_axi_awvalid(net_slot_0_axi_awvalid),
        .m_slot_0_axi_b_cnt(net_slot_0_axi_b_cnt),
        .m_slot_0_axi_bready(net_slot_0_axi_bready),
        .m_slot_0_axi_bvalid(net_slot_0_axi_bvalid),
        .m_slot_0_axi_r_cnt(net_slot_0_axi_r_cnt),
        .m_slot_0_axi_rdata(net_slot_0_axi_rdata),
        .m_slot_0_axi_rlast(net_slot_0_axi_rlast),
        .m_slot_0_axi_rready(net_slot_0_axi_rready),
        .m_slot_0_axi_rresp(net_slot_0_axi_rresp),
        .m_slot_0_axi_rvalid(net_slot_0_axi_rvalid),
        .m_slot_0_axi_wlast(net_slot_0_axi_wlast),
        .m_slot_0_axi_wready(net_slot_0_axi_wready),
        .m_slot_0_axi_wvalid(net_slot_0_axi_wvalid),
        .m_slot_1_axis_tdata(net_slot_1_axis_tdata),
        .m_slot_1_axis_tlast(net_slot_1_axis_tlast),
        .m_slot_1_axis_tready(net_slot_1_axis_tready),
        .m_slot_1_axis_tvalid(net_slot_1_axis_tvalid),
        .m_slot_2_axi_ar_cnt(net_slot_2_axi_ar_cnt),
        .m_slot_2_axi_araddr(net_slot_2_axi_araddr),
        .m_slot_2_axi_arburst(net_slot_2_axi_arburst),
        .m_slot_2_axi_arcache(net_slot_2_axi_arcache),
        .m_slot_2_axi_arlen(net_slot_2_axi_arlen),
        .m_slot_2_axi_arlock(net_slot_2_axi_arlock),
        .m_slot_2_axi_arprot(net_slot_2_axi_arprot),
        .m_slot_2_axi_arqos(net_slot_2_axi_arqos),
        .m_slot_2_axi_arready(net_slot_2_axi_arready),
        .m_slot_2_axi_arsize(net_slot_2_axi_arsize),
        .m_slot_2_axi_arvalid(net_slot_2_axi_arvalid),
        .m_slot_2_axi_aw_cnt(net_slot_2_axi_aw_cnt),
        .m_slot_2_axi_awaddr(net_slot_2_axi_awaddr),
        .m_slot_2_axi_awburst(net_slot_2_axi_awburst),
        .m_slot_2_axi_awcache(net_slot_2_axi_awcache),
        .m_slot_2_axi_awlen(net_slot_2_axi_awlen),
        .m_slot_2_axi_awlock(net_slot_2_axi_awlock),
        .m_slot_2_axi_awprot(net_slot_2_axi_awprot),
        .m_slot_2_axi_awqos(net_slot_2_axi_awqos),
        .m_slot_2_axi_awready(net_slot_2_axi_awready),
        .m_slot_2_axi_awsize(net_slot_2_axi_awsize),
        .m_slot_2_axi_awvalid(net_slot_2_axi_awvalid),
        .m_slot_2_axi_b_cnt(net_slot_2_axi_b_cnt),
        .m_slot_2_axi_bready(net_slot_2_axi_bready),
        .m_slot_2_axi_bresp(net_slot_2_axi_bresp),
        .m_slot_2_axi_bvalid(net_slot_2_axi_bvalid),
        .m_slot_2_axi_r_cnt(net_slot_2_axi_r_cnt),
        .m_slot_2_axi_rdata(net_slot_2_axi_rdata),
        .m_slot_2_axi_rlast(net_slot_2_axi_rlast),
        .m_slot_2_axi_rready(net_slot_2_axi_rready),
        .m_slot_2_axi_rresp(net_slot_2_axi_rresp),
        .m_slot_2_axi_rvalid(net_slot_2_axi_rvalid),
        .m_slot_2_axi_wdata(net_slot_2_axi_wdata),
        .m_slot_2_axi_wlast(net_slot_2_axi_wlast),
        .m_slot_2_axi_wready(net_slot_2_axi_wready),
        .m_slot_2_axi_wstrb(net_slot_2_axi_wstrb),
        .m_slot_2_axi_wvalid(net_slot_2_axi_wvalid),
        .m_slot_3_axi_ar_cnt(net_slot_3_axi_ar_cnt),
        .m_slot_3_axi_araddr(net_slot_3_axi_araddr),
        .m_slot_3_axi_arprot(net_slot_3_axi_arprot),
        .m_slot_3_axi_arready(net_slot_3_axi_arready),
        .m_slot_3_axi_arvalid(net_slot_3_axi_arvalid),
        .m_slot_3_axi_aw_cnt(net_slot_3_axi_aw_cnt),
        .m_slot_3_axi_awaddr(net_slot_3_axi_awaddr),
        .m_slot_3_axi_awprot(net_slot_3_axi_awprot),
        .m_slot_3_axi_awready(net_slot_3_axi_awready),
        .m_slot_3_axi_awvalid(net_slot_3_axi_awvalid),
        .m_slot_3_axi_b_cnt(net_slot_3_axi_b_cnt),
        .m_slot_3_axi_bready(net_slot_3_axi_bready),
        .m_slot_3_axi_bresp(net_slot_3_axi_bresp),
        .m_slot_3_axi_bvalid(net_slot_3_axi_bvalid),
        .m_slot_3_axi_r_cnt(net_slot_3_axi_r_cnt),
        .m_slot_3_axi_rdata(net_slot_3_axi_rdata),
        .m_slot_3_axi_rready(net_slot_3_axi_rready),
        .m_slot_3_axi_rresp(net_slot_3_axi_rresp),
        .m_slot_3_axi_rvalid(net_slot_3_axi_rvalid),
        .m_slot_3_axi_wdata(net_slot_3_axi_wdata),
        .m_slot_3_axi_wready(net_slot_3_axi_wready),
        .m_slot_3_axi_wstrb(net_slot_3_axi_wstrb),
        .m_slot_3_axi_wvalid(net_slot_3_axi_wvalid),
        .m_slot_4_axi_ar_cnt(net_slot_4_axi_ar_cnt),
        .m_slot_4_axi_araddr(net_slot_4_axi_araddr),
        .m_slot_4_axi_arburst(net_slot_4_axi_arburst),
        .m_slot_4_axi_arcache(net_slot_4_axi_arcache),
        .m_slot_4_axi_arid(net_slot_4_axi_arid),
        .m_slot_4_axi_arlen(net_slot_4_axi_arlen),
        .m_slot_4_axi_arlock(net_slot_4_axi_arlock),
        .m_slot_4_axi_arprot(net_slot_4_axi_arprot),
        .m_slot_4_axi_arqos(net_slot_4_axi_arqos),
        .m_slot_4_axi_arready(net_slot_4_axi_arready),
        .m_slot_4_axi_arsize(net_slot_4_axi_arsize),
        .m_slot_4_axi_aruser(net_slot_4_axi_aruser),
        .m_slot_4_axi_arvalid(net_slot_4_axi_arvalid),
        .m_slot_4_axi_aw_cnt(net_slot_4_axi_aw_cnt),
        .m_slot_4_axi_awaddr(net_slot_4_axi_awaddr),
        .m_slot_4_axi_awburst(net_slot_4_axi_awburst),
        .m_slot_4_axi_awcache(net_slot_4_axi_awcache),
        .m_slot_4_axi_awid(net_slot_4_axi_awid),
        .m_slot_4_axi_awlen(net_slot_4_axi_awlen),
        .m_slot_4_axi_awlock(net_slot_4_axi_awlock),
        .m_slot_4_axi_awprot(net_slot_4_axi_awprot),
        .m_slot_4_axi_awqos(net_slot_4_axi_awqos),
        .m_slot_4_axi_awready(net_slot_4_axi_awready),
        .m_slot_4_axi_awsize(net_slot_4_axi_awsize),
        .m_slot_4_axi_awuser(net_slot_4_axi_awuser),
        .m_slot_4_axi_awvalid(net_slot_4_axi_awvalid),
        .m_slot_4_axi_b_cnt(net_slot_4_axi_b_cnt),
        .m_slot_4_axi_bid(net_slot_4_axi_bid),
        .m_slot_4_axi_bready(net_slot_4_axi_bready),
        .m_slot_4_axi_bresp(net_slot_4_axi_bresp),
        .m_slot_4_axi_bvalid(net_slot_4_axi_bvalid),
        .m_slot_4_axi_r_cnt(net_slot_4_axi_r_cnt),
        .m_slot_4_axi_rdata(net_slot_4_axi_rdata),
        .m_slot_4_axi_rid(net_slot_4_axi_rid),
        .m_slot_4_axi_rlast(net_slot_4_axi_rlast),
        .m_slot_4_axi_rready(net_slot_4_axi_rready),
        .m_slot_4_axi_rresp(net_slot_4_axi_rresp),
        .m_slot_4_axi_rvalid(net_slot_4_axi_rvalid),
        .m_slot_4_axi_wdata(net_slot_4_axi_wdata),
        .m_slot_4_axi_wlast(net_slot_4_axi_wlast),
        .m_slot_4_axi_wready(net_slot_4_axi_wready),
        .m_slot_4_axi_wstrb(net_slot_4_axi_wstrb),
        .m_slot_4_axi_wvalid(net_slot_4_axi_wvalid),
        .m_slot_5_axi_ar_cnt(net_slot_5_axi_ar_cnt),
        .m_slot_5_axi_araddr(net_slot_5_axi_araddr),
        .m_slot_5_axi_arburst(net_slot_5_axi_arburst),
        .m_slot_5_axi_arcache(net_slot_5_axi_arcache),
        .m_slot_5_axi_arid(net_slot_5_axi_arid),
        .m_slot_5_axi_arlen(net_slot_5_axi_arlen),
        .m_slot_5_axi_arlock(net_slot_5_axi_arlock),
        .m_slot_5_axi_arprot(net_slot_5_axi_arprot),
        .m_slot_5_axi_arqos(net_slot_5_axi_arqos),
        .m_slot_5_axi_arready(net_slot_5_axi_arready),
        .m_slot_5_axi_arsize(net_slot_5_axi_arsize),
        .m_slot_5_axi_aruser(net_slot_5_axi_aruser),
        .m_slot_5_axi_arvalid(net_slot_5_axi_arvalid),
        .m_slot_5_axi_aw_cnt(net_slot_5_axi_aw_cnt),
        .m_slot_5_axi_awaddr(net_slot_5_axi_awaddr),
        .m_slot_5_axi_awburst(net_slot_5_axi_awburst),
        .m_slot_5_axi_awcache(net_slot_5_axi_awcache),
        .m_slot_5_axi_awid(net_slot_5_axi_awid),
        .m_slot_5_axi_awlen(net_slot_5_axi_awlen),
        .m_slot_5_axi_awlock(net_slot_5_axi_awlock),
        .m_slot_5_axi_awprot(net_slot_5_axi_awprot),
        .m_slot_5_axi_awqos(net_slot_5_axi_awqos),
        .m_slot_5_axi_awready(net_slot_5_axi_awready),
        .m_slot_5_axi_awsize(net_slot_5_axi_awsize),
        .m_slot_5_axi_awuser(net_slot_5_axi_awuser),
        .m_slot_5_axi_awvalid(net_slot_5_axi_awvalid),
        .m_slot_5_axi_b_cnt(net_slot_5_axi_b_cnt),
        .m_slot_5_axi_bid(net_slot_5_axi_bid),
        .m_slot_5_axi_bready(net_slot_5_axi_bready),
        .m_slot_5_axi_bresp(net_slot_5_axi_bresp),
        .m_slot_5_axi_bvalid(net_slot_5_axi_bvalid),
        .m_slot_5_axi_r_cnt(net_slot_5_axi_r_cnt),
        .m_slot_5_axi_rdata(net_slot_5_axi_rdata),
        .m_slot_5_axi_rid(net_slot_5_axi_rid),
        .m_slot_5_axi_rlast(net_slot_5_axi_rlast),
        .m_slot_5_axi_rready(net_slot_5_axi_rready),
        .m_slot_5_axi_rresp(net_slot_5_axi_rresp),
        .m_slot_5_axi_rvalid(net_slot_5_axi_rvalid),
        .m_slot_5_axi_wdata(net_slot_5_axi_wdata),
        .m_slot_5_axi_wlast(net_slot_5_axi_wlast),
        .m_slot_5_axi_wready(net_slot_5_axi_wready),
        .m_slot_5_axi_wstrb(net_slot_5_axi_wstrb),
        .m_slot_5_axi_wvalid(net_slot_5_axi_wvalid),
        .m_slot_6_axis_tdata(net_slot_6_axis_tdata),
        .m_slot_6_axis_tkeep(net_slot_6_axis_tkeep),
        .m_slot_6_axis_tlast(net_slot_6_axis_tlast),
        .m_slot_6_axis_tready(net_slot_6_axis_tready),
        .m_slot_6_axis_tvalid(net_slot_6_axis_tvalid),
        .m_slot_7_axis_tdata(net_slot_7_axis_tdata),
        .m_slot_7_axis_tlast(net_slot_7_axis_tlast),
        .m_slot_7_axis_tready(net_slot_7_axis_tready),
        .m_slot_7_axis_tvalid(net_slot_7_axis_tvalid),
        .slot_0_axi_araddr(SLOT_0_AXI_araddr),
        .slot_0_axi_arcache(SLOT_0_AXI_arcache),
        .slot_0_axi_arlen(SLOT_0_AXI_arlen),
        .slot_0_axi_arprot(SLOT_0_AXI_arprot),
        .slot_0_axi_arready(SLOT_0_AXI_arready),
        .slot_0_axi_arsize(SLOT_0_AXI_arsize),
        .slot_0_axi_arvalid(SLOT_0_AXI_arvalid),
        .slot_0_axi_awaddr(SLOT_0_AXI_awaddr),
        .slot_0_axi_awcache(SLOT_0_AXI_awcache),
        .slot_0_axi_awlen(SLOT_0_AXI_awlen),
        .slot_0_axi_awprot(SLOT_0_AXI_awprot),
        .slot_0_axi_awready(SLOT_0_AXI_awready),
        .slot_0_axi_awsize(SLOT_0_AXI_awsize),
        .slot_0_axi_awvalid(SLOT_0_AXI_awvalid),
        .slot_0_axi_bready(SLOT_0_AXI_bready),
        .slot_0_axi_bvalid(SLOT_0_AXI_bvalid),
        .slot_0_axi_rdata(SLOT_0_AXI_rdata),
        .slot_0_axi_rlast(SLOT_0_AXI_rlast),
        .slot_0_axi_rready(SLOT_0_AXI_rready),
        .slot_0_axi_rresp(SLOT_0_AXI_rresp),
        .slot_0_axi_rvalid(SLOT_0_AXI_rvalid),
        .slot_0_axi_wdata(SLOT_0_AXI_wdata),
        .slot_0_axi_wlast(SLOT_0_AXI_wlast),
        .slot_0_axi_wready(SLOT_0_AXI_wready),
        .slot_0_axi_wvalid(SLOT_0_AXI_wvalid),
        .slot_1_axis_tdata(SLOT_1_AXIS_tdata),
        .slot_1_axis_tlast(SLOT_1_AXIS_tlast),
        .slot_1_axis_tready(SLOT_1_AXIS_tready),
        .slot_1_axis_tvalid(SLOT_1_AXIS_tvalid),
        .slot_2_axi_araddr(SLOT_2_AXI_araddr),
        .slot_2_axi_arburst(SLOT_2_AXI_arburst),
        .slot_2_axi_arcache(SLOT_2_AXI_arcache),
        .slot_2_axi_arlen(SLOT_2_AXI_arlen),
        .slot_2_axi_arlock(SLOT_2_AXI_arlock),
        .slot_2_axi_arprot(SLOT_2_AXI_arprot),
        .slot_2_axi_arqos(SLOT_2_AXI_arqos),
        .slot_2_axi_arready(SLOT_2_AXI_arready),
        .slot_2_axi_arsize(SLOT_2_AXI_arsize),
        .slot_2_axi_arvalid(SLOT_2_AXI_arvalid),
        .slot_2_axi_awaddr(SLOT_2_AXI_awaddr),
        .slot_2_axi_awburst(SLOT_2_AXI_awburst),
        .slot_2_axi_awcache(SLOT_2_AXI_awcache),
        .slot_2_axi_awlen(SLOT_2_AXI_awlen),
        .slot_2_axi_awlock(SLOT_2_AXI_awlock),
        .slot_2_axi_awprot(SLOT_2_AXI_awprot),
        .slot_2_axi_awqos(SLOT_2_AXI_awqos),
        .slot_2_axi_awready(SLOT_2_AXI_awready),
        .slot_2_axi_awsize(SLOT_2_AXI_awsize),
        .slot_2_axi_awvalid(SLOT_2_AXI_awvalid),
        .slot_2_axi_bready(SLOT_2_AXI_bready),
        .slot_2_axi_bresp(SLOT_2_AXI_bresp),
        .slot_2_axi_bvalid(SLOT_2_AXI_bvalid),
        .slot_2_axi_rdata(SLOT_2_AXI_rdata),
        .slot_2_axi_rlast(SLOT_2_AXI_rlast),
        .slot_2_axi_rready(SLOT_2_AXI_rready),
        .slot_2_axi_rresp(SLOT_2_AXI_rresp),
        .slot_2_axi_rvalid(SLOT_2_AXI_rvalid),
        .slot_2_axi_wdata(SLOT_2_AXI_wdata),
        .slot_2_axi_wlast(SLOT_2_AXI_wlast),
        .slot_2_axi_wready(SLOT_2_AXI_wready),
        .slot_2_axi_wstrb(SLOT_2_AXI_wstrb),
        .slot_2_axi_wvalid(SLOT_2_AXI_wvalid),
        .slot_3_axi_araddr(SLOT_3_AXI_araddr),
        .slot_3_axi_arprot(SLOT_3_AXI_arprot),
        .slot_3_axi_arready(SLOT_3_AXI_arready),
        .slot_3_axi_arvalid(SLOT_3_AXI_arvalid),
        .slot_3_axi_awaddr(SLOT_3_AXI_awaddr),
        .slot_3_axi_awprot(SLOT_3_AXI_awprot),
        .slot_3_axi_awready(SLOT_3_AXI_awready),
        .slot_3_axi_awvalid(SLOT_3_AXI_awvalid),
        .slot_3_axi_bready(SLOT_3_AXI_bready),
        .slot_3_axi_bresp(SLOT_3_AXI_bresp),
        .slot_3_axi_bvalid(SLOT_3_AXI_bvalid),
        .slot_3_axi_rdata(SLOT_3_AXI_rdata),
        .slot_3_axi_rready(SLOT_3_AXI_rready),
        .slot_3_axi_rresp(SLOT_3_AXI_rresp),
        .slot_3_axi_rvalid(SLOT_3_AXI_rvalid),
        .slot_3_axi_wdata(SLOT_3_AXI_wdata),
        .slot_3_axi_wready(SLOT_3_AXI_wready),
        .slot_3_axi_wstrb(SLOT_3_AXI_wstrb),
        .slot_3_axi_wvalid(SLOT_3_AXI_wvalid),
        .slot_4_axi_araddr(SLOT_4_AXI_araddr),
        .slot_4_axi_arburst(SLOT_4_AXI_arburst),
        .slot_4_axi_arcache(SLOT_4_AXI_arcache),
        .slot_4_axi_arid(SLOT_4_AXI_arid),
        .slot_4_axi_arlen(SLOT_4_AXI_arlen),
        .slot_4_axi_arlock(SLOT_4_AXI_arlock),
        .slot_4_axi_arprot(SLOT_4_AXI_arprot),
        .slot_4_axi_arqos(SLOT_4_AXI_arqos),
        .slot_4_axi_arready(SLOT_4_AXI_arready),
        .slot_4_axi_arsize(SLOT_4_AXI_arsize),
        .slot_4_axi_aruser(SLOT_4_AXI_aruser),
        .slot_4_axi_arvalid(SLOT_4_AXI_arvalid),
        .slot_4_axi_awaddr(SLOT_4_AXI_awaddr),
        .slot_4_axi_awburst(SLOT_4_AXI_awburst),
        .slot_4_axi_awcache(SLOT_4_AXI_awcache),
        .slot_4_axi_awid(SLOT_4_AXI_awid),
        .slot_4_axi_awlen(SLOT_4_AXI_awlen),
        .slot_4_axi_awlock(SLOT_4_AXI_awlock),
        .slot_4_axi_awprot(SLOT_4_AXI_awprot),
        .slot_4_axi_awqos(SLOT_4_AXI_awqos),
        .slot_4_axi_awready(SLOT_4_AXI_awready),
        .slot_4_axi_awsize(SLOT_4_AXI_awsize),
        .slot_4_axi_awuser(SLOT_4_AXI_awuser),
        .slot_4_axi_awvalid(SLOT_4_AXI_awvalid),
        .slot_4_axi_bid(SLOT_4_AXI_bid),
        .slot_4_axi_bready(SLOT_4_AXI_bready),
        .slot_4_axi_bresp(SLOT_4_AXI_bresp),
        .slot_4_axi_bvalid(SLOT_4_AXI_bvalid),
        .slot_4_axi_rdata(SLOT_4_AXI_rdata),
        .slot_4_axi_rid(SLOT_4_AXI_rid),
        .slot_4_axi_rlast(SLOT_4_AXI_rlast),
        .slot_4_axi_rready(SLOT_4_AXI_rready),
        .slot_4_axi_rresp(SLOT_4_AXI_rresp),
        .slot_4_axi_rvalid(SLOT_4_AXI_rvalid),
        .slot_4_axi_wdata(SLOT_4_AXI_wdata),
        .slot_4_axi_wlast(SLOT_4_AXI_wlast),
        .slot_4_axi_wready(SLOT_4_AXI_wready),
        .slot_4_axi_wstrb(SLOT_4_AXI_wstrb),
        .slot_4_axi_wvalid(SLOT_4_AXI_wvalid),
        .slot_5_axi_araddr(SLOT_5_AXI_araddr),
        .slot_5_axi_arburst(SLOT_5_AXI_arburst),
        .slot_5_axi_arcache(SLOT_5_AXI_arcache),
        .slot_5_axi_arid(SLOT_5_AXI_arid),
        .slot_5_axi_arlen(SLOT_5_AXI_arlen),
        .slot_5_axi_arlock(SLOT_5_AXI_arlock),
        .slot_5_axi_arprot(SLOT_5_AXI_arprot),
        .slot_5_axi_arqos(SLOT_5_AXI_arqos),
        .slot_5_axi_arready(SLOT_5_AXI_arready),
        .slot_5_axi_arsize(SLOT_5_AXI_arsize),
        .slot_5_axi_aruser(SLOT_5_AXI_aruser),
        .slot_5_axi_arvalid(SLOT_5_AXI_arvalid),
        .slot_5_axi_awaddr(SLOT_5_AXI_awaddr),
        .slot_5_axi_awburst(SLOT_5_AXI_awburst),
        .slot_5_axi_awcache(SLOT_5_AXI_awcache),
        .slot_5_axi_awid(SLOT_5_AXI_awid),
        .slot_5_axi_awlen(SLOT_5_AXI_awlen),
        .slot_5_axi_awlock(SLOT_5_AXI_awlock),
        .slot_5_axi_awprot(SLOT_5_AXI_awprot),
        .slot_5_axi_awqos(SLOT_5_AXI_awqos),
        .slot_5_axi_awready(SLOT_5_AXI_awready),
        .slot_5_axi_awsize(SLOT_5_AXI_awsize),
        .slot_5_axi_awuser(SLOT_5_AXI_awuser),
        .slot_5_axi_awvalid(SLOT_5_AXI_awvalid),
        .slot_5_axi_bid(SLOT_5_AXI_bid),
        .slot_5_axi_bready(SLOT_5_AXI_bready),
        .slot_5_axi_bresp(SLOT_5_AXI_bresp),
        .slot_5_axi_bvalid(SLOT_5_AXI_bvalid),
        .slot_5_axi_rdata(SLOT_5_AXI_rdata),
        .slot_5_axi_rid(SLOT_5_AXI_rid),
        .slot_5_axi_rlast(SLOT_5_AXI_rlast),
        .slot_5_axi_rready(SLOT_5_AXI_rready),
        .slot_5_axi_rresp(SLOT_5_AXI_rresp),
        .slot_5_axi_rvalid(SLOT_5_AXI_rvalid),
        .slot_5_axi_wdata(SLOT_5_AXI_wdata),
        .slot_5_axi_wlast(SLOT_5_AXI_wlast),
        .slot_5_axi_wready(SLOT_5_AXI_wready),
        .slot_5_axi_wstrb(SLOT_5_AXI_wstrb),
        .slot_5_axi_wvalid(SLOT_5_AXI_wvalid),
        .slot_6_axis_tdata(SLOT_6_AXIS_tdata),
        .slot_6_axis_tkeep(SLOT_6_AXIS_tkeep),
        .slot_6_axis_tlast(SLOT_6_AXIS_tlast),
        .slot_6_axis_tready(SLOT_6_AXIS_tready),
        .slot_6_axis_tvalid(SLOT_6_AXIS_tvalid),
        .slot_7_axis_tdata(SLOT_7_AXIS_tdata),
        .slot_7_axis_tlast(SLOT_7_AXIS_tlast),
        .slot_7_axis_tready(SLOT_7_AXIS_tready),
        .slot_7_axis_tvalid(SLOT_7_AXIS_tvalid));
  bd_2743_0_ila_lib_0 ila_lib
       (.clk(clk),
        .probe0(net_slot_0_axi_ar_cnt),
        .probe1(net_slot_0_axi_araddr),
        .probe10(net_slot_0_axi_rresp),
        .probe100(net_slot_4_axi_w_ctrl),
        .probe101(net_slot_4_axi_b_ctrl),
        .probe102(net_slot_4_axi_ar_ctrl),
        .probe103(net_slot_4_axi_r_ctrl),
        .probe104(net_slot_5_axi_ar_cnt),
        .probe105(net_slot_5_axi_araddr),
        .probe106(net_slot_5_axi_arburst),
        .probe107(net_slot_5_axi_arcache),
        .probe108(net_slot_5_axi_arid),
        .probe109(net_slot_5_axi_arlen),
        .probe11(net_slot_0_axi_aw_ctrl),
        .probe110(net_slot_5_axi_arlock),
        .probe111(net_slot_5_axi_arprot),
        .probe112(net_slot_5_axi_arqos),
        .probe113(net_slot_5_axi_arsize),
        .probe114(net_slot_5_axi_aruser),
        .probe115(net_slot_5_axi_aw_cnt),
        .probe116(net_slot_5_axi_awaddr),
        .probe117(net_slot_5_axi_awburst),
        .probe118(net_slot_5_axi_awcache),
        .probe119(net_slot_5_axi_awid),
        .probe12(net_slot_0_axi_w_ctrl),
        .probe120(net_slot_5_axi_awlen),
        .probe121(net_slot_5_axi_awlock),
        .probe122(net_slot_5_axi_awprot),
        .probe123(net_slot_5_axi_awqos),
        .probe124(net_slot_5_axi_awsize),
        .probe125(net_slot_5_axi_awuser),
        .probe126(net_slot_5_axi_b_cnt),
        .probe127(net_slot_5_axi_bid),
        .probe128(net_slot_5_axi_bresp),
        .probe129(net_slot_5_axi_r_cnt),
        .probe13(net_slot_0_axi_b_ctrl),
        .probe130(net_slot_5_axi_rdata),
        .probe131(net_slot_5_axi_rid),
        .probe132(net_slot_5_axi_rresp),
        .probe133(net_slot_5_axi_wdata),
        .probe134(net_slot_5_axi_wstrb),
        .probe135(net_slot_5_axi_aw_ctrl),
        .probe136(net_slot_5_axi_w_ctrl),
        .probe137(net_slot_5_axi_b_ctrl),
        .probe138(net_slot_5_axi_ar_ctrl),
        .probe139(net_slot_5_axi_r_ctrl),
        .probe14(net_slot_0_axi_ar_ctrl),
        .probe140(net_slot_6_axis_tdata),
        .probe141(net_slot_6_axis_tkeep),
        .probe142(net_slot_6_axis_tvalid),
        .probe143(net_slot_6_axis_tready),
        .probe144(net_slot_6_axis_tlast),
        .probe145(net_slot_7_axis_tdata),
        .probe146(net_slot_7_axis_tvalid),
        .probe147(net_slot_7_axis_tready),
        .probe148(net_slot_7_axis_tlast),
        .probe15(net_slot_0_axi_r_ctrl),
        .probe16(net_slot_1_axis_tdata),
        .probe17(net_slot_1_axis_tvalid),
        .probe18(net_slot_1_axis_tready),
        .probe19(net_slot_1_axis_tlast),
        .probe2(net_slot_0_axi_arcache),
        .probe20(net_slot_2_axi_ar_cnt),
        .probe21(net_slot_2_axi_araddr),
        .probe22(net_slot_2_axi_arburst),
        .probe23(net_slot_2_axi_arcache),
        .probe24(net_slot_2_axi_arlen),
        .probe25(net_slot_2_axi_arlock),
        .probe26(net_slot_2_axi_arprot),
        .probe27(net_slot_2_axi_arqos),
        .probe28(net_slot_2_axi_arsize),
        .probe29(net_slot_2_axi_aw_cnt),
        .probe3(net_slot_0_axi_arlen),
        .probe30(net_slot_2_axi_awaddr),
        .probe31(net_slot_2_axi_awburst),
        .probe32(net_slot_2_axi_awcache),
        .probe33(net_slot_2_axi_awlen),
        .probe34(net_slot_2_axi_awlock),
        .probe35(net_slot_2_axi_awprot),
        .probe36(net_slot_2_axi_awqos),
        .probe37(net_slot_2_axi_awsize),
        .probe38(net_slot_2_axi_b_cnt),
        .probe39(net_slot_2_axi_bresp),
        .probe4(net_slot_0_axi_arprot),
        .probe40(net_slot_2_axi_r_cnt),
        .probe41(net_slot_2_axi_rdata),
        .probe42(net_slot_2_axi_rresp),
        .probe43(net_slot_2_axi_wdata),
        .probe44(net_slot_2_axi_wstrb),
        .probe45(net_slot_2_axi_aw_ctrl),
        .probe46(net_slot_2_axi_w_ctrl),
        .probe47(net_slot_2_axi_b_ctrl),
        .probe48(net_slot_2_axi_ar_ctrl),
        .probe49(net_slot_2_axi_r_ctrl),
        .probe5(net_slot_0_axi_arsize),
        .probe50(net_slot_3_axi_ar_cnt),
        .probe51(net_slot_3_axi_araddr),
        .probe52(net_slot_3_axi_arprot),
        .probe53(net_slot_3_axi_aw_cnt),
        .probe54(net_slot_3_axi_awaddr),
        .probe55(net_slot_3_axi_awprot),
        .probe56(net_slot_3_axi_b_cnt),
        .probe57(net_slot_3_axi_bresp),
        .probe58(net_slot_3_axi_r_cnt),
        .probe59(net_slot_3_axi_rdata),
        .probe6(net_slot_0_axi_aw_cnt),
        .probe60(net_slot_3_axi_rresp),
        .probe61(net_slot_3_axi_wdata),
        .probe62(net_slot_3_axi_wstrb),
        .probe63(net_slot_3_axi_aw_ctrl),
        .probe64(net_slot_3_axi_w_ctrl),
        .probe65(net_slot_3_axi_b_ctrl),
        .probe66(net_slot_3_axi_ar_ctrl),
        .probe67(net_slot_3_axi_r_ctrl),
        .probe68(net_slot_4_axi_ar_cnt),
        .probe69(net_slot_4_axi_araddr),
        .probe7(net_slot_0_axi_b_cnt),
        .probe70(net_slot_4_axi_arburst),
        .probe71(net_slot_4_axi_arcache),
        .probe72(net_slot_4_axi_arid),
        .probe73(net_slot_4_axi_arlen),
        .probe74(net_slot_4_axi_arlock),
        .probe75(net_slot_4_axi_arprot),
        .probe76(net_slot_4_axi_arqos),
        .probe77(net_slot_4_axi_arsize),
        .probe78(net_slot_4_axi_aruser),
        .probe79(net_slot_4_axi_aw_cnt),
        .probe8(net_slot_0_axi_r_cnt),
        .probe80(net_slot_4_axi_awaddr),
        .probe81(net_slot_4_axi_awburst),
        .probe82(net_slot_4_axi_awcache),
        .probe83(net_slot_4_axi_awid),
        .probe84(net_slot_4_axi_awlen),
        .probe85(net_slot_4_axi_awlock),
        .probe86(net_slot_4_axi_awprot),
        .probe87(net_slot_4_axi_awqos),
        .probe88(net_slot_4_axi_awsize),
        .probe89(net_slot_4_axi_awuser),
        .probe9(net_slot_0_axi_rdata),
        .probe90(net_slot_4_axi_b_cnt),
        .probe91(net_slot_4_axi_bid),
        .probe92(net_slot_4_axi_bresp),
        .probe93(net_slot_4_axi_r_cnt),
        .probe94(net_slot_4_axi_rdata),
        .probe95(net_slot_4_axi_rid),
        .probe96(net_slot_4_axi_rresp),
        .probe97(net_slot_4_axi_wdata),
        .probe98(net_slot_4_axi_wstrb),
        .probe99(net_slot_4_axi_aw_ctrl));
  bd_2743_0_slot_0_ar_0 slot_0_ar
       (.In0(net_slot_0_axi_arvalid),
        .In1(net_slot_0_axi_arready),
        .dout(net_slot_0_axi_ar_ctrl));
  bd_2743_0_slot_0_aw_0 slot_0_aw
       (.In0(net_slot_0_axi_awvalid),
        .In1(net_slot_0_axi_awready),
        .dout(net_slot_0_axi_aw_ctrl));
  bd_2743_0_slot_0_b_0 slot_0_b
       (.In0(net_slot_0_axi_bvalid),
        .In1(net_slot_0_axi_bready),
        .dout(net_slot_0_axi_b_ctrl));
  bd_2743_0_slot_0_r_0 slot_0_r
       (.In0(net_slot_0_axi_rvalid),
        .In1(net_slot_0_axi_rready),
        .In2(net_slot_0_axi_rlast),
        .dout(net_slot_0_axi_r_ctrl));
  bd_2743_0_slot_0_w_0 slot_0_w
       (.In0(net_slot_0_axi_wvalid),
        .In1(net_slot_0_axi_wready),
        .In2(net_slot_0_axi_wlast),
        .dout(net_slot_0_axi_w_ctrl));
  bd_2743_0_slot_2_ar_0 slot_2_ar
       (.In0(net_slot_2_axi_arvalid),
        .In1(net_slot_2_axi_arready),
        .dout(net_slot_2_axi_ar_ctrl));
  bd_2743_0_slot_2_aw_0 slot_2_aw
       (.In0(net_slot_2_axi_awvalid),
        .In1(net_slot_2_axi_awready),
        .dout(net_slot_2_axi_aw_ctrl));
  bd_2743_0_slot_2_b_0 slot_2_b
       (.In0(net_slot_2_axi_bvalid),
        .In1(net_slot_2_axi_bready),
        .dout(net_slot_2_axi_b_ctrl));
  bd_2743_0_slot_2_r_0 slot_2_r
       (.In0(net_slot_2_axi_rvalid),
        .In1(net_slot_2_axi_rready),
        .In2(net_slot_2_axi_rlast),
        .dout(net_slot_2_axi_r_ctrl));
  bd_2743_0_slot_2_w_0 slot_2_w
       (.In0(net_slot_2_axi_wvalid),
        .In1(net_slot_2_axi_wready),
        .In2(net_slot_2_axi_wlast),
        .dout(net_slot_2_axi_w_ctrl));
  bd_2743_0_slot_3_ar_0 slot_3_ar
       (.In0(net_slot_3_axi_arvalid),
        .In1(net_slot_3_axi_arready),
        .dout(net_slot_3_axi_ar_ctrl));
  bd_2743_0_slot_3_aw_0 slot_3_aw
       (.In0(net_slot_3_axi_awvalid),
        .In1(net_slot_3_axi_awready),
        .dout(net_slot_3_axi_aw_ctrl));
  bd_2743_0_slot_3_b_0 slot_3_b
       (.In0(net_slot_3_axi_bvalid),
        .In1(net_slot_3_axi_bready),
        .dout(net_slot_3_axi_b_ctrl));
  bd_2743_0_slot_3_r_0 slot_3_r
       (.In0(net_slot_3_axi_rvalid),
        .In1(net_slot_3_axi_rready),
        .dout(net_slot_3_axi_r_ctrl));
  bd_2743_0_slot_3_w_0 slot_3_w
       (.In0(net_slot_3_axi_wvalid),
        .In1(net_slot_3_axi_wready),
        .dout(net_slot_3_axi_w_ctrl));
  bd_2743_0_slot_4_ar_0 slot_4_ar
       (.In0(net_slot_4_axi_arvalid),
        .In1(net_slot_4_axi_arready),
        .dout(net_slot_4_axi_ar_ctrl));
  bd_2743_0_slot_4_aw_0 slot_4_aw
       (.In0(net_slot_4_axi_awvalid),
        .In1(net_slot_4_axi_awready),
        .dout(net_slot_4_axi_aw_ctrl));
  bd_2743_0_slot_4_b_0 slot_4_b
       (.In0(net_slot_4_axi_bvalid),
        .In1(net_slot_4_axi_bready),
        .dout(net_slot_4_axi_b_ctrl));
  bd_2743_0_slot_4_r_0 slot_4_r
       (.In0(net_slot_4_axi_rvalid),
        .In1(net_slot_4_axi_rready),
        .In2(net_slot_4_axi_rlast),
        .dout(net_slot_4_axi_r_ctrl));
  bd_2743_0_slot_4_w_0 slot_4_w
       (.In0(net_slot_4_axi_wvalid),
        .In1(net_slot_4_axi_wready),
        .In2(net_slot_4_axi_wlast),
        .dout(net_slot_4_axi_w_ctrl));
  bd_2743_0_slot_5_ar_0 slot_5_ar
       (.In0(net_slot_5_axi_arvalid),
        .In1(net_slot_5_axi_arready),
        .dout(net_slot_5_axi_ar_ctrl));
  bd_2743_0_slot_5_aw_0 slot_5_aw
       (.In0(net_slot_5_axi_awvalid),
        .In1(net_slot_5_axi_awready),
        .dout(net_slot_5_axi_aw_ctrl));
  bd_2743_0_slot_5_b_0 slot_5_b
       (.In0(net_slot_5_axi_bvalid),
        .In1(net_slot_5_axi_bready),
        .dout(net_slot_5_axi_b_ctrl));
  bd_2743_0_slot_5_r_0 slot_5_r
       (.In0(net_slot_5_axi_rvalid),
        .In1(net_slot_5_axi_rready),
        .In2(net_slot_5_axi_rlast),
        .dout(net_slot_5_axi_r_ctrl));
  bd_2743_0_slot_5_w_0 slot_5_w
       (.In0(net_slot_5_axi_wvalid),
        .In1(net_slot_5_axi_wready),
        .In2(net_slot_5_axi_wlast),
        .dout(net_slot_5_axi_w_ctrl));
endmodule
