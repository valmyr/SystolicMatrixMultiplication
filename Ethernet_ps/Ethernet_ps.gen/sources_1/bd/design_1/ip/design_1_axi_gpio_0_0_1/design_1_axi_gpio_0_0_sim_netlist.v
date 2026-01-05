// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sat Jan  3 04:02:36 2026
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/xmen/Videos/RustDesk/SystolicCore/SystolicCore/Ethernet_ps/Ethernet_ps.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0_1/design_1_axi_gpio_0_0_sim_netlist.v
// Design      : design_1_axi_gpio_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_gpio_0_0,axi_gpio,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_gpio,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_axi_gpio_0_0
   (s_axi_aclk,
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
    ip2intc_irpt,
    gpio_io_i,
    gpio2_io_o);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_mode = "slave S_AXI_ACLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_mode = "slave S_AXI_ARESETN" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_mode = "slave S_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99990005, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [8:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [8:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 IP2INTC_IRQ INTERRUPT" *) (* x_interface_mode = "master IP2INTC_IRQ" *) (* x_interface_parameter = "XIL_INTERFACENAME IP2INTC_IRQ, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output ip2intc_irpt;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO TRI_I" *) (* x_interface_mode = "master GPIO" *) (* x_interface_parameter = "XIL_INTERFACENAME GPIO, BOARD.ASSOCIATED_PARAM GPIO_BOARD_INTERFACE" *) input [15:0]gpio_io_i;
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO2 TRI_O" *) (* x_interface_mode = "master GPIO2" *) (* x_interface_parameter = "XIL_INTERFACENAME GPIO2, BOARD.ASSOCIATED_PARAM GPIO2_BOARD_INTERFACE" *) output [15:0]gpio2_io_o;

  wire \<const0> ;
  wire [15:0]gpio2_io_o;
  wire [15:0]gpio_io_i;
  wire ip2intc_irpt;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
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
  wire [15:0]NLW_U0_gpio2_io_t_UNCONNECTED;
  wire [15:0]NLW_U0_gpio_io_o_UNCONNECTED;
  wire [15:0]NLW_U0_gpio_io_t_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ALL_INPUTS = "1" *) 
  (* C_ALL_INPUTS_2 = "0" *) 
  (* C_ALL_OUTPUTS = "0" *) 
  (* C_ALL_OUTPUTS_2 = "1" *) 
  (* C_DOUT_DEFAULT = "32'b00000000000000000000000000000000" *) 
  (* C_DOUT_DEFAULT_2 = "32'b00000000000000000000000000000000" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_GPIO2_WIDTH = "16" *) 
  (* C_GPIO_WIDTH = "16" *) 
  (* C_INTERRUPT_PRESENT = "1" *) 
  (* C_IS_DUAL = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TRI_DEFAULT = "32'b11111111111111111111111111111111" *) 
  (* C_TRI_DEFAULT_2 = "32'b11111111111111111111111111111111" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_group = "LOGICORE" *) 
  design_1_axi_gpio_0_0_axi_gpio U0
       (.gpio2_io_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gpio2_io_o(gpio2_io_o),
        .gpio2_io_t(NLW_U0_gpio2_io_t_UNCONNECTED[15:0]),
        .gpio_io_i(gpio_io_i),
        .gpio_io_o(NLW_U0_gpio_io_o_UNCONNECTED[15:0]),
        .gpio_io_t(NLW_U0_gpio_io_t_UNCONNECTED[15:0]),
        .ip2intc_irpt(ip2intc_irpt),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[8:2],1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[8:2],1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[31],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata[15:0]}),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "GPIO_Core" *) 
