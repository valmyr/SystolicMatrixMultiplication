//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Fri Mar 20 15:36:45 2026
//Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
//Command     : generate_target Systolic_DMA_AXI_Stream.bd
//Design      : Systolic_DMA_AXI_Stream
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SystolicCore_DMA_imp_RLEDNC
   (M_AXIS1_tdata,
    M_AXIS1_tlast,
    M_AXIS1_tready,
    M_AXIS1_tvalid,
    M_AXI_MM2S_araddr,
    M_AXI_MM2S_arburst,
    M_AXI_MM2S_arcache,
    M_AXI_MM2S_arlen,
    M_AXI_MM2S_arprot,
    M_AXI_MM2S_arready,
    M_AXI_MM2S_arsize,
    M_AXI_MM2S_arvalid,
    M_AXI_MM2S_rdata,
    M_AXI_MM2S_rlast,
    M_AXI_MM2S_rready,
    M_AXI_MM2S_rresp,
    M_AXI_MM2S_rvalid,
    M_AXI_S2MM_awaddr,
    M_AXI_S2MM_awburst,
    M_AXI_S2MM_awcache,
    M_AXI_S2MM_awlen,
    M_AXI_S2MM_awprot,
    M_AXI_S2MM_awready,
    M_AXI_S2MM_awsize,
    M_AXI_S2MM_awvalid,
    M_AXI_S2MM_bready,
    M_AXI_S2MM_bresp,
    M_AXI_S2MM_bvalid,
    M_AXI_S2MM_wdata,
    M_AXI_S2MM_wlast,
    M_AXI_S2MM_wready,
    M_AXI_S2MM_wstrb,
    M_AXI_S2MM_wvalid,
    S_AXI_LITE_araddr,
    S_AXI_LITE_arready,
    S_AXI_LITE_arvalid,
    S_AXI_LITE_awaddr,
    S_AXI_LITE_awready,
    S_AXI_LITE_awvalid,
    S_AXI_LITE_bready,
    S_AXI_LITE_bresp,
    S_AXI_LITE_bvalid,
    S_AXI_LITE_rdata,
    S_AXI_LITE_rready,
    S_AXI_LITE_rresp,
    S_AXI_LITE_rvalid,
    S_AXI_LITE_wdata,
    S_AXI_LITE_wready,
    S_AXI_LITE_wvalid,
    m_axi_mm2s_aclk,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tready,
    m_axis_tvalid,
    resetn,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tready,
    s_axis_tvalid);
  output [63:0]M_AXIS1_tdata;
  output M_AXIS1_tlast;
  output M_AXIS1_tready;
  output M_AXIS1_tvalid;
  output [31:0]M_AXI_MM2S_araddr;
  output [1:0]M_AXI_MM2S_arburst;
  output [3:0]M_AXI_MM2S_arcache;
  output [7:0]M_AXI_MM2S_arlen;
  output [2:0]M_AXI_MM2S_arprot;
  input M_AXI_MM2S_arready;
  output [2:0]M_AXI_MM2S_arsize;
  output M_AXI_MM2S_arvalid;
  input [31:0]M_AXI_MM2S_rdata;
  input M_AXI_MM2S_rlast;
  output M_AXI_MM2S_rready;
  input [1:0]M_AXI_MM2S_rresp;
  input M_AXI_MM2S_rvalid;
  output [31:0]M_AXI_S2MM_awaddr;
  output [1:0]M_AXI_S2MM_awburst;
  output [3:0]M_AXI_S2MM_awcache;
  output [7:0]M_AXI_S2MM_awlen;
  output [2:0]M_AXI_S2MM_awprot;
  input M_AXI_S2MM_awready;
  output [2:0]M_AXI_S2MM_awsize;
  output M_AXI_S2MM_awvalid;
  output M_AXI_S2MM_bready;
  input [1:0]M_AXI_S2MM_bresp;
  input M_AXI_S2MM_bvalid;
  output [63:0]M_AXI_S2MM_wdata;
  output M_AXI_S2MM_wlast;
  input M_AXI_S2MM_wready;
  output [7:0]M_AXI_S2MM_wstrb;
  output M_AXI_S2MM_wvalid;
  input [9:0]S_AXI_LITE_araddr;
  output S_AXI_LITE_arready;
  input S_AXI_LITE_arvalid;
  input [9:0]S_AXI_LITE_awaddr;
  output S_AXI_LITE_awready;
  input S_AXI_LITE_awvalid;
  input S_AXI_LITE_bready;
  output [1:0]S_AXI_LITE_bresp;
  output S_AXI_LITE_bvalid;
  output [31:0]S_AXI_LITE_rdata;
  input S_AXI_LITE_rready;
  output [1:0]S_AXI_LITE_rresp;
  output S_AXI_LITE_rvalid;
  input [31:0]S_AXI_LITE_wdata;
  output S_AXI_LITE_wready;
  input S_AXI_LITE_wvalid;
  input m_axi_mm2s_aclk;
  output [63:0]m_axis_tdata;
  output m_axis_tlast;
  output m_axis_tready;
  output m_axis_tvalid;
  input resetn;
  output [31:0]s_axis_tdata;
  output s_axis_tlast;
  output s_axis_tready;
  output s_axis_tvalid;

  (* DEBUG = "true" *) wire [63:0]AXI_Stream_Systolic_0_m_axis_TDATA;
  (* DEBUG = "true" *) wire AXI_Stream_Systolic_0_m_axis_TLAST;
  (* DEBUG = "true" *) wire AXI_Stream_Systolic_0_m_axis_TREADY;
  (* DEBUG = "true" *) wire AXI_Stream_Systolic_0_m_axis_TVALID;
  wire [31:0]M_AXI_MM2S_araddr;
  wire [1:0]M_AXI_MM2S_arburst;
  wire [3:0]M_AXI_MM2S_arcache;
  wire [7:0]M_AXI_MM2S_arlen;
  wire [2:0]M_AXI_MM2S_arprot;
  wire M_AXI_MM2S_arready;
  wire [2:0]M_AXI_MM2S_arsize;
  wire M_AXI_MM2S_arvalid;
  wire [31:0]M_AXI_MM2S_rdata;
  wire M_AXI_MM2S_rlast;
  wire M_AXI_MM2S_rready;
  wire [1:0]M_AXI_MM2S_rresp;
  wire M_AXI_MM2S_rvalid;
  wire [31:0]M_AXI_S2MM_awaddr;
  wire [1:0]M_AXI_S2MM_awburst;
  wire [3:0]M_AXI_S2MM_awcache;
  wire [7:0]M_AXI_S2MM_awlen;
  wire [2:0]M_AXI_S2MM_awprot;
  wire M_AXI_S2MM_awready;
  wire [2:0]M_AXI_S2MM_awsize;
  wire M_AXI_S2MM_awvalid;
  wire M_AXI_S2MM_bready;
  wire [1:0]M_AXI_S2MM_bresp;
  wire M_AXI_S2MM_bvalid;
  wire [63:0]M_AXI_S2MM_wdata;
  wire M_AXI_S2MM_wlast;
  wire M_AXI_S2MM_wready;
  wire [7:0]M_AXI_S2MM_wstrb;
  wire M_AXI_S2MM_wvalid;
  wire [9:0]S_AXI_LITE_araddr;
  wire S_AXI_LITE_arready;
  wire S_AXI_LITE_arvalid;
  wire [9:0]S_AXI_LITE_awaddr;
  wire S_AXI_LITE_awready;
  wire S_AXI_LITE_awvalid;
  wire S_AXI_LITE_bready;
  wire [1:0]S_AXI_LITE_bresp;
  wire S_AXI_LITE_bvalid;
  wire [31:0]S_AXI_LITE_rdata;
  wire S_AXI_LITE_rready;
  wire [1:0]S_AXI_LITE_rresp;
  wire S_AXI_LITE_rvalid;
  wire [31:0]S_AXI_LITE_wdata;
  wire S_AXI_LITE_wready;
  wire S_AXI_LITE_wvalid;
  wire [31:0]axi_dma_0_M_AXIS_MM2S_TDATA;
  wire axi_dma_0_M_AXIS_MM2S_TLAST;
  wire axi_dma_0_M_AXIS_MM2S_TREADY;
  wire axi_dma_0_M_AXIS_MM2S_TVALID;
  (* DEBUG = "true" *) wire [63:0]axis_data_fifo_0_M_AXIS1_TDATA;
  (* DEBUG = "true" *) wire axis_data_fifo_0_M_AXIS1_TLAST;
  (* DEBUG = "true" *) wire axis_data_fifo_0_M_AXIS1_TREADY;
  (* DEBUG = "true" *) wire axis_data_fifo_0_M_AXIS1_TVALID;
  wire m_axi_mm2s_aclk;
  wire resetn;
  (* DEBUG = "true" *) wire [31:0]row_major_axi_convert_0_m_axis_TDATA;
  (* DEBUG = "true" *) wire row_major_axi_convert_0_m_axis_TLAST;
  (* DEBUG = "true" *) wire row_major_axi_convert_0_m_axis_TREADY;
  (* DEBUG = "true" *) wire row_major_axi_convert_0_m_axis_TVALID;

  assign M_AXIS1_tdata[63:0] = axis_data_fifo_0_M_AXIS1_TDATA;
  assign M_AXIS1_tlast = axis_data_fifo_0_M_AXIS1_TLAST;
  assign M_AXIS1_tready = axis_data_fifo_0_M_AXIS1_TREADY;
  assign M_AXIS1_tvalid = axis_data_fifo_0_M_AXIS1_TVALID;
  assign m_axis_tdata[63:0] = AXI_Stream_Systolic_0_m_axis_TDATA;
  assign m_axis_tlast = AXI_Stream_Systolic_0_m_axis_TLAST;
  assign m_axis_tready = AXI_Stream_Systolic_0_m_axis_TREADY;
  assign m_axis_tvalid = AXI_Stream_Systolic_0_m_axis_TVALID;
  assign s_axis_tdata[31:0] = row_major_axi_convert_0_m_axis_TDATA;
  assign s_axis_tlast = row_major_axi_convert_0_m_axis_TLAST;
  assign s_axis_tready = row_major_axi_convert_0_m_axis_TREADY;
  assign s_axis_tvalid = row_major_axi_convert_0_m_axis_TVALID;
  SystolicCore_Wrapper_imp_W2TQSX SystolicCore_Wrapper
       (.M_AXIS1_tdata(axis_data_fifo_0_M_AXIS1_TDATA),
        .M_AXIS1_tlast(axis_data_fifo_0_M_AXIS1_TLAST),
        .M_AXIS1_tready(axis_data_fifo_0_M_AXIS1_TREADY),
        .M_AXIS1_tvalid(axis_data_fifo_0_M_AXIS1_TVALID),
        .clock(m_axi_mm2s_aclk),
        .m_axis_tdata(AXI_Stream_Systolic_0_m_axis_TDATA),
        .m_axis_tlast(AXI_Stream_Systolic_0_m_axis_TLAST),
        .m_axis_tready(AXI_Stream_Systolic_0_m_axis_TREADY),
        .m_axis_tvalid(AXI_Stream_Systolic_0_m_axis_TVALID),
        .resetn(resetn),
        .s_axis1_tdata(axi_dma_0_M_AXIS_MM2S_TDATA),
        .s_axis1_tlast(axi_dma_0_M_AXIS_MM2S_TLAST),
        .s_axis1_tready(axi_dma_0_M_AXIS_MM2S_TREADY),
        .s_axis1_tvalid(axi_dma_0_M_AXIS_MM2S_TVALID),
        .s_axis_tdata(row_major_axi_convert_0_m_axis_TDATA),
        .s_axis_tlast(row_major_axi_convert_0_m_axis_TLAST),
        .s_axis_tready(row_major_axi_convert_0_m_axis_TREADY),
        .s_axis_tvalid(row_major_axi_convert_0_m_axis_TVALID));
  Systolic_DMA_AXI_Stream_axi_dma_0_0 axi_dma_0
       (.axi_resetn(resetn),
        .m_axi_mm2s_aclk(m_axi_mm2s_aclk),
        .m_axi_mm2s_araddr(M_AXI_MM2S_araddr),
        .m_axi_mm2s_arburst(M_AXI_MM2S_arburst),
        .m_axi_mm2s_arcache(M_AXI_MM2S_arcache),
        .m_axi_mm2s_arlen(M_AXI_MM2S_arlen),
        .m_axi_mm2s_arprot(M_AXI_MM2S_arprot),
        .m_axi_mm2s_arready(M_AXI_MM2S_arready),
        .m_axi_mm2s_arsize(M_AXI_MM2S_arsize),
        .m_axi_mm2s_arvalid(M_AXI_MM2S_arvalid),
        .m_axi_mm2s_rdata(M_AXI_MM2S_rdata),
        .m_axi_mm2s_rlast(M_AXI_MM2S_rlast),
        .m_axi_mm2s_rready(M_AXI_MM2S_rready),
        .m_axi_mm2s_rresp(M_AXI_MM2S_rresp),
        .m_axi_mm2s_rvalid(M_AXI_MM2S_rvalid),
        .m_axi_s2mm_aclk(m_axi_mm2s_aclk),
        .m_axi_s2mm_awaddr(M_AXI_S2MM_awaddr),
        .m_axi_s2mm_awburst(M_AXI_S2MM_awburst),
        .m_axi_s2mm_awcache(M_AXI_S2MM_awcache),
        .m_axi_s2mm_awlen(M_AXI_S2MM_awlen),
        .m_axi_s2mm_awprot(M_AXI_S2MM_awprot),
        .m_axi_s2mm_awready(M_AXI_S2MM_awready),
        .m_axi_s2mm_awsize(M_AXI_S2MM_awsize),
        .m_axi_s2mm_awvalid(M_AXI_S2MM_awvalid),
        .m_axi_s2mm_bready(M_AXI_S2MM_bready),
        .m_axi_s2mm_bresp(M_AXI_S2MM_bresp),
        .m_axi_s2mm_bvalid(M_AXI_S2MM_bvalid),
        .m_axi_s2mm_wdata(M_AXI_S2MM_wdata),
        .m_axi_s2mm_wlast(M_AXI_S2MM_wlast),
        .m_axi_s2mm_wready(M_AXI_S2MM_wready),
        .m_axi_s2mm_wstrb(M_AXI_S2MM_wstrb),
        .m_axi_s2mm_wvalid(M_AXI_S2MM_wvalid),
        .m_axis_mm2s_tdata(axi_dma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tlast(axi_dma_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_0_M_AXIS_MM2S_TVALID),
        .s_axi_lite_aclk(m_axi_mm2s_aclk),
        .s_axi_lite_araddr(S_AXI_LITE_araddr),
        .s_axi_lite_arready(S_AXI_LITE_arready),
        .s_axi_lite_arvalid(S_AXI_LITE_arvalid),
        .s_axi_lite_awaddr(S_AXI_LITE_awaddr),
        .s_axi_lite_awready(S_AXI_LITE_awready),
        .s_axi_lite_awvalid(S_AXI_LITE_awvalid),
        .s_axi_lite_bready(S_AXI_LITE_bready),
        .s_axi_lite_bresp(S_AXI_LITE_bresp),
        .s_axi_lite_bvalid(S_AXI_LITE_bvalid),
        .s_axi_lite_rdata(S_AXI_LITE_rdata),
        .s_axi_lite_rready(S_AXI_LITE_rready),
        .s_axi_lite_rresp(S_AXI_LITE_rresp),
        .s_axi_lite_rvalid(S_AXI_LITE_rvalid),
        .s_axi_lite_wdata(S_AXI_LITE_wdata),
        .s_axi_lite_wready(S_AXI_LITE_wready),
        .s_axi_lite_wvalid(S_AXI_LITE_wvalid),
        .s_axis_s2mm_tdata(axis_data_fifo_0_M_AXIS1_TDATA),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(axis_data_fifo_0_M_AXIS1_TLAST),
        .s_axis_s2mm_tready(axis_data_fifo_0_M_AXIS1_TREADY),
        .s_axis_s2mm_tvalid(axis_data_fifo_0_M_AXIS1_TVALID));
endmodule

module SystolicCore_Wrapper_imp_W2TQSX
   (M_AXIS1_tdata,
    M_AXIS1_tlast,
    M_AXIS1_tready,
    M_AXIS1_tvalid,
    clock,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tready,
    m_axis_tvalid,
    resetn,
    s_axis1_tdata,
    s_axis1_tlast,
    s_axis1_tready,
    s_axis1_tvalid,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tready,
    s_axis_tvalid);
  output [63:0]M_AXIS1_tdata;
  output M_AXIS1_tlast;
  input M_AXIS1_tready;
  output M_AXIS1_tvalid;
  input clock;
  output [63:0]m_axis_tdata;
  output m_axis_tlast;
  output m_axis_tready;
  output m_axis_tvalid;
  input resetn;
  input [31:0]s_axis1_tdata;
  input s_axis1_tlast;
  output s_axis1_tready;
  input s_axis1_tvalid;
  output [31:0]s_axis_tdata;
  output s_axis_tlast;
  output s_axis_tready;
  output s_axis_tvalid;

  (* DEBUG = "true" *) wire [63:0]AXI_Stream_Systolic_0_m_axis_TDATA;
  (* DEBUG = "true" *) wire AXI_Stream_Systolic_0_m_axis_TLAST;
  (* DEBUG = "true" *) wire AXI_Stream_Systolic_0_m_axis_TREADY;
  (* DEBUG = "true" *) wire AXI_Stream_Systolic_0_m_axis_TVALID;
  (* DEBUG = "true" *) wire [63:0]axis_data_fifo_0_M_AXIS1_TDATA;
  (* DEBUG = "true" *) wire axis_data_fifo_0_M_AXIS1_TLAST;
  (* DEBUG = "true" *) wire axis_data_fifo_0_M_AXIS1_TREADY;
  (* DEBUG = "true" *) wire axis_data_fifo_0_M_AXIS1_TVALID;
  wire clock;
  wire resetn;
  (* DEBUG = "true" *) wire [31:0]row_major_axi_convert_0_m_axis_TDATA;
  (* DEBUG = "true" *) wire row_major_axi_convert_0_m_axis_TLAST;
  (* DEBUG = "true" *) wire row_major_axi_convert_0_m_axis_TREADY;
  (* DEBUG = "true" *) wire row_major_axi_convert_0_m_axis_TVALID;
  wire [31:0]s_axis1_tdata;
  wire s_axis1_tlast;
  wire s_axis1_tready;
  wire s_axis1_tvalid;

  assign M_AXIS1_tdata[63:0] = axis_data_fifo_0_M_AXIS1_TDATA;
  assign M_AXIS1_tlast = axis_data_fifo_0_M_AXIS1_TLAST;
  assign M_AXIS1_tvalid = axis_data_fifo_0_M_AXIS1_TVALID;
  assign axis_data_fifo_0_M_AXIS1_TREADY = M_AXIS1_tready;
  assign m_axis_tdata[63:0] = AXI_Stream_Systolic_0_m_axis_TDATA;
  assign m_axis_tlast = AXI_Stream_Systolic_0_m_axis_TLAST;
  assign m_axis_tready = AXI_Stream_Systolic_0_m_axis_TREADY;
  assign m_axis_tvalid = AXI_Stream_Systolic_0_m_axis_TVALID;
  assign s_axis_tdata[31:0] = row_major_axi_convert_0_m_axis_TDATA;
  assign s_axis_tlast = row_major_axi_convert_0_m_axis_TLAST;
  assign s_axis_tready = row_major_axi_convert_0_m_axis_TREADY;
  assign s_axis_tvalid = row_major_axi_convert_0_m_axis_TVALID;
  Systolic_DMA_AXI_Stream_AXI_Stream_Systolic_0_0 AXI_Stream_Systolic_0
       (.clock(clock),
        .m_axis_tdata(AXI_Stream_Systolic_0_m_axis_TDATA),
        .m_axis_tlast(AXI_Stream_Systolic_0_m_axis_TLAST),
        .m_axis_tready(AXI_Stream_Systolic_0_m_axis_TREADY),
        .m_axis_tvalid(AXI_Stream_Systolic_0_m_axis_TVALID),
        .resetn(resetn),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,row_major_axi_convert_0_m_axis_TDATA}),
        .s_axis_tlast(row_major_axi_convert_0_m_axis_TLAST),
        .s_axis_tready(row_major_axi_convert_0_m_axis_TREADY),
        .s_axis_tvalid(row_major_axi_convert_0_m_axis_TVALID));
  Systolic_DMA_AXI_Stream_axis_data_fifo_0_0 axis_data_fifo_0
       (.m_axis_tdata(axis_data_fifo_0_M_AXIS1_TDATA),
        .m_axis_tlast(axis_data_fifo_0_M_AXIS1_TLAST),
        .m_axis_tready(axis_data_fifo_0_M_AXIS1_TREADY),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS1_TVALID),
        .s_axis_aclk(clock),
        .s_axis_aresetn(resetn),
        .s_axis_tdata(AXI_Stream_Systolic_0_m_axis_TDATA),
        .s_axis_tlast(AXI_Stream_Systolic_0_m_axis_TLAST),
        .s_axis_tready(AXI_Stream_Systolic_0_m_axis_TREADY),
        .s_axis_tvalid(AXI_Stream_Systolic_0_m_axis_TVALID));
  Systolic_DMA_AXI_Stream_row_major_axi_convert_0_0 row_major_axi_convert_0
       (.clock(clock),
        .m_axis_tdata(row_major_axi_convert_0_m_axis_TDATA),
        .m_axis_tlast(row_major_axi_convert_0_m_axis_TLAST),
        .m_axis_tready(row_major_axi_convert_0_m_axis_TREADY),
        .m_axis_tvalid(row_major_axi_convert_0_m_axis_TVALID),
        .resetn(resetn),
        .s_axis_tdata(s_axis1_tdata),
        .s_axis_tlast(s_axis1_tlast),
        .s_axis_tready(s_axis1_tready),
        .s_axis_tvalid(s_axis1_tvalid));
