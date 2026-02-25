// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Fri Feb 20 03:04:15 2026
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SystolicCore_wrapper_axi_fifo_mm_s_0_0_sim_netlist.v
// Design      : SystolicCore_wrapper_axi_fifo_mm_s_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SystolicCore_wrapper_axi_fifo_mm_s_0_0,axi_fifo_mm_s,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_fifo_mm_s,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (interrupt,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axi4_awid,
    s_axi4_awaddr,
    s_axi4_awlen,
    s_axi4_awsize,
    s_axi4_awburst,
    s_axi4_awlock,
    s_axi4_awcache,
    s_axi4_awprot,
    s_axi4_awvalid,
    s_axi4_awready,
    s_axi4_wdata,
    s_axi4_wstrb,
    s_axi4_wlast,
    s_axi4_wvalid,
    s_axi4_wready,
    s_axi4_bid,
    s_axi4_bresp,
    s_axi4_bvalid,
    s_axi4_bready,
    s_axi4_arid,
    s_axi4_araddr,
    s_axi4_arlen,
    s_axi4_arsize,
    s_axi4_arburst,
    s_axi4_arlock,
    s_axi4_arcache,
    s_axi4_arprot,
    s_axi4_arvalid,
    s_axi4_arready,
    s_axi4_rid,
    s_axi4_rdata,
    s_axi4_rresp,
    s_axi4_rlast,
    s_axi4_rvalid,
    s_axi4_rready,
    mm2s_prmry_reset_out_n,
    axi_str_txd_tvalid,
    axi_str_txd_tready,
    axi_str_txd_tlast,
    axi_str_txd_tdata,
    s2mm_prmry_reset_out_n,
    axi_str_rxd_tvalid,
    axi_str_rxd_tready,
    axi_str_rxd_tlast,
    axi_str_rxd_tdata);
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 interrupt_intf INTERRUPT" *) (* x_interface_mode = "master interrupt_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME interrupt_intf, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_s_axi CLK" *) (* x_interface_mode = "slave aclk_s_axi" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_s_axi, ASSOCIATED_BUSIF S_AXI:S_AXI_FULL:AXI_STR_TXD:AXI_STR_TXC:AXI_STR_RXD, ASSOCIATED_RESET s_axi_aresetn:mm2s_prmry_reset_out_n:mm2s_cntrl_reset_out_n:s2mm_prmry_reset_out_n, FREQ_HZ 299970032, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN SystolicCore_wrapper_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_s_axi RST" *) (* x_interface_mode = "slave rst_s_axi" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_s_axi, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_mode = "slave S_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 299970032, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN SystolicCore_wrapper_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL AWID" *) (* x_interface_mode = "slave S_AXI_FULL" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_FULL, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 299970032, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN SystolicCore_wrapper_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [0:0]s_axi4_awid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL AWADDR" *) input [31:0]s_axi4_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL AWLEN" *) input [7:0]s_axi4_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL AWSIZE" *) input [2:0]s_axi4_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL AWBURST" *) input [1:0]s_axi4_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL AWLOCK" *) input s_axi4_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL AWCACHE" *) input [3:0]s_axi4_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL AWPROT" *) input [2:0]s_axi4_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL AWVALID" *) input s_axi4_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL AWREADY" *) output s_axi4_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL WDATA" *) input [127:0]s_axi4_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL WSTRB" *) input [15:0]s_axi4_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL WLAST" *) input s_axi4_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL WVALID" *) input s_axi4_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL WREADY" *) output s_axi4_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL BID" *) output [0:0]s_axi4_bid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL BRESP" *) output [1:0]s_axi4_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL BVALID" *) output s_axi4_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL BREADY" *) input s_axi4_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARID" *) input [0:0]s_axi4_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARADDR" *) input [31:0]s_axi4_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARLEN" *) input [7:0]s_axi4_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARSIZE" *) input [2:0]s_axi4_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARBURST" *) input [1:0]s_axi4_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARLOCK" *) input s_axi4_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARCACHE" *) input [3:0]s_axi4_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARPROT" *) input [2:0]s_axi4_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARVALID" *) input s_axi4_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL ARREADY" *) output s_axi4_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL RID" *) output [0:0]s_axi4_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL RDATA" *) output [127:0]s_axi4_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL RRESP" *) output [1:0]s_axi4_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL RLAST" *) output s_axi4_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL RVALID" *) output s_axi4_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_FULL RREADY" *) input s_axi4_rready;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_axi_str_txd RST" *) (* x_interface_mode = "master rst_axi_str_txd" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_axi_str_txd, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output mm2s_prmry_reset_out_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_TXD TVALID" *) (* x_interface_mode = "master AXI_STR_TXD" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_STR_TXD, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 299970032, PHASE 0.0, CLK_DOMAIN SystolicCore_wrapper_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output axi_str_txd_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_TXD TREADY" *) input axi_str_txd_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_TXD TLAST" *) output axi_str_txd_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_TXD TDATA" *) output [127:0]axi_str_txd_tdata;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_axi_str_rxd RST" *) (* x_interface_mode = "master rst_axi_str_rxd" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_axi_str_rxd, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output s2mm_prmry_reset_out_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_RXD TVALID" *) (* x_interface_mode = "slave AXI_STR_RXD" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_STR_RXD, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 299970032, PHASE 0.0, CLK_DOMAIN SystolicCore_wrapper_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input axi_str_rxd_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_RXD TREADY" *) output axi_str_rxd_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_RXD TLAST" *) input axi_str_rxd_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_STR_RXD TDATA" *) input [127:0]axi_str_rxd_tdata;

  wire \<const0> ;
  wire [127:0]axi_str_rxd_tdata;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tready;
  wire axi_str_rxd_tvalid;
  wire [127:0]axi_str_txd_tdata;
  wire axi_str_txd_tlast;
  wire axi_str_txd_tready;
  wire axi_str_txd_tvalid;
  wire interrupt;
  wire mm2s_prmry_reset_out_n;
  wire s2mm_prmry_reset_out_n;
  wire [31:0]s_axi4_araddr;
  wire [0:0]s_axi4_arid;
  wire [7:0]s_axi4_arlen;
  wire s_axi4_arready;
  wire s_axi4_arvalid;
  wire [31:0]s_axi4_awaddr;
  wire [0:0]s_axi4_awid;
  wire [7:0]s_axi4_awlen;
  wire s_axi4_awready;
  wire s_axi4_awvalid;
  wire [0:0]s_axi4_bid;
  wire s_axi4_bready;
  wire s_axi4_bvalid;
  wire [127:0]s_axi4_rdata;
  wire [0:0]s_axi4_rid;
  wire s_axi4_rlast;
  wire s_axi4_rready;
  wire s_axi4_rvalid;
  wire [127:0]s_axi4_wdata;
  wire s_axi4_wready;
  wire [15:0]s_axi4_wstrb;
  wire s_axi4_wvalid;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire NLW_U0_axi_str_txc_tlast_UNCONNECTED;
  wire NLW_U0_axi_str_txc_tvalid_UNCONNECTED;
  wire NLW_U0_mm2s_cntrl_reset_out_n_UNCONNECTED;
  wire [127:0]NLW_U0_axi_str_txc_tdata_UNCONNECTED;
  wire [3:0]NLW_U0_axi_str_txc_tdest_UNCONNECTED;
  wire [3:0]NLW_U0_axi_str_txc_tid_UNCONNECTED;
  wire [15:0]NLW_U0_axi_str_txc_tkeep_UNCONNECTED;
  wire [15:0]NLW_U0_axi_str_txc_tstrb_UNCONNECTED;
  wire [15:0]NLW_U0_axi_str_txc_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_axi_str_txd_tdest_UNCONNECTED;
  wire [3:0]NLW_U0_axi_str_txd_tid_UNCONNECTED;
  wire [15:0]NLW_U0_axi_str_txd_tkeep_UNCONNECTED;
  wire [15:0]NLW_U0_axi_str_txd_tstrb_UNCONNECTED;
  wire [15:0]NLW_U0_axi_str_txd_tuser_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi4_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi4_rresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign s_axi4_bresp[1] = \<const0> ;
  assign s_axi4_bresp[0] = \<const0> ;
  assign s_axi4_rresp[1] = \<const0> ;
  assign s_axi4_rresp[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AXI4_BASEADDR = "32'b10100000000000010000000000000000" *) 
  (* C_AXI4_HIGHADDR = "32'b10100000000000011111111111111111" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "16" *) 
  (* C_BASEADDR = "32'b10100000000000000000000000000000" *) 
  (* C_DATA_INTERFACE_TYPE = "1" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HIGHADDR = "32'b10100000000000001111111111111111" *) 
  (* C_RX_CASCADE_HEIGHT = "0" *) 
  (* C_RX_ENABLE_ECC = "0" *) 
  (* C_RX_FIFO_DEPTH = "512" *) 
  (* C_RX_FIFO_PE_THRESHOLD = "5" *) 
  (* C_RX_FIFO_PF_THRESHOLD = "507" *) 
  (* C_RX_HAS_ECC_ERR_INJECT = "0" *) 
  (* C_S_AXI4_DATA_WIDTH = "128" *) 
  (* C_S_AXI_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "1" *) 
  (* C_TX_CASCADE_HEIGHT = "0" *) 
  (* C_TX_ENABLE_ECC = "0" *) 
  (* C_TX_FIFO_DEPTH = "512" *) 
  (* C_TX_FIFO_PE_THRESHOLD = "5" *) 
  (* C_TX_FIFO_PF_THRESHOLD = "507" *) 
  (* C_TX_HAS_ECC_ERR_INJECT = "0" *) 
  (* C_USE_RX_CUT_THROUGH = "1" *) 
  (* C_USE_RX_DATA = "1" *) 
  (* C_USE_TX_CTRL = "0" *) 
  (* C_USE_TX_CUT_THROUGH = "1" *) 
  (* C_USE_TX_DATA = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_fifo_mm_s U0
       (.axi_str_rxd_tdata(axi_str_rxd_tdata),
        .axi_str_rxd_tdest({1'b0,1'b0,1'b0,1'b0}),
        .axi_str_rxd_tid({1'b0,1'b0,1'b0,1'b0}),
        .axi_str_rxd_tkeep({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tready(axi_str_rxd_tready),
        .axi_str_rxd_tstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_str_rxd_tuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .axi_str_txc_tdata(NLW_U0_axi_str_txc_tdata_UNCONNECTED[127:0]),
        .axi_str_txc_tdest(NLW_U0_axi_str_txc_tdest_UNCONNECTED[3:0]),
        .axi_str_txc_tid(NLW_U0_axi_str_txc_tid_UNCONNECTED[3:0]),
        .axi_str_txc_tkeep(NLW_U0_axi_str_txc_tkeep_UNCONNECTED[15:0]),
        .axi_str_txc_tlast(NLW_U0_axi_str_txc_tlast_UNCONNECTED),
        .axi_str_txc_tready(1'b0),
        .axi_str_txc_tstrb(NLW_U0_axi_str_txc_tstrb_UNCONNECTED[15:0]),
        .axi_str_txc_tuser(NLW_U0_axi_str_txc_tuser_UNCONNECTED[15:0]),
        .axi_str_txc_tvalid(NLW_U0_axi_str_txc_tvalid_UNCONNECTED),
        .axi_str_txd_tdata(axi_str_txd_tdata),
        .axi_str_txd_tdest(NLW_U0_axi_str_txd_tdest_UNCONNECTED[3:0]),
        .axi_str_txd_tid(NLW_U0_axi_str_txd_tid_UNCONNECTED[3:0]),
        .axi_str_txd_tkeep(NLW_U0_axi_str_txd_tkeep_UNCONNECTED[15:0]),
        .axi_str_txd_tlast(axi_str_txd_tlast),
        .axi_str_txd_tready(axi_str_txd_tready),
        .axi_str_txd_tstrb(NLW_U0_axi_str_txd_tstrb_UNCONNECTED[15:0]),
        .axi_str_txd_tuser(NLW_U0_axi_str_txd_tuser_UNCONNECTED[15:0]),
        .axi_str_txd_tvalid(axi_str_txd_tvalid),
        .interrupt(interrupt),
        .mm2s_cntrl_reset_out_n(NLW_U0_mm2s_cntrl_reset_out_n_UNCONNECTED),
        .mm2s_prmry_reset_out_n(mm2s_prmry_reset_out_n),
        .s2mm_prmry_reset_out_n(s2mm_prmry_reset_out_n),
        .s_axi4_araddr(s_axi4_araddr),
        .s_axi4_arburst({1'b0,1'b0}),
        .s_axi4_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_arid(s_axi4_arid),
        .s_axi4_arlen(s_axi4_arlen),
        .s_axi4_arlock(1'b0),
        .s_axi4_arprot({1'b0,1'b0,1'b0}),
        .s_axi4_arready(s_axi4_arready),
        .s_axi4_arsize({1'b0,1'b0,1'b0}),
        .s_axi4_arvalid(s_axi4_arvalid),
        .s_axi4_awaddr(s_axi4_awaddr),
        .s_axi4_awburst({1'b0,1'b0}),
        .s_axi4_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi4_awid(s_axi4_awid),
        .s_axi4_awlen(s_axi4_awlen),
        .s_axi4_awlock(1'b0),
        .s_axi4_awprot({1'b0,1'b0,1'b0}),
        .s_axi4_awready(s_axi4_awready),
        .s_axi4_awsize({1'b0,1'b0,1'b0}),
        .s_axi4_awvalid(s_axi4_awvalid),
        .s_axi4_bid(s_axi4_bid),
        .s_axi4_bready(s_axi4_bready),
        .s_axi4_bresp(NLW_U0_s_axi4_bresp_UNCONNECTED[1:0]),
        .s_axi4_bvalid(s_axi4_bvalid),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi4_rid(s_axi4_rid),
        .s_axi4_rlast(s_axi4_rlast),
        .s_axi4_rready(s_axi4_rready),
        .s_axi4_rresp(NLW_U0_s_axi4_rresp_UNCONNECTED[1:0]),
        .s_axi4_rvalid(s_axi4_rvalid),
        .s_axi4_wdata(s_axi4_wdata),
        .s_axi4_wlast(1'b0),
        .s_axi4_wready(s_axi4_wready),
        .s_axi4_wstrb(s_axi4_wstrb),
        .s_axi4_wvalid(s_axi4_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_araddr[6:2],1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_awaddr[6:2],1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
   (sig_Bus2IP_RdCE,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    \s_axi_wdata[29] ,
    axi_str_txd_tready_0,
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ,
    \sig_register_array_reg[0][6] ,
    \s_axi_wdata[24] ,
    \s_axi_wdata[23] ,
    D,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_0 ,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_1 ,
    bus2ip_rnw_i_reg,
    sig_txd_sb_wr_en,
    Bus_RNW_reg_reg_2,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ,
    \gen_fwft.empty_fwft_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ,
    cs_ce_clr,
    Q,
    s_axi_aclk,
    s_axi_wdata,
    \sig_register_array_reg[0][2] ,
    \sig_register_array_reg[0][2]_0 ,
    axi_str_txd_tready,
    \sig_register_array_reg[0][4] ,
    \sig_register_array_reg[0][6]_0 ,
    Axi_Str_TxD_AReset,
    \sig_register_array_reg[0][7] ,
    Axi_Str_RxD_AReset,
    \sig_register_array_reg[0][8] ,
    \sig_ip2bus_data_reg[24] ,
    \sig_ip2bus_data_reg[24]_0 ,
    \sig_ip2bus_data_reg[24]_1 ,
    \sig_ip2bus_data_reg[23] ,
    \sig_ip2bus_data_reg[23]_0 ,
    \sig_ip2bus_data_reg[22] ,
    \sig_ip2bus_data_reg[22]_0 ,
    \sig_ip2bus_data_reg[0] ,
    dout,
    \sig_ip2bus_data_reg[16] ,
    empty,
    sig_ip2bus_data1,
    wr_data_count_axis,
    sig_str_rst_reg,
    sig_rx_channel_reset_reg,
    IPIC_STATE,
    s_axi4_rready,
    out,
    axi_str_txd_tlast,
    axi_str_txd_tvalid,
    sig_Bus2IP_RNW,
    \sig_register_array_reg[0][6]_1 ,
    \sig_register_array_reg[0][6]_2 ,
    sig_str_rst_reg_0,
    sig_rd_rlen_reg,
    \sig_ip2bus_data_reg[22]_1 ,
    \sig_ip2bus_data_reg[16]_0 ,
    \sig_ip2bus_data_reg[15] ,
    \sig_ip2bus_data_reg[14] ,
    \sig_ip2bus_data_reg[13] ,
    \sig_ip2bus_data_reg[12] ,
    \sig_ip2bus_data_reg[11] ,
    \sig_ip2bus_data_reg[10] ,
    \sig_ip2bus_data_reg[9] ,
    s_axi_aresetn,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 );
  output [0:0]sig_Bus2IP_RdCE;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output \s_axi_wdata[29] ;
  output axi_str_txd_tready_0;
  output \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ;
  output \sig_register_array_reg[0][6] ;
  output \s_axi_wdata[24] ;
  output \s_axi_wdata[23] ;
  output [12:0]D;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output Bus_RNW_reg_reg_0;
  output Bus_RNW_reg_reg_1;
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  output [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  output \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_0 ;
  output \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_1 ;
  output bus2ip_rnw_i_reg;
  output sig_txd_sb_wr_en;
  output [16:0]Bus_RNW_reg_reg_2;
  output \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ;
  output \gen_fwft.empty_fwft_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 ;
  output [0:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  input cs_ce_clr;
  input Q;
  input s_axi_aclk;
  input [20:0]s_axi_wdata;
  input \sig_register_array_reg[0][2] ;
  input \sig_register_array_reg[0][2]_0 ;
  input axi_str_txd_tready;
  input \sig_register_array_reg[0][4] ;
  input \sig_register_array_reg[0][6]_0 ;
  input Axi_Str_TxD_AReset;
  input \sig_register_array_reg[0][7] ;
  input Axi_Str_RxD_AReset;
  input \sig_register_array_reg[0][8] ;
  input \sig_ip2bus_data_reg[24] ;
  input \sig_ip2bus_data_reg[24]_0 ;
  input \sig_ip2bus_data_reg[24]_1 ;
  input \sig_ip2bus_data_reg[23] ;
  input \sig_ip2bus_data_reg[23]_0 ;
  input \sig_ip2bus_data_reg[22] ;
  input \sig_ip2bus_data_reg[22]_0 ;
  input [8:0]\sig_ip2bus_data_reg[0] ;
  input [7:0]dout;
  input \sig_ip2bus_data_reg[16] ;
  input empty;
  input sig_ip2bus_data1;
  input [6:0]wr_data_count_axis;
  input sig_str_rst_reg;
  input sig_rx_channel_reset_reg;
  input IPIC_STATE;
  input s_axi4_rready;
  input out;
  input axi_str_txd_tlast;
  input axi_str_txd_tvalid;
  input sig_Bus2IP_RNW;
  input \sig_register_array_reg[0][6]_1 ;
  input \sig_register_array_reg[0][6]_2 ;
  input sig_str_rst_reg_0;
  input sig_rd_rlen_reg;
  input [2:0]\sig_ip2bus_data_reg[22]_1 ;
  input \sig_ip2bus_data_reg[16]_0 ;
  input \sig_ip2bus_data_reg[15] ;
  input \sig_ip2bus_data_reg[14] ;
  input \sig_ip2bus_data_reg[13] ;
  input \sig_ip2bus_data_reg[12] ;
  input \sig_ip2bus_data_reg[11] ;
  input \sig_ip2bus_data_reg[10] ;
  input \sig_ip2bus_data_reg[9] ;
  input s_axi_aresetn;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ;
  input [4:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;

  wire Axi_Str_RxD_AReset;
  wire Axi_Str_TxD_AReset;
  wire Bus_RNW_reg;
  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire [16:0]Bus_RNW_reg_reg_2;
  wire [14:14]\COMP_IPIC2AXI_S/sig_register_array[0]0_out ;
  wire [12:0]D;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ;
  wire \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ;
  wire \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ;
  wire [4:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ;
  wire IPIC_STATE;
  wire \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire [0:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ;
  wire Q;
  wire axi_str_txd_tlast;
  wire axi_str_txd_tready;
  wire axi_str_txd_tready_0;
  wire axi_str_txd_tvalid;
  wire bus2ip_rnw_i_reg;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_10;
  wire ce_expnd_i_11;
  wire ce_expnd_i_12;
  wire ce_expnd_i_13;
  wire ce_expnd_i_14;
  wire ce_expnd_i_15;
  wire ce_expnd_i_16;
  wire ce_expnd_i_17;
  wire ce_expnd_i_18;
  wire ce_expnd_i_19;
  wire ce_expnd_i_2;
  wire ce_expnd_i_20;
  wire ce_expnd_i_3;
  wire ce_expnd_i_4;
  wire ce_expnd_i_5;
  wire ce_expnd_i_6;
  wire ce_expnd_i_7;
  wire ce_expnd_i_8;
  wire ce_expnd_i_9;
  wire cs_ce_clr;
  wire [7:0]dout;
  wire empty;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire out;
  wire s_axi4_rready;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [20:0]s_axi_wdata;
  wire \s_axi_wdata[23] ;
  wire \s_axi_wdata[24] ;
  wire \s_axi_wdata[29] ;
  wire sig_Bus2IP_RNW;
  wire [0:0]sig_Bus2IP_RdCE;
  wire sig_ip2bus_data1;
  wire \sig_ip2bus_data[0]_i_3_n_0 ;
  wire \sig_ip2bus_data[10]_i_2_n_0 ;
  wire \sig_ip2bus_data[11]_i_2_n_0 ;
  wire \sig_ip2bus_data[12]_i_2_n_0 ;
  wire \sig_ip2bus_data[13]_i_2_n_0 ;
  wire \sig_ip2bus_data[14]_i_2_n_0 ;
  wire \sig_ip2bus_data[15]_i_2_n_0 ;
  wire \sig_ip2bus_data[16]_i_2_n_0 ;
  wire \sig_ip2bus_data[22]_i_2_n_0 ;
  wire \sig_ip2bus_data[22]_i_5_n_0 ;
  wire \sig_ip2bus_data[22]_i_6_n_0 ;
  wire \sig_ip2bus_data[22]_i_7_n_0 ;
  wire \sig_ip2bus_data[22]_i_8_n_0 ;
  wire \sig_ip2bus_data[23]_i_2_n_0 ;
  wire \sig_ip2bus_data[23]_i_5_n_0 ;
  wire \sig_ip2bus_data[23]_i_6_n_0 ;
  wire \sig_ip2bus_data[24]_i_2_n_0 ;
  wire \sig_ip2bus_data[24]_i_5_n_0 ;
  wire \sig_ip2bus_data[24]_i_6_n_0 ;
  wire \sig_ip2bus_data[9]_i_2_n_0 ;
  wire [8:0]\sig_ip2bus_data_reg[0] ;
  wire \sig_ip2bus_data_reg[10] ;
  wire \sig_ip2bus_data_reg[11] ;
  wire \sig_ip2bus_data_reg[12] ;
  wire \sig_ip2bus_data_reg[13] ;
  wire \sig_ip2bus_data_reg[14] ;
  wire \sig_ip2bus_data_reg[15] ;
  wire \sig_ip2bus_data_reg[16] ;
  wire \sig_ip2bus_data_reg[16]_0 ;
  wire \sig_ip2bus_data_reg[22] ;
  wire \sig_ip2bus_data_reg[22]_0 ;
  wire [2:0]\sig_ip2bus_data_reg[22]_1 ;
  wire \sig_ip2bus_data_reg[23] ;
  wire \sig_ip2bus_data_reg[23]_0 ;
  wire \sig_ip2bus_data_reg[24] ;
  wire \sig_ip2bus_data_reg[24]_0 ;
  wire \sig_ip2bus_data_reg[24]_1 ;
  wire \sig_ip2bus_data_reg[9] ;
  wire sig_rd_rlen_i_4_n_0;
  wire sig_rd_rlen_i_5_n_0;
  wire sig_rd_rlen_i_6_n_0;
  wire sig_rd_rlen_i_7_n_0;
  wire sig_rd_rlen_i_8_n_0;
  wire sig_rd_rlen_reg;
  wire \sig_register_array[0][2]_i_3_n_0 ;
  wire \sig_register_array[0][2]_i_4_n_0 ;
  wire \sig_register_array[0][2]_i_6_n_0 ;
  wire \sig_register_array[0][2]_i_7_n_0 ;
  wire \sig_register_array[0][2]_i_8_n_0 ;
  wire \sig_register_array[0][4]_i_2_n_0 ;
  wire \sig_register_array[0][4]_i_3_n_0 ;
  wire \sig_register_array[0][4]_i_4_n_0 ;
  wire \sig_register_array[0][6]_i_2_n_0 ;
  wire \sig_register_array[0][6]_i_3_n_0 ;
  wire \sig_register_array[0][6]_i_4_n_0 ;
  wire \sig_register_array[0][6]_i_5_n_0 ;
  wire \sig_register_array[0][6]_i_6_n_0 ;
  wire \sig_register_array[1][0]_i_10_n_0 ;
  wire \sig_register_array[1][0]_i_11_n_0 ;
  wire \sig_register_array[1][0]_i_3_n_0 ;
  wire \sig_register_array[1][0]_i_4_n_0 ;
  wire \sig_register_array[1][0]_i_5_n_0 ;
  wire \sig_register_array[1][0]_i_6_n_0 ;
  wire \sig_register_array[1][0]_i_7_n_0 ;
  wire \sig_register_array[1][0]_i_8_n_0 ;
  wire \sig_register_array[1][0]_i_9_n_0 ;
  wire \sig_register_array_reg[0][2] ;
  wire \sig_register_array_reg[0][2]_0 ;
  wire \sig_register_array_reg[0][4] ;
  wire \sig_register_array_reg[0][6] ;
  wire \sig_register_array_reg[0][6]_0 ;
  wire \sig_register_array_reg[0][6]_1 ;
  wire \sig_register_array_reg[0][6]_2 ;
  wire \sig_register_array_reg[0][7] ;
  wire \sig_register_array_reg[0][8] ;
  wire sig_rx_channel_reset_i_2_n_0;
  wire sig_rx_channel_reset_i_3_n_0;
  wire sig_rx_channel_reset_reg;
  wire sig_str_rst_i_2_n_0;
  wire sig_str_rst_i_3_n_0;
  wire sig_str_rst_reg;
  wire sig_str_rst_reg_0;
  wire sig_txd_sb_wr_en;
  wire sig_txd_sb_wr_en_i_2_n_0;
  wire [6:0]wr_data_count_axis;

  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(sig_Bus2IP_RNW),
        .I1(Q),
        .I2(Bus_RNW_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_20),
        .Q(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_10),
        .Q(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_9),
        .Q(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_8),
        .Q(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_7),
        .Q(\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_6),
        .Q(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_5),
        .Q(\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_4),
        .Q(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_19),
        .Q(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_18),
        .Q(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .R(cs_ce_clr));
  LUT5 #(
    .INIT(32'h01000000)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 [1]),
        .O(ce_expnd_i_17));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_17),
        .Q(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_16),
        .Q(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_15),
        .Q(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_14),
        .Q(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_13),
        .Q(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_12),
        .Q(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .R(cs_ce_clr));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_11),
        .Q(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h08)) 
    IP2Bus_RdAck_i_2
       (.I0(sig_Bus2IP_RNW),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I2(IPIC_STATE),
        .O(bus2ip_rnw_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    IP2Bus_WrAck_i_1
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(IPIC_STATE),
        .I2(s_axi_aresetn),
        .O(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f \MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_20(ce_expnd_i_20));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized9 \MEM_DECODE_GEN[0].PER_CE_GEN[10].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_10(ce_expnd_i_10));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized10 \MEM_DECODE_GEN[0].PER_CE_GEN[11].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_9(ce_expnd_i_9));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized11 \MEM_DECODE_GEN[0].PER_CE_GEN[12].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_8(ce_expnd_i_8));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized12 \MEM_DECODE_GEN[0].PER_CE_GEN[13].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_7(ce_expnd_i_7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized13 \MEM_DECODE_GEN[0].PER_CE_GEN[14].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_6(ce_expnd_i_6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized14 \MEM_DECODE_GEN[0].PER_CE_GEN[15].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_5(ce_expnd_i_5));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized15 \MEM_DECODE_GEN[0].PER_CE_GEN[16].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_4(ce_expnd_i_4));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized16 \MEM_DECODE_GEN[0].PER_CE_GEN[17].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_3(ce_expnd_i_3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized17 \MEM_DECODE_GEN[0].PER_CE_GEN[18].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_2(ce_expnd_i_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized18 \MEM_DECODE_GEN[0].PER_CE_GEN[19].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_1(ce_expnd_i_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized0 \MEM_DECODE_GEN[0].PER_CE_GEN[1].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_19(ce_expnd_i_19));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized19 \MEM_DECODE_GEN[0].PER_CE_GEN[20].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_0(ce_expnd_i_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1 \MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_18(ce_expnd_i_18));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized3 \MEM_DECODE_GEN[0].PER_CE_GEN[4].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_16(ce_expnd_i_16));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized4 \MEM_DECODE_GEN[0].PER_CE_GEN[5].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_15(ce_expnd_i_15));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized5 \MEM_DECODE_GEN[0].PER_CE_GEN[6].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_14(ce_expnd_i_14));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized6 \MEM_DECODE_GEN[0].PER_CE_GEN[7].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_13(ce_expnd_i_13));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized7 \MEM_DECODE_GEN[0].PER_CE_GEN[8].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_12(ce_expnd_i_12));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized8 \MEM_DECODE_GEN[0].PER_CE_GEN[9].MULTIPLE_CES_THIS_CS_GEN.CE_I 
       (.\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] (\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ),
        .ce_expnd_i_11(ce_expnd_i_11));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I1(Q),
        .I2(s_axi_aresetn),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 ),
        .O(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0 ),
        .Q(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    p_21_out
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .O(sig_Bus2IP_RdCE));
  LUT3 #(
    .INIT(8'hF8)) 
    \sig_ip2bus_data[0]_i_1 
       (.I0(\sig_ip2bus_data_reg[0] [8]),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I2(\sig_ip2bus_data[0]_i_3_n_0 ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \sig_ip2bus_data[0]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \sig_ip2bus_data[0]_i_3 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I2(sig_rd_rlen_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I5(empty),
        .O(\sig_ip2bus_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \sig_ip2bus_data[10]_i_1 
       (.I0(\sig_ip2bus_data[10]_i_2_n_0 ),
        .I1(\sig_ip2bus_data_reg[0] [6]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(dout[6]),
        .I4(Bus_RNW_reg_reg_0),
        .I5(\sig_ip2bus_data_reg[16] ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \sig_ip2bus_data[10]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\sig_ip2bus_data_reg[10] ),
        .O(\sig_ip2bus_data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \sig_ip2bus_data[11]_i_1 
       (.I0(\sig_ip2bus_data[11]_i_2_n_0 ),
        .I1(\sig_ip2bus_data_reg[0] [5]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(dout[5]),
        .I4(Bus_RNW_reg_reg_0),
        .I5(\sig_ip2bus_data_reg[16] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \sig_ip2bus_data[11]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\sig_ip2bus_data_reg[11] ),
        .O(\sig_ip2bus_data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \sig_ip2bus_data[12]_i_1 
       (.I0(\sig_ip2bus_data[12]_i_2_n_0 ),
        .I1(\sig_ip2bus_data_reg[0] [4]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(dout[4]),
        .I4(Bus_RNW_reg_reg_0),
        .I5(\sig_ip2bus_data_reg[16] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \sig_ip2bus_data[12]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\sig_ip2bus_data_reg[12] ),
        .O(\sig_ip2bus_data[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \sig_ip2bus_data[13]_i_1 
       (.I0(\sig_ip2bus_data[13]_i_2_n_0 ),
        .I1(\sig_ip2bus_data_reg[0] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(dout[3]),
        .I4(Bus_RNW_reg_reg_0),
        .I5(\sig_ip2bus_data_reg[16] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \sig_ip2bus_data[13]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\sig_ip2bus_data_reg[13] ),
        .O(\sig_ip2bus_data[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \sig_ip2bus_data[14]_i_1 
       (.I0(\sig_ip2bus_data[14]_i_2_n_0 ),
        .I1(\sig_ip2bus_data_reg[0] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(dout[2]),
        .I4(Bus_RNW_reg_reg_0),
        .I5(\sig_ip2bus_data_reg[16] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \sig_ip2bus_data[14]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\sig_ip2bus_data_reg[14] ),
        .O(\sig_ip2bus_data[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \sig_ip2bus_data[15]_i_1 
       (.I0(\sig_ip2bus_data[15]_i_2_n_0 ),
        .I1(\sig_ip2bus_data_reg[0] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(dout[1]),
        .I4(Bus_RNW_reg_reg_0),
        .I5(\sig_ip2bus_data_reg[16] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \sig_ip2bus_data[15]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\sig_ip2bus_data_reg[15] ),
        .O(\sig_ip2bus_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \sig_ip2bus_data[16]_i_1 
       (.I0(\sig_ip2bus_data[16]_i_2_n_0 ),
        .I1(\sig_ip2bus_data_reg[0] [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(dout[0]),
        .I4(Bus_RNW_reg_reg_0),
        .I5(\sig_ip2bus_data_reg[16] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \sig_ip2bus_data[16]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\sig_ip2bus_data_reg[16]_0 ),
        .O(\sig_ip2bus_data[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \sig_ip2bus_data[1]_i_4 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I2(sig_rd_rlen_reg),
        .O(Bus_RNW_reg_reg_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \sig_ip2bus_data[22]_i_1 
       (.I0(\sig_ip2bus_data[22]_i_2_n_0 ),
        .I1(\sig_ip2bus_data_reg[22] ),
        .I2(\sig_ip2bus_data_reg[22]_0 ),
        .I3(\sig_ip2bus_data_reg[24]_1 ),
        .I4(\sig_ip2bus_data[22]_i_5_n_0 ),
        .I5(\sig_ip2bus_data[22]_i_6_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sig_ip2bus_data[22]_i_2 
       (.I0(Bus_RNW_reg_reg_1),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I3(empty),
        .I4(sig_ip2bus_data1),
        .I5(wr_data_count_axis[3]),
        .O(\sig_ip2bus_data[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \sig_ip2bus_data[22]_i_5 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I2(empty),
        .I3(\sig_ip2bus_data[22]_i_7_n_0 ),
        .I4(\sig_ip2bus_data[22]_i_8_n_0 ),
        .I5(wr_data_count_axis[6]),
        .O(\sig_ip2bus_data[22]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sig_ip2bus_data[22]_i_6 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ),
        .I1(\sig_ip2bus_data_reg[22]_1 [2]),
        .O(\sig_ip2bus_data[22]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0F1F)) 
    \sig_ip2bus_data[22]_i_7 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .O(\sig_ip2bus_data[22]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \sig_ip2bus_data[22]_i_8 
       (.I0(sig_rd_rlen_i_4_n_0),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\sig_ip2bus_data[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \sig_ip2bus_data[23]_i_1 
       (.I0(\sig_ip2bus_data[23]_i_2_n_0 ),
        .I1(\sig_ip2bus_data_reg[23] ),
        .I2(\sig_ip2bus_data_reg[23]_0 ),
        .I3(\sig_ip2bus_data_reg[24]_1 ),
        .I4(\sig_ip2bus_data[23]_i_5_n_0 ),
        .I5(\sig_ip2bus_data[23]_i_6_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sig_ip2bus_data[23]_i_2 
       (.I0(Bus_RNW_reg_reg_1),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I3(empty),
        .I4(sig_ip2bus_data1),
        .I5(wr_data_count_axis[2]),
        .O(\sig_ip2bus_data[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \sig_ip2bus_data[23]_i_5 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I2(empty),
        .I3(\sig_ip2bus_data[22]_i_7_n_0 ),
        .I4(\sig_ip2bus_data[22]_i_8_n_0 ),
        .I5(wr_data_count_axis[5]),
        .O(\sig_ip2bus_data[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sig_ip2bus_data[23]_i_6 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ),
        .I1(\sig_ip2bus_data_reg[22]_1 [1]),
        .O(\sig_ip2bus_data[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \sig_ip2bus_data[24]_i_1 
       (.I0(\sig_ip2bus_data[24]_i_2_n_0 ),
        .I1(\sig_ip2bus_data_reg[24] ),
        .I2(\sig_ip2bus_data_reg[24]_0 ),
        .I3(\sig_ip2bus_data_reg[24]_1 ),
        .I4(\sig_ip2bus_data[24]_i_5_n_0 ),
        .I5(\sig_ip2bus_data[24]_i_6_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sig_ip2bus_data[24]_i_2 
       (.I0(Bus_RNW_reg_reg_1),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I3(empty),
        .I4(sig_ip2bus_data1),
        .I5(wr_data_count_axis[1]),
        .O(\sig_ip2bus_data[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \sig_ip2bus_data[24]_i_5 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I2(empty),
        .I3(\sig_ip2bus_data[22]_i_7_n_0 ),
        .I4(\sig_ip2bus_data[22]_i_8_n_0 ),
        .I5(wr_data_count_axis[4]),
        .O(\sig_ip2bus_data[24]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sig_ip2bus_data[24]_i_6 
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ),
        .I1(\sig_ip2bus_data_reg[22]_1 [0]),
        .O(\sig_ip2bus_data[24]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \sig_ip2bus_data[25]_i_2 
       (.I0(sig_rd_rlen_i_4_n_0),
        .I1(\sig_ip2bus_data[22]_i_7_n_0 ),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \sig_ip2bus_data[25]_i_3 
       (.I0(\sig_ip2bus_data[22]_i_8_n_0 ),
        .I1(\sig_ip2bus_data[22]_i_7_n_0 ),
        .I2(empty),
        .I3(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .O(\gen_fwft.empty_fwft_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \sig_ip2bus_data[2]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sig_ip2bus_data[31]_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg ),
        .I1(wr_data_count_axis[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \sig_ip2bus_data[9]_i_1 
       (.I0(\sig_ip2bus_data[9]_i_2_n_0 ),
        .I1(\sig_ip2bus_data_reg[0] [7]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .I3(dout[7]),
        .I4(Bus_RNW_reg_reg_0),
        .I5(\sig_ip2bus_data_reg[16] ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \sig_ip2bus_data[9]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I5(\sig_ip2bus_data_reg[9] ),
        .O(\sig_ip2bus_data[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    sig_rd_rlen_i_1
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I2(sig_rd_rlen_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .I4(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ),
        .I5(empty),
        .O(Bus_RNW_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h37)) 
    sig_rd_rlen_i_2
       (.I0(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0C4C)) 
    sig_rd_rlen_i_3
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I1(sig_rd_rlen_i_4_n_0),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .O(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    sig_rd_rlen_i_4
       (.I0(sig_rd_rlen_i_5_n_0),
        .I1(sig_rd_rlen_i_6_n_0),
        .I2(sig_rd_rlen_i_7_n_0),
        .I3(sig_rd_rlen_i_8_n_0),
        .O(sig_rd_rlen_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h00FF01FF)) 
    sig_rd_rlen_i_5
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .O(sig_rd_rlen_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h00FF01FF)) 
    sig_rd_rlen_i_6
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg ),
        .O(sig_rd_rlen_i_6_n_0));
  LUT5 #(
    .INIT(32'h00FF01FF)) 
    sig_rd_rlen_i_7
       (.I0(\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg ),
        .O(sig_rd_rlen_i_7_n_0));
  LUT5 #(
    .INIT(32'h00FF01FF)) 
    sig_rd_rlen_i_8
       (.I0(\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg ),
        .O(sig_rd_rlen_i_8_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAEFAAAAAA20)) 
    \sig_register_array[0][2]_i_1 
       (.I0(\COMP_IPIC2AXI_S/sig_register_array[0]0_out ),
        .I1(\sig_register_array[0][2]_i_3_n_0 ),
        .I2(s_axi_wdata[18]),
        .I3(\sig_register_array[0][2]_i_4_n_0 ),
        .I4(\sig_register_array_reg[0][2] ),
        .I5(\sig_register_array_reg[0][2]_0 ),
        .O(\s_axi_wdata[29] ));
  LUT6 #(
    .INIT(64'h80C0808080C080C0)) 
    \sig_register_array[0][2]_i_2 
       (.I0(\sig_register_array[0][4]_i_2_n_0 ),
        .I1(s_axi4_rready),
        .I2(out),
        .I3(s_axi_wdata[18]),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .O(\COMP_IPIC2AXI_S/sig_register_array[0]0_out ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \sig_register_array[0][2]_i_3 
       (.I0(\sig_register_array[0][6]_i_5_n_0 ),
        .I1(\sig_register_array[0][2]_i_6_n_0 ),
        .I2(sig_str_rst_reg),
        .I3(\sig_register_array[0][2]_i_7_n_0 ),
        .I4(\sig_register_array[1][0]_i_4_n_0 ),
        .I5(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ),
        .O(\sig_register_array[0][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \sig_register_array[0][2]_i_4 
       (.I0(sig_str_rst_i_3_n_0),
        .I1(\sig_register_array[0][2]_i_8_n_0 ),
        .I2(sig_str_rst_reg),
        .I3(\sig_register_array[0][2]_i_7_n_0 ),
        .I4(\sig_register_array[1][0]_i_4_n_0 ),
        .I5(\sig_register_array[0][6]_i_5_n_0 ),
        .O(\sig_register_array[0][2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sig_register_array[0][2]_i_6 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .O(\sig_register_array[0][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sig_register_array[0][2]_i_7 
       (.I0(\sig_register_array[1][0]_i_5_n_0 ),
        .I1(\sig_register_array[1][0]_i_8_n_0 ),
        .I2(\sig_register_array[1][0]_i_9_n_0 ),
        .I3(\sig_register_array[1][0]_i_10_n_0 ),
        .I4(\sig_register_array[1][0]_i_11_n_0 ),
        .I5(\sig_register_array[1][0]_i_6_n_0 ),
        .O(\sig_register_array[0][2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hFAF9)) 
    \sig_register_array[0][2]_i_8 
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .O(\sig_register_array[0][2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFEFF)) 
    \sig_register_array[0][3]_i_4 
       (.I0(\sig_register_array[1][0]_i_4_n_0 ),
        .I1(\sig_register_array[0][2]_i_7_n_0 ),
        .I2(sig_str_rst_reg),
        .I3(\sig_register_array[0][2]_i_6_n_0 ),
        .I4(\sig_register_array[0][6]_i_5_n_0 ),
        .I5(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sig_register_array[0][3]_i_5 
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .O(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h888CFFFF888C0000)) 
    \sig_register_array[0][4]_i_1 
       (.I0(\sig_register_array[0][4]_i_2_n_0 ),
        .I1(axi_str_txd_tready),
        .I2(s_axi_wdata[16]),
        .I3(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ),
        .I4(\sig_register_array[0][4]_i_3_n_0 ),
        .I5(\sig_register_array_reg[0][4] ),
        .O(axi_str_txd_tready_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sig_register_array[0][4]_i_2 
       (.I0(\sig_register_array[0][4]_i_4_n_0 ),
        .I1(\sig_register_array[0][2]_i_8_n_0 ),
        .I2(sig_str_rst_reg),
        .I3(\sig_register_array[0][2]_i_7_n_0 ),
        .I4(\sig_register_array[1][0]_i_4_n_0 ),
        .I5(\sig_register_array[0][6]_i_5_n_0 ),
        .O(\sig_register_array[0][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEAFFEAEA)) 
    \sig_register_array[0][4]_i_3 
       (.I0(\sig_register_array[0][2]_i_4_n_0 ),
        .I1(axi_str_txd_tlast),
        .I2(axi_str_txd_tvalid),
        .I3(\sig_register_array[0][2]_i_3_n_0 ),
        .I4(s_axi_wdata[16]),
        .O(\sig_register_array[0][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00000000)) 
    \sig_register_array[0][4]_i_4 
       (.I0(sig_str_rst_reg_0),
        .I1(s_axi_wdata[1]),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_wdata[3]),
        .I4(s_axi_wdata[2]),
        .I5(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ),
        .O(\sig_register_array[0][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFCDFF002200)) 
    \sig_register_array[0][6]_i_1 
       (.I0(\sig_register_array[0][6]_i_2_n_0 ),
        .I1(\sig_register_array[0][6]_i_3_n_0 ),
        .I2(\sig_register_array[0][6]_i_4_n_0 ),
        .I3(\sig_register_array[0][6]_i_5_n_0 ),
        .I4(\sig_register_array[0][6]_i_6_n_0 ),
        .I5(\sig_register_array_reg[0][6]_0 ),
        .O(\sig_register_array_reg[0][6] ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \sig_register_array[0][6]_i_2 
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I4(\sig_register_array_reg[0][6]_1 ),
        .I5(\sig_register_array_reg[0][6]_2 ),
        .O(\sig_register_array[0][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF3F2FFFF)) 
    \sig_register_array[0][6]_i_3 
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .I2(sig_rx_channel_reset_i_3_n_0),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I5(IPIC_STATE),
        .O(\sig_register_array[0][6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \sig_register_array[0][6]_i_4 
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I1(s_axi_wdata[14]),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .O(\sig_register_array[0][6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sig_register_array[0][6]_i_5 
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .O(\sig_register_array[0][6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \sig_register_array[0][6]_i_6 
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I2(sig_rx_channel_reset_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I4(Bus_RNW_reg),
        .I5(\sig_register_array[0][6]_i_3_n_0 ),
        .O(\sig_register_array[0][6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFBFBFBF0)) 
    \sig_register_array[0][7]_i_1 
       (.I0(\sig_register_array[0][2]_i_3_n_0 ),
        .I1(s_axi_wdata[13]),
        .I2(\sig_register_array[0][2]_i_4_n_0 ),
        .I3(Axi_Str_TxD_AReset),
        .I4(\sig_register_array_reg[0][7] ),
        .O(\s_axi_wdata[24] ));
  LUT5 #(
    .INIT(32'hFBFBFBF0)) 
    \sig_register_array[0][8]_i_1 
       (.I0(\sig_register_array[0][2]_i_3_n_0 ),
        .I1(s_axi_wdata[12]),
        .I2(\sig_register_array[0][2]_i_4_n_0 ),
        .I3(Axi_Str_RxD_AReset),
        .I4(\sig_register_array_reg[0][8] ),
        .O(\s_axi_wdata[23] ));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    \sig_register_array[1][0]_i_1 
       (.I0(\sig_register_array[0][6]_i_6_n_0 ),
        .I1(\sig_register_array[1][0]_i_3_n_0 ),
        .I2(\sig_register_array[1][0]_i_4_n_0 ),
        .I3(\sig_register_array[1][0]_i_5_n_0 ),
        .I4(\sig_register_array[1][0]_i_6_n_0 ),
        .I5(\sig_register_array[1][0]_i_7_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h0F0E)) 
    \sig_register_array[1][0]_i_10 
       (.I0(\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg ),
        .O(\sig_register_array[1][0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \sig_register_array[1][0]_i_11 
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg ),
        .O(\sig_register_array[1][0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][0]_i_2 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[20]),
        .O(Bus_RNW_reg_reg_2[16]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sig_register_array[1][0]_i_3 
       (.I0(\sig_register_array[1][0]_i_8_n_0 ),
        .I1(\sig_register_array[1][0]_i_9_n_0 ),
        .I2(\sig_register_array[1][0]_i_10_n_0 ),
        .I3(\sig_register_array[1][0]_i_11_n_0 ),
        .O(\sig_register_array[1][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sig_register_array[1][0]_i_4 
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .O(\sig_register_array[1][0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sig_register_array[1][0]_i_5 
       (.I0(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .O(\sig_register_array[1][0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sig_register_array[1][0]_i_6 
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .O(\sig_register_array[1][0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCCD0000)) 
    \sig_register_array[1][0]_i_7 
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I5(IPIC_STATE),
        .O(\sig_register_array[1][0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \sig_register_array[1][0]_i_8 
       (.I0(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg ),
        .O(\sig_register_array[1][0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \sig_register_array[1][0]_i_9 
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg ),
        .I1(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg ),
        .O(\sig_register_array[1][0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][10]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[10]),
        .O(Bus_RNW_reg_reg_2[6]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][11]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[9]),
        .O(Bus_RNW_reg_reg_2[5]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][12]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[8]),
        .O(Bus_RNW_reg_reg_2[4]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][13]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[7]),
        .O(Bus_RNW_reg_reg_2[3]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][14]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[6]),
        .O(Bus_RNW_reg_reg_2[2]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][15]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[5]),
        .O(Bus_RNW_reg_reg_2[1]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][16]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[4]),
        .O(Bus_RNW_reg_reg_2[0]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][1]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[19]),
        .O(Bus_RNW_reg_reg_2[15]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][2]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[18]),
        .O(Bus_RNW_reg_reg_2[14]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \sig_register_array[1][3]_i_1 
       (.I0(s_axi_wdata[17]),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(Bus_RNW_reg_reg_2[13]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][4]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[16]),
        .O(Bus_RNW_reg_reg_2[12]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][5]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[15]),
        .O(Bus_RNW_reg_reg_2[11]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][6]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[14]),
        .O(Bus_RNW_reg_reg_2[10]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][7]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[13]),
        .O(Bus_RNW_reg_reg_2[9]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][8]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[12]),
        .O(Bus_RNW_reg_reg_2[8]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \sig_register_array[1][9]_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .I2(s_axi_wdata[11]),
        .O(Bus_RNW_reg_reg_2[7]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    sig_rx_channel_reset_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I1(sig_rx_channel_reset_i_2_n_0),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(sig_rx_channel_reset_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h0000000055005501)) 
    sig_rx_channel_reset_i_2
       (.I0(sig_str_rst_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I3(Bus_RNW_reg),
        .I4(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I5(sig_rx_channel_reset_reg),
        .O(sig_rx_channel_reset_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFFFE)) 
    sig_rx_channel_reset_i_3
       (.I0(\sig_register_array[1][0]_i_11_n_0 ),
        .I1(\sig_register_array[1][0]_i_10_n_0 ),
        .I2(\sig_register_array[1][0]_i_9_n_0 ),
        .I3(\sig_register_array[1][0]_i_8_n_0 ),
        .I4(Bus_RNW_reg),
        .I5(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg ),
        .O(sig_rx_channel_reset_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000050510000)) 
    sig_str_rst_i_1
       (.I0(sig_str_rst_i_2_n_0),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I4(sig_str_rst_i_3_n_0),
        .I5(sig_str_rst_reg),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hCFCE)) 
    sig_str_rst_i_2
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I1(sig_rx_channel_reset_i_3_n_0),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .O(sig_str_rst_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    sig_str_rst_i_3
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 ),
        .I1(sig_str_rst_reg_0),
        .I2(s_axi_wdata[1]),
        .I3(s_axi_wdata[0]),
        .I4(s_axi_wdata[3]),
        .I5(s_axi_wdata[2]),
        .O(sig_str_rst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    sig_tx_channel_reset_i_2
       (.I0(sig_rx_channel_reset_i_2_n_0),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg ),
        .I2(Bus_RNW_reg),
        .I3(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg ),
        .I4(sig_rx_channel_reset_i_3_n_0),
        .O(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    sig_txd_sb_wr_en_i_1
       (.I0(sig_txd_sb_wr_en_i_2_n_0),
        .I1(sig_str_rst_i_2_n_0),
        .O(sig_txd_sb_wr_en));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    sig_txd_sb_wr_en_i_2
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg ),
        .I1(Bus_RNW_reg),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg ),
        .I3(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg ),
        .I4(\sig_register_array_reg[0][6]_1 ),
        .I5(\sig_register_array_reg[0][6]_2 ),
        .O(sig_txd_sb_wr_en_i_2_n_0));
endmodule

(* C_AXI4_BASEADDR = "32'b10100000000000010000000000000000" *) (* C_AXI4_HIGHADDR = "32'b10100000000000011111111111111111" *) (* C_AXIS_TDEST_WIDTH = "4" *) 
(* C_AXIS_TID_WIDTH = "4" *) (* C_AXIS_TUSER_WIDTH = "16" *) (* C_BASEADDR = "32'b10100000000000000000000000000000" *) 
(* C_DATA_INTERFACE_TYPE = "1" *) (* C_FAMILY = "zynquplus" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TSTRB = "0" *) 
(* C_HAS_AXIS_TUSER = "0" *) (* C_HIGHADDR = "32'b10100000000000001111111111111111" *) (* C_RX_CASCADE_HEIGHT = "0" *) 
(* C_RX_ENABLE_ECC = "0" *) (* C_RX_FIFO_DEPTH = "512" *) (* C_RX_FIFO_PE_THRESHOLD = "5" *) 
(* C_RX_FIFO_PF_THRESHOLD = "507" *) (* C_RX_HAS_ECC_ERR_INJECT = "0" *) (* C_S_AXI4_DATA_WIDTH = "128" *) 
(* C_S_AXI_ADDR_WIDTH = "32" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_ID_WIDTH = "1" *) 
(* C_TX_CASCADE_HEIGHT = "0" *) (* C_TX_ENABLE_ECC = "0" *) (* C_TX_FIFO_DEPTH = "512" *) 
(* C_TX_FIFO_PE_THRESHOLD = "5" *) (* C_TX_FIFO_PF_THRESHOLD = "507" *) (* C_TX_HAS_ECC_ERR_INJECT = "0" *) 
(* C_USE_RX_CUT_THROUGH = "1" *) (* C_USE_RX_DATA = "1" *) (* C_USE_TX_CTRL = "0" *) 
(* C_USE_TX_CUT_THROUGH = "1" *) (* C_USE_TX_DATA = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_fifo_mm_s
   (interrupt,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axi4_awid,
    s_axi4_awaddr,
    s_axi4_awlen,
    s_axi4_awsize,
    s_axi4_awburst,
    s_axi4_awlock,
    s_axi4_awcache,
    s_axi4_awprot,
    s_axi4_awvalid,
    s_axi4_awready,
    s_axi4_wdata,
    s_axi4_wstrb,
    s_axi4_wlast,
    s_axi4_wvalid,
    s_axi4_wready,
    s_axi4_bid,
    s_axi4_bresp,
    s_axi4_bvalid,
    s_axi4_bready,
    s_axi4_arid,
    s_axi4_araddr,
    s_axi4_arlen,
    s_axi4_arsize,
    s_axi4_arburst,
    s_axi4_arlock,
    s_axi4_arcache,
    s_axi4_arprot,
    s_axi4_arvalid,
    s_axi4_arready,
    s_axi4_rid,
    s_axi4_rdata,
    s_axi4_rresp,
    s_axi4_rlast,
    s_axi4_rvalid,
    s_axi4_rready,
    mm2s_prmry_reset_out_n,
    axi_str_txd_tvalid,
    axi_str_txd_tready,
    axi_str_txd_tlast,
    axi_str_txd_tkeep,
    axi_str_txd_tdata,
    axi_str_txd_tstrb,
    axi_str_txd_tdest,
    axi_str_txd_tid,
    axi_str_txd_tuser,
    mm2s_cntrl_reset_out_n,
    axi_str_txc_tvalid,
    axi_str_txc_tready,
    axi_str_txc_tlast,
    axi_str_txc_tkeep,
    axi_str_txc_tdata,
    axi_str_txc_tstrb,
    axi_str_txc_tdest,
    axi_str_txc_tid,
    axi_str_txc_tuser,
    s2mm_prmry_reset_out_n,
    axi_str_rxd_tvalid,
    axi_str_rxd_tready,
    axi_str_rxd_tlast,
    axi_str_rxd_tkeep,
    axi_str_rxd_tdata,
    axi_str_rxd_tstrb,
    axi_str_rxd_tdest,
    axi_str_rxd_tid,
    axi_str_rxd_tuser);
  output interrupt;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [31:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input [0:0]s_axi4_awid;
  input [31:0]s_axi4_awaddr;
  input [7:0]s_axi4_awlen;
  input [2:0]s_axi4_awsize;
  input [1:0]s_axi4_awburst;
  input s_axi4_awlock;
  input [3:0]s_axi4_awcache;
  input [2:0]s_axi4_awprot;
  input s_axi4_awvalid;
  output s_axi4_awready;
  input [127:0]s_axi4_wdata;
  input [15:0]s_axi4_wstrb;
  input s_axi4_wlast;
  input s_axi4_wvalid;
  output s_axi4_wready;
  output [0:0]s_axi4_bid;
  output [1:0]s_axi4_bresp;
  output s_axi4_bvalid;
  input s_axi4_bready;
  input [0:0]s_axi4_arid;
  input [31:0]s_axi4_araddr;
  input [7:0]s_axi4_arlen;
  input [2:0]s_axi4_arsize;
  input [1:0]s_axi4_arburst;
  input s_axi4_arlock;
  input [3:0]s_axi4_arcache;
  input [2:0]s_axi4_arprot;
  input s_axi4_arvalid;
  output s_axi4_arready;
  output [0:0]s_axi4_rid;
  output [127:0]s_axi4_rdata;
  output [1:0]s_axi4_rresp;
  output s_axi4_rlast;
  output s_axi4_rvalid;
  input s_axi4_rready;
  output mm2s_prmry_reset_out_n;
  output axi_str_txd_tvalid;
  input axi_str_txd_tready;
  output axi_str_txd_tlast;
  output [15:0]axi_str_txd_tkeep;
  output [127:0]axi_str_txd_tdata;
  output [15:0]axi_str_txd_tstrb;
  output [3:0]axi_str_txd_tdest;
  output [3:0]axi_str_txd_tid;
  output [15:0]axi_str_txd_tuser;
  output mm2s_cntrl_reset_out_n;
  output axi_str_txc_tvalid;
  input axi_str_txc_tready;
  output axi_str_txc_tlast;
  output [15:0]axi_str_txc_tkeep;
  output [127:0]axi_str_txc_tdata;
  output [15:0]axi_str_txc_tstrb;
  output [3:0]axi_str_txc_tdest;
  output [3:0]axi_str_txc_tid;
  output [15:0]axi_str_txc_tuser;
  output s2mm_prmry_reset_out_n;
  input axi_str_rxd_tvalid;
  output axi_str_rxd_tready;
  input axi_str_rxd_tlast;
  input [15:0]axi_str_rxd_tkeep;
  input [127:0]axi_str_rxd_tdata;
  input [15:0]axi_str_rxd_tstrb;
  input [3:0]axi_str_rxd_tdest;
  input [3:0]axi_str_rxd_tid;
  input [15:0]axi_str_rxd_tuser;

  wire \<const0> ;
  wire Axi_Str_RxD_AReset;
  wire Axi_Str_TxD_AReset;
  wire COMP_IPIC2AXI_S_n_131;
  wire COMP_IPIC2AXI_S_n_279;
  wire COMP_IPIC2AXI_S_n_280;
  wire COMP_IPIC2AXI_S_n_281;
  wire COMP_IPIC2AXI_S_n_282;
  wire COMP_IPIC2AXI_S_n_283;
  wire COMP_IPIC2AXI_S_n_284;
  wire COMP_IPIC2AXI_S_n_285;
  wire COMP_IPIC2AXI_S_n_286;
  wire COMP_IPIC2AXI_S_n_287;
  wire COMP_IPIC2AXI_S_n_288;
  wire COMP_IPIC2AXI_S_n_289;
  wire COMP_IPIC2AXI_S_n_290;
  wire COMP_IPIC2AXI_S_n_291;
  wire COMP_IPIC2AXI_S_n_296;
  wire COMP_IPIC2AXI_S_n_297;
  wire COMP_IPIC2AXI_S_n_298;
  wire COMP_IPIC2AXI_S_n_299;
  wire COMP_IPIC2AXI_S_n_300;
  wire COMP_IPIC2AXI_S_n_306;
  wire COMP_IPIC2AXI_S_n_307;
  wire COMP_IPIC2AXI_S_n_308;
  wire COMP_IPIC2AXI_S_n_309;
  wire COMP_IPIC2AXI_S_n_310;
  wire COMP_IPIC2AXI_S_n_311;
  wire COMP_IPIC2AXI_S_n_312;
  wire COMP_IPIC2AXI_S_n_313;
  wire COMP_IPIC2AXI_S_n_314;
  wire COMP_IPIC2AXI_S_n_315;
  wire COMP_IPIC2AXI_S_n_317;
  wire COMP_IPIC2AXI_S_n_318;
  wire COMP_IPIC2AXI_S_n_319;
  wire COMP_IPIC2AXI_S_n_320;
  wire COMP_IPIC2AXI_S_n_321;
  wire COMP_IPIC2AXI_S_n_322;
  wire COMP_IPIC2AXI_S_n_323;
  wire COMP_IPIC2AXI_S_n_324;
  wire COMP_IPIC2AXI_S_n_325;
  wire COMP_IPIF_n_23;
  wire COMP_IPIF_n_25;
  wire COMP_IPIF_n_26;
  wire COMP_IPIF_n_27;
  wire COMP_IPIF_n_28;
  wire COMP_IPIF_n_29;
  wire COMP_IPIF_n_30;
  wire COMP_IPIF_n_31;
  wire COMP_IPIF_n_32;
  wire COMP_IPIF_n_33;
  wire COMP_IPIF_n_4;
  wire COMP_IPIF_n_5;
  wire COMP_IPIF_n_52;
  wire COMP_IPIF_n_53;
  wire COMP_IPIF_n_54;
  wire COMP_IPIF_n_55;
  wire COMP_IPIF_n_56;
  wire COMP_IPIF_n_6;
  wire COMP_IPIF_n_7;
  wire COMP_IPIF_n_8;
  wire COMP_IPIF_n_9;
  wire IPIC_STATE;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr ;
  wire axi4_fifo_readyn;
  wire axi4_rdata_ack_i;
  wire [127:0]axi_str_rxd_tdata;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tready;
  wire axi_str_rxd_tvalid;
  wire [127:0]axi_str_txd_tdata;
  wire axi_str_txd_tlast;
  wire axi_str_txd_tready;
  wire axi_str_txd_tvalid;
  wire [1:0]\axi_wr_fsm/axi_wr_fsm/present_state ;
  wire [22:15]dout;
  wire empty;
  wire \gaxif.COMP_AXI4_n_10 ;
  wire \gaxif.COMP_AXI4_n_11 ;
  wire \gaxif.COMP_AXI4_n_12 ;
  wire \gaxif.COMP_AXI4_n_13 ;
  wire \gaxif.COMP_AXI4_n_14 ;
  wire \gaxif.COMP_AXI4_n_15 ;
  wire \gaxif.COMP_AXI4_n_16 ;
  wire \gaxif.COMP_AXI4_n_17 ;
  wire \gaxif.COMP_AXI4_n_18 ;
  wire \gaxif.COMP_AXI4_n_19 ;
  wire \gaxif.COMP_AXI4_n_20 ;
  wire \gaxif.COMP_AXI4_n_21 ;
  wire \gaxif.COMP_AXI4_n_22 ;
  wire \gaxif.COMP_AXI4_n_23 ;
  wire \gaxif.COMP_AXI4_n_24 ;
  wire \gaxif.COMP_AXI4_n_27 ;
  wire \gaxif.COMP_AXI4_n_9 ;
  wire \gaxif.axi4_rvalid_int ;
  wire interrupt;
  wire mm2s_prmry_reset_out_n;
  wire s2mm_prmry_reset_out_n;
  wire s_aresetn_a_c;
  wire [31:0]s_axi4_araddr;
  wire [0:0]s_axi4_arid;
  wire [7:0]s_axi4_arlen;
  wire s_axi4_arready;
  wire s_axi4_arvalid;
  wire [31:0]s_axi4_awaddr;
  wire [0:0]s_axi4_awid;
  wire [7:0]s_axi4_awlen;
  wire s_axi4_awready;
  wire s_axi4_awvalid;
  wire [0:0]s_axi4_bid;
  wire s_axi4_bready;
  wire s_axi4_bvalid;
  wire [127:0]s_axi4_rdata;
  wire [0:0]s_axi4_rid;
  wire s_axi4_rlast;
  wire s_axi4_rready;
  wire s_axi4_rvalid;
  wire [127:0]s_axi4_wdata;
  wire s_axi4_wready;
  wire [15:0]s_axi4_wstrb;
  wire s_axi4_wvalid;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire [0:0]sig_Bus2IP_CS;
  wire [9:9]sig_Bus2IP_RdCE;
  wire sig_Bus2IP_Reset;
  wire [0:31]sig_IP2Bus_Data;
  wire sig_axi_wr_en;
  wire [0:31]sig_ip2bus_data;
  wire sig_ip2bus_data1;
  wire sig_rd_rlen;
  wire [0:16]\sig_register_array[1]_0 ;
  wire [9:0]sig_rxd_occupancy;
  wire sig_txd_sb_wr_en;
  wire [9:7]sig_txd_vacancy;
  wire txd_wr_en;

  assign axi_str_txc_tdata[127] = \<const0> ;
  assign axi_str_txc_tdata[126] = \<const0> ;
  assign axi_str_txc_tdata[125] = \<const0> ;
  assign axi_str_txc_tdata[124] = \<const0> ;
  assign axi_str_txc_tdata[123] = \<const0> ;
  assign axi_str_txc_tdata[122] = \<const0> ;
  assign axi_str_txc_tdata[121] = \<const0> ;
  assign axi_str_txc_tdata[120] = \<const0> ;
  assign axi_str_txc_tdata[119] = \<const0> ;
  assign axi_str_txc_tdata[118] = \<const0> ;
  assign axi_str_txc_tdata[117] = \<const0> ;
  assign axi_str_txc_tdata[116] = \<const0> ;
  assign axi_str_txc_tdata[115] = \<const0> ;
  assign axi_str_txc_tdata[114] = \<const0> ;
  assign axi_str_txc_tdata[113] = \<const0> ;
  assign axi_str_txc_tdata[112] = \<const0> ;
  assign axi_str_txc_tdata[111] = \<const0> ;
  assign axi_str_txc_tdata[110] = \<const0> ;
  assign axi_str_txc_tdata[109] = \<const0> ;
  assign axi_str_txc_tdata[108] = \<const0> ;
  assign axi_str_txc_tdata[107] = \<const0> ;
  assign axi_str_txc_tdata[106] = \<const0> ;
  assign axi_str_txc_tdata[105] = \<const0> ;
  assign axi_str_txc_tdata[104] = \<const0> ;
  assign axi_str_txc_tdata[103] = \<const0> ;
  assign axi_str_txc_tdata[102] = \<const0> ;
  assign axi_str_txc_tdata[101] = \<const0> ;
  assign axi_str_txc_tdata[100] = \<const0> ;
  assign axi_str_txc_tdata[99] = \<const0> ;
  assign axi_str_txc_tdata[98] = \<const0> ;
  assign axi_str_txc_tdata[97] = \<const0> ;
  assign axi_str_txc_tdata[96] = \<const0> ;
  assign axi_str_txc_tdata[95] = \<const0> ;
  assign axi_str_txc_tdata[94] = \<const0> ;
  assign axi_str_txc_tdata[93] = \<const0> ;
  assign axi_str_txc_tdata[92] = \<const0> ;
  assign axi_str_txc_tdata[91] = \<const0> ;
  assign axi_str_txc_tdata[90] = \<const0> ;
  assign axi_str_txc_tdata[89] = \<const0> ;
  assign axi_str_txc_tdata[88] = \<const0> ;
  assign axi_str_txc_tdata[87] = \<const0> ;
  assign axi_str_txc_tdata[86] = \<const0> ;
  assign axi_str_txc_tdata[85] = \<const0> ;
  assign axi_str_txc_tdata[84] = \<const0> ;
  assign axi_str_txc_tdata[83] = \<const0> ;
  assign axi_str_txc_tdata[82] = \<const0> ;
  assign axi_str_txc_tdata[81] = \<const0> ;
  assign axi_str_txc_tdata[80] = \<const0> ;
  assign axi_str_txc_tdata[79] = \<const0> ;
  assign axi_str_txc_tdata[78] = \<const0> ;
  assign axi_str_txc_tdata[77] = \<const0> ;
  assign axi_str_txc_tdata[76] = \<const0> ;
  assign axi_str_txc_tdata[75] = \<const0> ;
  assign axi_str_txc_tdata[74] = \<const0> ;
  assign axi_str_txc_tdata[73] = \<const0> ;
  assign axi_str_txc_tdata[72] = \<const0> ;
  assign axi_str_txc_tdata[71] = \<const0> ;
  assign axi_str_txc_tdata[70] = \<const0> ;
  assign axi_str_txc_tdata[69] = \<const0> ;
  assign axi_str_txc_tdata[68] = \<const0> ;
  assign axi_str_txc_tdata[67] = \<const0> ;
  assign axi_str_txc_tdata[66] = \<const0> ;
  assign axi_str_txc_tdata[65] = \<const0> ;
  assign axi_str_txc_tdata[64] = \<const0> ;
  assign axi_str_txc_tdata[63] = \<const0> ;
  assign axi_str_txc_tdata[62] = \<const0> ;
  assign axi_str_txc_tdata[61] = \<const0> ;
  assign axi_str_txc_tdata[60] = \<const0> ;
  assign axi_str_txc_tdata[59] = \<const0> ;
  assign axi_str_txc_tdata[58] = \<const0> ;
  assign axi_str_txc_tdata[57] = \<const0> ;
  assign axi_str_txc_tdata[56] = \<const0> ;
  assign axi_str_txc_tdata[55] = \<const0> ;
  assign axi_str_txc_tdata[54] = \<const0> ;
  assign axi_str_txc_tdata[53] = \<const0> ;
  assign axi_str_txc_tdata[52] = \<const0> ;
  assign axi_str_txc_tdata[51] = \<const0> ;
  assign axi_str_txc_tdata[50] = \<const0> ;
  assign axi_str_txc_tdata[49] = \<const0> ;
  assign axi_str_txc_tdata[48] = \<const0> ;
  assign axi_str_txc_tdata[47] = \<const0> ;
  assign axi_str_txc_tdata[46] = \<const0> ;
  assign axi_str_txc_tdata[45] = \<const0> ;
  assign axi_str_txc_tdata[44] = \<const0> ;
  assign axi_str_txc_tdata[43] = \<const0> ;
  assign axi_str_txc_tdata[42] = \<const0> ;
  assign axi_str_txc_tdata[41] = \<const0> ;
  assign axi_str_txc_tdata[40] = \<const0> ;
  assign axi_str_txc_tdata[39] = \<const0> ;
  assign axi_str_txc_tdata[38] = \<const0> ;
  assign axi_str_txc_tdata[37] = \<const0> ;
  assign axi_str_txc_tdata[36] = \<const0> ;
  assign axi_str_txc_tdata[35] = \<const0> ;
  assign axi_str_txc_tdata[34] = \<const0> ;
  assign axi_str_txc_tdata[33] = \<const0> ;
  assign axi_str_txc_tdata[32] = \<const0> ;
  assign axi_str_txc_tdata[31] = \<const0> ;
  assign axi_str_txc_tdata[30] = \<const0> ;
  assign axi_str_txc_tdata[29] = \<const0> ;
  assign axi_str_txc_tdata[28] = \<const0> ;
  assign axi_str_txc_tdata[27] = \<const0> ;
  assign axi_str_txc_tdata[26] = \<const0> ;
  assign axi_str_txc_tdata[25] = \<const0> ;
  assign axi_str_txc_tdata[24] = \<const0> ;
  assign axi_str_txc_tdata[23] = \<const0> ;
  assign axi_str_txc_tdata[22] = \<const0> ;
  assign axi_str_txc_tdata[21] = \<const0> ;
  assign axi_str_txc_tdata[20] = \<const0> ;
  assign axi_str_txc_tdata[19] = \<const0> ;
  assign axi_str_txc_tdata[18] = \<const0> ;
  assign axi_str_txc_tdata[17] = \<const0> ;
  assign axi_str_txc_tdata[16] = \<const0> ;
  assign axi_str_txc_tdata[15] = \<const0> ;
  assign axi_str_txc_tdata[14] = \<const0> ;
  assign axi_str_txc_tdata[13] = \<const0> ;
  assign axi_str_txc_tdata[12] = \<const0> ;
  assign axi_str_txc_tdata[11] = \<const0> ;
  assign axi_str_txc_tdata[10] = \<const0> ;
  assign axi_str_txc_tdata[9] = \<const0> ;
  assign axi_str_txc_tdata[8] = \<const0> ;
  assign axi_str_txc_tdata[7] = \<const0> ;
  assign axi_str_txc_tdata[6] = \<const0> ;
  assign axi_str_txc_tdata[5] = \<const0> ;
  assign axi_str_txc_tdata[4] = \<const0> ;
  assign axi_str_txc_tdata[3] = \<const0> ;
  assign axi_str_txc_tdata[2] = \<const0> ;
  assign axi_str_txc_tdata[1] = \<const0> ;
  assign axi_str_txc_tdata[0] = \<const0> ;
  assign axi_str_txc_tdest[3] = \<const0> ;
  assign axi_str_txc_tdest[2] = \<const0> ;
  assign axi_str_txc_tdest[1] = \<const0> ;
  assign axi_str_txc_tdest[0] = \<const0> ;
  assign axi_str_txc_tid[3] = \<const0> ;
  assign axi_str_txc_tid[2] = \<const0> ;
  assign axi_str_txc_tid[1] = \<const0> ;
  assign axi_str_txc_tid[0] = \<const0> ;
  assign axi_str_txc_tkeep[15] = \<const0> ;
  assign axi_str_txc_tkeep[14] = \<const0> ;
  assign axi_str_txc_tkeep[13] = \<const0> ;
  assign axi_str_txc_tkeep[12] = \<const0> ;
  assign axi_str_txc_tkeep[11] = \<const0> ;
  assign axi_str_txc_tkeep[10] = \<const0> ;
  assign axi_str_txc_tkeep[9] = \<const0> ;
  assign axi_str_txc_tkeep[8] = \<const0> ;
  assign axi_str_txc_tkeep[7] = \<const0> ;
  assign axi_str_txc_tkeep[6] = \<const0> ;
  assign axi_str_txc_tkeep[5] = \<const0> ;
  assign axi_str_txc_tkeep[4] = \<const0> ;
  assign axi_str_txc_tkeep[3] = \<const0> ;
  assign axi_str_txc_tkeep[2] = \<const0> ;
  assign axi_str_txc_tkeep[1] = \<const0> ;
  assign axi_str_txc_tkeep[0] = \<const0> ;
  assign axi_str_txc_tlast = \<const0> ;
  assign axi_str_txc_tstrb[15] = \<const0> ;
  assign axi_str_txc_tstrb[14] = \<const0> ;
  assign axi_str_txc_tstrb[13] = \<const0> ;
  assign axi_str_txc_tstrb[12] = \<const0> ;
  assign axi_str_txc_tstrb[11] = \<const0> ;
  assign axi_str_txc_tstrb[10] = \<const0> ;
  assign axi_str_txc_tstrb[9] = \<const0> ;
  assign axi_str_txc_tstrb[8] = \<const0> ;
  assign axi_str_txc_tstrb[7] = \<const0> ;
  assign axi_str_txc_tstrb[6] = \<const0> ;
  assign axi_str_txc_tstrb[5] = \<const0> ;
  assign axi_str_txc_tstrb[4] = \<const0> ;
  assign axi_str_txc_tstrb[3] = \<const0> ;
  assign axi_str_txc_tstrb[2] = \<const0> ;
  assign axi_str_txc_tstrb[1] = \<const0> ;
  assign axi_str_txc_tstrb[0] = \<const0> ;
  assign axi_str_txc_tuser[15] = \<const0> ;
  assign axi_str_txc_tuser[14] = \<const0> ;
  assign axi_str_txc_tuser[13] = \<const0> ;
  assign axi_str_txc_tuser[12] = \<const0> ;
  assign axi_str_txc_tuser[11] = \<const0> ;
  assign axi_str_txc_tuser[10] = \<const0> ;
  assign axi_str_txc_tuser[9] = \<const0> ;
  assign axi_str_txc_tuser[8] = \<const0> ;
  assign axi_str_txc_tuser[7] = \<const0> ;
  assign axi_str_txc_tuser[6] = \<const0> ;
  assign axi_str_txc_tuser[5] = \<const0> ;
  assign axi_str_txc_tuser[4] = \<const0> ;
  assign axi_str_txc_tuser[3] = \<const0> ;
  assign axi_str_txc_tuser[2] = \<const0> ;
  assign axi_str_txc_tuser[1] = \<const0> ;
  assign axi_str_txc_tuser[0] = \<const0> ;
  assign axi_str_txc_tvalid = \<const0> ;
  assign axi_str_txd_tdest[3] = \<const0> ;
  assign axi_str_txd_tdest[2] = \<const0> ;
  assign axi_str_txd_tdest[1] = \<const0> ;
  assign axi_str_txd_tdest[0] = \<const0> ;
  assign axi_str_txd_tid[3] = \<const0> ;
  assign axi_str_txd_tid[2] = \<const0> ;
  assign axi_str_txd_tid[1] = \<const0> ;
  assign axi_str_txd_tid[0] = \<const0> ;
  assign axi_str_txd_tkeep[15] = \<const0> ;
  assign axi_str_txd_tkeep[14] = \<const0> ;
  assign axi_str_txd_tkeep[13] = \<const0> ;
  assign axi_str_txd_tkeep[12] = \<const0> ;
  assign axi_str_txd_tkeep[11] = \<const0> ;
  assign axi_str_txd_tkeep[10] = \<const0> ;
  assign axi_str_txd_tkeep[9] = \<const0> ;
  assign axi_str_txd_tkeep[8] = \<const0> ;
  assign axi_str_txd_tkeep[7] = \<const0> ;
  assign axi_str_txd_tkeep[6] = \<const0> ;
  assign axi_str_txd_tkeep[5] = \<const0> ;
  assign axi_str_txd_tkeep[4] = \<const0> ;
  assign axi_str_txd_tkeep[3] = \<const0> ;
  assign axi_str_txd_tkeep[2] = \<const0> ;
  assign axi_str_txd_tkeep[1] = \<const0> ;
  assign axi_str_txd_tkeep[0] = \<const0> ;
  assign axi_str_txd_tstrb[15] = \<const0> ;
  assign axi_str_txd_tstrb[14] = \<const0> ;
  assign axi_str_txd_tstrb[13] = \<const0> ;
  assign axi_str_txd_tstrb[12] = \<const0> ;
  assign axi_str_txd_tstrb[11] = \<const0> ;
  assign axi_str_txd_tstrb[10] = \<const0> ;
  assign axi_str_txd_tstrb[9] = \<const0> ;
  assign axi_str_txd_tstrb[8] = \<const0> ;
  assign axi_str_txd_tstrb[7] = \<const0> ;
  assign axi_str_txd_tstrb[6] = \<const0> ;
  assign axi_str_txd_tstrb[5] = \<const0> ;
  assign axi_str_txd_tstrb[4] = \<const0> ;
  assign axi_str_txd_tstrb[3] = \<const0> ;
  assign axi_str_txd_tstrb[2] = \<const0> ;
  assign axi_str_txd_tstrb[1] = \<const0> ;
  assign axi_str_txd_tstrb[0] = \<const0> ;
  assign axi_str_txd_tuser[15] = \<const0> ;
  assign axi_str_txd_tuser[14] = \<const0> ;
  assign axi_str_txd_tuser[13] = \<const0> ;
  assign axi_str_txd_tuser[12] = \<const0> ;
  assign axi_str_txd_tuser[11] = \<const0> ;
  assign axi_str_txd_tuser[10] = \<const0> ;
  assign axi_str_txd_tuser[9] = \<const0> ;
  assign axi_str_txd_tuser[8] = \<const0> ;
  assign axi_str_txd_tuser[7] = \<const0> ;
  assign axi_str_txd_tuser[6] = \<const0> ;
  assign axi_str_txd_tuser[5] = \<const0> ;
  assign axi_str_txd_tuser[4] = \<const0> ;
  assign axi_str_txd_tuser[3] = \<const0> ;
  assign axi_str_txd_tuser[2] = \<const0> ;
  assign axi_str_txd_tuser[1] = \<const0> ;
  assign axi_str_txd_tuser[0] = \<const0> ;
  assign mm2s_cntrl_reset_out_n = \<const0> ;
  assign s_axi4_bresp[1] = \<const0> ;
  assign s_axi4_bresp[0] = \<const0> ;
  assign s_axi4_rresp[1] = \<const0> ;
  assign s_axi4_rresp[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ipic2axi_s COMP_IPIC2AXI_S
       (.Axi_Str_RxD_AReset(Axi_Str_RxD_AReset),
        .Axi_Str_TxD_AReset(Axi_Str_TxD_AReset),
        .D({sig_ip2bus_data[0],sig_ip2bus_data[9],sig_ip2bus_data[10],sig_ip2bus_data[11],sig_ip2bus_data[12],sig_ip2bus_data[13],sig_ip2bus_data[14],sig_ip2bus_data[15],sig_ip2bus_data[16],sig_ip2bus_data[22],sig_ip2bus_data[23],sig_ip2bus_data[24],sig_ip2bus_data[31]}),
        .E(\gaxif.COMP_AXI4_n_27 ),
        .IP2Bus_RdAck_reg_0(s_axi_arready),
        .IP2Bus_RdAck_reg_1(COMP_IPIF_n_32),
        .IP2Bus_WrAck_reg_0(s_axi_awready),
        .IP2Bus_WrAck_reg_1(COMP_IPIF_n_55),
        .IP2Bus_WrAck_reg_2(COMP_IPIF_n_33),
        .IPIC_STATE(IPIC_STATE),
        .IPIC_STATE_reg_0(COMP_IPIC2AXI_S_n_306),
        .Q(sig_txd_vacancy),
        .SR(sig_Bus2IP_Reset),
        .axi4_fifo_readyn(axi4_fifo_readyn),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tready(axi_str_rxd_tready),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .axi_str_txd_tdata(axi_str_txd_tdata),
        .axi_str_txd_tlast(axi_str_txd_tlast),
        .axi_str_txd_tready(axi_str_txd_tready),
        .\count_value_i_reg[8] (\axi_wr_fsm/axi_wr_fsm/present_state ),
        .cs_ce_clr(\I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr ),
        .dout(dout),
        .empty(empty),
        .\gaxi_full_sm.r_valid_r1_reg (COMP_IPIC2AXI_S_n_309),
        .\gen_fwft.empty_fwft_i_reg (COMP_IPIC2AXI_S_n_299),
        .\gen_fwft.empty_fwft_i_reg_0 (COMP_IPIC2AXI_S_n_300),
        .\gen_fwft.empty_fwft_i_reg_1 (COMP_IPIC2AXI_S_n_312),
        .\gen_fwft.empty_fwft_i_reg_2 (COMP_IPIC2AXI_S_n_313),
        .\gen_fwft.empty_fwft_i_reg_3 (COMP_IPIC2AXI_S_n_314),
        .\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ({\gaxif.COMP_AXI4_n_9 ,\gaxif.COMP_AXI4_n_10 ,\gaxif.COMP_AXI4_n_11 ,\gaxif.COMP_AXI4_n_12 ,\gaxif.COMP_AXI4_n_13 ,\gaxif.COMP_AXI4_n_14 ,\gaxif.COMP_AXI4_n_15 ,\gaxif.COMP_AXI4_n_16 ,\gaxif.COMP_AXI4_n_17 ,\gaxif.COMP_AXI4_n_18 ,\gaxif.COMP_AXI4_n_19 ,\gaxif.COMP_AXI4_n_20 ,\gaxif.COMP_AXI4_n_21 ,\gaxif.COMP_AXI4_n_22 ,\gaxif.COMP_AXI4_n_23 ,\gaxif.COMP_AXI4_n_24 }),
        .\gfifo_gen.gmm2s.start_wr_reg (txd_wr_en),
        .\gwdc.wr_data_count_i_reg[2] (COMP_IPIC2AXI_S_n_315),
        .\gwdc.wr_data_count_i_reg[3] (COMP_IPIC2AXI_S_n_311),
        .\gwdc.wr_data_count_i_reg[4] (COMP_IPIC2AXI_S_n_310),
        .interrupt(interrupt),
        .m_axis_tready(axi4_rdata_ack_i),
        .m_axis_tvalid(axi_str_txd_tvalid),
        .mm2s_prmry_reset_out_n(mm2s_prmry_reset_out_n),
        .out(\gaxif.axi4_rvalid_int ),
        .s2mm_prmry_reset_out_n(s2mm_prmry_reset_out_n),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi4_rready(s_axi4_rready),
        .s_axi4_wdata(s_axi4_wdata),
        .s_axi4_wvalid(s_axi4_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wdata_2_sp_1(COMP_IPIC2AXI_S_n_307),
        .s_axi_wdata_4_sp_1(COMP_IPIC2AXI_S_n_298),
        .s_axi_wdata_7_sp_1(COMP_IPIC2AXI_S_n_308),
        .sel(sig_axi_wr_en),
        .sig_Bus2IP_CS(sig_Bus2IP_CS),
        .sig_Bus2IP_RdCE(sig_Bus2IP_RdCE),
        .sig_ip2bus_data1(sig_ip2bus_data1),
        .\sig_ip2bus_data_reg[0]_0 ({sig_IP2Bus_Data[0],sig_IP2Bus_Data[1],sig_IP2Bus_Data[2],sig_IP2Bus_Data[3],sig_IP2Bus_Data[4],sig_IP2Bus_Data[5],sig_IP2Bus_Data[6],sig_IP2Bus_Data[7],sig_IP2Bus_Data[8],sig_IP2Bus_Data[9],sig_IP2Bus_Data[10],sig_IP2Bus_Data[11],sig_IP2Bus_Data[12],sig_IP2Bus_Data[13],sig_IP2Bus_Data[14],sig_IP2Bus_Data[15],sig_IP2Bus_Data[16],sig_IP2Bus_Data[17],sig_IP2Bus_Data[18],sig_IP2Bus_Data[19],sig_IP2Bus_Data[20],sig_IP2Bus_Data[21],sig_IP2Bus_Data[22],sig_IP2Bus_Data[23],sig_IP2Bus_Data[24],sig_IP2Bus_Data[25],sig_IP2Bus_Data[26],sig_IP2Bus_Data[27],sig_IP2Bus_Data[28],sig_IP2Bus_Data[29],sig_IP2Bus_Data[30],sig_IP2Bus_Data[31]}),
        .\sig_ip2bus_data_reg[17]_0 (COMP_IPIF_n_25),
        .\sig_ip2bus_data_reg[17]_1 (COMP_IPIF_n_26),
        .\sig_ip2bus_data_reg[17]_2 (COMP_IPIF_n_27),
        .\sig_ip2bus_data_reg[28]_0 (COMP_IPIF_n_52),
        .\sig_ip2bus_data_reg[28]_1 (COMP_IPIF_n_53),
        .\sig_ip2bus_data_reg[8]_0 (COMP_IPIF_n_23),
        .\sig_ip2bus_data_reg[8]_1 (COMP_IPIF_n_54),
        .sig_rd_rlen(sig_rd_rlen),
        .\sig_register_array_reg[0][10]_0 (COMP_IPIC2AXI_S_n_285),
        .\sig_register_array_reg[0][11]_0 (COMP_IPIC2AXI_S_n_286),
        .\sig_register_array_reg[0][12]_0 (COMP_IPIC2AXI_S_n_287),
        .\sig_register_array_reg[0][13]_0 (COMP_IPIC2AXI_S_n_288),
        .\sig_register_array_reg[0][14]_0 (COMP_IPIC2AXI_S_n_289),
        .\sig_register_array_reg[0][15]_0 (COMP_IPIC2AXI_S_n_290),
        .\sig_register_array_reg[0][16]_0 (COMP_IPIC2AXI_S_n_291),
        .\sig_register_array_reg[0][2]_0 (COMP_IPIC2AXI_S_n_279),
        .\sig_register_array_reg[0][2]_1 (COMP_IPIF_n_4),
        .\sig_register_array_reg[0][3]_0 (COMP_IPIF_n_31),
        .\sig_register_array_reg[0][3]_1 (COMP_IPIF_n_6),
        .\sig_register_array_reg[0][4]_0 (COMP_IPIC2AXI_S_n_280),
        .\sig_register_array_reg[0][4]_1 (COMP_IPIF_n_5),
        .\sig_register_array_reg[0][6]_0 (COMP_IPIC2AXI_S_n_281),
        .\sig_register_array_reg[0][6]_1 (COMP_IPIF_n_7),
        .\sig_register_array_reg[0][7]_0 (COMP_IPIC2AXI_S_n_282),
        .\sig_register_array_reg[0][7]_1 (COMP_IPIF_n_8),
        .\sig_register_array_reg[0][8]_0 (COMP_IPIC2AXI_S_n_283),
        .\sig_register_array_reg[0][8]_1 (COMP_IPIF_n_9),
        .\sig_register_array_reg[0][9]_0 (COMP_IPIC2AXI_S_n_284),
        .\sig_register_array_reg[1][0]_0 ({COMP_IPIC2AXI_S_n_317,COMP_IPIC2AXI_S_n_318,COMP_IPIC2AXI_S_n_319,COMP_IPIC2AXI_S_n_320,COMP_IPIC2AXI_S_n_321,COMP_IPIC2AXI_S_n_322,COMP_IPIC2AXI_S_n_323,COMP_IPIC2AXI_S_n_324,COMP_IPIC2AXI_S_n_325}),
        .\sig_register_array_reg[1][0]_1 (COMP_IPIF_n_28),
        .\sig_register_array_reg[1][0]_2 ({\sig_register_array[1]_0 [0],\sig_register_array[1]_0 [1],\sig_register_array[1]_0 [2],\sig_register_array[1]_0 [3],\sig_register_array[1]_0 [4],\sig_register_array[1]_0 [5],\sig_register_array[1]_0 [6],\sig_register_array[1]_0 [7],\sig_register_array[1]_0 [8],\sig_register_array[1]_0 [9],\sig_register_array[1]_0 [10],\sig_register_array[1]_0 [11],\sig_register_array[1]_0 [12],\sig_register_array[1]_0 [13],\sig_register_array[1]_0 [14],\sig_register_array[1]_0 [15],\sig_register_array[1]_0 [16]}),
        .sig_rx_channel_reset_reg_0(COMP_IPIC2AXI_S_n_296),
        .sig_rx_channel_reset_reg_1(COMP_IPIF_n_30),
        .sig_str_rst_reg_0(COMP_IPIF_n_56),
        .sig_tx_channel_reset_reg_0(COMP_IPIC2AXI_S_n_297),
        .sig_tx_channel_reset_reg_1(COMP_IPIF_n_29),
        .sig_txd_sb_wr_en(sig_txd_sb_wr_en),
        .sig_txd_sb_wr_en_reg_0(COMP_IPIC2AXI_S_n_131),
        .sync_areset_n_reg(s_aresetn_a_c),
        .wr_data_count_axis({sig_rxd_occupancy[9:7],sig_rxd_occupancy[5:3],sig_rxd_occupancy[0]}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif COMP_IPIF
       (.Axi_Str_RxD_AReset(Axi_Str_RxD_AReset),
        .Axi_Str_TxD_AReset(Axi_Str_TxD_AReset),
        .Bus_RNW_reg_reg(COMP_IPIF_n_25),
        .Bus_RNW_reg_reg_0({\sig_register_array[1]_0 [0],\sig_register_array[1]_0 [1],\sig_register_array[1]_0 [2],\sig_register_array[1]_0 [3],\sig_register_array[1]_0 [4],\sig_register_array[1]_0 [5],\sig_register_array[1]_0 [6],\sig_register_array[1]_0 [7],\sig_register_array[1]_0 [8],\sig_register_array[1]_0 [9],\sig_register_array[1]_0 [10],\sig_register_array[1]_0 [11],\sig_register_array[1]_0 [12],\sig_register_array[1]_0 [13],\sig_register_array[1]_0 [14],\sig_register_array[1]_0 [15],\sig_register_array[1]_0 [16]}),
        .D({sig_ip2bus_data[0],sig_ip2bus_data[9],sig_ip2bus_data[10],sig_ip2bus_data[11],sig_ip2bus_data[12],sig_ip2bus_data[13],sig_ip2bus_data[14],sig_ip2bus_data[15],sig_ip2bus_data[16],sig_ip2bus_data[22],sig_ip2bus_data[23],sig_ip2bus_data[24],sig_ip2bus_data[31]}),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (COMP_IPIF_n_23),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (COMP_IPIF_n_28),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (COMP_IPIF_n_56),
        .\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] (COMP_IPIF_n_6),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] (COMP_IPIF_n_26),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 (COMP_IPIF_n_54),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (COMP_IPIF_n_29),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (COMP_IPIF_n_27),
        .\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] (COMP_IPIF_n_30),
        .\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_0 (COMP_IPIF_n_31),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (COMP_IPIF_n_52),
        .IPIC_STATE(IPIC_STATE),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (COMP_IPIF_n_55),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (s_axi_awready),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 (s_axi_arready),
        .Q(sig_txd_vacancy),
        .SR(sig_Bus2IP_Reset),
        .axi_str_txd_tlast(axi_str_txd_tlast),
        .axi_str_txd_tready(axi_str_txd_tready),
        .axi_str_txd_tready_0(COMP_IPIF_n_5),
        .axi_str_txd_tvalid(axi_str_txd_tvalid),
        .bus2ip_rnw_i_reg(COMP_IPIF_n_32),
        .bus2ip_rnw_i_reg_0(COMP_IPIF_n_33),
        .cs_ce_clr(\I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr ),
        .dout(dout),
        .empty(empty),
        .\gen_fwft.empty_fwft_i_reg (COMP_IPIF_n_53),
        .out(\gaxif.axi4_rvalid_int ),
        .s_axi4_rready(s_axi4_rready),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[6:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[6:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[31] ({sig_IP2Bus_Data[0],sig_IP2Bus_Data[1],sig_IP2Bus_Data[2],sig_IP2Bus_Data[3],sig_IP2Bus_Data[4],sig_IP2Bus_Data[5],sig_IP2Bus_Data[6],sig_IP2Bus_Data[7],sig_IP2Bus_Data[8],sig_IP2Bus_Data[9],sig_IP2Bus_Data[10],sig_IP2Bus_Data[11],sig_IP2Bus_Data[12],sig_IP2Bus_Data[13],sig_IP2Bus_Data[14],sig_IP2Bus_Data[15],sig_IP2Bus_Data[16],sig_IP2Bus_Data[17],sig_IP2Bus_Data[18],sig_IP2Bus_Data[19],sig_IP2Bus_Data[20],sig_IP2Bus_Data[21],sig_IP2Bus_Data[22],sig_IP2Bus_Data[23],sig_IP2Bus_Data[24],sig_IP2Bus_Data[25],sig_IP2Bus_Data[26],sig_IP2Bus_Data[27],sig_IP2Bus_Data[28],sig_IP2Bus_Data[29],sig_IP2Bus_Data[30],sig_IP2Bus_Data[31]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[31:15],s_axi_wdata[5:4],s_axi_wdata[2],s_axi_wdata[0]}),
        .\s_axi_wdata[23] (COMP_IPIF_n_9),
        .\s_axi_wdata[24] (COMP_IPIF_n_8),
        .\s_axi_wdata[29] (COMP_IPIF_n_4),
        .s_axi_wvalid(s_axi_wvalid),
        .sig_Bus2IP_CS(sig_Bus2IP_CS),
        .sig_Bus2IP_RdCE(sig_Bus2IP_RdCE),
        .sig_ip2bus_data1(sig_ip2bus_data1),
        .\sig_ip2bus_data_reg[0] ({COMP_IPIC2AXI_S_n_317,COMP_IPIC2AXI_S_n_318,COMP_IPIC2AXI_S_n_319,COMP_IPIC2AXI_S_n_320,COMP_IPIC2AXI_S_n_321,COMP_IPIC2AXI_S_n_322,COMP_IPIC2AXI_S_n_323,COMP_IPIC2AXI_S_n_324,COMP_IPIC2AXI_S_n_325}),
        .\sig_ip2bus_data_reg[10] (COMP_IPIC2AXI_S_n_285),
        .\sig_ip2bus_data_reg[11] (COMP_IPIC2AXI_S_n_286),
        .\sig_ip2bus_data_reg[12] (COMP_IPIC2AXI_S_n_287),
        .\sig_ip2bus_data_reg[13] (COMP_IPIC2AXI_S_n_288),
        .\sig_ip2bus_data_reg[14] (COMP_IPIC2AXI_S_n_289),
        .\sig_ip2bus_data_reg[15] (COMP_IPIC2AXI_S_n_290),
        .\sig_ip2bus_data_reg[16] (COMP_IPIC2AXI_S_n_300),
        .\sig_ip2bus_data_reg[16]_0 (COMP_IPIC2AXI_S_n_291),
        .\sig_ip2bus_data_reg[22] (COMP_IPIC2AXI_S_n_312),
        .\sig_ip2bus_data_reg[22]_0 (COMP_IPIC2AXI_S_n_310),
        .\sig_ip2bus_data_reg[23] (COMP_IPIC2AXI_S_n_313),
        .\sig_ip2bus_data_reg[23]_0 (COMP_IPIC2AXI_S_n_311),
        .\sig_ip2bus_data_reg[24] (COMP_IPIC2AXI_S_n_314),
        .\sig_ip2bus_data_reg[24]_0 (COMP_IPIC2AXI_S_n_315),
        .\sig_ip2bus_data_reg[24]_1 (COMP_IPIC2AXI_S_n_299),
        .\sig_ip2bus_data_reg[9] (COMP_IPIC2AXI_S_n_284),
        .sig_rd_rlen(sig_rd_rlen),
        .sig_rd_rlen_reg(COMP_IPIC2AXI_S_n_296),
        .\sig_register_array_reg[0][2] (COMP_IPIC2AXI_S_n_309),
        .\sig_register_array_reg[0][2]_0 (COMP_IPIC2AXI_S_n_279),
        .\sig_register_array_reg[0][4] (COMP_IPIC2AXI_S_n_280),
        .\sig_register_array_reg[0][6] (COMP_IPIF_n_7),
        .\sig_register_array_reg[0][6]_0 (COMP_IPIC2AXI_S_n_281),
        .\sig_register_array_reg[0][6]_1 (COMP_IPIC2AXI_S_n_297),
        .\sig_register_array_reg[0][6]_2 (COMP_IPIC2AXI_S_n_307),
        .\sig_register_array_reg[0][7] (COMP_IPIC2AXI_S_n_282),
        .\sig_register_array_reg[0][8] (COMP_IPIC2AXI_S_n_283),
        .sig_rx_channel_reset_reg(COMP_IPIC2AXI_S_n_298),
        .sig_str_rst_reg(COMP_IPIC2AXI_S_n_306),
        .sig_str_rst_reg_0(COMP_IPIC2AXI_S_n_308),
        .sig_txd_sb_wr_en(sig_txd_sb_wr_en),
        .wr_data_count_axis({sig_rxd_occupancy[9:7],sig_rxd_occupancy[5:3],sig_rxd_occupancy[0]}));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_wrapper \gaxif.COMP_AXI4 
       (.E(\gaxif.COMP_AXI4_n_27 ),
        .Q(\axi_wr_fsm/axi_wr_fsm/present_state ),
        .SR(s_aresetn_a_c),
        .axi4_fifo_readyn(axi4_fifo_readyn),
        .\gaxi_bvalid_id_r.bvalid_r_reg (s_axi4_bvalid),
        .\gaxi_full_sm.r_valid_r_reg (s_axi4_rvalid),
        .\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] (COMP_IPIC2AXI_S_n_131),
        .m_axis_tready(axi4_rdata_ack_i),
        .out(\gaxif.axi4_rvalid_int ),
        .s_axi4_araddr(s_axi4_araddr),
        .s_axi4_arid(s_axi4_arid),
        .s_axi4_arlen(s_axi4_arlen),
        .s_axi4_arready(s_axi4_arready),
        .s_axi4_arvalid(s_axi4_arvalid),
        .s_axi4_awaddr(s_axi4_awaddr),
        .s_axi4_awid(s_axi4_awid),
        .s_axi4_awlen(s_axi4_awlen),
        .s_axi4_awready(s_axi4_awready),
        .s_axi4_awvalid(s_axi4_awvalid),
        .s_axi4_bid(s_axi4_bid),
        .s_axi4_bready(s_axi4_bready),
        .s_axi4_rid(s_axi4_rid),
        .s_axi4_rlast(s_axi4_rlast),
        .s_axi4_rready(s_axi4_rready),
        .s_axi4_wready(s_axi4_wready),
        .s_axi4_wstrb(s_axi4_wstrb),
        .s_axi4_wvalid(s_axi4_wvalid),
        .s_axi4_wvalid_0({\gaxif.COMP_AXI4_n_9 ,\gaxif.COMP_AXI4_n_10 ,\gaxif.COMP_AXI4_n_11 ,\gaxif.COMP_AXI4_n_12 ,\gaxif.COMP_AXI4_n_13 ,\gaxif.COMP_AXI4_n_14 ,\gaxif.COMP_AXI4_n_15 ,\gaxif.COMP_AXI4_n_16 ,\gaxif.COMP_AXI4_n_17 ,\gaxif.COMP_AXI4_n_18 ,\gaxif.COMP_AXI4_n_19 ,\gaxif.COMP_AXI4_n_20 ,\gaxif.COMP_AXI4_n_21 ,\gaxif.COMP_AXI4_n_22 ,\gaxif.COMP_AXI4_n_23 ,\gaxif.COMP_AXI4_n_24 }),
        .s_axi4_wvalid_1(txd_wr_en),
        .s_axi_aclk(s_axi_aclk),
        .sel(sig_axi_wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
   (sig_Bus2IP_RdCE,
    s_axi_rvalid,
    s_axi_bvalid,
    sig_Bus2IP_CS,
    \s_axi_wdata[29] ,
    axi_str_txd_tready_0,
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ,
    \sig_register_array_reg[0][6] ,
    \s_axi_wdata[24] ,
    \s_axi_wdata[23] ,
    D,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    sig_rd_rlen,
    Bus_RNW_reg_reg,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_0 ,
    bus2ip_rnw_i_reg,
    bus2ip_rnw_i_reg_0,
    sig_txd_sb_wr_en,
    Bus_RNW_reg_reg_0,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    \gen_fwft.empty_fwft_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    s_axi_rdata,
    SR,
    s_axi_aclk,
    cs_ce_clr,
    s_axi_arvalid,
    s_axi_wdata,
    \sig_register_array_reg[0][2] ,
    \sig_register_array_reg[0][2]_0 ,
    axi_str_txd_tready,
    \sig_register_array_reg[0][4] ,
    \sig_register_array_reg[0][6]_0 ,
    Axi_Str_TxD_AReset,
    \sig_register_array_reg[0][7] ,
    Axi_Str_RxD_AReset,
    \sig_register_array_reg[0][8] ,
    \sig_ip2bus_data_reg[24] ,
    \sig_ip2bus_data_reg[24]_0 ,
    \sig_ip2bus_data_reg[24]_1 ,
    \sig_ip2bus_data_reg[23] ,
    \sig_ip2bus_data_reg[23]_0 ,
    \sig_ip2bus_data_reg[22] ,
    \sig_ip2bus_data_reg[22]_0 ,
    \sig_ip2bus_data_reg[0] ,
    dout,
    \sig_ip2bus_data_reg[16] ,
    empty,
    sig_ip2bus_data1,
    wr_data_count_axis,
    sig_str_rst_reg,
    sig_rx_channel_reset_reg,
    IPIC_STATE,
    s_axi4_rready,
    out,
    axi_str_txd_tlast,
    axi_str_txd_tvalid,
    \sig_register_array_reg[0][6]_1 ,
    \sig_register_array_reg[0][6]_2 ,
    sig_str_rst_reg_0,
    sig_rd_rlen_reg,
    Q,
    \sig_ip2bus_data_reg[16]_0 ,
    \sig_ip2bus_data_reg[15] ,
    \sig_ip2bus_data_reg[14] ,
    \sig_ip2bus_data_reg[13] ,
    \sig_ip2bus_data_reg[12] ,
    \sig_ip2bus_data_reg[11] ,
    \sig_ip2bus_data_reg[10] ,
    \sig_ip2bus_data_reg[9] ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_rready,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_aresetn,
    \s_axi_rdata_i_reg[31] );
  output [0:0]sig_Bus2IP_RdCE;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]sig_Bus2IP_CS;
  output \s_axi_wdata[29] ;
  output axi_str_txd_tready_0;
  output \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ;
  output \sig_register_array_reg[0][6] ;
  output \s_axi_wdata[24] ;
  output \s_axi_wdata[23] ;
  output [12:0]D;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output sig_rd_rlen;
  output Bus_RNW_reg_reg;
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  output [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  output \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  output \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_0 ;
  output bus2ip_rnw_i_reg;
  output bus2ip_rnw_i_reg_0;
  output sig_txd_sb_wr_en;
  output [16:0]Bus_RNW_reg_reg_0;
  output \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  output \gen_fwft.empty_fwft_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  output [0:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  output [31:0]s_axi_rdata;
  input [0:0]SR;
  input s_axi_aclk;
  input cs_ce_clr;
  input s_axi_arvalid;
  input [20:0]s_axi_wdata;
  input \sig_register_array_reg[0][2] ;
  input \sig_register_array_reg[0][2]_0 ;
  input axi_str_txd_tready;
  input \sig_register_array_reg[0][4] ;
  input \sig_register_array_reg[0][6]_0 ;
  input Axi_Str_TxD_AReset;
  input \sig_register_array_reg[0][7] ;
  input Axi_Str_RxD_AReset;
  input \sig_register_array_reg[0][8] ;
  input \sig_ip2bus_data_reg[24] ;
  input \sig_ip2bus_data_reg[24]_0 ;
  input \sig_ip2bus_data_reg[24]_1 ;
  input \sig_ip2bus_data_reg[23] ;
  input \sig_ip2bus_data_reg[23]_0 ;
  input \sig_ip2bus_data_reg[22] ;
  input \sig_ip2bus_data_reg[22]_0 ;
  input [8:0]\sig_ip2bus_data_reg[0] ;
  input [7:0]dout;
  input \sig_ip2bus_data_reg[16] ;
  input empty;
  input sig_ip2bus_data1;
  input [6:0]wr_data_count_axis;
  input sig_str_rst_reg;
  input sig_rx_channel_reset_reg;
  input IPIC_STATE;
  input s_axi4_rready;
  input out;
  input axi_str_txd_tlast;
  input axi_str_txd_tvalid;
  input \sig_register_array_reg[0][6]_1 ;
  input \sig_register_array_reg[0][6]_2 ;
  input sig_str_rst_reg_0;
  input sig_rd_rlen_reg;
  input [2:0]Q;
  input \sig_ip2bus_data_reg[16]_0 ;
  input \sig_ip2bus_data_reg[15] ;
  input \sig_ip2bus_data_reg[14] ;
  input \sig_ip2bus_data_reg[13] ;
  input \sig_ip2bus_data_reg[12] ;
  input \sig_ip2bus_data_reg[11] ;
  input \sig_ip2bus_data_reg[10] ;
  input \sig_ip2bus_data_reg[9] ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_rready;
  input [4:0]s_axi_araddr;
  input [4:0]s_axi_awaddr;
  input s_axi_aresetn;
  input [31:0]\s_axi_rdata_i_reg[31] ;

  wire Axi_Str_RxD_AReset;
  wire Axi_Str_TxD_AReset;
  wire Bus_RNW_reg_reg;
  wire [16:0]Bus_RNW_reg_reg_0;
  wire [12:0]D;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire IPIC_STATE;
  wire [0:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire axi_str_txd_tlast;
  wire axi_str_txd_tready;
  wire axi_str_txd_tready_0;
  wire axi_str_txd_tvalid;
  wire bus2ip_rnw_i_reg;
  wire bus2ip_rnw_i_reg_0;
  wire cs_ce_clr;
  wire [7:0]dout;
  wire empty;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire out;
  wire s_axi4_rready;
  wire s_axi_aclk;
  wire [4:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [31:0]\s_axi_rdata_i_reg[31] ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [20:0]s_axi_wdata;
  wire \s_axi_wdata[23] ;
  wire \s_axi_wdata[24] ;
  wire \s_axi_wdata[29] ;
  wire s_axi_wvalid;
  wire [0:0]sig_Bus2IP_CS;
  wire [0:0]sig_Bus2IP_RdCE;
  wire sig_ip2bus_data1;
  wire [8:0]\sig_ip2bus_data_reg[0] ;
  wire \sig_ip2bus_data_reg[10] ;
  wire \sig_ip2bus_data_reg[11] ;
  wire \sig_ip2bus_data_reg[12] ;
  wire \sig_ip2bus_data_reg[13] ;
  wire \sig_ip2bus_data_reg[14] ;
  wire \sig_ip2bus_data_reg[15] ;
  wire \sig_ip2bus_data_reg[16] ;
  wire \sig_ip2bus_data_reg[16]_0 ;
  wire \sig_ip2bus_data_reg[22] ;
  wire \sig_ip2bus_data_reg[22]_0 ;
  wire \sig_ip2bus_data_reg[23] ;
  wire \sig_ip2bus_data_reg[23]_0 ;
  wire \sig_ip2bus_data_reg[24] ;
  wire \sig_ip2bus_data_reg[24]_0 ;
  wire \sig_ip2bus_data_reg[24]_1 ;
  wire \sig_ip2bus_data_reg[9] ;
  wire sig_rd_rlen;
  wire sig_rd_rlen_reg;
  wire \sig_register_array_reg[0][2] ;
  wire \sig_register_array_reg[0][2]_0 ;
  wire \sig_register_array_reg[0][4] ;
  wire \sig_register_array_reg[0][6] ;
  wire \sig_register_array_reg[0][6]_0 ;
  wire \sig_register_array_reg[0][6]_1 ;
  wire \sig_register_array_reg[0][6]_2 ;
  wire \sig_register_array_reg[0][7] ;
  wire \sig_register_array_reg[0][8] ;
  wire sig_rx_channel_reset_reg;
  wire sig_str_rst_reg;
  wire sig_str_rst_reg_0;
  wire sig_txd_sb_wr_en;
  wire [6:0]wr_data_count_axis;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment I_SLAVE_ATTACHMENT
       (.Axi_Str_RxD_AReset(Axi_Str_RxD_AReset),
        .Axi_Str_TxD_AReset(Axi_Str_TxD_AReset),
        .Bus_RNW_reg_reg(sig_rd_rlen),
        .Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_0),
        .D(D),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] (\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] (\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ),
        .\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_0 (\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_0 ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .IPIC_STATE(IPIC_STATE),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (sig_Bus2IP_CS),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .Q(Q),
        .SR(SR),
        .axi_str_txd_tlast(axi_str_txd_tlast),
        .axi_str_txd_tready(axi_str_txd_tready),
        .axi_str_txd_tready_0(axi_str_txd_tready_0),
        .axi_str_txd_tvalid(axi_str_txd_tvalid),
        .bus2ip_rnw_i_reg_0(bus2ip_rnw_i_reg),
        .bus2ip_rnw_i_reg_1(bus2ip_rnw_i_reg_0),
        .cs_ce_clr(cs_ce_clr),
        .dout(dout),
        .empty(empty),
        .\gen_fwft.empty_fwft_i_reg (\gen_fwft.empty_fwft_i_reg ),
        .out(out),
        .s_axi4_rready(s_axi4_rready),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[31]_0 (\s_axi_rdata_i_reg[31] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[23] (\s_axi_wdata[23] ),
        .\s_axi_wdata[24] (\s_axi_wdata[24] ),
        .\s_axi_wdata[29] (\s_axi_wdata[29] ),
        .s_axi_wvalid(s_axi_wvalid),
        .sig_Bus2IP_RdCE(sig_Bus2IP_RdCE),
        .sig_ip2bus_data1(sig_ip2bus_data1),
        .\sig_ip2bus_data_reg[0] (\sig_ip2bus_data_reg[0] ),
        .\sig_ip2bus_data_reg[10] (\sig_ip2bus_data_reg[10] ),
        .\sig_ip2bus_data_reg[11] (\sig_ip2bus_data_reg[11] ),
        .\sig_ip2bus_data_reg[12] (\sig_ip2bus_data_reg[12] ),
        .\sig_ip2bus_data_reg[13] (\sig_ip2bus_data_reg[13] ),
        .\sig_ip2bus_data_reg[14] (\sig_ip2bus_data_reg[14] ),
        .\sig_ip2bus_data_reg[15] (\sig_ip2bus_data_reg[15] ),
        .\sig_ip2bus_data_reg[16] (\sig_ip2bus_data_reg[16] ),
        .\sig_ip2bus_data_reg[16]_0 (\sig_ip2bus_data_reg[16]_0 ),
        .\sig_ip2bus_data_reg[22] (\sig_ip2bus_data_reg[22] ),
        .\sig_ip2bus_data_reg[22]_0 (\sig_ip2bus_data_reg[22]_0 ),
        .\sig_ip2bus_data_reg[23] (\sig_ip2bus_data_reg[23] ),
        .\sig_ip2bus_data_reg[23]_0 (\sig_ip2bus_data_reg[23]_0 ),
        .\sig_ip2bus_data_reg[24] (\sig_ip2bus_data_reg[24] ),
        .\sig_ip2bus_data_reg[24]_0 (\sig_ip2bus_data_reg[24]_0 ),
        .\sig_ip2bus_data_reg[24]_1 (\sig_ip2bus_data_reg[24]_1 ),
        .\sig_ip2bus_data_reg[9] (\sig_ip2bus_data_reg[9] ),
        .sig_rd_rlen_reg(sig_rd_rlen_reg),
        .\sig_register_array_reg[0][2] (\sig_register_array_reg[0][2] ),
        .\sig_register_array_reg[0][2]_0 (\sig_register_array_reg[0][2]_0 ),
        .\sig_register_array_reg[0][4] (\sig_register_array_reg[0][4] ),
        .\sig_register_array_reg[0][6] (\sig_register_array_reg[0][6] ),
        .\sig_register_array_reg[0][6]_0 (\sig_register_array_reg[0][6]_0 ),
        .\sig_register_array_reg[0][6]_1 (\sig_register_array_reg[0][6]_1 ),
        .\sig_register_array_reg[0][6]_2 (\sig_register_array_reg[0][6]_2 ),
        .\sig_register_array_reg[0][7] (\sig_register_array_reg[0][7] ),
        .\sig_register_array_reg[0][8] (\sig_register_array_reg[0][8] ),
        .sig_rx_channel_reset_reg(sig_rx_channel_reset_reg),
        .sig_str_rst_reg(sig_str_rst_reg),
        .sig_str_rst_reg_0(sig_str_rst_reg_0),
        .sig_txd_sb_wr_en(sig_txd_sb_wr_en),
        .wr_data_count_axis(wr_data_count_axis));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_read_fsm
   (s_axi4_arready,
    out,
    \gaxi_full_sm.r_valid_r_reg_0 ,
    s_axi4_rlast,
    D,
    \gaxi_full_sm.arlen_cntr_reg[4] ,
    E,
    m_axis_tready,
    s_axi4_arid_0_sp_1,
    SR,
    s_axi_aclk,
    s_axi4_araddr,
    axi4_fifo_readyn,
    Q,
    \gaxi_full_sm.arlen_cntr_reg[0] ,
    s_axi4_arlen,
    s_axi4_rready,
    \gaxi_full_sm.arlen_cntr_reg[4]_0 ,
    \gaxi_full_sm.arlen_cntr_reg[5] ,
    \gaxi_full_sm.arlen_cntr_reg[7] ,
    s_axi4_arvalid,
    \gaxi_full_sm.arlen_cntr_reg[5]_0 ,
    s_axi4_arid,
    s_axi4_rid);
  output s_axi4_arready;
  output out;
  output \gaxi_full_sm.r_valid_r_reg_0 ;
  output s_axi4_rlast;
  output [7:0]D;
  output \gaxi_full_sm.arlen_cntr_reg[4] ;
  output [0:0]E;
  output m_axis_tready;
  output s_axi4_arid_0_sp_1;
  input [0:0]SR;
  input s_axi_aclk;
  input [31:0]s_axi4_araddr;
  input axi4_fifo_readyn;
  input [7:0]Q;
  input \gaxi_full_sm.arlen_cntr_reg[0] ;
  input [7:0]s_axi4_arlen;
  input s_axi4_rready;
  input \gaxi_full_sm.arlen_cntr_reg[4]_0 ;
  input \gaxi_full_sm.arlen_cntr_reg[5] ;
  input \gaxi_full_sm.arlen_cntr_reg[7] ;
  input s_axi4_arvalid;
  input \gaxi_full_sm.arlen_cntr_reg[5]_0 ;
  input [0:0]s_axi4_arid;
  input [0:0]s_axi4_rid;

  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_sequential_gaxi_full_sm.present_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0_n_0 ;
  wire \FSM_sequential_gaxi_full_sm.present_state[1]_i_3_n_0 ;
  wire \FSM_sequential_gaxi_full_sm.present_state[1]_i_4_n_0 ;
  wire \FSM_sequential_gaxi_full_sm.present_state[1]_i_5_n_0 ;
  wire \FSM_sequential_gaxi_full_sm.present_state[1]_i_6_n_0 ;
  wire [7:0]Q;
  wire [0:0]SR;
  (* MAX_FANOUT = "10" *) (* RTL_MAX_FANOUT = "found" *) wire arready_int;
  wire axi4_fifo_readyn;
  wire \gaxi_full_sm.allowed_i_1_n_0 ;
  wire \gaxi_full_sm.allowed_reg_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[1]_i_3_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[2]_i_2_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[3]_i_2_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[3]_i_3_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[3]_i_4_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[4]_i_2_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[5]_i_3_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[5]_i_4_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[7]_i_4_n_0 ;
  wire \gaxi_full_sm.arlen_cntr_reg[0] ;
  wire \gaxi_full_sm.arlen_cntr_reg[4] ;
  wire \gaxi_full_sm.arlen_cntr_reg[4]_0 ;
  wire \gaxi_full_sm.arlen_cntr_reg[5] ;
  wire \gaxi_full_sm.arlen_cntr_reg[5]_0 ;
  wire \gaxi_full_sm.arlen_cntr_reg[7] ;
  wire \gaxi_full_sm.arready_int_i_1_n_0 ;
  wire \gaxi_full_sm.arready_int_i_2_n_0 ;
  wire \gaxi_full_sm.arready_int_i_3_n_0 ;
  wire \gaxi_full_sm.arready_int_i_4_n_0 ;
  wire \gaxi_full_sm.arready_int_i_5_n_0 ;
  wire \gaxi_full_sm.arready_int_i_6_n_0 ;
  wire \gaxi_full_sm.arready_int_i_7_n_0 ;
  (* MAX_FANOUT = "10" *) (* RTL_MAX_FANOUT = "found" *) wire \gaxi_full_sm.arready_int_reg_rep__0_n_0 ;
  (* MAX_FANOUT = "10" *) (* RTL_MAX_FANOUT = "found" *) wire \gaxi_full_sm.arready_int_reg_rep_n_0 ;
  wire \gaxi_full_sm.arready_int_rep_i_1__0_n_0 ;
  wire \gaxi_full_sm.arready_int_rep_i_1_n_0 ;
  wire \gaxi_full_sm.outstanding_read_r ;
  wire \gaxi_full_sm.outstanding_read_r_i_1_n_0 ;
  wire \gaxi_full_sm.r_last_r0 ;
  wire \gaxi_full_sm.r_last_r_i_3_n_0 ;
  wire \gaxi_full_sm.r_last_r_i_4_n_0 ;
  wire \gaxi_full_sm.r_valid_c ;
  (* DONT_TOUCH *) wire \gaxi_full_sm.r_valid_r1 ;
  wire \gaxi_full_sm.r_valid_r_reg_0 ;
  wire m_axis_tready;
  wire [1:0]next_state;
  wire [1:0]present_state;
  wire r_last_c;
  wire [31:0]s_axi4_araddr;
  wire [0:0]s_axi4_arid;
  wire s_axi4_arid_0_sn_1;
  wire [7:0]s_axi4_arlen;
  wire s_axi4_arvalid;
  wire [0:0]s_axi4_rid;
  wire s_axi4_rlast;
  wire s_axi4_rready;
  wire s_axi_aclk;

  assign out = \gaxi_full_sm.r_valid_r1 ;
  assign s_axi4_arid_0_sp_1 = s_axi4_arid_0_sn_1;
  assign s_axi4_arready = arready_int;
  LUT2 #(
    .INIT(4'h8)) 
    COMP_FIFO_i_2
       (.I0(s_axi4_rready),
        .I1(\gaxi_full_sm.r_valid_r1 ),
        .O(m_axis_tready));
  LUT6 #(
    .INIT(64'hFFEAAAEAAAEAAAEA)) 
    \FSM_sequential_gaxi_full_sm.present_state[0]_i_1 
       (.I0(\FSM_sequential_gaxi_full_sm.present_state[0]_i_2__0_n_0 ),
        .I1(\FSM_sequential_gaxi_full_sm.present_state[1]_i_4_n_0 ),
        .I2(\gaxi_full_sm.arready_int_reg_rep_n_0 ),
        .I3(present_state[0]),
        .I4(present_state[1]),
        .I5(\gaxi_full_sm.outstanding_read_r ),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'h22222222FF303030)) 
    \FSM_sequential_gaxi_full_sm.present_state[0]_i_2__0 
       (.I0(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I1(s_axi4_rready),
        .I2(\gaxi_full_sm.arready_int_reg_rep_n_0 ),
        .I3(\gaxi_full_sm.r_last_r_i_3_n_0 ),
        .I4(present_state[0]),
        .I5(present_state[1]),
        .O(\FSM_sequential_gaxi_full_sm.present_state[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FFFFF4FFF4FF)) 
    \FSM_sequential_gaxi_full_sm.present_state[1]_i_1 
       (.I0(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0_n_0 ),
        .I1(\gaxi_full_sm.outstanding_read_r ),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[1]_i_3_n_0 ),
        .I3(\FSM_sequential_gaxi_full_sm.present_state[1]_i_4_n_0 ),
        .I4(\FSM_sequential_gaxi_full_sm.present_state[1]_i_5_n_0 ),
        .I5(\FSM_sequential_gaxi_full_sm.present_state[1]_i_6_n_0 ),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0 
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .O(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \FSM_sequential_gaxi_full_sm.present_state[1]_i_3 
       (.I0(present_state[1]),
        .I1(present_state[0]),
        .I2(s_axi4_rready),
        .I3(Q[6]),
        .I4(\gaxi_full_sm.arlen_cntr_reg[4] ),
        .I5(Q[7]),
        .O(\FSM_sequential_gaxi_full_sm.present_state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_gaxi_full_sm.present_state[1]_i_4 
       (.I0(s_axi4_arlen[1]),
        .I1(\gaxi_full_sm.arlen_cntr[3]_i_2_n_0 ),
        .I2(s_axi4_arlen[3]),
        .I3(s_axi4_arlen[2]),
        .I4(s_axi4_arlen[0]),
        .O(\FSM_sequential_gaxi_full_sm.present_state[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_sequential_gaxi_full_sm.present_state[1]_i_5 
       (.I0(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I1(s_axi4_rready),
        .I2(present_state[1]),
        .O(\FSM_sequential_gaxi_full_sm.present_state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_gaxi_full_sm.present_state[1]_i_6 
       (.I0(present_state[0]),
        .I1(\gaxi_full_sm.arready_int_reg_rep__0_n_0 ),
        .O(\FSM_sequential_gaxi_full_sm.present_state[1]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "wait_rdaddr:00,os_rd:11,rd_mem:01,reg_rdaddr:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gaxi_full_sm.present_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(present_state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "wait_rdaddr:00,os_rd:11,rd_mem:01,reg_rdaddr:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gaxi_full_sm.present_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(present_state[1]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00FF0080)) 
    \gaxi_full_sm.allowed_i_1 
       (.I0(s_axi4_rlast),
        .I1(s_axi4_rready),
        .I2(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I3(\gaxi_full_sm.arready_int_reg_rep_n_0 ),
        .I4(\gaxi_full_sm.allowed_reg_n_0 ),
        .O(\gaxi_full_sm.allowed_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.allowed_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gaxi_full_sm.allowed_i_1_n_0 ),
        .Q(\gaxi_full_sm.allowed_reg_n_0 ),
        .S(SR));
  LUT6 #(
    .INIT(64'h5555555500FFFC00)) 
    \gaxi_full_sm.arlen_cntr[0]_i_1 
       (.I0(Q[0]),
        .I1(\gaxi_full_sm.arlen_cntr_reg[0] ),
        .I2(s_axi4_arlen[1]),
        .I3(\FSM_sequential_gaxi_full_sm.present_state[1]_i_5_n_0 ),
        .I4(s_axi4_arlen[0]),
        .I5(\FSM_sequential_gaxi_full_sm.present_state[1]_i_6_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFAAE50045004FAAE)) 
    \gaxi_full_sm.arlen_cntr[1]_i_1 
       (.I0(\FSM_sequential_gaxi_full_sm.present_state[1]_i_6_n_0 ),
        .I1(\gaxi_full_sm.arlen_cntr_reg[0] ),
        .I2(s_axi4_arlen[1]),
        .I3(\gaxi_full_sm.arlen_cntr[1]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hAEAA)) 
    \gaxi_full_sm.arlen_cntr[1]_i_3 
       (.I0(s_axi4_arlen[0]),
        .I1(present_state[1]),
        .I2(s_axi4_rready),
        .I3(\gaxi_full_sm.r_valid_r_reg_0 ),
        .O(\gaxi_full_sm.arlen_cntr[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55000054)) 
    \gaxi_full_sm.arlen_cntr[2]_i_1 
       (.I0(\FSM_sequential_gaxi_full_sm.present_state[1]_i_6_n_0 ),
        .I1(\gaxi_full_sm.arlen_cntr[3]_i_2_n_0 ),
        .I2(s_axi4_arlen[3]),
        .I3(s_axi4_arlen[2]),
        .I4(\gaxi_full_sm.arlen_cntr[3]_i_3_n_0 ),
        .I5(\gaxi_full_sm.arlen_cntr[2]_i_2_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hBBB0000B)) 
    \gaxi_full_sm.arlen_cntr[2]_i_2 
       (.I0(present_state[0]),
        .I1(\gaxi_full_sm.arready_int_reg_rep_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\gaxi_full_sm.arlen_cntr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55500004)) 
    \gaxi_full_sm.arlen_cntr[3]_i_1 
       (.I0(\FSM_sequential_gaxi_full_sm.present_state[1]_i_6_n_0 ),
        .I1(\gaxi_full_sm.arlen_cntr[3]_i_2_n_0 ),
        .I2(\gaxi_full_sm.arlen_cntr[3]_i_3_n_0 ),
        .I3(s_axi4_arlen[2]),
        .I4(s_axi4_arlen[3]),
        .I5(\gaxi_full_sm.arlen_cntr[3]_i_4_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gaxi_full_sm.arlen_cntr[3]_i_2 
       (.I0(s_axi4_arlen[5]),
        .I1(s_axi4_arlen[4]),
        .I2(s_axi4_arlen[7]),
        .I3(s_axi4_arlen[6]),
        .O(\gaxi_full_sm.arlen_cntr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'hFFFFFF20)) 
    \gaxi_full_sm.arlen_cntr[3]_i_3 
       (.I0(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I1(s_axi4_rready),
        .I2(present_state[1]),
        .I3(s_axi4_arlen[0]),
        .I4(s_axi4_arlen[1]),
        .O(\gaxi_full_sm.arlen_cntr[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFE00FE01010001)) 
    \gaxi_full_sm.arlen_cntr[3]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\gaxi_full_sm.arready_int_reg_rep__0_n_0 ),
        .I4(present_state[0]),
        .I5(Q[3]),
        .O(\gaxi_full_sm.arlen_cntr[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF02C2C202FFC2C2)) 
    \gaxi_full_sm.arlen_cntr[4]_i_1 
       (.I0(\gaxi_full_sm.arlen_cntr[4]_i_2_n_0 ),
        .I1(s_axi4_arlen[4]),
        .I2(\gaxi_full_sm.arlen_cntr[5]_i_3_n_0 ),
        .I3(\gaxi_full_sm.arlen_cntr_reg[4]_0 ),
        .I4(\FSM_sequential_gaxi_full_sm.present_state[1]_i_6_n_0 ),
        .I5(Q[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \gaxi_full_sm.arlen_cntr[4]_i_2 
       (.I0(s_axi4_arlen[5]),
        .I1(s_axi4_arlen[6]),
        .I2(s_axi4_arlen[7]),
        .I3(\gaxi_full_sm.arready_int_reg_rep__0_n_0 ),
        .I4(present_state[0]),
        .O(\gaxi_full_sm.arlen_cntr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55005004)) 
    \gaxi_full_sm.arlen_cntr[5]_i_1 
       (.I0(\FSM_sequential_gaxi_full_sm.present_state[1]_i_6_n_0 ),
        .I1(\gaxi_full_sm.arlen_cntr_reg[5] ),
        .I2(s_axi4_arlen[4]),
        .I3(s_axi4_arlen[5]),
        .I4(\gaxi_full_sm.arlen_cntr[5]_i_3_n_0 ),
        .I5(\gaxi_full_sm.arlen_cntr[5]_i_4_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \gaxi_full_sm.arlen_cntr[5]_i_3 
       (.I0(s_axi4_arlen[3]),
        .I1(s_axi4_arlen[2]),
        .I2(s_axi4_arlen[1]),
        .I3(s_axi4_arlen[0]),
        .I4(present_state[1]),
        .I5(\gaxi_full_sm.r_last_r0 ),
        .O(\gaxi_full_sm.arlen_cntr[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA251)) 
    \gaxi_full_sm.arlen_cntr[5]_i_4 
       (.I0(\gaxi_full_sm.arlen_cntr_reg[5]_0 ),
        .I1(\gaxi_full_sm.arready_int_reg_rep__0_n_0 ),
        .I2(present_state[0]),
        .I3(Q[5]),
        .O(\gaxi_full_sm.arlen_cntr[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFAAE50045004FAAE)) 
    \gaxi_full_sm.arlen_cntr[6]_i_1 
       (.I0(\FSM_sequential_gaxi_full_sm.present_state[1]_i_6_n_0 ),
        .I1(s_axi4_arlen[7]),
        .I2(s_axi4_arlen[6]),
        .I3(\gaxi_full_sm.arlen_cntr[7]_i_4_n_0 ),
        .I4(\gaxi_full_sm.arlen_cntr_reg[4] ),
        .I5(Q[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gaxi_full_sm.arlen_cntr[6]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\gaxi_full_sm.arlen_cntr_reg[4] ));
  LUT6 #(
    .INIT(64'h5555DDDDF5FFDDDD)) 
    \gaxi_full_sm.arlen_cntr[7]_i_1 
       (.I0(\gaxi_full_sm.r_last_r_i_3_n_0 ),
        .I1(\gaxi_full_sm.arready_int_reg_rep_n_0 ),
        .I2(s_axi4_rready),
        .I3(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I4(present_state[0]),
        .I5(present_state[1]),
        .O(E));
  LUT6 #(
    .INIT(64'h99999999FFF00000)) 
    \gaxi_full_sm.arlen_cntr[7]_i_2 
       (.I0(Q[7]),
        .I1(\gaxi_full_sm.arlen_cntr_reg[7] ),
        .I2(\gaxi_full_sm.arlen_cntr[7]_i_4_n_0 ),
        .I3(s_axi4_arlen[6]),
        .I4(s_axi4_arlen[7]),
        .I5(\FSM_sequential_gaxi_full_sm.present_state[1]_i_6_n_0 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gaxi_full_sm.arlen_cntr[7]_i_4 
       (.I0(\gaxi_full_sm.arlen_cntr[5]_i_3_n_0 ),
        .I1(s_axi4_arlen[5]),
        .I2(s_axi4_arlen[4]),
        .O(\gaxi_full_sm.arlen_cntr[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gaxi_full_sm.arready_int_i_1 
       (.I0(\gaxi_full_sm.arready_int_i_2_n_0 ),
        .I1(\gaxi_full_sm.arready_int_i_3_n_0 ),
        .I2(\gaxi_full_sm.arready_int_i_4_n_0 ),
        .I3(\gaxi_full_sm.arready_int_i_5_n_0 ),
        .I4(\gaxi_full_sm.arready_int_i_6_n_0 ),
        .I5(\gaxi_full_sm.arready_int_i_7_n_0 ),
        .O(\gaxi_full_sm.arready_int_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \gaxi_full_sm.arready_int_i_2 
       (.I0(s_axi4_araddr[31]),
        .I1(s_axi4_araddr[30]),
        .I2(s_axi4_araddr[29]),
        .I3(s_axi4_araddr[28]),
        .I4(\gaxi_full_sm.arready_int_reg_rep_n_0 ),
        .I5(axi4_fifo_readyn),
        .O(\gaxi_full_sm.arready_int_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gaxi_full_sm.arready_int_i_3 
       (.I0(s_axi4_araddr[18]),
        .I1(s_axi4_araddr[19]),
        .I2(s_axi4_araddr[16]),
        .I3(s_axi4_araddr[17]),
        .I4(s_axi4_araddr[21]),
        .I5(s_axi4_araddr[20]),
        .O(\gaxi_full_sm.arready_int_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \gaxi_full_sm.arready_int_i_4 
       (.I0(s_axi4_araddr[0]),
        .I1(s_axi4_araddr[1]),
        .I2(s_axi4_arvalid),
        .I3(\gaxi_full_sm.allowed_reg_n_0 ),
        .I4(s_axi4_araddr[3]),
        .I5(s_axi4_araddr[2]),
        .O(\gaxi_full_sm.arready_int_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gaxi_full_sm.arready_int_i_5 
       (.I0(s_axi4_araddr[24]),
        .I1(s_axi4_araddr[25]),
        .I2(s_axi4_araddr[22]),
        .I3(s_axi4_araddr[23]),
        .I4(s_axi4_araddr[27]),
        .I5(s_axi4_araddr[26]),
        .O(\gaxi_full_sm.arready_int_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gaxi_full_sm.arready_int_i_6 
       (.I0(s_axi4_araddr[6]),
        .I1(s_axi4_araddr[7]),
        .I2(s_axi4_araddr[4]),
        .I3(s_axi4_araddr[5]),
        .I4(s_axi4_araddr[9]),
        .I5(s_axi4_araddr[8]),
        .O(\gaxi_full_sm.arready_int_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \gaxi_full_sm.arready_int_i_7 
       (.I0(s_axi4_araddr[12]),
        .I1(s_axi4_araddr[13]),
        .I2(s_axi4_araddr[10]),
        .I3(s_axi4_araddr[11]),
        .I4(s_axi4_araddr[15]),
        .I5(s_axi4_araddr[14]),
        .O(\gaxi_full_sm.arready_int_i_7_n_0 ));
  (* ORIG_CELL_NAME = "gaxi_full_sm.arready_int_reg" *) 
  (* RTL_MAX_FANOUT = "found" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arready_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gaxi_full_sm.arready_int_i_1_n_0 ),
        .Q(arready_int),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "gaxi_full_sm.arready_int_reg" *) 
  (* RTL_MAX_FANOUT = "found" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arready_int_reg_rep 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gaxi_full_sm.arready_int_rep_i_1_n_0 ),
        .Q(\gaxi_full_sm.arready_int_reg_rep_n_0 ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "gaxi_full_sm.arready_int_reg" *) 
  (* RTL_MAX_FANOUT = "found" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arready_int_reg_rep__0 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gaxi_full_sm.arready_int_rep_i_1__0_n_0 ),
        .Q(\gaxi_full_sm.arready_int_reg_rep__0_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gaxi_full_sm.arready_int_rep_i_1 
       (.I0(\gaxi_full_sm.arready_int_i_2_n_0 ),
        .I1(\gaxi_full_sm.arready_int_i_3_n_0 ),
        .I2(\gaxi_full_sm.arready_int_i_4_n_0 ),
        .I3(\gaxi_full_sm.arready_int_i_5_n_0 ),
        .I4(\gaxi_full_sm.arready_int_i_6_n_0 ),
        .I5(\gaxi_full_sm.arready_int_i_7_n_0 ),
        .O(\gaxi_full_sm.arready_int_rep_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gaxi_full_sm.arready_int_rep_i_1__0 
       (.I0(\gaxi_full_sm.arready_int_i_2_n_0 ),
        .I1(\gaxi_full_sm.arready_int_i_3_n_0 ),
        .I2(\gaxi_full_sm.arready_int_i_4_n_0 ),
        .I3(\gaxi_full_sm.arready_int_i_5_n_0 ),
        .I4(\gaxi_full_sm.arready_int_i_6_n_0 ),
        .I5(\gaxi_full_sm.arready_int_i_7_n_0 ),
        .O(\gaxi_full_sm.arready_int_rep_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000220000)) 
    \gaxi_full_sm.outstanding_read_r_i_1 
       (.I0(\gaxi_full_sm.arready_int_reg_rep_n_0 ),
        .I1(\FSM_sequential_gaxi_full_sm.present_state[1]_i_4_n_0 ),
        .I2(\gaxi_full_sm.outstanding_read_r ),
        .I3(\gaxi_full_sm.r_last_r0 ),
        .I4(present_state[1]),
        .I5(present_state[0]),
        .O(\gaxi_full_sm.outstanding_read_r_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.outstanding_read_r_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gaxi_full_sm.outstanding_read_r_i_1_n_0 ),
        .Q(\gaxi_full_sm.outstanding_read_r ),
        .R(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \gaxi_full_sm.r_last_r_i_1 
       (.I0(s_axi4_rready),
        .I1(\gaxi_full_sm.r_valid_r_reg_0 ),
        .O(\gaxi_full_sm.r_last_r0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'hFFFFC500)) 
    \gaxi_full_sm.r_last_r_i_2 
       (.I0(\gaxi_full_sm.r_last_r_i_3_n_0 ),
        .I1(\gaxi_full_sm.outstanding_read_r ),
        .I2(present_state[1]),
        .I3(present_state[0]),
        .I4(\gaxi_full_sm.r_last_r_i_4_n_0 ),
        .O(r_last_c));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \gaxi_full_sm.r_last_r_i_3 
       (.I0(Q[7]),
        .I1(\gaxi_full_sm.arlen_cntr_reg[4] ),
        .I2(Q[6]),
        .I3(s_axi4_rready),
        .O(\gaxi_full_sm.r_last_r_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gaxi_full_sm.r_last_r_i_4 
       (.I0(\FSM_sequential_gaxi_full_sm.present_state[1]_i_6_n_0 ),
        .I1(s_axi4_arlen[5]),
        .I2(s_axi4_arlen[4]),
        .I3(s_axi4_arlen[7]),
        .I4(s_axi4_arlen[6]),
        .I5(\gaxi_full_sm.arlen_cntr[5]_i_3_n_0 ),
        .O(\gaxi_full_sm.r_last_r_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.r_last_r_reg 
       (.C(s_axi_aclk),
        .CE(\gaxi_full_sm.r_last_r0 ),
        .D(r_last_c),
        .Q(s_axi4_rlast),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.r_valid_r1_reg 
       (.C(s_axi_aclk),
        .CE(\gaxi_full_sm.r_last_r0 ),
        .D(\gaxi_full_sm.r_valid_c ),
        .Q(\gaxi_full_sm.r_valid_r1 ),
        .R(SR));
  LUT4 #(
    .INIT(16'hFC5C)) 
    \gaxi_full_sm.r_valid_r_i_1 
       (.I0(present_state[1]),
        .I1(\gaxi_full_sm.arready_int_reg_rep__0_n_0 ),
        .I2(present_state[0]),
        .I3(\gaxi_full_sm.outstanding_read_r ),
        .O(\gaxi_full_sm.r_valid_c ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.r_valid_r_reg 
       (.C(s_axi_aclk),
        .CE(\gaxi_full_sm.r_last_r0 ),
        .D(\gaxi_full_sm.r_valid_c ),
        .Q(\gaxi_full_sm.r_valid_r_reg_0 ),
        .R(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    \grid.S_AXI_RID[0]_i_1 
       (.I0(s_axi4_arid),
        .I1(\gaxi_full_sm.arready_int_reg_rep__0_n_0 ),
        .I2(s_axi4_rid),
        .O(s_axi4_arid_0_sn_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_read_wrapper
   (s_axi4_arready,
    out,
    \gaxi_full_sm.r_valid_r_reg ,
    s_axi4_rlast,
    s_axi4_rid,
    m_axis_tready,
    SR,
    s_axi_aclk,
    s_axi4_araddr,
    axi4_fifo_readyn,
    s_axi4_arlen,
    s_axi4_rready,
    s_axi4_arvalid,
    s_axi4_arid);
  output s_axi4_arready;
  output out;
  output \gaxi_full_sm.r_valid_r_reg ;
  output s_axi4_rlast;
  output [0:0]s_axi4_rid;
  output m_axis_tready;
  input [0:0]SR;
  input s_axi_aclk;
  input [31:0]s_axi4_araddr;
  input axi4_fifo_readyn;
  input [7:0]s_axi4_arlen;
  input s_axi4_rready;
  input s_axi4_arvalid;
  input [0:0]s_axi4_arid;

  wire [0:0]SR;
  wire axi4_fifo_readyn;
  wire axi_read_fsm_n_10;
  wire axi_read_fsm_n_11;
  wire axi_read_fsm_n_12;
  wire axi_read_fsm_n_13;
  wire axi_read_fsm_n_15;
  wire axi_read_fsm_n_4;
  wire axi_read_fsm_n_5;
  wire axi_read_fsm_n_6;
  wire axi_read_fsm_n_7;
  wire axi_read_fsm_n_8;
  wire axi_read_fsm_n_9;
  wire [7:0]\gaxi_full_sm.arlen_cntr ;
  wire \gaxi_full_sm.arlen_cntr[1]_i_2_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[4]_i_3_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[5]_i_2_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[5]_i_5_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[7]_i_3_n_0 ;
  wire \gaxi_full_sm.r_valid_r_reg ;
  wire m_axis_tready;
  wire out;
  wire [31:0]s_axi4_araddr;
  wire [0:0]s_axi4_arid;
  wire [7:0]s_axi4_arlen;
  wire s_axi4_arready;
  wire s_axi4_arvalid;
  wire [0:0]s_axi4_rid;
  wire s_axi4_rlast;
  wire s_axi4_rready;
  wire s_axi_aclk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_read_fsm axi_read_fsm
       (.D({axi_read_fsm_n_4,axi_read_fsm_n_5,axi_read_fsm_n_6,axi_read_fsm_n_7,axi_read_fsm_n_8,axi_read_fsm_n_9,axi_read_fsm_n_10,axi_read_fsm_n_11}),
        .E(axi_read_fsm_n_13),
        .Q(\gaxi_full_sm.arlen_cntr ),
        .SR(SR),
        .axi4_fifo_readyn(axi4_fifo_readyn),
        .\gaxi_full_sm.arlen_cntr_reg[0] (\gaxi_full_sm.arlen_cntr[1]_i_2_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[4] (axi_read_fsm_n_12),
        .\gaxi_full_sm.arlen_cntr_reg[4]_0 (\gaxi_full_sm.arlen_cntr[4]_i_3_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[5] (\gaxi_full_sm.arlen_cntr[5]_i_2_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[5]_0 (\gaxi_full_sm.arlen_cntr[5]_i_5_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[7] (\gaxi_full_sm.arlen_cntr[7]_i_3_n_0 ),
        .\gaxi_full_sm.r_valid_r_reg_0 (\gaxi_full_sm.r_valid_r_reg ),
        .m_axis_tready(m_axis_tready),
        .out(out),
        .s_axi4_araddr(s_axi4_araddr),
        .s_axi4_arid(s_axi4_arid),
        .s_axi4_arid_0_sp_1(axi_read_fsm_n_15),
        .s_axi4_arlen(s_axi4_arlen),
        .s_axi4_arready(s_axi4_arready),
        .s_axi4_arvalid(s_axi4_arvalid),
        .s_axi4_rid(s_axi4_rid),
        .s_axi4_rlast(s_axi4_rlast),
        .s_axi4_rready(s_axi4_rready),
        .s_axi_aclk(s_axi_aclk));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gaxi_full_sm.arlen_cntr[1]_i_2 
       (.I0(s_axi4_arlen[6]),
        .I1(s_axi4_arlen[7]),
        .I2(s_axi4_arlen[4]),
        .I3(s_axi4_arlen[5]),
        .I4(s_axi4_arlen[3]),
        .I5(s_axi4_arlen[2]),
        .O(\gaxi_full_sm.arlen_cntr[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gaxi_full_sm.arlen_cntr[4]_i_3 
       (.I0(\gaxi_full_sm.arlen_cntr [2]),
        .I1(\gaxi_full_sm.arlen_cntr [0]),
        .I2(\gaxi_full_sm.arlen_cntr [1]),
        .I3(\gaxi_full_sm.arlen_cntr [3]),
        .O(\gaxi_full_sm.arlen_cntr[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxi_full_sm.arlen_cntr[5]_i_2 
       (.I0(s_axi4_arlen[6]),
        .I1(s_axi4_arlen[7]),
        .O(\gaxi_full_sm.arlen_cntr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gaxi_full_sm.arlen_cntr[5]_i_5 
       (.I0(\gaxi_full_sm.arlen_cntr [3]),
        .I1(\gaxi_full_sm.arlen_cntr [1]),
        .I2(\gaxi_full_sm.arlen_cntr [0]),
        .I3(\gaxi_full_sm.arlen_cntr [2]),
        .I4(\gaxi_full_sm.arlen_cntr [4]),
        .O(\gaxi_full_sm.arlen_cntr[5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxi_full_sm.arlen_cntr[7]_i_3 
       (.I0(axi_read_fsm_n_12),
        .I1(\gaxi_full_sm.arlen_cntr [6]),
        .O(\gaxi_full_sm.arlen_cntr[7]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gaxi_full_sm.arlen_cntr_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_read_fsm_n_13),
        .D(axi_read_fsm_n_11),
        .Q(\gaxi_full_sm.arlen_cntr [0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_read_fsm_n_13),
        .D(axi_read_fsm_n_10),
        .Q(\gaxi_full_sm.arlen_cntr [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_read_fsm_n_13),
        .D(axi_read_fsm_n_9),
        .Q(\gaxi_full_sm.arlen_cntr [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_read_fsm_n_13),
        .D(axi_read_fsm_n_8),
        .Q(\gaxi_full_sm.arlen_cntr [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_read_fsm_n_13),
        .D(axi_read_fsm_n_7),
        .Q(\gaxi_full_sm.arlen_cntr [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_read_fsm_n_13),
        .D(axi_read_fsm_n_6),
        .Q(\gaxi_full_sm.arlen_cntr [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[6] 
       (.C(s_axi_aclk),
        .CE(axi_read_fsm_n_13),
        .D(axi_read_fsm_n_5),
        .Q(\gaxi_full_sm.arlen_cntr [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[7] 
       (.C(s_axi_aclk),
        .CE(axi_read_fsm_n_13),
        .D(axi_read_fsm_n_4),
        .Q(\gaxi_full_sm.arlen_cntr [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \grid.S_AXI_RID_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_read_fsm_n_15),
        .Q(s_axi4_rid),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_wrapper
   (s_axi4_arready,
    out,
    s_axi4_awready,
    s_axi4_wready,
    s_axi4_bid,
    \gaxi_full_sm.r_valid_r_reg ,
    s_axi4_rlast,
    \gaxi_bvalid_id_r.bvalid_r_reg ,
    s_axi4_rid,
    s_axi4_wvalid_0,
    Q,
    E,
    s_axi4_wvalid_1,
    m_axis_tready,
    sel,
    SR,
    s_axi_aclk,
    s_axi4_awid,
    s_axi4_wvalid,
    s_axi4_wstrb,
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ,
    s_axi4_araddr,
    axi4_fifo_readyn,
    s_axi4_arlen,
    s_axi4_rready,
    s_axi4_arvalid,
    s_axi4_bready,
    s_axi4_arid,
    s_axi4_awlen,
    s_axi4_awaddr,
    s_axi4_awvalid);
  output s_axi4_arready;
  output out;
  output s_axi4_awready;
  output s_axi4_wready;
  output [0:0]s_axi4_bid;
  output \gaxi_full_sm.r_valid_r_reg ;
  output s_axi4_rlast;
  output \gaxi_bvalid_id_r.bvalid_r_reg ;
  output [0:0]s_axi4_rid;
  output [15:0]s_axi4_wvalid_0;
  output [1:0]Q;
  output [0:0]E;
  output [0:0]s_axi4_wvalid_1;
  output m_axis_tready;
  output sel;
  input [0:0]SR;
  input s_axi_aclk;
  input [0:0]s_axi4_awid;
  input s_axi4_wvalid;
  input [15:0]s_axi4_wstrb;
  input \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ;
  input [31:0]s_axi4_araddr;
  input axi4_fifo_readyn;
  input [7:0]s_axi4_arlen;
  input s_axi4_rready;
  input s_axi4_arvalid;
  input s_axi4_bready;
  input [0:0]s_axi4_arid;
  input [7:0]s_axi4_awlen;
  input [31:0]s_axi4_awaddr;
  input s_axi4_awvalid;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire axi4_fifo_readyn;
  wire \gaxi_bvalid_id_r.bvalid_r_reg ;
  wire \gaxi_full_sm.r_valid_r_reg ;
  wire \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ;
  wire m_axis_tready;
  wire out;
  wire [31:0]s_axi4_araddr;
  wire [0:0]s_axi4_arid;
  wire [7:0]s_axi4_arlen;
  wire s_axi4_arready;
  wire s_axi4_arvalid;
  wire [31:0]s_axi4_awaddr;
  wire [0:0]s_axi4_awid;
  wire [7:0]s_axi4_awlen;
  wire s_axi4_awready;
  wire s_axi4_awvalid;
  wire [0:0]s_axi4_bid;
  wire s_axi4_bready;
  wire [0:0]s_axi4_rid;
  wire s_axi4_rlast;
  wire s_axi4_rready;
  wire s_axi4_wready;
  wire [15:0]s_axi4_wstrb;
  wire s_axi4_wvalid;
  wire [15:0]s_axi4_wvalid_0;
  wire [0:0]s_axi4_wvalid_1;
  wire s_axi_aclk;
  wire sel;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_read_wrapper axi_rd_sm
       (.SR(SR),
        .axi4_fifo_readyn(axi4_fifo_readyn),
        .\gaxi_full_sm.r_valid_r_reg (\gaxi_full_sm.r_valid_r_reg ),
        .m_axis_tready(m_axis_tready),
        .out(out),
        .s_axi4_araddr(s_axi4_araddr),
        .s_axi4_arid(s_axi4_arid),
        .s_axi4_arlen(s_axi4_arlen),
        .s_axi4_arready(s_axi4_arready),
        .s_axi4_arvalid(s_axi4_arvalid),
        .s_axi4_rid(s_axi4_rid),
        .s_axi4_rlast(s_axi4_rlast),
        .s_axi4_rready(s_axi4_rready),
        .s_axi_aclk(s_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_write_wrapper axi_wr_fsm
       (.E(E),
        .Q(Q),
        .SR(SR),
        .\gaxi_bvalid_id_r.bvalid_r_reg_0 (\gaxi_bvalid_id_r.bvalid_r_reg ),
        .\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] (\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .s_axi4_awaddr(s_axi4_awaddr),
        .s_axi4_awid(s_axi4_awid),
        .s_axi4_awlen(s_axi4_awlen),
        .s_axi4_awready(s_axi4_awready),
        .s_axi4_awvalid(s_axi4_awvalid),
        .s_axi4_bid(s_axi4_bid),
        .s_axi4_bready(s_axi4_bready),
        .s_axi4_wready(s_axi4_wready),
        .s_axi4_wstrb(s_axi4_wstrb),
        .s_axi4_wvalid(s_axi4_wvalid),
        .s_axi4_wvalid_0(s_axi4_wvalid_0),
        .s_axi4_wvalid_1(s_axi4_wvalid_1),
        .s_axi_aclk(s_axi_aclk),
        .sel(sel));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_write_fsm
   (s_axi4_awready,
    s_axi4_wready,
    s_axi4_wvalid_0,
    Q,
    E,
    s_axi4_wvalid_1,
    D,
    \FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 ,
    p_0_in1_out,
    \bvalid_count_r_reg[2] ,
    bvalid_c,
    \bvalid_count_r_reg[2]_0 ,
    sel,
    SR,
    s_axi_aclk,
    s_axi4_wvalid,
    s_axi4_wstrb,
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ,
    s_axi4_bready,
    \gaxif_wlast_gen.awlen_cntr_r_reg[7] ,
    \gaxif_wlast_gen.awlen_cntr_r_reg[4] ,
    s_axi4_awlen,
    \gaxif_wlast_gen.awlen_cntr_r_reg[6] ,
    s_axi4_awaddr,
    s_axi4_awvalid,
    \bvalid_count_r_reg[0] ,
    \bvalid_count_r_reg[0]_0 );
  output s_axi4_awready;
  output s_axi4_wready;
  output [15:0]s_axi4_wvalid_0;
  output [1:0]Q;
  output [0:0]E;
  output [0:0]s_axi4_wvalid_1;
  output [7:0]D;
  output [0:0]\FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 ;
  output p_0_in1_out;
  output [0:0]\bvalid_count_r_reg[2] ;
  output bvalid_c;
  output [1:0]\bvalid_count_r_reg[2]_0 ;
  output sel;
  input [0:0]SR;
  input s_axi_aclk;
  input s_axi4_wvalid;
  input [15:0]s_axi4_wstrb;
  input \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ;
  input s_axi4_bready;
  input [7:0]\gaxif_wlast_gen.awlen_cntr_r_reg[7] ;
  input \gaxif_wlast_gen.awlen_cntr_r_reg[4] ;
  input [7:0]s_axi4_awlen;
  input \gaxif_wlast_gen.awlen_cntr_r_reg[6] ;
  input [31:0]s_axi4_awaddr;
  input s_axi4_awvalid;
  input [2:0]\bvalid_count_r_reg[0] ;
  input \bvalid_count_r_reg[0]_0 ;

  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_sequential_gaxi_full_sm.present_state[0]_i_2_n_0 ;
  wire \FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ;
  wire [0:0]\FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire addr_en_c;
  wire aw_ready_c;
  wire axi4_tdfd_en;
  wire bready_timeout_c__1;
  wire bvalid_c;
  wire [2:0]\bvalid_count_r_reg[0] ;
  wire \bvalid_count_r_reg[0]_0 ;
  wire [0:0]\bvalid_count_r_reg[2] ;
  wire [1:0]\bvalid_count_r_reg[2]_0 ;
  wire \gaxi_full_sm.aw_ready_r_i_10_n_0 ;
  wire \gaxi_full_sm.aw_ready_r_i_11_n_0 ;
  wire \gaxi_full_sm.aw_ready_r_i_12_n_0 ;
  wire \gaxi_full_sm.aw_ready_r_i_4_n_0 ;
  wire \gaxi_full_sm.aw_ready_r_i_5_n_0 ;
  wire \gaxi_full_sm.aw_ready_r_i_6_n_0 ;
  wire \gaxi_full_sm.aw_ready_r_i_7_n_0 ;
  wire \gaxi_full_sm.aw_ready_r_i_8_n_0 ;
  wire \gaxi_full_sm.aw_ready_r_i_9_n_0 ;
  wire \gaxi_full_sm.w_ready_r_i_3_n_0 ;
  wire \gaxi_full_sm.w_ready_r_i_4_n_0 ;
  wire \gaxif_wlast_gen.awlen_cntr_r_reg[4] ;
  wire \gaxif_wlast_gen.awlen_cntr_r_reg[6] ;
  wire [7:0]\gaxif_wlast_gen.awlen_cntr_r_reg[7] ;
  wire \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ;
  wire [1:0]next_state;
  wire p_0_in1_out;
  wire [31:0]s_axi4_awaddr;
  wire [7:0]s_axi4_awlen;
  wire s_axi4_awready;
  wire s_axi4_awvalid;
  wire s_axi4_bready;
  wire s_axi4_wready;
  wire [15:0]s_axi4_wstrb;
  wire s_axi4_wvalid;
  wire [15:0]s_axi4_wvalid_0;
  wire [0:0]s_axi4_wvalid_1;
  wire s_axi_aclk;
  wire sel;
  wire w_last_c__7;
  wire w_ready_c;

  LUT6 #(
    .INIT(64'hF0F0F0F2FCFCF0F2)) 
    \FSM_sequential_gaxi_full_sm.present_state[0]_i_1__0 
       (.I0(axi4_tdfd_en),
        .I1(Q[0]),
        .I2(\FSM_sequential_gaxi_full_sm.present_state[0]_i_2_n_0 ),
        .I3(s_axi4_wvalid),
        .I4(Q[1]),
        .I5(s_axi4_bready),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h008F8000)) 
    \FSM_sequential_gaxi_full_sm.present_state[0]_i_2 
       (.I0(w_last_c__7),
        .I1(bready_timeout_c__1),
        .I2(s_axi4_wvalid),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\FSM_sequential_gaxi_full_sm.present_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \FSM_sequential_gaxi_full_sm.present_state[0]_i_3 
       (.I0(\bvalid_count_r_reg[0] [2]),
        .I1(\bvalid_count_r_reg[0] [1]),
        .I2(\bvalid_count_r_reg[0] [0]),
        .O(bready_timeout_c__1));
  LUT6 #(
    .INIT(64'h3FEE2E223F003F00)) 
    \FSM_sequential_gaxi_full_sm.present_state[1]_i_1__0 
       (.I0(axi4_tdfd_en),
        .I1(Q[0]),
        .I2(s_axi4_bready),
        .I3(Q[1]),
        .I4(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ),
        .I5(s_axi4_wvalid),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h02FF)) 
    \FSM_sequential_gaxi_full_sm.present_state[1]_i_2 
       (.I0(\bvalid_count_r_reg[0] [0]),
        .I1(\bvalid_count_r_reg[0] [1]),
        .I2(\bvalid_count_r_reg[0] [2]),
        .I3(w_last_c__7),
        .O(\FSM_sequential_gaxi_full_sm.present_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "os_wr:01,reg_wraddr:10,wr_mem:11,wait_wraddr:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gaxi_full_sm.present_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(Q[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "os_wr:01,reg_wraddr:10,wr_mem:11,wait_wraddr:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gaxi_full_sm.present_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(Q[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \bvalid_count_r[1]_i_1 
       (.I0(\bvalid_count_r_reg[0] [1]),
        .I1(\bvalid_count_r_reg[0] [0]),
        .I2(bvalid_c),
        .O(\bvalid_count_r_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'h00FEFF00FF00FF00)) 
    \bvalid_count_r[2]_i_1 
       (.I0(\bvalid_count_r_reg[0] [2]),
        .I1(\bvalid_count_r_reg[0] [0]),
        .I2(\bvalid_count_r_reg[0] [1]),
        .I3(bvalid_c),
        .I4(s_axi4_bready),
        .I5(\bvalid_count_r_reg[0]_0 ),
        .O(\bvalid_count_r_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \bvalid_count_r[2]_i_2 
       (.I0(\bvalid_count_r_reg[0] [2]),
        .I1(\bvalid_count_r_reg[0] [0]),
        .I2(\bvalid_count_r_reg[0] [1]),
        .I3(bvalid_c),
        .O(\bvalid_count_r_reg[2]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \gaxi_bid_gen.axi_bid_array_reg_0_3_0_0_i_1 
       (.I0(axi4_tdfd_en),
        .I1(s_axi4_awready),
        .O(p_0_in1_out));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(s_axi4_wvalid),
        .I3(w_last_c__7),
        .O(bvalid_c));
  LUT4 #(
    .INIT(16'h0004)) 
    \gaxi_full_sm.aw_ready_r_i_10 
       (.I0(s_axi4_awaddr[3]),
        .I1(s_axi4_awvalid),
        .I2(s_axi4_awaddr[5]),
        .I3(s_axi4_awaddr[4]),
        .O(\gaxi_full_sm.aw_ready_r_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gaxi_full_sm.aw_ready_r_i_11 
       (.I0(s_axi4_awaddr[28]),
        .I1(s_axi4_awaddr[0]),
        .I2(s_axi4_awaddr[2]),
        .I3(s_axi4_awaddr[30]),
        .O(\gaxi_full_sm.aw_ready_r_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gaxi_full_sm.aw_ready_r_i_12 
       (.I0(s_axi4_awaddr[20]),
        .I1(s_axi4_awaddr[21]),
        .I2(s_axi4_awaddr[22]),
        .I3(s_axi4_awaddr[23]),
        .O(\gaxi_full_sm.aw_ready_r_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'hF3350335)) 
    \gaxi_full_sm.aw_ready_r_i_2 
       (.I0(axi4_tdfd_en),
        .I1(\gaxi_full_sm.aw_ready_r_i_4_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(s_axi4_bready),
        .O(aw_ready_c));
  LUT4 #(
    .INIT(16'h0008)) 
    \gaxi_full_sm.aw_ready_r_i_3 
       (.I0(\gaxi_full_sm.aw_ready_r_i_5_n_0 ),
        .I1(\gaxi_full_sm.aw_ready_r_i_6_n_0 ),
        .I2(\gaxi_full_sm.aw_ready_r_i_7_n_0 ),
        .I3(\gaxi_full_sm.aw_ready_r_i_8_n_0 ),
        .O(axi4_tdfd_en));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h5755FFFF)) 
    \gaxi_full_sm.aw_ready_r_i_4 
       (.I0(w_last_c__7),
        .I1(\bvalid_count_r_reg[0] [2]),
        .I2(\bvalid_count_r_reg[0] [1]),
        .I3(\bvalid_count_r_reg[0] [0]),
        .I4(s_axi4_wvalid),
        .O(\gaxi_full_sm.aw_ready_r_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \gaxi_full_sm.aw_ready_r_i_5 
       (.I0(s_axi4_awaddr[14]),
        .I1(s_axi4_awaddr[15]),
        .I2(s_axi4_awaddr[16]),
        .I3(s_axi4_awaddr[29]),
        .I4(s_axi4_awready),
        .I5(s_axi4_awaddr[31]),
        .O(\gaxi_full_sm.aw_ready_r_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \gaxi_full_sm.aw_ready_r_i_6 
       (.I0(\gaxi_full_sm.aw_ready_r_i_9_n_0 ),
        .I1(s_axi4_awaddr[9]),
        .I2(s_axi4_awaddr[8]),
        .I3(s_axi4_awaddr[7]),
        .I4(s_axi4_awaddr[6]),
        .I5(\gaxi_full_sm.aw_ready_r_i_10_n_0 ),
        .O(\gaxi_full_sm.aw_ready_r_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gaxi_full_sm.aw_ready_r_i_7 
       (.I0(s_axi4_awaddr[27]),
        .I1(s_axi4_awaddr[26]),
        .I2(s_axi4_awaddr[25]),
        .I3(s_axi4_awaddr[24]),
        .I4(\gaxi_full_sm.aw_ready_r_i_11_n_0 ),
        .O(\gaxi_full_sm.aw_ready_r_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gaxi_full_sm.aw_ready_r_i_8 
       (.I0(s_axi4_awaddr[19]),
        .I1(s_axi4_awaddr[18]),
        .I2(s_axi4_awaddr[17]),
        .I3(s_axi4_awaddr[1]),
        .I4(\gaxi_full_sm.aw_ready_r_i_12_n_0 ),
        .O(\gaxi_full_sm.aw_ready_r_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \gaxi_full_sm.aw_ready_r_i_9 
       (.I0(s_axi4_awaddr[13]),
        .I1(s_axi4_awaddr[12]),
        .I2(s_axi4_awaddr[11]),
        .I3(s_axi4_awaddr[10]),
        .O(\gaxi_full_sm.aw_ready_r_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.aw_ready_r_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_ready_c),
        .Q(s_axi4_awready),
        .R(SR));
  LUT6 #(
    .INIT(64'h00F7007777F07700)) 
    \gaxi_full_sm.w_ready_r_i_1 
       (.I0(w_last_c__7),
        .I1(s_axi4_wvalid),
        .I2(axi4_tdfd_en),
        .I3(Q[0]),
        .I4(\gaxi_full_sm.w_ready_r_i_3_n_0 ),
        .I5(Q[1]),
        .O(w_ready_c));
  LUT4 #(
    .INIT(16'h0002)) 
    \gaxi_full_sm.w_ready_r_i_2 
       (.I0(\gaxi_full_sm.w_ready_r_i_4_n_0 ),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [2]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [1]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [0]),
        .O(w_last_c__7));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \gaxi_full_sm.w_ready_r_i_3 
       (.I0(Q[1]),
        .I1(\bvalid_count_r_reg[0] [0]),
        .I2(\bvalid_count_r_reg[0] [1]),
        .I3(\bvalid_count_r_reg[0] [2]),
        .O(\gaxi_full_sm.w_ready_r_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \gaxi_full_sm.w_ready_r_i_4 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [5]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [6]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [3]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [4]),
        .I4(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [7]),
        .I5(s_axi4_wvalid),
        .O(\gaxi_full_sm.w_ready_r_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.w_ready_r_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(w_ready_c),
        .Q(s_axi4_wready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \gaxif_wlast_gen.awlen_cntr_r[0]_i_1 
       (.I0(s_axi4_awlen[0]),
        .I1(addr_en_c),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \gaxif_wlast_gen.awlen_cntr_r[1]_i_1 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [0]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [1]),
        .I2(addr_en_c),
        .I3(s_axi4_awlen[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFA900A9)) 
    \gaxif_wlast_gen.awlen_cntr_r[2]_i_1 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [2]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [1]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [0]),
        .I3(addr_en_c),
        .I4(s_axi4_awlen[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \gaxif_wlast_gen.awlen_cntr_r[3]_i_1 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [3]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [0]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [1]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [2]),
        .I4(addr_en_c),
        .I5(s_axi4_awlen[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFFA900A9)) 
    \gaxif_wlast_gen.awlen_cntr_r[4]_i_1 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [4]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[4] ),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [3]),
        .I3(addr_en_c),
        .I4(s_axi4_awlen[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \gaxif_wlast_gen.awlen_cntr_r[5]_i_1 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [5]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [3]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[4] ),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [4]),
        .I4(addr_en_c),
        .I5(s_axi4_awlen[5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hF909)) 
    \gaxif_wlast_gen.awlen_cntr_r[6]_i_1 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [6]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[6] ),
        .I2(addr_en_c),
        .I3(s_axi4_awlen[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'hFFFFBEAA)) 
    \gaxif_wlast_gen.awlen_cntr_r[7]_i_1 
       (.I0(w_last_c__7),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(s_axi4_wvalid),
        .I4(addr_en_c),
        .O(\FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFFA900A9)) 
    \gaxif_wlast_gen.awlen_cntr_r[7]_i_2 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [7]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[6] ),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [6]),
        .I3(addr_en_c),
        .I4(s_axi4_awlen[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h0700)) 
    \gaxif_wlast_gen.awlen_cntr_r[7]_i_3 
       (.I0(Q[1]),
        .I1(\gaxi_full_sm.aw_ready_r_i_4_n_0 ),
        .I2(Q[0]),
        .I3(axi4_tdfd_en),
        .O(addr_en_c));
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb[0]_i_1 
       (.I0(s_axi4_wvalid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi4_wstrb[0]),
        .I4(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .O(s_axi4_wvalid_0[0]));
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb[10]_i_1 
       (.I0(s_axi4_wvalid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi4_wstrb[10]),
        .I4(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .O(s_axi4_wvalid_0[10]));
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb[11]_i_1 
       (.I0(s_axi4_wvalid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi4_wstrb[11]),
        .I4(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .O(s_axi4_wvalid_0[11]));
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb[12]_i_1 
       (.I0(s_axi4_wvalid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi4_wstrb[12]),
        .I4(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .O(s_axi4_wvalid_0[12]));
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb[13]_i_1 
       (.I0(s_axi4_wvalid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi4_wstrb[13]),
        .I4(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .O(s_axi4_wvalid_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb[14]_i_1 
       (.I0(s_axi4_wvalid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi4_wstrb[14]),
        .I4(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .O(s_axi4_wvalid_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hFF28)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb[15]_i_1 
       (.I0(s_axi4_wvalid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb[15]_i_2 
       (.I0(s_axi4_wvalid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi4_wstrb[15]),
        .I4(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .O(s_axi4_wvalid_0[15]));
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb[1]_i_1 
       (.I0(s_axi4_wvalid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi4_wstrb[1]),
        .I4(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .O(s_axi4_wvalid_0[1]));
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb[2]_i_1 
       (.I0(s_axi4_wvalid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi4_wstrb[2]),
        .I4(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .O(s_axi4_wvalid_0[2]));
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb[3]_i_1 
       (.I0(s_axi4_wvalid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi4_wstrb[3]),
        .I4(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .O(s_axi4_wvalid_0[3]));
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb[4]_i_1 
       (.I0(s_axi4_wvalid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi4_wstrb[4]),
        .I4(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .O(s_axi4_wvalid_0[4]));
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb[5]_i_1 
       (.I0(s_axi4_wvalid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi4_wstrb[5]),
        .I4(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .O(s_axi4_wvalid_0[5]));
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb[6]_i_1 
       (.I0(s_axi4_wvalid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi4_wstrb[6]),
        .I4(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .O(s_axi4_wvalid_0[6]));
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb[7]_i_1 
       (.I0(s_axi4_wvalid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi4_wstrb[7]),
        .I4(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .O(s_axi4_wvalid_0[7]));
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb[8]_i_1 
       (.I0(s_axi4_wvalid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi4_wstrb[8]),
        .I4(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .O(s_axi4_wvalid_0[8]));
  LUT5 #(
    .INIT(32'hFFFF2800)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb[9]_i_1 
       (.I0(s_axi4_wvalid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_axi4_wstrb[9]),
        .I4(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .O(s_axi4_wvalid_0[9]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h0028)) 
    \gfifo_gen.gmm2s.wr_data_int[127]_i_1 
       (.I0(s_axi4_wvalid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .O(s_axi4_wvalid_1));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \gtxd.sig_txd_packet_size[0]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(s_axi4_wvalid),
        .O(sel));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_write_wrapper
   (s_axi4_awready,
    s_axi4_wready,
    s_axi4_bid,
    \gaxi_bvalid_id_r.bvalid_r_reg_0 ,
    s_axi4_wvalid_0,
    Q,
    E,
    s_axi4_wvalid_1,
    sel,
    SR,
    s_axi_aclk,
    s_axi4_awid,
    s_axi4_wvalid,
    s_axi4_wstrb,
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ,
    s_axi4_bready,
    s_axi4_awlen,
    s_axi4_awaddr,
    s_axi4_awvalid);
  output s_axi4_awready;
  output s_axi4_wready;
  output [0:0]s_axi4_bid;
  output \gaxi_bvalid_id_r.bvalid_r_reg_0 ;
  output [15:0]s_axi4_wvalid_0;
  output [1:0]Q;
  output [0:0]E;
  output [0:0]s_axi4_wvalid_1;
  output sel;
  input [0:0]SR;
  input s_axi_aclk;
  input [0:0]s_axi4_awid;
  input s_axi4_wvalid;
  input [15:0]s_axi4_wstrb;
  input \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ;
  input s_axi4_bready;
  input [7:0]s_axi4_awlen;
  input [31:0]s_axi4_awaddr;
  input s_axi4_awvalid;

  wire [1:0]CONV_INTEGER;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_BID0;
  wire axi_wr_fsm_n_22;
  wire axi_wr_fsm_n_23;
  wire axi_wr_fsm_n_24;
  wire axi_wr_fsm_n_25;
  wire axi_wr_fsm_n_26;
  wire axi_wr_fsm_n_27;
  wire axi_wr_fsm_n_28;
  wire axi_wr_fsm_n_29;
  wire axi_wr_fsm_n_30;
  wire axi_wr_fsm_n_34;
  wire axi_wr_fsm_n_35;
  wire bvalid_c;
  wire [0:0]bvalid_count_r;
  wire \bvalid_count_r[0]_i_1_n_0 ;
  wire \bvalid_count_r_reg_n_0_[0] ;
  wire \bvalid_count_r_reg_n_0_[1] ;
  wire \bvalid_count_r_reg_n_0_[2] ;
  wire [1:0]bvalid_rd_cnt_r;
  wire [1:0]bvalid_wr_cnt_r;
  wire \gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1_n_0 ;
  wire \gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_2_n_0 ;
  wire \gaxi_bvalid_id_r.bvalid_d1_c ;
  wire \gaxi_bvalid_id_r.bvalid_r_i_1_n_0 ;
  wire \gaxi_bvalid_id_r.bvalid_r_reg_0 ;
  wire [7:0]\gaxif_wlast_gen.awlen_cntr_r ;
  wire \gaxif_wlast_gen.awlen_cntr_r[5]_i_2_n_0 ;
  wire \gaxif_wlast_gen.awlen_cntr_r[7]_i_4_n_0 ;
  wire \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ;
  wire p_0_in1_out;
  wire [31:0]s_axi4_awaddr;
  wire [0:0]s_axi4_awid;
  wire [7:0]s_axi4_awlen;
  wire s_axi4_awready;
  wire s_axi4_awvalid;
  wire [0:0]s_axi4_bid;
  wire s_axi4_bready;
  wire s_axi4_wready;
  wire [15:0]s_axi4_wstrb;
  wire s_axi4_wvalid;
  wire [15:0]s_axi4_wvalid_0;
  wire [0:0]s_axi4_wvalid_1;
  wire s_axi_aclk;
  wire sel;
  wire \NLW_gaxi_bid_gen.axi_bid_array_reg_0_3_0_0_SPO_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_write_fsm axi_wr_fsm
       (.D({axi_wr_fsm_n_22,axi_wr_fsm_n_23,axi_wr_fsm_n_24,axi_wr_fsm_n_25,axi_wr_fsm_n_26,axi_wr_fsm_n_27,axi_wr_fsm_n_28,axi_wr_fsm_n_29}),
        .E(E),
        .\FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 (axi_wr_fsm_n_30),
        .Q(Q),
        .SR(SR),
        .bvalid_c(bvalid_c),
        .\bvalid_count_r_reg[0] ({\bvalid_count_r_reg_n_0_[2] ,\bvalid_count_r_reg_n_0_[1] ,\bvalid_count_r_reg_n_0_[0] }),
        .\bvalid_count_r_reg[0]_0 (\gaxi_bvalid_id_r.bvalid_r_reg_0 ),
        .\bvalid_count_r_reg[2] (bvalid_count_r),
        .\bvalid_count_r_reg[2]_0 ({axi_wr_fsm_n_34,axi_wr_fsm_n_35}),
        .\gaxif_wlast_gen.awlen_cntr_r_reg[4] (\gaxif_wlast_gen.awlen_cntr_r[5]_i_2_n_0 ),
        .\gaxif_wlast_gen.awlen_cntr_r_reg[6] (\gaxif_wlast_gen.awlen_cntr_r[7]_i_4_n_0 ),
        .\gaxif_wlast_gen.awlen_cntr_r_reg[7] (\gaxif_wlast_gen.awlen_cntr_r ),
        .\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] (\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .p_0_in1_out(p_0_in1_out),
        .s_axi4_awaddr(s_axi4_awaddr),
        .s_axi4_awlen(s_axi4_awlen),
        .s_axi4_awready(s_axi4_awready),
        .s_axi4_awvalid(s_axi4_awvalid),
        .s_axi4_bready(s_axi4_bready),
        .s_axi4_wready(s_axi4_wready),
        .s_axi4_wstrb(s_axi4_wstrb),
        .s_axi4_wvalid(s_axi4_wvalid),
        .s_axi4_wvalid_0(s_axi4_wvalid_0),
        .s_axi4_wvalid_1(s_axi4_wvalid_1),
        .s_axi_aclk(s_axi_aclk),
        .sel(sel));
  LUT1 #(
    .INIT(2'h1)) 
    \bvalid_count_r[0]_i_1 
       (.I0(\bvalid_count_r_reg_n_0_[0] ),
        .O(\bvalid_count_r[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_count_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(bvalid_count_r),
        .D(\bvalid_count_r[0]_i_1_n_0 ),
        .Q(\bvalid_count_r_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_count_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(bvalid_count_r),
        .D(axi_wr_fsm_n_35),
        .Q(\bvalid_count_r_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_count_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(bvalid_count_r),
        .D(axi_wr_fsm_n_34),
        .Q(\bvalid_count_r_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.S_AXI_BID_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(S_AXI_BID0),
        .Q(s_axi4_bid),
        .R(SR));
  (* RTL_RAM_BITS = "4" *) 
  (* RTL_RAM_NAME = "axi_fifo_mm_s/gaxif.COMP_AXI4/axi_wr_fsm/gaxi_bid_gen.axi_bid_array_reg" *) 
  (* RTL_RAM_STYLE = "none" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    \gaxi_bid_gen.axi_bid_array_reg_0_3_0_0 
       (.A0(bvalid_wr_cnt_r[0]),
        .A1(bvalid_wr_cnt_r[1]),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(s_axi4_awid),
        .DPO(S_AXI_BID0),
        .DPRA0(CONV_INTEGER[0]),
        .DPRA1(CONV_INTEGER[1]),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(\NLW_gaxi_bid_gen.axi_bid_array_reg_0_3_0_0_SPO_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(p_0_in1_out));
  LUT3 #(
    .INIT(8'h78)) 
    \gaxi_bid_gen.bvalid_rd_cnt_r[0]_i_1 
       (.I0(s_axi4_bready),
        .I1(\gaxi_bvalid_id_r.bvalid_r_reg_0 ),
        .I2(bvalid_rd_cnt_r[0]),
        .O(CONV_INTEGER[0]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gaxi_bid_gen.bvalid_rd_cnt_r[1]_i_1 
       (.I0(bvalid_rd_cnt_r[0]),
        .I1(\gaxi_bvalid_id_r.bvalid_r_reg_0 ),
        .I2(s_axi4_bready),
        .I3(bvalid_rd_cnt_r[1]),
        .O(CONV_INTEGER[1]));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.bvalid_rd_cnt_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(CONV_INTEGER[0]),
        .Q(bvalid_rd_cnt_r[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.bvalid_rd_cnt_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(CONV_INTEGER[1]),
        .Q(bvalid_rd_cnt_r[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1 
       (.I0(bvalid_wr_cnt_r[0]),
        .O(\gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_2 
       (.I0(bvalid_wr_cnt_r[0]),
        .I1(bvalid_wr_cnt_r[1]),
        .O(\gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(bvalid_c),
        .D(\gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1_n_0 ),
        .Q(bvalid_wr_cnt_r[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(bvalid_c),
        .D(\gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_2_n_0 ),
        .Q(bvalid_wr_cnt_r[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bvalid_id_r.bvalid_d1_c_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bvalid_c),
        .Q(\gaxi_bvalid_id_r.bvalid_d1_c ),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFBFF00)) 
    \gaxi_bvalid_id_r.bvalid_r_i_1 
       (.I0(\bvalid_count_r_reg_n_0_[1] ),
        .I1(s_axi4_bready),
        .I2(\bvalid_count_r_reg_n_0_[2] ),
        .I3(\gaxi_bvalid_id_r.bvalid_d1_c ),
        .I4(\gaxi_bvalid_id_r.bvalid_r_reg_0 ),
        .O(\gaxi_bvalid_id_r.bvalid_r_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bvalid_id_r.bvalid_r_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gaxi_bvalid_id_r.bvalid_r_i_1_n_0 ),
        .Q(\gaxi_bvalid_id_r.bvalid_r_reg_0 ),
        .R(SR));
  LUT3 #(
    .INIT(8'hFE)) 
    \gaxif_wlast_gen.awlen_cntr_r[5]_i_2 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r [0]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r [1]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r [2]),
        .O(\gaxif_wlast_gen.awlen_cntr_r[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gaxif_wlast_gen.awlen_cntr_r[7]_i_4 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r [4]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r [2]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r [1]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r [0]),
        .I4(\gaxif_wlast_gen.awlen_cntr_r [3]),
        .I5(\gaxif_wlast_gen.awlen_cntr_r [5]),
        .O(\gaxif_wlast_gen.awlen_cntr_r[7]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_wr_fsm_n_30),
        .D(axi_wr_fsm_n_29),
        .Q(\gaxif_wlast_gen.awlen_cntr_r [0]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_wr_fsm_n_30),
        .D(axi_wr_fsm_n_28),
        .Q(\gaxif_wlast_gen.awlen_cntr_r [1]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_wr_fsm_n_30),
        .D(axi_wr_fsm_n_27),
        .Q(\gaxif_wlast_gen.awlen_cntr_r [2]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_wr_fsm_n_30),
        .D(axi_wr_fsm_n_26),
        .Q(\gaxif_wlast_gen.awlen_cntr_r [3]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_wr_fsm_n_30),
        .D(axi_wr_fsm_n_25),
        .Q(\gaxif_wlast_gen.awlen_cntr_r [4]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_wr_fsm_n_30),
        .D(axi_wr_fsm_n_24),
        .Q(\gaxif_wlast_gen.awlen_cntr_r [5]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[6] 
       (.C(s_axi_aclk),
        .CE(axi_wr_fsm_n_30),
        .D(axi_wr_fsm_n_23),
        .Q(\gaxif_wlast_gen.awlen_cntr_r [6]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[7] 
       (.C(s_axi_aclk),
        .CE(axi_wr_fsm_n_30),
        .D(axi_wr_fsm_n_22),
        .Q(\gaxif_wlast_gen.awlen_cntr_r [7]),
        .S(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_fg
   (s_axi4_rdata,
    wr_data_count_axis,
    prog_empty_axis,
    s2mm_prmry_reset_out_n,
    \grxd.rx_str_wr_en ,
    \s_axi_wdata[26] ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ,
    \s_axi_wdata[19] ,
    \s_axi_wdata[16] ,
    \s_axi_wdata[15] ,
    D,
    \gen_fwft.empty_fwft_i_reg ,
    \gen_fwft.empty_fwft_i_reg_0 ,
    \grxd.rx_len_wr_en_reg ,
    sig_ip2bus_data1,
    rx_complete48_out,
    axi_str_rxd_tready,
    rx_str_sbiterr_i,
    rst,
    \gaxi_full_sm.r_valid_r1_reg ,
    \gwdc.wr_data_count_i_reg[4] ,
    \gwdc.wr_data_count_i_reg[3] ,
    \gwdc.wr_data_count_i_reg[2] ,
    sig_rd_rlen_reg,
    axi_str_rxd_tlast_0,
    s_axi_aclk,
    axi_str_rxd_tdata,
    axi_str_rxd_tlast,
    m_axis_tready,
    \sig_register_array_reg[0][5] ,
    \sig_register_array_reg[0][5]_0 ,
    \sig_register_array_reg[0][5]_1 ,
    s_axi_wdata,
    \sig_ip2bus_data_reg[5] ,
    \sig_register_array_reg[0][11] ,
    \sig_register_array_reg[0][12] ,
    \sig_register_array_reg[0][15] ,
    \sig_register_array_reg[0][16] ,
    sig_rd_rlen,
    dout,
    \sig_ip2bus_data_reg[8] ,
    Q,
    \sig_ip2bus_data_reg[8]_0 ,
    \sig_ip2bus_data_reg[8]_1 ,
    \sig_ip2bus_data_reg[7] ,
    \sig_ip2bus_data_reg[6] ,
    \sig_ip2bus_data_reg[4] ,
    \sig_ip2bus_data_reg[3] ,
    \sig_ip2bus_data_reg[2] ,
    \sig_ip2bus_data_reg[17] ,
    \sig_ip2bus_data_reg[17]_0 ,
    \sig_ip2bus_data_reg[17]_1 ,
    empty,
    s2mm_prmry_reset_out_n_0,
    sig_Bus2IP_RdCE,
    axi_str_rxd_tvalid,
    \grxd.rx_partial_pkt_reg ,
    wr_en,
    s_axi_aresetn,
    sync_areset_n_reg_0,
    \sig_ip2bus_data_reg[25] ,
    \sig_ip2bus_data_reg[25]_0 ,
    \sig_ip2bus_data_reg[25]_1 ,
    rx_fg_len_empty_d1,
    sig_rxd_sbiterr_d1,
    out,
    s_axi4_rready,
    sig_rxd_prog_empty_d1,
    rd_en,
    O,
    DI);
  output [127:0]s_axi4_rdata;
  output [8:0]wr_data_count_axis;
  output prog_empty_axis;
  output s2mm_prmry_reset_out_n;
  output \grxd.rx_str_wr_en ;
  output \s_axi_wdata[26] ;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ;
  output \s_axi_wdata[19] ;
  output \s_axi_wdata[16] ;
  output \s_axi_wdata[15] ;
  output [15:0]D;
  output \gen_fwft.empty_fwft_i_reg ;
  output \gen_fwft.empty_fwft_i_reg_0 ;
  output \grxd.rx_len_wr_en_reg ;
  output sig_ip2bus_data1;
  output rx_complete48_out;
  output axi_str_rxd_tready;
  output rx_str_sbiterr_i;
  output rst;
  output \gaxi_full_sm.r_valid_r1_reg ;
  output \gwdc.wr_data_count_i_reg[4] ;
  output \gwdc.wr_data_count_i_reg[3] ;
  output \gwdc.wr_data_count_i_reg[2] ;
  output sig_rd_rlen_reg;
  output axi_str_rxd_tlast_0;
  input s_axi_aclk;
  input [127:0]axi_str_rxd_tdata;
  input axi_str_rxd_tlast;
  input m_axis_tready;
  input \sig_register_array_reg[0][5] ;
  input \sig_register_array_reg[0][5]_0 ;
  input \sig_register_array_reg[0][5]_1 ;
  input [4:0]s_axi_wdata;
  input \sig_ip2bus_data_reg[5] ;
  input \sig_register_array_reg[0][11] ;
  input \sig_register_array_reg[0][12] ;
  input \sig_register_array_reg[0][15] ;
  input \sig_register_array_reg[0][16] ;
  input sig_rd_rlen;
  input [7:0]dout;
  input \sig_ip2bus_data_reg[8] ;
  input [7:0]Q;
  input \sig_ip2bus_data_reg[8]_0 ;
  input \sig_ip2bus_data_reg[8]_1 ;
  input \sig_ip2bus_data_reg[7] ;
  input \sig_ip2bus_data_reg[6] ;
  input \sig_ip2bus_data_reg[4] ;
  input \sig_ip2bus_data_reg[3] ;
  input \sig_ip2bus_data_reg[2] ;
  input \sig_ip2bus_data_reg[17] ;
  input \sig_ip2bus_data_reg[17]_0 ;
  input \sig_ip2bus_data_reg[17]_1 ;
  input empty;
  input s2mm_prmry_reset_out_n_0;
  input [0:0]sig_Bus2IP_RdCE;
  input axi_str_rxd_tvalid;
  input \grxd.rx_partial_pkt_reg ;
  input wr_en;
  input s_axi_aresetn;
  input sync_areset_n_reg_0;
  input [2:0]\sig_ip2bus_data_reg[25] ;
  input \sig_ip2bus_data_reg[25]_0 ;
  input \sig_ip2bus_data_reg[25]_1 ;
  input rx_fg_len_empty_d1;
  input sig_rxd_sbiterr_d1;
  input out;
  input s_axi4_rready;
  input sig_rxd_prog_empty_d1;
  input rd_en;
  input [0:0]O;
  input [0:0]DI;

  wire COMP_FIFO_n_130;
  wire COMP_FIFO_n_131;
  wire COMP_FIFO_n_132;
  wire COMP_FIFO_n_133;
  wire COMP_FIFO_n_134;
  wire COMP_FIFO_n_135;
  wire COMP_FIFO_n_136;
  wire COMP_FIFO_n_137;
  wire COMP_FIFO_n_138;
  wire COMP_FIFO_n_139;
  wire COMP_FIFO_n_140;
  wire COMP_FIFO_n_141;
  wire COMP_FIFO_n_142;
  wire COMP_FIFO_n_143;
  wire COMP_FIFO_n_144;
  wire COMP_FIFO_n_145;
  wire COMP_FIFO_n_146;
  wire COMP_FIFO_n_147;
  wire COMP_FIFO_n_148;
  wire COMP_FIFO_n_149;
  wire COMP_FIFO_n_150;
  wire COMP_FIFO_n_151;
  wire COMP_FIFO_n_152;
  wire COMP_FIFO_n_153;
  wire COMP_FIFO_n_154;
  wire COMP_FIFO_n_155;
  wire COMP_FIFO_n_156;
  wire COMP_FIFO_n_157;
  wire COMP_FIFO_n_158;
  wire COMP_FIFO_n_159;
  wire COMP_FIFO_n_160;
  wire COMP_FIFO_n_161;
  wire COMP_FIFO_n_163;
  wire COMP_FIFO_n_164;
  wire COMP_FIFO_n_165;
  wire COMP_FIFO_n_166;
  wire COMP_FIFO_n_167;
  wire COMP_FIFO_n_168;
  wire COMP_FIFO_n_169;
  wire COMP_FIFO_n_170;
  wire COMP_FIFO_n_171;
  wire COMP_FIFO_n_172;
  wire COMP_FIFO_n_173;
  wire COMP_FIFO_n_174;
  wire COMP_FIFO_n_175;
  wire COMP_FIFO_n_176;
  wire COMP_FIFO_n_177;
  wire COMP_FIFO_n_178;
  wire COMP_FIFO_n_179;
  wire COMP_FIFO_n_180;
  wire COMP_FIFO_n_181;
  wire COMP_FIFO_n_182;
  wire COMP_FIFO_n_183;
  wire COMP_FIFO_n_184;
  wire COMP_FIFO_n_185;
  wire COMP_FIFO_n_186;
  wire [15:0]D;
  wire [0:0]DI;
  wire [0:0]O;
  wire [7:0]Q;
  wire axi4_rlast;
  wire [127:0]axi_str_rxd_tdata;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tlast_0;
  wire axi_str_rxd_tready;
  wire axi_str_rxd_tvalid;
  wire dbiterr_axis;
  wire [7:0]dout;
  wire empty;
  wire \gaxi_full_sm.r_valid_r1_reg ;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \gen_fwft.empty_fwft_i_reg_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ;
  wire \gfifo_gen.output_tvalid ;
  wire \grxd.fg_rxd_wr_length[22]_i_3_n_0 ;
  wire \grxd.fg_rxd_wr_length[4]_i_2_n_0 ;
  wire \grxd.rx_len_wr_en_reg ;
  wire \grxd.rx_partial_pkt_reg ;
  wire \grxd.rx_str_wr_en ;
  wire \gwdc.wr_data_count_i_reg[2] ;
  wire \gwdc.wr_data_count_i_reg[3] ;
  wire \gwdc.wr_data_count_i_reg[4] ;
  wire m_axis_tready;
  wire out;
  wire prog_empty_axis;
  wire rd_en;
  wire rst;
  wire rx_complete48_out;
  wire rx_fg_len_empty_d1;
  wire rx_str_sbiterr_i;
  wire s2mm_prmry_reset_out_n;
  wire s2mm_prmry_reset_out_n_0;
  wire [127:0]s_axi4_rdata;
  wire s_axi4_rready;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [4:0]s_axi_wdata;
  wire \s_axi_wdata[15] ;
  wire \s_axi_wdata[16] ;
  wire \s_axi_wdata[19] ;
  wire \s_axi_wdata[26] ;
  wire s_axis_tready_i;
  wire sbiterr_axis;
  wire [0:0]sig_Bus2IP_RdCE;
  wire sig_ip2bus_data1;
  wire \sig_ip2bus_data[18]_i_2_n_0 ;
  wire \sig_ip2bus_data[18]_i_3_n_0 ;
  wire \sig_ip2bus_data[19]_i_2_n_0 ;
  wire \sig_ip2bus_data[1]_i_3_n_0 ;
  wire \sig_ip2bus_data[20]_i_2_n_0 ;
  wire \sig_ip2bus_data[21]_i_2_n_0 ;
  wire \sig_ip2bus_data[25]_i_4_n_0 ;
  wire \sig_ip2bus_data[25]_i_5_n_0 ;
  wire \sig_ip2bus_data[26]_i_2_n_0 ;
  wire \sig_ip2bus_data[27]_i_2_n_0 ;
  wire \sig_ip2bus_data_reg[17] ;
  wire \sig_ip2bus_data_reg[17]_0 ;
  wire \sig_ip2bus_data_reg[17]_1 ;
  wire [2:0]\sig_ip2bus_data_reg[25] ;
  wire \sig_ip2bus_data_reg[25]_0 ;
  wire \sig_ip2bus_data_reg[25]_1 ;
  wire \sig_ip2bus_data_reg[2] ;
  wire \sig_ip2bus_data_reg[3] ;
  wire \sig_ip2bus_data_reg[4] ;
  wire \sig_ip2bus_data_reg[5] ;
  wire \sig_ip2bus_data_reg[6] ;
  wire \sig_ip2bus_data_reg[7] ;
  wire \sig_ip2bus_data_reg[8] ;
  wire \sig_ip2bus_data_reg[8]_0 ;
  wire \sig_ip2bus_data_reg[8]_1 ;
  wire sig_rd_rlen;
  wire sig_rd_rlen_reg;
  wire \sig_register_array[0][12]_i_2_n_0 ;
  wire \sig_register_array[0][15]_i_2_n_0 ;
  wire \sig_register_array[0][16]_i_2_n_0 ;
  wire \sig_register_array[0][2]_i_9_n_0 ;
  wire \sig_register_array[0][5]_i_2_n_0 ;
  wire \sig_register_array_reg[0][11] ;
  wire \sig_register_array_reg[0][12] ;
  wire \sig_register_array_reg[0][15] ;
  wire \sig_register_array_reg[0][16] ;
  wire \sig_register_array_reg[0][5] ;
  wire \sig_register_array_reg[0][5]_0 ;
  wire \sig_register_array_reg[0][5]_1 ;
  wire [6:6]sig_rxd_occupancy;
  wire sig_rxd_prog_empty_d1;
  wire sig_rxd_prog_full;
  wire sig_rxd_sbiterr_d1;
  wire sync_areset_n;
  wire sync_areset_n_i_1_n_0;
  wire sync_areset_n_reg_0;
  wire [8:0]wr_data_count_axis;
  wire wr_en;
  wire NLW_COMP_FIFO_almost_empty_axis_UNCONNECTED;
  wire NLW_COMP_FIFO_almost_full_axis_UNCONNECTED;
  wire [9:0]NLW_COMP_FIFO_rd_data_count_axis_UNCONNECTED;

  (* AXIS_DATA_WIDTH = "185" *) 
  (* AXIS_FINAL_DATA_WIDTH = "185" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "2" *) 
  (* CLOCKING_MODE = "0" *) 
  (* DONT_TOUCH *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_AXIS = "16'b0001011000000110" *) 
  (* EN_ADV_FEATURE_AXIS_INT = "16'b0001011000000110" *) 
  (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
  (* EN_ALMOST_FULL_INT = "1'b0" *) 
  (* EN_DATA_VALID_INT = "1'b1" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* FIFO_DEPTH = "512" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* LOG_DEPTH_AXIS = "9" *) 
  (* PACKET_FIFO = "false" *) 
  (* PKT_SIZE_LT8 = "1'b0" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "507" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "2" *) 
  (* P_PKT_MODE = "0" *) 
  (* RD_DATA_COUNT_WIDTH = "10" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* TDATA_OFFSET = "128" *) 
  (* TDATA_WIDTH = "128" *) 
  (* TDEST_OFFSET = "168" *) 
  (* TDEST_WIDTH = "4" *) 
  (* TID_OFFSET = "164" *) 
  (* TID_WIDTH = "4" *) 
  (* TKEEP_OFFSET = "160" *) 
  (* TSTRB_OFFSET = "144" *) 
  (* TUSER_MAX_WIDTH = "3927" *) 
  (* TUSER_OFFSET = "184" *) 
  (* TUSER_WIDTH = "16" *) 
  (* USE_ADV_FEATURES = "1606" *) 
  (* USE_ADV_FEATURES_INT = "825634870" *) 
  (* WR_DATA_COUNT_WIDTH = "10" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis COMP_FIFO
       (.almost_empty_axis(NLW_COMP_FIFO_almost_empty_axis_UNCONNECTED),
        .almost_full_axis(NLW_COMP_FIFO_almost_full_axis_UNCONNECTED),
        .dbiterr_axis(dbiterr_axis),
        .injectdbiterr_axis(1'b0),
        .injectsbiterr_axis(1'b0),
        .m_aclk(s_axi_aclk),
        .m_axis_tdata(s_axi4_rdata),
        .m_axis_tdest({COMP_FIFO_n_167,COMP_FIFO_n_168,COMP_FIFO_n_169,COMP_FIFO_n_170}),
        .m_axis_tid({COMP_FIFO_n_163,COMP_FIFO_n_164,COMP_FIFO_n_165,COMP_FIFO_n_166}),
        .m_axis_tkeep({COMP_FIFO_n_146,COMP_FIFO_n_147,COMP_FIFO_n_148,COMP_FIFO_n_149,COMP_FIFO_n_150,COMP_FIFO_n_151,COMP_FIFO_n_152,COMP_FIFO_n_153,COMP_FIFO_n_154,COMP_FIFO_n_155,COMP_FIFO_n_156,COMP_FIFO_n_157,COMP_FIFO_n_158,COMP_FIFO_n_159,COMP_FIFO_n_160,COMP_FIFO_n_161}),
        .m_axis_tlast(axi4_rlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb({COMP_FIFO_n_130,COMP_FIFO_n_131,COMP_FIFO_n_132,COMP_FIFO_n_133,COMP_FIFO_n_134,COMP_FIFO_n_135,COMP_FIFO_n_136,COMP_FIFO_n_137,COMP_FIFO_n_138,COMP_FIFO_n_139,COMP_FIFO_n_140,COMP_FIFO_n_141,COMP_FIFO_n_142,COMP_FIFO_n_143,COMP_FIFO_n_144,COMP_FIFO_n_145}),
        .m_axis_tuser({COMP_FIFO_n_171,COMP_FIFO_n_172,COMP_FIFO_n_173,COMP_FIFO_n_174,COMP_FIFO_n_175,COMP_FIFO_n_176,COMP_FIFO_n_177,COMP_FIFO_n_178,COMP_FIFO_n_179,COMP_FIFO_n_180,COMP_FIFO_n_181,COMP_FIFO_n_182,COMP_FIFO_n_183,COMP_FIFO_n_184,COMP_FIFO_n_185,COMP_FIFO_n_186}),
        .m_axis_tvalid(\gfifo_gen.output_tvalid ),
        .prog_empty_axis(prog_empty_axis),
        .prog_full_axis(sig_rxd_prog_full),
        .rd_data_count_axis(NLW_COMP_FIFO_rd_data_count_axis_UNCONNECTED[9:0]),
        .s_aclk(s_axi_aclk),
        .s_aresetn(s2mm_prmry_reset_out_n),
        .s_axis_tdata(axi_str_rxd_tdata),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(axi_str_rxd_tlast),
        .s_axis_tready(s_axis_tready_i),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(\grxd.rx_str_wr_en ),
        .sbiterr_axis(sbiterr_axis),
        .wr_data_count_axis({wr_data_count_axis[8:6],sig_rxd_occupancy,wr_data_count_axis[5:0]}));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h20)) 
    COMP_FIFO_i_1
       (.I0(axi_str_rxd_tvalid),
        .I1(sync_areset_n),
        .I2(s_axis_tready_i),
        .O(\grxd.rx_str_wr_en ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_str_rxd_tready_INST_0
       (.I0(s_axis_tready_i),
        .I1(sync_areset_n),
        .O(axi_str_rxd_tready));
  LUT3 #(
    .INIT(8'hFD)) 
    \grxd.COMP_rx_len_fifo_i_1 
       (.I0(s_axi_aresetn),
        .I1(sync_areset_n_reg_0),
        .I2(s2mm_prmry_reset_out_n_0),
        .O(rst));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFF8F)) 
    \grxd.fg_rxd_wr_length[22]_i_1 
       (.I0(wr_en),
        .I1(\grxd.fg_rxd_wr_length[22]_i_3_n_0 ),
        .I2(s_axi_aresetn),
        .I3(sync_areset_n_reg_0),
        .O(\grxd.rx_len_wr_en_reg ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \grxd.fg_rxd_wr_length[22]_i_3 
       (.I0(axi_str_rxd_tvalid),
        .I1(sync_areset_n),
        .I2(s_axis_tready_i),
        .I3(axi_str_rxd_tlast),
        .O(\grxd.fg_rxd_wr_length[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0F3200FE)) 
    \grxd.fg_rxd_wr_length[4]_i_1 
       (.I0(O),
        .I1(axi_str_rxd_tlast),
        .I2(wr_en),
        .I3(\grxd.fg_rxd_wr_length[4]_i_2_n_0 ),
        .I4(DI),
        .O(axi_str_rxd_tlast_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \grxd.fg_rxd_wr_length[4]_i_2 
       (.I0(s_axis_tready_i),
        .I1(sync_areset_n),
        .I2(axi_str_rxd_tvalid),
        .O(\grxd.fg_rxd_wr_length[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \grxd.rx_len_wr_en_i_2 
       (.I0(axi_str_rxd_tlast),
        .I1(s_axis_tready_i),
        .I2(sync_areset_n),
        .I3(axi_str_rxd_tvalid),
        .O(rx_complete48_out));
  LUT6 #(
    .INIT(64'hFF3FFFFFAA2AAAAA)) 
    \grxd.rx_partial_pkt_i_1 
       (.I0(rd_en),
        .I1(axi_str_rxd_tlast),
        .I2(s_axis_tready_i),
        .I3(sync_areset_n),
        .I4(axi_str_rxd_tvalid),
        .I5(\grxd.rx_partial_pkt_reg ),
        .O(sig_rd_rlen_reg));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \grxd.sig_rxd_sbiterr_d1_i_1 
       (.I0(s_axi4_rready),
        .I1(out),
        .I2(\gfifo_gen.output_tvalid ),
        .I3(sbiterr_axis),
        .O(rx_str_sbiterr_i));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h10)) 
    s2mm_prmry_reset_out_n_INST_0
       (.I0(s2mm_prmry_reset_out_n_0),
        .I1(sync_areset_n_reg_0),
        .I2(s_axi_aresetn),
        .O(s2mm_prmry_reset_out_n));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sig_ip2bus_data[17]_i_1 
       (.I0(dout[7]),
        .I1(sig_rd_rlen),
        .I2(\gen_fwft.empty_fwft_i_reg_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFEAC0FFEAEAC0C0)) 
    \sig_ip2bus_data[18]_i_1 
       (.I0(\sig_ip2bus_data[18]_i_2_n_0 ),
        .I1(sig_rd_rlen),
        .I2(dout[6]),
        .I3(\sig_ip2bus_data[18]_i_3_n_0 ),
        .I4(wr_data_count_axis[8]),
        .I5(\gen_fwft.empty_fwft_i_reg ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \sig_ip2bus_data[18]_i_2 
       (.I0(sig_ip2bus_data1),
        .I1(empty),
        .I2(\sig_ip2bus_data_reg[17]_1 ),
        .I3(\sig_ip2bus_data_reg[17]_0 ),
        .I4(s2mm_prmry_reset_out_n_0),
        .I5(sig_Bus2IP_RdCE),
        .O(\sig_ip2bus_data[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \sig_ip2bus_data[18]_i_3 
       (.I0(\sig_ip2bus_data[19]_i_2_n_0 ),
        .I1(wr_data_count_axis[7]),
        .O(\sig_ip2bus_data[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \sig_ip2bus_data[18]_i_4 
       (.I0(empty),
        .I1(\sig_ip2bus_data_reg[17]_1 ),
        .I2(\sig_ip2bus_data_reg[17]_0 ),
        .I3(s2mm_prmry_reset_out_n_0),
        .I4(sig_Bus2IP_RdCE),
        .I5(\sig_ip2bus_data[1]_i_3_n_0 ),
        .O(\gen_fwft.empty_fwft_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hF7FF0000)) 
    \sig_ip2bus_data[18]_i_5 
       (.I0(axi_str_rxd_tlast),
        .I1(s_axis_tready_i),
        .I2(sync_areset_n),
        .I3(axi_str_rxd_tvalid),
        .I4(\grxd.rx_partial_pkt_reg ),
        .O(sig_ip2bus_data1));
  LUT6 #(
    .INIT(64'hFFEAC0FFEAEAC0C0)) 
    \sig_ip2bus_data[19]_i_1 
       (.I0(\sig_ip2bus_data[18]_i_2_n_0 ),
        .I1(sig_rd_rlen),
        .I2(dout[5]),
        .I3(\sig_ip2bus_data[19]_i_2_n_0 ),
        .I4(wr_data_count_axis[7]),
        .I5(\gen_fwft.empty_fwft_i_reg ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sig_ip2bus_data[19]_i_2 
       (.I0(sig_rxd_occupancy),
        .I1(wr_data_count_axis[4]),
        .I2(wr_data_count_axis[2]),
        .I3(wr_data_count_axis[3]),
        .I4(wr_data_count_axis[5]),
        .I5(wr_data_count_axis[6]),
        .O(\sig_ip2bus_data[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \sig_ip2bus_data[1]_i_1 
       (.I0(Q[7]),
        .I1(\sig_ip2bus_data_reg[8] ),
        .I2(\gen_fwft.empty_fwft_i_reg_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sig_ip2bus_data[1]_i_2 
       (.I0(\sig_register_array[0][2]_i_9_n_0 ),
        .I1(\sig_ip2bus_data[1]_i_3_n_0 ),
        .I2(\sig_ip2bus_data_reg[17] ),
        .I3(\sig_ip2bus_data_reg[17]_0 ),
        .I4(\sig_ip2bus_data_reg[17]_1 ),
        .I5(empty),
        .O(\gen_fwft.empty_fwft_i_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h4000FFFF)) 
    \sig_ip2bus_data[1]_i_3 
       (.I0(sync_areset_n),
        .I1(s_axis_tready_i),
        .I2(axi_str_rxd_tlast),
        .I3(axi_str_rxd_tvalid),
        .I4(\grxd.rx_partial_pkt_reg ),
        .O(\sig_ip2bus_data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAC0FFEAEAC0C0)) 
    \sig_ip2bus_data[20]_i_1 
       (.I0(\sig_ip2bus_data[18]_i_2_n_0 ),
        .I1(sig_rd_rlen),
        .I2(dout[4]),
        .I3(\sig_ip2bus_data[20]_i_2_n_0 ),
        .I4(wr_data_count_axis[6]),
        .I5(\gen_fwft.empty_fwft_i_reg ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sig_ip2bus_data[20]_i_2 
       (.I0(wr_data_count_axis[5]),
        .I1(wr_data_count_axis[3]),
        .I2(wr_data_count_axis[2]),
        .I3(wr_data_count_axis[4]),
        .I4(sig_rxd_occupancy),
        .O(\sig_ip2bus_data[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAC0FFEAEAC0C0)) 
    \sig_ip2bus_data[21]_i_1 
       (.I0(\sig_ip2bus_data[18]_i_2_n_0 ),
        .I1(sig_rd_rlen),
        .I2(dout[3]),
        .I3(\sig_ip2bus_data[21]_i_2_n_0 ),
        .I4(sig_rxd_occupancy),
        .I5(\gen_fwft.empty_fwft_i_reg ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sig_ip2bus_data[21]_i_2 
       (.I0(wr_data_count_axis[4]),
        .I1(wr_data_count_axis[2]),
        .I2(wr_data_count_axis[3]),
        .I3(wr_data_count_axis[5]),
        .O(\sig_ip2bus_data[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \sig_ip2bus_data[22]_i_4 
       (.I0(wr_data_count_axis[4]),
        .I1(wr_data_count_axis[2]),
        .I2(wr_data_count_axis[3]),
        .I3(wr_data_count_axis[5]),
        .O(\gwdc.wr_data_count_i_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \sig_ip2bus_data[23]_i_4 
       (.I0(wr_data_count_axis[3]),
        .I1(wr_data_count_axis[2]),
        .I2(wr_data_count_axis[4]),
        .O(\gwdc.wr_data_count_i_reg[3] ));
  LUT2 #(
    .INIT(4'h6)) 
    \sig_ip2bus_data[24]_i_4 
       (.I0(wr_data_count_axis[2]),
        .I1(wr_data_count_axis[3]),
        .O(\gwdc.wr_data_count_i_reg[2] ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \sig_ip2bus_data[25]_i_1 
       (.I0(\sig_ip2bus_data_reg[25] [2]),
        .I1(\sig_ip2bus_data_reg[25]_0 ),
        .I2(\sig_ip2bus_data_reg[25]_1 ),
        .I3(sig_rxd_occupancy),
        .I4(\sig_ip2bus_data[25]_i_4_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \sig_ip2bus_data[25]_i_4 
       (.I0(\sig_ip2bus_data[25]_i_5_n_0 ),
        .I1(dout[2]),
        .I2(\sig_ip2bus_data_reg[17] ),
        .I3(\sig_ip2bus_data_reg[17]_0 ),
        .I4(\sig_ip2bus_data_reg[17]_1 ),
        .I5(empty),
        .O(\sig_ip2bus_data[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAA5D555555)) 
    \sig_ip2bus_data[25]_i_5 
       (.I0(\grxd.rx_partial_pkt_reg ),
        .I1(axi_str_rxd_tvalid),
        .I2(sync_areset_n),
        .I3(s_axis_tready_i),
        .I4(axi_str_rxd_tlast),
        .I5(wr_data_count_axis[2]),
        .O(\sig_ip2bus_data[25]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \sig_ip2bus_data[26]_i_1 
       (.I0(\sig_ip2bus_data_reg[25] [1]),
        .I1(\sig_ip2bus_data_reg[25]_0 ),
        .I2(\sig_ip2bus_data_reg[25]_1 ),
        .I3(wr_data_count_axis[5]),
        .I4(\sig_ip2bus_data[26]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \sig_ip2bus_data[26]_i_2 
       (.I0(wr_data_count_axis[1]),
        .I1(dout[1]),
        .I2(\sig_ip2bus_data_reg[17] ),
        .I3(\sig_ip2bus_data_reg[17]_0 ),
        .I4(\sig_ip2bus_data_reg[17]_1 ),
        .I5(empty),
        .O(\sig_ip2bus_data[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \sig_ip2bus_data[27]_i_1 
       (.I0(\sig_ip2bus_data_reg[25] [0]),
        .I1(\sig_ip2bus_data_reg[25]_0 ),
        .I2(\sig_ip2bus_data_reg[25]_1 ),
        .I3(wr_data_count_axis[4]),
        .I4(\sig_ip2bus_data[27]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \sig_ip2bus_data[27]_i_2 
       (.I0(wr_data_count_axis[0]),
        .I1(dout[0]),
        .I2(\sig_ip2bus_data_reg[17] ),
        .I3(\sig_ip2bus_data_reg[17]_0 ),
        .I4(\sig_ip2bus_data_reg[17]_1 ),
        .I5(empty),
        .O(\sig_ip2bus_data[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sig_ip2bus_data[2]_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_0 ),
        .I1(\sig_ip2bus_data_reg[8] ),
        .I2(Q[6]),
        .I3(\sig_ip2bus_data_reg[2] ),
        .I4(\sig_ip2bus_data_reg[8]_1 ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sig_ip2bus_data[3]_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_0 ),
        .I1(\sig_ip2bus_data_reg[8] ),
        .I2(Q[5]),
        .I3(\sig_ip2bus_data_reg[3] ),
        .I4(\sig_ip2bus_data_reg[8]_1 ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sig_ip2bus_data[4]_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_0 ),
        .I1(\sig_ip2bus_data_reg[8] ),
        .I2(Q[4]),
        .I3(\sig_ip2bus_data_reg[4] ),
        .I4(\sig_ip2bus_data_reg[8]_1 ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sig_ip2bus_data[5]_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_0 ),
        .I1(\sig_ip2bus_data_reg[8] ),
        .I2(Q[3]),
        .I3(\sig_ip2bus_data_reg[5] ),
        .I4(\sig_ip2bus_data_reg[8]_1 ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sig_ip2bus_data[6]_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_0 ),
        .I1(\sig_ip2bus_data_reg[8] ),
        .I2(Q[2]),
        .I3(\sig_ip2bus_data_reg[6] ),
        .I4(\sig_ip2bus_data_reg[8]_1 ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sig_ip2bus_data[7]_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_0 ),
        .I1(\sig_ip2bus_data_reg[8] ),
        .I2(Q[1]),
        .I3(\sig_ip2bus_data_reg[7] ),
        .I4(\sig_ip2bus_data_reg[8]_1 ),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \sig_ip2bus_data[8]_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_0 ),
        .I1(\sig_ip2bus_data_reg[8] ),
        .I2(Q[0]),
        .I3(\sig_ip2bus_data_reg[8]_0 ),
        .I4(\sig_ip2bus_data_reg[8]_1 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFCF0FCFFA8A0A8AA)) 
    \sig_register_array[0][11]_i_1 
       (.I0(sig_rxd_prog_full),
        .I1(\sig_register_array_reg[0][5] ),
        .I2(\sig_register_array_reg[0][5]_0 ),
        .I3(\sig_register_array_reg[0][5]_1 ),
        .I4(s_axi_wdata[3]),
        .I5(\sig_register_array_reg[0][11] ),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ));
  LUT6 #(
    .INIT(64'hFAF0FAFFC8C0C8CC)) 
    \sig_register_array[0][12]_i_1 
       (.I0(\sig_register_array_reg[0][5] ),
        .I1(\sig_register_array[0][12]_i_2_n_0 ),
        .I2(\sig_register_array_reg[0][5]_0 ),
        .I3(\sig_register_array_reg[0][5]_1 ),
        .I4(s_axi_wdata[2]),
        .I5(\sig_register_array_reg[0][12] ),
        .O(\s_axi_wdata[19] ));
  LUT2 #(
    .INIT(4'h2)) 
    \sig_register_array[0][12]_i_2 
       (.I0(prog_empty_axis),
        .I1(sig_rxd_prog_empty_d1),
        .O(\sig_register_array[0][12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFAF0FAFFC8C0C8CC)) 
    \sig_register_array[0][15]_i_1 
       (.I0(\sig_register_array_reg[0][5] ),
        .I1(\sig_register_array[0][15]_i_2_n_0 ),
        .I2(\sig_register_array_reg[0][5]_0 ),
        .I3(\sig_register_array_reg[0][5]_1 ),
        .I4(s_axi_wdata[1]),
        .I5(\sig_register_array_reg[0][15] ),
        .O(\s_axi_wdata[16] ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \sig_register_array[0][15]_i_2 
       (.I0(sig_rxd_sbiterr_d1),
        .I1(\gfifo_gen.output_tvalid ),
        .I2(out),
        .I3(s_axi4_rready),
        .I4(dbiterr_axis),
        .O(\sig_register_array[0][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFAF0FAFFC8C0C8CC)) 
    \sig_register_array[0][16]_i_1 
       (.I0(\sig_register_array_reg[0][5] ),
        .I1(\sig_register_array[0][16]_i_2_n_0 ),
        .I2(\sig_register_array_reg[0][5]_0 ),
        .I3(\sig_register_array_reg[0][5]_1 ),
        .I4(s_axi_wdata[0]),
        .I5(\sig_register_array_reg[0][16] ),
        .O(\s_axi_wdata[15] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \sig_register_array[0][16]_i_2 
       (.I0(sig_rxd_sbiterr_d1),
        .I1(\gfifo_gen.output_tvalid ),
        .I2(out),
        .I3(s_axi4_rready),
        .I4(sbiterr_axis),
        .O(\sig_register_array[0][16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \sig_register_array[0][2]_i_5 
       (.I0(out),
        .I1(s_axi4_rready),
        .I2(s2mm_prmry_reset_out_n_0),
        .I3(wr_data_count_axis[0]),
        .I4(wr_data_count_axis[1]),
        .I5(\sig_register_array[0][2]_i_9_n_0 ),
        .O(\gaxi_full_sm.r_valid_r1_reg ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \sig_register_array[0][2]_i_9 
       (.I0(wr_data_count_axis[7]),
        .I1(\sig_ip2bus_data[19]_i_2_n_0 ),
        .I2(wr_data_count_axis[8]),
        .O(\sig_register_array[0][2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFAF0FAFFC8C0C8CC)) 
    \sig_register_array[0][5]_i_1 
       (.I0(\sig_register_array_reg[0][5] ),
        .I1(\sig_register_array[0][5]_i_2_n_0 ),
        .I2(\sig_register_array_reg[0][5]_0 ),
        .I3(\sig_register_array_reg[0][5]_1 ),
        .I4(s_axi_wdata[4]),
        .I5(\sig_ip2bus_data_reg[5] ),
        .O(\s_axi_wdata[26] ));
  LUT6 #(
    .INIT(64'h00000000FFFF2000)) 
    \sig_register_array[0][5]_i_2 
       (.I0(axi_str_rxd_tvalid),
        .I1(sync_areset_n),
        .I2(s_axis_tready_i),
        .I3(axi_str_rxd_tlast),
        .I4(rx_fg_len_empty_d1),
        .I5(empty),
        .O(\sig_register_array[0][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sync_areset_n_i_1
       (.I0(s_axis_tready_i),
        .I1(sync_areset_n),
        .O(sync_areset_n_i_1_n_0));
  FDSE sync_areset_n_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sync_areset_n_i_1_n_0),
        .Q(sync_areset_n),
        .S(rst));
endmodule

(* ORIG_REF_NAME = "axis_fg" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_fg__xdcDup__1
   (m_axis_tvalid,
    axi_str_txd_tdata,
    axi_str_txd_tlast,
    prog_full_axis,
    wr_data_count_axis,
    prog_empty_axis,
    mm2s_prmry_reset_out_n,
    \s_axi_wdata[28] ,
    \s_axi_wdata[22] ,
    \s_axi_wdata[21] ,
    \s_axi_wdata[18] ,
    \s_axi_wdata[17] ,
    tx_str_dbiterr_i,
    tx_str_sbiterr_i,
    SS,
    axi4_fifo_readyn,
    sync_areset_n_reg_0,
    D,
    s_axi_aclk,
    Q,
    \gen_wr_a.gen_word_narrow.mem_reg_1 ,
    s_axis_tlast,
    axi_str_txd_tready,
    \sig_register_array_reg[0][3] ,
    \sig_register_array_reg[0][3]_0 ,
    \sig_register_array_reg[0][3]_1 ,
    s_axi_wdata,
    \sig_register_array_reg[0][3]_2 ,
    \sig_register_array_reg[0][9] ,
    \sig_register_array_reg[0][10] ,
    \sig_register_array_reg[0][13] ,
    \sig_register_array_reg[0][14] ,
    sig_txd_sbiterr_d1,
    sig_txd_dbiterr_d1,
    mm2s_prmry_reset_out_n_0,
    sync_areset_n_reg_1,
    s_axi_aresetn,
    \count_value_i_reg[8] ,
    s_axi4_wvalid,
    \count_value_i_reg[8]_0 ,
    sig_txd_prog_full_d1,
    sig_txd_prog_empty_d1);
  output m_axis_tvalid;
  output [127:0]axi_str_txd_tdata;
  output axi_str_txd_tlast;
  output prog_full_axis;
  output [0:0]wr_data_count_axis;
  output prog_empty_axis;
  output mm2s_prmry_reset_out_n;
  output \s_axi_wdata[28] ;
  output \s_axi_wdata[22] ;
  output \s_axi_wdata[21] ;
  output \s_axi_wdata[18] ;
  output \s_axi_wdata[17] ;
  output tx_str_dbiterr_i;
  output tx_str_sbiterr_i;
  output [0:0]SS;
  output axi4_fifo_readyn;
  output [0:0]sync_areset_n_reg_0;
  output [7:0]D;
  input s_axi_aclk;
  input [127:0]Q;
  input [15:0]\gen_wr_a.gen_word_narrow.mem_reg_1 ;
  input s_axis_tlast;
  input axi_str_txd_tready;
  input \sig_register_array_reg[0][3] ;
  input \sig_register_array_reg[0][3]_0 ;
  input \sig_register_array_reg[0][3]_1 ;
  input [4:0]s_axi_wdata;
  input \sig_register_array_reg[0][3]_2 ;
  input \sig_register_array_reg[0][9] ;
  input \sig_register_array_reg[0][10] ;
  input \sig_register_array_reg[0][13] ;
  input \sig_register_array_reg[0][14] ;
  input sig_txd_sbiterr_d1;
  input sig_txd_dbiterr_d1;
  input mm2s_prmry_reset_out_n_0;
  input sync_areset_n_reg_1;
  input s_axi_aresetn;
  input [1:0]\count_value_i_reg[8] ;
  input s_axi4_wvalid;
  input \count_value_i_reg[8]_0 ;
  input sig_txd_prog_full_d1;
  input sig_txd_prog_empty_d1;

  wire COMP_FIFO_n_130;
  wire COMP_FIFO_n_131;
  wire COMP_FIFO_n_132;
  wire COMP_FIFO_n_133;
  wire COMP_FIFO_n_134;
  wire COMP_FIFO_n_135;
  wire COMP_FIFO_n_136;
  wire COMP_FIFO_n_137;
  wire COMP_FIFO_n_138;
  wire COMP_FIFO_n_139;
  wire COMP_FIFO_n_140;
  wire COMP_FIFO_n_141;
  wire COMP_FIFO_n_142;
  wire COMP_FIFO_n_143;
  wire COMP_FIFO_n_144;
  wire COMP_FIFO_n_145;
  wire COMP_FIFO_n_146;
  wire COMP_FIFO_n_147;
  wire COMP_FIFO_n_148;
  wire COMP_FIFO_n_149;
  wire COMP_FIFO_n_150;
  wire COMP_FIFO_n_151;
  wire COMP_FIFO_n_152;
  wire COMP_FIFO_n_153;
  wire COMP_FIFO_n_154;
  wire COMP_FIFO_n_155;
  wire COMP_FIFO_n_156;
  wire COMP_FIFO_n_157;
  wire COMP_FIFO_n_158;
  wire COMP_FIFO_n_159;
  wire COMP_FIFO_n_160;
  wire COMP_FIFO_n_161;
  wire COMP_FIFO_n_163;
  wire COMP_FIFO_n_164;
  wire COMP_FIFO_n_165;
  wire COMP_FIFO_n_166;
  wire COMP_FIFO_n_167;
  wire COMP_FIFO_n_168;
  wire COMP_FIFO_n_169;
  wire COMP_FIFO_n_170;
  wire COMP_FIFO_n_171;
  wire COMP_FIFO_n_172;
  wire COMP_FIFO_n_173;
  wire COMP_FIFO_n_174;
  wire COMP_FIFO_n_175;
  wire COMP_FIFO_n_176;
  wire COMP_FIFO_n_177;
  wire COMP_FIFO_n_178;
  wire COMP_FIFO_n_179;
  wire COMP_FIFO_n_180;
  wire COMP_FIFO_n_181;
  wire COMP_FIFO_n_182;
  wire COMP_FIFO_n_183;
  wire COMP_FIFO_n_184;
  wire COMP_FIFO_n_185;
  wire COMP_FIFO_n_186;
  wire [7:0]D;
  wire [127:0]Q;
  wire [0:0]SS;
  wire axi4_fifo_readyn;
  wire [127:0]axi_str_txd_tdata;
  wire axi_str_txd_tlast;
  wire axi_str_txd_tready;
  wire [1:0]\count_value_i_reg[8] ;
  wire \count_value_i_reg[8]_0 ;
  wire dbiterr_axis;
  wire [15:0]\gen_wr_a.gen_word_narrow.mem_reg_1 ;
  wire \gfifo_gen.gmm2s.vacancy_i[9]_i_2_n_0 ;
  wire \gfifo_gen.input_tvalid ;
  wire [9:0]\gtxd.sig_txd_occupancy ;
  wire m_axis_tvalid;
  wire mm2s_prmry_reset_out_n;
  wire mm2s_prmry_reset_out_n_0;
  wire prog_empty_axis;
  wire prog_full_axis;
  wire s_axi4_wvalid;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [4:0]s_axi_wdata;
  wire \s_axi_wdata[17] ;
  wire \s_axi_wdata[18] ;
  wire \s_axi_wdata[21] ;
  wire \s_axi_wdata[22] ;
  wire \s_axi_wdata[28] ;
  wire s_axis_tlast;
  wire s_axis_tready_i;
  wire sbiterr_axis;
  wire \sig_register_array[0][10]_i_2_n_0 ;
  wire \sig_register_array[0][13]_i_2_n_0 ;
  wire \sig_register_array[0][14]_i_2_n_0 ;
  wire \sig_register_array[0][3]_i_3_n_0 ;
  wire \sig_register_array[0][9]_i_2_n_0 ;
  wire \sig_register_array_reg[0][10] ;
  wire \sig_register_array_reg[0][13] ;
  wire \sig_register_array_reg[0][14] ;
  wire \sig_register_array_reg[0][3] ;
  wire \sig_register_array_reg[0][3]_0 ;
  wire \sig_register_array_reg[0][3]_1 ;
  wire \sig_register_array_reg[0][3]_2 ;
  wire \sig_register_array_reg[0][9] ;
  wire sig_txd_dbiterr_d1;
  wire sig_txd_prog_empty_d1;
  wire sig_txd_prog_full_d1;
  wire sig_txd_sbiterr_d1;
  wire sync_areset_n;
  wire sync_areset_n_i_2_n_0;
  wire [0:0]sync_areset_n_reg_0;
  wire sync_areset_n_reg_1;
  wire tx_str_dbiterr_i;
  wire tx_str_sbiterr_i;
  wire [0:0]wr_data_count_axis;
  wire NLW_COMP_FIFO_almost_empty_axis_UNCONNECTED;
  wire NLW_COMP_FIFO_almost_full_axis_UNCONNECTED;
  wire [9:0]NLW_COMP_FIFO_rd_data_count_axis_UNCONNECTED;

  (* AXIS_DATA_WIDTH = "185" *) 
  (* AXIS_FINAL_DATA_WIDTH = "185" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "2" *) 
  (* CLOCKING_MODE = "0" *) 
  (* DONT_TOUCH *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_AXIS = "16'b0001011000000110" *) 
  (* EN_ADV_FEATURE_AXIS_INT = "16'b0001011000000110" *) 
  (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
  (* EN_ALMOST_FULL_INT = "1'b0" *) 
  (* EN_DATA_VALID_INT = "1'b1" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* FIFO_DEPTH = "512" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* LOG_DEPTH_AXIS = "9" *) 
  (* PACKET_FIFO = "false" *) 
  (* PKT_SIZE_LT8 = "1'b0" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "507" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "2" *) 
  (* P_PKT_MODE = "0" *) 
  (* RD_DATA_COUNT_WIDTH = "10" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* TDATA_OFFSET = "128" *) 
  (* TDATA_WIDTH = "128" *) 
  (* TDEST_OFFSET = "168" *) 
  (* TDEST_WIDTH = "4" *) 
  (* TID_OFFSET = "164" *) 
  (* TID_WIDTH = "4" *) 
  (* TKEEP_OFFSET = "160" *) 
  (* TSTRB_OFFSET = "144" *) 
  (* TUSER_MAX_WIDTH = "3927" *) 
  (* TUSER_OFFSET = "184" *) 
  (* TUSER_WIDTH = "16" *) 
  (* USE_ADV_FEATURES = "1606" *) 
  (* USE_ADV_FEATURES_INT = "825634870" *) 
  (* WR_DATA_COUNT_WIDTH = "10" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__2 COMP_FIFO
       (.almost_empty_axis(NLW_COMP_FIFO_almost_empty_axis_UNCONNECTED),
        .almost_full_axis(NLW_COMP_FIFO_almost_full_axis_UNCONNECTED),
        .dbiterr_axis(dbiterr_axis),
        .injectdbiterr_axis(1'b0),
        .injectsbiterr_axis(1'b0),
        .m_aclk(s_axi_aclk),
        .m_axis_tdata(axi_str_txd_tdata),
        .m_axis_tdest({COMP_FIFO_n_167,COMP_FIFO_n_168,COMP_FIFO_n_169,COMP_FIFO_n_170}),
        .m_axis_tid({COMP_FIFO_n_163,COMP_FIFO_n_164,COMP_FIFO_n_165,COMP_FIFO_n_166}),
        .m_axis_tkeep({COMP_FIFO_n_146,COMP_FIFO_n_147,COMP_FIFO_n_148,COMP_FIFO_n_149,COMP_FIFO_n_150,COMP_FIFO_n_151,COMP_FIFO_n_152,COMP_FIFO_n_153,COMP_FIFO_n_154,COMP_FIFO_n_155,COMP_FIFO_n_156,COMP_FIFO_n_157,COMP_FIFO_n_158,COMP_FIFO_n_159,COMP_FIFO_n_160,COMP_FIFO_n_161}),
        .m_axis_tlast(axi_str_txd_tlast),
        .m_axis_tready(axi_str_txd_tready),
        .m_axis_tstrb({COMP_FIFO_n_130,COMP_FIFO_n_131,COMP_FIFO_n_132,COMP_FIFO_n_133,COMP_FIFO_n_134,COMP_FIFO_n_135,COMP_FIFO_n_136,COMP_FIFO_n_137,COMP_FIFO_n_138,COMP_FIFO_n_139,COMP_FIFO_n_140,COMP_FIFO_n_141,COMP_FIFO_n_142,COMP_FIFO_n_143,COMP_FIFO_n_144,COMP_FIFO_n_145}),
        .m_axis_tuser({COMP_FIFO_n_171,COMP_FIFO_n_172,COMP_FIFO_n_173,COMP_FIFO_n_174,COMP_FIFO_n_175,COMP_FIFO_n_176,COMP_FIFO_n_177,COMP_FIFO_n_178,COMP_FIFO_n_179,COMP_FIFO_n_180,COMP_FIFO_n_181,COMP_FIFO_n_182,COMP_FIFO_n_183,COMP_FIFO_n_184,COMP_FIFO_n_185,COMP_FIFO_n_186}),
        .m_axis_tvalid(m_axis_tvalid),
        .prog_empty_axis(prog_empty_axis),
        .prog_full_axis(prog_full_axis),
        .rd_data_count_axis(NLW_COMP_FIFO_rd_data_count_axis_UNCONNECTED[9:0]),
        .s_aclk(s_axi_aclk),
        .s_aresetn(mm2s_prmry_reset_out_n),
        .s_axis_tdata(Q),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready_i),
        .s_axis_tstrb(\gen_wr_a.gen_word_narrow.mem_reg_1 ),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(\gfifo_gen.input_tvalid ),
        .sbiterr_axis(sbiterr_axis),
        .wr_data_count_axis({\gtxd.sig_txd_occupancy [9:2],wr_data_count_axis,\gtxd.sig_txd_occupancy [0]}));
  LUT5 #(
    .INIT(32'hBEAA0000)) 
    COMP_FIFO_i_1__0
       (.I0(s_axis_tlast),
        .I1(\count_value_i_reg[8] [0]),
        .I2(\count_value_i_reg[8] [1]),
        .I3(s_axi4_wvalid),
        .I4(\count_value_i_reg[8]_0 ),
        .O(\gfifo_gen.input_tvalid ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gaxi_full_sm.arready_int_i_8 
       (.I0(s_axis_tready_i),
        .I1(sync_areset_n),
        .O(axi4_fifo_readyn));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gaxi_full_sm.aw_ready_r_i_1 
       (.I0(sync_areset_n),
        .I1(s_axis_tready_i),
        .O(sync_areset_n_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \gfifo_gen.gmm2s.vacancy_i[2]_i_1 
       (.I0(wr_data_count_axis),
        .I1(\gtxd.sig_txd_occupancy [2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h87)) 
    \gfifo_gen.gmm2s.vacancy_i[3]_i_1 
       (.I0(\gtxd.sig_txd_occupancy [2]),
        .I1(wr_data_count_axis),
        .I2(\gtxd.sig_txd_occupancy [3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h807F)) 
    \gfifo_gen.gmm2s.vacancy_i[4]_i_1 
       (.I0(\gtxd.sig_txd_occupancy [3]),
        .I1(wr_data_count_axis),
        .I2(\gtxd.sig_txd_occupancy [2]),
        .I3(\gtxd.sig_txd_occupancy [4]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h80007FFF)) 
    \gfifo_gen.gmm2s.vacancy_i[5]_i_1 
       (.I0(\gtxd.sig_txd_occupancy [4]),
        .I1(\gtxd.sig_txd_occupancy [2]),
        .I2(wr_data_count_axis),
        .I3(\gtxd.sig_txd_occupancy [3]),
        .I4(\gtxd.sig_txd_occupancy [5]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h800000007FFFFFFF)) 
    \gfifo_gen.gmm2s.vacancy_i[6]_i_1 
       (.I0(\gtxd.sig_txd_occupancy [5]),
        .I1(\gtxd.sig_txd_occupancy [3]),
        .I2(wr_data_count_axis),
        .I3(\gtxd.sig_txd_occupancy [2]),
        .I4(\gtxd.sig_txd_occupancy [4]),
        .I5(\gtxd.sig_txd_occupancy [6]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gfifo_gen.gmm2s.vacancy_i[7]_i_1 
       (.I0(\gfifo_gen.gmm2s.vacancy_i[9]_i_2_n_0 ),
        .I1(\gtxd.sig_txd_occupancy [7]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h2D)) 
    \gfifo_gen.gmm2s.vacancy_i[8]_i_1 
       (.I0(\gtxd.sig_txd_occupancy [7]),
        .I1(\gfifo_gen.gmm2s.vacancy_i[9]_i_2_n_0 ),
        .I2(\gtxd.sig_txd_occupancy [8]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \gfifo_gen.gmm2s.vacancy_i[9]_i_1 
       (.I0(\gfifo_gen.gmm2s.vacancy_i[9]_i_2_n_0 ),
        .I1(\gtxd.sig_txd_occupancy [7]),
        .I2(\gtxd.sig_txd_occupancy [8]),
        .I3(\gtxd.sig_txd_occupancy [9]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \gfifo_gen.gmm2s.vacancy_i[9]_i_2 
       (.I0(\gtxd.sig_txd_occupancy [5]),
        .I1(\gtxd.sig_txd_occupancy [3]),
        .I2(wr_data_count_axis),
        .I3(\gtxd.sig_txd_occupancy [2]),
        .I4(\gtxd.sig_txd_occupancy [4]),
        .I5(\gtxd.sig_txd_occupancy [6]),
        .O(\gfifo_gen.gmm2s.vacancy_i[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gtxd.sig_txd_dbiterr_d1_i_1 
       (.I0(m_axis_tvalid),
        .I1(axi_str_txd_tready),
        .I2(dbiterr_axis),
        .O(tx_str_dbiterr_i));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gtxd.sig_txd_sbiterr_d1_i_1 
       (.I0(m_axis_tvalid),
        .I1(axi_str_txd_tready),
        .I2(sbiterr_axis),
        .O(tx_str_sbiterr_i));
  LUT3 #(
    .INIT(8'h10)) 
    mm2s_prmry_reset_out_n_INST_0
       (.I0(mm2s_prmry_reset_out_n_0),
        .I1(sync_areset_n_reg_1),
        .I2(s_axi_aresetn),
        .O(mm2s_prmry_reset_out_n));
  LUT6 #(
    .INIT(64'hFAF0FAFFC8C0C8CC)) 
    \sig_register_array[0][10]_i_1 
       (.I0(\sig_register_array_reg[0][3] ),
        .I1(\sig_register_array[0][10]_i_2_n_0 ),
        .I2(\sig_register_array_reg[0][3]_0 ),
        .I3(\sig_register_array_reg[0][3]_1 ),
        .I4(s_axi_wdata[2]),
        .I5(\sig_register_array_reg[0][10] ),
        .O(\s_axi_wdata[21] ));
  LUT2 #(
    .INIT(4'h2)) 
    \sig_register_array[0][10]_i_2 
       (.I0(prog_empty_axis),
        .I1(sig_txd_prog_empty_d1),
        .O(\sig_register_array[0][10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFAF0FAFFC8C0C8CC)) 
    \sig_register_array[0][13]_i_1 
       (.I0(\sig_register_array_reg[0][3] ),
        .I1(\sig_register_array[0][13]_i_2_n_0 ),
        .I2(\sig_register_array_reg[0][3]_0 ),
        .I3(\sig_register_array_reg[0][3]_1 ),
        .I4(s_axi_wdata[1]),
        .I5(\sig_register_array_reg[0][13] ),
        .O(\s_axi_wdata[18] ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \sig_register_array[0][13]_i_2 
       (.I0(sig_txd_dbiterr_d1),
        .I1(dbiterr_axis),
        .I2(m_axis_tvalid),
        .I3(axi_str_txd_tready),
        .O(\sig_register_array[0][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFAF0FAFFC8C0C8CC)) 
    \sig_register_array[0][14]_i_1 
       (.I0(\sig_register_array_reg[0][3] ),
        .I1(\sig_register_array[0][14]_i_2_n_0 ),
        .I2(\sig_register_array_reg[0][3]_0 ),
        .I3(\sig_register_array_reg[0][3]_1 ),
        .I4(s_axi_wdata[0]),
        .I5(\sig_register_array_reg[0][14] ),
        .O(\s_axi_wdata[17] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \sig_register_array[0][14]_i_2 
       (.I0(sig_txd_sbiterr_d1),
        .I1(sbiterr_axis),
        .I2(m_axis_tvalid),
        .I3(axi_str_txd_tready),
        .O(\sig_register_array[0][14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFAF0FAFFC8C0C8CC)) 
    \sig_register_array[0][3]_i_1 
       (.I0(\sig_register_array_reg[0][3] ),
        .I1(\sig_register_array[0][3]_i_3_n_0 ),
        .I2(\sig_register_array_reg[0][3]_0 ),
        .I3(\sig_register_array_reg[0][3]_1 ),
        .I4(s_axi_wdata[4]),
        .I5(\sig_register_array_reg[0][3]_2 ),
        .O(\s_axi_wdata[28] ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \sig_register_array[0][3]_i_3 
       (.I0(\gfifo_gen.gmm2s.vacancy_i[9]_i_2_n_0 ),
        .I1(\gtxd.sig_txd_occupancy [7]),
        .I2(\gtxd.sig_txd_occupancy [8]),
        .I3(\gtxd.sig_txd_occupancy [9]),
        .O(\sig_register_array[0][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAF0FAFFC8C0C8CC)) 
    \sig_register_array[0][9]_i_1 
       (.I0(\sig_register_array_reg[0][3] ),
        .I1(\sig_register_array[0][9]_i_2_n_0 ),
        .I2(\sig_register_array_reg[0][3]_0 ),
        .I3(\sig_register_array_reg[0][3]_1 ),
        .I4(s_axi_wdata[3]),
        .I5(\sig_register_array_reg[0][9] ),
        .O(\s_axi_wdata[22] ));
  LUT2 #(
    .INIT(4'h2)) 
    \sig_register_array[0][9]_i_2 
       (.I0(prog_full_axis),
        .I1(sig_txd_prog_full_d1),
        .O(\sig_register_array[0][9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    sync_areset_n_i_1
       (.I0(s_axi_aresetn),
        .I1(sync_areset_n_reg_1),
        .I2(mm2s_prmry_reset_out_n_0),
        .O(SS));
  LUT2 #(
    .INIT(4'h8)) 
    sync_areset_n_i_2
       (.I0(s_axis_tready_i),
        .I1(sync_areset_n),
        .O(sync_areset_n_i_2_n_0));
  FDSE sync_areset_n_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sync_areset_n_i_2_n_0),
        .Q(sync_areset_n),
        .S(SS));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo
   (m_axis_tvalid,
    axi_str_txd_tdata,
    axi_str_txd_tlast,
    prog_full_axis,
    prog_empty_axis,
    mm2s_prmry_reset_out_n,
    SR,
    \s_axi_wdata[28] ,
    \s_axi_wdata[22] ,
    \s_axi_wdata[21] ,
    \s_axi_wdata[18] ,
    \s_axi_wdata[17] ,
    tx_str_dbiterr_i,
    tx_str_sbiterr_i,
    D,
    Q,
    axi4_fifo_readyn,
    sync_areset_n_reg,
    s_axi_aclk,
    s_axis_tlast,
    axi_str_txd_tready,
    E,
    \gfifo_gen.gmm2s.start_wr_reg_0 ,
    \sig_register_array_reg[0][3] ,
    \sig_register_array_reg[0][3]_0 ,
    \sig_register_array_reg[0][3]_1 ,
    s_axi_wdata,
    \sig_register_array_reg[0][3]_2 ,
    \sig_register_array_reg[0][9] ,
    \sig_register_array_reg[0][10] ,
    \sig_register_array_reg[0][13] ,
    \sig_register_array_reg[0][14] ,
    sig_txd_sbiterr_d1,
    sig_txd_dbiterr_d1,
    mm2s_prmry_reset_out_n_0,
    sync_areset_n_reg_0,
    s_axi_aresetn,
    \count_value_i_reg[8] ,
    s_axi4_wvalid,
    sig_txd_prog_full_d1,
    sig_txd_prog_empty_d1,
    \sig_ip2bus_data_reg[28] ,
    wr_data_count_axis,
    \sig_ip2bus_data_reg[28]_0 ,
    s_axi4_wdata,
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 );
  output m_axis_tvalid;
  output [127:0]axi_str_txd_tdata;
  output axi_str_txd_tlast;
  output prog_full_axis;
  output prog_empty_axis;
  output mm2s_prmry_reset_out_n;
  output [0:0]SR;
  output \s_axi_wdata[28] ;
  output \s_axi_wdata[22] ;
  output \s_axi_wdata[21] ;
  output \s_axi_wdata[18] ;
  output \s_axi_wdata[17] ;
  output tx_str_dbiterr_i;
  output tx_str_sbiterr_i;
  output [2:0]D;
  output [5:0]Q;
  output axi4_fifo_readyn;
  output [0:0]sync_areset_n_reg;
  input s_axi_aclk;
  input s_axis_tlast;
  input axi_str_txd_tready;
  input [0:0]E;
  input [0:0]\gfifo_gen.gmm2s.start_wr_reg_0 ;
  input \sig_register_array_reg[0][3] ;
  input \sig_register_array_reg[0][3]_0 ;
  input \sig_register_array_reg[0][3]_1 ;
  input [4:0]s_axi_wdata;
  input \sig_register_array_reg[0][3]_2 ;
  input \sig_register_array_reg[0][9] ;
  input \sig_register_array_reg[0][10] ;
  input \sig_register_array_reg[0][13] ;
  input \sig_register_array_reg[0][14] ;
  input sig_txd_sbiterr_d1;
  input sig_txd_dbiterr_d1;
  input mm2s_prmry_reset_out_n_0;
  input sync_areset_n_reg_0;
  input s_axi_aresetn;
  input [1:0]\count_value_i_reg[8] ;
  input s_axi4_wvalid;
  input sig_txd_prog_full_d1;
  input sig_txd_prog_empty_d1;
  input \sig_ip2bus_data_reg[28] ;
  input [2:0]wr_data_count_axis;
  input \sig_ip2bus_data_reg[28]_0 ;
  input [127:0]s_axi4_wdata;
  input [15:0]\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 ;

  wire [2:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire axi4_fifo_readyn;
  wire [127:0]axi_str_txd_tdata;
  wire axi_str_txd_tlast;
  wire axi_str_txd_tready;
  wire [1:0]\count_value_i_reg[8] ;
  wire \gfifo_gen.COMP_AXIS_FG_FIFO_n_144 ;
  wire \gfifo_gen.COMP_AXIS_FG_FIFO_n_145 ;
  wire \gfifo_gen.COMP_AXIS_FG_FIFO_n_146 ;
  wire \gfifo_gen.COMP_AXIS_FG_FIFO_n_147 ;
  wire \gfifo_gen.COMP_AXIS_FG_FIFO_n_148 ;
  wire \gfifo_gen.COMP_AXIS_FG_FIFO_n_149 ;
  wire \gfifo_gen.COMP_AXIS_FG_FIFO_n_150 ;
  wire \gfifo_gen.COMP_AXIS_FG_FIFO_n_151 ;
  wire [15:0]\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 ;
  wire \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[0] ;
  wire \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[10] ;
  wire \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[11] ;
  wire \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[12] ;
  wire \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[13] ;
  wire \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[14] ;
  wire \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[15] ;
  wire \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[1] ;
  wire \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[2] ;
  wire \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[3] ;
  wire \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[4] ;
  wire \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[5] ;
  wire \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[6] ;
  wire \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[7] ;
  wire \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[8] ;
  wire \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[9] ;
  wire [0:0]\gfifo_gen.gmm2s.start_wr_reg_0 ;
  wire \gfifo_gen.gmm2s.start_wr_reg_n_0 ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[0] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[100] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[101] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[102] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[103] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[104] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[105] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[106] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[107] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[108] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[109] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[10] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[110] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[111] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[112] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[113] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[114] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[115] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[116] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[117] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[118] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[119] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[11] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[120] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[121] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[122] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[123] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[124] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[125] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[126] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[127] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[12] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[13] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[14] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[15] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[16] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[17] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[18] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[19] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[1] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[20] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[21] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[22] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[23] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[24] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[25] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[26] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[27] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[28] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[29] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[2] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[30] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[31] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[32] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[33] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[34] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[35] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[36] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[37] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[38] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[39] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[3] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[40] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[41] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[42] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[43] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[44] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[45] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[46] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[47] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[48] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[49] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[4] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[50] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[51] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[52] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[53] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[54] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[55] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[56] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[57] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[58] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[59] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[5] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[60] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[61] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[62] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[63] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[64] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[65] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[66] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[67] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[68] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[69] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[6] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[70] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[71] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[72] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[73] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[74] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[75] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[76] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[77] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[78] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[79] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[7] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[80] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[81] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[82] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[83] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[84] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[85] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[86] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[87] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[88] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[89] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[8] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[90] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[91] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[92] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[93] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[94] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[95] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[96] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[97] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[98] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[99] ;
  wire \gfifo_gen.gmm2s.wr_data_int_reg_n_0_[9] ;
  wire [1:1]\gtxd.sig_txd_occupancy ;
  wire m_axis_tvalid;
  wire mm2s_prmry_reset_out_n;
  wire mm2s_prmry_reset_out_n_0;
  wire prog_empty_axis;
  wire prog_full_axis;
  wire [127:0]s_axi4_wdata;
  wire s_axi4_wvalid;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [4:0]s_axi_wdata;
  wire \s_axi_wdata[17] ;
  wire \s_axi_wdata[18] ;
  wire \s_axi_wdata[21] ;
  wire \s_axi_wdata[22] ;
  wire \s_axi_wdata[28] ;
  wire s_axis_tlast;
  wire \sig_ip2bus_data_reg[28] ;
  wire \sig_ip2bus_data_reg[28]_0 ;
  wire \sig_register_array_reg[0][10] ;
  wire \sig_register_array_reg[0][13] ;
  wire \sig_register_array_reg[0][14] ;
  wire \sig_register_array_reg[0][3] ;
  wire \sig_register_array_reg[0][3]_0 ;
  wire \sig_register_array_reg[0][3]_1 ;
  wire \sig_register_array_reg[0][3]_2 ;
  wire \sig_register_array_reg[0][9] ;
  wire sig_txd_dbiterr_d1;
  wire sig_txd_prog_empty_d1;
  wire sig_txd_prog_full_d1;
  wire sig_txd_sbiterr_d1;
  wire [3:1]sig_txd_vacancy;
  wire [0:0]sync_areset_n_reg;
  wire sync_areset_n_reg_0;
  wire tx_str_dbiterr_i;
  wire tx_str_sbiterr_i;
  wire [2:0]wr_data_count_axis;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_fg__xdcDup__1 \gfifo_gen.COMP_AXIS_FG_FIFO 
       (.D({\gfifo_gen.COMP_AXIS_FG_FIFO_n_144 ,\gfifo_gen.COMP_AXIS_FG_FIFO_n_145 ,\gfifo_gen.COMP_AXIS_FG_FIFO_n_146 ,\gfifo_gen.COMP_AXIS_FG_FIFO_n_147 ,\gfifo_gen.COMP_AXIS_FG_FIFO_n_148 ,\gfifo_gen.COMP_AXIS_FG_FIFO_n_149 ,\gfifo_gen.COMP_AXIS_FG_FIFO_n_150 ,\gfifo_gen.COMP_AXIS_FG_FIFO_n_151 }),
        .Q({\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[127] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[126] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[125] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[124] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[123] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[122] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[121] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[120] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[119] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[118] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[117] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[116] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[115] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[114] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[113] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[112] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[111] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[110] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[109] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[108] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[107] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[106] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[105] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[104] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[103] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[102] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[101] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[100] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[99] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[98] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[97] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[96] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[95] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[94] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[93] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[92] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[91] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[90] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[89] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[88] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[87] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[86] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[85] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[84] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[83] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[82] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[81] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[80] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[79] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[78] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[77] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[76] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[75] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[74] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[73] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[72] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[71] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[70] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[69] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[68] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[67] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[66] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[65] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[64] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[63] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[62] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[61] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[60] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[59] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[58] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[57] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[56] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[55] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[54] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[53] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[52] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[51] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[50] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[49] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[48] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[47] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[46] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[45] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[44] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[43] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[42] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[41] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[40] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[39] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[38] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[37] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[36] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[35] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[34] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[33] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[32] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[31] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[30] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[29] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[28] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[27] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[26] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[25] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[24] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[23] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[22] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[21] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[20] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[19] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[18] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[17] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[16] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[15] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[14] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[13] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[12] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[11] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[10] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[9] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[8] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[7] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[6] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[5] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[4] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[3] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[2] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[1] ,\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[0] }),
        .SS(SR),
        .axi4_fifo_readyn(axi4_fifo_readyn),
        .axi_str_txd_tdata(axi_str_txd_tdata),
        .axi_str_txd_tlast(axi_str_txd_tlast),
        .axi_str_txd_tready(axi_str_txd_tready),
        .\count_value_i_reg[8] (\count_value_i_reg[8] ),
        .\count_value_i_reg[8]_0 (\gfifo_gen.gmm2s.start_wr_reg_n_0 ),
        .\gen_wr_a.gen_word_narrow.mem_reg_1 ({\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[15] ,\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[14] ,\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[13] ,\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[12] ,\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[11] ,\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[10] ,\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[9] ,\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[8] ,\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[7] ,\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[6] ,\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[5] ,\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[4] ,\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[3] ,\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[2] ,\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[1] ,\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[0] }),
        .m_axis_tvalid(m_axis_tvalid),
        .mm2s_prmry_reset_out_n(mm2s_prmry_reset_out_n),
        .mm2s_prmry_reset_out_n_0(mm2s_prmry_reset_out_n_0),
        .prog_empty_axis(prog_empty_axis),
        .prog_full_axis(prog_full_axis),
        .s_axi4_wvalid(s_axi4_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[17] (\s_axi_wdata[17] ),
        .\s_axi_wdata[18] (\s_axi_wdata[18] ),
        .\s_axi_wdata[21] (\s_axi_wdata[21] ),
        .\s_axi_wdata[22] (\s_axi_wdata[22] ),
        .\s_axi_wdata[28] (\s_axi_wdata[28] ),
        .s_axis_tlast(s_axis_tlast),
        .\sig_register_array_reg[0][10] (\sig_register_array_reg[0][10] ),
        .\sig_register_array_reg[0][13] (\sig_register_array_reg[0][13] ),
        .\sig_register_array_reg[0][14] (\sig_register_array_reg[0][14] ),
        .\sig_register_array_reg[0][3] (\sig_register_array_reg[0][3] ),
        .\sig_register_array_reg[0][3]_0 (\sig_register_array_reg[0][3]_0 ),
        .\sig_register_array_reg[0][3]_1 (\sig_register_array_reg[0][3]_1 ),
        .\sig_register_array_reg[0][3]_2 (\sig_register_array_reg[0][3]_2 ),
        .\sig_register_array_reg[0][9] (\sig_register_array_reg[0][9] ),
        .sig_txd_dbiterr_d1(sig_txd_dbiterr_d1),
        .sig_txd_prog_empty_d1(sig_txd_prog_empty_d1),
        .sig_txd_prog_full_d1(sig_txd_prog_full_d1),
        .sig_txd_sbiterr_d1(sig_txd_sbiterr_d1),
        .sync_areset_n_reg_0(sync_areset_n_reg),
        .sync_areset_n_reg_1(sync_areset_n_reg_0),
        .tx_str_dbiterr_i(tx_str_dbiterr_i),
        .tx_str_sbiterr_i(tx_str_sbiterr_i),
        .wr_data_count_axis(\gtxd.sig_txd_occupancy ));
  FDSE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 [0]),
        .Q(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[0] ),
        .S(SR));
  FDSE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 [10]),
        .Q(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[10] ),
        .S(SR));
  FDSE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 [11]),
        .Q(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[11] ),
        .S(SR));
  FDSE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 [12]),
        .Q(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[12] ),
        .S(SR));
  FDSE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 [13]),
        .Q(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[13] ),
        .S(SR));
  FDSE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 [14]),
        .Q(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[14] ),
        .S(SR));
  FDSE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 [15]),
        .Q(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[15] ),
        .S(SR));
  FDSE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 [1]),
        .Q(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[1] ),
        .S(SR));
  FDSE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 [2]),
        .Q(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[2] ),
        .S(SR));
  FDSE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 [3]),
        .Q(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[3] ),
        .S(SR));
  FDSE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 [4]),
        .Q(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[4] ),
        .S(SR));
  FDSE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 [5]),
        .Q(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[5] ),
        .S(SR));
  FDSE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 [6]),
        .Q(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[6] ),
        .S(SR));
  FDSE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 [7]),
        .Q(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[7] ),
        .S(SR));
  FDSE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 [8]),
        .Q(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[8] ),
        .S(SR));
  FDSE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 [9]),
        .Q(\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg_n_0_[9] ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.start_wr_reg 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .Q(\gfifo_gen.gmm2s.start_wr_reg_n_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.vacancy_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gtxd.sig_txd_occupancy ),
        .Q(sig_txd_vacancy[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.vacancy_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gfifo_gen.COMP_AXIS_FG_FIFO_n_151 ),
        .Q(sig_txd_vacancy[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.vacancy_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gfifo_gen.COMP_AXIS_FG_FIFO_n_150 ),
        .Q(sig_txd_vacancy[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.vacancy_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gfifo_gen.COMP_AXIS_FG_FIFO_n_149 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.vacancy_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gfifo_gen.COMP_AXIS_FG_FIFO_n_148 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.vacancy_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gfifo_gen.COMP_AXIS_FG_FIFO_n_147 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.vacancy_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gfifo_gen.COMP_AXIS_FG_FIFO_n_146 ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.vacancy_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gfifo_gen.COMP_AXIS_FG_FIFO_n_145 ),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.vacancy_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gfifo_gen.COMP_AXIS_FG_FIFO_n_144 ),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[0]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[100] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[100]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[100] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[101] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[101]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[101] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[102] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[102]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[102] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[103] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[103]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[103] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[104] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[104]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[104] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[105] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[105]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[105] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[106] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[106]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[106] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[107] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[107]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[107] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[108] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[108]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[108] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[109] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[109]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[109] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[10]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[110] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[110]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[110] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[111] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[111]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[111] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[112] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[112]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[112] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[113] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[113]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[113] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[114] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[114]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[114] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[115] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[115]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[115] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[116] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[116]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[116] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[117] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[117]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[117] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[118] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[118]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[118] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[119] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[119]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[119] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[11]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[120] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[120]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[120] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[121] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[121]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[121] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[122] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[122]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[122] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[123] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[123]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[123] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[124] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[124]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[124] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[125] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[125]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[125] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[126] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[126]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[126] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[127] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[127]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[127] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[12]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[13]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[14]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[15]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[16]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[17]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[18]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[19]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[1]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[20]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[21]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[22]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[23]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[24]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[25]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[26]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[27]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[28]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[29]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[2]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[30]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[31]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[32] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[32]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[32] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[33] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[33]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[33] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[34] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[34]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[34] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[35] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[35]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[35] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[36] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[36]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[36] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[37] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[37]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[37] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[38] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[38]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[38] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[39] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[39]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[39] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[3]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[40] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[40]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[40] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[41] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[41]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[41] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[42] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[42]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[42] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[43] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[43]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[43] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[44] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[44]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[44] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[45] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[45]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[45] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[46] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[46]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[46] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[47] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[47]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[47] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[48] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[48]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[48] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[49] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[49]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[49] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[4]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[50] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[50]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[50] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[51] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[51]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[51] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[52] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[52]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[52] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[53] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[53]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[53] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[54] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[54]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[54] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[55] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[55]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[55] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[56] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[56]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[56] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[57] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[57]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[57] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[58] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[58]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[58] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[59] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[59]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[59] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[5]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[60] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[60]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[60] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[61] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[61]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[61] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[62] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[62]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[62] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[63] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[63]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[63] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[64] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[64]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[64] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[65] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[65]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[65] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[66] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[66]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[66] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[67] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[67]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[67] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[68] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[68]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[68] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[69] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[69]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[69] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[6]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[70] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[70]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[70] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[71] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[71]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[71] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[72] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[72]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[72] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[73] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[73]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[73] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[74] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[74]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[74] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[75] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[75]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[75] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[76] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[76]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[76] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[77] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[77]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[77] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[78] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[78]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[78] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[79] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[79]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[79] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[7]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[80] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[80]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[80] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[81] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[81]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[81] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[82] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[82]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[82] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[83] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[83]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[83] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[84] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[84]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[84] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[85] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[85]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[85] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[86] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[86]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[86] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[87] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[87]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[87] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[88] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[88]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[88] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[89] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[89]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[89] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[8]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[90] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[90]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[90] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[91] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[91]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[91] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[92] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[92]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[92] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[93] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[93]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[93] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[94] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[94]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[94] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[95] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[95]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[95] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[96] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[96]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[96] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[97] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[97]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[97] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[98] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[98]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[98] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[99] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[99]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[99] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gfifo_gen.gmm2s.wr_data_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(\gfifo_gen.gmm2s.start_wr_reg_0 ),
        .D(s_axi4_wdata[9]),
        .Q(\gfifo_gen.gmm2s.wr_data_int_reg_n_0_[9] ),
        .R(SR));
  LUT4 #(
    .INIT(16'hF888)) 
    \sig_ip2bus_data[28]_i_1 
       (.I0(sig_txd_vacancy[3]),
        .I1(\sig_ip2bus_data_reg[28] ),
        .I2(wr_data_count_axis[2]),
        .I3(\sig_ip2bus_data_reg[28]_0 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \sig_ip2bus_data[29]_i_1 
       (.I0(sig_txd_vacancy[2]),
        .I1(\sig_ip2bus_data_reg[28] ),
        .I2(wr_data_count_axis[1]),
        .I3(\sig_ip2bus_data_reg[28]_0 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \sig_ip2bus_data[30]_i_1 
       (.I0(sig_txd_vacancy[1]),
        .I1(\sig_ip2bus_data_reg[28] ),
        .I2(wr_data_count_axis[0]),
        .I3(\sig_ip2bus_data_reg[28]_0 ),
        .O(D[0]));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo__parameterized0
   (s_axi4_rdata,
    wr_data_count_axis,
    prog_empty_axis,
    s2mm_prmry_reset_out_n,
    \grxd.rx_str_wr_en ,
    \s_axi_wdata[26] ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ,
    \s_axi_wdata[19] ,
    \s_axi_wdata[16] ,
    \s_axi_wdata[15] ,
    D,
    \gen_fwft.empty_fwft_i_reg ,
    \gen_fwft.empty_fwft_i_reg_0 ,
    \grxd.rx_len_wr_en_reg ,
    sig_ip2bus_data1,
    rx_complete48_out,
    axi_str_rxd_tready,
    rx_str_sbiterr_i,
    rst,
    \gaxi_full_sm.r_valid_r1_reg ,
    \gwdc.wr_data_count_i_reg[4] ,
    \gwdc.wr_data_count_i_reg[3] ,
    \gwdc.wr_data_count_i_reg[2] ,
    sig_rd_rlen_reg,
    axi_str_rxd_tlast_0,
    s_axi_aclk,
    axi_str_rxd_tdata,
    axi_str_rxd_tlast,
    m_axis_tready,
    \sig_register_array_reg[0][5] ,
    \sig_register_array_reg[0][5]_0 ,
    \sig_register_array_reg[0][5]_1 ,
    s_axi_wdata,
    \sig_ip2bus_data_reg[5] ,
    \sig_register_array_reg[0][11] ,
    \sig_register_array_reg[0][12] ,
    \sig_register_array_reg[0][15] ,
    \sig_register_array_reg[0][16] ,
    sig_rd_rlen,
    dout,
    \sig_ip2bus_data_reg[8] ,
    Q,
    \sig_ip2bus_data_reg[8]_0 ,
    \sig_ip2bus_data_reg[8]_1 ,
    \sig_ip2bus_data_reg[7] ,
    \sig_ip2bus_data_reg[6] ,
    \sig_ip2bus_data_reg[4] ,
    \sig_ip2bus_data_reg[3] ,
    \sig_ip2bus_data_reg[2] ,
    \sig_ip2bus_data_reg[17] ,
    \sig_ip2bus_data_reg[17]_0 ,
    \sig_ip2bus_data_reg[17]_1 ,
    empty,
    s2mm_prmry_reset_out_n_0,
    sig_Bus2IP_RdCE,
    axi_str_rxd_tvalid,
    \grxd.rx_partial_pkt_reg ,
    wr_en,
    s_axi_aresetn,
    sync_areset_n_reg,
    \sig_ip2bus_data_reg[25] ,
    \sig_ip2bus_data_reg[25]_0 ,
    \sig_ip2bus_data_reg[25]_1 ,
    rx_fg_len_empty_d1,
    sig_rxd_sbiterr_d1,
    out,
    s_axi4_rready,
    sig_rxd_prog_empty_d1,
    rd_en,
    O,
    DI);
  output [127:0]s_axi4_rdata;
  output [8:0]wr_data_count_axis;
  output prog_empty_axis;
  output s2mm_prmry_reset_out_n;
  output \grxd.rx_str_wr_en ;
  output \s_axi_wdata[26] ;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ;
  output \s_axi_wdata[19] ;
  output \s_axi_wdata[16] ;
  output \s_axi_wdata[15] ;
  output [15:0]D;
  output \gen_fwft.empty_fwft_i_reg ;
  output \gen_fwft.empty_fwft_i_reg_0 ;
  output \grxd.rx_len_wr_en_reg ;
  output sig_ip2bus_data1;
  output rx_complete48_out;
  output axi_str_rxd_tready;
  output rx_str_sbiterr_i;
  output rst;
  output \gaxi_full_sm.r_valid_r1_reg ;
  output \gwdc.wr_data_count_i_reg[4] ;
  output \gwdc.wr_data_count_i_reg[3] ;
  output \gwdc.wr_data_count_i_reg[2] ;
  output sig_rd_rlen_reg;
  output axi_str_rxd_tlast_0;
  input s_axi_aclk;
  input [127:0]axi_str_rxd_tdata;
  input axi_str_rxd_tlast;
  input m_axis_tready;
  input \sig_register_array_reg[0][5] ;
  input \sig_register_array_reg[0][5]_0 ;
  input \sig_register_array_reg[0][5]_1 ;
  input [4:0]s_axi_wdata;
  input \sig_ip2bus_data_reg[5] ;
  input \sig_register_array_reg[0][11] ;
  input \sig_register_array_reg[0][12] ;
  input \sig_register_array_reg[0][15] ;
  input \sig_register_array_reg[0][16] ;
  input sig_rd_rlen;
  input [7:0]dout;
  input \sig_ip2bus_data_reg[8] ;
  input [7:0]Q;
  input \sig_ip2bus_data_reg[8]_0 ;
  input \sig_ip2bus_data_reg[8]_1 ;
  input \sig_ip2bus_data_reg[7] ;
  input \sig_ip2bus_data_reg[6] ;
  input \sig_ip2bus_data_reg[4] ;
  input \sig_ip2bus_data_reg[3] ;
  input \sig_ip2bus_data_reg[2] ;
  input \sig_ip2bus_data_reg[17] ;
  input \sig_ip2bus_data_reg[17]_0 ;
  input \sig_ip2bus_data_reg[17]_1 ;
  input empty;
  input s2mm_prmry_reset_out_n_0;
  input [0:0]sig_Bus2IP_RdCE;
  input axi_str_rxd_tvalid;
  input \grxd.rx_partial_pkt_reg ;
  input wr_en;
  input s_axi_aresetn;
  input sync_areset_n_reg;
  input [2:0]\sig_ip2bus_data_reg[25] ;
  input \sig_ip2bus_data_reg[25]_0 ;
  input \sig_ip2bus_data_reg[25]_1 ;
  input rx_fg_len_empty_d1;
  input sig_rxd_sbiterr_d1;
  input out;
  input s_axi4_rready;
  input sig_rxd_prog_empty_d1;
  input rd_en;
  input [0:0]O;
  input [0:0]DI;

  wire [15:0]D;
  wire [0:0]DI;
  wire [0:0]O;
  wire [7:0]Q;
  wire [127:0]axi_str_rxd_tdata;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tlast_0;
  wire axi_str_rxd_tready;
  wire axi_str_rxd_tvalid;
  wire [7:0]dout;
  wire empty;
  wire \gaxi_full_sm.r_valid_r1_reg ;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \gen_fwft.empty_fwft_i_reg_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ;
  wire \grxd.rx_len_wr_en_reg ;
  wire \grxd.rx_partial_pkt_reg ;
  wire \grxd.rx_str_wr_en ;
  wire \gwdc.wr_data_count_i_reg[2] ;
  wire \gwdc.wr_data_count_i_reg[3] ;
  wire \gwdc.wr_data_count_i_reg[4] ;
  wire m_axis_tready;
  wire out;
  wire prog_empty_axis;
  wire rd_en;
  wire rst;
  wire rx_complete48_out;
  wire rx_fg_len_empty_d1;
  wire rx_str_sbiterr_i;
  wire s2mm_prmry_reset_out_n;
  wire s2mm_prmry_reset_out_n_0;
  wire [127:0]s_axi4_rdata;
  wire s_axi4_rready;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [4:0]s_axi_wdata;
  wire \s_axi_wdata[15] ;
  wire \s_axi_wdata[16] ;
  wire \s_axi_wdata[19] ;
  wire \s_axi_wdata[26] ;
  wire [0:0]sig_Bus2IP_RdCE;
  wire sig_ip2bus_data1;
  wire \sig_ip2bus_data_reg[17] ;
  wire \sig_ip2bus_data_reg[17]_0 ;
  wire \sig_ip2bus_data_reg[17]_1 ;
  wire [2:0]\sig_ip2bus_data_reg[25] ;
  wire \sig_ip2bus_data_reg[25]_0 ;
  wire \sig_ip2bus_data_reg[25]_1 ;
  wire \sig_ip2bus_data_reg[2] ;
  wire \sig_ip2bus_data_reg[3] ;
  wire \sig_ip2bus_data_reg[4] ;
  wire \sig_ip2bus_data_reg[5] ;
  wire \sig_ip2bus_data_reg[6] ;
  wire \sig_ip2bus_data_reg[7] ;
  wire \sig_ip2bus_data_reg[8] ;
  wire \sig_ip2bus_data_reg[8]_0 ;
  wire \sig_ip2bus_data_reg[8]_1 ;
  wire sig_rd_rlen;
  wire sig_rd_rlen_reg;
  wire \sig_register_array_reg[0][11] ;
  wire \sig_register_array_reg[0][12] ;
  wire \sig_register_array_reg[0][15] ;
  wire \sig_register_array_reg[0][16] ;
  wire \sig_register_array_reg[0][5] ;
  wire \sig_register_array_reg[0][5]_0 ;
  wire \sig_register_array_reg[0][5]_1 ;
  wire sig_rxd_prog_empty_d1;
  wire sig_rxd_sbiterr_d1;
  wire sync_areset_n_reg;
  wire [8:0]wr_data_count_axis;
  wire wr_en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_fg \gfifo_gen.COMP_AXIS_FG_FIFO 
       (.D(D),
        .DI(DI),
        .O(O),
        .Q(Q),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tlast_0(axi_str_rxd_tlast_0),
        .axi_str_rxd_tready(axi_str_rxd_tready),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .dout(dout),
        .empty(empty),
        .\gaxi_full_sm.r_valid_r1_reg (\gaxi_full_sm.r_valid_r1_reg ),
        .\gen_fwft.empty_fwft_i_reg (\gen_fwft.empty_fwft_i_reg ),
        .\gen_fwft.empty_fwft_i_reg_0 (\gen_fwft.empty_fwft_i_reg_0 ),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg (\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ),
        .\grxd.rx_len_wr_en_reg (\grxd.rx_len_wr_en_reg ),
        .\grxd.rx_partial_pkt_reg (\grxd.rx_partial_pkt_reg ),
        .\grxd.rx_str_wr_en (\grxd.rx_str_wr_en ),
        .\gwdc.wr_data_count_i_reg[2] (\gwdc.wr_data_count_i_reg[2] ),
        .\gwdc.wr_data_count_i_reg[3] (\gwdc.wr_data_count_i_reg[3] ),
        .\gwdc.wr_data_count_i_reg[4] (\gwdc.wr_data_count_i_reg[4] ),
        .m_axis_tready(m_axis_tready),
        .out(out),
        .prog_empty_axis(prog_empty_axis),
        .rd_en(rd_en),
        .rst(rst),
        .rx_complete48_out(rx_complete48_out),
        .rx_fg_len_empty_d1(rx_fg_len_empty_d1),
        .rx_str_sbiterr_i(rx_str_sbiterr_i),
        .s2mm_prmry_reset_out_n(s2mm_prmry_reset_out_n),
        .s2mm_prmry_reset_out_n_0(s2mm_prmry_reset_out_n_0),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi4_rready(s_axi4_rready),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[15] (\s_axi_wdata[15] ),
        .\s_axi_wdata[16] (\s_axi_wdata[16] ),
        .\s_axi_wdata[19] (\s_axi_wdata[19] ),
        .\s_axi_wdata[26] (\s_axi_wdata[26] ),
        .sig_Bus2IP_RdCE(sig_Bus2IP_RdCE),
        .sig_ip2bus_data1(sig_ip2bus_data1),
        .\sig_ip2bus_data_reg[17] (\sig_ip2bus_data_reg[17] ),
        .\sig_ip2bus_data_reg[17]_0 (\sig_ip2bus_data_reg[17]_0 ),
        .\sig_ip2bus_data_reg[17]_1 (\sig_ip2bus_data_reg[17]_1 ),
        .\sig_ip2bus_data_reg[25] (\sig_ip2bus_data_reg[25] ),
        .\sig_ip2bus_data_reg[25]_0 (\sig_ip2bus_data_reg[25]_0 ),
        .\sig_ip2bus_data_reg[25]_1 (\sig_ip2bus_data_reg[25]_1 ),
        .\sig_ip2bus_data_reg[2] (\sig_ip2bus_data_reg[2] ),
        .\sig_ip2bus_data_reg[3] (\sig_ip2bus_data_reg[3] ),
        .\sig_ip2bus_data_reg[4] (\sig_ip2bus_data_reg[4] ),
        .\sig_ip2bus_data_reg[5] (\sig_ip2bus_data_reg[5] ),
        .\sig_ip2bus_data_reg[6] (\sig_ip2bus_data_reg[6] ),
        .\sig_ip2bus_data_reg[7] (\sig_ip2bus_data_reg[7] ),
        .\sig_ip2bus_data_reg[8] (\sig_ip2bus_data_reg[8] ),
        .\sig_ip2bus_data_reg[8]_0 (\sig_ip2bus_data_reg[8]_0 ),
        .\sig_ip2bus_data_reg[8]_1 (\sig_ip2bus_data_reg[8]_1 ),
        .sig_rd_rlen(sig_rd_rlen),
        .sig_rd_rlen_reg(sig_rd_rlen_reg),
        .\sig_register_array_reg[0][11] (\sig_register_array_reg[0][11] ),
        .\sig_register_array_reg[0][12] (\sig_register_array_reg[0][12] ),
        .\sig_register_array_reg[0][15] (\sig_register_array_reg[0][15] ),
        .\sig_register_array_reg[0][16] (\sig_register_array_reg[0][16] ),
        .\sig_register_array_reg[0][5] (\sig_register_array_reg[0][5] ),
        .\sig_register_array_reg[0][5]_0 (\sig_register_array_reg[0][5]_0 ),
        .\sig_register_array_reg[0][5]_1 (\sig_register_array_reg[0][5]_1 ),
        .sig_rxd_prog_empty_d1(sig_rxd_prog_empty_d1),
        .sig_rxd_sbiterr_d1(sig_rxd_sbiterr_d1),
        .sync_areset_n_reg_0(sync_areset_n_reg),
        .wr_data_count_axis(wr_data_count_axis),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ipic2axi_s
   (m_axis_tvalid,
    axi_str_txd_tdata,
    axi_str_txd_tlast,
    mm2s_prmry_reset_out_n,
    sig_txd_sb_wr_en_reg_0,
    s_axi4_rdata,
    wr_data_count_axis,
    s2mm_prmry_reset_out_n,
    dout,
    empty,
    Axi_Str_RxD_AReset,
    SR,
    \sig_register_array_reg[0][2]_0 ,
    \sig_register_array_reg[0][4]_0 ,
    \sig_register_array_reg[0][6]_0 ,
    \sig_register_array_reg[0][7]_0 ,
    \sig_register_array_reg[0][8]_0 ,
    \sig_register_array_reg[0][9]_0 ,
    \sig_register_array_reg[0][10]_0 ,
    \sig_register_array_reg[0][11]_0 ,
    \sig_register_array_reg[0][12]_0 ,
    \sig_register_array_reg[0][13]_0 ,
    \sig_register_array_reg[0][14]_0 ,
    \sig_register_array_reg[0][15]_0 ,
    \sig_register_array_reg[0][16]_0 ,
    IP2Bus_WrAck_reg_0,
    IP2Bus_RdAck_reg_0,
    Axi_Str_TxD_AReset,
    IPIC_STATE,
    sig_rx_channel_reset_reg_0,
    sig_tx_channel_reset_reg_0,
    s_axi_wdata_4_sp_1,
    \gen_fwft.empty_fwft_i_reg ,
    \gen_fwft.empty_fwft_i_reg_0 ,
    Q,
    sig_ip2bus_data1,
    axi_str_rxd_tready,
    IPIC_STATE_reg_0,
    s_axi_wdata_2_sp_1,
    s_axi_wdata_7_sp_1,
    \gaxi_full_sm.r_valid_r1_reg ,
    \gwdc.wr_data_count_i_reg[4] ,
    \gwdc.wr_data_count_i_reg[3] ,
    \gen_fwft.empty_fwft_i_reg_1 ,
    \gen_fwft.empty_fwft_i_reg_2 ,
    \gen_fwft.empty_fwft_i_reg_3 ,
    \gwdc.wr_data_count_i_reg[2] ,
    interrupt,
    \sig_register_array_reg[1][0]_0 ,
    axi4_fifo_readyn,
    cs_ce_clr,
    sync_areset_n_reg,
    \sig_ip2bus_data_reg[0]_0 ,
    s_axi_aclk,
    axi_str_txd_tready,
    axi_str_rxd_tdata,
    axi_str_rxd_tlast,
    m_axis_tready,
    sig_str_rst_reg_0,
    IP2Bus_WrAck_reg_1,
    sig_txd_sb_wr_en,
    \sig_register_array_reg[0][2]_1 ,
    \sig_register_array_reg[0][4]_1 ,
    \sig_register_array_reg[0][6]_1 ,
    \sig_register_array_reg[0][7]_1 ,
    \sig_register_array_reg[0][8]_1 ,
    sig_rd_rlen,
    IP2Bus_WrAck_reg_2,
    IP2Bus_RdAck_reg_1,
    E,
    \gfifo_gen.gmm2s.start_wr_reg ,
    sig_Bus2IP_CS,
    sig_rx_channel_reset_reg_1,
    \sig_register_array_reg[0][3]_0 ,
    \sig_register_array_reg[0][3]_1 ,
    s_axi_wdata,
    s_axi_aresetn,
    D,
    \sig_ip2bus_data_reg[8]_0 ,
    \sig_ip2bus_data_reg[8]_1 ,
    \sig_ip2bus_data_reg[17]_0 ,
    \sig_ip2bus_data_reg[17]_1 ,
    \sig_ip2bus_data_reg[17]_2 ,
    sig_Bus2IP_RdCE,
    axi_str_rxd_tvalid,
    \sig_ip2bus_data_reg[28]_0 ,
    \sig_ip2bus_data_reg[28]_1 ,
    out,
    s_axi4_rready,
    \count_value_i_reg[8] ,
    s_axi4_wvalid,
    sig_tx_channel_reset_reg_1,
    s_axi4_wdata,
    \gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ,
    \sig_register_array_reg[1][0]_1 ,
    \sig_register_array_reg[1][0]_2 ,
    sel);
  output m_axis_tvalid;
  output [127:0]axi_str_txd_tdata;
  output axi_str_txd_tlast;
  output mm2s_prmry_reset_out_n;
  output sig_txd_sb_wr_en_reg_0;
  output [127:0]s_axi4_rdata;
  output [6:0]wr_data_count_axis;
  output s2mm_prmry_reset_out_n;
  output [7:0]dout;
  output empty;
  output Axi_Str_RxD_AReset;
  output [0:0]SR;
  output \sig_register_array_reg[0][2]_0 ;
  output \sig_register_array_reg[0][4]_0 ;
  output \sig_register_array_reg[0][6]_0 ;
  output \sig_register_array_reg[0][7]_0 ;
  output \sig_register_array_reg[0][8]_0 ;
  output \sig_register_array_reg[0][9]_0 ;
  output \sig_register_array_reg[0][10]_0 ;
  output \sig_register_array_reg[0][11]_0 ;
  output \sig_register_array_reg[0][12]_0 ;
  output \sig_register_array_reg[0][13]_0 ;
  output \sig_register_array_reg[0][14]_0 ;
  output \sig_register_array_reg[0][15]_0 ;
  output \sig_register_array_reg[0][16]_0 ;
  output IP2Bus_WrAck_reg_0;
  output IP2Bus_RdAck_reg_0;
  output Axi_Str_TxD_AReset;
  output IPIC_STATE;
  output sig_rx_channel_reset_reg_0;
  output sig_tx_channel_reset_reg_0;
  output s_axi_wdata_4_sp_1;
  output \gen_fwft.empty_fwft_i_reg ;
  output \gen_fwft.empty_fwft_i_reg_0 ;
  output [2:0]Q;
  output sig_ip2bus_data1;
  output axi_str_rxd_tready;
  output IPIC_STATE_reg_0;
  output s_axi_wdata_2_sp_1;
  output s_axi_wdata_7_sp_1;
  output \gaxi_full_sm.r_valid_r1_reg ;
  output \gwdc.wr_data_count_i_reg[4] ;
  output \gwdc.wr_data_count_i_reg[3] ;
  output \gen_fwft.empty_fwft_i_reg_1 ;
  output \gen_fwft.empty_fwft_i_reg_2 ;
  output \gen_fwft.empty_fwft_i_reg_3 ;
  output \gwdc.wr_data_count_i_reg[2] ;
  output interrupt;
  output [8:0]\sig_register_array_reg[1][0]_0 ;
  output axi4_fifo_readyn;
  output cs_ce_clr;
  output [0:0]sync_areset_n_reg;
  output [31:0]\sig_ip2bus_data_reg[0]_0 ;
  input s_axi_aclk;
  input axi_str_txd_tready;
  input [127:0]axi_str_rxd_tdata;
  input axi_str_rxd_tlast;
  input m_axis_tready;
  input sig_str_rst_reg_0;
  input [0:0]IP2Bus_WrAck_reg_1;
  input sig_txd_sb_wr_en;
  input \sig_register_array_reg[0][2]_1 ;
  input \sig_register_array_reg[0][4]_1 ;
  input \sig_register_array_reg[0][6]_1 ;
  input \sig_register_array_reg[0][7]_1 ;
  input \sig_register_array_reg[0][8]_1 ;
  input sig_rd_rlen;
  input IP2Bus_WrAck_reg_2;
  input IP2Bus_RdAck_reg_1;
  input [0:0]E;
  input [0:0]\gfifo_gen.gmm2s.start_wr_reg ;
  input [0:0]sig_Bus2IP_CS;
  input sig_rx_channel_reset_reg_1;
  input \sig_register_array_reg[0][3]_0 ;
  input \sig_register_array_reg[0][3]_1 ;
  input [31:0]s_axi_wdata;
  input s_axi_aresetn;
  input [12:0]D;
  input \sig_ip2bus_data_reg[8]_0 ;
  input \sig_ip2bus_data_reg[8]_1 ;
  input \sig_ip2bus_data_reg[17]_0 ;
  input \sig_ip2bus_data_reg[17]_1 ;
  input \sig_ip2bus_data_reg[17]_2 ;
  input [0:0]sig_Bus2IP_RdCE;
  input axi_str_rxd_tvalid;
  input \sig_ip2bus_data_reg[28]_0 ;
  input \sig_ip2bus_data_reg[28]_1 ;
  input out;
  input s_axi4_rready;
  input [1:0]\count_value_i_reg[8] ;
  input s_axi4_wvalid;
  input sig_tx_channel_reset_reg_1;
  input [127:0]s_axi4_wdata;
  input [15:0]\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ;
  input [0:0]\sig_register_array_reg[1][0]_1 ;
  input [16:0]\sig_register_array_reg[1][0]_2 ;
  input sel;

  wire Axi_Str_RxD_AReset;
  wire Axi_Str_TxD_AReset;
  wire [12:0]D;
  wire [0:0]E;
  wire IP2Bus_RdAck_reg_0;
  wire IP2Bus_RdAck_reg_1;
  wire IP2Bus_WrAck_reg_0;
  wire [0:0]IP2Bus_WrAck_reg_1;
  wire IP2Bus_WrAck_reg_2;
  wire IPIC_STATE;
  wire IPIC_STATE_reg_0;
  wire [2:0]Q;
  wire [28:0]R;
  wire [0:0]SR;
  wire axi4_fifo_readyn;
  wire [127:0]axi_str_rxd_tdata;
  wire axi_str_rxd_tlast;
  wire axi_str_rxd_tready;
  wire axi_str_rxd_tvalid;
  wire [127:0]axi_str_txd_tdata;
  wire axi_str_txd_tlast;
  wire axi_str_txd_tready;
  wire [1:0]\count_value_i_reg[8] ;
  wire cs_ce_clr;
  wire [7:0]dout;
  wire [14:4]dout_0;
  wire empty;
  wire eqOp0_out;
  wire [22:4]fg_rxd_wr_length;
  wire [22:5]fg_rxd_wr_length0;
  wire \gaxi_full_sm.r_valid_r1_reg ;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \gen_fwft.empty_fwft_i_reg_0 ;
  wire \gen_fwft.empty_fwft_i_reg_1 ;
  wire \gen_fwft.empty_fwft_i_reg_2 ;
  wire \gen_fwft.empty_fwft_i_reg_3 ;
  wire [15:0]\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ;
  wire [0:0]\gfifo_gen.gmm2s.start_wr_reg ;
  wire \grxd.COMP_RX_FIFO_n_140 ;
  wire \grxd.COMP_RX_FIFO_n_141 ;
  wire \grxd.COMP_RX_FIFO_n_142 ;
  wire \grxd.COMP_RX_FIFO_n_143 ;
  wire \grxd.COMP_RX_FIFO_n_144 ;
  wire \grxd.COMP_RX_FIFO_n_163 ;
  wire \grxd.COMP_RX_FIFO_n_173 ;
  wire \grxd.COMP_RX_FIFO_n_174 ;
  wire \grxd.fg_rxd_wr_length[10]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[10]_i_3_n_0 ;
  wire \grxd.fg_rxd_wr_length[11]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[12]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[13]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[14]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[15]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[16]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[17]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[18]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[19]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[20]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[21]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[22]_i_2_n_0 ;
  wire \grxd.fg_rxd_wr_length[5]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[6]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[7]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[8]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length[9]_i_1_n_0 ;
  wire \grxd.fg_rxd_wr_length_reg[10]_i_2_n_0 ;
  wire \grxd.fg_rxd_wr_length_reg[10]_i_2_n_1 ;
  wire \grxd.fg_rxd_wr_length_reg[10]_i_2_n_2 ;
  wire \grxd.fg_rxd_wr_length_reg[10]_i_2_n_3 ;
  wire \grxd.fg_rxd_wr_length_reg[10]_i_2_n_4 ;
  wire \grxd.fg_rxd_wr_length_reg[10]_i_2_n_5 ;
  wire \grxd.fg_rxd_wr_length_reg[10]_i_2_n_6 ;
  wire \grxd.fg_rxd_wr_length_reg[10]_i_2_n_7 ;
  wire \grxd.fg_rxd_wr_length_reg[12]_i_2_n_0 ;
  wire \grxd.fg_rxd_wr_length_reg[12]_i_2_n_1 ;
  wire \grxd.fg_rxd_wr_length_reg[12]_i_2_n_2 ;
  wire \grxd.fg_rxd_wr_length_reg[12]_i_2_n_3 ;
  wire \grxd.fg_rxd_wr_length_reg[12]_i_2_n_4 ;
  wire \grxd.fg_rxd_wr_length_reg[12]_i_2_n_5 ;
  wire \grxd.fg_rxd_wr_length_reg[12]_i_2_n_6 ;
  wire \grxd.fg_rxd_wr_length_reg[12]_i_2_n_7 ;
  wire \grxd.fg_rxd_wr_length_reg[18]_i_2_n_0 ;
  wire \grxd.fg_rxd_wr_length_reg[18]_i_2_n_1 ;
  wire \grxd.fg_rxd_wr_length_reg[18]_i_2_n_2 ;
  wire \grxd.fg_rxd_wr_length_reg[18]_i_2_n_3 ;
  wire \grxd.fg_rxd_wr_length_reg[18]_i_2_n_4 ;
  wire \grxd.fg_rxd_wr_length_reg[18]_i_2_n_5 ;
  wire \grxd.fg_rxd_wr_length_reg[18]_i_2_n_6 ;
  wire \grxd.fg_rxd_wr_length_reg[18]_i_2_n_7 ;
  wire \grxd.fg_rxd_wr_length_reg[20]_i_2_n_0 ;
  wire \grxd.fg_rxd_wr_length_reg[20]_i_2_n_1 ;
  wire \grxd.fg_rxd_wr_length_reg[20]_i_2_n_2 ;
  wire \grxd.fg_rxd_wr_length_reg[20]_i_2_n_3 ;
  wire \grxd.fg_rxd_wr_length_reg[20]_i_2_n_4 ;
  wire \grxd.fg_rxd_wr_length_reg[20]_i_2_n_5 ;
  wire \grxd.fg_rxd_wr_length_reg[20]_i_2_n_6 ;
  wire \grxd.fg_rxd_wr_length_reg[20]_i_2_n_7 ;
  wire \grxd.fg_rxd_wr_length_reg[22]_i_4_n_7 ;
  wire \grxd.fg_rxd_wr_length_reg[22]_i_5_n_5 ;
  wire \grxd.fg_rxd_wr_length_reg[22]_i_5_n_6 ;
  wire \grxd.fg_rxd_wr_length_reg[22]_i_5_n_7 ;
  wire \grxd.rx_len_wr_en_i_1_n_0 ;
  wire \grxd.rx_partial_pkt_reg_n_0 ;
  wire \grxd.rx_str_wr_en ;
  wire \gtxd.COMP_TXD_FIFO_n_134 ;
  wire \gtxd.COMP_TXD_FIFO_n_135 ;
  wire \gtxd.COMP_TXD_FIFO_n_136 ;
  wire \gtxd.COMP_TXD_FIFO_n_137 ;
  wire \gtxd.COMP_TXD_FIFO_n_138 ;
  wire \gtxd.sig_txd_packet_size[0]_i_1_n_0 ;
  wire [28:0]\gtxd.sig_txd_packet_size_reg ;
  wire \gtxd.sig_txd_packet_size_reg[0]_i_3_n_0 ;
  wire \gtxd.sig_txd_packet_size_reg[0]_i_3_n_1 ;
  wire \gtxd.sig_txd_packet_size_reg[0]_i_3_n_10 ;
  wire \gtxd.sig_txd_packet_size_reg[0]_i_3_n_11 ;
  wire \gtxd.sig_txd_packet_size_reg[0]_i_3_n_12 ;
  wire \gtxd.sig_txd_packet_size_reg[0]_i_3_n_13 ;
  wire \gtxd.sig_txd_packet_size_reg[0]_i_3_n_14 ;
  wire \gtxd.sig_txd_packet_size_reg[0]_i_3_n_15 ;
  wire \gtxd.sig_txd_packet_size_reg[0]_i_3_n_2 ;
  wire \gtxd.sig_txd_packet_size_reg[0]_i_3_n_3 ;
  wire \gtxd.sig_txd_packet_size_reg[0]_i_3_n_4 ;
  wire \gtxd.sig_txd_packet_size_reg[0]_i_3_n_5 ;
  wire \gtxd.sig_txd_packet_size_reg[0]_i_3_n_6 ;
  wire \gtxd.sig_txd_packet_size_reg[0]_i_3_n_7 ;
  wire \gtxd.sig_txd_packet_size_reg[0]_i_3_n_8 ;
  wire \gtxd.sig_txd_packet_size_reg[0]_i_3_n_9 ;
  wire \gtxd.sig_txd_packet_size_reg[16]_i_1_n_0 ;
  wire \gtxd.sig_txd_packet_size_reg[16]_i_1_n_1 ;
  wire \gtxd.sig_txd_packet_size_reg[16]_i_1_n_10 ;
  wire \gtxd.sig_txd_packet_size_reg[16]_i_1_n_11 ;
  wire \gtxd.sig_txd_packet_size_reg[16]_i_1_n_12 ;
  wire \gtxd.sig_txd_packet_size_reg[16]_i_1_n_13 ;
  wire \gtxd.sig_txd_packet_size_reg[16]_i_1_n_14 ;
  wire \gtxd.sig_txd_packet_size_reg[16]_i_1_n_15 ;
  wire \gtxd.sig_txd_packet_size_reg[16]_i_1_n_2 ;
  wire \gtxd.sig_txd_packet_size_reg[16]_i_1_n_3 ;
  wire \gtxd.sig_txd_packet_size_reg[16]_i_1_n_4 ;
  wire \gtxd.sig_txd_packet_size_reg[16]_i_1_n_5 ;
  wire \gtxd.sig_txd_packet_size_reg[16]_i_1_n_6 ;
  wire \gtxd.sig_txd_packet_size_reg[16]_i_1_n_7 ;
  wire \gtxd.sig_txd_packet_size_reg[16]_i_1_n_8 ;
  wire \gtxd.sig_txd_packet_size_reg[16]_i_1_n_9 ;
  wire \gtxd.sig_txd_packet_size_reg[24]_i_1_n_11 ;
  wire \gtxd.sig_txd_packet_size_reg[24]_i_1_n_12 ;
  wire \gtxd.sig_txd_packet_size_reg[24]_i_1_n_13 ;
  wire \gtxd.sig_txd_packet_size_reg[24]_i_1_n_14 ;
  wire \gtxd.sig_txd_packet_size_reg[24]_i_1_n_15 ;
  wire \gtxd.sig_txd_packet_size_reg[24]_i_1_n_4 ;
  wire \gtxd.sig_txd_packet_size_reg[24]_i_1_n_5 ;
  wire \gtxd.sig_txd_packet_size_reg[24]_i_1_n_6 ;
  wire \gtxd.sig_txd_packet_size_reg[24]_i_1_n_7 ;
  wire \gtxd.sig_txd_packet_size_reg[8]_i_1_n_0 ;
  wire \gtxd.sig_txd_packet_size_reg[8]_i_1_n_1 ;
  wire \gtxd.sig_txd_packet_size_reg[8]_i_1_n_10 ;
  wire \gtxd.sig_txd_packet_size_reg[8]_i_1_n_11 ;
  wire \gtxd.sig_txd_packet_size_reg[8]_i_1_n_12 ;
  wire \gtxd.sig_txd_packet_size_reg[8]_i_1_n_13 ;
  wire \gtxd.sig_txd_packet_size_reg[8]_i_1_n_14 ;
  wire \gtxd.sig_txd_packet_size_reg[8]_i_1_n_15 ;
  wire \gtxd.sig_txd_packet_size_reg[8]_i_1_n_2 ;
  wire \gtxd.sig_txd_packet_size_reg[8]_i_1_n_3 ;
  wire \gtxd.sig_txd_packet_size_reg[8]_i_1_n_4 ;
  wire \gtxd.sig_txd_packet_size_reg[8]_i_1_n_5 ;
  wire \gtxd.sig_txd_packet_size_reg[8]_i_1_n_6 ;
  wire \gtxd.sig_txd_packet_size_reg[8]_i_1_n_7 ;
  wire \gtxd.sig_txd_packet_size_reg[8]_i_1_n_8 ;
  wire \gtxd.sig_txd_packet_size_reg[8]_i_1_n_9 ;
  wire \gtxd.sig_txd_prog_empty ;
  wire \gwdc.wr_data_count_i_reg[2] ;
  wire \gwdc.wr_data_count_i_reg[3] ;
  wire \gwdc.wr_data_count_i_reg[4] ;
  wire interrupt;
  wire interrupt_INST_0_i_1_n_0;
  wire interrupt_INST_0_i_2_n_0;
  wire interrupt_INST_0_i_3_n_0;
  wire interrupt_INST_0_i_4_n_0;
  wire interrupt_INST_0_i_5_n_0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire mm2s_prmry_reset_out_n;
  wire out;
  wire [22:4]plusOp;
  wire rx_complete48_out;
  wire rx_fg_len_empty_d1;
  wire rx_str_sbiterr_i;
  wire s2mm_prmry_reset_out_n;
  wire [127:0]s_axi4_rdata;
  wire s_axi4_rready;
  wire [127:0]s_axi4_wdata;
  wire s_axi4_wvalid;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [31:0]s_axi_wdata;
  wire s_axi_wdata_2_sn_1;
  wire s_axi_wdata_4_sn_1;
  wire s_axi_wdata_7_sn_1;
  wire sel;
  wire [0:0]sig_Bus2IP_CS;
  wire [0:0]sig_Bus2IP_RdCE;
  wire [1:30]sig_ip2bus_data;
  wire sig_ip2bus_data1;
  wire [31:0]\sig_ip2bus_data_reg[0]_0 ;
  wire \sig_ip2bus_data_reg[17]_0 ;
  wire \sig_ip2bus_data_reg[17]_1 ;
  wire \sig_ip2bus_data_reg[17]_2 ;
  wire \sig_ip2bus_data_reg[28]_0 ;
  wire \sig_ip2bus_data_reg[28]_1 ;
  wire \sig_ip2bus_data_reg[8]_0 ;
  wire \sig_ip2bus_data_reg[8]_1 ;
  wire sig_rd_rlen;
  wire sig_rd_rlen_reg_n_0;
  wire \sig_register_array_reg[0][10]_0 ;
  wire \sig_register_array_reg[0][11]_0 ;
  wire \sig_register_array_reg[0][12]_0 ;
  wire \sig_register_array_reg[0][13]_0 ;
  wire \sig_register_array_reg[0][14]_0 ;
  wire \sig_register_array_reg[0][15]_0 ;
  wire \sig_register_array_reg[0][16]_0 ;
  wire \sig_register_array_reg[0][2]_0 ;
  wire \sig_register_array_reg[0][2]_1 ;
  wire \sig_register_array_reg[0][3]_0 ;
  wire \sig_register_array_reg[0][3]_1 ;
  wire \sig_register_array_reg[0][4]_0 ;
  wire \sig_register_array_reg[0][4]_1 ;
  wire \sig_register_array_reg[0][6]_0 ;
  wire \sig_register_array_reg[0][6]_1 ;
  wire \sig_register_array_reg[0][7]_0 ;
  wire \sig_register_array_reg[0][7]_1 ;
  wire \sig_register_array_reg[0][8]_0 ;
  wire \sig_register_array_reg[0][8]_1 ;
  wire \sig_register_array_reg[0][9]_0 ;
  wire [8:0]\sig_register_array_reg[1][0]_0 ;
  wire [0:0]\sig_register_array_reg[1][0]_1 ;
  wire [16:0]\sig_register_array_reg[1][0]_2 ;
  wire \sig_register_array_reg_n_0_[0][3] ;
  wire \sig_register_array_reg_n_0_[0][5] ;
  wire \sig_register_array_reg_n_0_[1][1] ;
  wire \sig_register_array_reg_n_0_[1][2] ;
  wire \sig_register_array_reg_n_0_[1][3] ;
  wire \sig_register_array_reg_n_0_[1][4] ;
  wire \sig_register_array_reg_n_0_[1][5] ;
  wire \sig_register_array_reg_n_0_[1][6] ;
  wire \sig_register_array_reg_n_0_[1][7] ;
  wire \sig_register_array_reg_n_0_[1][8] ;
  wire sig_rx_channel_reset_reg_0;
  wire sig_rx_channel_reset_reg_1;
  wire [2:1]sig_rxd_occupancy;
  wire sig_rxd_prog_empty;
  wire sig_rxd_prog_empty_d1;
  wire sig_rxd_sbiterr_d1;
  wire sig_str_rst_reg_0;
  wire sig_str_rst_reg_n_0;
  wire sig_tx_channel_reset_i_1_n_0;
  wire sig_tx_channel_reset_reg_0;
  wire sig_tx_channel_reset_reg_1;
  wire sig_txd_dbiterr_d1;
  wire sig_txd_prog_empty_d1;
  wire sig_txd_prog_full;
  wire sig_txd_prog_full_d1;
  wire sig_txd_sb_wr_en;
  wire sig_txd_sb_wr_en_i_10_n_0;
  wire sig_txd_sb_wr_en_i_11_n_0;
  wire sig_txd_sb_wr_en_i_12_n_0;
  wire sig_txd_sb_wr_en_i_13_n_0;
  wire sig_txd_sb_wr_en_i_14_n_0;
  wire sig_txd_sb_wr_en_i_15_n_0;
  wire sig_txd_sb_wr_en_i_16_n_0;
  wire sig_txd_sb_wr_en_i_17_n_0;
  wire sig_txd_sb_wr_en_i_18_n_0;
  wire sig_txd_sb_wr_en_i_19_n_0;
  wire sig_txd_sb_wr_en_i_22_n_0;
  wire sig_txd_sb_wr_en_i_23_n_0;
  wire sig_txd_sb_wr_en_i_24_n_0;
  wire sig_txd_sb_wr_en_i_25_n_0;
  wire sig_txd_sb_wr_en_i_26_n_0;
  wire sig_txd_sb_wr_en_i_27_n_0;
  wire sig_txd_sb_wr_en_i_28_n_0;
  wire sig_txd_sb_wr_en_i_29_n_0;
  wire sig_txd_sb_wr_en_i_32_n_0;
  wire sig_txd_sb_wr_en_i_33_n_0;
  wire sig_txd_sb_wr_en_i_34_n_0;
  wire sig_txd_sb_wr_en_i_35_n_0;
  wire sig_txd_sb_wr_en_i_36_n_0;
  wire sig_txd_sb_wr_en_i_37_n_0;
  wire sig_txd_sb_wr_en_i_38_n_0;
  wire sig_txd_sb_wr_en_i_39_n_0;
  wire sig_txd_sb_wr_en_i_40_n_0;
  wire sig_txd_sb_wr_en_i_41_n_0;
  wire sig_txd_sb_wr_en_i_42_n_0;
  wire sig_txd_sb_wr_en_i_43_n_0;
  wire sig_txd_sb_wr_en_i_44_n_0;
  wire sig_txd_sb_wr_en_i_45_n_0;
  wire sig_txd_sb_wr_en_i_46_n_0;
  wire sig_txd_sb_wr_en_i_47_n_0;
  wire sig_txd_sb_wr_en_i_48_n_0;
  wire sig_txd_sb_wr_en_i_49_n_0;
  wire sig_txd_sb_wr_en_i_50_n_0;
  wire sig_txd_sb_wr_en_i_51_n_0;
  wire sig_txd_sb_wr_en_i_52_n_0;
  wire sig_txd_sb_wr_en_i_53_n_0;
  wire sig_txd_sb_wr_en_i_54_n_0;
  wire sig_txd_sb_wr_en_i_55_n_0;
  wire sig_txd_sb_wr_en_i_56_n_0;
  wire sig_txd_sb_wr_en_i_57_n_0;
  wire sig_txd_sb_wr_en_i_58_n_0;
  wire sig_txd_sb_wr_en_i_59_n_0;
  wire sig_txd_sb_wr_en_i_7_n_0;
  wire sig_txd_sb_wr_en_i_8_n_0;
  wire sig_txd_sb_wr_en_reg_0;
  wire sig_txd_sb_wr_en_reg_i_20_n_5;
  wire sig_txd_sb_wr_en_reg_i_20_n_6;
  wire sig_txd_sb_wr_en_reg_i_20_n_7;
  wire sig_txd_sb_wr_en_reg_i_21_n_0;
  wire sig_txd_sb_wr_en_reg_i_21_n_1;
  wire sig_txd_sb_wr_en_reg_i_21_n_2;
  wire sig_txd_sb_wr_en_reg_i_21_n_3;
  wire sig_txd_sb_wr_en_reg_i_21_n_4;
  wire sig_txd_sb_wr_en_reg_i_21_n_5;
  wire sig_txd_sb_wr_en_reg_i_21_n_6;
  wire sig_txd_sb_wr_en_reg_i_21_n_7;
  wire sig_txd_sb_wr_en_reg_i_30_n_0;
  wire sig_txd_sb_wr_en_reg_i_30_n_1;
  wire sig_txd_sb_wr_en_reg_i_30_n_2;
  wire sig_txd_sb_wr_en_reg_i_30_n_3;
  wire sig_txd_sb_wr_en_reg_i_30_n_4;
  wire sig_txd_sb_wr_en_reg_i_30_n_5;
  wire sig_txd_sb_wr_en_reg_i_30_n_6;
  wire sig_txd_sb_wr_en_reg_i_30_n_7;
  wire sig_txd_sb_wr_en_reg_i_31_n_0;
  wire sig_txd_sb_wr_en_reg_i_31_n_1;
  wire sig_txd_sb_wr_en_reg_i_31_n_2;
  wire sig_txd_sb_wr_en_reg_i_31_n_3;
  wire sig_txd_sb_wr_en_reg_i_31_n_4;
  wire sig_txd_sb_wr_en_reg_i_31_n_5;
  wire sig_txd_sb_wr_en_reg_i_31_n_6;
  wire sig_txd_sb_wr_en_reg_i_31_n_7;
  wire sig_txd_sb_wr_en_reg_i_4_n_6;
  wire sig_txd_sb_wr_en_reg_i_4_n_7;
  wire sig_txd_sb_wr_en_reg_i_5_n_7;
  wire sig_txd_sb_wr_en_reg_i_6_n_0;
  wire sig_txd_sb_wr_en_reg_i_6_n_1;
  wire sig_txd_sb_wr_en_reg_i_6_n_2;
  wire sig_txd_sb_wr_en_reg_i_6_n_3;
  wire sig_txd_sb_wr_en_reg_i_6_n_4;
  wire sig_txd_sb_wr_en_reg_i_6_n_5;
  wire sig_txd_sb_wr_en_reg_i_6_n_6;
  wire sig_txd_sb_wr_en_reg_i_6_n_7;
  wire sig_txd_sb_wr_en_reg_i_9_n_0;
  wire sig_txd_sb_wr_en_reg_i_9_n_1;
  wire sig_txd_sb_wr_en_reg_i_9_n_2;
  wire sig_txd_sb_wr_en_reg_i_9_n_3;
  wire sig_txd_sb_wr_en_reg_i_9_n_4;
  wire sig_txd_sb_wr_en_reg_i_9_n_5;
  wire sig_txd_sb_wr_en_reg_i_9_n_6;
  wire sig_txd_sb_wr_en_reg_i_9_n_7;
  wire sig_txd_sbiterr_d1;
  wire [6:4]sig_txd_vacancy;
  wire [0:0]sync_areset_n_reg;
  wire tx_str_dbiterr_i;
  wire tx_str_sbiterr_i;
  wire [6:0]wr_data_count_axis;
  wire wr_en;
  wire \NLW_grxd.COMP_rx_len_fifo_almost_empty_UNCONNECTED ;
  wire \NLW_grxd.COMP_rx_len_fifo_almost_full_UNCONNECTED ;
  wire \NLW_grxd.COMP_rx_len_fifo_data_valid_UNCONNECTED ;
  wire \NLW_grxd.COMP_rx_len_fifo_dbiterr_UNCONNECTED ;
  wire \NLW_grxd.COMP_rx_len_fifo_full_UNCONNECTED ;
  wire \NLW_grxd.COMP_rx_len_fifo_overflow_UNCONNECTED ;
  wire \NLW_grxd.COMP_rx_len_fifo_prog_empty_UNCONNECTED ;
  wire \NLW_grxd.COMP_rx_len_fifo_prog_full_UNCONNECTED ;
  wire \NLW_grxd.COMP_rx_len_fifo_rd_rst_busy_UNCONNECTED ;
  wire \NLW_grxd.COMP_rx_len_fifo_sbiterr_UNCONNECTED ;
  wire \NLW_grxd.COMP_rx_len_fifo_underflow_UNCONNECTED ;
  wire \NLW_grxd.COMP_rx_len_fifo_wr_ack_UNCONNECTED ;
  wire \NLW_grxd.COMP_rx_len_fifo_wr_rst_busy_UNCONNECTED ;
  wire [3:0]\NLW_grxd.COMP_rx_len_fifo_dout_UNCONNECTED ;
  wire [0:0]\NLW_grxd.COMP_rx_len_fifo_rd_data_count_UNCONNECTED ;
  wire [0:0]\NLW_grxd.COMP_rx_len_fifo_wr_data_count_UNCONNECTED ;
  wire [0:0]\NLW_grxd.fg_rxd_wr_length_reg[10]_i_2_O_UNCONNECTED ;
  wire [7:1]\NLW_grxd.fg_rxd_wr_length_reg[22]_i_4_CO_UNCONNECTED ;
  wire [7:2]\NLW_grxd.fg_rxd_wr_length_reg[22]_i_4_O_UNCONNECTED ;
  wire [7:3]\NLW_grxd.fg_rxd_wr_length_reg[22]_i_5_CO_UNCONNECTED ;
  wire [7:4]\NLW_grxd.fg_rxd_wr_length_reg[22]_i_5_O_UNCONNECTED ;
  wire [7:4]\NLW_gtxd.sig_txd_packet_size_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_gtxd.sig_txd_packet_size_reg[24]_i_1_O_UNCONNECTED ;
  wire [7:3]NLW_sig_txd_sb_wr_en_reg_i_20_CO_UNCONNECTED;
  wire [7:4]NLW_sig_txd_sb_wr_en_reg_i_20_O_UNCONNECTED;
  wire [7:2]NLW_sig_txd_sb_wr_en_reg_i_4_CO_UNCONNECTED;
  wire [7:0]NLW_sig_txd_sb_wr_en_reg_i_4_O_UNCONNECTED;
  wire [7:2]NLW_sig_txd_sb_wr_en_reg_i_5_CO_UNCONNECTED;
  wire [7:0]NLW_sig_txd_sb_wr_en_reg_i_5_O_UNCONNECTED;
  wire [7:0]NLW_sig_txd_sb_wr_en_reg_i_6_O_UNCONNECTED;
  wire [7:0]NLW_sig_txd_sb_wr_en_reg_i_9_O_UNCONNECTED;

  assign s_axi_wdata_2_sp_1 = s_axi_wdata_2_sn_1;
  assign s_axi_wdata_4_sp_1 = s_axi_wdata_4_sn_1;
  assign s_axi_wdata_7_sp_1 = s_axi_wdata_7_sn_1;
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_BKEND_CE_REGISTERS[20].ce_out_i[20]_i_1 
       (.I0(IP2Bus_WrAck_reg_0),
        .I1(IP2Bus_RdAck_reg_0),
        .I2(s_axi_aresetn),
        .O(cs_ce_clr));
  LUT1 #(
    .INIT(2'h1)) 
    IP2Bus_RdAck_i_1
       (.I0(s_axi_aresetn),
        .O(SR));
  FDRE #(
    .INIT(1'b0)) 
    IP2Bus_RdAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_RdAck_reg_1),
        .Q(IP2Bus_RdAck_reg_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    IP2Bus_WrAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2Bus_WrAck_reg_2),
        .Q(IP2Bus_WrAck_reg_0),
        .R(IP2Bus_WrAck_reg_1));
  FDRE IPIC_STATE_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_Bus2IP_CS),
        .Q(IPIC_STATE),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo__parameterized0 \grxd.COMP_RX_FIFO 
       (.D({sig_ip2bus_data[1],sig_ip2bus_data[2],sig_ip2bus_data[3],sig_ip2bus_data[4],sig_ip2bus_data[5],sig_ip2bus_data[6],sig_ip2bus_data[7],sig_ip2bus_data[8],sig_ip2bus_data[17],sig_ip2bus_data[18],sig_ip2bus_data[19],sig_ip2bus_data[20],sig_ip2bus_data[21],sig_ip2bus_data[25],sig_ip2bus_data[26],sig_ip2bus_data[27]}),
        .DI(fg_rxd_wr_length[4]),
        .O(plusOp[4]),
        .Q({\sig_register_array_reg_n_0_[1][1] ,\sig_register_array_reg_n_0_[1][2] ,\sig_register_array_reg_n_0_[1][3] ,\sig_register_array_reg_n_0_[1][4] ,\sig_register_array_reg_n_0_[1][5] ,\sig_register_array_reg_n_0_[1][6] ,\sig_register_array_reg_n_0_[1][7] ,\sig_register_array_reg_n_0_[1][8] }),
        .axi_str_rxd_tdata(axi_str_rxd_tdata),
        .axi_str_rxd_tlast(axi_str_rxd_tlast),
        .axi_str_rxd_tlast_0(\grxd.COMP_RX_FIFO_n_174 ),
        .axi_str_rxd_tready(axi_str_rxd_tready),
        .axi_str_rxd_tvalid(axi_str_rxd_tvalid),
        .dout({dout_0[14:10],dout_0[6:4]}),
        .empty(empty),
        .\gaxi_full_sm.r_valid_r1_reg (\gaxi_full_sm.r_valid_r1_reg ),
        .\gen_fwft.empty_fwft_i_reg (\gen_fwft.empty_fwft_i_reg ),
        .\gen_fwft.empty_fwft_i_reg_0 (\gen_fwft.empty_fwft_i_reg_0 ),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg (\grxd.COMP_RX_FIFO_n_141 ),
        .\grxd.rx_len_wr_en_reg (\grxd.COMP_RX_FIFO_n_163 ),
        .\grxd.rx_partial_pkt_reg (\grxd.rx_partial_pkt_reg_n_0 ),
        .\grxd.rx_str_wr_en (\grxd.rx_str_wr_en ),
        .\gwdc.wr_data_count_i_reg[2] (\gwdc.wr_data_count_i_reg[2] ),
        .\gwdc.wr_data_count_i_reg[3] (\gwdc.wr_data_count_i_reg[3] ),
        .\gwdc.wr_data_count_i_reg[4] (\gwdc.wr_data_count_i_reg[4] ),
        .m_axis_tready(m_axis_tready),
        .out(out),
        .prog_empty_axis(sig_rxd_prog_empty),
        .rd_en(sig_rd_rlen_reg_n_0),
        .rst(Axi_Str_RxD_AReset),
        .rx_complete48_out(rx_complete48_out),
        .rx_fg_len_empty_d1(rx_fg_len_empty_d1),
        .rx_str_sbiterr_i(rx_str_sbiterr_i),
        .s2mm_prmry_reset_out_n(s2mm_prmry_reset_out_n),
        .s2mm_prmry_reset_out_n_0(sig_rx_channel_reset_reg_0),
        .s_axi4_rdata(s_axi4_rdata),
        .s_axi4_rready(s_axi4_rready),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata({s_axi_wdata[26],s_axi_wdata[20:19],s_axi_wdata[16:15]}),
        .\s_axi_wdata[15] (\grxd.COMP_RX_FIFO_n_144 ),
        .\s_axi_wdata[16] (\grxd.COMP_RX_FIFO_n_143 ),
        .\s_axi_wdata[19] (\grxd.COMP_RX_FIFO_n_142 ),
        .\s_axi_wdata[26] (\grxd.COMP_RX_FIFO_n_140 ),
        .sig_Bus2IP_RdCE(sig_Bus2IP_RdCE),
        .sig_ip2bus_data1(sig_ip2bus_data1),
        .\sig_ip2bus_data_reg[17] (\sig_ip2bus_data_reg[17]_0 ),
        .\sig_ip2bus_data_reg[17]_0 (\sig_ip2bus_data_reg[17]_1 ),
        .\sig_ip2bus_data_reg[17]_1 (\sig_ip2bus_data_reg[17]_2 ),
        .\sig_ip2bus_data_reg[25] (sig_txd_vacancy),
        .\sig_ip2bus_data_reg[25]_0 (\sig_ip2bus_data_reg[28]_0 ),
        .\sig_ip2bus_data_reg[25]_1 (\sig_ip2bus_data_reg[28]_1 ),
        .\sig_ip2bus_data_reg[2] (\sig_register_array_reg[0][2]_0 ),
        .\sig_ip2bus_data_reg[3] (\sig_register_array_reg_n_0_[0][3] ),
        .\sig_ip2bus_data_reg[4] (\sig_register_array_reg[0][4]_0 ),
        .\sig_ip2bus_data_reg[5] (\sig_register_array_reg_n_0_[0][5] ),
        .\sig_ip2bus_data_reg[6] (\sig_register_array_reg[0][6]_0 ),
        .\sig_ip2bus_data_reg[7] (\sig_register_array_reg[0][7]_0 ),
        .\sig_ip2bus_data_reg[8] (\sig_ip2bus_data_reg[8]_0 ),
        .\sig_ip2bus_data_reg[8]_0 (\sig_register_array_reg[0][8]_0 ),
        .\sig_ip2bus_data_reg[8]_1 (\sig_ip2bus_data_reg[8]_1 ),
        .sig_rd_rlen(sig_rd_rlen),
        .sig_rd_rlen_reg(\grxd.COMP_RX_FIFO_n_173 ),
        .\sig_register_array_reg[0][11] (\sig_register_array_reg[0][11]_0 ),
        .\sig_register_array_reg[0][12] (\sig_register_array_reg[0][12]_0 ),
        .\sig_register_array_reg[0][15] (\sig_register_array_reg[0][15]_0 ),
        .\sig_register_array_reg[0][16] (\sig_register_array_reg[0][16]_0 ),
        .\sig_register_array_reg[0][5] (s_axi_wdata_4_sn_1),
        .\sig_register_array_reg[0][5]_0 (\sig_register_array_reg[0][3]_0 ),
        .\sig_register_array_reg[0][5]_1 (\sig_register_array_reg[0][3]_1 ),
        .sig_rxd_prog_empty_d1(sig_rxd_prog_empty_d1),
        .sig_rxd_sbiterr_d1(sig_rxd_sbiterr_d1),
        .sync_areset_n_reg(sig_str_rst_reg_n_0),
        .wr_data_count_axis({wr_data_count_axis[6:1],sig_rxd_occupancy,wr_data_count_axis[0]}),
        .wr_en(wr_en));
  (* CASCADE_HEIGHT = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_SYNC = "16'b0000000000000000" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_WRITE_DEPTH = "128" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "1" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "1" *) 
  (* READ_DATA_WIDTH = "23" *) 
  (* READ_MODE = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "23" *) 
  (* WR_DATA_COUNT_WIDTH = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync \grxd.COMP_rx_len_fifo 
       (.almost_empty(\NLW_grxd.COMP_rx_len_fifo_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_grxd.COMP_rx_len_fifo_almost_full_UNCONNECTED ),
        .data_valid(\NLW_grxd.COMP_rx_len_fifo_data_valid_UNCONNECTED ),
        .dbiterr(\NLW_grxd.COMP_rx_len_fifo_dbiterr_UNCONNECTED ),
        .din({fg_rxd_wr_length,1'b0,1'b0,1'b0,1'b0}),
        .dout({dout,dout_0,\NLW_grxd.COMP_rx_len_fifo_dout_UNCONNECTED [3:0]}),
        .empty(empty),
        .full(\NLW_grxd.COMP_rx_len_fifo_full_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\NLW_grxd.COMP_rx_len_fifo_overflow_UNCONNECTED ),
        .prog_empty(\NLW_grxd.COMP_rx_len_fifo_prog_empty_UNCONNECTED ),
        .prog_full(\NLW_grxd.COMP_rx_len_fifo_prog_full_UNCONNECTED ),
        .rd_data_count(\NLW_grxd.COMP_rx_len_fifo_rd_data_count_UNCONNECTED [0]),
        .rd_en(sig_rd_rlen_reg_n_0),
        .rd_rst_busy(\NLW_grxd.COMP_rx_len_fifo_rd_rst_busy_UNCONNECTED ),
        .rst(Axi_Str_RxD_AReset),
        .sbiterr(\NLW_grxd.COMP_rx_len_fifo_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .underflow(\NLW_grxd.COMP_rx_len_fifo_underflow_UNCONNECTED ),
        .wr_ack(\NLW_grxd.COMP_rx_len_fifo_wr_ack_UNCONNECTED ),
        .wr_clk(s_axi_aclk),
        .wr_data_count(\NLW_grxd.COMP_rx_len_fifo_wr_data_count_UNCONNECTED [0]),
        .wr_en(wr_en),
        .wr_rst_busy(\NLW_grxd.COMP_rx_len_fifo_wr_rst_busy_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[10]_i_1 
       (.I0(fg_rxd_wr_length0[10]),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp[10]),
        .O(\grxd.fg_rxd_wr_length[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \grxd.fg_rxd_wr_length[10]_i_3 
       (.I0(fg_rxd_wr_length[4]),
        .O(\grxd.fg_rxd_wr_length[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[11]_i_1 
       (.I0(fg_rxd_wr_length0[11]),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp[11]),
        .O(\grxd.fg_rxd_wr_length[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[12]_i_1 
       (.I0(fg_rxd_wr_length0[12]),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp[12]),
        .O(\grxd.fg_rxd_wr_length[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[13]_i_1 
       (.I0(fg_rxd_wr_length0[13]),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp[13]),
        .O(\grxd.fg_rxd_wr_length[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[14]_i_1 
       (.I0(fg_rxd_wr_length0[14]),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp[14]),
        .O(\grxd.fg_rxd_wr_length[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[15]_i_1 
       (.I0(fg_rxd_wr_length0[15]),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp[15]),
        .O(\grxd.fg_rxd_wr_length[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[16]_i_1 
       (.I0(fg_rxd_wr_length0[16]),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp[16]),
        .O(\grxd.fg_rxd_wr_length[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[17]_i_1 
       (.I0(fg_rxd_wr_length0[17]),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp[17]),
        .O(\grxd.fg_rxd_wr_length[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[18]_i_1 
       (.I0(fg_rxd_wr_length0[18]),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp[18]),
        .O(\grxd.fg_rxd_wr_length[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[19]_i_1 
       (.I0(fg_rxd_wr_length0[19]),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp[19]),
        .O(\grxd.fg_rxd_wr_length[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[20]_i_1 
       (.I0(fg_rxd_wr_length0[20]),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp[20]),
        .O(\grxd.fg_rxd_wr_length[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[21]_i_1 
       (.I0(fg_rxd_wr_length0[21]),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp[21]),
        .O(\grxd.fg_rxd_wr_length[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[22]_i_2 
       (.I0(fg_rxd_wr_length0[22]),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp[22]),
        .O(\grxd.fg_rxd_wr_length[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[5]_i_1 
       (.I0(fg_rxd_wr_length0[5]),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp[5]),
        .O(\grxd.fg_rxd_wr_length[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[6]_i_1 
       (.I0(fg_rxd_wr_length0[6]),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp[6]),
        .O(\grxd.fg_rxd_wr_length[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[7]_i_1 
       (.I0(fg_rxd_wr_length0[7]),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp[7]),
        .O(\grxd.fg_rxd_wr_length[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[8]_i_1 
       (.I0(fg_rxd_wr_length0[8]),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp[8]),
        .O(\grxd.fg_rxd_wr_length[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \grxd.fg_rxd_wr_length[9]_i_1 
       (.I0(fg_rxd_wr_length0[9]),
        .I1(axi_str_rxd_tlast),
        .I2(plusOp[9]),
        .O(\grxd.fg_rxd_wr_length[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[10] 
       (.C(s_axi_aclk),
        .CE(\grxd.rx_str_wr_en ),
        .D(\grxd.fg_rxd_wr_length[10]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[10]),
        .R(\grxd.COMP_RX_FIFO_n_163 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \grxd.fg_rxd_wr_length_reg[10]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\grxd.fg_rxd_wr_length_reg[10]_i_2_n_0 ,\grxd.fg_rxd_wr_length_reg[10]_i_2_n_1 ,\grxd.fg_rxd_wr_length_reg[10]_i_2_n_2 ,\grxd.fg_rxd_wr_length_reg[10]_i_2_n_3 ,\grxd.fg_rxd_wr_length_reg[10]_i_2_n_4 ,\grxd.fg_rxd_wr_length_reg[10]_i_2_n_5 ,\grxd.fg_rxd_wr_length_reg[10]_i_2_n_6 ,\grxd.fg_rxd_wr_length_reg[10]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fg_rxd_wr_length[4],1'b0}),
        .O({plusOp[10:4],\NLW_grxd.fg_rxd_wr_length_reg[10]_i_2_O_UNCONNECTED [0]}),
        .S({fg_rxd_wr_length[10:5],\grxd.fg_rxd_wr_length[10]_i_3_n_0 ,1'b0}));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[11] 
       (.C(s_axi_aclk),
        .CE(\grxd.rx_str_wr_en ),
        .D(\grxd.fg_rxd_wr_length[11]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[11]),
        .R(\grxd.COMP_RX_FIFO_n_163 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[12] 
       (.C(s_axi_aclk),
        .CE(\grxd.rx_str_wr_en ),
        .D(\grxd.fg_rxd_wr_length[12]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[12]),
        .R(\grxd.COMP_RX_FIFO_n_163 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \grxd.fg_rxd_wr_length_reg[12]_i_2 
       (.CI(fg_rxd_wr_length[4]),
        .CI_TOP(1'b0),
        .CO({\grxd.fg_rxd_wr_length_reg[12]_i_2_n_0 ,\grxd.fg_rxd_wr_length_reg[12]_i_2_n_1 ,\grxd.fg_rxd_wr_length_reg[12]_i_2_n_2 ,\grxd.fg_rxd_wr_length_reg[12]_i_2_n_3 ,\grxd.fg_rxd_wr_length_reg[12]_i_2_n_4 ,\grxd.fg_rxd_wr_length_reg[12]_i_2_n_5 ,\grxd.fg_rxd_wr_length_reg[12]_i_2_n_6 ,\grxd.fg_rxd_wr_length_reg[12]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(fg_rxd_wr_length0[12:5]),
        .S(fg_rxd_wr_length[12:5]));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[13] 
       (.C(s_axi_aclk),
        .CE(\grxd.rx_str_wr_en ),
        .D(\grxd.fg_rxd_wr_length[13]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[13]),
        .R(\grxd.COMP_RX_FIFO_n_163 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[14] 
       (.C(s_axi_aclk),
        .CE(\grxd.rx_str_wr_en ),
        .D(\grxd.fg_rxd_wr_length[14]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[14]),
        .R(\grxd.COMP_RX_FIFO_n_163 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[15] 
       (.C(s_axi_aclk),
        .CE(\grxd.rx_str_wr_en ),
        .D(\grxd.fg_rxd_wr_length[15]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[15]),
        .R(\grxd.COMP_RX_FIFO_n_163 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[16] 
       (.C(s_axi_aclk),
        .CE(\grxd.rx_str_wr_en ),
        .D(\grxd.fg_rxd_wr_length[16]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[16]),
        .R(\grxd.COMP_RX_FIFO_n_163 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[17] 
       (.C(s_axi_aclk),
        .CE(\grxd.rx_str_wr_en ),
        .D(\grxd.fg_rxd_wr_length[17]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[17]),
        .R(\grxd.COMP_RX_FIFO_n_163 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[18] 
       (.C(s_axi_aclk),
        .CE(\grxd.rx_str_wr_en ),
        .D(\grxd.fg_rxd_wr_length[18]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[18]),
        .R(\grxd.COMP_RX_FIFO_n_163 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \grxd.fg_rxd_wr_length_reg[18]_i_2 
       (.CI(\grxd.fg_rxd_wr_length_reg[10]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\grxd.fg_rxd_wr_length_reg[18]_i_2_n_0 ,\grxd.fg_rxd_wr_length_reg[18]_i_2_n_1 ,\grxd.fg_rxd_wr_length_reg[18]_i_2_n_2 ,\grxd.fg_rxd_wr_length_reg[18]_i_2_n_3 ,\grxd.fg_rxd_wr_length_reg[18]_i_2_n_4 ,\grxd.fg_rxd_wr_length_reg[18]_i_2_n_5 ,\grxd.fg_rxd_wr_length_reg[18]_i_2_n_6 ,\grxd.fg_rxd_wr_length_reg[18]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[18:11]),
        .S(fg_rxd_wr_length[18:11]));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[19] 
       (.C(s_axi_aclk),
        .CE(\grxd.rx_str_wr_en ),
        .D(\grxd.fg_rxd_wr_length[19]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[19]),
        .R(\grxd.COMP_RX_FIFO_n_163 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[20] 
       (.C(s_axi_aclk),
        .CE(\grxd.rx_str_wr_en ),
        .D(\grxd.fg_rxd_wr_length[20]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[20]),
        .R(\grxd.COMP_RX_FIFO_n_163 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \grxd.fg_rxd_wr_length_reg[20]_i_2 
       (.CI(\grxd.fg_rxd_wr_length_reg[12]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\grxd.fg_rxd_wr_length_reg[20]_i_2_n_0 ,\grxd.fg_rxd_wr_length_reg[20]_i_2_n_1 ,\grxd.fg_rxd_wr_length_reg[20]_i_2_n_2 ,\grxd.fg_rxd_wr_length_reg[20]_i_2_n_3 ,\grxd.fg_rxd_wr_length_reg[20]_i_2_n_4 ,\grxd.fg_rxd_wr_length_reg[20]_i_2_n_5 ,\grxd.fg_rxd_wr_length_reg[20]_i_2_n_6 ,\grxd.fg_rxd_wr_length_reg[20]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(fg_rxd_wr_length0[20:13]),
        .S(fg_rxd_wr_length[20:13]));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[21] 
       (.C(s_axi_aclk),
        .CE(\grxd.rx_str_wr_en ),
        .D(\grxd.fg_rxd_wr_length[21]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[21]),
        .R(\grxd.COMP_RX_FIFO_n_163 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[22] 
       (.C(s_axi_aclk),
        .CE(\grxd.rx_str_wr_en ),
        .D(\grxd.fg_rxd_wr_length[22]_i_2_n_0 ),
        .Q(fg_rxd_wr_length[22]),
        .R(\grxd.COMP_RX_FIFO_n_163 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \grxd.fg_rxd_wr_length_reg[22]_i_4 
       (.CI(\grxd.fg_rxd_wr_length_reg[20]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_grxd.fg_rxd_wr_length_reg[22]_i_4_CO_UNCONNECTED [7:1],\grxd.fg_rxd_wr_length_reg[22]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_grxd.fg_rxd_wr_length_reg[22]_i_4_O_UNCONNECTED [7:2],fg_rxd_wr_length0[22:21]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fg_rxd_wr_length[22:21]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \grxd.fg_rxd_wr_length_reg[22]_i_5 
       (.CI(\grxd.fg_rxd_wr_length_reg[18]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_grxd.fg_rxd_wr_length_reg[22]_i_5_CO_UNCONNECTED [7:3],\grxd.fg_rxd_wr_length_reg[22]_i_5_n_5 ,\grxd.fg_rxd_wr_length_reg[22]_i_5_n_6 ,\grxd.fg_rxd_wr_length_reg[22]_i_5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_grxd.fg_rxd_wr_length_reg[22]_i_5_O_UNCONNECTED [7:4],plusOp[22:19]}),
        .S({1'b0,1'b0,1'b0,1'b0,fg_rxd_wr_length[22:19]}));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\grxd.COMP_RX_FIFO_n_174 ),
        .Q(fg_rxd_wr_length[4]),
        .R(\grxd.rx_len_wr_en_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[5] 
       (.C(s_axi_aclk),
        .CE(\grxd.rx_str_wr_en ),
        .D(\grxd.fg_rxd_wr_length[5]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[5]),
        .R(\grxd.COMP_RX_FIFO_n_163 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[6] 
       (.C(s_axi_aclk),
        .CE(\grxd.rx_str_wr_en ),
        .D(\grxd.fg_rxd_wr_length[6]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[6]),
        .R(\grxd.COMP_RX_FIFO_n_163 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[7] 
       (.C(s_axi_aclk),
        .CE(\grxd.rx_str_wr_en ),
        .D(\grxd.fg_rxd_wr_length[7]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[7]),
        .R(\grxd.COMP_RX_FIFO_n_163 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[8] 
       (.C(s_axi_aclk),
        .CE(\grxd.rx_str_wr_en ),
        .D(\grxd.fg_rxd_wr_length[8]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[8]),
        .R(\grxd.COMP_RX_FIFO_n_163 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.fg_rxd_wr_length_reg[9] 
       (.C(s_axi_aclk),
        .CE(\grxd.rx_str_wr_en ),
        .D(\grxd.fg_rxd_wr_length[9]_i_1_n_0 ),
        .Q(fg_rxd_wr_length[9]),
        .R(\grxd.COMP_RX_FIFO_n_163 ));
  FDSE #(
    .INIT(1'b0)) 
    \grxd.rx_fg_len_empty_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(empty),
        .Q(rx_fg_len_empty_d1),
        .S(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \grxd.rx_len_wr_en_i_1 
       (.I0(sig_str_rst_reg_n_0),
        .I1(s_axi_aresetn),
        .O(\grxd.rx_len_wr_en_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.rx_len_wr_en_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_complete48_out),
        .Q(wr_en),
        .R(\grxd.rx_len_wr_en_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \grxd.rx_partial_pkt_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\grxd.COMP_RX_FIFO_n_173 ),
        .Q(\grxd.rx_partial_pkt_reg_n_0 ),
        .S(Axi_Str_RxD_AReset));
  FDSE #(
    .INIT(1'b0)) 
    \grxd.sig_rxd_prog_empty_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_rxd_prog_empty),
        .Q(sig_rxd_prog_empty_d1),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \grxd.sig_rxd_sbiterr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rx_str_sbiterr_i),
        .Q(sig_rxd_sbiterr_d1),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo \gtxd.COMP_TXD_FIFO 
       (.D({sig_ip2bus_data[28],sig_ip2bus_data[29],sig_ip2bus_data[30]}),
        .E(E),
        .Q({Q,sig_txd_vacancy}),
        .SR(Axi_Str_TxD_AReset),
        .axi4_fifo_readyn(axi4_fifo_readyn),
        .axi_str_txd_tdata(axi_str_txd_tdata),
        .axi_str_txd_tlast(axi_str_txd_tlast),
        .axi_str_txd_tready(axi_str_txd_tready),
        .\count_value_i_reg[8] (\count_value_i_reg[8] ),
        .\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15]_0 (\gfifo_gen.gmm2s.gaxi4_strb.input_tstrb_reg[15] ),
        .\gfifo_gen.gmm2s.start_wr_reg_0 (\gfifo_gen.gmm2s.start_wr_reg ),
        .m_axis_tvalid(m_axis_tvalid),
        .mm2s_prmry_reset_out_n(mm2s_prmry_reset_out_n),
        .mm2s_prmry_reset_out_n_0(sig_tx_channel_reset_reg_0),
        .prog_empty_axis(\gtxd.sig_txd_prog_empty ),
        .prog_full_axis(sig_txd_prog_full),
        .s_axi4_wdata(s_axi4_wdata),
        .s_axi4_wvalid(s_axi4_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata({s_axi_wdata[28],s_axi_wdata[22:21],s_axi_wdata[18:17]}),
        .\s_axi_wdata[17] (\gtxd.COMP_TXD_FIFO_n_138 ),
        .\s_axi_wdata[18] (\gtxd.COMP_TXD_FIFO_n_137 ),
        .\s_axi_wdata[21] (\gtxd.COMP_TXD_FIFO_n_136 ),
        .\s_axi_wdata[22] (\gtxd.COMP_TXD_FIFO_n_135 ),
        .\s_axi_wdata[28] (\gtxd.COMP_TXD_FIFO_n_134 ),
        .s_axis_tlast(sig_txd_sb_wr_en_reg_0),
        .\sig_ip2bus_data_reg[28] (\sig_ip2bus_data_reg[28]_0 ),
        .\sig_ip2bus_data_reg[28]_0 (\sig_ip2bus_data_reg[28]_1 ),
        .\sig_register_array_reg[0][10] (\sig_register_array_reg[0][10]_0 ),
        .\sig_register_array_reg[0][13] (\sig_register_array_reg[0][13]_0 ),
        .\sig_register_array_reg[0][14] (\sig_register_array_reg[0][14]_0 ),
        .\sig_register_array_reg[0][3] (s_axi_wdata_4_sn_1),
        .\sig_register_array_reg[0][3]_0 (\sig_register_array_reg[0][3]_0 ),
        .\sig_register_array_reg[0][3]_1 (\sig_register_array_reg[0][3]_1 ),
        .\sig_register_array_reg[0][3]_2 (\sig_register_array_reg_n_0_[0][3] ),
        .\sig_register_array_reg[0][9] (\sig_register_array_reg[0][9]_0 ),
        .sig_txd_dbiterr_d1(sig_txd_dbiterr_d1),
        .sig_txd_prog_empty_d1(sig_txd_prog_empty_d1),
        .sig_txd_prog_full_d1(sig_txd_prog_full_d1),
        .sig_txd_sbiterr_d1(sig_txd_sbiterr_d1),
        .sync_areset_n_reg(sync_areset_n_reg),
        .sync_areset_n_reg_0(sig_str_rst_reg_n_0),
        .tx_str_dbiterr_i(tx_str_dbiterr_i),
        .tx_str_sbiterr_i(tx_str_sbiterr_i),
        .wr_data_count_axis({wr_data_count_axis[1],sig_rxd_occupancy}));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_dbiterr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_str_dbiterr_i),
        .Q(sig_txd_dbiterr_d1),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \gtxd.sig_txd_packet_size[0]_i_1 
       (.I0(Axi_Str_TxD_AReset),
        .I1(sig_txd_sb_wr_en_reg_0),
        .O(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gtxd.sig_txd_packet_size[0]_i_4 
       (.I0(\gtxd.sig_txd_packet_size_reg [0]),
        .O(R[0]));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[0] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[0]_i_3_n_15 ),
        .Q(\gtxd.sig_txd_packet_size_reg [0]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  CARRY8 \gtxd.sig_txd_packet_size_reg[0]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\gtxd.sig_txd_packet_size_reg[0]_i_3_n_0 ,\gtxd.sig_txd_packet_size_reg[0]_i_3_n_1 ,\gtxd.sig_txd_packet_size_reg[0]_i_3_n_2 ,\gtxd.sig_txd_packet_size_reg[0]_i_3_n_3 ,\gtxd.sig_txd_packet_size_reg[0]_i_3_n_4 ,\gtxd.sig_txd_packet_size_reg[0]_i_3_n_5 ,\gtxd.sig_txd_packet_size_reg[0]_i_3_n_6 ,\gtxd.sig_txd_packet_size_reg[0]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\gtxd.sig_txd_packet_size_reg[0]_i_3_n_8 ,\gtxd.sig_txd_packet_size_reg[0]_i_3_n_9 ,\gtxd.sig_txd_packet_size_reg[0]_i_3_n_10 ,\gtxd.sig_txd_packet_size_reg[0]_i_3_n_11 ,\gtxd.sig_txd_packet_size_reg[0]_i_3_n_12 ,\gtxd.sig_txd_packet_size_reg[0]_i_3_n_13 ,\gtxd.sig_txd_packet_size_reg[0]_i_3_n_14 ,\gtxd.sig_txd_packet_size_reg[0]_i_3_n_15 }),
        .S({\gtxd.sig_txd_packet_size_reg [7:1],R[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[10] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[8]_i_1_n_13 ),
        .Q(\gtxd.sig_txd_packet_size_reg [10]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[11] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[8]_i_1_n_12 ),
        .Q(\gtxd.sig_txd_packet_size_reg [11]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[12] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[8]_i_1_n_11 ),
        .Q(\gtxd.sig_txd_packet_size_reg [12]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[13] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[8]_i_1_n_10 ),
        .Q(\gtxd.sig_txd_packet_size_reg [13]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[14] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[8]_i_1_n_9 ),
        .Q(\gtxd.sig_txd_packet_size_reg [14]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[15] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[8]_i_1_n_8 ),
        .Q(\gtxd.sig_txd_packet_size_reg [15]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[16] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[16]_i_1_n_15 ),
        .Q(\gtxd.sig_txd_packet_size_reg [16]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  CARRY8 \gtxd.sig_txd_packet_size_reg[16]_i_1 
       (.CI(\gtxd.sig_txd_packet_size_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\gtxd.sig_txd_packet_size_reg[16]_i_1_n_0 ,\gtxd.sig_txd_packet_size_reg[16]_i_1_n_1 ,\gtxd.sig_txd_packet_size_reg[16]_i_1_n_2 ,\gtxd.sig_txd_packet_size_reg[16]_i_1_n_3 ,\gtxd.sig_txd_packet_size_reg[16]_i_1_n_4 ,\gtxd.sig_txd_packet_size_reg[16]_i_1_n_5 ,\gtxd.sig_txd_packet_size_reg[16]_i_1_n_6 ,\gtxd.sig_txd_packet_size_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\gtxd.sig_txd_packet_size_reg[16]_i_1_n_8 ,\gtxd.sig_txd_packet_size_reg[16]_i_1_n_9 ,\gtxd.sig_txd_packet_size_reg[16]_i_1_n_10 ,\gtxd.sig_txd_packet_size_reg[16]_i_1_n_11 ,\gtxd.sig_txd_packet_size_reg[16]_i_1_n_12 ,\gtxd.sig_txd_packet_size_reg[16]_i_1_n_13 ,\gtxd.sig_txd_packet_size_reg[16]_i_1_n_14 ,\gtxd.sig_txd_packet_size_reg[16]_i_1_n_15 }),
        .S(\gtxd.sig_txd_packet_size_reg [23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[17] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[16]_i_1_n_14 ),
        .Q(\gtxd.sig_txd_packet_size_reg [17]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[18] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[16]_i_1_n_13 ),
        .Q(\gtxd.sig_txd_packet_size_reg [18]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[19] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[16]_i_1_n_12 ),
        .Q(\gtxd.sig_txd_packet_size_reg [19]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[1] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[0]_i_3_n_14 ),
        .Q(\gtxd.sig_txd_packet_size_reg [1]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[20] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[16]_i_1_n_11 ),
        .Q(\gtxd.sig_txd_packet_size_reg [20]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[21] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[16]_i_1_n_10 ),
        .Q(\gtxd.sig_txd_packet_size_reg [21]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[22] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[16]_i_1_n_9 ),
        .Q(\gtxd.sig_txd_packet_size_reg [22]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[23] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[16]_i_1_n_8 ),
        .Q(\gtxd.sig_txd_packet_size_reg [23]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[24] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[24]_i_1_n_15 ),
        .Q(\gtxd.sig_txd_packet_size_reg [24]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  CARRY8 \gtxd.sig_txd_packet_size_reg[24]_i_1 
       (.CI(\gtxd.sig_txd_packet_size_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_gtxd.sig_txd_packet_size_reg[24]_i_1_CO_UNCONNECTED [7:4],\gtxd.sig_txd_packet_size_reg[24]_i_1_n_4 ,\gtxd.sig_txd_packet_size_reg[24]_i_1_n_5 ,\gtxd.sig_txd_packet_size_reg[24]_i_1_n_6 ,\gtxd.sig_txd_packet_size_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gtxd.sig_txd_packet_size_reg[24]_i_1_O_UNCONNECTED [7:5],\gtxd.sig_txd_packet_size_reg[24]_i_1_n_11 ,\gtxd.sig_txd_packet_size_reg[24]_i_1_n_12 ,\gtxd.sig_txd_packet_size_reg[24]_i_1_n_13 ,\gtxd.sig_txd_packet_size_reg[24]_i_1_n_14 ,\gtxd.sig_txd_packet_size_reg[24]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,\gtxd.sig_txd_packet_size_reg [28:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[25] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[24]_i_1_n_14 ),
        .Q(\gtxd.sig_txd_packet_size_reg [25]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[26] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[24]_i_1_n_13 ),
        .Q(\gtxd.sig_txd_packet_size_reg [26]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[27] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[24]_i_1_n_12 ),
        .Q(\gtxd.sig_txd_packet_size_reg [27]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[28] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[24]_i_1_n_11 ),
        .Q(\gtxd.sig_txd_packet_size_reg [28]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[2] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[0]_i_3_n_13 ),
        .Q(\gtxd.sig_txd_packet_size_reg [2]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[3] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[0]_i_3_n_12 ),
        .Q(\gtxd.sig_txd_packet_size_reg [3]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[4] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[0]_i_3_n_11 ),
        .Q(\gtxd.sig_txd_packet_size_reg [4]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[5] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[0]_i_3_n_10 ),
        .Q(\gtxd.sig_txd_packet_size_reg [5]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[6] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[0]_i_3_n_9 ),
        .Q(\gtxd.sig_txd_packet_size_reg [6]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[7] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[0]_i_3_n_8 ),
        .Q(\gtxd.sig_txd_packet_size_reg [7]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[8] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[8]_i_1_n_15 ),
        .Q(\gtxd.sig_txd_packet_size_reg [8]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  CARRY8 \gtxd.sig_txd_packet_size_reg[8]_i_1 
       (.CI(\gtxd.sig_txd_packet_size_reg[0]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\gtxd.sig_txd_packet_size_reg[8]_i_1_n_0 ,\gtxd.sig_txd_packet_size_reg[8]_i_1_n_1 ,\gtxd.sig_txd_packet_size_reg[8]_i_1_n_2 ,\gtxd.sig_txd_packet_size_reg[8]_i_1_n_3 ,\gtxd.sig_txd_packet_size_reg[8]_i_1_n_4 ,\gtxd.sig_txd_packet_size_reg[8]_i_1_n_5 ,\gtxd.sig_txd_packet_size_reg[8]_i_1_n_6 ,\gtxd.sig_txd_packet_size_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\gtxd.sig_txd_packet_size_reg[8]_i_1_n_8 ,\gtxd.sig_txd_packet_size_reg[8]_i_1_n_9 ,\gtxd.sig_txd_packet_size_reg[8]_i_1_n_10 ,\gtxd.sig_txd_packet_size_reg[8]_i_1_n_11 ,\gtxd.sig_txd_packet_size_reg[8]_i_1_n_12 ,\gtxd.sig_txd_packet_size_reg[8]_i_1_n_13 ,\gtxd.sig_txd_packet_size_reg[8]_i_1_n_14 ,\gtxd.sig_txd_packet_size_reg[8]_i_1_n_15 }),
        .S(\gtxd.sig_txd_packet_size_reg [15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_packet_size_reg[9] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\gtxd.sig_txd_packet_size_reg[8]_i_1_n_14 ),
        .Q(\gtxd.sig_txd_packet_size_reg [9]),
        .R(\gtxd.sig_txd_packet_size[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_prog_empty_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gtxd.sig_txd_prog_empty ),
        .Q(sig_txd_prog_empty_d1),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_prog_full_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_txd_prog_full),
        .Q(sig_txd_prog_full_d1),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gtxd.sig_txd_sbiterr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tx_str_sbiterr_i),
        .Q(sig_txd_sbiterr_d1),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    interrupt_INST_0
       (.I0(interrupt_INST_0_i_1_n_0),
        .I1(interrupt_INST_0_i_2_n_0),
        .I2(interrupt_INST_0_i_3_n_0),
        .I3(interrupt_INST_0_i_4_n_0),
        .I4(interrupt_INST_0_i_5_n_0),
        .O(interrupt));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    interrupt_INST_0_i_1
       (.I0(\sig_register_array_reg[0][14]_0 ),
        .I1(\sig_register_array_reg[1][0]_0 [2]),
        .I2(\sig_register_array_reg[0][15]_0 ),
        .I3(\sig_register_array_reg[1][0]_0 [1]),
        .I4(\sig_register_array_reg[1][0]_0 [0]),
        .I5(\sig_register_array_reg[0][16]_0 ),
        .O(interrupt_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    interrupt_INST_0_i_2
       (.I0(\sig_register_array_reg_n_0_[0][5] ),
        .I1(\sig_register_array_reg_n_0_[1][5] ),
        .I2(\sig_register_array_reg[0][6]_0 ),
        .I3(\sig_register_array_reg_n_0_[1][6] ),
        .I4(\sig_register_array_reg_n_0_[1][7] ),
        .I5(\sig_register_array_reg[0][7]_0 ),
        .O(interrupt_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    interrupt_INST_0_i_3
       (.I0(\sig_register_array_reg[0][2]_0 ),
        .I1(\sig_register_array_reg_n_0_[1][2] ),
        .I2(\sig_register_array_reg_n_0_[0][3] ),
        .I3(\sig_register_array_reg_n_0_[1][3] ),
        .I4(\sig_register_array_reg_n_0_[1][4] ),
        .I5(\sig_register_array_reg[0][4]_0 ),
        .O(interrupt_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    interrupt_INST_0_i_4
       (.I0(\sig_register_array_reg[0][8]_0 ),
        .I1(\sig_register_array_reg_n_0_[1][8] ),
        .I2(\sig_register_array_reg[0][9]_0 ),
        .I3(\sig_register_array_reg[1][0]_0 [7]),
        .I4(\sig_register_array_reg[1][0]_0 [6]),
        .I5(\sig_register_array_reg[0][10]_0 ),
        .O(interrupt_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    interrupt_INST_0_i_5
       (.I0(\sig_register_array_reg[0][11]_0 ),
        .I1(\sig_register_array_reg[1][0]_0 [5]),
        .I2(\sig_register_array_reg[0][12]_0 ),
        .I3(\sig_register_array_reg[1][0]_0 [4]),
        .I4(\sig_register_array_reg[1][0]_0 [3]),
        .I5(\sig_register_array_reg[0][13]_0 ),
        .O(interrupt_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \sig_ip2bus_data[22]_i_3 
       (.I0(empty),
        .I1(\sig_ip2bus_data_reg[17]_2 ),
        .I2(\sig_ip2bus_data_reg[17]_1 ),
        .I3(sig_rx_channel_reset_reg_0),
        .I4(sig_Bus2IP_RdCE),
        .I5(dout_0[9]),
        .O(\gen_fwft.empty_fwft_i_reg_1 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \sig_ip2bus_data[23]_i_3 
       (.I0(empty),
        .I1(\sig_ip2bus_data_reg[17]_2 ),
        .I2(\sig_ip2bus_data_reg[17]_1 ),
        .I3(sig_rx_channel_reset_reg_0),
        .I4(sig_Bus2IP_RdCE),
        .I5(dout_0[8]),
        .O(\gen_fwft.empty_fwft_i_reg_2 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \sig_ip2bus_data[24]_i_3 
       (.I0(empty),
        .I1(\sig_ip2bus_data_reg[17]_2 ),
        .I2(\sig_ip2bus_data_reg[17]_1 ),
        .I3(sig_rx_channel_reset_reg_0),
        .I4(sig_Bus2IP_RdCE),
        .I5(dout_0[7]),
        .O(\gen_fwft.empty_fwft_i_reg_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(\sig_ip2bus_data_reg[0]_0 [31]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(\sig_ip2bus_data_reg[0]_0 [21]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\sig_ip2bus_data_reg[0]_0 [20]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\sig_ip2bus_data_reg[0]_0 [19]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\sig_ip2bus_data_reg[0]_0 [18]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\sig_ip2bus_data_reg[0]_0 [17]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\sig_ip2bus_data_reg[0]_0 [16]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\sig_ip2bus_data_reg[0]_0 [15]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[17]),
        .Q(\sig_ip2bus_data_reg[0]_0 [14]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[18]),
        .Q(\sig_ip2bus_data_reg[0]_0 [13]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[19]),
        .Q(\sig_ip2bus_data_reg[0]_0 [12]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[1]),
        .Q(\sig_ip2bus_data_reg[0]_0 [30]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[20]),
        .Q(\sig_ip2bus_data_reg[0]_0 [11]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[21]),
        .Q(\sig_ip2bus_data_reg[0]_0 [10]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\sig_ip2bus_data_reg[0]_0 [9]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\sig_ip2bus_data_reg[0]_0 [8]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\sig_ip2bus_data_reg[0]_0 [7]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[25]),
        .Q(\sig_ip2bus_data_reg[0]_0 [6]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[26]),
        .Q(\sig_ip2bus_data_reg[0]_0 [5]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[27]),
        .Q(\sig_ip2bus_data_reg[0]_0 [4]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[28]),
        .Q(\sig_ip2bus_data_reg[0]_0 [3]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[29]),
        .Q(\sig_ip2bus_data_reg[0]_0 [2]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[2]),
        .Q(\sig_ip2bus_data_reg[0]_0 [29]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[30]),
        .Q(\sig_ip2bus_data_reg[0]_0 [1]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\sig_ip2bus_data_reg[0]_0 [0]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[3]),
        .Q(\sig_ip2bus_data_reg[0]_0 [28]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[4]),
        .Q(\sig_ip2bus_data_reg[0]_0 [27]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[5]),
        .Q(\sig_ip2bus_data_reg[0]_0 [26]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[6]),
        .Q(\sig_ip2bus_data_reg[0]_0 [25]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[7]),
        .Q(\sig_ip2bus_data_reg[0]_0 [24]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_ip2bus_data[8]),
        .Q(\sig_ip2bus_data_reg[0]_0 [23]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    \sig_ip2bus_data_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(\sig_ip2bus_data_reg[0]_0 [22]),
        .R(IP2Bus_WrAck_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    sig_rd_rlen_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_rd_rlen),
        .Q(sig_rd_rlen_reg_n_0),
        .R(IP2Bus_WrAck_reg_1));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \sig_register_array[0][3]_i_2 
       (.I0(s_axi_wdata[4]),
        .I1(s_axi_wdata[5]),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_wdata[2]),
        .I4(s_axi_wdata_7_sn_1),
        .O(s_axi_wdata_4_sn_1));
  FDRE \sig_register_array_reg[0][10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gtxd.COMP_TXD_FIFO_n_136 ),
        .Q(\sig_register_array_reg[0][10]_0 ),
        .R(SR));
  FDRE \sig_register_array_reg[0][11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\grxd.COMP_RX_FIFO_n_141 ),
        .Q(\sig_register_array_reg[0][11]_0 ),
        .R(SR));
  FDRE \sig_register_array_reg[0][12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\grxd.COMP_RX_FIFO_n_142 ),
        .Q(\sig_register_array_reg[0][12]_0 ),
        .R(SR));
  FDRE \sig_register_array_reg[0][13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gtxd.COMP_TXD_FIFO_n_137 ),
        .Q(\sig_register_array_reg[0][13]_0 ),
        .R(SR));
  FDRE \sig_register_array_reg[0][14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gtxd.COMP_TXD_FIFO_n_138 ),
        .Q(\sig_register_array_reg[0][14]_0 ),
        .R(SR));
  FDRE \sig_register_array_reg[0][15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\grxd.COMP_RX_FIFO_n_143 ),
        .Q(\sig_register_array_reg[0][15]_0 ),
        .R(SR));
  FDRE \sig_register_array_reg[0][16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\grxd.COMP_RX_FIFO_n_144 ),
        .Q(\sig_register_array_reg[0][16]_0 ),
        .R(SR));
  FDRE \sig_register_array_reg[0][2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sig_register_array_reg[0][2]_1 ),
        .Q(\sig_register_array_reg[0][2]_0 ),
        .R(SR));
  FDRE \sig_register_array_reg[0][3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gtxd.COMP_TXD_FIFO_n_134 ),
        .Q(\sig_register_array_reg_n_0_[0][3] ),
        .R(SR));
  FDRE \sig_register_array_reg[0][4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sig_register_array_reg[0][4]_1 ),
        .Q(\sig_register_array_reg[0][4]_0 ),
        .R(SR));
  FDRE \sig_register_array_reg[0][5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\grxd.COMP_RX_FIFO_n_140 ),
        .Q(\sig_register_array_reg_n_0_[0][5] ),
        .R(SR));
  FDRE \sig_register_array_reg[0][6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sig_register_array_reg[0][6]_1 ),
        .Q(\sig_register_array_reg[0][6]_0 ),
        .R(SR));
  FDRE \sig_register_array_reg[0][7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sig_register_array_reg[0][7]_1 ),
        .Q(\sig_register_array_reg[0][7]_0 ),
        .R(SR));
  FDRE \sig_register_array_reg[0][8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\sig_register_array_reg[0][8]_1 ),
        .Q(\sig_register_array_reg[0][8]_0 ),
        .R(SR));
  FDRE \sig_register_array_reg[0][9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gtxd.COMP_TXD_FIFO_n_135 ),
        .Q(\sig_register_array_reg[0][9]_0 ),
        .R(SR));
  FDRE \sig_register_array_reg[1][0] 
       (.C(s_axi_aclk),
        .CE(\sig_register_array_reg[1][0]_1 ),
        .D(\sig_register_array_reg[1][0]_2 [16]),
        .Q(\sig_register_array_reg[1][0]_0 [8]),
        .R(SR));
  FDRE \sig_register_array_reg[1][10] 
       (.C(s_axi_aclk),
        .CE(\sig_register_array_reg[1][0]_1 ),
        .D(\sig_register_array_reg[1][0]_2 [6]),
        .Q(\sig_register_array_reg[1][0]_0 [6]),
        .R(SR));
  FDRE \sig_register_array_reg[1][11] 
       (.C(s_axi_aclk),
        .CE(\sig_register_array_reg[1][0]_1 ),
        .D(\sig_register_array_reg[1][0]_2 [5]),
        .Q(\sig_register_array_reg[1][0]_0 [5]),
        .R(SR));
  FDRE \sig_register_array_reg[1][12] 
       (.C(s_axi_aclk),
        .CE(\sig_register_array_reg[1][0]_1 ),
        .D(\sig_register_array_reg[1][0]_2 [4]),
        .Q(\sig_register_array_reg[1][0]_0 [4]),
        .R(SR));
  FDRE \sig_register_array_reg[1][13] 
       (.C(s_axi_aclk),
        .CE(\sig_register_array_reg[1][0]_1 ),
        .D(\sig_register_array_reg[1][0]_2 [3]),
        .Q(\sig_register_array_reg[1][0]_0 [3]),
        .R(SR));
  FDRE \sig_register_array_reg[1][14] 
       (.C(s_axi_aclk),
        .CE(\sig_register_array_reg[1][0]_1 ),
        .D(\sig_register_array_reg[1][0]_2 [2]),
        .Q(\sig_register_array_reg[1][0]_0 [2]),
        .R(SR));
  FDRE \sig_register_array_reg[1][15] 
       (.C(s_axi_aclk),
        .CE(\sig_register_array_reg[1][0]_1 ),
        .D(\sig_register_array_reg[1][0]_2 [1]),
        .Q(\sig_register_array_reg[1][0]_0 [1]),
        .R(SR));
  FDRE \sig_register_array_reg[1][16] 
       (.C(s_axi_aclk),
        .CE(\sig_register_array_reg[1][0]_1 ),
        .D(\sig_register_array_reg[1][0]_2 [0]),
        .Q(\sig_register_array_reg[1][0]_0 [0]),
        .R(SR));
  FDRE \sig_register_array_reg[1][1] 
       (.C(s_axi_aclk),
        .CE(\sig_register_array_reg[1][0]_1 ),
        .D(\sig_register_array_reg[1][0]_2 [15]),
        .Q(\sig_register_array_reg_n_0_[1][1] ),
        .R(SR));
  FDRE \sig_register_array_reg[1][2] 
       (.C(s_axi_aclk),
        .CE(\sig_register_array_reg[1][0]_1 ),
        .D(\sig_register_array_reg[1][0]_2 [14]),
        .Q(\sig_register_array_reg_n_0_[1][2] ),
        .R(SR));
  FDRE \sig_register_array_reg[1][3] 
       (.C(s_axi_aclk),
        .CE(\sig_register_array_reg[1][0]_1 ),
        .D(\sig_register_array_reg[1][0]_2 [13]),
        .Q(\sig_register_array_reg_n_0_[1][3] ),
        .R(SR));
  FDRE \sig_register_array_reg[1][4] 
       (.C(s_axi_aclk),
        .CE(\sig_register_array_reg[1][0]_1 ),
        .D(\sig_register_array_reg[1][0]_2 [12]),
        .Q(\sig_register_array_reg_n_0_[1][4] ),
        .R(SR));
  FDRE \sig_register_array_reg[1][5] 
       (.C(s_axi_aclk),
        .CE(\sig_register_array_reg[1][0]_1 ),
        .D(\sig_register_array_reg[1][0]_2 [11]),
        .Q(\sig_register_array_reg_n_0_[1][5] ),
        .R(SR));
  FDRE \sig_register_array_reg[1][6] 
       (.C(s_axi_aclk),
        .CE(\sig_register_array_reg[1][0]_1 ),
        .D(\sig_register_array_reg[1][0]_2 [10]),
        .Q(\sig_register_array_reg_n_0_[1][6] ),
        .R(SR));
  FDRE \sig_register_array_reg[1][7] 
       (.C(s_axi_aclk),
        .CE(\sig_register_array_reg[1][0]_1 ),
        .D(\sig_register_array_reg[1][0]_2 [9]),
        .Q(\sig_register_array_reg_n_0_[1][7] ),
        .R(SR));
  FDRE \sig_register_array_reg[1][8] 
       (.C(s_axi_aclk),
        .CE(\sig_register_array_reg[1][0]_1 ),
        .D(\sig_register_array_reg[1][0]_2 [8]),
        .Q(\sig_register_array_reg_n_0_[1][8] ),
        .R(SR));
  FDRE \sig_register_array_reg[1][9] 
       (.C(s_axi_aclk),
        .CE(\sig_register_array_reg[1][0]_1 ),
        .D(\sig_register_array_reg[1][0]_2 [7]),
        .Q(\sig_register_array_reg[1][0]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sig_rx_channel_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_rx_channel_reset_reg_1),
        .Q(sig_rx_channel_reset_reg_0),
        .R(SR));
  LUT2 #(
    .INIT(4'hB)) 
    sig_str_rst_i_4
       (.I0(IPIC_STATE),
        .I1(sig_Bus2IP_CS),
        .O(IPIC_STATE_reg_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    sig_str_rst_i_5
       (.I0(s_axi_wdata[7]),
        .I1(s_axi_wdata[6]),
        .I2(s_axi_wdata[3]),
        .I3(s_axi_wdata[1]),
        .O(s_axi_wdata_7_sn_1));
  FDSE #(
    .INIT(1'b0)) 
    sig_str_rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_str_rst_reg_0),
        .Q(sig_str_rst_reg_n_0),
        .S(SR));
  LUT3 #(
    .INIT(8'hBA)) 
    sig_tx_channel_reset_i_1
       (.I0(sig_tx_channel_reset_reg_1),
        .I1(Axi_Str_TxD_AReset),
        .I2(sig_tx_channel_reset_reg_0),
        .O(sig_tx_channel_reset_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_tx_channel_reset_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_tx_channel_reset_i_1_n_0),
        .Q(sig_tx_channel_reset_reg_0),
        .R(SR));
  LUT3 #(
    .INIT(8'h09)) 
    sig_txd_sb_wr_en_i_10
       (.I0(s_axi_wdata[31]),
        .I1(\gtxd.sig_txd_packet_size_reg [27]),
        .I2(\gtxd.sig_txd_packet_size_reg [28]),
        .O(sig_txd_sb_wr_en_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_txd_sb_wr_en_i_11
       (.I0(\gtxd.sig_txd_packet_size_reg [26]),
        .I1(s_axi_wdata[30]),
        .I2(\gtxd.sig_txd_packet_size_reg [25]),
        .I3(s_axi_wdata[29]),
        .I4(s_axi_wdata[28]),
        .I5(\gtxd.sig_txd_packet_size_reg [24]),
        .O(sig_txd_sb_wr_en_i_11_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_txd_sb_wr_en_i_12
       (.I0(R[23]),
        .I1(s_axi_wdata[27]),
        .I2(R[22]),
        .I3(s_axi_wdata[26]),
        .I4(s_axi_wdata[25]),
        .I5(R[21]),
        .O(sig_txd_sb_wr_en_i_12_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_txd_sb_wr_en_i_13
       (.I0(R[20]),
        .I1(s_axi_wdata[24]),
        .I2(R[19]),
        .I3(s_axi_wdata[23]),
        .I4(s_axi_wdata[22]),
        .I5(R[18]),
        .O(sig_txd_sb_wr_en_i_13_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_txd_sb_wr_en_i_14
       (.I0(R[17]),
        .I1(s_axi_wdata[21]),
        .I2(R[16]),
        .I3(s_axi_wdata[20]),
        .I4(s_axi_wdata[19]),
        .I5(R[15]),
        .O(sig_txd_sb_wr_en_i_14_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_txd_sb_wr_en_i_15
       (.I0(R[14]),
        .I1(s_axi_wdata[18]),
        .I2(R[13]),
        .I3(s_axi_wdata[17]),
        .I4(s_axi_wdata[16]),
        .I5(R[12]),
        .O(sig_txd_sb_wr_en_i_15_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_txd_sb_wr_en_i_16
       (.I0(R[11]),
        .I1(s_axi_wdata[15]),
        .I2(R[10]),
        .I3(s_axi_wdata[14]),
        .I4(s_axi_wdata[13]),
        .I5(R[9]),
        .O(sig_txd_sb_wr_en_i_16_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_txd_sb_wr_en_i_17
       (.I0(R[8]),
        .I1(s_axi_wdata[12]),
        .I2(R[7]),
        .I3(s_axi_wdata[11]),
        .I4(s_axi_wdata[10]),
        .I5(R[6]),
        .O(sig_txd_sb_wr_en_i_17_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_txd_sb_wr_en_i_18
       (.I0(R[5]),
        .I1(s_axi_wdata[9]),
        .I2(R[4]),
        .I3(s_axi_wdata[8]),
        .I4(s_axi_wdata[7]),
        .I5(R[3]),
        .O(sig_txd_sb_wr_en_i_18_n_0));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    sig_txd_sb_wr_en_i_19
       (.I0(R[2]),
        .I1(s_axi_wdata[6]),
        .I2(R[1]),
        .I3(s_axi_wdata[5]),
        .I4(\gtxd.sig_txd_packet_size_reg [0]),
        .I5(s_axi_wdata[4]),
        .O(sig_txd_sb_wr_en_i_19_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_txd_sb_wr_en_i_22
       (.I0(\gtxd.sig_txd_packet_size_reg [23]),
        .I1(s_axi_wdata[27]),
        .I2(\gtxd.sig_txd_packet_size_reg [22]),
        .I3(s_axi_wdata[26]),
        .I4(s_axi_wdata[25]),
        .I5(\gtxd.sig_txd_packet_size_reg [21]),
        .O(sig_txd_sb_wr_en_i_22_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_txd_sb_wr_en_i_23
       (.I0(\gtxd.sig_txd_packet_size_reg [20]),
        .I1(s_axi_wdata[24]),
        .I2(\gtxd.sig_txd_packet_size_reg [19]),
        .I3(s_axi_wdata[23]),
        .I4(s_axi_wdata[22]),
        .I5(\gtxd.sig_txd_packet_size_reg [18]),
        .O(sig_txd_sb_wr_en_i_23_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_txd_sb_wr_en_i_24
       (.I0(\gtxd.sig_txd_packet_size_reg [17]),
        .I1(s_axi_wdata[21]),
        .I2(\gtxd.sig_txd_packet_size_reg [16]),
        .I3(s_axi_wdata[20]),
        .I4(s_axi_wdata[19]),
        .I5(\gtxd.sig_txd_packet_size_reg [15]),
        .O(sig_txd_sb_wr_en_i_24_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_txd_sb_wr_en_i_25
       (.I0(\gtxd.sig_txd_packet_size_reg [14]),
        .I1(s_axi_wdata[18]),
        .I2(\gtxd.sig_txd_packet_size_reg [13]),
        .I3(s_axi_wdata[17]),
        .I4(s_axi_wdata[16]),
        .I5(\gtxd.sig_txd_packet_size_reg [12]),
        .O(sig_txd_sb_wr_en_i_25_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_txd_sb_wr_en_i_26
       (.I0(\gtxd.sig_txd_packet_size_reg [11]),
        .I1(s_axi_wdata[15]),
        .I2(\gtxd.sig_txd_packet_size_reg [10]),
        .I3(s_axi_wdata[14]),
        .I4(s_axi_wdata[13]),
        .I5(\gtxd.sig_txd_packet_size_reg [9]),
        .O(sig_txd_sb_wr_en_i_26_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_txd_sb_wr_en_i_27
       (.I0(\gtxd.sig_txd_packet_size_reg [8]),
        .I1(s_axi_wdata[12]),
        .I2(\gtxd.sig_txd_packet_size_reg [7]),
        .I3(s_axi_wdata[11]),
        .I4(s_axi_wdata[10]),
        .I5(\gtxd.sig_txd_packet_size_reg [6]),
        .O(sig_txd_sb_wr_en_i_27_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_txd_sb_wr_en_i_28
       (.I0(\gtxd.sig_txd_packet_size_reg [5]),
        .I1(s_axi_wdata[9]),
        .I2(\gtxd.sig_txd_packet_size_reg [4]),
        .I3(s_axi_wdata[8]),
        .I4(s_axi_wdata[7]),
        .I5(\gtxd.sig_txd_packet_size_reg [3]),
        .O(sig_txd_sb_wr_en_i_28_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_txd_sb_wr_en_i_29
       (.I0(\gtxd.sig_txd_packet_size_reg [2]),
        .I1(s_axi_wdata[6]),
        .I2(\gtxd.sig_txd_packet_size_reg [1]),
        .I3(s_axi_wdata[5]),
        .I4(s_axi_wdata[4]),
        .I5(\gtxd.sig_txd_packet_size_reg [0]),
        .O(sig_txd_sb_wr_en_i_29_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    sig_txd_sb_wr_en_i_3
       (.I0(sig_txd_sb_wr_en_reg_i_4_n_6),
        .I1(s_axi_wdata[2]),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_wdata[3]),
        .I4(s_axi_wdata[1]),
        .I5(eqOp0_out),
        .O(s_axi_wdata_2_sn_1));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_32
       (.I0(\gtxd.sig_txd_packet_size_reg [28]),
        .O(sig_txd_sb_wr_en_i_32_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_33
       (.I0(\gtxd.sig_txd_packet_size_reg [27]),
        .O(sig_txd_sb_wr_en_i_33_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_34
       (.I0(\gtxd.sig_txd_packet_size_reg [26]),
        .O(sig_txd_sb_wr_en_i_34_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_35
       (.I0(\gtxd.sig_txd_packet_size_reg [25]),
        .O(sig_txd_sb_wr_en_i_35_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_36
       (.I0(\gtxd.sig_txd_packet_size_reg [24]),
        .O(sig_txd_sb_wr_en_i_36_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_37
       (.I0(\gtxd.sig_txd_packet_size_reg [23]),
        .O(sig_txd_sb_wr_en_i_37_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_38
       (.I0(\gtxd.sig_txd_packet_size_reg [22]),
        .O(sig_txd_sb_wr_en_i_38_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_39
       (.I0(\gtxd.sig_txd_packet_size_reg [21]),
        .O(sig_txd_sb_wr_en_i_39_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_40
       (.I0(\gtxd.sig_txd_packet_size_reg [20]),
        .O(sig_txd_sb_wr_en_i_40_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_41
       (.I0(\gtxd.sig_txd_packet_size_reg [19]),
        .O(sig_txd_sb_wr_en_i_41_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_42
       (.I0(\gtxd.sig_txd_packet_size_reg [18]),
        .O(sig_txd_sb_wr_en_i_42_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_43
       (.I0(\gtxd.sig_txd_packet_size_reg [17]),
        .O(sig_txd_sb_wr_en_i_43_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_44
       (.I0(\gtxd.sig_txd_packet_size_reg [16]),
        .O(sig_txd_sb_wr_en_i_44_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_45
       (.I0(\gtxd.sig_txd_packet_size_reg [15]),
        .O(sig_txd_sb_wr_en_i_45_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_46
       (.I0(\gtxd.sig_txd_packet_size_reg [14]),
        .O(sig_txd_sb_wr_en_i_46_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_47
       (.I0(\gtxd.sig_txd_packet_size_reg [13]),
        .O(sig_txd_sb_wr_en_i_47_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_48
       (.I0(\gtxd.sig_txd_packet_size_reg [12]),
        .O(sig_txd_sb_wr_en_i_48_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_49
       (.I0(\gtxd.sig_txd_packet_size_reg [11]),
        .O(sig_txd_sb_wr_en_i_49_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_50
       (.I0(\gtxd.sig_txd_packet_size_reg [10]),
        .O(sig_txd_sb_wr_en_i_50_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_51
       (.I0(\gtxd.sig_txd_packet_size_reg [9]),
        .O(sig_txd_sb_wr_en_i_51_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_52
       (.I0(\gtxd.sig_txd_packet_size_reg [8]),
        .O(sig_txd_sb_wr_en_i_52_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_53
       (.I0(\gtxd.sig_txd_packet_size_reg [7]),
        .O(sig_txd_sb_wr_en_i_53_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_54
       (.I0(\gtxd.sig_txd_packet_size_reg [6]),
        .O(sig_txd_sb_wr_en_i_54_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_55
       (.I0(\gtxd.sig_txd_packet_size_reg [5]),
        .O(sig_txd_sb_wr_en_i_55_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_56
       (.I0(\gtxd.sig_txd_packet_size_reg [4]),
        .O(sig_txd_sb_wr_en_i_56_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_57
       (.I0(\gtxd.sig_txd_packet_size_reg [3]),
        .O(sig_txd_sb_wr_en_i_57_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_58
       (.I0(\gtxd.sig_txd_packet_size_reg [2]),
        .O(sig_txd_sb_wr_en_i_58_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sig_txd_sb_wr_en_i_59
       (.I0(\gtxd.sig_txd_packet_size_reg [1]),
        .O(sig_txd_sb_wr_en_i_59_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    sig_txd_sb_wr_en_i_7
       (.I0(s_axi_wdata[31]),
        .I1(R[27]),
        .I2(R[28]),
        .O(sig_txd_sb_wr_en_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sig_txd_sb_wr_en_i_8
       (.I0(R[26]),
        .I1(s_axi_wdata[30]),
        .I2(R[25]),
        .I3(s_axi_wdata[29]),
        .I4(s_axi_wdata[28]),
        .I5(R[24]),
        .O(sig_txd_sb_wr_en_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sig_txd_sb_wr_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sig_txd_sb_wr_en),
        .Q(sig_txd_sb_wr_en_reg_0),
        .R(IP2Bus_WrAck_reg_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 sig_txd_sb_wr_en_reg_i_20
       (.CI(sig_txd_sb_wr_en_reg_i_21_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_sig_txd_sb_wr_en_reg_i_20_CO_UNCONNECTED[7:3],sig_txd_sb_wr_en_reg_i_20_n_5,sig_txd_sb_wr_en_reg_i_20_n_6,sig_txd_sb_wr_en_reg_i_20_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,\gtxd.sig_txd_packet_size_reg [27:25]}),
        .O({NLW_sig_txd_sb_wr_en_reg_i_20_O_UNCONNECTED[7:4],R[28:25]}),
        .S({1'b0,1'b0,1'b0,1'b0,sig_txd_sb_wr_en_i_32_n_0,sig_txd_sb_wr_en_i_33_n_0,sig_txd_sb_wr_en_i_34_n_0,sig_txd_sb_wr_en_i_35_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 sig_txd_sb_wr_en_reg_i_21
       (.CI(sig_txd_sb_wr_en_reg_i_30_n_0),
        .CI_TOP(1'b0),
        .CO({sig_txd_sb_wr_en_reg_i_21_n_0,sig_txd_sb_wr_en_reg_i_21_n_1,sig_txd_sb_wr_en_reg_i_21_n_2,sig_txd_sb_wr_en_reg_i_21_n_3,sig_txd_sb_wr_en_reg_i_21_n_4,sig_txd_sb_wr_en_reg_i_21_n_5,sig_txd_sb_wr_en_reg_i_21_n_6,sig_txd_sb_wr_en_reg_i_21_n_7}),
        .DI(\gtxd.sig_txd_packet_size_reg [24:17]),
        .O(R[24:17]),
        .S({sig_txd_sb_wr_en_i_36_n_0,sig_txd_sb_wr_en_i_37_n_0,sig_txd_sb_wr_en_i_38_n_0,sig_txd_sb_wr_en_i_39_n_0,sig_txd_sb_wr_en_i_40_n_0,sig_txd_sb_wr_en_i_41_n_0,sig_txd_sb_wr_en_i_42_n_0,sig_txd_sb_wr_en_i_43_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 sig_txd_sb_wr_en_reg_i_30
       (.CI(sig_txd_sb_wr_en_reg_i_31_n_0),
        .CI_TOP(1'b0),
        .CO({sig_txd_sb_wr_en_reg_i_30_n_0,sig_txd_sb_wr_en_reg_i_30_n_1,sig_txd_sb_wr_en_reg_i_30_n_2,sig_txd_sb_wr_en_reg_i_30_n_3,sig_txd_sb_wr_en_reg_i_30_n_4,sig_txd_sb_wr_en_reg_i_30_n_5,sig_txd_sb_wr_en_reg_i_30_n_6,sig_txd_sb_wr_en_reg_i_30_n_7}),
        .DI(\gtxd.sig_txd_packet_size_reg [16:9]),
        .O(R[16:9]),
        .S({sig_txd_sb_wr_en_i_44_n_0,sig_txd_sb_wr_en_i_45_n_0,sig_txd_sb_wr_en_i_46_n_0,sig_txd_sb_wr_en_i_47_n_0,sig_txd_sb_wr_en_i_48_n_0,sig_txd_sb_wr_en_i_49_n_0,sig_txd_sb_wr_en_i_50_n_0,sig_txd_sb_wr_en_i_51_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 sig_txd_sb_wr_en_reg_i_31
       (.CI(\gtxd.sig_txd_packet_size_reg [0]),
        .CI_TOP(1'b0),
        .CO({sig_txd_sb_wr_en_reg_i_31_n_0,sig_txd_sb_wr_en_reg_i_31_n_1,sig_txd_sb_wr_en_reg_i_31_n_2,sig_txd_sb_wr_en_reg_i_31_n_3,sig_txd_sb_wr_en_reg_i_31_n_4,sig_txd_sb_wr_en_reg_i_31_n_5,sig_txd_sb_wr_en_reg_i_31_n_6,sig_txd_sb_wr_en_reg_i_31_n_7}),
        .DI(\gtxd.sig_txd_packet_size_reg [8:1]),
        .O(R[8:1]),
        .S({sig_txd_sb_wr_en_i_52_n_0,sig_txd_sb_wr_en_i_53_n_0,sig_txd_sb_wr_en_i_54_n_0,sig_txd_sb_wr_en_i_55_n_0,sig_txd_sb_wr_en_i_56_n_0,sig_txd_sb_wr_en_i_57_n_0,sig_txd_sb_wr_en_i_58_n_0,sig_txd_sb_wr_en_i_59_n_0}));
  CARRY8 sig_txd_sb_wr_en_reg_i_4
       (.CI(sig_txd_sb_wr_en_reg_i_6_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_sig_txd_sb_wr_en_reg_i_4_CO_UNCONNECTED[7:2],sig_txd_sb_wr_en_reg_i_4_n_6,sig_txd_sb_wr_en_reg_i_4_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sig_txd_sb_wr_en_reg_i_4_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sig_txd_sb_wr_en_i_7_n_0,sig_txd_sb_wr_en_i_8_n_0}));
  CARRY8 sig_txd_sb_wr_en_reg_i_5
       (.CI(sig_txd_sb_wr_en_reg_i_9_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_sig_txd_sb_wr_en_reg_i_5_CO_UNCONNECTED[7:2],eqOp0_out,sig_txd_sb_wr_en_reg_i_5_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sig_txd_sb_wr_en_reg_i_5_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sig_txd_sb_wr_en_i_10_n_0,sig_txd_sb_wr_en_i_11_n_0}));
  CARRY8 sig_txd_sb_wr_en_reg_i_6
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({sig_txd_sb_wr_en_reg_i_6_n_0,sig_txd_sb_wr_en_reg_i_6_n_1,sig_txd_sb_wr_en_reg_i_6_n_2,sig_txd_sb_wr_en_reg_i_6_n_3,sig_txd_sb_wr_en_reg_i_6_n_4,sig_txd_sb_wr_en_reg_i_6_n_5,sig_txd_sb_wr_en_reg_i_6_n_6,sig_txd_sb_wr_en_reg_i_6_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sig_txd_sb_wr_en_reg_i_6_O_UNCONNECTED[7:0]),
        .S({sig_txd_sb_wr_en_i_12_n_0,sig_txd_sb_wr_en_i_13_n_0,sig_txd_sb_wr_en_i_14_n_0,sig_txd_sb_wr_en_i_15_n_0,sig_txd_sb_wr_en_i_16_n_0,sig_txd_sb_wr_en_i_17_n_0,sig_txd_sb_wr_en_i_18_n_0,sig_txd_sb_wr_en_i_19_n_0}));
  CARRY8 sig_txd_sb_wr_en_reg_i_9
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({sig_txd_sb_wr_en_reg_i_9_n_0,sig_txd_sb_wr_en_reg_i_9_n_1,sig_txd_sb_wr_en_reg_i_9_n_2,sig_txd_sb_wr_en_reg_i_9_n_3,sig_txd_sb_wr_en_reg_i_9_n_4,sig_txd_sb_wr_en_reg_i_9_n_5,sig_txd_sb_wr_en_reg_i_9_n_6,sig_txd_sb_wr_en_reg_i_9_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sig_txd_sb_wr_en_reg_i_9_O_UNCONNECTED[7:0]),
        .S({sig_txd_sb_wr_en_i_22_n_0,sig_txd_sb_wr_en_i_23_n_0,sig_txd_sb_wr_en_i_24_n_0,sig_txd_sb_wr_en_i_25_n_0,sig_txd_sb_wr_en_i_26_n_0,sig_txd_sb_wr_en_i_27_n_0,sig_txd_sb_wr_en_i_28_n_0,sig_txd_sb_wr_en_i_29_n_0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f
   (ce_expnd_i_20,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] );
  output ce_expnd_i_20;
  input [4:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire ce_expnd_i_20;

  LUT5 #(
    .INIT(32'h00000001)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] [1]),
        .O(ce_expnd_i_20));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized0
   (ce_expnd_i_19,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] );
  output ce_expnd_i_19;
  input [4:0]\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  wire ce_expnd_i_19;

  LUT5 #(
    .INIT(32'h00010000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] [1]),
        .I4(\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] [0]),
        .O(ce_expnd_i_19));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1
   (ce_expnd_i_18,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] );
  output ce_expnd_i_18;
  input [4:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire ce_expnd_i_18;

  LUT5 #(
    .INIT(32'h00010000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] [1]),
        .O(ce_expnd_i_18));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized10
   (ce_expnd_i_9,
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] );
  output ce_expnd_i_9;
  input [4:0]\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] ;
  wire ce_expnd_i_9;

  LUT5 #(
    .INIT(32'h10000000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [2]),
        .I2(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] [1]),
        .O(ce_expnd_i_9));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized11
   (ce_expnd_i_8,
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] );
  output ce_expnd_i_8;
  input [4:0]\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] ;
  wire ce_expnd_i_8;

  LUT5 #(
    .INIT(32'h01000000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] [2]),
        .I4(\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] [3]),
        .O(ce_expnd_i_8));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized12
   (ce_expnd_i_7,
    \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] );
  output ce_expnd_i_7;
  input [4:0]\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] ;
  wire ce_expnd_i_7;

  LUT5 #(
    .INIT(32'h10000000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] [2]),
        .O(ce_expnd_i_7));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized13
   (ce_expnd_i_6,
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] );
  output ce_expnd_i_6;
  input [4:0]\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] ;
  wire ce_expnd_i_6;

  LUT5 #(
    .INIT(32'h10000000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] [1]),
        .I4(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] [2]),
        .O(ce_expnd_i_6));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized14
   (ce_expnd_i_5,
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] );
  output ce_expnd_i_5;
  input [4:0]\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] ;
  wire ce_expnd_i_5;

  LUT5 #(
    .INIT(32'h40000000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] [2]),
        .I3(\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] [1]),
        .O(ce_expnd_i_5));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized15
   (ce_expnd_i_4,
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] );
  output ce_expnd_i_4;
  input [4:0]\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ;
  wire ce_expnd_i_4;

  LUT5 #(
    .INIT(32'h00010000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] [2]),
        .I3(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] [4]),
        .O(ce_expnd_i_4));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized16
   (ce_expnd_i_3,
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] );
  output ce_expnd_i_3;
  input [4:0]\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] ;
  wire ce_expnd_i_3;

  LUT5 #(
    .INIT(32'h01000000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] [2]),
        .I3(\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] [4]),
        .I4(\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] [0]),
        .O(ce_expnd_i_3));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized17
   (ce_expnd_i_2,
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] );
  output ce_expnd_i_2;
  input [4:0]\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] ;
  wire ce_expnd_i_2;

  LUT5 #(
    .INIT(32'h01000000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] [2]),
        .I3(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] [4]),
        .I4(\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] [1]),
        .O(ce_expnd_i_2));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized18
   (ce_expnd_i_1,
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] );
  output ce_expnd_i_1;
  input [4:0]\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] ;
  wire ce_expnd_i_1;

  LUT5 #(
    .INIT(32'h04000000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] [4]),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] [2]),
        .I3(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] [1]),
        .O(ce_expnd_i_1));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized19
   (ce_expnd_i_0,
    \GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] );
  output ce_expnd_i_0;
  input [4:0]\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] ;
  wire ce_expnd_i_0;

  LUT5 #(
    .INIT(32'h01000000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] [4]),
        .I4(\GEN_BKEND_CE_REGISTERS[20].ce_out_i_reg[20] [2]),
        .O(ce_expnd_i_0));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized3
   (ce_expnd_i_16,
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] );
  output ce_expnd_i_16;
  input [4:0]\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] ;
  wire ce_expnd_i_16;

  LUT5 #(
    .INIT(32'h00010000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] [2]),
        .O(ce_expnd_i_16));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized4
   (ce_expnd_i_15,
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] );
  output ce_expnd_i_15;
  input [4:0]\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] ;
  wire ce_expnd_i_15;

  LUT5 #(
    .INIT(32'h01000000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] [2]),
        .O(ce_expnd_i_15));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized5
   (ce_expnd_i_14,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] );
  output ce_expnd_i_14;
  input [4:0]\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  wire ce_expnd_i_14;

  LUT5 #(
    .INIT(32'h01000000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [3]),
        .I3(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [1]),
        .I4(\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] [2]),
        .O(ce_expnd_i_14));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized6
   (ce_expnd_i_13,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] );
  output ce_expnd_i_13;
  input [4:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire ce_expnd_i_13;

  LUT5 #(
    .INIT(32'h10000000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [3]),
        .I2(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [2]),
        .I3(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] [1]),
        .O(ce_expnd_i_13));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized7
   (ce_expnd_i_12,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] );
  output ce_expnd_i_12;
  input [4:0]\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] ;
  wire ce_expnd_i_12;

  LUT5 #(
    .INIT(32'h00010000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [2]),
        .I3(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] [3]),
        .O(ce_expnd_i_12));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized8
   (ce_expnd_i_11,
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] );
  output ce_expnd_i_11;
  input [4:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] ;
  wire ce_expnd_i_11;

  LUT5 #(
    .INIT(32'h01000000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [1]),
        .I2(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [2]),
        .I3(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [0]),
        .I4(\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] [3]),
        .O(ce_expnd_i_11));
endmodule

(* ORIG_REF_NAME = "pselect_f" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized9
   (ce_expnd_i_10,
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] );
  output ce_expnd_i_10;
  input [4:0]\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ;

  wire [4:0]\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ;
  wire ce_expnd_i_10;

  LUT5 #(
    .INIT(32'h01000000)) 
    CS
       (.I0(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [4]),
        .I1(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [0]),
        .I2(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [2]),
        .I3(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [1]),
        .I4(\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] [3]),
        .O(ce_expnd_i_10));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
   (sig_Bus2IP_RdCE,
    s_axi_rvalid,
    s_axi_bvalid,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    \s_axi_wdata[29] ,
    axi_str_txd_tready_0,
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ,
    \sig_register_array_reg[0][6] ,
    \s_axi_wdata[24] ,
    \s_axi_wdata[23] ,
    D,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ,
    Bus_RNW_reg_reg,
    Bus_RNW_reg_reg_0,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ,
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ,
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ,
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_0 ,
    bus2ip_rnw_i_reg_0,
    bus2ip_rnw_i_reg_1,
    sig_txd_sb_wr_en,
    Bus_RNW_reg_reg_1,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    \gen_fwft.empty_fwft_i_reg ,
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ,
    s_axi_rdata,
    SR,
    s_axi_aclk,
    cs_ce_clr,
    s_axi_arvalid,
    s_axi_wdata,
    \sig_register_array_reg[0][2] ,
    \sig_register_array_reg[0][2]_0 ,
    axi_str_txd_tready,
    \sig_register_array_reg[0][4] ,
    \sig_register_array_reg[0][6]_0 ,
    Axi_Str_TxD_AReset,
    \sig_register_array_reg[0][7] ,
    Axi_Str_RxD_AReset,
    \sig_register_array_reg[0][8] ,
    \sig_ip2bus_data_reg[24] ,
    \sig_ip2bus_data_reg[24]_0 ,
    \sig_ip2bus_data_reg[24]_1 ,
    \sig_ip2bus_data_reg[23] ,
    \sig_ip2bus_data_reg[23]_0 ,
    \sig_ip2bus_data_reg[22] ,
    \sig_ip2bus_data_reg[22]_0 ,
    \sig_ip2bus_data_reg[0] ,
    dout,
    \sig_ip2bus_data_reg[16] ,
    empty,
    sig_ip2bus_data1,
    wr_data_count_axis,
    sig_str_rst_reg,
    sig_rx_channel_reset_reg,
    IPIC_STATE,
    s_axi4_rready,
    out,
    axi_str_txd_tlast,
    axi_str_txd_tvalid,
    \sig_register_array_reg[0][6]_1 ,
    \sig_register_array_reg[0][6]_2 ,
    sig_str_rst_reg_0,
    sig_rd_rlen_reg,
    Q,
    \sig_ip2bus_data_reg[16]_0 ,
    \sig_ip2bus_data_reg[15] ,
    \sig_ip2bus_data_reg[14] ,
    \sig_ip2bus_data_reg[13] ,
    \sig_ip2bus_data_reg[12] ,
    \sig_ip2bus_data_reg[11] ,
    \sig_ip2bus_data_reg[10] ,
    \sig_ip2bus_data_reg[9] ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_rready,
    s_axi_araddr,
    s_axi_awaddr,
    s_axi_aresetn,
    \s_axi_rdata_i_reg[31]_0 );
  output [0:0]sig_Bus2IP_RdCE;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output \s_axi_wdata[29] ;
  output axi_str_txd_tready_0;
  output \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ;
  output \sig_register_array_reg[0][6] ;
  output \s_axi_wdata[24] ;
  output \s_axi_wdata[23] ;
  output [12:0]D;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  output Bus_RNW_reg_reg;
  output Bus_RNW_reg_reg_0;
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  output \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  output [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  output \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  output \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  output \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_0 ;
  output bus2ip_rnw_i_reg_0;
  output bus2ip_rnw_i_reg_1;
  output sig_txd_sb_wr_en;
  output [16:0]Bus_RNW_reg_reg_1;
  output \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  output \gen_fwft.empty_fwft_i_reg ;
  output \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  output [0:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  output [31:0]s_axi_rdata;
  input [0:0]SR;
  input s_axi_aclk;
  input cs_ce_clr;
  input s_axi_arvalid;
  input [20:0]s_axi_wdata;
  input \sig_register_array_reg[0][2] ;
  input \sig_register_array_reg[0][2]_0 ;
  input axi_str_txd_tready;
  input \sig_register_array_reg[0][4] ;
  input \sig_register_array_reg[0][6]_0 ;
  input Axi_Str_TxD_AReset;
  input \sig_register_array_reg[0][7] ;
  input Axi_Str_RxD_AReset;
  input \sig_register_array_reg[0][8] ;
  input \sig_ip2bus_data_reg[24] ;
  input \sig_ip2bus_data_reg[24]_0 ;
  input \sig_ip2bus_data_reg[24]_1 ;
  input \sig_ip2bus_data_reg[23] ;
  input \sig_ip2bus_data_reg[23]_0 ;
  input \sig_ip2bus_data_reg[22] ;
  input \sig_ip2bus_data_reg[22]_0 ;
  input [8:0]\sig_ip2bus_data_reg[0] ;
  input [7:0]dout;
  input \sig_ip2bus_data_reg[16] ;
  input empty;
  input sig_ip2bus_data1;
  input [6:0]wr_data_count_axis;
  input sig_str_rst_reg;
  input sig_rx_channel_reset_reg;
  input IPIC_STATE;
  input s_axi4_rready;
  input out;
  input axi_str_txd_tlast;
  input axi_str_txd_tvalid;
  input \sig_register_array_reg[0][6]_1 ;
  input \sig_register_array_reg[0][6]_2 ;
  input sig_str_rst_reg_0;
  input sig_rd_rlen_reg;
  input [2:0]Q;
  input \sig_ip2bus_data_reg[16]_0 ;
  input \sig_ip2bus_data_reg[15] ;
  input \sig_ip2bus_data_reg[14] ;
  input \sig_ip2bus_data_reg[13] ;
  input \sig_ip2bus_data_reg[12] ;
  input \sig_ip2bus_data_reg[11] ;
  input \sig_ip2bus_data_reg[10] ;
  input \sig_ip2bus_data_reg[9] ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  input \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_rready;
  input [4:0]s_axi_araddr;
  input [4:0]s_axi_awaddr;
  input s_axi_aresetn;
  input [31:0]\s_axi_rdata_i_reg[31]_0 ;

  wire Axi_Str_RxD_AReset;
  wire Axi_Str_TxD_AReset;
  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire [16:0]Bus_RNW_reg_reg_1;
  wire [12:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ;
  wire \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire IPIC_STATE;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [0:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire axi_str_txd_tlast;
  wire axi_str_txd_tready;
  wire axi_str_txd_tready_0;
  wire axi_str_txd_tvalid;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[5]_i_1_n_0 ;
  wire \bus2ip_addr_i[6]_i_1_n_0 ;
  wire \bus2ip_addr_i[6]_i_2_n_0 ;
  wire \bus2ip_addr_i_reg_n_0_[2] ;
  wire \bus2ip_addr_i_reg_n_0_[3] ;
  wire \bus2ip_addr_i_reg_n_0_[4] ;
  wire \bus2ip_addr_i_reg_n_0_[5] ;
  wire \bus2ip_addr_i_reg_n_0_[6] ;
  wire bus2ip_rnw_i_reg_0;
  wire bus2ip_rnw_i_reg_1;
  wire cs_ce_clr;
  wire [7:0]dout;
  wire empty;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire out;
  wire rst;
  wire s_axi4_rready;
  wire s_axi_aclk;
  wire [4:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp_i;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [31:0]s_axi_rdata;
  wire [31:0]\s_axi_rdata_i_reg[31]_0 ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp_i;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_i_1_n_0;
  wire [20:0]s_axi_wdata;
  wire \s_axi_wdata[23] ;
  wire \s_axi_wdata[24] ;
  wire \s_axi_wdata[29] ;
  wire s_axi_wvalid;
  wire sig_Bus2IP_RNW;
  wire [0:0]sig_Bus2IP_RdCE;
  wire sig_ip2bus_data1;
  wire [8:0]\sig_ip2bus_data_reg[0] ;
  wire \sig_ip2bus_data_reg[10] ;
  wire \sig_ip2bus_data_reg[11] ;
  wire \sig_ip2bus_data_reg[12] ;
  wire \sig_ip2bus_data_reg[13] ;
  wire \sig_ip2bus_data_reg[14] ;
  wire \sig_ip2bus_data_reg[15] ;
  wire \sig_ip2bus_data_reg[16] ;
  wire \sig_ip2bus_data_reg[16]_0 ;
  wire \sig_ip2bus_data_reg[22] ;
  wire \sig_ip2bus_data_reg[22]_0 ;
  wire \sig_ip2bus_data_reg[23] ;
  wire \sig_ip2bus_data_reg[23]_0 ;
  wire \sig_ip2bus_data_reg[24] ;
  wire \sig_ip2bus_data_reg[24]_0 ;
  wire \sig_ip2bus_data_reg[24]_1 ;
  wire \sig_ip2bus_data_reg[9] ;
  wire sig_rd_rlen_reg;
  wire \sig_register_array_reg[0][2] ;
  wire \sig_register_array_reg[0][2]_0 ;
  wire \sig_register_array_reg[0][4] ;
  wire \sig_register_array_reg[0][6] ;
  wire \sig_register_array_reg[0][6]_0 ;
  wire \sig_register_array_reg[0][6]_1 ;
  wire \sig_register_array_reg[0][6]_2 ;
  wire \sig_register_array_reg[0][7] ;
  wire \sig_register_array_reg[0][8] ;
  wire sig_rx_channel_reset_reg;
  wire sig_str_rst_reg;
  wire sig_str_rst_reg_0;
  wire sig_txd_sb_wr_en;
  wire start2;
  wire start2_i_1_n_0;
  wire state1__2;
  wire [6:0]wr_data_count_axis;

  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .I1(s_axi_bresp_i),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(state1__2),
        .I4(s_axi_rresp_i),
        .I5(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888F8F8F88888888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(state1__2),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(state1__2));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(rst));
  (* FSM_ENCODED_STATES = "sm_read:1000,sm_write:0100,sm_resp:0001,sm_idle:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    IP2Bus_WrAck_i_2
       (.I0(sig_Bus2IP_RNW),
        .O(bus2ip_rnw_i_reg_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder I_DECODER
       (.Axi_Str_RxD_AReset(Axi_Str_RxD_AReset),
        .Axi_Str_TxD_AReset(Axi_Str_TxD_AReset),
        .Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_0),
        .Bus_RNW_reg_reg_2(Bus_RNW_reg_reg_1),
        .D(D),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_0 ),
        .\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_2 (\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]_1 ),
        .\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]_0 (\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] ),
        .\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1 (\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0 ),
        .\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]_0 (\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] ),
        .\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0 (\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] ),
        .\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_0 (\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] ),
        .\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_1 (\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]_0 ),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]_0 (\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]_0 ({\bus2ip_addr_i_reg_n_0_[6] ,\bus2ip_addr_i_reg_n_0_[5] ,\bus2ip_addr_i_reg_n_0_[4] ,\bus2ip_addr_i_reg_n_0_[3] ,\bus2ip_addr_i_reg_n_0_[2] }),
        .IPIC_STATE(IPIC_STATE),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_3 (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .Q(start2),
        .axi_str_txd_tlast(axi_str_txd_tlast),
        .axi_str_txd_tready(axi_str_txd_tready),
        .axi_str_txd_tready_0(axi_str_txd_tready_0),
        .axi_str_txd_tvalid(axi_str_txd_tvalid),
        .bus2ip_rnw_i_reg(bus2ip_rnw_i_reg_0),
        .cs_ce_clr(cs_ce_clr),
        .dout(dout),
        .empty(empty),
        .\gen_fwft.empty_fwft_i_reg (\gen_fwft.empty_fwft_i_reg ),
        .out(out),
        .s_axi4_rready(s_axi4_rready),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[23] (\s_axi_wdata[23] ),
        .\s_axi_wdata[24] (\s_axi_wdata[24] ),
        .\s_axi_wdata[29] (\s_axi_wdata[29] ),
        .sig_Bus2IP_RNW(sig_Bus2IP_RNW),
        .sig_Bus2IP_RdCE(sig_Bus2IP_RdCE),
        .sig_ip2bus_data1(sig_ip2bus_data1),
        .\sig_ip2bus_data_reg[0] (\sig_ip2bus_data_reg[0] ),
        .\sig_ip2bus_data_reg[10] (\sig_ip2bus_data_reg[10] ),
        .\sig_ip2bus_data_reg[11] (\sig_ip2bus_data_reg[11] ),
        .\sig_ip2bus_data_reg[12] (\sig_ip2bus_data_reg[12] ),
        .\sig_ip2bus_data_reg[13] (\sig_ip2bus_data_reg[13] ),
        .\sig_ip2bus_data_reg[14] (\sig_ip2bus_data_reg[14] ),
        .\sig_ip2bus_data_reg[15] (\sig_ip2bus_data_reg[15] ),
        .\sig_ip2bus_data_reg[16] (\sig_ip2bus_data_reg[16] ),
        .\sig_ip2bus_data_reg[16]_0 (\sig_ip2bus_data_reg[16]_0 ),
        .\sig_ip2bus_data_reg[22] (\sig_ip2bus_data_reg[22] ),
        .\sig_ip2bus_data_reg[22]_0 (\sig_ip2bus_data_reg[22]_0 ),
        .\sig_ip2bus_data_reg[22]_1 (Q),
        .\sig_ip2bus_data_reg[23] (\sig_ip2bus_data_reg[23] ),
        .\sig_ip2bus_data_reg[23]_0 (\sig_ip2bus_data_reg[23]_0 ),
        .\sig_ip2bus_data_reg[24] (\sig_ip2bus_data_reg[24] ),
        .\sig_ip2bus_data_reg[24]_0 (\sig_ip2bus_data_reg[24]_0 ),
        .\sig_ip2bus_data_reg[24]_1 (\sig_ip2bus_data_reg[24]_1 ),
        .\sig_ip2bus_data_reg[9] (\sig_ip2bus_data_reg[9] ),
        .sig_rd_rlen_reg(sig_rd_rlen_reg),
        .\sig_register_array_reg[0][2] (\sig_register_array_reg[0][2] ),
        .\sig_register_array_reg[0][2]_0 (\sig_register_array_reg[0][2]_0 ),
        .\sig_register_array_reg[0][4] (\sig_register_array_reg[0][4] ),
        .\sig_register_array_reg[0][6] (\sig_register_array_reg[0][6] ),
        .\sig_register_array_reg[0][6]_0 (\sig_register_array_reg[0][6]_0 ),
        .\sig_register_array_reg[0][6]_1 (\sig_register_array_reg[0][6]_1 ),
        .\sig_register_array_reg[0][6]_2 (\sig_register_array_reg[0][6]_2 ),
        .\sig_register_array_reg[0][7] (\sig_register_array_reg[0][7] ),
        .\sig_register_array_reg[0][8] (\sig_register_array_reg[0][8] ),
        .sig_rx_channel_reset_reg(sig_rx_channel_reset_reg),
        .sig_str_rst_reg(sig_str_rst_reg),
        .sig_str_rst_reg_0(sig_str_rst_reg_0),
        .sig_txd_sb_wr_en(sig_txd_sb_wr_en),
        .wr_data_count_axis(wr_data_count_axis));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[2]),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[3]),
        .O(\bus2ip_addr_i[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA00)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\bus2ip_addr_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bus2ip_addr_i[6]_i_2 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_arvalid),
        .I2(s_axi_awaddr[4]),
        .O(\bus2ip_addr_i[6]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[2] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[3] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[4] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[5]_i_1_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[5] ),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(\bus2ip_addr_i[6]_i_2_n_0 ),
        .Q(\bus2ip_addr_i_reg_n_0_[6] ),
        .R(rst));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[6]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(sig_Bus2IP_RNW),
        .R(rst));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(SR),
        .Q(rst),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8F88)) 
    s_axi_bvalid_i_i_1
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ),
        .I1(s_axi_bresp_i),
        .I2(s_axi_bready),
        .I3(s_axi_bvalid),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [0]),
        .Q(s_axi_rdata[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [10]),
        .Q(s_axi_rdata[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [11]),
        .Q(s_axi_rdata[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [12]),
        .Q(s_axi_rdata[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [13]),
        .Q(s_axi_rdata[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [14]),
        .Q(s_axi_rdata[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [15]),
        .Q(s_axi_rdata[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [16]),
        .Q(s_axi_rdata[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [17]),
        .Q(s_axi_rdata[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [18]),
        .Q(s_axi_rdata[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [19]),
        .Q(s_axi_rdata[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [1]),
        .Q(s_axi_rdata[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [20]),
        .Q(s_axi_rdata[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [21]),
        .Q(s_axi_rdata[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [22]),
        .Q(s_axi_rdata[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [23]),
        .Q(s_axi_rdata[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [24]),
        .Q(s_axi_rdata[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [25]),
        .Q(s_axi_rdata[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [26]),
        .Q(s_axi_rdata[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [27]),
        .Q(s_axi_rdata[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [28]),
        .Q(s_axi_rdata[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [29]),
        .Q(s_axi_rdata[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [2]),
        .Q(s_axi_rdata[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [30]),
        .Q(s_axi_rdata[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [31]),
        .Q(s_axi_rdata[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [3]),
        .Q(s_axi_rdata[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [4]),
        .Q(s_axi_rdata[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [5]),
        .Q(s_axi_rdata[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [6]),
        .Q(s_axi_rdata[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [7]),
        .Q(s_axi_rdata[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [8]),
        .Q(s_axi_rdata[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [9]),
        .Q(s_axi_rdata[9]),
        .R(rst));
  LUT4 #(
    .INIT(16'h8F88)) 
    s_axi_rvalid_i_i_1
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_2 ),
        .I1(s_axi_rresp_i),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(rst));
  LUT4 #(
    .INIT(16'hF800)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "4" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [3:0]syncstages_ff;

  assign dest_rst = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "4" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [3:0]syncstages_ff;

  assign dest_rst = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn
   (Q,
    S,
    DI,
    ram_empty_i,
    \count_value_i_reg[1]_0 ,
    rd_en,
    \grdc.rd_data_count_i_reg[7] ,
    \grdc.rd_data_count_i_reg[7]_0 ,
    SR,
    wr_clk);
  output [0:0]Q;
  output [1:0]S;
  output [0:0]DI;
  input ram_empty_i;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input [1:0]\grdc.rd_data_count_i_reg[7] ;
  input [1:0]\grdc.rd_data_count_i_reg[7]_0 ;
  input [0:0]SR;
  input wr_clk;

  wire [0:0]DI;
  wire [0:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_3_n_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire \count_value_i_reg_n_0_[0] ;
  wire \gen_fwft.count_en ;
  wire [1:0]\grdc.rd_data_count_i_reg[7] ;
  wire [1:0]\grdc.rd_data_count_i_reg[7]_0 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT5 #(
    .INIT(32'h5AAAA655)) 
    \count_value_i[0]_i_1__3 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[1]_0 [1]),
        .I4(ram_empty_i),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hC02F)) 
    \count_value_i[1]_i_2 
       (.I0(\count_value_i_reg[1]_0 [0]),
        .I1(rd_en),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(ram_empty_i),
        .O(\gen_fwft.count_en ));
  LUT6 #(
    .INIT(64'hA999A9A96AAA6AAA)) 
    \count_value_i[1]_i_3 
       (.I0(Q),
        .I1(ram_empty_i),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(rd_en),
        .I4(\count_value_i_reg[1]_0 [0]),
        .I5(\count_value_i_reg_n_0_[0] ),
        .O(\count_value_i[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(\count_value_i_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[1]_i_3_n_0 ),
        .Q(Q),
        .R(SR));
  LUT4 #(
    .INIT(16'h9669)) 
    \gwdc.wr_data_count_i[7]_i_15 
       (.I0(DI),
        .I1(\grdc.rd_data_count_i_reg[7] [1]),
        .I2(Q),
        .I3(\grdc.rd_data_count_i_reg[7]_0 [1]),
        .O(S[1]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gwdc.wr_data_count_i[7]_i_16 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .I2(\grdc.rd_data_count_i_reg[7]_0 [0]),
        .O(S[0]));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gwdc.wr_data_count_i[7]_i_8 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .O(DI));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn_2
   (Q,
    S,
    DI,
    ram_empty_i,
    \count_value_i_reg[1]_0 ,
    rd_en,
    \grdc.rd_data_count_i_reg[7] ,
    \grdc.rd_data_count_i_reg[7]_0 ,
    SR,
    wr_clk);
  output [0:0]Q;
  output [1:0]S;
  output [0:0]DI;
  input ram_empty_i;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input [1:0]\grdc.rd_data_count_i_reg[7] ;
  input [1:0]\grdc.rd_data_count_i_reg[7]_0 ;
  input [0:0]SR;
  input wr_clk;

  wire [0:0]DI;
  wire [0:0]Q;
  wire [1:0]S;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_3_n_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire \count_value_i_reg_n_0_[0] ;
  wire \gen_fwft.count_en ;
  wire [1:0]\grdc.rd_data_count_i_reg[7] ;
  wire [1:0]\grdc.rd_data_count_i_reg[7]_0 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT5 #(
    .INIT(32'h5AAAA655)) 
    \count_value_i[0]_i_1__3 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[1]_0 [1]),
        .I4(ram_empty_i),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hC02F)) 
    \count_value_i[1]_i_2 
       (.I0(\count_value_i_reg[1]_0 [0]),
        .I1(rd_en),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(ram_empty_i),
        .O(\gen_fwft.count_en ));
  LUT6 #(
    .INIT(64'hA999A9A96AAA6AAA)) 
    \count_value_i[1]_i_3 
       (.I0(Q),
        .I1(ram_empty_i),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(rd_en),
        .I4(\count_value_i_reg[1]_0 [0]),
        .I5(\count_value_i_reg_n_0_[0] ),
        .O(\count_value_i[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(\count_value_i_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\gen_fwft.count_en ),
        .D(\count_value_i[1]_i_3_n_0 ),
        .Q(Q),
        .R(SR));
  LUT4 #(
    .INIT(16'h9669)) 
    \gwdc.wr_data_count_i[7]_i_15 
       (.I0(DI),
        .I1(\grdc.rd_data_count_i_reg[7] [1]),
        .I2(Q),
        .I3(\grdc.rd_data_count_i_reg[7]_0 [1]),
        .O(S[1]));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gwdc.wr_data_count_i[7]_i_16 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .I2(\grdc.rd_data_count_i_reg[7]_0 [0]),
        .O(S[0]));
  (* HLUTNM = "lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gwdc.wr_data_count_i[7]_i_8 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .I1(\grdc.rd_data_count_i_reg[7] [0]),
        .O(DI));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0
   (DI,
    Q,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    S,
    \count_value_i_reg[1]_0 ,
    \count_value_i_reg[8]_0 ,
    leaving_empty0,
    \count_value_i_reg[6]_0 ,
    \count_value_i_reg[6]_1 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \count_value_i_reg[7]_0 ,
    \count_value_i_reg[8]_1 ,
    ram_wr_en_pf,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] ,
    \grdc.rd_data_count_i_reg[7] ,
    \grdc.rd_data_count_i_reg[9] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    clr_full,
    \count_value_i_reg[9]_0 ,
    wr_clk);
  output [0:0]DI;
  output [8:0]Q;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  output [0:0]S;
  output [0:0]\count_value_i_reg[1]_0 ;
  output [1:0]\count_value_i_reg[8]_0 ;
  output leaving_empty0;
  output [5:0]\count_value_i_reg[6]_0 ;
  output [4:0]\count_value_i_reg[6]_1 ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  output [6:0]\count_value_i_reg[7]_0 ;
  output [0:0]\count_value_i_reg[8]_1 ;
  input ram_wr_en_pf;
  input [8:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] ;
  input [0:0]\grdc.rd_data_count_i_reg[7] ;
  input [9:0]\grdc.rd_data_count_i_reg[9] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input clr_full;
  input [0:0]\count_value_i_reg[9]_0 ;
  input wr_clk;

  wire [0:0]DI;
  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [8:0]Q;
  wire [0:0]S;
  wire clr_full;
  wire [9:9]count_value_i;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire [5:0]\count_value_i_reg[6]_0 ;
  wire [4:0]\count_value_i_reg[6]_1 ;
  wire [6:0]\count_value_i_reg[7]_0 ;
  wire [1:0]\count_value_i_reg[8]_0 ;
  wire [0:0]\count_value_i_reg[8]_1 ;
  wire [0:0]\count_value_i_reg[9]_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0 ;
  wire [8:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] ;
  wire going_full1;
  wire [0:0]\grdc.rd_data_count_i_reg[7] ;
  wire [9:0]\grdc.rd_data_count_i_reg[9] ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(count_value_i),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(count_value_i),
        .R(\count_value_i_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h000000000FFF0088)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(ram_wr_en_pf),
        .I1(going_full1),
        .I2(leaving_empty0),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'hFABAFBBBFBBBFBBB)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(clr_full),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I2(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I3(leaving_empty0),
        .I4(going_full1),
        .I5(ram_wr_en_pf),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [3]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ),
        .O(leaving_empty0));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0 ),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[9] [0]),
        .I2(\grdc.rd_data_count_i_reg[9] [2]),
        .I3(Q[2]),
        .I4(\grdc.rd_data_count_i_reg[9] [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[9] [6]),
        .I2(\grdc.rd_data_count_i_reg[9] [8]),
        .I3(Q[8]),
        .I4(\grdc.rd_data_count_i_reg[9] [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[9] [3]),
        .I2(\grdc.rd_data_count_i_reg[9] [5]),
        .I3(Q[5]),
        .I4(\grdc.rd_data_count_i_reg[9] [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [0]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [6]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_3 
       (.I0(Q[7]),
        .I1(\grdc.rd_data_count_i_reg[9] [7]),
        .O(\count_value_i_reg[7]_0 [6]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_4 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[9] [6]),
        .O(\count_value_i_reg[7]_0 [5]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_5 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[9] [5]),
        .O(\count_value_i_reg[7]_0 [4]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_6 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[9] [4]),
        .O(\count_value_i_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_7 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[9] [3]),
        .O(\count_value_i_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_8 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[9] [2]),
        .O(\count_value_i_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_9 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[9] [1]),
        .O(\count_value_i_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[8]_i_2 
       (.I0(Q[8]),
        .I1(\grdc.rd_data_count_i_reg[9] [8]),
        .O(\count_value_i_reg[8]_1 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_10 
       (.I0(Q[5]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [5]),
        .I2(Q[6]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [6]),
        .O(\count_value_i_reg[6]_0 [4]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_11 
       (.I0(Q[4]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [4]),
        .I2(Q[5]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [5]),
        .O(\count_value_i_reg[6]_0 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_12 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [3]),
        .I2(Q[4]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [4]),
        .O(\count_value_i_reg[6]_0 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_13 
       (.I0(Q[2]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [2]),
        .I2(Q[3]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [3]),
        .O(\count_value_i_reg[6]_0 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_14 
       (.I0(Q[1]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [1]),
        .I2(Q[2]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [2]),
        .O(\count_value_i_reg[6]_0 [0]));
  LUT4 #(
    .INIT(16'h7510)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_8 
       (.I0(Q[0]),
        .I1(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I2(ram_wr_en_pf),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [0]),
        .O(DI));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_9 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [6]),
        .I2(Q[7]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [7]),
        .O(\count_value_i_reg[6]_0 [5]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[9]_i_2 
       (.I0(Q[7]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [7]),
        .I2(Q[8]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [8]),
        .O(S));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_10 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[9] [5]),
        .I2(Q[6]),
        .I3(\grdc.rd_data_count_i_reg[9] [6]),
        .O(\count_value_i_reg[6]_1 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_11 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[9] [4]),
        .I2(Q[5]),
        .I3(\grdc.rd_data_count_i_reg[9] [5]),
        .O(\count_value_i_reg[6]_1 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_12 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[9] [3]),
        .I2(Q[4]),
        .I3(\grdc.rd_data_count_i_reg[9] [4]),
        .O(\count_value_i_reg[6]_1 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_13 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[9] [2]),
        .I2(Q[3]),
        .I3(\grdc.rd_data_count_i_reg[9] [3]),
        .O(\count_value_i_reg[6]_1 [0]));
  LUT3 #(
    .INIT(8'hD4)) 
    \gwdc.wr_data_count_i[7]_i_7 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[7] ),
        .I2(\grdc.rd_data_count_i_reg[9] [1]),
        .O(\count_value_i_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_9 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[9] [6]),
        .I2(Q[7]),
        .I3(\grdc.rd_data_count_i_reg[9] [7]),
        .O(\count_value_i_reg[6]_1 [4]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[9]_i_3 
       (.I0(Q[8]),
        .I1(\grdc.rd_data_count_i_reg[9] [8]),
        .I2(count_value_i),
        .I3(\grdc.rd_data_count_i_reg[9] [9]),
        .O(\count_value_i_reg[8]_0 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[9]_i_4 
       (.I0(Q[7]),
        .I1(\grdc.rd_data_count_i_reg[9] [7]),
        .I2(Q[8]),
        .I3(\grdc.rd_data_count_i_reg[9] [8]),
        .O(\count_value_i_reg[8]_0 [0]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_0
   (ram_empty_i0,
    Q,
    D,
    \count_value_i_reg[0]_0 ,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_wr_en_pf,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_1 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_i_2_0 ,
    DI,
    S,
    \grdc.rd_data_count_i_reg[9] ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8] ,
    \grdc.rd_data_count_i_reg[7] ,
    \grdc.rd_data_count_i_reg[9]_0 ,
    wr_clk);
  output ram_empty_i0;
  output [9:0]Q;
  output [9:0]D;
  output [8:0]\count_value_i_reg[0]_0 ;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_wr_en_pf;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_1 ;
  input rst_d1;
  input [8:0]\gen_pntr_flags_cc.ram_empty_i_i_2_0 ;
  input [1:0]DI;
  input [6:0]S;
  input [1:0]\grdc.rd_data_count_i_reg[9] ;
  input [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ;
  input [7:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 ;
  input [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8] ;
  input [0:0]\grdc.rd_data_count_i_reg[7] ;
  input [6:0]\grdc.rd_data_count_i_reg[9]_0 ;
  input wr_clk;

  wire [9:0]D;
  wire [1:0]DI;
  wire [9:0]Q;
  wire [6:0]S;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire [8:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire \count_value_i_reg[5]_0 ;
  wire [8:0]\gen_pntr_flags_cc.ram_empty_i_i_2_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ;
  wire [7:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_2 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_3 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_4 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_5 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_6 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_7 ;
  wire [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8] ;
  wire going_empty1;
  wire [0:0]\grdc.rd_data_count_i_reg[7] ;
  wire [1:0]\grdc.rd_data_count_i_reg[9] ;
  wire [6:0]\grdc.rd_data_count_i_reg[9]_0 ;
  wire \gwdc.wr_data_count_i[7]_i_14_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_6_n_0 ;
  wire \gwdc.wr_data_count_i[9]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_4 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_5 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_6 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_7 ;
  wire \gwdc.wr_data_count_i_reg[9]_i_1_n_7 ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire [7:0]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_gwdc.wr_data_count_i_reg[9]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_gwdc.wr_data_count_i_reg[9]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_1 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_1 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(ram_wr_en_pf),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1 
       (.CI(Q[0]),
        .CI_TOP(1'b0),
        .CO({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_1 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_2 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_3 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_4 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_5 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_6 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_7 }),
        .DI({Q[7:1],\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] }),
        .O(\count_value_i_reg[0]_0 [7:0]),
        .S(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1 
       (.CI(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1_O_UNCONNECTED [7:1],\count_value_i_reg[0]_0 [8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8] }));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gwdc.wr_data_count_i[7]_i_14 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[7] ),
        .I2(\grdc.rd_data_count_i_reg[9]_0 [0]),
        .I3(\grdc.rd_data_count_i_reg[9]_0 [1]),
        .I4(Q[2]),
        .O(\gwdc.wr_data_count_i[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_2 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[9]_0 [5]),
        .O(\gwdc.wr_data_count_i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_3 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[9]_0 [4]),
        .O(\gwdc.wr_data_count_i[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_4 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[9]_0 [3]),
        .O(\gwdc.wr_data_count_i[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_5 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[9]_0 [2]),
        .O(\gwdc.wr_data_count_i[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_6 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[9]_0 [1]),
        .O(\gwdc.wr_data_count_i[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[9]_i_2 
       (.I0(Q[7]),
        .I1(\grdc.rd_data_count_i_reg[9]_0 [6]),
        .O(\gwdc.wr_data_count_i[9]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gwdc.wr_data_count_i_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_3 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_4 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_5 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_6 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_7 }),
        .DI({\gwdc.wr_data_count_i[7]_i_2_n_0 ,\gwdc.wr_data_count_i[7]_i_3_n_0 ,\gwdc.wr_data_count_i[7]_i_4_n_0 ,\gwdc.wr_data_count_i[7]_i_5_n_0 ,\gwdc.wr_data_count_i[7]_i_6_n_0 ,DI,Q[0]}),
        .O(D[7:0]),
        .S({S[6:2],\gwdc.wr_data_count_i[7]_i_14_n_0 ,S[1:0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gwdc.wr_data_count_i_reg[9]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_gwdc.wr_data_count_i_reg[9]_i_1_CO_UNCONNECTED [7:1],\gwdc.wr_data_count_i_reg[9]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\gwdc.wr_data_count_i[9]_i_2_n_0 }),
        .O({\NLW_gwdc.wr_data_count_i_reg[9]_i_1_O_UNCONNECTED [7:2],D[9:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\grdc.rd_data_count_i_reg[9] }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_3
   (DI,
    Q,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \count_value_i_reg[1]_0 ,
    leaving_empty0,
    S,
    \count_value_i_reg[8]_0 ,
    \count_value_i_reg[6]_0 ,
    \count_value_i_reg[6]_1 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \count_value_i_reg[7]_0 ,
    \count_value_i_reg[8]_1 ,
    ram_wr_en_pf,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] ,
    \grdc.rd_data_count_i_reg[7] ,
    \grdc.rd_data_count_i_reg[9] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    clr_full,
    \count_value_i_reg[9]_0 ,
    wr_clk);
  output [0:0]DI;
  output [8:0]Q;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  output [0:0]\count_value_i_reg[1]_0 ;
  output leaving_empty0;
  output [0:0]S;
  output [1:0]\count_value_i_reg[8]_0 ;
  output [5:0]\count_value_i_reg[6]_0 ;
  output [4:0]\count_value_i_reg[6]_1 ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  output [6:0]\count_value_i_reg[7]_0 ;
  output [0:0]\count_value_i_reg[8]_1 ;
  input ram_wr_en_pf;
  input [8:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] ;
  input [0:0]\grdc.rd_data_count_i_reg[7] ;
  input [9:0]\grdc.rd_data_count_i_reg[9] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input clr_full;
  input [0:0]\count_value_i_reg[9]_0 ;
  input wr_clk;

  wire [0:0]DI;
  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [8:0]Q;
  wire [0:0]S;
  wire clr_full;
  wire [9:9]count_value_i;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire [5:0]\count_value_i_reg[6]_0 ;
  wire [4:0]\count_value_i_reg[6]_1 ;
  wire [6:0]\count_value_i_reg[7]_0 ;
  wire [1:0]\count_value_i_reg[8]_0 ;
  wire [0:0]\count_value_i_reg[8]_1 ;
  wire [0:0]\count_value_i_reg[9]_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0 ;
  wire [8:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] ;
  wire going_full1;
  wire [0:0]\grdc.rd_data_count_i_reg[7] ;
  wire [9:0]\grdc.rd_data_count_i_reg[9] ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(count_value_i),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(count_value_i),
        .R(\count_value_i_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h000000000FFF0088)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(ram_wr_en_pf),
        .I1(going_full1),
        .I2(leaving_empty0),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'hFABAFBBBFBBBFBBB)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(clr_full),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I2(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I3(leaving_empty0),
        .I4(going_full1),
        .I5(ram_wr_en_pf),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [3]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ),
        .O(leaving_empty0));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0 ),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_10_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5 
       (.I0(Q[0]),
        .I1(\grdc.rd_data_count_i_reg[9] [0]),
        .I2(\grdc.rd_data_count_i_reg[9] [2]),
        .I3(Q[2]),
        .I4(\grdc.rd_data_count_i_reg[9] [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[9] [6]),
        .I2(\grdc.rd_data_count_i_reg[9] [8]),
        .I3(Q[8]),
        .I4(\grdc.rd_data_count_i_reg[9] [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[9] [3]),
        .I2(\grdc.rd_data_count_i_reg[9] [5]),
        .I3(Q[5]),
        .I4(\grdc.rd_data_count_i_reg[9] [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [0]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [6]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_3 
       (.I0(Q[7]),
        .I1(\grdc.rd_data_count_i_reg[9] [7]),
        .O(\count_value_i_reg[7]_0 [6]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_4 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[9] [6]),
        .O(\count_value_i_reg[7]_0 [5]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_5 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[9] [5]),
        .O(\count_value_i_reg[7]_0 [4]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_6 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[9] [4]),
        .O(\count_value_i_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_7 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[9] [3]),
        .O(\count_value_i_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_8 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[9] [2]),
        .O(\count_value_i_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_9 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[9] [1]),
        .O(\count_value_i_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[8]_i_2 
       (.I0(Q[8]),
        .I1(\grdc.rd_data_count_i_reg[9] [8]),
        .O(\count_value_i_reg[8]_1 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_10 
       (.I0(Q[5]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [5]),
        .I2(Q[6]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [6]),
        .O(\count_value_i_reg[6]_0 [4]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_11 
       (.I0(Q[4]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [4]),
        .I2(Q[5]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [5]),
        .O(\count_value_i_reg[6]_0 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_12 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [3]),
        .I2(Q[4]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [4]),
        .O(\count_value_i_reg[6]_0 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_13 
       (.I0(Q[2]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [2]),
        .I2(Q[3]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [3]),
        .O(\count_value_i_reg[6]_0 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_14 
       (.I0(Q[1]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [1]),
        .I2(Q[2]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [2]),
        .O(\count_value_i_reg[6]_0 [0]));
  LUT4 #(
    .INIT(16'h7510)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_8 
       (.I0(Q[0]),
        .I1(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I2(ram_wr_en_pf),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [0]),
        .O(DI));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_9 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [6]),
        .I2(Q[7]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [7]),
        .O(\count_value_i_reg[6]_0 [5]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[9]_i_2 
       (.I0(Q[7]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [7]),
        .I2(Q[8]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] [8]),
        .O(S));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_10 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[9] [5]),
        .I2(Q[6]),
        .I3(\grdc.rd_data_count_i_reg[9] [6]),
        .O(\count_value_i_reg[6]_1 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_11 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[9] [4]),
        .I2(Q[5]),
        .I3(\grdc.rd_data_count_i_reg[9] [5]),
        .O(\count_value_i_reg[6]_1 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_12 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[9] [3]),
        .I2(Q[4]),
        .I3(\grdc.rd_data_count_i_reg[9] [4]),
        .O(\count_value_i_reg[6]_1 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_13 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[9] [2]),
        .I2(Q[3]),
        .I3(\grdc.rd_data_count_i_reg[9] [3]),
        .O(\count_value_i_reg[6]_1 [0]));
  LUT3 #(
    .INIT(8'hD4)) 
    \gwdc.wr_data_count_i[7]_i_7 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[7] ),
        .I2(\grdc.rd_data_count_i_reg[9] [1]),
        .O(\count_value_i_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_9 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[9] [6]),
        .I2(Q[7]),
        .I3(\grdc.rd_data_count_i_reg[9] [7]),
        .O(\count_value_i_reg[6]_1 [4]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[9]_i_3 
       (.I0(Q[8]),
        .I1(\grdc.rd_data_count_i_reg[9] [8]),
        .I2(count_value_i),
        .I3(\grdc.rd_data_count_i_reg[9] [9]),
        .O(\count_value_i_reg[8]_0 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[9]_i_4 
       (.I0(Q[7]),
        .I1(\grdc.rd_data_count_i_reg[9] [7]),
        .I2(Q[8]),
        .I3(\grdc.rd_data_count_i_reg[9] [8]),
        .O(\count_value_i_reg[8]_0 [0]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_6
   (ram_empty_i0,
    Q,
    D,
    \count_value_i_reg[0]_0 ,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_wr_en_pf,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_1 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_i_2_0 ,
    DI,
    S,
    \grdc.rd_data_count_i_reg[9] ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8] ,
    \grdc.rd_data_count_i_reg[7] ,
    \grdc.rd_data_count_i_reg[9]_0 ,
    wr_clk);
  output ram_empty_i0;
  output [9:0]Q;
  output [9:0]D;
  output [8:0]\count_value_i_reg[0]_0 ;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_wr_en_pf;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_1 ;
  input rst_d1;
  input [8:0]\gen_pntr_flags_cc.ram_empty_i_i_2_0 ;
  input [1:0]DI;
  input [6:0]S;
  input [1:0]\grdc.rd_data_count_i_reg[9] ;
  input [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ;
  input [7:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 ;
  input [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8] ;
  input [0:0]\grdc.rd_data_count_i_reg[7] ;
  input [6:0]\grdc.rd_data_count_i_reg[9]_0 ;
  input wr_clk;

  wire [9:0]D;
  wire [1:0]DI;
  wire [9:0]Q;
  wire [6:0]S;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire [8:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire \count_value_i_reg[5]_0 ;
  wire [8:0]\gen_pntr_flags_cc.ram_empty_i_i_2_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ;
  wire [7:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_2 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_3 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_4 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_5 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_6 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_7 ;
  wire [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8] ;
  wire going_empty1;
  wire [0:0]\grdc.rd_data_count_i_reg[7] ;
  wire [1:0]\grdc.rd_data_count_i_reg[9] ;
  wire [6:0]\grdc.rd_data_count_i_reg[9]_0 ;
  wire \gwdc.wr_data_count_i[7]_i_14_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_6_n_0 ;
  wire \gwdc.wr_data_count_i[9]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_4 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_5 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_6 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_7 ;
  wire \gwdc.wr_data_count_i_reg[9]_i_1_n_7 ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire [7:0]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_gwdc.wr_data_count_i_reg[9]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_gwdc.wr_data_count_i_reg[9]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_1 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_1 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(ram_wr_en_pf),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1 
       (.CI(Q[0]),
        .CI_TOP(1'b0),
        .CO({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_1 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_2 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_3 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_4 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_5 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_6 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_7 }),
        .DI({Q[7:1],\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] }),
        .O(\count_value_i_reg[0]_0 [7:0]),
        .S(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1 
       (.CI(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8]_i_1_O_UNCONNECTED [7:1],\count_value_i_reg[0]_0 [8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8] }));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gwdc.wr_data_count_i[7]_i_14 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[7] ),
        .I2(\grdc.rd_data_count_i_reg[9]_0 [0]),
        .I3(\grdc.rd_data_count_i_reg[9]_0 [1]),
        .I4(Q[2]),
        .O(\gwdc.wr_data_count_i[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_2 
       (.I0(Q[6]),
        .I1(\grdc.rd_data_count_i_reg[9]_0 [5]),
        .O(\gwdc.wr_data_count_i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_3 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[9]_0 [4]),
        .O(\gwdc.wr_data_count_i[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_4 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[9]_0 [3]),
        .O(\gwdc.wr_data_count_i[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_5 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[9]_0 [2]),
        .O(\gwdc.wr_data_count_i[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_6 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[9]_0 [1]),
        .O(\gwdc.wr_data_count_i[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[9]_i_2 
       (.I0(Q[7]),
        .I1(\grdc.rd_data_count_i_reg[9]_0 [6]),
        .O(\gwdc.wr_data_count_i[9]_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gwdc.wr_data_count_i_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_3 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_4 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_5 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_6 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_7 }),
        .DI({\gwdc.wr_data_count_i[7]_i_2_n_0 ,\gwdc.wr_data_count_i[7]_i_3_n_0 ,\gwdc.wr_data_count_i[7]_i_4_n_0 ,\gwdc.wr_data_count_i[7]_i_5_n_0 ,\gwdc.wr_data_count_i[7]_i_6_n_0 ,DI,Q[0]}),
        .O(D[7:0]),
        .S({S[6:2],\gwdc.wr_data_count_i[7]_i_14_n_0 ,S[1:0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gwdc.wr_data_count_i_reg[9]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_gwdc.wr_data_count_i_reg[9]_i_1_CO_UNCONNECTED [7:1],\gwdc.wr_data_count_i_reg[9]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\gwdc.wr_data_count_i[9]_i_2_n_0 }),
        .O({\NLW_gwdc.wr_data_count_i_reg[9]_i_1_O_UNCONNECTED [7:2],D[9:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\grdc.rd_data_count_i_reg[9] }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1
   (Q,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[1]_1 ,
    wr_clk);
  output [8:0]Q;
  input \count_value_i_reg[0]_0 ;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[1]_1 ;
  input wr_clk;

  wire [8:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_2__0_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire [0:0]\count_value_i_reg[1]_1 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__3 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[8]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__2 
       (.I0(Q[6]),
        .I1(\count_value_i[8]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[8]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[8]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[8]_i_1__2_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[1]_1 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_1
   (Q,
    D,
    ram_wr_en_pf,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[1]_0 ,
    rst_d1,
    DI,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ,
    S,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 ,
    wr_clk);
  output [8:0]Q;
  output [8:0]D;
  input ram_wr_en_pf;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input rst_d1;
  input [0:0]DI;
  input [5:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ;
  input [0:0]S;
  input [6:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 ;
  input \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 ;
  input wr_clk;

  wire [8:0]D;
  wire [0:0]DI;
  wire [8:0]Q;
  wire [0:0]S;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[8]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0 ;
  wire [5:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ;
  wire [6:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_4 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_5 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_6 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_7 ;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire [7:0]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[8]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[8]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[8]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[8]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hF75108AE08AEF751)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15 
       (.I0(Q[0]),
        .I1(ram_wr_en_pf),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 ),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [0]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9969)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [0]),
        .I2(ram_wr_en_pf),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 ),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [6]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3 
       (.I0(Q[5]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [5]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4 
       (.I0(Q[4]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [4]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [3]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6 
       (.I0(Q[2]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [2]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7 
       (.I0(Q[1]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [1]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_4 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_5 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_6 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_7 }),
        .DI({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0 ,DI,1'b0}),
        .O(D[7:0]),
        .S({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1 
       (.CI(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1_O_UNCONNECTED [7:1],D[8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S}));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_4
   (Q,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[1]_1 ,
    wr_clk);
  output [8:0]Q;
  input \count_value_i_reg[0]_0 ;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[1]_1 ;
  input wr_clk;

  wire [8:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_2__0_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire [0:0]\count_value_i_reg[1]_1 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__3 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[8]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__2 
       (.I0(Q[6]),
        .I1(\count_value_i[8]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[8]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[8]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[8]_i_1__2_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[1]_1 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_7
   (Q,
    D,
    ram_wr_en_pf,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[1]_0 ,
    rst_d1,
    DI,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ,
    S,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 ,
    wr_clk);
  output [8:0]Q;
  output [8:0]D;
  input ram_wr_en_pf;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input rst_d1;
  input [0:0]DI;
  input [5:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ;
  input [0:0]S;
  input [6:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 ;
  input \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 ;
  input wr_clk;

  wire [8:0]D;
  wire [0:0]DI;
  wire [8:0]Q;
  wire [0:0]S;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[8]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0 ;
  wire [5:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ;
  wire [6:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_4 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_5 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_6 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_7 ;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire [7:0]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[8]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[8]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[8]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[8]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hF75108AE08AEF751)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15 
       (.I0(Q[0]),
        .I1(ram_wr_en_pf),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 ),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [0]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9969)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [0]),
        .I2(ram_wr_en_pf),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 ),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [6]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3 
       (.I0(Q[5]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [5]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4 
       (.I0(Q[4]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [4]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [3]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6 
       (.I0(Q[2]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [2]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7 
       (.I0(Q[1]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [1]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_4 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_5 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_6 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_7 }),
        .DI({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0 ,DI,1'b0}),
        .O(D[7:0]),
        .S({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1 
       (.CI(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9]_i_1_O_UNCONNECTED [7:1],D[8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S}));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3
   (ram_full_i0,
    leaving_empty0,
    enb,
    Q,
    E,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 ,
    \count_value_i_reg[6]_0 ,
    rd_clk);
  output ram_full_i0;
  output leaving_empty0;
  output enb;
  output [6:0]Q;
  input [0:0]E;
  input \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [6:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 ;
  input [6:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 ;
  input [0:0]\count_value_i_reg[6]_0 ;
  input rd_clk;

  wire [0:0]E;
  wire [6:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[6]_0 ;
  wire enb;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ;
  wire [6:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 ;
  wire [6:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_7_n_0 ;
  wire going_full1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_full_i0;
  wire rd_clk;
  wire rd_en;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[6]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_1 
       (.I0(E),
        .I1(going_full1),
        .I2(leaving_empty0),
        .I3(enb),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ),
        .O(ram_full_i0));
  LUT4 #(
    .INIT(16'h9000)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 [6]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_n_0 ),
        .I3(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 [3]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 [0]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ),
        .I3(\gen_pntr_flags_cc.ram_empty_i_i_7_n_0 ),
        .O(leaving_empty0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_6 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_7 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(enb));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_10
   (ram_empty_i0,
    Q,
    enb,
    leaving_empty0,
    E,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    rd_clk);
  output ram_empty_i0;
  output [6:0]Q;
  input enb;
  input leaving_empty0;
  input [0:0]E;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input [6:0]\gen_pntr_flags_cc.ram_empty_i_reg ;
  input rd_clk;

  wire [0:0]E;
  wire [6:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire enb;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire [6:0]\gen_pntr_flags_cc.ram_empty_i_reg ;
  wire going_empty1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rst_d1;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(enb),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(E),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT4 #(
    .INIT(16'h9000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .I3(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized4
   (Q,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[1]_1 ,
    E,
    rd_clk);
  output [6:0]Q;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[1]_1 ;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [6:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire [0:0]\count_value_i_reg[1]_1 ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_1 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized4_11
   (Q,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[1]_0 ,
    rst_d1,
    E,
    rd_clk);
  output [6:0]Q;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input rst_d1;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [6:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire rd_clk;
  wire rst_d1;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_0 ));
endmodule

(* AXIS_DATA_WIDTH = "185" *) (* AXIS_FINAL_DATA_WIDTH = "185" *) (* CASCADE_HEIGHT = "0" *) 
(* CDC_SYNC_STAGES = "2" *) (* CLOCKING_MODE = "COMMON" *) (* ECC_MODE = "NO_ECC" *) 
(* EN_ADV_FEATURE_AXIS = "16'b0001011000000110" *) (* EN_ADV_FEATURE_AXIS_INT = "16'b0001011000000110" *) (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
(* EN_ALMOST_FULL_INT = "1'b0" *) (* EN_DATA_VALID_INT = "1'b1" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* FIFO_DEPTH = "512" *) (* FIFO_MEMORY_TYPE = "BRAM" *) (* LOG_DEPTH_AXIS = "9" *) 
(* PACKET_FIFO = "false" *) (* PKT_SIZE_LT8 = "1'b0" *) (* PROG_EMPTY_THRESH = "5" *) 
(* PROG_FULL_THRESH = "507" *) (* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "2" *) (* P_PKT_MODE = "0" *) (* RD_DATA_COUNT_WIDTH = "10" *) 
(* RELATED_CLOCKS = "0" *) (* SIM_ASSERT_CHK = "0" *) (* TDATA_OFFSET = "128" *) 
(* TDATA_WIDTH = "128" *) (* TDEST_OFFSET = "168" *) (* TDEST_WIDTH = "4" *) 
(* TID_OFFSET = "164" *) (* TID_WIDTH = "4" *) (* TKEEP_OFFSET = "160" *) 
(* TSTRB_OFFSET = "144" *) (* TUSER_MAX_WIDTH = "3927" *) (* TUSER_OFFSET = "184" *) 
(* TUSER_WIDTH = "16" *) (* USE_ADV_FEATURES = "1606" *) (* USE_ADV_FEATURES_INT = "825634870" *) 
(* WR_DATA_COUNT_WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) (* dont_touch = "true" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis
   (s_aresetn,
    s_aclk,
    m_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    prog_full_axis,
    wr_data_count_axis,
    almost_full_axis,
    prog_empty_axis,
    rd_data_count_axis,
    almost_empty_axis,
    injectsbiterr_axis,
    injectdbiterr_axis,
    sbiterr_axis,
    dbiterr_axis);
  input s_aresetn;
  input s_aclk;
  input m_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [127:0]s_axis_tdata;
  input [15:0]s_axis_tstrb;
  input [15:0]s_axis_tkeep;
  input s_axis_tlast;
  input [3:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [15:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tstrb;
  output [15:0]m_axis_tkeep;
  output m_axis_tlast;
  output [3:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [15:0]m_axis_tuser;
  output prog_full_axis;
  output [9:0]wr_data_count_axis;
  output almost_full_axis;
  output prog_empty_axis;
  output [9:0]rd_data_count_axis;
  output almost_empty_axis;
  input injectsbiterr_axis;
  input injectdbiterr_axis;
  output sbiterr_axis;
  output dbiterr_axis;

  wire \<const0> ;
  wire \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ;
  wire [127:0]m_axis_tdata;
  wire [3:0]m_axis_tdest;
  wire [3:0]m_axis_tid;
  wire [15:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [15:0]m_axis_tstrb;
  wire [15:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire prog_empty_axis;
  wire prog_full_axis;
  wire [9:0]rd_data_count_axis;
  wire rst_axis;
  wire s_aclk;
  wire s_aresetn;
  wire [127:0]s_axis_tdata;
  wire [3:0]s_axis_tdest;
  wire [3:0]s_axis_tid;
  wire [15:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [15:0]s_axis_tstrb;
  wire [15:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire [9:0]wr_data_count_axis;
  wire xpm_fifo_base_inst_i_1_n_0;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;

  assign almost_empty_axis = \<const0> ;
  assign almost_full_axis = \<const0> ;
  assign dbiterr_axis = \<const0> ;
  assign sbiterr_axis = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst \gaxis_rst_sync.xpm_cdc_sync_rst_inst 
       (.dest_clk(s_aclk),
        .dest_rst(rst_axis),
        .src_rst(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1 
       (.I0(s_aresetn),
        .O(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001011000000110" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "2" *) 
  (* FIFO_MEM_TYPE = "2" *) 
  (* FIFO_READ_DEPTH = "512" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "94720" *) 
  (* FIFO_WRITE_DEPTH = "512" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* PE_THRESH_ADJ = "3" *) 
  (* PE_THRESH_MAX = "507" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "505" *) 
  (* PF_THRESH_MAX = "507" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "507" *) 
  (* RD_DATA_COUNT_WIDTH = "10" *) 
  (* RD_DC_WIDTH_EXT = "10" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "9" *) 
  (* READ_DATA_WIDTH = "185" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "825634870" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "185" *) 
  (* WR_DATA_COUNT_WIDTH = "10" *) 
  (* WR_DC_WIDTH_EXT = "10" *) 
  (* WR_DEPTH_LOG = "9" *) 
  (* WR_PNTR_WIDTH = "9" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "8" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(m_axis_tvalid),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({s_axis_tlast,s_axis_tuser,s_axis_tdest,s_axis_tid,s_axis_tkeep,s_axis_tstrb,s_axis_tdata}),
        .dout({m_axis_tlast,m_axis_tuser,m_axis_tdest,m_axis_tid,m_axis_tkeep,m_axis_tstrb,m_axis_tdata}),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(s_axis_tready),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(prog_empty_axis),
        .prog_full(prog_full_axis),
        .rd_clk(1'b0),
        .rd_data_count(rd_data_count_axis),
        .rd_en(xpm_fifo_base_inst_i_1_n_0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_axis),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(s_aclk),
        .wr_data_count(wr_data_count_axis),
        .wr_en(s_axis_tvalid),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    xpm_fifo_base_inst_i_1
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .O(xpm_fifo_base_inst_i_1_n_0));
endmodule

(* AXIS_DATA_WIDTH = "185" *) (* AXIS_FINAL_DATA_WIDTH = "185" *) (* CASCADE_HEIGHT = "0" *) 
(* CDC_SYNC_STAGES = "2" *) (* CLOCKING_MODE = "COMMON" *) (* ECC_MODE = "NO_ECC" *) 
(* EN_ADV_FEATURE_AXIS = "16'b0001011000000110" *) (* EN_ADV_FEATURE_AXIS_INT = "16'b0001011000000110" *) (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
(* EN_ALMOST_FULL_INT = "1'b0" *) (* EN_DATA_VALID_INT = "1'b1" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* FIFO_DEPTH = "512" *) (* FIFO_MEMORY_TYPE = "BRAM" *) (* LOG_DEPTH_AXIS = "9" *) 
(* ORIG_REF_NAME = "xpm_fifo_axis" *) (* PACKET_FIFO = "false" *) (* PKT_SIZE_LT8 = "1'b0" *) 
(* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "507" *) (* P_COMMON_CLOCK = "1" *) 
(* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "2" *) (* P_PKT_MODE = "0" *) 
(* RD_DATA_COUNT_WIDTH = "10" *) (* RELATED_CLOCKS = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* TDATA_OFFSET = "128" *) (* TDATA_WIDTH = "128" *) (* TDEST_OFFSET = "168" *) 
(* TDEST_WIDTH = "4" *) (* TID_OFFSET = "164" *) (* TID_WIDTH = "4" *) 
(* TKEEP_OFFSET = "160" *) (* TSTRB_OFFSET = "144" *) (* TUSER_MAX_WIDTH = "3927" *) 
(* TUSER_OFFSET = "184" *) (* TUSER_WIDTH = "16" *) (* USE_ADV_FEATURES = "1606" *) 
(* USE_ADV_FEATURES_INT = "825634870" *) (* WR_DATA_COUNT_WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* dont_touch = "true" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis__2
   (s_aresetn,
    s_aclk,
    m_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    prog_full_axis,
    wr_data_count_axis,
    almost_full_axis,
    prog_empty_axis,
    rd_data_count_axis,
    almost_empty_axis,
    injectsbiterr_axis,
    injectdbiterr_axis,
    sbiterr_axis,
    dbiterr_axis);
  input s_aresetn;
  input s_aclk;
  input m_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [127:0]s_axis_tdata;
  input [15:0]s_axis_tstrb;
  input [15:0]s_axis_tkeep;
  input s_axis_tlast;
  input [3:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [15:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tstrb;
  output [15:0]m_axis_tkeep;
  output m_axis_tlast;
  output [3:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [15:0]m_axis_tuser;
  output prog_full_axis;
  output [9:0]wr_data_count_axis;
  output almost_full_axis;
  output prog_empty_axis;
  output [9:0]rd_data_count_axis;
  output almost_empty_axis;
  input injectsbiterr_axis;
  input injectdbiterr_axis;
  output sbiterr_axis;
  output dbiterr_axis;

  wire \<const0> ;
  wire \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ;
  wire [127:0]m_axis_tdata;
  wire [3:0]m_axis_tdest;
  wire [3:0]m_axis_tid;
  wire [15:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [15:0]m_axis_tstrb;
  wire [15:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire prog_empty_axis;
  wire prog_full_axis;
  wire [9:0]rd_data_count_axis;
  wire rst_axis;
  wire s_aclk;
  wire s_aresetn;
  wire [127:0]s_axis_tdata;
  wire [3:0]s_axis_tdest;
  wire [3:0]s_axis_tid;
  wire [15:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [15:0]s_axis_tstrb;
  wire [15:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire [9:0]wr_data_count_axis;
  wire xpm_fifo_base_inst_i_1_n_0;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;

  assign almost_empty_axis = \<const0> ;
  assign almost_full_axis = \<const0> ;
  assign dbiterr_axis = \<const0> ;
  assign sbiterr_axis = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2 \gaxis_rst_sync.xpm_cdc_sync_rst_inst 
       (.dest_clk(s_aclk),
        .dest_rst(rst_axis),
        .src_rst(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1 
       (.I0(s_aresetn),
        .O(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001011000000110" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "2" *) 
  (* FIFO_MEM_TYPE = "2" *) 
  (* FIFO_READ_DEPTH = "512" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "94720" *) 
  (* FIFO_WRITE_DEPTH = "512" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* PE_THRESH_ADJ = "3" *) 
  (* PE_THRESH_MAX = "507" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "505" *) 
  (* PF_THRESH_MAX = "507" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "507" *) 
  (* RD_DATA_COUNT_WIDTH = "10" *) 
  (* RD_DC_WIDTH_EXT = "10" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "9" *) 
  (* READ_DATA_WIDTH = "185" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "825634870" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "185" *) 
  (* WR_DATA_COUNT_WIDTH = "10" *) 
  (* WR_DC_WIDTH_EXT = "10" *) 
  (* WR_DEPTH_LOG = "9" *) 
  (* WR_PNTR_WIDTH = "9" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "8" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2 xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(m_axis_tvalid),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({s_axis_tlast,s_axis_tuser,s_axis_tdest,s_axis_tid,s_axis_tkeep,s_axis_tstrb,s_axis_tdata}),
        .dout({m_axis_tlast,m_axis_tuser,m_axis_tdest,m_axis_tid,m_axis_tkeep,m_axis_tstrb,m_axis_tdata}),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(s_axis_tready),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(prog_empty_axis),
        .prog_full(prog_full_axis),
        .rd_clk(1'b0),
        .rd_data_count(rd_data_count_axis),
        .rd_en(xpm_fifo_base_inst_i_1_n_0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_axis),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(s_aclk),
        .wr_data_count(wr_data_count_axis),
        .wr_en(s_axis_tvalid),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    xpm_fifo_base_inst_i_1
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .O(xpm_fifo_base_inst_i_1_n_0));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001011000000110" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b0" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* EN_UF = "1'b0" *) (* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) 
(* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "2" *) (* FIFO_MEM_TYPE = "2" *) 
(* FIFO_READ_DEPTH = "512" *) (* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "94720" *) 
(* FIFO_WRITE_DEPTH = "512" *) (* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) 
(* PE_THRESH_ADJ = "3" *) (* PE_THRESH_MAX = "507" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "505" *) (* PF_THRESH_MAX = "507" *) (* PF_THRESH_MIN = "5" *) 
(* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "507" *) (* RD_DATA_COUNT_WIDTH = "10" *) 
(* RD_DC_WIDTH_EXT = "10" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "9" *) (* READ_DATA_WIDTH = "185" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "825634870" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "185" *) 
(* WR_DATA_COUNT_WIDTH = "10" *) (* WR_DC_WIDTH_EXT = "10" *) (* WR_DEPTH_LOG = "9" *) 
(* WR_PNTR_WIDTH = "9" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "8" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [184:0]din;
  output full;
  output full_n;
  output prog_full;
  output [9:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [184:0]dout;
  output empty;
  output prog_empty;
  output [9:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [8:0]count_value_i__0;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [8:0]diff_pntr_pe;
  wire [8:0]diff_pntr_pf;
  wire [9:1]diff_pntr_pf_q0;
  wire [184:0]din;
  wire [184:0]dout;
  wire full_n;
  wire \gen_fwft.count_rst ;
  wire \gen_fwft.empty_fwft_i_reg_n_0 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_0 ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_2 ;
  wire \gen_fwft.rdpp1_inst_n_3 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8] ;
  wire [9:0]\grdc.diff_wr_rd_pntr_rdc ;
  wire \grdc.rd_data_count_i0 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire p_1_in__0;
  wire prog_empty;
  wire prog_full;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_rd_en_pf_q;
  wire ram_wr_en_pf;
  wire ram_wr_en_pf_q;
  wire [9:0]rd_data_count;
  wire rd_en;
  wire [8:0]rd_pntr_ext;
  wire rdp_inst_n_0;
  wire rdp_inst_n_10;
  wire rdp_inst_n_11;
  wire rdp_inst_n_13;
  wire rdp_inst_n_14;
  wire rdp_inst_n_15;
  wire rdp_inst_n_16;
  wire rdp_inst_n_17;
  wire rdp_inst_n_18;
  wire rdp_inst_n_19;
  wire rdp_inst_n_20;
  wire rdp_inst_n_21;
  wire rdp_inst_n_22;
  wire rdp_inst_n_23;
  wire rdp_inst_n_24;
  wire rdp_inst_n_25;
  wire rdp_inst_n_26;
  wire rdp_inst_n_27;
  wire rdp_inst_n_28;
  wire rdp_inst_n_29;
  wire rdp_inst_n_30;
  wire rdp_inst_n_31;
  wire rdp_inst_n_32;
  wire rdp_inst_n_33;
  wire rdp_inst_n_34;
  wire rdp_inst_n_35;
  wire rdp_inst_n_36;
  wire read_only;
  wire read_only_q;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_5;
  wire sleep;
  wire wr_clk;
  wire [9:0]wr_data_count;
  wire wr_en;
  wire [8:0]wr_pntr_ext;
  wire write_only;
  wire write_only_q;
  wire wrp_inst_n_1;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire wrpp1_inst_n_8;
  wire xpm_fifo_rst_inst_n_1;
  wire xpm_fifo_rst_inst_n_4;
  wire xpm_fifo_rst_inst_n_5;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [184:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h3FF0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(xpm_fifo_rst_inst_n_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn_2 \gen_fwft.rdpp1_inst 
       (.DI(\gen_fwft.rdpp1_inst_n_3 ),
        .Q(\gen_fwft.rdpp1_inst_n_0 ),
        .S({\gen_fwft.rdpp1_inst_n_1 ,\gen_fwft.rdpp1_inst_n_2 }),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .\grdc.rd_data_count_i_reg[7] (rd_pntr_ext[1:0]),
        .\grdc.rd_data_count_i_reg[7]_0 (wr_pntr_ext[1:0]),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_27),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_28),
        .Q(full_n),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0] ),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1] ),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2] ),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3] ),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[4]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4] ),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[5]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5] ),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[6]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6] ),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[7]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7] ),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[8]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8] ),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_4),
        .Q(prog_empty),
        .R(1'b0));
  FDRE \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(read_only),
        .Q(read_only_q),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(write_only),
        .Q(write_only_q),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[1]),
        .Q(diff_pntr_pf[0]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[2]),
        .Q(diff_pntr_pf[1]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[3]),
        .Q(diff_pntr_pf[2]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf[3]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[5]),
        .Q(diff_pntr_pf[4]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[6]),
        .Q(diff_pntr_pf[5]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[7]),
        .Q(diff_pntr_pf[6]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[8]),
        .Q(diff_pntr_pf[7]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[9]),
        .Q(diff_pntr_pf[8]),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_5),
        .Q(prog_full),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_rd_en_pf_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_10),
        .Q(ram_rd_en_pf_q),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_wr_en_pf),
        .Q(ram_wr_en_pf_q),
        .R(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "9" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "185" *) 
  (* BYTE_WRITE_WIDTH_B = "185" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "184" *) 
  (* \MEM.ADDRESS_SPACE_END  = "511" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "185" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "94720" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "512" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "185" *) 
  (* P_MIN_WIDTH_DATA_A = "185" *) 
  (* P_MIN_WIDTH_DATA_B = "185" *) 
  (* P_MIN_WIDTH_DATA_ECC = "185" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "185" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_COL_READ_A = "1" *) 
  (* P_NUM_COL_READ_B = "1" *) 
  (* P_NUM_COL_WRITE_A = "1" *) 
  (* P_NUM_COL_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "no" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_READ_A = "9" *) 
  (* P_WIDTH_ADDR_READ_B = "9" *) 
  (* P_WIDTH_ADDR_WRITE_A = "9" *) 
  (* P_WIDTH_ADDR_WRITE_B = "9" *) 
  (* P_WIDTH_COL_WRITE_A = "185" *) 
  (* P_WIDTH_COL_WRITE_B = "185" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "185" *) 
  (* READ_DATA_WIDTH_B = "185" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "185" *) 
  (* WRITE_DATA_WIDTH_B = "185" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "188" *) 
  (* rstb_loop_iter = "188" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [184:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdp_inst_n_10),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_pf),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  FDRE \grdc.rd_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [0]),
        .Q(rd_data_count[0]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(rd_data_count[1]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(rd_data_count[2]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(rd_data_count[3]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(rd_data_count[4]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(rd_data_count[5]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(rd_data_count[6]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(rd_data_count[7]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [8]),
        .Q(rd_data_count[8]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [9]),
        .Q(rd_data_count[9]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \gwdc.wr_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [0]),
        .Q(wr_data_count[0]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(wr_data_count[1]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(wr_data_count[2]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(wr_data_count[3]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(wr_data_count[4]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(wr_data_count[5]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(wr_data_count[6]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(wr_data_count[7]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [8]),
        .Q(wr_data_count[8]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [9]),
        .Q(wr_data_count[9]),
        .R(xpm_fifo_rst_inst_n_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_3 rdp_inst
       (.DI(rdp_inst_n_0),
        .\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_10),
        .Q(rd_pntr_ext),
        .S(rdp_inst_n_13),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[1]_0 (rdp_inst_n_11),
        .\count_value_i_reg[6]_0 ({rdp_inst_n_16,rdp_inst_n_17,rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21}),
        .\count_value_i_reg[6]_1 ({rdp_inst_n_22,rdp_inst_n_23,rdp_inst_n_24,rdp_inst_n_25,rdp_inst_n_26}),
        .\count_value_i_reg[7]_0 ({rdp_inst_n_29,rdp_inst_n_30,rdp_inst_n_31,rdp_inst_n_32,rdp_inst_n_33,rdp_inst_n_34,rdp_inst_n_35}),
        .\count_value_i_reg[8]_0 ({rdp_inst_n_14,rdp_inst_n_15}),
        .\count_value_i_reg[8]_1 (rdp_inst_n_36),
        .\count_value_i_reg[9]_0 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_27),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (rdp_inst_n_28),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8}),
        .\grdc.rd_data_count_i_reg[7] (\gen_fwft.rdpp1_inst_n_0 ),
        .\grdc.rd_data_count_i_reg[9] ({wrp_inst_n_1,wr_pntr_ext}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_4 rdpp1_inst
       (.Q(count_value_i__0),
        .\count_value_i_reg[0]_0 (rdp_inst_n_10),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .\count_value_i_reg[1]_1 (xpm_fifo_rst_inst_n_1),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_5 rst_d1_inst
       (.DI(p_1_in__0),
        .Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0 (rdp_inst_n_10),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1 (\gen_fwft.empty_fwft_i_reg_n_0 ),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg (diff_pntr_pf),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg (rst_d1_inst_n_5),
        .prog_full(prog_full),
        .ram_rd_en_pf_q(ram_rd_en_pf_q),
        .ram_wr_en_pf_q(ram_wr_en_pf_q),
        .read_only(read_only),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .write_only(write_only));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_6 wrp_inst
       (.D(\grdc.diff_wr_rd_pntr_rdc ),
        .DI({rdp_inst_n_11,\gen_fwft.rdpp1_inst_n_3 }),
        .Q({wrp_inst_n_1,wr_pntr_ext}),
        .S({rdp_inst_n_22,rdp_inst_n_23,rdp_inst_n_24,rdp_inst_n_25,rdp_inst_n_26,\gen_fwft.rdpp1_inst_n_1 ,\gen_fwft.rdpp1_inst_n_2 }),
        .\count_value_i_reg[0]_0 (diff_pntr_pe),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.ram_empty_i_i_2_0 (count_value_i__0),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdp_inst_n_10),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] (p_1_in__0),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 ({rdp_inst_n_29,rdp_inst_n_30,rdp_inst_n_31,rdp_inst_n_32,rdp_inst_n_33,rdp_inst_n_34,rdp_inst_n_35,xpm_fifo_rst_inst_n_5}),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8] (rdp_inst_n_36),
        .\grdc.rd_data_count_i_reg[7] (\gen_fwft.rdpp1_inst_n_0 ),
        .\grdc.rd_data_count_i_reg[9] ({rdp_inst_n_14,rdp_inst_n_15}),
        .\grdc.rd_data_count_i_reg[9]_0 (rd_pntr_ext[7:1]),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_7 wrpp1_inst
       (.D(diff_pntr_pf_q0),
        .DI(rdp_inst_n_0),
        .Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8}),
        .S(rdp_inst_n_13),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ({rdp_inst_n_16,rdp_inst_n_17,rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21}),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 (rd_pntr_ext[6:0]),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 (rdp_inst_n_10),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst_8 xpm_fifo_rst_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[1] (curr_fwft_state),
        .\count_value_i_reg[8] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (xpm_fifo_rst_inst_n_5),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] (rdp_inst_n_10),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 (\gen_fwft.empty_fwft_i_reg_n_0 ),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_1 (rd_pntr_ext[0]),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0] }),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg (xpm_fifo_rst_inst_n_4),
        .\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 (\grdc.rd_data_count_i0 ),
        .prog_empty(prog_empty),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .read_only_q(read_only_q),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .write_only_q(write_only_q));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001011000000110" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b0" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* EN_UF = "1'b0" *) (* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) 
(* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "2" *) (* FIFO_MEM_TYPE = "2" *) 
(* FIFO_READ_DEPTH = "512" *) (* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "94720" *) 
(* FIFO_WRITE_DEPTH = "512" *) (* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) 
(* ORIG_REF_NAME = "xpm_fifo_base" *) (* PE_THRESH_ADJ = "3" *) (* PE_THRESH_MAX = "507" *) 
(* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "505" *) (* PF_THRESH_MAX = "507" *) 
(* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "507" *) 
(* RD_DATA_COUNT_WIDTH = "10" *) (* RD_DC_WIDTH_EXT = "10" *) (* RD_LATENCY = "2" *) 
(* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "9" *) (* READ_DATA_WIDTH = "185" *) 
(* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "825634870" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) 
(* WRITE_DATA_WIDTH = "185" *) (* WR_DATA_COUNT_WIDTH = "10" *) (* WR_DC_WIDTH_EXT = "10" *) 
(* WR_DEPTH_LOG = "9" *) (* WR_PNTR_WIDTH = "9" *) (* WR_RD_RATIO = "0" *) 
(* WR_WIDTH_LOG = "8" *) (* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) 
(* invalid = "0" *) (* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) 
(* stage2_valid = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__2
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [184:0]din;
  output full;
  output full_n;
  output prog_full;
  output [9:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [184:0]dout;
  output empty;
  output prog_empty;
  output [9:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [8:0]count_value_i__0;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [8:0]diff_pntr_pe;
  wire [8:0]diff_pntr_pf;
  wire [9:1]diff_pntr_pf_q0;
  wire [184:0]din;
  wire [184:0]dout;
  wire full_n;
  wire \gen_fwft.count_rst ;
  wire \gen_fwft.empty_fwft_i_reg_n_0 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_0 ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_2 ;
  wire \gen_fwft.rdpp1_inst_n_3 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8] ;
  wire [9:0]\grdc.diff_wr_rd_pntr_rdc ;
  wire \grdc.rd_data_count_i0 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire p_1_in__0;
  wire prog_empty;
  wire prog_full;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_rd_en_pf_q;
  wire ram_wr_en_pf;
  wire ram_wr_en_pf_q;
  wire [9:0]rd_data_count;
  wire rd_en;
  wire [8:0]rd_pntr_ext;
  wire rdp_inst_n_0;
  wire rdp_inst_n_10;
  wire rdp_inst_n_11;
  wire rdp_inst_n_12;
  wire rdp_inst_n_13;
  wire rdp_inst_n_14;
  wire rdp_inst_n_16;
  wire rdp_inst_n_17;
  wire rdp_inst_n_18;
  wire rdp_inst_n_19;
  wire rdp_inst_n_20;
  wire rdp_inst_n_21;
  wire rdp_inst_n_22;
  wire rdp_inst_n_23;
  wire rdp_inst_n_24;
  wire rdp_inst_n_25;
  wire rdp_inst_n_26;
  wire rdp_inst_n_27;
  wire rdp_inst_n_28;
  wire rdp_inst_n_29;
  wire rdp_inst_n_30;
  wire rdp_inst_n_31;
  wire rdp_inst_n_32;
  wire rdp_inst_n_33;
  wire rdp_inst_n_34;
  wire rdp_inst_n_35;
  wire rdp_inst_n_36;
  wire read_only;
  wire read_only_q;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_5;
  wire sleep;
  wire wr_clk;
  wire [9:0]wr_data_count;
  wire wr_en;
  wire [8:0]wr_pntr_ext;
  wire write_only;
  wire write_only_q;
  wire wrp_inst_n_1;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire wrpp1_inst_n_8;
  wire xpm_fifo_rst_inst_n_1;
  wire xpm_fifo_rst_inst_n_4;
  wire xpm_fifo_rst_inst_n_5;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [184:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h3FF0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(xpm_fifo_rst_inst_n_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn \gen_fwft.rdpp1_inst 
       (.DI(\gen_fwft.rdpp1_inst_n_3 ),
        .Q(\gen_fwft.rdpp1_inst_n_0 ),
        .S({\gen_fwft.rdpp1_inst_n_1 ,\gen_fwft.rdpp1_inst_n_2 }),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .\grdc.rd_data_count_i_reg[7] (rd_pntr_ext[1:0]),
        .\grdc.rd_data_count_i_reg[7]_0 (wr_pntr_ext[1:0]),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_27),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_28),
        .Q(full_n),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0] ),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1] ),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2] ),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3] ),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[4]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4] ),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[5]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5] ),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[6]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6] ),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[7]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7] ),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[8]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8] ),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_4),
        .Q(prog_empty),
        .R(1'b0));
  FDRE \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(read_only),
        .Q(read_only_q),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(write_only),
        .Q(write_only_q),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[1]),
        .Q(diff_pntr_pf[0]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[2]),
        .Q(diff_pntr_pf[1]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[3]),
        .Q(diff_pntr_pf[2]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf[3]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[5]),
        .Q(diff_pntr_pf[4]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[6]),
        .Q(diff_pntr_pf[5]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[7]),
        .Q(diff_pntr_pf[6]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[8]),
        .Q(diff_pntr_pf[7]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[9]),
        .Q(diff_pntr_pf[8]),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_5),
        .Q(prog_full),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_rd_en_pf_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_10),
        .Q(ram_rd_en_pf_q),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_wr_en_pf),
        .Q(ram_wr_en_pf_q),
        .R(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "9" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "185" *) 
  (* BYTE_WRITE_WIDTH_B = "185" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "184" *) 
  (* \MEM.ADDRESS_SPACE_END  = "511" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "185" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "94720" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "512" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "185" *) 
  (* P_MIN_WIDTH_DATA_A = "185" *) 
  (* P_MIN_WIDTH_DATA_B = "185" *) 
  (* P_MIN_WIDTH_DATA_ECC = "185" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "185" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_COL_READ_A = "1" *) 
  (* P_NUM_COL_READ_B = "1" *) 
  (* P_NUM_COL_WRITE_A = "1" *) 
  (* P_NUM_COL_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "no" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_READ_A = "9" *) 
  (* P_WIDTH_ADDR_READ_B = "9" *) 
  (* P_WIDTH_ADDR_WRITE_A = "9" *) 
  (* P_WIDTH_ADDR_WRITE_B = "9" *) 
  (* P_WIDTH_COL_WRITE_A = "185" *) 
  (* P_WIDTH_COL_WRITE_B = "185" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "185" *) 
  (* READ_DATA_WIDTH_B = "185" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "185" *) 
  (* WRITE_DATA_WIDTH_B = "185" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "188" *) 
  (* rstb_loop_iter = "188" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2 \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [184:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdp_inst_n_10),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_pf),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  FDRE \grdc.rd_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [0]),
        .Q(rd_data_count[0]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(rd_data_count[1]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(rd_data_count[2]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(rd_data_count[3]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(rd_data_count[4]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(rd_data_count[5]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(rd_data_count[6]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(rd_data_count[7]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [8]),
        .Q(rd_data_count[8]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [9]),
        .Q(rd_data_count[9]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \gwdc.wr_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [0]),
        .Q(wr_data_count[0]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(wr_data_count[1]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(wr_data_count[2]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(wr_data_count[3]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(wr_data_count[4]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(wr_data_count[5]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(wr_data_count[6]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(wr_data_count[7]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [8]),
        .Q(wr_data_count[8]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE \gwdc.wr_data_count_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [9]),
        .Q(wr_data_count[9]),
        .R(xpm_fifo_rst_inst_n_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0 rdp_inst
       (.DI(rdp_inst_n_0),
        .\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_10),
        .Q(rd_pntr_ext),
        .S(rdp_inst_n_11),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[1]_0 (rdp_inst_n_12),
        .\count_value_i_reg[6]_0 ({rdp_inst_n_16,rdp_inst_n_17,rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21}),
        .\count_value_i_reg[6]_1 ({rdp_inst_n_22,rdp_inst_n_23,rdp_inst_n_24,rdp_inst_n_25,rdp_inst_n_26}),
        .\count_value_i_reg[7]_0 ({rdp_inst_n_29,rdp_inst_n_30,rdp_inst_n_31,rdp_inst_n_32,rdp_inst_n_33,rdp_inst_n_34,rdp_inst_n_35}),
        .\count_value_i_reg[8]_0 ({rdp_inst_n_13,rdp_inst_n_14}),
        .\count_value_i_reg[8]_1 (rdp_inst_n_36),
        .\count_value_i_reg[9]_0 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_27),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (rdp_inst_n_28),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8}),
        .\grdc.rd_data_count_i_reg[7] (\gen_fwft.rdpp1_inst_n_0 ),
        .\grdc.rd_data_count_i_reg[9] ({wrp_inst_n_1,wr_pntr_ext}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1 rdpp1_inst
       (.Q(count_value_i__0),
        .\count_value_i_reg[0]_0 (rdp_inst_n_10),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .\count_value_i_reg[1]_1 (xpm_fifo_rst_inst_n_1),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit rst_d1_inst
       (.DI(p_1_in__0),
        .Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0 (rdp_inst_n_10),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1 (\gen_fwft.empty_fwft_i_reg_n_0 ),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg (diff_pntr_pf),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg (rst_d1_inst_n_5),
        .prog_full(prog_full),
        .ram_rd_en_pf_q(ram_rd_en_pf_q),
        .ram_wr_en_pf_q(ram_wr_en_pf_q),
        .read_only(read_only),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .write_only(write_only));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_0 wrp_inst
       (.D(\grdc.diff_wr_rd_pntr_rdc ),
        .DI({rdp_inst_n_12,\gen_fwft.rdpp1_inst_n_3 }),
        .Q({wrp_inst_n_1,wr_pntr_ext}),
        .S({rdp_inst_n_22,rdp_inst_n_23,rdp_inst_n_24,rdp_inst_n_25,rdp_inst_n_26,\gen_fwft.rdpp1_inst_n_1 ,\gen_fwft.rdpp1_inst_n_2 }),
        .\count_value_i_reg[0]_0 (diff_pntr_pe),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.ram_empty_i_i_2_0 (count_value_i__0),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdp_inst_n_10),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] (p_1_in__0),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 ({rdp_inst_n_29,rdp_inst_n_30,rdp_inst_n_31,rdp_inst_n_32,rdp_inst_n_33,rdp_inst_n_34,rdp_inst_n_35,xpm_fifo_rst_inst_n_5}),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8] (rdp_inst_n_36),
        .\grdc.rd_data_count_i_reg[7] (\gen_fwft.rdpp1_inst_n_0 ),
        .\grdc.rd_data_count_i_reg[9] ({rdp_inst_n_13,rdp_inst_n_14}),
        .\grdc.rd_data_count_i_reg[9]_0 (rd_pntr_ext[7:1]),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_1 wrpp1_inst
       (.D(diff_pntr_pf_q0),
        .DI(rdp_inst_n_0),
        .Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8}),
        .S(rdp_inst_n_11),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ({rdp_inst_n_16,rdp_inst_n_17,rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21}),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 (rd_pntr_ext[6:0]),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 (rdp_inst_n_10),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst xpm_fifo_rst_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .SR(\gen_fwft.count_rst ),
        .\count_value_i_reg[1] (curr_fwft_state),
        .\count_value_i_reg[8] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (xpm_fifo_rst_inst_n_5),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] (rdp_inst_n_10),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 (\gen_fwft.empty_fwft_i_reg_n_0 ),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_1 (rd_pntr_ext[0]),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0] }),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg (xpm_fifo_rst_inst_n_4),
        .\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 (\grdc.rd_data_count_i0 ),
        .prog_empty(prog_empty),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .read_only_q(read_only_q),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .write_only_q(write_only_q));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000000000000000" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b0" *) (* EN_PE = "1'b0" *) 
(* EN_PF = "1'b0" *) (* EN_RDC = "1'b0" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* EN_UF = "1'b0" *) (* EN_WACK = "1'b0" *) (* EN_WDC = "1'b0" *) 
(* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "1" *) (* FIFO_MEM_TYPE = "1" *) 
(* FIFO_READ_DEPTH = "128" *) (* FIFO_READ_LATENCY = "1" *) (* FIFO_SIZE = "2944" *) 
(* FIFO_WRITE_DEPTH = "128" *) (* FULL_RESET_VALUE = "0" *) (* FULL_RST_VAL = "1'b0" *) 
(* ORIG_REF_NAME = "xpm_fifo_base" *) (* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "123" *) 
(* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "123" *) 
(* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* RD_DATA_COUNT_WIDTH = "1" *) (* RD_DC_WIDTH_EXT = "8" *) (* RD_LATENCY = "2" *) 
(* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "7" *) (* READ_DATA_WIDTH = "23" *) 
(* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) 
(* WRITE_DATA_WIDTH = "23" *) (* WR_DATA_COUNT_WIDTH = "1" *) (* WR_DC_WIDTH_EXT = "8" *) 
(* WR_DEPTH_LOG = "7" *) (* WR_PNTR_WIDTH = "7" *) (* WR_RD_RATIO = "0" *) 
(* WR_WIDTH_LOG = "5" *) (* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) 
(* invalid = "0" *) (* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) 
(* stage2_valid = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [22:0]din;
  output full;
  output full_n;
  output prog_full;
  output [0:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [22:0]dout;
  output empty;
  output prog_empty;
  output [0:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [6:0]count_value_i__0;
  wire [1:0]curr_fwft_state;
  wire [22:0]din;
  wire [22:4]\^dout ;
  wire empty;
  wire empty_fwft_i0;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_full_i0;
  wire ram_wr_en_i;
  wire rd_clk;
  wire rd_en;
  wire [6:0]rd_pntr_ext;
  wire rdp_inst_n_2;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_en;
  wire [6:0]wr_pntr_ext;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [22:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;
  wire [3:0]\NLW_gen_sdpram.xpm_memory_base_inst_doutb_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[22:4] = \^dout [22:4];
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  assign full = \<const0> ;
  assign full_n = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(empty),
        .O(empty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .Q(empty),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_full_i0),
        .Q(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "7" *) 
  (* ADDR_WIDTH_B = "7" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "23" *) 
  (* BYTE_WRITE_WIDTH_B = "23" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "1" *) 
  (* MEMORY_SIZE = "2944" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "128" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "distributed" *) 
  (* P_MIN_WIDTH_DATA = "23" *) 
  (* P_MIN_WIDTH_DATA_A = "23" *) 
  (* P_MIN_WIDTH_DATA_B = "23" *) 
  (* P_MIN_WIDTH_DATA_ECC = "23" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "23" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_COL_READ_A = "1" *) 
  (* P_NUM_COL_READ_B = "1" *) 
  (* P_NUM_COL_WRITE_A = "1" *) 
  (* P_NUM_COL_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_READ_A = "7" *) 
  (* P_WIDTH_ADDR_READ_B = "7" *) 
  (* P_WIDTH_ADDR_WRITE_A = "7" *) 
  (* P_WIDTH_ADDR_WRITE_B = "7" *) 
  (* P_WIDTH_COL_WRITE_A = "23" *) 
  (* P_WIDTH_COL_WRITE_B = "23" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "23" *) 
  (* READ_DATA_WIDTH_B = "23" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "23" *) 
  (* WRITE_DATA_WIDTH_B = "23" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "1" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "24" *) 
  (* rstb_loop_iter = "24" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__parameterized0 \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(rd_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina({din[22:4],1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [22:0]),
        .doutb({\^dout ,\NLW_gen_sdpram.xpm_memory_base_inst_doutb_UNCONNECTED [3:0]}),
        .ena(ram_wr_en_i),
        .enb(rdp_inst_n_2),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(1'b0),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3 rdp_inst
       (.E(ram_wr_en_i),
        .Q(rd_pntr_ext),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[6]_0 (xpm_fifo_rst_inst_n_1),
        .enb(rdp_inst_n_2),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg (\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 (wr_pntr_ext),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_1 (count_value_i__0),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_full_i0(ram_full_i0),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized4 rdpp1_inst
       (.E(rdp_inst_n_2),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6}),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .\count_value_i_reg[1]_1 (xpm_fifo_rst_inst_n_1),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_9 rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .rd_clk(rd_clk),
        .rst_d1(rst_d1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_10 wrp_inst
       (.E(ram_wr_en_i),
        .Q(wr_pntr_ext),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .enb(rdp_inst_n_2),
        .\gen_pntr_flags_cc.ram_empty_i_reg ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk),
        .rst_d1(rst_d1),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized4_11 wrpp1_inst
       (.E(ram_wr_en_i),
        .Q(count_value_i__0),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .rd_clk(rd_clk),
        .rst_d1(rst_d1),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst_12 xpm_fifo_rst_inst
       (.E(ram_wr_en_i),
        .Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[6] (\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .rd_clk(rd_clk),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
   (rst_d1,
    DI,
    clr_full,
    write_only,
    read_only,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ,
    Q,
    wr_clk,
    wr_en,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0 ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1 ,
    rst,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ,
    ram_wr_en_pf_q,
    ram_rd_en_pf_q,
    prog_full);
  output rst_d1;
  output [0:0]DI;
  output clr_full;
  output write_only;
  output read_only;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ;
  input [0:0]Q;
  input wr_clk;
  input wr_en;
  input \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ;
  input \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0 ;
  input \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1 ;
  input rst;
  input [8:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ;
  input ram_wr_en_pf_q;
  input ram_rd_en_pf_q;
  input prog_full;

  wire [0:0]DI;
  wire [0:0]Q;
  wire clr_full;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0 ;
  wire [8:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ;
  wire prog_full;
  wire prog_full_i216_in;
  wire ram_rd_en_pf_q;
  wire ram_wr_en_pf_q;
  wire read_only;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire write_only;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
  LUT6 #(
    .INIT(64'hFFFFFFFF0010FFFF)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_2 
       (.I0(rst_d1),
        .I1(Q),
        .I2(wr_en),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0 ),
        .I5(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1 ),
        .O(DI));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h44444044)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1 ),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0 ),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ),
        .I3(wr_en),
        .I4(rst_d1),
        .O(read_only));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h04000404)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ),
        .I1(wr_en),
        .I2(rst_d1),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1 ),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0 ),
        .O(write_only));
  LUT5 #(
    .INIT(32'h51550040)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_1 
       (.I0(clr_full),
        .I1(prog_full_i216_in),
        .I2(ram_wr_en_pf_q),
        .I3(ram_rd_en_pf_q),
        .I4(prog_full),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg [8]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg [7]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg [1]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg [2]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0 ),
        .O(prog_full_i216_in));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg [6]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg [5]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg [0]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg [3]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg [4]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_5
   (rst_d1,
    DI,
    clr_full,
    write_only,
    read_only,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ,
    Q,
    wr_clk,
    wr_en,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0 ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1 ,
    rst,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ,
    ram_wr_en_pf_q,
    ram_rd_en_pf_q,
    prog_full);
  output rst_d1;
  output [0:0]DI;
  output clr_full;
  output write_only;
  output read_only;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ;
  input [0:0]Q;
  input wr_clk;
  input wr_en;
  input \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ;
  input \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0 ;
  input \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1 ;
  input rst;
  input [8:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ;
  input ram_wr_en_pf_q;
  input ram_rd_en_pf_q;
  input prog_full;

  wire [0:0]DI;
  wire [0:0]Q;
  wire clr_full;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0 ;
  wire [8:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ;
  wire prog_full;
  wire prog_full_i216_in;
  wire ram_rd_en_pf_q;
  wire ram_wr_en_pf_q;
  wire read_only;
  wire rst;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire write_only;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
  LUT6 #(
    .INIT(64'hFFFFFFFF0010FFFF)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_2 
       (.I0(rst_d1),
        .I1(Q),
        .I2(wr_en),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0 ),
        .I5(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1 ),
        .O(DI));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h44444044)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1 ),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0 ),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ),
        .I3(wr_en),
        .I4(rst_d1),
        .O(read_only));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h04000404)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ),
        .I1(wr_en),
        .I2(rst_d1),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_1 ),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg_0 ),
        .O(write_only));
  LUT5 #(
    .INIT(32'h51550040)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_1 
       (.I0(clr_full),
        .I1(prog_full_i216_in),
        .I2(ram_wr_en_pf_q),
        .I3(ram_rd_en_pf_q),
        .I4(prog_full),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg [8]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg [7]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg [1]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg [2]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0 ),
        .O(prog_full_i216_in));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg [6]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg [5]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg [0]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg [3]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg [4]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit_9
   (rst_d1,
    Q,
    rd_clk);
  output rst_d1;
  input [0:0]Q;
  input rd_clk;

  wire [0:0]Q;
  wire rd_clk;
  wire rst_d1;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
   (ram_wr_en_pf,
    Q,
    SR,
    \gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    rst,
    wr_en,
    \count_value_i_reg[8] ,
    rst_d1,
    ram_empty_i,
    \count_value_i_reg[1] ,
    rd_en,
    write_only_q,
    prog_empty,
    read_only_q,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_1 ,
    wr_clk);
  output ram_wr_en_pf;
  output [0:0]Q;
  output [0:0]SR;
  output [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ;
  output [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input rst;
  input wr_en;
  input \count_value_i_reg[8] ;
  input rst_d1;
  input ram_empty_i;
  input [1:0]\count_value_i_reg[1] ;
  input rd_en;
  input write_only_q;
  input prog_empty;
  input read_only_q;
  input [8:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ;
  input \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ;
  input \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 ;
  input [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_1 ;
  input wr_clk;

  wire [0:0]Q;
  wire [0:0]SR;
  wire [1:0]\count_value_i_reg[1] ;
  wire \count_value_i_reg[8] ;
  wire [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 ;
  wire [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0 ;
  wire [8:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire prog_empty;
  wire prog_empty_i1;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rd_en;
  wire read_only_q;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;
  wire write_only_q;

  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hAAAAAEAE)) 
    \count_value_i[1]_i_1 
       (.I0(Q),
        .I1(ram_empty_i),
        .I2(\count_value_i_reg[1] [1]),
        .I3(rd_en),
        .I4(\count_value_i_reg[1] [0]),
        .O(SR));
  LUT5 #(
    .INIT(32'hFF2F00D0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_10 
       (.I0(ram_wr_en_pf),
        .I1(\count_value_i_reg[8] ),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 ),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_1 ),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT5 #(
    .INIT(32'hFFFFFC4C)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_1 
       (.I0(write_only_q),
        .I1(prog_empty),
        .I2(prog_empty_i1),
        .I3(read_only_q),
        .I4(Q),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg [5]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg [6]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg [8]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg [7]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0 ),
        .O(prog_empty_i1));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg [2]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg [0]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg [1]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg [4]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg [3]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b1)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b1)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b1)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[8] ),
        .I2(Q),
        .I3(rst_d1),
        .O(ram_wr_en_pf));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \grdc.rd_data_count_i[9]_i_1 
       (.I0(Q),
        .I1(\count_value_i_reg[1] [0]),
        .I2(\count_value_i_reg[1] [1]),
        .O(\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst_12
   (E,
    Q,
    wr_en,
    \count_value_i_reg[6] ,
    rst_d1,
    rst,
    rd_clk);
  output [0:0]E;
  output [0:0]Q;
  input wr_en;
  input \count_value_i_reg[6] ;
  input rst_d1;
  input rst;
  input rd_clk;

  wire [0:0]E;
  wire [0:0]Q;
  wire \count_value_i_reg[6] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rd_clk;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b1)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b1)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b1)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[6] ),
        .I2(Q),
        .I3(rst_d1),
        .O(E));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst_8
   (ram_wr_en_pf,
    Q,
    SR,
    \gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    rst,
    wr_en,
    \count_value_i_reg[8] ,
    rst_d1,
    ram_empty_i,
    \count_value_i_reg[1] ,
    rd_en,
    write_only_q,
    prog_empty,
    read_only_q,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_1 ,
    wr_clk);
  output ram_wr_en_pf;
  output [0:0]Q;
  output [0:0]SR;
  output [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ;
  output [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input rst;
  input wr_en;
  input \count_value_i_reg[8] ;
  input rst_d1;
  input ram_empty_i;
  input [1:0]\count_value_i_reg[1] ;
  input rd_en;
  input write_only_q;
  input prog_empty;
  input read_only_q;
  input [8:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ;
  input \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ;
  input \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 ;
  input [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_1 ;
  input wr_clk;

  wire [0:0]Q;
  wire [0:0]SR;
  wire [1:0]\count_value_i_reg[1] ;
  wire \count_value_i_reg[8] ;
  wire [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 ;
  wire [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0 ;
  wire [8:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire prog_empty;
  wire prog_empty_i1;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rd_en;
  wire read_only_q;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;
  wire write_only_q;

  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hAAAAAEAE)) 
    \count_value_i[1]_i_1 
       (.I0(Q),
        .I1(ram_empty_i),
        .I2(\count_value_i_reg[1] [1]),
        .I3(rd_en),
        .I4(\count_value_i_reg[1] [0]),
        .O(SR));
  LUT5 #(
    .INIT(32'hFF2F00D0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_10 
       (.I0(ram_wr_en_pf),
        .I1(\count_value_i_reg[8] ),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_0 ),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_1 ),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT5 #(
    .INIT(32'hFFFFFC4C)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_1 
       (.I0(write_only_q),
        .I1(prog_empty),
        .I2(prog_empty_i1),
        .I3(read_only_q),
        .I4(Q),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg [5]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg [6]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg [8]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg [7]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0 ),
        .O(prog_empty_i1));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg [2]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg [0]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg [1]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg [4]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg [3]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b1)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b1)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b1)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[8] ),
        .I2(Q),
        .I3(rst_d1),
        .O(ram_wr_en_pf));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \grdc.rd_data_count_i[9]_i_1 
       (.I0(Q),
        .I1(\count_value_i_reg[1] [0]),
        .I2(\count_value_i_reg[1] [1]),
        .O(\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* CASCADE_HEIGHT = "0" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_SYNC = "16'b0000000000000000" *) (* EN_SIM_ASSERT_ERR = "warning" *) (* FIFO_MEMORY_TYPE = "distributed" *) 
(* FIFO_READ_LATENCY = "1" *) (* FIFO_WRITE_DEPTH = "128" *) (* FULL_RESET_VALUE = "0" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* P_COMMON_CLOCK = "1" *) 
(* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "1" *) (* P_READ_MODE = "1" *) 
(* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "1" *) (* READ_DATA_WIDTH = "23" *) 
(* READ_MODE = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "23" *) (* WR_DATA_COUNT_WIDTH = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [22:0]din;
  output full;
  output prog_full;
  output [0:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_en;
  output [22:0]dout;
  output empty;
  output prog_empty;
  output [0:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [22:0]din;
  wire [22:4]\^dout ;
  wire empty;
  wire rd_en;
  wire rst;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [3:0]NLW_xpm_fifo_base_inst_dout_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign dout[22:4] = \^dout [22:4];
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000000000000000" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b0" *) 
  (* EN_PF = "1'b0" *) 
  (* EN_RDC = "1'b0" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b0" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "1" *) 
  (* FIFO_MEM_TYPE = "1" *) 
  (* FIFO_READ_DEPTH = "128" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_SIZE = "2944" *) 
  (* FIFO_WRITE_DEPTH = "128" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* FULL_RST_VAL = "1'b0" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "123" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "123" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "1" *) 
  (* RD_DC_WIDTH_EXT = "8" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "7" *) 
  (* READ_DATA_WIDTH = "23" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "23" *) 
  (* WR_DATA_COUNT_WIDTH = "1" *) 
  (* WR_DC_WIDTH_EXT = "8" *) 
  (* WR_DEPTH_LOG = "7" *) 
  (* WR_PNTR_WIDTH = "7" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "5" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base__parameterized0 xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({din[22:4],1'b0,1'b0,1'b0,1'b0}),
        .dout({\^dout ,NLW_xpm_fifo_base_inst_dout_UNCONNECTED[3:0]}),
        .empty(empty),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(wr_clk),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(sleep),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[0]),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
endmodule

(* ADDR_WIDTH_A = "9" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "185" *) (* BYTE_WRITE_WIDTH_B = "185" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "94720" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "0" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "512" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) (* P_MIN_WIDTH_DATA = "185" *) 
(* P_MIN_WIDTH_DATA_A = "185" *) (* P_MIN_WIDTH_DATA_B = "185" *) (* P_MIN_WIDTH_DATA_ECC = "185" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "185" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_COL_READ_A = "1" *) (* P_NUM_COL_READ_B = "1" *) 
(* P_NUM_COL_WRITE_A = "1" *) (* P_NUM_COL_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "no" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) (* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) 
(* P_WIDTH_ADDR_READ_A = "9" *) (* P_WIDTH_ADDR_READ_B = "9" *) (* P_WIDTH_ADDR_WRITE_A = "9" *) 
(* P_WIDTH_ADDR_WRITE_B = "9" *) (* P_WIDTH_COL_WRITE_A = "185" *) (* P_WIDTH_COL_WRITE_B = "185" *) 
(* RAM_DECOMP = "auto" *) (* READ_DATA_WIDTH_A = "185" *) (* READ_DATA_WIDTH_B = "185" *) 
(* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) 
(* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "185" *) (* WRITE_DATA_WIDTH_B = "185" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* rsta_loop_iter = "188" *) (* rstb_loop_iter = "188" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [8:0]addra;
  input [184:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [184:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [184:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [184:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [184:0]dina;
  wire [184:0]doutb;
  wire enb;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_123 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_124 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_125 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_126 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_127 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_128 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_129 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_130 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_131 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_68 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_69 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_70 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_71 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_72 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_73 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_74 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_75 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_76 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_77 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_78 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_79 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_80 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_81 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_82 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_83 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_84 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_85 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_86 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_87 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_88 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_89 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_90 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_91 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_92 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_93 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_94 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_95 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_96 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_97 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_98 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_2_n_99 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTPB_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTPB_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTPB_UNCONNECTED ;
  wire [31:9]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[184] = \<const0> ;
  assign douta[183] = \<const0> ;
  assign douta[182] = \<const0> ;
  assign douta[181] = \<const0> ;
  assign douta[180] = \<const0> ;
  assign douta[179] = \<const0> ;
  assign douta[178] = \<const0> ;
  assign douta[177] = \<const0> ;
  assign douta[176] = \<const0> ;
  assign douta[175] = \<const0> ;
  assign douta[174] = \<const0> ;
  assign douta[173] = \<const0> ;
  assign douta[172] = \<const0> ;
  assign douta[171] = \<const0> ;
  assign douta[170] = \<const0> ;
  assign douta[169] = \<const0> ;
  assign douta[168] = \<const0> ;
  assign douta[167] = \<const0> ;
  assign douta[166] = \<const0> ;
  assign douta[165] = \<const0> ;
  assign douta[164] = \<const0> ;
  assign douta[163] = \<const0> ;
  assign douta[162] = \<const0> ;
  assign douta[161] = \<const0> ;
  assign douta[160] = \<const0> ;
  assign douta[159] = \<const0> ;
  assign douta[158] = \<const0> ;
  assign douta[157] = \<const0> ;
  assign douta[156] = \<const0> ;
  assign douta[155] = \<const0> ;
  assign douta[154] = \<const0> ;
  assign douta[153] = \<const0> ;
  assign douta[152] = \<const0> ;
  assign douta[151] = \<const0> ;
  assign douta[150] = \<const0> ;
  assign douta[149] = \<const0> ;
  assign douta[148] = \<const0> ;
  assign douta[147] = \<const0> ;
  assign douta[146] = \<const0> ;
  assign douta[145] = \<const0> ;
  assign douta[144] = \<const0> ;
  assign douta[143] = \<const0> ;
  assign douta[142] = \<const0> ;
  assign douta[141] = \<const0> ;
  assign douta[140] = \<const0> ;
  assign douta[139] = \<const0> ;
  assign douta[138] = \<const0> ;
  assign douta[137] = \<const0> ;
  assign douta[136] = \<const0> ;
  assign douta[135] = \<const0> ;
  assign douta[134] = \<const0> ;
  assign douta[133] = \<const0> ;
  assign douta[132] = \<const0> ;
  assign douta[131] = \<const0> ;
  assign douta[130] = \<const0> ;
  assign douta[129] = \<const0> ;
  assign douta[128] = \<const0> ;
  assign douta[127] = \<const0> ;
  assign douta[126] = \<const0> ;
  assign douta[125] = \<const0> ;
  assign douta[124] = \<const0> ;
  assign douta[123] = \<const0> ;
  assign douta[122] = \<const0> ;
  assign douta[121] = \<const0> ;
  assign douta[120] = \<const0> ;
  assign douta[119] = \<const0> ;
  assign douta[118] = \<const0> ;
  assign douta[117] = \<const0> ;
  assign douta[116] = \<const0> ;
  assign douta[115] = \<const0> ;
  assign douta[114] = \<const0> ;
  assign douta[113] = \<const0> ;
  assign douta[112] = \<const0> ;
  assign douta[111] = \<const0> ;
  assign douta[110] = \<const0> ;
  assign douta[109] = \<const0> ;
  assign douta[108] = \<const0> ;
  assign douta[107] = \<const0> ;
  assign douta[106] = \<const0> ;
  assign douta[105] = \<const0> ;
  assign douta[104] = \<const0> ;
  assign douta[103] = \<const0> ;
  assign douta[102] = \<const0> ;
  assign douta[101] = \<const0> ;
  assign douta[100] = \<const0> ;
  assign douta[99] = \<const0> ;
  assign douta[98] = \<const0> ;
  assign douta[97] = \<const0> ;
  assign douta[96] = \<const0> ;
  assign douta[95] = \<const0> ;
  assign douta[94] = \<const0> ;
  assign douta[93] = \<const0> ;
  assign douta[92] = \<const0> ;
  assign douta[91] = \<const0> ;
  assign douta[90] = \<const0> ;
  assign douta[89] = \<const0> ;
  assign douta[88] = \<const0> ;
  assign douta[87] = \<const0> ;
  assign douta[86] = \<const0> ;
  assign douta[85] = \<const0> ;
  assign douta[84] = \<const0> ;
  assign douta[83] = \<const0> ;
  assign douta[82] = \<const0> ;
  assign douta[81] = \<const0> ;
  assign douta[80] = \<const0> ;
  assign douta[79] = \<const0> ;
  assign douta[78] = \<const0> ;
  assign douta[77] = \<const0> ;
  assign douta[76] = \<const0> ;
  assign douta[75] = \<const0> ;
  assign douta[74] = \<const0> ;
  assign douta[73] = \<const0> ;
  assign douta[72] = \<const0> ;
  assign douta[71] = \<const0> ;
  assign douta[70] = \<const0> ;
  assign douta[69] = \<const0> ;
  assign douta[68] = \<const0> ;
  assign douta[67] = \<const0> ;
  assign douta[66] = \<const0> ;
  assign douta[65] = \<const0> ;
  assign douta[64] = \<const0> ;
  assign douta[63] = \<const0> ;
  assign douta[62] = \<const0> ;
  assign douta[61] = \<const0> ;
  assign douta[60] = \<const0> ;
  assign douta[59] = \<const0> ;
  assign douta[58] = \<const0> ;
  assign douta[57] = \<const0> ;
  assign douta[56] = \<const0> ;
  assign douta[55] = \<const0> ;
  assign douta[54] = \<const0> ;
  assign douta[53] = \<const0> ;
  assign douta[52] = \<const0> ;
  assign douta[51] = \<const0> ;
  assign douta[50] = \<const0> ;
  assign douta[49] = \<const0> ;
  assign douta[48] = \<const0> ;
  assign douta[47] = \<const0> ;
  assign douta[46] = \<const0> ;
  assign douta[45] = \<const0> ;
  assign douta[44] = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][144] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_99 ),
        .Q(doutb[144]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][145] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_98 ),
        .Q(doutb[145]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][146] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_97 ),
        .Q(doutb[146]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][147] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_96 ),
        .Q(doutb[147]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][148] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_95 ),
        .Q(doutb[148]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][149] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_94 ),
        .Q(doutb[149]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][150] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_93 ),
        .Q(doutb[150]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][151] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_92 ),
        .Q(doutb[151]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][152] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_91 ),
        .Q(doutb[152]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][153] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_90 ),
        .Q(doutb[153]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][154] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_89 ),
        .Q(doutb[154]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][155] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_88 ),
        .Q(doutb[155]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][156] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_87 ),
        .Q(doutb[156]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][157] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_86 ),
        .Q(doutb[157]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][158] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_85 ),
        .Q(doutb[158]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][159] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_84 ),
        .Q(doutb[159]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][160] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_83 ),
        .Q(doutb[160]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][161] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_82 ),
        .Q(doutb[161]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][162] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_81 ),
        .Q(doutb[162]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][163] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_80 ),
        .Q(doutb[163]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][164] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_79 ),
        .Q(doutb[164]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][165] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_78 ),
        .Q(doutb[165]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][166] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_77 ),
        .Q(doutb[166]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][167] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_76 ),
        .Q(doutb[167]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][168] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_75 ),
        .Q(doutb[168]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][169] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_74 ),
        .Q(doutb[169]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][170] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_73 ),
        .Q(doutb[170]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][171] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_72 ),
        .Q(doutb[171]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][172] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_71 ),
        .Q(doutb[172]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][173] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_70 ),
        .Q(doutb[173]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][174] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_69 ),
        .Q(doutb[174]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][175] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_68 ),
        .Q(doutb[175]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][176] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_131 ),
        .Q(doutb[176]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][177] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_130 ),
        .Q(doutb[177]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][178] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_129 ),
        .Q(doutb[178]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][179] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_128 ),
        .Q(doutb[179]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][180] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_127 ),
        .Q(doutb[180]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][181] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_126 ),
        .Q(doutb[181]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][182] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_125 ),
        .Q(doutb[182]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][183] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_124 ),
        .Q(doutb[183]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][184] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_2_n_123 ),
        .Q(doutb[184]),
        .R(rstb));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "94720" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "71" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0 
       (.ADDRARDADDR({addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINA_UNCONNECTED [31:0]),
        .CASDINB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINB_UNCONNECTED [31:0]),
        .CASDINPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINPA_UNCONNECTED [3:0]),
        .CASDINPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINPB_UNCONNECTED [3:0]),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED ),
        .DINADIN(dina[31:0]),
        .DINBDIN(dina[63:32]),
        .DINPADINP(dina[67:64]),
        .DINPBDINP(dina[71:68]),
        .DOUTADOUT(doutb[31:0]),
        .DOUTBDOUT(doutb[63:32]),
        .DOUTPADOUTP(doutb[67:64]),
        .DOUTPBDOUTP(doutb[71:68]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(enb),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(regceb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rstb),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({wea,wea,wea,wea,wea,wea,wea,wea}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTA.DATA_LSB  = "72" *) 
  (* \MEM.PORTA.DATA_MSB  = "143" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTB.DATA_LSB  = "72" *) 
  (* \MEM.PORTB.DATA_MSB  = "143" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "94720" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "143" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \gen_wr_a.gen_word_narrow.mem_reg_1 
       (.ADDRARDADDR({addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINA_UNCONNECTED [31:0]),
        .CASDINB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINB_UNCONNECTED [31:0]),
        .CASDINPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINPA_UNCONNECTED [3:0]),
        .CASDINPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINPB_UNCONNECTED [3:0]),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED ),
        .DINADIN(dina[103:72]),
        .DINBDIN(dina[135:104]),
        .DINPADINP(dina[139:136]),
        .DINPBDINP(dina[143:140]),
        .DOUTADOUT(doutb[103:72]),
        .DOUTBDOUT(doutb[135:104]),
        .DOUTPADOUTP(doutb[139:136]),
        .DOUTPBDOUTP(doutb[143:140]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(enb),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(regceb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rstb),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({wea,wea,wea,wea,wea,wea,wea,wea}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d41" *) 
  (* \MEM.PORTA.DATA_LSB  = "144" *) 
  (* \MEM.PORTA.DATA_MSB  = "184" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d41" *) 
  (* \MEM.PORTB.DATA_LSB  = "144" *) 
  (* \MEM.PORTB.DATA_MSB  = "184" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "94720" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "144" *) 
  (* ram_slice_end = "184" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \gen_wr_a.gen_word_narrow.mem_reg_2 
       (.ADDRARDADDR({addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINA_UNCONNECTED [31:0]),
        .CASDINB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINB_UNCONNECTED [31:0]),
        .CASDINPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINPA_UNCONNECTED [3:0]),
        .CASDINPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINPB_UNCONNECTED [3:0]),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DBITERR_UNCONNECTED ),
        .DINADIN(dina[175:144]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,dina[184:176]}),
        .DINPADINP({1'b1,1'b1,1'b1,1'b1}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT({\gen_wr_a.gen_word_narrow.mem_reg_2_n_68 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_69 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_70 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_71 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_72 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_73 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_74 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_75 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_76 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_77 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_78 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_79 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_80 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_81 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_82 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_83 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_84 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_85 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_86 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_87 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_88 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_89 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_90 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_91 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_92 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_93 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_94 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_95 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_96 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_97 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_98 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_99 }),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOUTBDOUT_UNCONNECTED [31:9],\gen_wr_a.gen_word_narrow.mem_reg_2_n_123 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_124 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_125 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_126 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_127 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_128 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_129 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_130 ,\gen_wr_a.gen_word_narrow.mem_reg_2_n_131 }),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(enb),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({wea,wea,wea,wea,wea,wea,wea,wea}));
endmodule

(* ADDR_WIDTH_A = "9" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "185" *) (* BYTE_WRITE_WIDTH_B = "185" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "94720" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "0" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "512" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) 
(* P_MIN_WIDTH_DATA = "185" *) (* P_MIN_WIDTH_DATA_A = "185" *) (* P_MIN_WIDTH_DATA_B = "185" *) 
(* P_MIN_WIDTH_DATA_ECC = "185" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "185" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_COL_READ_A = "1" *) 
(* P_NUM_COL_READ_B = "1" *) (* P_NUM_COL_WRITE_A = "1" *) (* P_NUM_COL_WRITE_B = "1" *) 
(* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) 
(* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "no" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) (* P_WIDTH_ADDR_READ_A = "9" *) (* P_WIDTH_ADDR_READ_B = "9" *) 
(* P_WIDTH_ADDR_WRITE_A = "9" *) (* P_WIDTH_ADDR_WRITE_B = "9" *) (* P_WIDTH_COL_WRITE_A = "185" *) 
(* P_WIDTH_COL_WRITE_B = "185" *) (* RAM_DECOMP = "auto" *) (* READ_DATA_WIDTH_A = "185" *) 
(* READ_DATA_WIDTH_B = "185" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "185" *) (* WRITE_DATA_WIDTH_B = "185" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "188" *) 
(* rstb_loop_iter = "188" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__2
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [8:0]addra;
  input [184:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [184:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [184:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [184:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire [184:0]dina;
  wire [184:0]doutb;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTPB_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTPB_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_2_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTPB_UNCONNECTED ;
  wire [31:9]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[184] = \<const0> ;
  assign douta[183] = \<const0> ;
  assign douta[182] = \<const0> ;
  assign douta[181] = \<const0> ;
  assign douta[180] = \<const0> ;
  assign douta[179] = \<const0> ;
  assign douta[178] = \<const0> ;
  assign douta[177] = \<const0> ;
  assign douta[176] = \<const0> ;
  assign douta[175] = \<const0> ;
  assign douta[174] = \<const0> ;
  assign douta[173] = \<const0> ;
  assign douta[172] = \<const0> ;
  assign douta[171] = \<const0> ;
  assign douta[170] = \<const0> ;
  assign douta[169] = \<const0> ;
  assign douta[168] = \<const0> ;
  assign douta[167] = \<const0> ;
  assign douta[166] = \<const0> ;
  assign douta[165] = \<const0> ;
  assign douta[164] = \<const0> ;
  assign douta[163] = \<const0> ;
  assign douta[162] = \<const0> ;
  assign douta[161] = \<const0> ;
  assign douta[160] = \<const0> ;
  assign douta[159] = \<const0> ;
  assign douta[158] = \<const0> ;
  assign douta[157] = \<const0> ;
  assign douta[156] = \<const0> ;
  assign douta[155] = \<const0> ;
  assign douta[154] = \<const0> ;
  assign douta[153] = \<const0> ;
  assign douta[152] = \<const0> ;
  assign douta[151] = \<const0> ;
  assign douta[150] = \<const0> ;
  assign douta[149] = \<const0> ;
  assign douta[148] = \<const0> ;
  assign douta[147] = \<const0> ;
  assign douta[146] = \<const0> ;
  assign douta[145] = \<const0> ;
  assign douta[144] = \<const0> ;
  assign douta[143] = \<const0> ;
  assign douta[142] = \<const0> ;
  assign douta[141] = \<const0> ;
  assign douta[140] = \<const0> ;
  assign douta[139] = \<const0> ;
  assign douta[138] = \<const0> ;
  assign douta[137] = \<const0> ;
  assign douta[136] = \<const0> ;
  assign douta[135] = \<const0> ;
  assign douta[134] = \<const0> ;
  assign douta[133] = \<const0> ;
  assign douta[132] = \<const0> ;
  assign douta[131] = \<const0> ;
  assign douta[130] = \<const0> ;
  assign douta[129] = \<const0> ;
  assign douta[128] = \<const0> ;
  assign douta[127] = \<const0> ;
  assign douta[126] = \<const0> ;
  assign douta[125] = \<const0> ;
  assign douta[124] = \<const0> ;
  assign douta[123] = \<const0> ;
  assign douta[122] = \<const0> ;
  assign douta[121] = \<const0> ;
  assign douta[120] = \<const0> ;
  assign douta[119] = \<const0> ;
  assign douta[118] = \<const0> ;
  assign douta[117] = \<const0> ;
  assign douta[116] = \<const0> ;
  assign douta[115] = \<const0> ;
  assign douta[114] = \<const0> ;
  assign douta[113] = \<const0> ;
  assign douta[112] = \<const0> ;
  assign douta[111] = \<const0> ;
  assign douta[110] = \<const0> ;
  assign douta[109] = \<const0> ;
  assign douta[108] = \<const0> ;
  assign douta[107] = \<const0> ;
  assign douta[106] = \<const0> ;
  assign douta[105] = \<const0> ;
  assign douta[104] = \<const0> ;
  assign douta[103] = \<const0> ;
  assign douta[102] = \<const0> ;
  assign douta[101] = \<const0> ;
  assign douta[100] = \<const0> ;
  assign douta[99] = \<const0> ;
  assign douta[98] = \<const0> ;
  assign douta[97] = \<const0> ;
  assign douta[96] = \<const0> ;
  assign douta[95] = \<const0> ;
  assign douta[94] = \<const0> ;
  assign douta[93] = \<const0> ;
  assign douta[92] = \<const0> ;
  assign douta[91] = \<const0> ;
  assign douta[90] = \<const0> ;
  assign douta[89] = \<const0> ;
  assign douta[88] = \<const0> ;
  assign douta[87] = \<const0> ;
  assign douta[86] = \<const0> ;
  assign douta[85] = \<const0> ;
  assign douta[84] = \<const0> ;
  assign douta[83] = \<const0> ;
  assign douta[82] = \<const0> ;
  assign douta[81] = \<const0> ;
  assign douta[80] = \<const0> ;
  assign douta[79] = \<const0> ;
  assign douta[78] = \<const0> ;
  assign douta[77] = \<const0> ;
  assign douta[76] = \<const0> ;
  assign douta[75] = \<const0> ;
  assign douta[74] = \<const0> ;
  assign douta[73] = \<const0> ;
  assign douta[72] = \<const0> ;
  assign douta[71] = \<const0> ;
  assign douta[70] = \<const0> ;
  assign douta[69] = \<const0> ;
  assign douta[68] = \<const0> ;
  assign douta[67] = \<const0> ;
  assign douta[66] = \<const0> ;
  assign douta[65] = \<const0> ;
  assign douta[64] = \<const0> ;
  assign douta[63] = \<const0> ;
  assign douta[62] = \<const0> ;
  assign douta[61] = \<const0> ;
  assign douta[60] = \<const0> ;
  assign douta[59] = \<const0> ;
  assign douta[58] = \<const0> ;
  assign douta[57] = \<const0> ;
  assign douta[56] = \<const0> ;
  assign douta[55] = \<const0> ;
  assign douta[54] = \<const0> ;
  assign douta[53] = \<const0> ;
  assign douta[52] = \<const0> ;
  assign douta[51] = \<const0> ;
  assign douta[50] = \<const0> ;
  assign douta[49] = \<const0> ;
  assign douta[48] = \<const0> ;
  assign douta[47] = \<const0> ;
  assign douta[46] = \<const0> ;
  assign douta[45] = \<const0> ;
  assign douta[44] = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "94720" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "71" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0 
       (.ADDRARDADDR({addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINA_UNCONNECTED [31:0]),
        .CASDINB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINB_UNCONNECTED [31:0]),
        .CASDINPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINPA_UNCONNECTED [3:0]),
        .CASDINPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINPB_UNCONNECTED [3:0]),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED ),
        .DINADIN(dina[31:0]),
        .DINBDIN(dina[63:32]),
        .DINPADINP(dina[67:64]),
        .DINPBDINP(dina[71:68]),
        .DOUTADOUT(doutb[31:0]),
        .DOUTBDOUT(doutb[63:32]),
        .DOUTPADOUTP(doutb[67:64]),
        .DOUTPBDOUTP(doutb[71:68]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(enb),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(regceb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rstb),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({wea,wea,wea,wea,wea,wea,wea,wea}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTA.DATA_LSB  = "72" *) 
  (* \MEM.PORTA.DATA_MSB  = "143" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTB.DATA_LSB  = "72" *) 
  (* \MEM.PORTB.DATA_MSB  = "143" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "94720" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "143" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \gen_wr_a.gen_word_narrow.mem_reg_1 
       (.ADDRARDADDR({addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINA_UNCONNECTED [31:0]),
        .CASDINB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINB_UNCONNECTED [31:0]),
        .CASDINPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINPA_UNCONNECTED [3:0]),
        .CASDINPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINPB_UNCONNECTED [3:0]),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED ),
        .DINADIN(dina[103:72]),
        .DINBDIN(dina[135:104]),
        .DINPADINP(dina[139:136]),
        .DINPBDINP(dina[143:140]),
        .DOUTADOUT(doutb[103:72]),
        .DOUTBDOUT(doutb[135:104]),
        .DOUTPADOUTP(doutb[139:136]),
        .DOUTPBDOUTP(doutb[143:140]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(enb),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(regceb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rstb),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({wea,wea,wea,wea,wea,wea,wea,wea}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d41" *) 
  (* \MEM.PORTA.DATA_LSB  = "144" *) 
  (* \MEM.PORTA.DATA_MSB  = "184" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d41" *) 
  (* \MEM.PORTB.DATA_LSB  = "144" *) 
  (* \MEM.PORTB.DATA_MSB  = "184" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "94720" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "144" *) 
  (* ram_slice_end = "184" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \gen_wr_a.gen_word_narrow.mem_reg_2 
       (.ADDRARDADDR({addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINA_UNCONNECTED [31:0]),
        .CASDINB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINB_UNCONNECTED [31:0]),
        .CASDINPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINPA_UNCONNECTED [3:0]),
        .CASDINPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINPB_UNCONNECTED [3:0]),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DBITERR_UNCONNECTED ),
        .DINADIN(dina[175:144]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,dina[184:176]}),
        .DINPADINP({1'b1,1'b1,1'b1,1'b1}),
        .DINPBDINP({1'b1,1'b1,1'b1,1'b1}),
        .DOUTADOUT(doutb[175:144]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOUTBDOUT_UNCONNECTED [31:9],doutb[184:176]}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(enb),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(regceb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rstb),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({wea,wea,wea,wea,wea,wea,wea,wea}));
endmodule

(* ADDR_WIDTH_A = "7" *) (* ADDR_WIDTH_B = "7" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "23" *) (* BYTE_WRITE_WIDTH_B = "23" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "1" *) (* MEMORY_SIZE = "2944" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "0" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "128" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "distributed" *) 
(* P_MIN_WIDTH_DATA = "23" *) (* P_MIN_WIDTH_DATA_A = "23" *) (* P_MIN_WIDTH_DATA_B = "23" *) 
(* P_MIN_WIDTH_DATA_ECC = "23" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "23" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_COL_READ_A = "1" *) 
(* P_NUM_COL_READ_B = "1" *) (* P_NUM_COL_WRITE_A = "1" *) (* P_NUM_COL_WRITE_B = "1" *) 
(* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) 
(* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) (* P_WIDTH_ADDR_READ_A = "7" *) (* P_WIDTH_ADDR_READ_B = "7" *) 
(* P_WIDTH_ADDR_WRITE_A = "7" *) (* P_WIDTH_ADDR_WRITE_B = "7" *) (* P_WIDTH_COL_WRITE_A = "23" *) 
(* P_WIDTH_COL_WRITE_B = "23" *) (* RAM_DECOMP = "auto" *) (* READ_DATA_WIDTH_A = "23" *) 
(* READ_DATA_WIDTH_B = "23" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "23" *) (* WRITE_DATA_WIDTH_B = "23" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "1" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "24" *) 
(* rstb_loop_iter = "24" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base__parameterized0
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [6:0]addra;
  input [22:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [22:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [6:0]addrb;
  input [22:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [22:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [6:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire [22:0]dina;
  wire [22:4]\^doutb ;
  wire ena;
  wire enb;
  wire [22:4]\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_10_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_11_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_12_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_13_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_14_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_15_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_16_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_17_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_18_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_19_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_1_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_20_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_21_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_22_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_23_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_24_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_25_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_26_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_27_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_28_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_29_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_2_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_30_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_31_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_32_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_33_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_34_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_35_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_36_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_37_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_38_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_39_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_4_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_5_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_6_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_7_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_8_reg_n_0 ;
  wire \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_9_reg_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_6 ;
  wire regceb;
  wire rstb;
  wire select_piped_1_reg_pipe_3_reg_n_0;
  wire sleep;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_DOH_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_DOF_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_DOG_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_DOH_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_DOH_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_DOH_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_DOF_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_DOG_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_DOH_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_DOH_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign doutb[22:4] = \^doutb [22:4];
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][10]_i_1 
       (.I0(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_27_reg_n_0 ),
        .I1(select_piped_1_reg_pipe_3_reg_n_0),
        .I2(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_26_reg_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [10]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][11]_i_1 
       (.I0(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_25_reg_n_0 ),
        .I1(select_piped_1_reg_pipe_3_reg_n_0),
        .I2(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_24_reg_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][12]_i_1 
       (.I0(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_23_reg_n_0 ),
        .I1(select_piped_1_reg_pipe_3_reg_n_0),
        .I2(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_22_reg_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [12]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][13]_i_1 
       (.I0(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_21_reg_n_0 ),
        .I1(select_piped_1_reg_pipe_3_reg_n_0),
        .I2(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_20_reg_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [13]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][14]_i_1 
       (.I0(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_19_reg_n_0 ),
        .I1(select_piped_1_reg_pipe_3_reg_n_0),
        .I2(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_18_reg_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [14]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][15]_i_1 
       (.I0(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_17_reg_n_0 ),
        .I1(select_piped_1_reg_pipe_3_reg_n_0),
        .I2(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_16_reg_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][16]_i_1 
       (.I0(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_15_reg_n_0 ),
        .I1(select_piped_1_reg_pipe_3_reg_n_0),
        .I2(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_14_reg_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [16]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][17]_i_1 
       (.I0(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_13_reg_n_0 ),
        .I1(select_piped_1_reg_pipe_3_reg_n_0),
        .I2(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_12_reg_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [17]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][18]_i_1 
       (.I0(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_11_reg_n_0 ),
        .I1(select_piped_1_reg_pipe_3_reg_n_0),
        .I2(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_10_reg_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [18]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][19]_i_1 
       (.I0(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_9_reg_n_0 ),
        .I1(select_piped_1_reg_pipe_3_reg_n_0),
        .I2(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_8_reg_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [19]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][20]_i_1 
       (.I0(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_7_reg_n_0 ),
        .I1(select_piped_1_reg_pipe_3_reg_n_0),
        .I2(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_6_reg_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [20]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][21]_i_1 
       (.I0(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_5_reg_n_0 ),
        .I1(select_piped_1_reg_pipe_3_reg_n_0),
        .I2(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_4_reg_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][22]_i_1 
       (.I0(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_2_reg_n_0 ),
        .I1(select_piped_1_reg_pipe_3_reg_n_0),
        .I2(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_1_reg_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [22]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][4]_i_1 
       (.I0(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_39_reg_n_0 ),
        .I1(select_piped_1_reg_pipe_3_reg_n_0),
        .I2(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_38_reg_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][5]_i_1 
       (.I0(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_37_reg_n_0 ),
        .I1(select_piped_1_reg_pipe_3_reg_n_0),
        .I2(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_36_reg_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][6]_i_1 
       (.I0(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_35_reg_n_0 ),
        .I1(select_piped_1_reg_pipe_3_reg_n_0),
        .I2(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_34_reg_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][7]_i_1 
       (.I0(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_33_reg_n_0 ),
        .I1(select_piped_1_reg_pipe_3_reg_n_0),
        .I2(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_32_reg_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][8]_i_1 
       (.I0(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_31_reg_n_0 ),
        .I1(select_piped_1_reg_pipe_3_reg_n_0),
        .I2(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_30_reg_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe[0][9]_i_1 
       (.I0(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_29_reg_n_0 ),
        .I1(select_piped_1_reg_pipe_3_reg_n_0),
        .I2(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_28_reg_n_0 ),
        .O(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [9]));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][10] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [10]),
        .Q(\^doutb [10]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][11] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [11]),
        .Q(\^doutb [11]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][12] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [12]),
        .Q(\^doutb [12]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][13] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [13]),
        .Q(\^doutb [13]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][14] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [14]),
        .Q(\^doutb [14]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][15] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [15]),
        .Q(\^doutb [15]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][16] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [16]),
        .Q(\^doutb [16]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][17] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [17]),
        .Q(\^doutb [17]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][18] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [18]),
        .Q(\^doutb [18]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][19] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [19]),
        .Q(\^doutb [19]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][20] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [20]),
        .Q(\^doutb [20]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][21] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [21]),
        .Q(\^doutb [21]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][22] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [22]),
        .Q(\^doutb [22]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [4]),
        .Q(\^doutb [4]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [5]),
        .Q(\^doutb [5]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [6]),
        .Q(\^doutb [6]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [7]),
        .Q(\^doutb [7]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][8] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [8]),
        .Q(\^doutb [8]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][9] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg [9]),
        .Q(\^doutb [9]),
        .R(rstb));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_10_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_4 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_10_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_11_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_4 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_11_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_12_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_3 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_12_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_13_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_3 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_13_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_14_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_2 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_14_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_15_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_2 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_15_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_16_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_1 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_16_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_17_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_1 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_17_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_18_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_0 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_18_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_19_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_0 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_19_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_1_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_n_1 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_1_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_20_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_6 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_20_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_21_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_6 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_21_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_22_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_5 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_22_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_23_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_5 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_23_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_24_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_4 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_24_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_25_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_4 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_25_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_26_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_3 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_26_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_27_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_3 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_27_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_28_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_2 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_28_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_29_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_2 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_29_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_2_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_n_1 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_2_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_30_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_1 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_30_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_31_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_1 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_31_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_32_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_0 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_32_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_33_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_0 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_33_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_34_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_n_4 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_34_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_35_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_n_4 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_35_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_36_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_n_3 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_36_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_37_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_n_3 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_37_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_38_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_n_2 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_38_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_39_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_n_2 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_39_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_4_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_n_0 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_4_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_5_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_n_0 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_5_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_6_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_6 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_6_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_7_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_6 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_7_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_8_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_5 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_8_reg_n_0 ),
        .R(1'b0));
  FDRE \gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_9_reg 
       (.C(clka),
        .CE(enb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_5 ),
        .Q(\gen_rd_b.gen_rd_b_synth_template.gen_rf_narrow_pipe.doutb_reg_reg_pipe_9_reg_n_0 ),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2944" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "20" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addrb[5:0]),
        .ADDRE(addrb[5:0]),
        .ADDRF(addrb[5:0]),
        .ADDRG(addrb[5:0]),
        .ADDRH(addra[5:0]),
        .DIA(dina[14]),
        .DIB(dina[15]),
        .DIC(dina[16]),
        .DID(dina[17]),
        .DIE(dina[18]),
        .DIF(dina[19]),
        .DIG(dina[20]),
        .DIH(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_2 ),
        .DOD(\gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_3 ),
        .DOE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_4 ),
        .DOF(\gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_5 ),
        .DOG(\gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_n_6 ),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_14_20_DOH_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2944" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "22" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addrb[5:0]),
        .ADDRE(addrb[5:0]),
        .ADDRF(addrb[5:0]),
        .ADDRG(addrb[5:0]),
        .ADDRH(addra[5:0]),
        .DIA(dina[21]),
        .DIB(dina[22]),
        .DIC(dina[4]),
        .DID(dina[5]),
        .DIE(dina[6]),
        .DIF(1'b0),
        .DIG(1'b0),
        .DIH(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_n_2 ),
        .DOD(\gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_n_3 ),
        .DOE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_n_4 ),
        .DOF(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_DOF_UNCONNECTED ),
        .DOG(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_DOG_UNCONNECTED ),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_21_22_DOH_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2944" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "13" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addrb[5:0]),
        .ADDRE(addrb[5:0]),
        .ADDRF(addrb[5:0]),
        .ADDRG(addrb[5:0]),
        .ADDRH(addra[5:0]),
        .DIA(dina[7]),
        .DIB(dina[8]),
        .DIC(dina[9]),
        .DID(dina[10]),
        .DIE(dina[11]),
        .DIF(dina[12]),
        .DIG(dina[13]),
        .DIH(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_2 ),
        .DOD(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_3 ),
        .DOE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_4 ),
        .DOF(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_5 ),
        .DOG(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_n_6 ),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_DOH_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_i_1 
       (.I0(ena),
        .I1(addra[6]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_0_63_7_13_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2944" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "20" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addrb[5:0]),
        .ADDRE(addrb[5:0]),
        .ADDRF(addrb[5:0]),
        .ADDRG(addrb[5:0]),
        .ADDRH(addra[5:0]),
        .DIA(dina[14]),
        .DIB(dina[15]),
        .DIC(dina[16]),
        .DID(dina[17]),
        .DIE(dina[18]),
        .DIF(dina[19]),
        .DIG(dina[20]),
        .DIH(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_2 ),
        .DOD(\gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_3 ),
        .DOE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_4 ),
        .DOF(\gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_5 ),
        .DOG(\gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_n_6 ),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_14_20_DOH_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2944" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "22" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addrb[5:0]),
        .ADDRE(addrb[5:0]),
        .ADDRF(addrb[5:0]),
        .ADDRG(addrb[5:0]),
        .ADDRH(addra[5:0]),
        .DIA(dina[21]),
        .DIB(dina[22]),
        .DIC(dina[4]),
        .DID(dina[5]),
        .DIE(dina[6]),
        .DIF(1'b0),
        .DIG(1'b0),
        .DIH(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_n_2 ),
        .DOD(\gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_n_3 ),
        .DOE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_n_4 ),
        .DOF(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_DOF_UNCONNECTED ),
        .DOG(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_DOG_UNCONNECTED ),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_21_22_DOH_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2944" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "13" *) 
  RAM64M8 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13 
       (.ADDRA(addrb[5:0]),
        .ADDRB(addrb[5:0]),
        .ADDRC(addrb[5:0]),
        .ADDRD(addrb[5:0]),
        .ADDRE(addrb[5:0]),
        .ADDRF(addrb[5:0]),
        .ADDRG(addrb[5:0]),
        .ADDRH(addra[5:0]),
        .DIA(dina[7]),
        .DIB(dina[8]),
        .DIC(dina[9]),
        .DID(dina[10]),
        .DIE(dina[11]),
        .DIF(dina[12]),
        .DIG(dina[13]),
        .DIH(1'b0),
        .DOA(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_0 ),
        .DOB(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_1 ),
        .DOC(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_2 ),
        .DOD(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_3 ),
        .DOE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_4 ),
        .DOF(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_5 ),
        .DOG(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_n_6 ),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_DOH_UNCONNECTED ),
        .WCLK(clka),
        .WE(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_i_1 
       (.I0(ena),
        .I1(addra[6]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_64_127_7_13_i_1_n_0 ));
  FDRE select_piped_1_reg_pipe_3_reg
       (.C(clka),
        .CE(enb),
        .D(addrb[6]),
        .Q(select_piped_1_reg_pipe_3_reg_n_0),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