module design_1_axi_gpio_0_0_GPIO_Core
   (GPIO_intr,
    GPIO2_intr,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg ,
    gpio2_io_o,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ,
    Q,
    \Dual.gpio_OE_reg[0]_0 ,
    gpio_io_i,
    s_axi_aclk,
    bus2ip_reset,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg[31]_0 ,
    p_1_in,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg[29]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg[28]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg[27]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg[26]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg[25]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg[24]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg[23]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg[22]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg[21]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg[20]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg[19]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg[18]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[17]_0 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_1 ,
    bus2ip_cs,
    E,
    s_axi_wdata,
    \Dual.gpio_OE_reg[0]_1 );
  output GPIO_intr;
  output GPIO2_intr;
  output GPIO_xferAck_i;
  output gpio_xferAck_Reg;
  output \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg ;
  output [15:0]gpio2_io_o;
  output \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg ;
  output \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg ;
  output \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg ;
  output \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg ;
  output \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg ;
  output \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg ;
  output \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg ;
  output \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg ;
  output \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg ;
  output \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg ;
  output \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg ;
  output \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg ;
  output \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg ;
  output \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg ;
  output \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ;
  output \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ;
  output [15:0]Q;
  output [15:0]\Dual.gpio_OE_reg[0]_0 ;
  input [15:0]gpio_io_i;
  input s_axi_aclk;
  input bus2ip_reset;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg[31]_0 ;
  input p_1_in;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg[29]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg[28]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg[27]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg[26]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg[25]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg[24]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg[23]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg[22]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg[21]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg[20]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg[19]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg[18]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[17]_0 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_1 ;
  input [0:0]bus2ip_cs;
  input [0:0]E;
  input [15:0]s_axi_wdata;
  input [0:0]\Dual.gpio_OE_reg[0]_1 ;

  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_1 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg[26]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg[27]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg[28]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg[29]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg[31]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[17]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg[18]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg[19]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg[20]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg[21]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg[22]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg[23]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg[24]_0 ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg[25]_0 ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg ;
  wire \Dual.gen_interrupt_dual.GPIO_intr_i_2_n_0 ;
  wire \Dual.gen_interrupt_dual.GPIO_intr_i_3_n_0 ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[0] ;
  wire \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[15] ;
  wire \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[0] ;
  wire \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[15] ;
  wire [0:15]\Dual.gpio2_Data_In ;
  wire [0:15]\Dual.gpio2_data_in_xor ;
  wire [0:15]\Dual.gpio2_io_i_d2 ;
  wire [15:0]\Dual.gpio_OE_reg[0]_0 ;
  wire [0:0]\Dual.gpio_OE_reg[0]_1 ;
  wire [0:0]E;
  wire GPIO2_intr;
  wire GPIO_intr;
  wire GPIO_xferAck_i;
  wire [15:0]Q;
  wire [0:0]bus2ip_cs;
  wire bus2ip_reset;
  wire [15:0]gpio2_io_o;
  wire [0:15]gpio_data_in_xor;
  wire [15:0]gpio_io_i;
  wire [0:15]gpio_io_i_d2;
  wire gpio_xferAck_Reg;
  wire iGPIO_xferAck;
  wire or_reduce;
  wire or_reduce18_out;
  wire \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_2_n_0 ;
  wire \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_3_n_0 ;
  wire p_0_in;
  wire p_0_in2_in;
  wire p_10_in;
  wire p_10_in12_in;
  wire p_11_in;
  wire p_11_in13_in;
  wire p_12_in;
  wire p_12_in14_in;
  wire p_13_in;
  wire p_13_in15_in;
  wire p_1_in;
  wire p_1_in3_in;
  wire p_1_in_0;
  wire p_2_in;
  wire p_2_in4_in;
  wire p_3_in;
  wire p_3_in5_in;
  wire p_4_in;
  wire p_4_in6_in;
  wire p_5_in;
  wire p_5_in7_in;
  wire p_6_in;
  wire p_6_in8_in;
  wire p_7_in;
  wire p_7_in9_in;
  wire p_8_in;
  wire p_8_in10_in;
  wire p_9_in;
  wire p_9_in11_in;
  wire s_axi_aclk;
  wire [15:0]s_axi_wdata;

  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_1 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg[26]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg[27]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg[28]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg[29]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg[31]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[17]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg[18]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg[19]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg[20]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg[21]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg[22]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg[23]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg[24]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg[25]_0 ),
        .Q(\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_o[15]),
        .Q(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_o[5]),
        .Q(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_o[4]),
        .Q(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_o[3]),
        .Q(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_o[2]),
        .Q(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_o[1]),
        .Q(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_o[0]),
        .Q(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_o[14]),
        .Q(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_o[13]),
        .Q(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_o[12]),
        .Q(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_o[11]),
        .Q(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_o[10]),
        .Q(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_o[9]),
        .Q(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_o[8]),
        .Q(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_o[7]),
        .Q(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  FDRE \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio2_io_o[6]),
        .Q(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg ),
        .R(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 ));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "16" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axi_gpio_0_0_xpm_cdc_array_single__1 \Dual.INPUT_DOUBLE_REGS4 
       (.dest_clk(s_axi_aclk),
        .dest_out({gpio_io_i_d2[0],gpio_io_i_d2[1],gpio_io_i_d2[2],gpio_io_i_d2[3],gpio_io_i_d2[4],gpio_io_i_d2[5],gpio_io_i_d2[6],gpio_io_i_d2[7],gpio_io_i_d2[8],gpio_io_i_d2[9],gpio_io_i_d2[10],gpio_io_i_d2[11],gpio_io_i_d2[12],gpio_io_i_d2[13],gpio_io_i_d2[14],gpio_io_i_d2[15]}),
        .src_clk(1'b0),
        .src_in(gpio_io_i));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "16" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_axi_gpio_0_0_xpm_cdc_array_single \Dual.INPUT_DOUBLE_REGS5 
       (.dest_clk(s_axi_aclk),
        .dest_out({\Dual.gpio2_io_i_d2 [0],\Dual.gpio2_io_i_d2 [1],\Dual.gpio2_io_i_d2 [2],\Dual.gpio2_io_i_d2 [3],\Dual.gpio2_io_i_d2 [4],\Dual.gpio2_io_i_d2 [5],\Dual.gpio2_io_i_d2 [6],\Dual.gpio2_io_i_d2 [7],\Dual.gpio2_io_i_d2 [8],\Dual.gpio2_io_i_d2 [9],\Dual.gpio2_io_i_d2 [10],\Dual.gpio2_io_i_d2 [11],\Dual.gpio2_io_i_d2 [12],\Dual.gpio2_io_i_d2 [13],\Dual.gpio2_io_i_d2 [14],\Dual.gpio2_io_i_d2 [15]}),
        .src_clk(1'b0),
        .src_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  FDRE \Dual.gen_interrupt_dual.GPIO2_intr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(or_reduce),
        .Q(GPIO2_intr),
        .R(bus2ip_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Dual.gen_interrupt_dual.GPIO_intr_i_1 
       (.I0(p_12_in14_in),
        .I1(p_11_in13_in),
        .I2(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[15] ),
        .I3(p_13_in15_in),
        .I4(\Dual.gen_interrupt_dual.GPIO_intr_i_2_n_0 ),
        .I5(\Dual.gen_interrupt_dual.GPIO_intr_i_3_n_0 ),
        .O(or_reduce18_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Dual.gen_interrupt_dual.GPIO_intr_i_2 
       (.I0(p_0_in2_in),
        .I1(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[0] ),
        .I2(p_2_in4_in),
        .I3(p_1_in3_in),
        .I4(p_3_in5_in),
        .I5(p_4_in6_in),
        .O(\Dual.gen_interrupt_dual.GPIO_intr_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Dual.gen_interrupt_dual.GPIO_intr_i_3 
       (.I0(p_6_in8_in),
        .I1(p_5_in7_in),
        .I2(p_8_in10_in),
        .I3(p_7_in9_in),
        .I4(p_9_in11_in),
        .I5(p_10_in12_in),
        .O(\Dual.gen_interrupt_dual.GPIO_intr_i_3_n_0 ));
  FDRE \Dual.gen_interrupt_dual.GPIO_intr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(or_reduce18_out),
        .Q(GPIO_intr),
        .R(bus2ip_reset));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[0]_i_1 
       (.I0(\Dual.gpio2_io_i_d2 [0]),
        .I1(\Dual.gpio2_Data_In [0]),
        .O(\Dual.gpio2_data_in_xor [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[10]_i_1 
       (.I0(\Dual.gpio2_io_i_d2 [10]),
        .I1(\Dual.gpio2_Data_In [10]),
        .O(\Dual.gpio2_data_in_xor [10]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[11]_i_1 
       (.I0(\Dual.gpio2_io_i_d2 [11]),
        .I1(\Dual.gpio2_Data_In [11]),
        .O(\Dual.gpio2_data_in_xor [11]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[12]_i_1 
       (.I0(\Dual.gpio2_io_i_d2 [12]),
        .I1(\Dual.gpio2_Data_In [12]),
        .O(\Dual.gpio2_data_in_xor [12]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[13]_i_1 
       (.I0(\Dual.gpio2_io_i_d2 [13]),
        .I1(\Dual.gpio2_Data_In [13]),
        .O(\Dual.gpio2_data_in_xor [13]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[14]_i_1 
       (.I0(\Dual.gpio2_io_i_d2 [14]),
        .I1(\Dual.gpio2_Data_In [14]),
        .O(\Dual.gpio2_data_in_xor [14]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[15]_i_1 
       (.I0(\Dual.gpio2_io_i_d2 [15]),
        .I1(\Dual.gpio2_Data_In [15]),
        .O(\Dual.gpio2_data_in_xor [15]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[1]_i_1 
       (.I0(\Dual.gpio2_io_i_d2 [1]),
        .I1(\Dual.gpio2_Data_In [1]),
        .O(\Dual.gpio2_data_in_xor [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[2]_i_1 
       (.I0(\Dual.gpio2_io_i_d2 [2]),
        .I1(\Dual.gpio2_Data_In [2]),
        .O(\Dual.gpio2_data_in_xor [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[3]_i_1 
       (.I0(\Dual.gpio2_io_i_d2 [3]),
        .I1(\Dual.gpio2_Data_In [3]),
        .O(\Dual.gpio2_data_in_xor [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[4]_i_1 
       (.I0(\Dual.gpio2_io_i_d2 [4]),
        .I1(\Dual.gpio2_Data_In [4]),
        .O(\Dual.gpio2_data_in_xor [4]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[5]_i_1 
       (.I0(\Dual.gpio2_io_i_d2 [5]),
        .I1(\Dual.gpio2_Data_In [5]),
        .O(\Dual.gpio2_data_in_xor [5]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[6]_i_1 
       (.I0(\Dual.gpio2_io_i_d2 [6]),
        .I1(\Dual.gpio2_Data_In [6]),
        .O(\Dual.gpio2_data_in_xor [6]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[7]_i_1 
       (.I0(\Dual.gpio2_io_i_d2 [7]),
        .I1(\Dual.gpio2_Data_In [7]),
        .O(\Dual.gpio2_data_in_xor [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[8]_i_1 
       (.I0(\Dual.gpio2_io_i_d2 [8]),
        .I1(\Dual.gpio2_Data_In [8]),
        .O(\Dual.gpio2_data_in_xor [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[9]_i_1 
       (.I0(\Dual.gpio2_io_i_d2 [9]),
        .I1(\Dual.gpio2_Data_In [9]),
        .O(\Dual.gpio2_data_in_xor [9]));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_data_in_xor [0]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[0] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_data_in_xor [10]),
        .Q(p_9_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_data_in_xor [11]),
        .Q(p_10_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_data_in_xor [12]),
        .Q(p_11_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_data_in_xor [13]),
        .Q(p_12_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_data_in_xor [14]),
        .Q(p_13_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_data_in_xor [15]),
        .Q(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[15] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_data_in_xor [1]),
        .Q(p_0_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_data_in_xor [2]),
        .Q(p_1_in_0),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_data_in_xor [3]),
        .Q(p_2_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_data_in_xor [4]),
        .Q(p_3_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_data_in_xor [5]),
        .Q(p_4_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_data_in_xor [6]),
        .Q(p_5_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_data_in_xor [7]),
        .Q(p_6_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_data_in_xor [8]),
        .Q(p_7_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_data_in_xor [9]),
        .Q(p_8_in),
        .R(bus2ip_reset));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[0]_i_1 
       (.I0(gpio_io_i_d2[0]),
        .I1(Q[15]),
        .O(gpio_data_in_xor[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[10]_i_1 
       (.I0(gpio_io_i_d2[10]),
        .I1(Q[5]),
        .O(gpio_data_in_xor[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[11]_i_1 
       (.I0(gpio_io_i_d2[11]),
        .I1(Q[4]),
        .O(gpio_data_in_xor[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[12]_i_1 
       (.I0(gpio_io_i_d2[12]),
        .I1(Q[3]),
        .O(gpio_data_in_xor[12]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[13]_i_1 
       (.I0(gpio_io_i_d2[13]),
        .I1(Q[2]),
        .O(gpio_data_in_xor[13]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[14]_i_1 
       (.I0(gpio_io_i_d2[14]),
        .I1(Q[1]),
        .O(gpio_data_in_xor[14]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[15]_i_1 
       (.I0(gpio_io_i_d2[15]),
        .I1(Q[0]),
        .O(gpio_data_in_xor[15]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[1]_i_1 
       (.I0(gpio_io_i_d2[1]),
        .I1(Q[14]),
        .O(gpio_data_in_xor[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[2]_i_1 
       (.I0(gpio_io_i_d2[2]),
        .I1(Q[13]),
        .O(gpio_data_in_xor[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[3]_i_1 
       (.I0(gpio_io_i_d2[3]),
        .I1(Q[12]),
        .O(gpio_data_in_xor[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[4]_i_1 
       (.I0(gpio_io_i_d2[4]),
        .I1(Q[11]),
        .O(gpio_data_in_xor[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[5]_i_1 
       (.I0(gpio_io_i_d2[5]),
        .I1(Q[10]),
        .O(gpio_data_in_xor[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[6]_i_1 
       (.I0(gpio_io_i_d2[6]),
        .I1(Q[9]),
        .O(gpio_data_in_xor[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[7]_i_1 
       (.I0(gpio_io_i_d2[7]),
        .I1(Q[8]),
        .O(gpio_data_in_xor[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[8]_i_1 
       (.I0(gpio_io_i_d2[8]),
        .I1(Q[7]),
        .O(gpio_data_in_xor[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \Dual.gen_interrupt_dual.gpio_data_in_xor_reg[9]_i_1 
       (.I0(gpio_io_i_d2[9]),
        .I1(Q[6]),
        .O(gpio_data_in_xor[9]));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[0]),
        .Q(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[0] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[10]),
        .Q(p_9_in11_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[11]),
        .Q(p_10_in12_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[12]),
        .Q(p_11_in13_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[13]),
        .Q(p_12_in14_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[14]),
        .Q(p_13_in15_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[15]),
        .Q(\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[15] ),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[1]),
        .Q(p_0_in2_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[2]),
        .Q(p_1_in3_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[3]),
        .Q(p_2_in4_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[4]),
        .Q(p_3_in5_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[5]),
        .Q(p_4_in6_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[6]),
        .Q(p_5_in7_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[7]),
        .Q(p_6_in8_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[8]),
        .Q(p_7_in9_in),
        .R(bus2ip_reset));
  FDRE \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[9]),
        .Q(p_8_in10_in),
        .R(bus2ip_reset));
  FDRE \Dual.gpio2_Data_In_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_io_i_d2 [0]),
        .Q(\Dual.gpio2_Data_In [0]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_io_i_d2 [10]),
        .Q(\Dual.gpio2_Data_In [10]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_io_i_d2 [11]),
        .Q(\Dual.gpio2_Data_In [11]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_io_i_d2 [12]),
        .Q(\Dual.gpio2_Data_In [12]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_io_i_d2 [13]),
        .Q(\Dual.gpio2_Data_In [13]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_io_i_d2 [14]),
        .Q(\Dual.gpio2_Data_In [14]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_io_i_d2 [15]),
        .Q(\Dual.gpio2_Data_In [15]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_io_i_d2 [1]),
        .Q(\Dual.gpio2_Data_In [1]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_io_i_d2 [2]),
        .Q(\Dual.gpio2_Data_In [2]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_io_i_d2 [3]),
        .Q(\Dual.gpio2_Data_In [3]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_io_i_d2 [4]),
        .Q(\Dual.gpio2_Data_In [4]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_io_i_d2 [5]),
        .Q(\Dual.gpio2_Data_In [5]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_io_i_d2 [6]),
        .Q(\Dual.gpio2_Data_In [6]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_io_i_d2 [7]),
        .Q(\Dual.gpio2_Data_In [7]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_io_i_d2 [8]),
        .Q(\Dual.gpio2_Data_In [8]),
        .R(1'b0));
  FDRE \Dual.gpio2_Data_In_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\Dual.gpio2_io_i_d2 [9]),
        .Q(\Dual.gpio2_Data_In [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[15]),
        .Q(gpio2_io_o[15]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(gpio2_io_o[5]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(gpio2_io_o[4]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(gpio2_io_o[3]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(gpio2_io_o[2]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(gpio2_io_o[1]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(gpio2_io_o[0]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[14]),
        .Q(gpio2_io_o[14]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[13]),
        .Q(gpio2_io_o[13]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[12]),
        .Q(gpio2_io_o[12]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[11]),
        .Q(gpio2_io_o[11]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[10]),
        .Q(gpio2_io_o[10]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[9]),
        .Q(gpio2_io_o[9]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[8]),
        .Q(gpio2_io_o[8]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(gpio2_io_o[7]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Dual.gpio2_Data_Out_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(gpio2_io_o[6]),
        .R(bus2ip_reset));
  FDRE \Dual.gpio_Data_In_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[0]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[10]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[11]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[12]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[13]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[14]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[15]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[1]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[2]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[3]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[4]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[5]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[6]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[7]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[8]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \Dual.gpio_Data_In_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[9]),
        .Q(Q[6]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[0] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_1 ),
        .D(s_axi_wdata[15]),
        .Q(\Dual.gpio_OE_reg[0]_0 [15]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[10] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_1 ),
        .D(s_axi_wdata[5]),
        .Q(\Dual.gpio_OE_reg[0]_0 [5]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[11] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_1 ),
        .D(s_axi_wdata[4]),
        .Q(\Dual.gpio_OE_reg[0]_0 [4]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[12] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_1 ),
        .D(s_axi_wdata[3]),
        .Q(\Dual.gpio_OE_reg[0]_0 [3]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[13] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_1 ),
        .D(s_axi_wdata[2]),
        .Q(\Dual.gpio_OE_reg[0]_0 [2]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[14] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_1 ),
        .D(s_axi_wdata[1]),
        .Q(\Dual.gpio_OE_reg[0]_0 [1]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[15] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_1 ),
        .D(s_axi_wdata[0]),
        .Q(\Dual.gpio_OE_reg[0]_0 [0]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[1] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_1 ),
        .D(s_axi_wdata[14]),
        .Q(\Dual.gpio_OE_reg[0]_0 [14]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[2] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_1 ),
        .D(s_axi_wdata[13]),
        .Q(\Dual.gpio_OE_reg[0]_0 [13]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[3] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_1 ),
        .D(s_axi_wdata[12]),
        .Q(\Dual.gpio_OE_reg[0]_0 [12]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[4] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_1 ),
        .D(s_axi_wdata[11]),
        .Q(\Dual.gpio_OE_reg[0]_0 [11]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[5] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_1 ),
        .D(s_axi_wdata[10]),
        .Q(\Dual.gpio_OE_reg[0]_0 [10]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[6] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_1 ),
        .D(s_axi_wdata[9]),
        .Q(\Dual.gpio_OE_reg[0]_0 [9]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[7] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_1 ),
        .D(s_axi_wdata[8]),
        .Q(\Dual.gpio_OE_reg[0]_0 [8]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[8] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_1 ),
        .D(s_axi_wdata[7]),
        .Q(\Dual.gpio_OE_reg[0]_0 [7]),
        .S(bus2ip_reset));
  FDSE #(
    .INIT(1'b1)) 
    \Dual.gpio_OE_reg[9] 
       (.C(s_axi_aclk),
        .CE(\Dual.gpio_OE_reg[0]_1 ),
        .D(s_axi_wdata[6]),
        .Q(\Dual.gpio_OE_reg[0]_0 [6]),
        .S(bus2ip_reset));
  FDRE gpio_xferAck_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_xferAck_i),
        .Q(gpio_xferAck_Reg),
        .R(bus2ip_reset));
  LUT3 #(
    .INIT(8'h04)) 
    iGPIO_xferAck_i_1
       (.I0(gpio_xferAck_Reg),
        .I1(bus2ip_cs),
        .I2(GPIO_xferAck_i),
        .O(iGPIO_xferAck));
  FDRE iGPIO_xferAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iGPIO_xferAck),
        .Q(GPIO_xferAck_i),
        .R(bus2ip_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_1 
       (.I0(p_12_in),
        .I1(p_11_in),
        .I2(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[15] ),
        .I3(p_13_in),
        .I4(\or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_2_n_0 ),
        .I5(\or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_3_n_0 ),
        .O(or_reduce));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_2 
       (.I0(p_0_in),
        .I1(\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[0] ),
        .I2(p_2_in),
        .I3(p_1_in_0),
        .I4(p_3_in),
        .I5(p_4_in),
        .O(\or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_3 
       (.I0(p_6_in),
        .I1(p_5_in),
        .I2(p_8_in),
        .I3(p_7_in),
        .I4(p_9_in),
        .I5(p_10_in),
        .O(\or_reduce_inferred__0/Dual.gen_interrupt_dual.GPIO2_intr_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module design_1_axi_gpio_0_0_address_decoder
   (\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    E,
    bus2ip_rnw_i_reg,
    Bus_RNW_reg_reg_0,
    interrupt_wrce_strb,
    intr2bus_rdack0,
    irpt_rdack,
    ip2Bus_WrAck_intr_reg_hole0,
    ip2Bus_RdAck_intr_reg_hole0,
    intr_rd_ce_or_reduce,
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0 ,
    D,
    \s_axi_wdata[31] ,
    bus2ip_rnw_i_reg_0,
    Bus_RNW_reg_reg_1,
    Bus_RNW_reg_reg_2,
    ip2bus_wrack_i_D1_reg,
    ip2bus_rdack_i_D1_reg,
    Q,
    s_axi_aclk,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] ,
    irpt_wrack_d1,
    irpt_rdack_d1,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ipif_glbl_irpt_enable_reg,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg ,
    \ip2bus_data_i_D1_reg[31] ,
    \ip2bus_data_i_D1_reg[30] ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg ,
    p_1_in_0,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ,
    s_axi_wdata,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    s_axi_aresetn,
    ip2bus_rdack_i_D1,
    s_axi_arready,
    s_axi_arready_0,
    ip2bus_wrack_i_D1,
    s_axi_awready);
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  output [0:0]E;
  output [0:0]bus2ip_rnw_i_reg;
  output Bus_RNW_reg_reg_0;
  output interrupt_wrce_strb;
  output intr2bus_rdack0;
  output irpt_rdack;
  output ip2Bus_WrAck_intr_reg_hole0;
  output ip2Bus_RdAck_intr_reg_hole0;
  output intr_rd_ce_or_reduce;
  output [0:0]\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0 ;
  output [17:0]D;
  output \s_axi_wdata[31] ;
  output bus2ip_rnw_i_reg_0;
  output Bus_RNW_reg_reg_1;
  output Bus_RNW_reg_reg_2;
  output ip2bus_wrack_i_D1_reg;
  output ip2bus_rdack_i_D1_reg;
  input Q;
  input s_axi_aclk;
  input [6:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] ;
  input irpt_wrack_d1;
  input irpt_rdack_d1;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input ipif_glbl_irpt_enable_reg;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg ;
  input \ip2bus_data_i_D1_reg[31] ;
  input [1:0]\ip2bus_data_i_D1_reg[30] ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg ;
  input p_1_in_0;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ;
  input [0:0]s_axi_wdata;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input s_axi_aresetn;
  input ip2bus_rdack_i_D1;
  input s_axi_arready;
  input [3:0]s_axi_arready_0;
  input ip2bus_wrack_i_D1;
  input s_axi_awready;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_i_1_n_0;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire Bus_RNW_reg_reg_2;
  wire [17:0]D;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg ;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0 ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0 ;
  wire GPIO_xferAck_i;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_2_n_0 ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire [6:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ;
  wire Q;
  wire [0:0]bus2ip_rnw_i_reg;
  wire bus2ip_rnw_i_reg_0;
  wire ce_expnd_i_0;
  wire ce_expnd_i_1;
  wire ce_expnd_i_10;
  wire ce_expnd_i_11;
  wire ce_expnd_i_12;
  wire ce_expnd_i_13;
  wire ce_expnd_i_14;
  wire ce_expnd_i_15;
  wire ce_expnd_i_17;
  wire ce_expnd_i_18;
  wire ce_expnd_i_2;
  wire ce_expnd_i_3;
  wire ce_expnd_i_4;
  wire ce_expnd_i_5;
  wire ce_expnd_i_6;
  wire ce_expnd_i_7;
  wire ce_expnd_i_9;
  wire cs_ce_clr;
  wire gpio_xferAck_Reg;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_rd_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire \ip2bus_data_i_D1[16]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[16]_i_3_n_0 ;
  wire \ip2bus_data_i_D1[30]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[31]_i_2_n_0 ;
  wire [1:0]\ip2bus_data_i_D1_reg[30] ;
  wire \ip2bus_data_i_D1_reg[31] ;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack_d1;
  wire p_10_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in;
  wire p_16_in;
  wire p_17_in;
  wire p_18_in;
  wire p_19_in;
  wire p_1_in;
  wire p_1_in_0;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire p_9_in;
  wire pselect_hit_i_1;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire [3:0]s_axi_arready_0;
  wire s_axi_awready;
  wire [0:0]s_axi_wdata;
  wire \s_axi_wdata[31] ;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] ),
        .I1(Q),
        .I2(Bus_RNW_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3[31]_i_1 
       (.I0(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] ),
        .I1(GPIO_xferAck_i),
        .I2(gpio_xferAck_Reg),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .O(bus2ip_rnw_i_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \Dual.gpio2_Data_Out[0]_i_1 
       (.I0(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] ),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [6]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \Dual.gpio_OE[0]_i_1 
       (.I0(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] ),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [6]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .O(bus2ip_rnw_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(pselect_hit_i_1),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ),
        .Q(p_19_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [3]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [2]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [6]),
        .O(ce_expnd_i_9));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_9),
        .Q(p_9_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [6]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [2]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [3]),
        .O(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ),
        .Q(p_8_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [6]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [3]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .O(ce_expnd_i_7));
  FDRE \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_7),
        .Q(p_7_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [2]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [6]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [3]),
        .O(ce_expnd_i_6));
  FDRE \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_6),
        .Q(p_6_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [2]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [6]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [3]),
        .O(ce_expnd_i_5));
  FDRE \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_5),
        .Q(p_5_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [2]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [3]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [6]),
        .O(ce_expnd_i_4));
  FDRE \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_4),
        .Q(p_4_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [6]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [3]),
        .O(ce_expnd_i_3));
  FDRE \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(p_3_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [6]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [3]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [2]),
        .O(ce_expnd_i_2));
  FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(p_2_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [6]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [3]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [2]),
        .O(ce_expnd_i_1));
  FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(p_1_in),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(ip2bus_rdack_i_D1_reg),
        .I2(s_axi_aresetn),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_2 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [3]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [6]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [2]),
        .O(ce_expnd_i_0));
  FDRE \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .I2(pselect_hit_i_1),
        .O(ce_expnd_i_18));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_18),
        .Q(p_18_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .I1(pselect_hit_i_1),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .O(ce_expnd_i_17));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_17),
        .Q(p_17_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .I2(pselect_hit_i_1),
        .O(\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0 ),
        .Q(p_16_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [6]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [3]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .O(ce_expnd_i_15));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_15),
        .Q(p_15_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [6]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [3]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .O(ce_expnd_i_14));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_14),
        .Q(p_14_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [6]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [3]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .O(ce_expnd_i_13));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_13),
        .Q(p_13_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [3]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [2]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [6]),
        .O(ce_expnd_i_12));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_12),
        .Q(p_12_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [2]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [6]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [3]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .O(ce_expnd_i_11));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_11),
        .Q(p_11_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [3]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [0]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [1]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [6]),
        .O(ce_expnd_i_10));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_10),
        .Q(p_10_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2 
       (.I0(Bus_RNW_reg),
        .I1(irpt_wrack_d1),
        .I2(p_7_in),
        .O(Bus_RNW_reg_reg_0));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_d1_i_1 
       (.I0(Bus_RNW_reg),
        .I1(p_13_in),
        .I2(p_12_in),
        .I3(p_14_in),
        .I4(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I5(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .O(intr_rd_ce_or_reduce));
  LUT5 #(
    .INIT(32'h0000FD00)) 
    \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_i_1 
       (.I0(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .I1(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I2(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_2_n_0 ),
        .I3(Bus_RNW_reg),
        .I4(ip2Bus_RdAck_intr_reg_hole_d1),
        .O(ip2Bus_RdAck_intr_reg_hole0));
  LUT6 #(
    .INIT(64'h5555555455555555)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_1 
       (.I0(Bus_RNW_reg),
        .I1(p_13_in),
        .I2(p_12_in),
        .I3(p_14_in),
        .I4(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I5(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .O(Bus_RNW_reg_reg_2));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2 
       (.I0(p_1_in),
        .I1(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ),
        .I2(p_10_in),
        .I3(p_2_in),
        .O(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3 
       (.I0(p_4_in),
        .I1(p_3_in),
        .I2(p_15_in),
        .I3(p_6_in),
        .I4(p_9_in),
        .I5(p_11_in),
        .O(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h000000FD)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_1 
       (.I0(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .I1(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I2(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_2_n_0 ),
        .I3(Bus_RNW_reg),
        .I4(ip2Bus_WrAck_intr_reg_hole_d1),
        .O(ip2Bus_WrAck_intr_reg_hole0));
  LUT3 #(
    .INIT(8'hFE)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_2 
       (.I0(p_14_in),
        .I1(p_12_in),
        .I2(p_13_in),
        .O(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [2]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [6]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [3]),
        .I3(Q),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [5]),
        .I5(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 [4]),
        .O(pselect_hit_i_1));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(pselect_hit_i_1),
        .Q(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h0000FE00)) 
    intr2bus_rdack_i_1
       (.I0(p_8_in),
        .I1(p_7_in),
        .I2(p_5_in),
        .I3(Bus_RNW_reg),
        .I4(irpt_rdack_d1),
        .O(intr2bus_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h000000FE)) 
    intr2bus_wrack_i_1
       (.I0(p_5_in),
        .I1(p_7_in),
        .I2(p_8_in),
        .I3(Bus_RNW_reg),
        .I4(irpt_wrack_d1),
        .O(interrupt_wrce_strb));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \ip2bus_data_i_D1[0]_i_1 
       (.I0(D[16]),
        .I1(ipif_glbl_irpt_enable_reg),
        .I2(p_5_in),
        .I3(p_8_in),
        .I4(Bus_RNW_reg),
        .I5(p_7_in),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \ip2bus_data_i_D1[16]_i_1 
       (.I0(\ip2bus_data_i_D1[16]_i_2_n_0 ),
        .I1(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg ),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ),
        .I3(\ip2bus_data_i_D1[16]_i_3_n_0 ),
        .I4(D[16]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \ip2bus_data_i_D1[16]_i_2 
       (.I0(Bus_RNW_reg),
        .I1(p_19_in),
        .I2(p_17_in),
        .I3(p_16_in),
        .I4(p_18_in),
        .O(\ip2bus_data_i_D1[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \ip2bus_data_i_D1[16]_i_3 
       (.I0(p_18_in),
        .I1(p_16_in),
        .I2(Bus_RNW_reg),
        .I3(p_17_in),
        .I4(p_19_in),
        .O(\ip2bus_data_i_D1[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \ip2bus_data_i_D1[17]_i_1 
       (.I0(\ip2bus_data_i_D1[16]_i_2_n_0 ),
        .I1(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg ),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ),
        .I3(\ip2bus_data_i_D1[16]_i_3_n_0 ),
        .I4(D[16]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \ip2bus_data_i_D1[18]_i_1 
       (.I0(\ip2bus_data_i_D1[16]_i_2_n_0 ),
        .I1(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg ),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ),
        .I3(\ip2bus_data_i_D1[16]_i_3_n_0 ),
        .I4(D[16]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \ip2bus_data_i_D1[19]_i_1 
       (.I0(\ip2bus_data_i_D1[16]_i_2_n_0 ),
        .I1(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg ),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ),
        .I3(\ip2bus_data_i_D1[16]_i_3_n_0 ),
        .I4(D[16]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000600)) 
    \ip2bus_data_i_D1[1]_i_1 
       (.I0(p_18_in),
        .I1(p_16_in),
        .I2(p_19_in),
        .I3(Bus_RNW_reg),
        .I4(p_17_in),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \ip2bus_data_i_D1[20]_i_1 
       (.I0(\ip2bus_data_i_D1[16]_i_2_n_0 ),
        .I1(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg ),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ),
        .I3(\ip2bus_data_i_D1[16]_i_3_n_0 ),
        .I4(D[16]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \ip2bus_data_i_D1[21]_i_1 
       (.I0(\ip2bus_data_i_D1[16]_i_2_n_0 ),
        .I1(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg ),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ),
        .I3(\ip2bus_data_i_D1[16]_i_3_n_0 ),
        .I4(D[16]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \ip2bus_data_i_D1[22]_i_1 
       (.I0(\ip2bus_data_i_D1[16]_i_2_n_0 ),
        .I1(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg ),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ),
        .I3(\ip2bus_data_i_D1[16]_i_3_n_0 ),
        .I4(D[16]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \ip2bus_data_i_D1[23]_i_1 
       (.I0(\ip2bus_data_i_D1[16]_i_2_n_0 ),
        .I1(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg ),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ),
        .I3(\ip2bus_data_i_D1[16]_i_3_n_0 ),
        .I4(D[16]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \ip2bus_data_i_D1[24]_i_1 
       (.I0(\ip2bus_data_i_D1[16]_i_2_n_0 ),
        .I1(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg ),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ),
        .I3(\ip2bus_data_i_D1[16]_i_3_n_0 ),
        .I4(D[16]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \ip2bus_data_i_D1[25]_i_1 
       (.I0(\ip2bus_data_i_D1[16]_i_2_n_0 ),
        .I1(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg ),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ),
        .I3(\ip2bus_data_i_D1[16]_i_3_n_0 ),
        .I4(D[16]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \ip2bus_data_i_D1[26]_i_1 
       (.I0(\ip2bus_data_i_D1[16]_i_2_n_0 ),
        .I1(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg ),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ),
        .I3(\ip2bus_data_i_D1[16]_i_3_n_0 ),
        .I4(D[16]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \ip2bus_data_i_D1[27]_i_1 
       (.I0(\ip2bus_data_i_D1[16]_i_2_n_0 ),
        .I1(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg ),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ),
        .I3(\ip2bus_data_i_D1[16]_i_3_n_0 ),
        .I4(D[16]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \ip2bus_data_i_D1[28]_i_1 
       (.I0(\ip2bus_data_i_D1[16]_i_2_n_0 ),
        .I1(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg ),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ),
        .I3(\ip2bus_data_i_D1[16]_i_3_n_0 ),
        .I4(D[16]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \ip2bus_data_i_D1[29]_i_1 
       (.I0(\ip2bus_data_i_D1[16]_i_2_n_0 ),
        .I1(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg ),
        .I2(\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ),
        .I3(\ip2bus_data_i_D1[16]_i_3_n_0 ),
        .I4(D[16]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF44F4)) 
    \ip2bus_data_i_D1[30]_i_1 
       (.I0(\ip2bus_data_i_D1[16]_i_3_n_0 ),
        .I1(\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ),
        .I2(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg ),
        .I3(\ip2bus_data_i_D1[16]_i_2_n_0 ),
        .I4(D[16]),
        .I5(\ip2bus_data_i_D1[30]_i_2_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hAA00C000)) 
    \ip2bus_data_i_D1[30]_i_2 
       (.I0(p_1_in_0),
        .I1(p_5_in),
        .I2(\ip2bus_data_i_D1_reg[30] [1]),
        .I3(Bus_RNW_reg),
        .I4(p_7_in),
        .O(\ip2bus_data_i_D1[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFF4FFFFFFF4)) 
    \ip2bus_data_i_D1[31]_i_1 
       (.I0(\ip2bus_data_i_D1[16]_i_3_n_0 ),
        .I1(\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ),
        .I2(D[16]),
        .I3(\ip2bus_data_i_D1[31]_i_2_n_0 ),
        .I4(\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg ),
        .I5(\ip2bus_data_i_D1[16]_i_2_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAA00C000)) 
    \ip2bus_data_i_D1[31]_i_2 
       (.I0(\ip2bus_data_i_D1_reg[31] ),
        .I1(p_5_in),
        .I2(\ip2bus_data_i_D1_reg[30] [0]),
        .I3(Bus_RNW_reg),
        .I4(p_7_in),
        .O(\ip2bus_data_i_D1[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ip_irpt_enable_reg[1]_i_1 
       (.I0(p_5_in),
        .I1(Bus_RNW_reg),
        .O(\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    ipif_glbl_irpt_enable_reg_i_1
       (.I0(s_axi_wdata),
        .I1(p_8_in),
        .I2(Bus_RNW_reg),
        .I3(ipif_glbl_irpt_enable_reg),
        .O(\s_axi_wdata[31] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    irpt_rdack_d1_i_1
       (.I0(Bus_RNW_reg),
        .I1(p_5_in),
        .I2(p_7_in),
        .I3(p_8_in),
        .O(irpt_rdack));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h5554)) 
    irpt_wrack_d1_i_1
       (.I0(Bus_RNW_reg),
        .I1(p_5_in),
        .I2(p_7_in),
        .I3(p_8_in),
        .O(Bus_RNW_reg_reg_1));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_arready_INST_0
       (.I0(ip2bus_rdack_i_D1),
        .I1(s_axi_arready),
        .I2(s_axi_arready_0[2]),
        .I3(s_axi_arready_0[1]),
        .I4(s_axi_arready_0[3]),
        .I5(s_axi_arready_0[0]),
        .O(ip2bus_rdack_i_D1_reg));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack_i_D1),
        .I1(s_axi_awready),
        .I2(s_axi_arready_0[2]),
        .I3(s_axi_arready_0[1]),
        .I4(s_axi_arready_0[3]),
        .I5(s_axi_arready_0[0]),
        .O(ip2bus_wrack_i_D1_reg));
endmodule

(* C_ALL_INPUTS = "1" *) (* C_ALL_INPUTS_2 = "0" *) (* C_ALL_OUTPUTS = "0" *) 
(* C_ALL_OUTPUTS_2 = "1" *) (* C_DOUT_DEFAULT = "32'b00000000000000000000000000000000" *) (* C_DOUT_DEFAULT_2 = "32'b00000000000000000000000000000000" *) 
(* C_FAMILY = "zynquplus" *) (* C_GPIO2_WIDTH = "16" *) (* C_GPIO_WIDTH = "16" *) 
(* C_INTERRUPT_PRESENT = "1" *) (* C_IS_DUAL = "1" *) (* C_S_AXI_ADDR_WIDTH = "9" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_TRI_DEFAULT = "32'b11111111111111111111111111111111" *) (* C_TRI_DEFAULT_2 = "32'b11111111111111111111111111111111" *) 
(* ORIG_REF_NAME = "axi_gpio" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_group = "LOGICORE" *) 
module design_1_axi_gpio_0_0_axi_gpio
   (s_axi_aclk,
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
    ip2intc_irpt,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t,
    gpio2_io_i,
    gpio2_io_o,
    gpio2_io_t);
  (* sigis = "Clk" *) input s_axi_aclk;
  (* sigis = "Rst" *) input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* sigis = "INTR_LEVEL_HIGH" *) output ip2intc_irpt;
  input [15:0]gpio_io_i;
  output [15:0]gpio_io_o;
  output [15:0]gpio_io_t;
  input [15:0]gpio2_io_i;
  output [15:0]gpio2_io_o;
  output [15:0]gpio2_io_t;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_10;
  wire AXI_LITE_IPIF_I_n_11;
  wire AXI_LITE_IPIF_I_n_12;
  wire AXI_LITE_IPIF_I_n_13;
  wire AXI_LITE_IPIF_I_n_14;
  wire AXI_LITE_IPIF_I_n_15;
  wire AXI_LITE_IPIF_I_n_16;
  wire AXI_LITE_IPIF_I_n_17;
  wire AXI_LITE_IPIF_I_n_18;
  wire AXI_LITE_IPIF_I_n_19;
  wire AXI_LITE_IPIF_I_n_20;
  wire AXI_LITE_IPIF_I_n_21;
  wire AXI_LITE_IPIF_I_n_22;
  wire AXI_LITE_IPIF_I_n_23;
  wire AXI_LITE_IPIF_I_n_5;
  wire AXI_LITE_IPIF_I_n_51;
  wire AXI_LITE_IPIF_I_n_52;
  wire AXI_LITE_IPIF_I_n_53;
  wire AXI_LITE_IPIF_I_n_54;
  wire AXI_LITE_IPIF_I_n_6;
  wire AXI_LITE_IPIF_I_n_7;
  wire AXI_LITE_IPIF_I_n_9;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg ;
  wire GPIO2_intr;
  wire GPIO_intr;
  wire GPIO_xferAck_i;
  wire \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_1 ;
  wire \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_9 ;
  wire IP2INTC_Irpt_i;
  wire [1:1]bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire [5:5]bus2ip_wrce;
  wire [15:0]gpio2_io_o;
  wire [0:15]gpio_Data_In;
  wire gpio_core_1_n_68;
  wire gpio_core_1_n_69;
  wire gpio_core_1_n_70;
  wire gpio_core_1_n_71;
  wire gpio_core_1_n_72;
  wire gpio_core_1_n_73;
  wire gpio_core_1_n_74;
  wire gpio_core_1_n_75;
  wire gpio_core_1_n_76;
  wire gpio_core_1_n_77;
  wire gpio_core_1_n_78;
  wire gpio_core_1_n_79;
  wire gpio_core_1_n_80;
  wire gpio_core_1_n_81;
  wire gpio_core_1_n_82;
  wire gpio_core_1_n_83;
  wire [15:0]gpio_io_i;
  wire gpio_xferAck_Reg;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_rd_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire [0:29]ip2bus_data;
  wire [0:31]ip2bus_data_i;
  wire [0:31]ip2bus_data_i_D1;
  wire ip2bus_rdack_i;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_wrack_i;
  wire ip2bus_wrack_i_D1;
  wire ip2intc_irpt;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack_d1;
  wire p_0_in0_in;
  wire p_1_in;
  wire p_1_in_0;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wvalid;

  assign gpio2_io_t[15] = \<const0> ;
  assign gpio2_io_t[14] = \<const0> ;
  assign gpio2_io_t[13] = \<const0> ;
  assign gpio2_io_t[12] = \<const0> ;
  assign gpio2_io_t[11] = \<const0> ;
  assign gpio2_io_t[10] = \<const0> ;
  assign gpio2_io_t[9] = \<const0> ;
  assign gpio2_io_t[8] = \<const0> ;
  assign gpio2_io_t[7] = \<const0> ;
  assign gpio2_io_t[6] = \<const0> ;
  assign gpio2_io_t[5] = \<const0> ;
  assign gpio2_io_t[4] = \<const0> ;
  assign gpio2_io_t[3] = \<const0> ;
  assign gpio2_io_t[2] = \<const0> ;
  assign gpio2_io_t[1] = \<const0> ;
  assign gpio2_io_t[0] = \<const0> ;
  assign gpio_io_o[15] = \<const0> ;
  assign gpio_io_o[14] = \<const0> ;
  assign gpio_io_o[13] = \<const0> ;
  assign gpio_io_o[12] = \<const0> ;
  assign gpio_io_o[11] = \<const0> ;
  assign gpio_io_o[10] = \<const0> ;
  assign gpio_io_o[9] = \<const0> ;
  assign gpio_io_o[8] = \<const0> ;
  assign gpio_io_o[7] = \<const0> ;
  assign gpio_io_o[6] = \<const0> ;
  assign gpio_io_o[5] = \<const0> ;
  assign gpio_io_o[4] = \<const0> ;
  assign gpio_io_o[3] = \<const0> ;
  assign gpio_io_o[2] = \<const0> ;
  assign gpio_io_o[1] = \<const0> ;
  assign gpio_io_o[0] = \<const0> ;
  assign gpio_io_t[15] = \<const0> ;
  assign gpio_io_t[14] = \<const0> ;
  assign gpio_io_t[13] = \<const0> ;
  assign gpio_io_t[12] = \<const0> ;
  assign gpio_io_t[11] = \<const0> ;
  assign gpio_io_t[10] = \<const0> ;
  assign gpio_io_t[9] = \<const0> ;
  assign gpio_io_t[8] = \<const0> ;
  assign gpio_io_t[7] = \<const0> ;
  assign gpio_io_t[6] = \<const0> ;
  assign gpio_io_t[5] = \<const0> ;
  assign gpio_io_t[4] = \<const0> ;
  assign gpio_io_t[3] = \<const0> ;
  assign gpio_io_t[2] = \<const0> ;
  assign gpio_io_t[1] = \<const0> ;
  assign gpio_io_t[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \^s_axi_rdata [31];
  assign s_axi_rdata[30] = \^s_axi_rdata [29];
  assign s_axi_rdata[29] = \^s_axi_rdata [29];
  assign s_axi_rdata[28] = \^s_axi_rdata [29];
  assign s_axi_rdata[27] = \^s_axi_rdata [29];
  assign s_axi_rdata[26] = \^s_axi_rdata [29];
  assign s_axi_rdata[25] = \^s_axi_rdata [29];
  assign s_axi_rdata[24] = \^s_axi_rdata [29];
  assign s_axi_rdata[23] = \^s_axi_rdata [29];
  assign s_axi_rdata[22] = \^s_axi_rdata [29];
  assign s_axi_rdata[21] = \^s_axi_rdata [29];
  assign s_axi_rdata[20] = \^s_axi_rdata [29];
  assign s_axi_rdata[19] = \^s_axi_rdata [29];
  assign s_axi_rdata[18] = \^s_axi_rdata [29];
  assign s_axi_rdata[17] = \^s_axi_rdata [29];
  assign s_axi_rdata[16] = \^s_axi_rdata [29];
  assign s_axi_rdata[15:0] = \^s_axi_rdata [15:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  design_1_axi_gpio_0_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.Bus_RNW_reg_reg(AXI_LITE_IPIF_I_n_23),
        .Bus_RNW_reg_reg_0(AXI_LITE_IPIF_I_n_53),
        .Bus_RNW_reg_reg_1(AXI_LITE_IPIF_I_n_54),
        .D({ip2bus_data_i[0],ip2bus_data[0],ip2bus_data[16],ip2bus_data[17],ip2bus_data[18],ip2bus_data[19],ip2bus_data[20],ip2bus_data[21],ip2bus_data[22],ip2bus_data[23],ip2bus_data[24],ip2bus_data[25],ip2bus_data[26],ip2bus_data[27],ip2bus_data[28],ip2bus_data[29],ip2bus_data_i[30],ip2bus_data_i[31]}),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] ({gpio_core_1_n_68,gpio_core_1_n_69,gpio_core_1_n_70,gpio_core_1_n_71,gpio_core_1_n_72,gpio_core_1_n_73,gpio_core_1_n_74,gpio_core_1_n_75,gpio_core_1_n_76,gpio_core_1_n_77,gpio_core_1_n_78,gpio_core_1_n_79,gpio_core_1_n_80,gpio_core_1_n_81,gpio_core_1_n_82,gpio_core_1_n_83}),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg ),
        .\Dual.gpio_Data_In_reg[0] (AXI_LITE_IPIF_I_n_22),
        .\Dual.gpio_Data_In_reg[10] (AXI_LITE_IPIF_I_n_12),
        .\Dual.gpio_Data_In_reg[11] (AXI_LITE_IPIF_I_n_11),
        .\Dual.gpio_Data_In_reg[12] (AXI_LITE_IPIF_I_n_10),
        .\Dual.gpio_Data_In_reg[13] (AXI_LITE_IPIF_I_n_9),
        .\Dual.gpio_Data_In_reg[15] (AXI_LITE_IPIF_I_n_7),
        .\Dual.gpio_Data_In_reg[1] (AXI_LITE_IPIF_I_n_21),
        .\Dual.gpio_Data_In_reg[2] (AXI_LITE_IPIF_I_n_20),
        .\Dual.gpio_Data_In_reg[3] (AXI_LITE_IPIF_I_n_19),
        .\Dual.gpio_Data_In_reg[4] (AXI_LITE_IPIF_I_n_18),
        .\Dual.gpio_Data_In_reg[5] (AXI_LITE_IPIF_I_n_17),
        .\Dual.gpio_Data_In_reg[6] (AXI_LITE_IPIF_I_n_16),
        .\Dual.gpio_Data_In_reg[7] (AXI_LITE_IPIF_I_n_15),
        .\Dual.gpio_Data_In_reg[8] (AXI_LITE_IPIF_I_n_14),
        .\Dual.gpio_Data_In_reg[9] (AXI_LITE_IPIF_I_n_13),
        .E(AXI_LITE_IPIF_I_n_5),
        .\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] (bus2ip_wrce),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .Q({gpio_Data_In[0],gpio_Data_In[1],gpio_Data_In[2],gpio_Data_In[3],gpio_Data_In[4],gpio_Data_In[5],gpio_Data_In[6],gpio_Data_In[7],gpio_Data_In[8],gpio_Data_In[9],gpio_Data_In[10],gpio_Data_In[11],gpio_Data_In[12],gpio_Data_In[13],gpio_Data_In[14],gpio_Data_In[15]}),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .bus2ip_rnw_i_reg(AXI_LITE_IPIF_I_n_6),
        .bus2ip_rnw_i_reg_0(AXI_LITE_IPIF_I_n_52),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_rd_ce_or_reduce(intr_rd_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .\ip2bus_data_i_D1_reg[30] ({p_0_in0_in,\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_9 }),
        .\ip2bus_data_i_D1_reg[31] (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_1 ),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(s_axi_arready),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(s_axi_awready),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_1_in(p_1_in),
        .p_1_in_0(p_1_in_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[8:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[8:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg(s_axi_bvalid),
        .s_axi_rdata({\^s_axi_rdata [31],\^s_axi_rdata [29],\^s_axi_rdata [15:0]}),
        .\s_axi_rdata_i_reg[31] ({ip2bus_data_i_D1[0],ip2bus_data_i_D1[1],ip2bus_data_i_D1[16],ip2bus_data_i_D1[17],ip2bus_data_i_D1[18],ip2bus_data_i_D1[19],ip2bus_data_i_D1[20],ip2bus_data_i_D1[21],ip2bus_data_i_D1[22],ip2bus_data_i_D1[23],ip2bus_data_i_D1[24],ip2bus_data_i_D1[25],ip2bus_data_i_D1[26],ip2bus_data_i_D1[27],ip2bus_data_i_D1[28],ip2bus_data_i_D1[29],ip2bus_data_i_D1[30],ip2bus_data_i_D1[31]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[31]),
        .\s_axi_wdata[31] (AXI_LITE_IPIF_I_n_51),
        .s_axi_wvalid(s_axi_wvalid));
  GND GND
       (.G(\<const0> ));
  design_1_axi_gpio_0_0_interrupt_control \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I 
       (.E(bus2ip_wrce),
        .\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_1 ),
        .\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 (AXI_LITE_IPIF_I_n_23),
        .GPIO2_intr(GPIO2_intr),
        .GPIO_intr(GPIO_intr),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .IP2INTC_Irpt_i(IP2INTC_Irpt_i),
        .Q({p_0_in0_in,\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_9 }),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .ip2Bus_RdAck_intr_reg_hole(ip2Bus_RdAck_intr_reg_hole),
        .ip2Bus_WrAck_intr_reg_hole(ip2Bus_WrAck_intr_reg_hole),
        .ip2bus_rdack_i(ip2bus_rdack_i),
        .ip2bus_wrack_i(ip2bus_wrack_i),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .ipif_glbl_irpt_enable_reg_reg_0(AXI_LITE_IPIF_I_n_51),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack_d1(irpt_wrack_d1),
        .irpt_wrack_d1_reg_0(AXI_LITE_IPIF_I_n_53),
        .p_1_in(p_1_in_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[1:0]));
  FDRE \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_rd_ce_or_reduce),
        .Q(ip2Bus_RdAck_intr_reg_hole_d1),
        .R(bus2ip_reset));
  FDRE \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_RdAck_intr_reg_hole0),
        .Q(ip2Bus_RdAck_intr_reg_hole),
        .R(bus2ip_reset));
  FDRE \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(AXI_LITE_IPIF_I_n_54),
        .Q(ip2Bus_WrAck_intr_reg_hole_d1),
        .R(bus2ip_reset));
  FDRE \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2Bus_WrAck_intr_reg_hole0),
        .Q(ip2Bus_WrAck_intr_reg_hole),
        .R(bus2ip_reset));
  (* sigis = "INTR_LEVEL_HIGH" *) 
  FDRE \INTR_CTRLR_GEN.ip2intc_irpt_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(IP2INTC_Irpt_i),
        .Q(ip2intc_irpt),
        .R(bus2ip_reset));
  design_1_axi_gpio_0_0_GPIO_Core gpio_core_1
       (.\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_0 (AXI_LITE_IPIF_I_n_52),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16]_1 (AXI_LITE_IPIF_I_n_22),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg[26]_0 (AXI_LITE_IPIF_I_n_12),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg[27]_0 (AXI_LITE_IPIF_I_n_11),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg[28]_0 (AXI_LITE_IPIF_I_n_10),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg[29]_0 (AXI_LITE_IPIF_I_n_9),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg[31]_0 (AXI_LITE_IPIF_I_n_7),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[17]_0 (AXI_LITE_IPIF_I_n_21),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg[18]_0 (AXI_LITE_IPIF_I_n_20),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg[19]_0 (AXI_LITE_IPIF_I_n_19),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg[20]_0 (AXI_LITE_IPIF_I_n_18),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg[21]_0 (AXI_LITE_IPIF_I_n_17),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg[22]_0 (AXI_LITE_IPIF_I_n_16),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg[23]_0 (AXI_LITE_IPIF_I_n_15),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg[24]_0 (AXI_LITE_IPIF_I_n_14),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg[25]_0 (AXI_LITE_IPIF_I_n_13),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg ),
        .\Dual.gpio_OE_reg[0]_0 ({gpio_core_1_n_68,gpio_core_1_n_69,gpio_core_1_n_70,gpio_core_1_n_71,gpio_core_1_n_72,gpio_core_1_n_73,gpio_core_1_n_74,gpio_core_1_n_75,gpio_core_1_n_76,gpio_core_1_n_77,gpio_core_1_n_78,gpio_core_1_n_79,gpio_core_1_n_80,gpio_core_1_n_81,gpio_core_1_n_82,gpio_core_1_n_83}),
        .\Dual.gpio_OE_reg[0]_1 (AXI_LITE_IPIF_I_n_6),
        .E(AXI_LITE_IPIF_I_n_5),
        .GPIO2_intr(GPIO2_intr),
        .GPIO_intr(GPIO_intr),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .Q({gpio_Data_In[0],gpio_Data_In[1],gpio_Data_In[2],gpio_Data_In[3],gpio_Data_In[4],gpio_Data_In[5],gpio_Data_In[6],gpio_Data_In[7],gpio_Data_In[8],gpio_Data_In[9],gpio_Data_In[10],gpio_Data_In[11],gpio_Data_In[12],gpio_Data_In[13],gpio_Data_In[14],gpio_Data_In[15]}),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .gpio2_io_o(gpio2_io_o),
        .gpio_io_i(gpio_io_i),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .p_1_in(p_1_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[15:0]));
  FDRE \ip2bus_data_i_D1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_i[0]),
        .Q(ip2bus_data_i_D1[0]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[16]),
        .Q(ip2bus_data_i_D1[16]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[17]),
        .Q(ip2bus_data_i_D1[17]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[18]),
        .Q(ip2bus_data_i_D1[18]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[19]),
        .Q(ip2bus_data_i_D1[19]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[0]),
        .Q(ip2bus_data_i_D1[1]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[20]),
        .Q(ip2bus_data_i_D1[20]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[21]),
        .Q(ip2bus_data_i_D1[21]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[22]),
        .Q(ip2bus_data_i_D1[22]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[23]),
        .Q(ip2bus_data_i_D1[23]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[24]),
        .Q(ip2bus_data_i_D1[24]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[25]),
        .Q(ip2bus_data_i_D1[25]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[26]),
        .Q(ip2bus_data_i_D1[26]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[27]),
        .Q(ip2bus_data_i_D1[27]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[28]),
        .Q(ip2bus_data_i_D1[28]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[29]),
        .Q(ip2bus_data_i_D1[29]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_i[30]),
        .Q(ip2bus_data_i_D1[30]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_i[31]),
        .Q(ip2bus_data_i_D1[31]),
        .R(bus2ip_reset));
  FDRE ip2bus_rdack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_i),
        .Q(ip2bus_rdack_i_D1),
        .R(bus2ip_reset));
  FDRE ip2bus_wrack_i_D1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_i),
        .Q(ip2bus_wrack_i_D1),
        .R(bus2ip_reset));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module design_1_axi_gpio_0_0_axi_lite_ipif
   (bus2ip_reset,
    bus2ip_rnw,
    bus2ip_cs,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    E,
    bus2ip_rnw_i_reg,
    \Dual.gpio_Data_In_reg[15] ,
    p_1_in,
    \Dual.gpio_Data_In_reg[13] ,
    \Dual.gpio_Data_In_reg[12] ,
    \Dual.gpio_Data_In_reg[11] ,
    \Dual.gpio_Data_In_reg[10] ,
    \Dual.gpio_Data_In_reg[9] ,
    \Dual.gpio_Data_In_reg[8] ,
    \Dual.gpio_Data_In_reg[7] ,
    \Dual.gpio_Data_In_reg[6] ,
    \Dual.gpio_Data_In_reg[5] ,
    \Dual.gpio_Data_In_reg[4] ,
    \Dual.gpio_Data_In_reg[3] ,
    \Dual.gpio_Data_In_reg[2] ,
    \Dual.gpio_Data_In_reg[1] ,
    \Dual.gpio_Data_In_reg[0] ,
    Bus_RNW_reg_reg,
    interrupt_wrce_strb,
    intr2bus_rdack0,
    irpt_rdack,
    ip2Bus_WrAck_intr_reg_hole0,
    ip2Bus_RdAck_intr_reg_hole0,
    intr_rd_ce_or_reduce,
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] ,
    D,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    \s_axi_wdata[31] ,
    bus2ip_rnw_i_reg_0,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_arvalid,
    Q,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] ,
    irpt_wrack_d1,
    irpt_rdack_d1,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ipif_glbl_irpt_enable_reg,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg ,
    \ip2bus_data_i_D1_reg[31] ,
    \ip2bus_data_i_D1_reg[30] ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg ,
    p_1_in_0,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ,
    s_axi_rready,
    s_axi_bready,
    s_axi_wdata,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    s_axi_awvalid,
    s_axi_wvalid,
    \s_axi_rdata_i_reg[31] ,
    s_axi_aresetn,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr);
  output bus2ip_reset;
  output bus2ip_rnw;
  output [0:0]bus2ip_cs;
  output s_axi_rvalid_i_reg;
  output s_axi_bvalid_i_reg;
  output [0:0]E;
  output [0:0]bus2ip_rnw_i_reg;
  output \Dual.gpio_Data_In_reg[15] ;
  output p_1_in;
  output \Dual.gpio_Data_In_reg[13] ;
  output \Dual.gpio_Data_In_reg[12] ;
  output \Dual.gpio_Data_In_reg[11] ;
  output \Dual.gpio_Data_In_reg[10] ;
  output \Dual.gpio_Data_In_reg[9] ;
  output \Dual.gpio_Data_In_reg[8] ;
  output \Dual.gpio_Data_In_reg[7] ;
  output \Dual.gpio_Data_In_reg[6] ;
  output \Dual.gpio_Data_In_reg[5] ;
  output \Dual.gpio_Data_In_reg[4] ;
  output \Dual.gpio_Data_In_reg[3] ;
  output \Dual.gpio_Data_In_reg[2] ;
  output \Dual.gpio_Data_In_reg[1] ;
  output \Dual.gpio_Data_In_reg[0] ;
  output Bus_RNW_reg_reg;
  output interrupt_wrce_strb;
  output intr2bus_rdack0;
  output irpt_rdack;
  output ip2Bus_WrAck_intr_reg_hole0;
  output ip2Bus_RdAck_intr_reg_hole0;
  output intr_rd_ce_or_reduce;
  output [0:0]\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] ;
  output [17:0]D;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output \s_axi_wdata[31] ;
  output bus2ip_rnw_i_reg_0;
  output Bus_RNW_reg_reg_0;
  output Bus_RNW_reg_reg_1;
  output [17:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_arvalid;
  input [15:0]Q;
  input [15:0]\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] ;
  input irpt_wrack_d1;
  input irpt_rdack_d1;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input ipif_glbl_irpt_enable_reg;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg ;
  input \ip2bus_data_i_D1_reg[31] ;
  input [1:0]\ip2bus_data_i_D1_reg[30] ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg ;
  input p_1_in_0;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ;
  input s_axi_rready;
  input s_axi_bready;
  input [0:0]s_axi_wdata;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [17:0]\s_axi_rdata_i_reg[31] ;
  input s_axi_aresetn;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;

  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire [17:0]D;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ;
  wire [15:0]\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg ;
  wire \Dual.gpio_Data_In_reg[0] ;
  wire \Dual.gpio_Data_In_reg[10] ;
  wire \Dual.gpio_Data_In_reg[11] ;
  wire \Dual.gpio_Data_In_reg[12] ;
  wire \Dual.gpio_Data_In_reg[13] ;
  wire \Dual.gpio_Data_In_reg[15] ;
  wire \Dual.gpio_Data_In_reg[1] ;
  wire \Dual.gpio_Data_In_reg[2] ;
  wire \Dual.gpio_Data_In_reg[3] ;
  wire \Dual.gpio_Data_In_reg[4] ;
  wire \Dual.gpio_Data_In_reg[5] ;
  wire \Dual.gpio_Data_In_reg[6] ;
  wire \Dual.gpio_Data_In_reg[7] ;
  wire \Dual.gpio_Data_In_reg[8] ;
  wire \Dual.gpio_Data_In_reg[9] ;
  wire [0:0]E;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] ;
  wire GPIO_xferAck_i;
  wire [15:0]Q;
  wire [0:0]bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire [0:0]bus2ip_rnw_i_reg;
  wire bus2ip_rnw_i_reg_0;
  wire gpio_xferAck_Reg;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_rd_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire [1:0]\ip2bus_data_i_D1_reg[30] ;
  wire \ip2bus_data_i_D1_reg[31] ;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack_d1;
  wire p_1_in;
  wire p_1_in_0;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid_i_reg;
  wire [17:0]s_axi_rdata;
  wire [17:0]\s_axi_rdata_i_reg[31] ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_reg;
  wire [0:0]s_axi_wdata;
  wire \s_axi_wdata[31] ;
  wire s_axi_wvalid;

  design_1_axi_gpio_0_0_slave_attachment I_SLAVE_ATTACHMENT
       (.Bus_RNW_reg_reg(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_0(Bus_RNW_reg_reg_0),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_1),
        .D(D),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] (\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg ),
        .\Dual.gpio_Data_In_reg[0] (\Dual.gpio_Data_In_reg[0] ),
        .\Dual.gpio_Data_In_reg[10] (\Dual.gpio_Data_In_reg[10] ),
        .\Dual.gpio_Data_In_reg[11] (\Dual.gpio_Data_In_reg[11] ),
        .\Dual.gpio_Data_In_reg[12] (\Dual.gpio_Data_In_reg[12] ),
        .\Dual.gpio_Data_In_reg[13] (\Dual.gpio_Data_In_reg[13] ),
        .\Dual.gpio_Data_In_reg[15] (\Dual.gpio_Data_In_reg[15] ),
        .\Dual.gpio_Data_In_reg[1] (\Dual.gpio_Data_In_reg[1] ),
        .\Dual.gpio_Data_In_reg[2] (\Dual.gpio_Data_In_reg[2] ),
        .\Dual.gpio_Data_In_reg[3] (\Dual.gpio_Data_In_reg[3] ),
        .\Dual.gpio_Data_In_reg[4] (\Dual.gpio_Data_In_reg[4] ),
        .\Dual.gpio_Data_In_reg[5] (\Dual.gpio_Data_In_reg[5] ),
        .\Dual.gpio_Data_In_reg[6] (\Dual.gpio_Data_In_reg[6] ),
        .\Dual.gpio_Data_In_reg[7] (\Dual.gpio_Data_In_reg[7] ),
        .\Dual.gpio_Data_In_reg[8] (\Dual.gpio_Data_In_reg[8] ),
        .\Dual.gpio_Data_In_reg[9] (\Dual.gpio_Data_In_reg[9] ),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] (\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] ),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0] (bus2ip_cs),
        .Q(Q),
        .SR(bus2ip_reset),
        .bus2ip_rnw_i_reg_0(bus2ip_rnw),
        .bus2ip_rnw_i_reg_1(bus2ip_rnw_i_reg),
        .bus2ip_rnw_i_reg_2(bus2ip_rnw_i_reg_0),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_rd_ce_or_reduce(intr_rd_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .\ip2bus_data_i_D1_reg[30] (\ip2bus_data_i_D1_reg[30] ),
        .\ip2bus_data_i_D1_reg[31] (\ip2bus_data_i_D1_reg[31] ),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_1_in(p_1_in),
        .p_1_in_0(p_1_in_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[31]_0 (\s_axi_rdata_i_reg[31] ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[31] (\s_axi_wdata[31] ),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "interrupt_control" *) 
module design_1_axi_gpio_0_0_interrupt_control
   (irpt_wrack_d1,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    p_1_in,
    irpt_rdack_d1,
    ipif_glbl_irpt_enable_reg,
    ip2bus_wrack_i,
    ip2bus_rdack_i,
    IP2INTC_Irpt_i,
    Q,
    bus2ip_reset,
    irpt_wrack_d1_reg_0,
    s_axi_aclk,
    GPIO_intr,
    GPIO2_intr,
    interrupt_wrce_strb,
    irpt_rdack,
    intr2bus_rdack0,
    ipif_glbl_irpt_enable_reg_reg_0,
    GPIO_xferAck_i,
    bus2ip_rnw,
    ip2Bus_WrAck_intr_reg_hole,
    ip2Bus_RdAck_intr_reg_hole,
    s_axi_wdata,
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ,
    E);
  output irpt_wrack_d1;
  output \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  output p_1_in;
  output irpt_rdack_d1;
  output ipif_glbl_irpt_enable_reg;
  output ip2bus_wrack_i;
  output ip2bus_rdack_i;
  output IP2INTC_Irpt_i;
  output [1:0]Q;
  input bus2ip_reset;
  input irpt_wrack_d1_reg_0;
  input s_axi_aclk;
  input GPIO_intr;
  input GPIO2_intr;
  input interrupt_wrce_strb;
  input irpt_rdack;
  input intr2bus_rdack0;
  input ipif_glbl_irpt_enable_reg_reg_0;
  input GPIO_xferAck_i;
  input bus2ip_rnw;
  input ip2Bus_WrAck_intr_reg_hole;
  input ip2Bus_RdAck_intr_reg_hole;
  input [1:0]s_axi_wdata;
  input \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  input [0:0]E;

  wire \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1 ;
  wire \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2 ;
  wire \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1 ;
  wire \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2 ;
  wire [0:0]E;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ;
  wire GPIO2_intr;
  wire GPIO_intr;
  wire GPIO_xferAck_i;
  wire IP2INTC_Irpt_i;
  wire [1:0]Q;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack;
  wire intr2bus_rdack0;
  wire intr2bus_wrack;
  wire ip2Bus_RdAck_intr_reg_hole;
  wire ip2Bus_WrAck_intr_reg_hole;
  wire ip2bus_rdack_i;
  wire ip2bus_wrack_i;
  wire ipif_glbl_irpt_enable_reg;
  wire ipif_glbl_irpt_enable_reg_reg_0;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack_d1;
  wire irpt_wrack_d1_reg_0;
  wire p_1_in;
  wire s_axi_aclk;
  wire [1:0]s_axi_wdata;

  FDSE \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_intr),
        .Q(\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1 ),
        .S(bus2ip_reset));
  FDSE \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1 ),
        .Q(\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2 ),
        .S(bus2ip_reset));
  FDSE \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO2_intr),
        .Q(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1 ),
        .S(bus2ip_reset));
  FDSE \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1 ),
        .Q(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2 ),
        .S(bus2ip_reset));
  LUT5 #(
    .INIT(32'hFF4F44F4)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 
       (.I0(\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2 ),
        .I1(\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1 ),
        .I2(s_axi_wdata[0]),
        .I3(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .I4(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .O(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ),
        .Q(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'hFF4F44F4)) 
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1 
       (.I0(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2 ),
        .I1(\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1 ),
        .I2(s_axi_wdata[1]),
        .I3(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0 ),
        .I4(p_1_in),
        .O(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0 ),
        .Q(p_1_in),
        .R(bus2ip_reset));
  LUT5 #(
    .INIT(32'hAA808080)) 
    \INTR_CTRLR_GEN.ip2intc_irpt_i_1 
       (.I0(ipif_glbl_irpt_enable_reg),
        .I1(p_1_in),
        .I2(Q[1]),
        .I3(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .I4(Q[0]),
        .O(IP2INTC_Irpt_i));
  FDRE intr2bus_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr2bus_rdack0),
        .Q(intr2bus_rdack),
        .R(bus2ip_reset));
  FDRE intr2bus_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(interrupt_wrce_strb),
        .Q(intr2bus_wrack),
        .R(bus2ip_reset));
  LUT4 #(
    .INIT(16'hFFEA)) 
    ip2bus_rdack_i_D1_i_1
       (.I0(intr2bus_rdack),
        .I1(GPIO_xferAck_i),
        .I2(bus2ip_rnw),
        .I3(ip2Bus_RdAck_intr_reg_hole),
        .O(ip2bus_rdack_i));
  LUT4 #(
    .INIT(16'hFFAE)) 
    ip2bus_wrack_i_D1_i_1
       (.I0(intr2bus_wrack),
        .I1(GPIO_xferAck_i),
        .I2(bus2ip_rnw),
        .I3(ip2Bus_WrAck_intr_reg_hole),
        .O(ip2bus_wrack_i));
  FDRE \ip_irpt_enable_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .R(bus2ip_reset));
  FDRE \ip_irpt_enable_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .R(bus2ip_reset));
  FDRE ipif_glbl_irpt_enable_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ipif_glbl_irpt_enable_reg_reg_0),
        .Q(ipif_glbl_irpt_enable_reg),
        .R(bus2ip_reset));
  FDRE irpt_rdack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_rdack),
        .Q(irpt_rdack_d1),
        .R(bus2ip_reset));
  FDRE irpt_wrack_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irpt_wrack_d1_reg_0),
        .Q(irpt_wrack_d1),
        .R(bus2ip_reset));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module design_1_axi_gpio_0_0_slave_attachment
   (SR,
    bus2ip_rnw_i_reg_0,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0] ,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    E,
    bus2ip_rnw_i_reg_1,
    \Dual.gpio_Data_In_reg[15] ,
    p_1_in,
    \Dual.gpio_Data_In_reg[13] ,
    \Dual.gpio_Data_In_reg[12] ,
    \Dual.gpio_Data_In_reg[11] ,
    \Dual.gpio_Data_In_reg[10] ,
    \Dual.gpio_Data_In_reg[9] ,
    \Dual.gpio_Data_In_reg[8] ,
    \Dual.gpio_Data_In_reg[7] ,
    \Dual.gpio_Data_In_reg[6] ,
    \Dual.gpio_Data_In_reg[5] ,
    \Dual.gpio_Data_In_reg[4] ,
    \Dual.gpio_Data_In_reg[3] ,
    \Dual.gpio_Data_In_reg[2] ,
    \Dual.gpio_Data_In_reg[1] ,
    \Dual.gpio_Data_In_reg[0] ,
    Bus_RNW_reg_reg,
    interrupt_wrce_strb,
    intr2bus_rdack0,
    irpt_rdack,
    ip2Bus_WrAck_intr_reg_hole0,
    ip2Bus_RdAck_intr_reg_hole0,
    intr_rd_ce_or_reduce,
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] ,
    D,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    \s_axi_wdata[31] ,
    bus2ip_rnw_i_reg_2,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_arvalid,
    Q,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] ,
    irpt_wrack_d1,
    irpt_rdack_d1,
    ip2Bus_WrAck_intr_reg_hole_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ipif_glbl_irpt_enable_reg,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg ,
    \ip2bus_data_i_D1_reg[31] ,
    \ip2bus_data_i_D1_reg[30] ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg ,
    p_1_in_0,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ,
    \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg ,
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ,
    s_axi_rready,
    s_axi_bready,
    s_axi_wdata,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    s_axi_awvalid,
    s_axi_wvalid,
    \s_axi_rdata_i_reg[31]_0 ,
    s_axi_aresetn,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr);
  output [0:0]SR;
  output bus2ip_rnw_i_reg_0;
  output \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output [0:0]E;
  output [0:0]bus2ip_rnw_i_reg_1;
  output \Dual.gpio_Data_In_reg[15] ;
  output p_1_in;
  output \Dual.gpio_Data_In_reg[13] ;
  output \Dual.gpio_Data_In_reg[12] ;
  output \Dual.gpio_Data_In_reg[11] ;
  output \Dual.gpio_Data_In_reg[10] ;
  output \Dual.gpio_Data_In_reg[9] ;
  output \Dual.gpio_Data_In_reg[8] ;
  output \Dual.gpio_Data_In_reg[7] ;
  output \Dual.gpio_Data_In_reg[6] ;
  output \Dual.gpio_Data_In_reg[5] ;
  output \Dual.gpio_Data_In_reg[4] ;
  output \Dual.gpio_Data_In_reg[3] ;
  output \Dual.gpio_Data_In_reg[2] ;
  output \Dual.gpio_Data_In_reg[1] ;
  output \Dual.gpio_Data_In_reg[0] ;
  output Bus_RNW_reg_reg;
  output interrupt_wrce_strb;
  output intr2bus_rdack0;
  output irpt_rdack;
  output ip2Bus_WrAck_intr_reg_hole0;
  output ip2Bus_RdAck_intr_reg_hole0;
  output intr_rd_ce_or_reduce;
  output [0:0]\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] ;
  output [17:0]D;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output \s_axi_wdata[31] ;
  output bus2ip_rnw_i_reg_2;
  output Bus_RNW_reg_reg_0;
  output Bus_RNW_reg_reg_1;
  output [17:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_arvalid;
  input [15:0]Q;
  input [15:0]\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] ;
  input irpt_wrack_d1;
  input irpt_rdack_d1;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input ipif_glbl_irpt_enable_reg;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg ;
  input \ip2bus_data_i_D1_reg[31] ;
  input [1:0]\ip2bus_data_i_D1_reg[30] ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg ;
  input p_1_in_0;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ;
  input \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg ;
  input \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ;
  input s_axi_rready;
  input s_axi_bready;
  input [0:0]s_axi_wdata;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [17:0]\s_axi_rdata_i_reg[31]_0 ;
  input s_axi_aresetn;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;

  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire [17:0]D;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ;
  wire [15:0]\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ;
  wire \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg ;
  wire \Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg ;
  wire \Dual.gpio_Data_In_reg[0] ;
  wire \Dual.gpio_Data_In_reg[10] ;
  wire \Dual.gpio_Data_In_reg[11] ;
  wire \Dual.gpio_Data_In_reg[12] ;
  wire \Dual.gpio_Data_In_reg[13] ;
  wire \Dual.gpio_Data_In_reg[15] ;
  wire \Dual.gpio_Data_In_reg[1] ;
  wire \Dual.gpio_Data_In_reg[2] ;
  wire \Dual.gpio_Data_In_reg[3] ;
  wire \Dual.gpio_Data_In_reg[4] ;
  wire \Dual.gpio_Data_In_reg[5] ;
  wire \Dual.gpio_Data_In_reg[6] ;
  wire \Dual.gpio_Data_In_reg[7] ;
  wire \Dual.gpio_Data_In_reg[8] ;
  wire \Dual.gpio_Data_In_reg[9] ;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [0:0]\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] ;
  wire GPIO_xferAck_i;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire \MEM_DECODE_GEN[0].cs_out_i_reg[0] ;
  wire [15:0]Q;
  wire [0:0]SR;
  wire [0:6]bus2ip_addr;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[5]_i_1_n_0 ;
  wire \bus2ip_addr_i[6]_i_1_n_0 ;
  wire \bus2ip_addr_i[7]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_2_n_0 ;
  wire bus2ip_rnw_i_reg_0;
  wire [0:0]bus2ip_rnw_i_reg_1;
  wire bus2ip_rnw_i_reg_2;
  wire clear;
  wire gpio_xferAck_Reg;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_rd_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire [1:0]\ip2bus_data_i_D1_reg[30] ;
  wire \ip2bus_data_i_D1_reg[31] ;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire ipif_glbl_irpt_enable_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack_d1;
  wire is_read;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write;
  wire is_write_reg_n_0;
  wire p_1_in;
  wire p_1_in_0;
  wire p_5_in;
  wire [3:0]plusOp;
  wire rst_i_1_n_0;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp_i;
  wire s_axi_bvalid_i_i_1_n_0;
  wire s_axi_bvalid_i_reg_0;
  wire [17:0]s_axi_rdata;
  wire [17:0]\s_axi_rdata_i_reg[31]_0 ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire [0:0]s_axi_wdata;
  wire \s_axi_wdata[31] ;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire state1__2;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;

  LUT5 #(
    .INIT(32'h00320002)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1[16]_i_1 
       (.I0(Q[15]),
        .I1(bus2ip_addr[0]),
        .I2(bus2ip_addr[6]),
        .I3(bus2ip_addr[5]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] [15]),
        .O(\Dual.gpio_Data_In_reg[0] ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1[26]_i_1 
       (.I0(Q[5]),
        .I1(bus2ip_addr[0]),
        .I2(bus2ip_addr[6]),
        .I3(bus2ip_addr[5]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] [5]),
        .O(\Dual.gpio_Data_In_reg[10] ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1[27]_i_1 
       (.I0(Q[4]),
        .I1(bus2ip_addr[0]),
        .I2(bus2ip_addr[6]),
        .I3(bus2ip_addr[5]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] [4]),
        .O(\Dual.gpio_Data_In_reg[11] ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1[28]_i_1 
       (.I0(Q[3]),
        .I1(bus2ip_addr[0]),
        .I2(bus2ip_addr[6]),
        .I3(bus2ip_addr[5]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] [3]),
        .O(\Dual.gpio_Data_In_reg[12] ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1[29]_i_1 
       (.I0(Q[2]),
        .I1(bus2ip_addr[0]),
        .I2(bus2ip_addr[6]),
        .I3(bus2ip_addr[5]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] [2]),
        .O(\Dual.gpio_Data_In_reg[13] ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1[30]_i_1 
       (.I0(Q[1]),
        .I1(bus2ip_addr[0]),
        .I2(bus2ip_addr[6]),
        .I3(bus2ip_addr[5]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] [1]),
        .O(p_1_in));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1[31]_i_1 
       (.I0(Q[0]),
        .I1(bus2ip_addr[0]),
        .I2(bus2ip_addr[6]),
        .I3(bus2ip_addr[5]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] [0]),
        .O(\Dual.gpio_Data_In_reg[15] ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1[17]_i_1 
       (.I0(Q[14]),
        .I1(bus2ip_addr[0]),
        .I2(bus2ip_addr[6]),
        .I3(bus2ip_addr[5]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] [14]),
        .O(\Dual.gpio_Data_In_reg[1] ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1[18]_i_1 
       (.I0(Q[13]),
        .I1(bus2ip_addr[0]),
        .I2(bus2ip_addr[6]),
        .I3(bus2ip_addr[5]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] [13]),
        .O(\Dual.gpio_Data_In_reg[2] ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1[19]_i_1 
       (.I0(Q[12]),
        .I1(bus2ip_addr[0]),
        .I2(bus2ip_addr[6]),
        .I3(bus2ip_addr[5]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] [12]),
        .O(\Dual.gpio_Data_In_reg[3] ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1[20]_i_1 
       (.I0(Q[11]),
        .I1(bus2ip_addr[0]),
        .I2(bus2ip_addr[6]),
        .I3(bus2ip_addr[5]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] [11]),
        .O(\Dual.gpio_Data_In_reg[4] ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1[21]_i_1 
       (.I0(Q[10]),
        .I1(bus2ip_addr[0]),
        .I2(bus2ip_addr[6]),
        .I3(bus2ip_addr[5]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] [10]),
        .O(\Dual.gpio_Data_In_reg[5] ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1[22]_i_1 
       (.I0(Q[9]),
        .I1(bus2ip_addr[0]),
        .I2(bus2ip_addr[6]),
        .I3(bus2ip_addr[5]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] [9]),
        .O(\Dual.gpio_Data_In_reg[6] ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1[23]_i_1 
       (.I0(Q[8]),
        .I1(bus2ip_addr[0]),
        .I2(bus2ip_addr[6]),
        .I3(bus2ip_addr[5]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] [8]),
        .O(\Dual.gpio_Data_In_reg[7] ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1[24]_i_1 
       (.I0(Q[7]),
        .I1(bus2ip_addr[0]),
        .I2(bus2ip_addr[6]),
        .I3(bus2ip_addr[5]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] [7]),
        .O(\Dual.gpio_Data_In_reg[8] ));
  LUT5 #(
    .INIT(32'h00320002)) 
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1[25]_i_1 
       (.I0(Q[6]),
        .I1(bus2ip_addr[0]),
        .I2(bus2ip_addr[6]),
        .I3(bus2ip_addr[5]),
        .I4(\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] [6]),
        .O(\Dual.gpio_Data_In_reg[9] ));
  LUT6 #(
    .INIT(64'hFFFF150015001500)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(state1__2),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axi_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ip2bus_rdack_i_D1_reg),
        .I3(s_axi_rresp_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800FFFF08000800)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(ip2bus_wrack_i_D1_reg),
        .I5(s_axi_bresp_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(s_axi_bresp_i),
        .I2(s_axi_rresp_i),
        .I3(ip2bus_rdack_i_D1_reg),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(state1__2),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid_i_reg_0),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid_i_reg_0),
        .O(state1__2));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(s_axi_rresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(s_axi_bresp_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .O(plusOp[3]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [3]),
        .R(clear));
  design_1_axi_gpio_0_0_address_decoder I_DECODER
       (.Bus_RNW_reg_reg_0(Bus_RNW_reg_reg),
        .Bus_RNW_reg_reg_1(Bus_RNW_reg_reg_0),
        .Bus_RNW_reg_reg_2(Bus_RNW_reg_reg_1),
        .D(D),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[16] (bus2ip_rnw_i_reg_0),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[10].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[11].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[12].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[13].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[14].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[15].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[2].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[3].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[4].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[5].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[6].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[7].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[8].reg1_reg ),
        .\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg (\Dual.ALLIN0_ND_G0.READ_REG_GEN[9].reg1_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[10].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[11].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[12].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[13].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[14].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[15].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[2].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[3].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[4].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[5].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[6].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[7].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[8].reg3_reg ),
        .\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg (\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[9].reg3_reg ),
        .E(E),
        .\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0 (\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] ),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 (\MEM_DECODE_GEN[0].cs_out_i_reg[0] ),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_1 ({bus2ip_addr[0],bus2ip_addr[1],bus2ip_addr[2],bus2ip_addr[3],bus2ip_addr[4],bus2ip_addr[5],bus2ip_addr[6]}),
        .Q(start2),
        .bus2ip_rnw_i_reg(bus2ip_rnw_i_reg_1),
        .bus2ip_rnw_i_reg_0(bus2ip_rnw_i_reg_2),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_rd_ce_or_reduce(intr_rd_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .\ip2bus_data_i_D1_reg[30] (\ip2bus_data_i_D1_reg[30] ),
        .\ip2bus_data_i_D1_reg[31] (\ip2bus_data_i_D1_reg[31] ),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .ipif_glbl_irpt_enable_reg(ipif_glbl_irpt_enable_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_1_in_0(p_1_in_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(is_read_reg_n_0),
        .s_axi_arready_0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .s_axi_awready(is_write_reg_n_0),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[31] (\s_axi_wdata[31] ));
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_awaddr[3]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_awaddr[4]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[7]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_awaddr[5]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_awaddr[6]),
        .I2(s_axi_arvalid),
        .O(\bus2ip_addr_i[8]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(bus2ip_addr[6]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(bus2ip_addr[5]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(bus2ip_addr[4]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[5]_i_1_n_0 ),
        .Q(bus2ip_addr[3]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[6]_i_1_n_0 ),
        .Q(bus2ip_addr[2]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[7]_i_1_n_0 ),
        .Q(bus2ip_addr[1]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[8]_i_2_n_0 ),
        .Q(bus2ip_addr[0]),
        .R(SR));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(s_axi_arvalid),
        .Q(bus2ip_rnw_i_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    is_read_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid_i_reg_0),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(is_read_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    is_read_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .O(is_read));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(is_read_i_1_n_0),
        .D(is_read),
        .Q(is_read_reg_n_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    is_write_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_arvalid),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .O(is_write));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(is_read_i_1_n_0),
        .D(is_write),
        .Q(is_write_reg_n_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    rst_i_1
       (.I0(s_axi_aresetn),
        .O(rst_i_1_n_0));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rst_i_1_n_0),
        .Q(SR),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_bvalid_i_i_1
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid_i_reg_0),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid_i_reg_0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [10]),
        .Q(s_axi_rdata[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [11]),
        .Q(s_axi_rdata[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [12]),
        .Q(s_axi_rdata[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [13]),
        .Q(s_axi_rdata[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [14]),
        .Q(s_axi_rdata[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [15]),
        .Q(s_axi_rdata[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [16]),
        .Q(s_axi_rdata[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [17]),
        .Q(s_axi_rdata[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [8]),
        .Q(s_axi_rdata[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(\s_axi_rdata_i_reg[31]_0 [9]),
        .Q(s_axi_rdata[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    s_axi_rvalid_i_i_1
       (.I0(ip2bus_rdack_i_D1_reg),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_i_reg_0),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid_i_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h000000F8)) 
    start2_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_arvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(SR));
  LUT5 #(
    .INIT(32'h0FCAFFCA)) 
    \state[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(ip2bus_wrack_i_D1_reg),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(state1__2),
        .O(\state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55FFFF0C5500FF0C)) 
    \state[1]_i_1 
       (.I0(state1__2),
        .I1(p_5_in),
        .I2(s_axi_arvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(ip2bus_rdack_i_D1_reg),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[1]_i_2 
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .O(p_5_in));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(SR));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "16" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module design_1_axi_gpio_0_0_xpm_cdc_array_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [15:0]src_in;
  input dest_clk;
  output [15:0]dest_out;

  wire [15:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [15:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [15:0]\syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [15:0]\syncstages_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [15:0]\syncstages_ff[3] ;

  assign dest_out[15:0] = \syncstages_ff[3] ;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(async_path_bit[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(async_path_bit[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(async_path_bit[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(async_path_bit[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(async_path_bit[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(async_path_bit[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(async_path_bit[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(async_path_bit[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(async_path_bit[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(async_path_bit[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(async_path_bit[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(async_path_bit[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(async_path_bit[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(async_path_bit[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(async_path_bit[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(async_path_bit[6]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[0]),
        .Q(\syncstages_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[10]),
        .Q(\syncstages_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[11]),
        .Q(\syncstages_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[12]),
        .Q(\syncstages_ff[0] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[13]),
        .Q(\syncstages_ff[0] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[14]),
        .Q(\syncstages_ff[0] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[15]),
        .Q(\syncstages_ff[0] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[1]),
        .Q(\syncstages_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[2]),
        .Q(\syncstages_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[3]),
        .Q(\syncstages_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[4]),
        .Q(\syncstages_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[5]),
        .Q(\syncstages_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[6]),
        .Q(\syncstages_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[7]),
        .Q(\syncstages_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[8]),
        .Q(\syncstages_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[9]),
        .Q(\syncstages_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [0]),
        .Q(\syncstages_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [10]),
        .Q(\syncstages_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [11]),
        .Q(\syncstages_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [12]),
        .Q(\syncstages_ff[1] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [13]),
        .Q(\syncstages_ff[1] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [14]),
        .Q(\syncstages_ff[1] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [15]),
        .Q(\syncstages_ff[1] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [1]),
        .Q(\syncstages_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [2]),
        .Q(\syncstages_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [3]),
        .Q(\syncstages_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [4]),
        .Q(\syncstages_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [5]),
        .Q(\syncstages_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [6]),
        .Q(\syncstages_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [7]),
        .Q(\syncstages_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [8]),
        .Q(\syncstages_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [9]),
        .Q(\syncstages_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [0]),
        .Q(\syncstages_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [10]),
        .Q(\syncstages_ff[2] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [11]),
        .Q(\syncstages_ff[2] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [12]),
        .Q(\syncstages_ff[2] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [13]),
        .Q(\syncstages_ff[2] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [14]),
        .Q(\syncstages_ff[2] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [15]),
        .Q(\syncstages_ff[2] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [1]),
        .Q(\syncstages_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [2]),
        .Q(\syncstages_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [3]),
        .Q(\syncstages_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [4]),
        .Q(\syncstages_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [5]),
        .Q(\syncstages_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [6]),
        .Q(\syncstages_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [7]),
        .Q(\syncstages_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [8]),
        .Q(\syncstages_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [9]),
        .Q(\syncstages_ff[2] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [0]),
        .Q(\syncstages_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [10]),
        .Q(\syncstages_ff[3] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [11]),
        .Q(\syncstages_ff[3] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [12]),
        .Q(\syncstages_ff[3] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [13]),
        .Q(\syncstages_ff[3] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [14]),
        .Q(\syncstages_ff[3] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [15]),
        .Q(\syncstages_ff[3] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [1]),
        .Q(\syncstages_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [2]),
        .Q(\syncstages_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [3]),
        .Q(\syncstages_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [4]),
        .Q(\syncstages_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [5]),
        .Q(\syncstages_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [6]),
        .Q(\syncstages_ff[3] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [7]),
        .Q(\syncstages_ff[3] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [8]),
        .Q(\syncstages_ff[3] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [9]),
        .Q(\syncstages_ff[3] [9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_array_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* WIDTH = "16" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "ARRAY_SINGLE" *) 
module design_1_axi_gpio_0_0_xpm_cdc_array_single__1
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [15:0]src_in;
  input dest_clk;
  output [15:0]dest_out;

  wire [15:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [15:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [15:0]\syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [15:0]\syncstages_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [15:0]\syncstages_ff[3] ;

  assign async_path_bit = src_in[15:0];
  assign dest_out[15:0] = \syncstages_ff[3] ;
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[0]),
        .Q(\syncstages_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[10]),
        .Q(\syncstages_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[11]),
        .Q(\syncstages_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[12]),
        .Q(\syncstages_ff[0] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[13]),
        .Q(\syncstages_ff[0] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[14]),
        .Q(\syncstages_ff[0] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[15]),
        .Q(\syncstages_ff[0] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[1]),
        .Q(\syncstages_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[2]),
        .Q(\syncstages_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[3]),
        .Q(\syncstages_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[4]),
        .Q(\syncstages_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[5]),
        .Q(\syncstages_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[6]),
        .Q(\syncstages_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[7]),
        .Q(\syncstages_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[8]),
        .Q(\syncstages_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[9]),
        .Q(\syncstages_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [0]),
        .Q(\syncstages_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [10]),
        .Q(\syncstages_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [11]),
        .Q(\syncstages_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [12]),
        .Q(\syncstages_ff[1] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [13]),
        .Q(\syncstages_ff[1] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [14]),
        .Q(\syncstages_ff[1] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [15]),
        .Q(\syncstages_ff[1] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [1]),
        .Q(\syncstages_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [2]),
        .Q(\syncstages_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [3]),
        .Q(\syncstages_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [4]),
        .Q(\syncstages_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [5]),
        .Q(\syncstages_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [6]),
        .Q(\syncstages_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [7]),
        .Q(\syncstages_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [8]),
        .Q(\syncstages_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [9]),
        .Q(\syncstages_ff[1] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [0]),
        .Q(\syncstages_ff[2] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [10]),
        .Q(\syncstages_ff[2] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [11]),
        .Q(\syncstages_ff[2] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [12]),
        .Q(\syncstages_ff[2] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [13]),
        .Q(\syncstages_ff[2] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [14]),
        .Q(\syncstages_ff[2] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [15]),
        .Q(\syncstages_ff[2] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [1]),
        .Q(\syncstages_ff[2] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [2]),
        .Q(\syncstages_ff[2] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [3]),
        .Q(\syncstages_ff[2] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [4]),
        .Q(\syncstages_ff[2] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [5]),
        .Q(\syncstages_ff[2] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [6]),
        .Q(\syncstages_ff[2] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [7]),
        .Q(\syncstages_ff[2] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [8]),
        .Q(\syncstages_ff[2] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [9]),
        .Q(\syncstages_ff[2] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [0]),
        .Q(\syncstages_ff[3] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [10]),
        .Q(\syncstages_ff[3] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [11]),
        .Q(\syncstages_ff[3] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [12]),
        .Q(\syncstages_ff[3] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][13] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [13]),
        .Q(\syncstages_ff[3] [13]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][14] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [14]),
        .Q(\syncstages_ff[3] [14]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][15] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [15]),
        .Q(\syncstages_ff[3] [15]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [1]),
        .Q(\syncstages_ff[3] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [2]),
        .Q(\syncstages_ff[3] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [3]),
        .Q(\syncstages_ff[3] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [4]),
        .Q(\syncstages_ff[3] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [5]),
        .Q(\syncstages_ff[3] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [6]),
        .Q(\syncstages_ff[3] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [7]),
        .Q(\syncstages_ff[3] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [8]),
        .Q(\syncstages_ff[3] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [9]),
        .Q(\syncstages_ff[3] [9]),
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