endmodule

(* CORE_GENERATION_INFO = "Systolic_DMA_AXI_Stream,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Systolic_DMA_AXI_Stream,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "Systolic_DMA_AXI_Stream.hwdef" *) 
module Systolic_DMA_AXI_Stream
   ();

  (* CONN_BUS_INFO = "AXI_Stream_Systolic_0_m_axis xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [63:0]AXI_Stream_Systolic_0_m_axis_TDATA;
  (* CONN_BUS_INFO = "AXI_Stream_Systolic_0_m_axis xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_Stream_Systolic_0_m_axis_TLAST;
  (* CONN_BUS_INFO = "AXI_Stream_Systolic_0_m_axis xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_Stream_Systolic_0_m_axis_TREADY;
  (* CONN_BUS_INFO = "AXI_Stream_Systolic_0_m_axis xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire AXI_Stream_Systolic_0_m_axis_TVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARPROT;
  wire axi_dma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARSIZE;
  wire axi_dma_0_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_RDATA;
  wire axi_dma_0_M_AXI_MM2S_RLAST;
  wire axi_dma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_0_M_AXI_MM2S_RRESP;
  wire axi_dma_0_M_AXI_MM2S_RVALID;
  wire [31:0]axi_dma_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_0_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_0_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWPROT;
  wire axi_dma_0_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWSIZE;
  wire axi_dma_0_M_AXI_S2MM_AWVALID;
  wire axi_dma_0_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_0_M_AXI_S2MM_BRESP;
  wire axi_dma_0_M_AXI_S2MM_BVALID;
  wire [63:0]axi_dma_0_M_AXI_S2MM_WDATA;
  wire axi_dma_0_M_AXI_S2MM_WLAST;
  wire axi_dma_0_M_AXI_S2MM_WREADY;
  wire [7:0]axi_dma_0_M_AXI_S2MM_WSTRB;
  wire axi_dma_0_M_AXI_S2MM_WVALID;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [48:0]axi_smc_1_M00_AXI_ARADDR;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_smc_1_M00_AXI_ARBURST;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_smc_1_M00_AXI_ARCACHE;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_smc_1_M00_AXI_ARLEN;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_smc_1_M00_AXI_ARLOCK;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_smc_1_M00_AXI_ARPROT;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_smc_1_M00_AXI_ARQOS;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_ARREADY;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_smc_1_M00_AXI_ARSIZE;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_ARVALID;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [48:0]axi_smc_1_M00_AXI_AWADDR;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_smc_1_M00_AXI_AWBURST;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_smc_1_M00_AXI_AWCACHE;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]axi_smc_1_M00_AXI_AWLEN;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]axi_smc_1_M00_AXI_AWLOCK;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_smc_1_M00_AXI_AWPROT;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]axi_smc_1_M00_AXI_AWQOS;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_AWREADY;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]axi_smc_1_M00_AXI_AWSIZE;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_AWVALID;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_BREADY;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_smc_1_M00_AXI_BRESP;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_BVALID;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]axi_smc_1_M00_AXI_RDATA;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_RLAST;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_RREADY;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]axi_smc_1_M00_AXI_RRESP;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_RVALID;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [127:0]axi_smc_1_M00_AXI_WDATA;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_WLAST;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_WREADY;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [15:0]axi_smc_1_M00_AXI_WSTRB;
  (* CONN_BUS_INFO = "axi_smc_1_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axi_smc_1_M00_AXI_WVALID;
  wire [9:0]axi_smc_M00_AXI_ARADDR;
  wire axi_smc_M00_AXI_ARREADY;
  wire axi_smc_M00_AXI_ARVALID;
  wire [9:0]axi_smc_M00_AXI_AWADDR;
  wire axi_smc_M00_AXI_AWREADY;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [31:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [31:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WREADY;
  wire axi_smc_M00_AXI_WVALID;
  (* CONN_BUS_INFO = "axis_data_fifo_0_M_AXIS1 xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [63:0]axis_data_fifo_0_M_AXIS1_TDATA;
  (* CONN_BUS_INFO = "axis_data_fifo_0_M_AXIS1 xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axis_data_fifo_0_M_AXIS1_TLAST;
  (* CONN_BUS_INFO = "axis_data_fifo_0_M_AXIS1 xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axis_data_fifo_0_M_AXIS1_TREADY;
  (* CONN_BUS_INFO = "axis_data_fifo_0_M_AXIS1 xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire axis_data_fifo_0_M_AXIS1_TVALID;
  (* CONN_BUS_INFO = "row_major_axi_convert_0_m_axis xilinx.com:interface:axis:1.0 None TDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]row_major_axi_convert_0_m_axis_TDATA;
  (* CONN_BUS_INFO = "row_major_axi_convert_0_m_axis xilinx.com:interface:axis:1.0 None TLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire row_major_axi_convert_0_m_axis_TLAST;
  (* CONN_BUS_INFO = "row_major_axi_convert_0_m_axis xilinx.com:interface:axis:1.0 None TREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire row_major_axi_convert_0_m_axis_TREADY;
  (* CONN_BUS_INFO = "row_major_axi_convert_0_m_axis xilinx.com:interface:axis:1.0 None TVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire row_major_axi_convert_0_m_axis_TVALID;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  SystolicCore_DMA_imp_RLEDNC SystolicCore_DMA
       (.M_AXIS1_tdata(axis_data_fifo_0_M_AXIS1_TDATA),
        .M_AXIS1_tlast(axis_data_fifo_0_M_AXIS1_TLAST),
        .M_AXIS1_tready(axis_data_fifo_0_M_AXIS1_TREADY),
        .M_AXIS1_tvalid(axis_data_fifo_0_M_AXIS1_TVALID),
        .M_AXI_MM2S_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .M_AXI_MM2S_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .M_AXI_MM2S_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .M_AXI_MM2S_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .M_AXI_MM2S_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .M_AXI_MM2S_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .M_AXI_MM2S_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .M_AXI_MM2S_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .M_AXI_MM2S_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .M_AXI_MM2S_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .M_AXI_MM2S_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .M_AXI_MM2S_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .M_AXI_MM2S_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .M_AXI_S2MM_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .M_AXI_S2MM_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .M_AXI_S2MM_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .M_AXI_S2MM_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .M_AXI_S2MM_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .M_AXI_S2MM_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .M_AXI_S2MM_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .M_AXI_S2MM_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .M_AXI_S2MM_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .M_AXI_S2MM_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .M_AXI_S2MM_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .M_AXI_S2MM_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .M_AXI_S2MM_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .M_AXI_S2MM_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .M_AXI_S2MM_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .M_AXI_S2MM_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .S_AXI_LITE_araddr(axi_smc_M00_AXI_ARADDR),
        .S_AXI_LITE_arready(axi_smc_M00_AXI_ARREADY),
        .S_AXI_LITE_arvalid(axi_smc_M00_AXI_ARVALID),
        .S_AXI_LITE_awaddr(axi_smc_M00_AXI_AWADDR),
        .S_AXI_LITE_awready(axi_smc_M00_AXI_AWREADY),
        .S_AXI_LITE_awvalid(axi_smc_M00_AXI_AWVALID),
        .S_AXI_LITE_bready(axi_smc_M00_AXI_BREADY),
        .S_AXI_LITE_bresp(axi_smc_M00_AXI_BRESP),
        .S_AXI_LITE_bvalid(axi_smc_M00_AXI_BVALID),
        .S_AXI_LITE_rdata(axi_smc_M00_AXI_RDATA),
        .S_AXI_LITE_rready(axi_smc_M00_AXI_RREADY),
        .S_AXI_LITE_rresp(axi_smc_M00_AXI_RRESP),
        .S_AXI_LITE_rvalid(axi_smc_M00_AXI_RVALID),
        .S_AXI_LITE_wdata(axi_smc_M00_AXI_WDATA),
        .S_AXI_LITE_wready(axi_smc_M00_AXI_WREADY),
        .S_AXI_LITE_wvalid(axi_smc_M00_AXI_WVALID),
        .m_axi_mm2s_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .m_axis_tdata(AXI_Stream_Systolic_0_m_axis_TDATA),
        .m_axis_tlast(AXI_Stream_Systolic_0_m_axis_TLAST),
        .m_axis_tready(AXI_Stream_Systolic_0_m_axis_TREADY),
        .m_axis_tvalid(AXI_Stream_Systolic_0_m_axis_TVALID),
        .resetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axis_tdata(row_major_axi_convert_0_m_axis_TDATA),
        .s_axis_tlast(row_major_axi_convert_0_m_axis_TLAST),
        .s_axis_tready(row_major_axi_convert_0_m_axis_TREADY),
        .s_axis_tvalid(row_major_axi_convert_0_m_axis_TVALID));
  Systolic_DMA_AXI_Stream_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID),
        .S01_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .S01_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .S01_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .S01_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .S01_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .S01_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .S01_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .S01_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .S01_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .S01_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .S01_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .S01_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .S01_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .S01_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .S01_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .S01_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .S01_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .S01_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .S01_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .S01_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .S01_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .S01_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .S01_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .S01_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .S01_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .S01_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .S01_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .S01_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .S01_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .S01_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .S01_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .S01_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .S01_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .S01_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .S01_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .S01_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .S01_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .S01_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .S01_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_99M_peripheral_aresetn));
  Systolic_DMA_AXI_Stream_axi_smc_1_0 axi_smc_1
       (.M00_AXI_araddr(axi_smc_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_1_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_1_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_1_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .S00_AXI_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .S00_AXI_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .S01_AXI_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk0),
        .aresetn(rst_ps8_0_99M_peripheral_aresetn));
  Systolic_DMA_AXI_Stream_rst_ps8_0_99M_0 rst_ps8_0_99M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  Systolic_DMA_AXI_Stream_system_ila_0_0 system_ila_0
       (.SLOT_0_AXIS_tdata(AXI_Stream_Systolic_0_m_axis_TDATA),
        .SLOT_0_AXIS_tlast(AXI_Stream_Systolic_0_m_axis_TLAST),
        .SLOT_0_AXIS_tready(AXI_Stream_Systolic_0_m_axis_TREADY),
        .SLOT_0_AXIS_tvalid(AXI_Stream_Systolic_0_m_axis_TVALID),
        .SLOT_1_AXIS_tdata(axis_data_fifo_0_M_AXIS1_TDATA),
        .SLOT_1_AXIS_tlast(axis_data_fifo_0_M_AXIS1_TLAST),
        .SLOT_1_AXIS_tready(axis_data_fifo_0_M_AXIS1_TREADY),
        .SLOT_1_AXIS_tvalid(axis_data_fifo_0_M_AXIS1_TVALID),
        .SLOT_2_AXIS_tdata(row_major_axi_convert_0_m_axis_TDATA),
        .SLOT_2_AXIS_tlast(row_major_axi_convert_0_m_axis_TLAST),
        .SLOT_2_AXIS_tready(row_major_axi_convert_0_m_axis_TREADY),
        .SLOT_2_AXIS_tvalid(row_major_axi_convert_0_m_axis_TVALID),
        .SLOT_3_AXI_araddr(axi_smc_1_M00_AXI_ARADDR),
        .SLOT_3_AXI_arburst(axi_smc_1_M00_AXI_ARBURST),
        .SLOT_3_AXI_arcache(axi_smc_1_M00_AXI_ARCACHE),
        .SLOT_3_AXI_arlen(axi_smc_1_M00_AXI_ARLEN),
        .SLOT_3_AXI_arlock(axi_smc_1_M00_AXI_ARLOCK),
        .SLOT_3_AXI_arprot(axi_smc_1_M00_AXI_ARPROT),
        .SLOT_3_AXI_arqos(axi_smc_1_M00_AXI_ARQOS),
        .SLOT_3_AXI_arready(axi_smc_1_M00_AXI_ARREADY),
        .SLOT_3_AXI_arsize(axi_smc_1_M00_AXI_ARSIZE),
        .SLOT_3_AXI_arvalid(axi_smc_1_M00_AXI_ARVALID),
        .SLOT_3_AXI_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .SLOT_3_AXI_awburst(axi_smc_1_M00_AXI_AWBURST),
        .SLOT_3_AXI_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .SLOT_3_AXI_awlen(axi_smc_1_M00_AXI_AWLEN),
        .SLOT_3_AXI_awlock(axi_smc_1_M00_AXI_AWLOCK),
        .SLOT_3_AXI_awprot(axi_smc_1_M00_AXI_AWPROT),
        .SLOT_3_AXI_awqos(axi_smc_1_M00_AXI_AWQOS),
        .SLOT_3_AXI_awready(axi_smc_1_M00_AXI_AWREADY),
        .SLOT_3_AXI_awsize(axi_smc_1_M00_AXI_AWSIZE),
        .SLOT_3_AXI_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .SLOT_3_AXI_bready(axi_smc_1_M00_AXI_BREADY),
        .SLOT_3_AXI_bresp(axi_smc_1_M00_AXI_BRESP),
        .SLOT_3_AXI_bvalid(axi_smc_1_M00_AXI_BVALID),
        .SLOT_3_AXI_rdata(axi_smc_1_M00_AXI_RDATA),
        .SLOT_3_AXI_rlast(axi_smc_1_M00_AXI_RLAST),
        .SLOT_3_AXI_rready(axi_smc_1_M00_AXI_RREADY),
        .SLOT_3_AXI_rresp(axi_smc_1_M00_AXI_RRESP),
        .SLOT_3_AXI_rvalid(axi_smc_1_M00_AXI_RVALID),
        .SLOT_3_AXI_wdata(axi_smc_1_M00_AXI_WDATA),
        .SLOT_3_AXI_wlast(axi_smc_1_M00_AXI_WLAST),
        .SLOT_3_AXI_wready(axi_smc_1_M00_AXI_WREADY),
        .SLOT_3_AXI_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .SLOT_3_AXI_wvalid(axi_smc_1_M00_AXI_WVALID),
        .clk(zynq_ultra_ps_e_0_pl_clk0),
        .resetn(rst_ps8_0_99M_peripheral_aresetn));
  Systolic_DMA_AXI_Stream_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp0_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .maxigp0_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .maxigp0_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .maxigp1_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .maxigp1_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .maxigp1_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .maxigp1_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .maxigp1_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .maxigp1_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .maxigp1_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .maxigp1_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .maxigp1_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .maxigp1_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .maxigp1_aruser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER),
        .maxigp1_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .maxigp1_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .maxigp1_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .maxigp1_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .maxigp1_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .maxigp1_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .maxigp1_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .maxigp1_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .maxigp1_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .maxigp1_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .maxigp1_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .maxigp1_awuser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER),
        .maxigp1_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .maxigp1_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .maxigp1_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .maxigp1_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .maxigp1_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .maxigp1_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .maxigp1_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .maxigp1_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .maxigp1_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .maxigp1_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .maxigp1_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .maxigp1_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .maxigp1_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .maxigp1_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .maxigp1_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .maxigp1_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID),
        .maxihpm0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .maxihpm1_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(1'b0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .saxigp0_araddr(axi_smc_1_M00_AXI_ARADDR),
        .saxigp0_arburst(axi_smc_1_M00_AXI_ARBURST),
        .saxigp0_arcache(axi_smc_1_M00_AXI_ARCACHE),
        .saxigp0_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_arlen(axi_smc_1_M00_AXI_ARLEN),
        .saxigp0_arlock(axi_smc_1_M00_AXI_ARLOCK),
        .saxigp0_arprot(axi_smc_1_M00_AXI_ARPROT),
        .saxigp0_arqos(axi_smc_1_M00_AXI_ARQOS),
        .saxigp0_arready(axi_smc_1_M00_AXI_ARREADY),
        .saxigp0_arsize(axi_smc_1_M00_AXI_ARSIZE),
        .saxigp0_aruser(1'b0),
        .saxigp0_arvalid(axi_smc_1_M00_AXI_ARVALID),
        .saxigp0_awaddr(axi_smc_1_M00_AXI_AWADDR),
        .saxigp0_awburst(axi_smc_1_M00_AXI_AWBURST),
        .saxigp0_awcache(axi_smc_1_M00_AXI_AWCACHE),
        .saxigp0_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp0_awlen(axi_smc_1_M00_AXI_AWLEN),
        .saxigp0_awlock(axi_smc_1_M00_AXI_AWLOCK),
        .saxigp0_awprot(axi_smc_1_M00_AXI_AWPROT),
        .saxigp0_awqos(axi_smc_1_M00_AXI_AWQOS),
        .saxigp0_awready(axi_smc_1_M00_AXI_AWREADY),
        .saxigp0_awsize(axi_smc_1_M00_AXI_AWSIZE),
        .saxigp0_awuser(1'b0),
        .saxigp0_awvalid(axi_smc_1_M00_AXI_AWVALID),
        .saxigp0_bready(axi_smc_1_M00_AXI_BREADY),
        .saxigp0_bresp(axi_smc_1_M00_AXI_BRESP),
        .saxigp0_bvalid(axi_smc_1_M00_AXI_BVALID),
        .saxigp0_rdata(axi_smc_1_M00_AXI_RDATA),
        .saxigp0_rlast(axi_smc_1_M00_AXI_RLAST),
        .saxigp0_rready(axi_smc_1_M00_AXI_RREADY),
        .saxigp0_rresp(axi_smc_1_M00_AXI_RRESP),
        .saxigp0_rvalid(axi_smc_1_M00_AXI_RVALID),
        .saxigp0_wdata(axi_smc_1_M00_AXI_WDATA),
        .saxigp0_wlast(axi_smc_1_M00_AXI_WLAST),
        .saxigp0_wready(axi_smc_1_M00_AXI_WREADY),
        .saxigp0_wstrb(axi_smc_1_M00_AXI_WSTRB),
        .saxigp0_wvalid(axi_smc_1_M00_AXI_WVALID),
        .saxihpc0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0));
endmodule
