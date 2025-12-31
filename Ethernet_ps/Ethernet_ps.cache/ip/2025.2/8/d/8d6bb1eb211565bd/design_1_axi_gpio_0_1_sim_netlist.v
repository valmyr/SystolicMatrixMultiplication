// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sun Dec 28 12:12:41 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_gpio_0_1_sim_netlist.v
// Design      : design_1_axi_gpio_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GPIO_Core
   (GPIO_intr,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg ,
    gpio_io_o,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg ,
    s_axi_aclk,
    bus2ip_reset,
    Read_Reg_Rst,
    bus2ip_cs,
    E,
    s_axi_wdata);
  output GPIO_intr;
  output GPIO_xferAck_i;
  output gpio_xferAck_Reg;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg ;
  output [31:0]gpio_io_o;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg ;
  output \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg ;
  input s_axi_aclk;
  input bus2ip_reset;
  input Read_Reg_Rst;
  input [0:0]bus2ip_cs;
  input [0:0]E;
  input [31:0]s_axi_wdata;

  wire [0:0]E;
  wire GPIO_intr;
  wire GPIO_xferAck_i;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg ;
  wire \Not_Dual.GEN_INTERRUPT.GPIO_intr_i_2_n_0 ;
  wire \Not_Dual.GEN_INTERRUPT.GPIO_intr_i_3_n_0 ;
  wire \Not_Dual.GEN_INTERRUPT.GPIO_intr_i_4_n_0 ;
  wire \Not_Dual.GEN_INTERRUPT.GPIO_intr_i_5_n_0 ;
  wire \Not_Dual.GEN_INTERRUPT.GPIO_intr_i_6_n_0 ;
  wire \Not_Dual.GEN_INTERRUPT.GPIO_intr_i_7_n_0 ;
  wire \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[0] ;
  wire \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[31] ;
  wire \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[6] ;
  wire Read_Reg_Rst;
  wire [0:0]bus2ip_cs;
  wire bus2ip_reset;
  wire [0:31]gpio_Data_In;
  wire [0:31]gpio_data_in_xor;
  wire [0:31]gpio_io_i_d2;
  wire [31:0]gpio_io_o;
  wire gpio_xferAck_Reg;
  wire iGPIO_xferAck;
  wire or_reduce;
  wire p_0_in;
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
  wire p_20_in;
  wire p_21_in;
  wire p_22_in;
  wire p_23_in;
  wire p_24_in;
  wire p_25_in;
  wire p_26_in;
  wire p_27_in;
  wire p_28_in;
  wire p_29_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_6_in;
  wire p_7_in;
  wire p_8_in;
  wire p_9_in;
  wire s_axi_aclk;
  wire [31:0]s_axi_wdata;

  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[31]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[21]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[20]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[19]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[18]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[17]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[16]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[15]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[14]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[13]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[12]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[30]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[11]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[10]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[9]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[8]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[7]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[6]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[5]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[4]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[3]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[2]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[29]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[1]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[0]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[28]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[27]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[26]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[25]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[24]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[23]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg ),
        .R(Read_Reg_Rst));
  FDRE \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_o[22]),
        .Q(\Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg ),
        .R(Read_Reg_Rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Not_Dual.GEN_INTERRUPT.GPIO_intr_i_1 
       (.I0(\Not_Dual.GEN_INTERRUPT.GPIO_intr_i_2_n_0 ),
        .I1(\Not_Dual.GEN_INTERRUPT.GPIO_intr_i_3_n_0 ),
        .I2(\Not_Dual.GEN_INTERRUPT.GPIO_intr_i_4_n_0 ),
        .I3(\Not_Dual.GEN_INTERRUPT.GPIO_intr_i_5_n_0 ),
        .I4(\Not_Dual.GEN_INTERRUPT.GPIO_intr_i_6_n_0 ),
        .I5(\Not_Dual.GEN_INTERRUPT.GPIO_intr_i_7_n_0 ),
        .O(or_reduce));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Not_Dual.GEN_INTERRUPT.GPIO_intr_i_2 
       (.I0(p_18_in),
        .I1(p_17_in),
        .I2(p_20_in),
        .I3(p_19_in),
        .I4(p_21_in),
        .I5(p_22_in),
        .O(\Not_Dual.GEN_INTERRUPT.GPIO_intr_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Not_Dual.GEN_INTERRUPT.GPIO_intr_i_3 
       (.I0(p_12_in),
        .I1(p_11_in),
        .I2(p_14_in),
        .I3(p_13_in),
        .I4(p_15_in),
        .I5(p_16_in),
        .O(\Not_Dual.GEN_INTERRUPT.GPIO_intr_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Not_Dual.GEN_INTERRUPT.GPIO_intr_i_4 
       (.I0(p_0_in),
        .I1(\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[0] ),
        .I2(p_2_in),
        .I3(p_1_in),
        .I4(p_3_in),
        .I5(p_4_in),
        .O(\Not_Dual.GEN_INTERRUPT.GPIO_intr_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Not_Dual.GEN_INTERRUPT.GPIO_intr_i_5 
       (.I0(p_6_in),
        .I1(\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[6] ),
        .I2(p_8_in),
        .I3(p_7_in),
        .I4(p_9_in),
        .I5(p_10_in),
        .O(\Not_Dual.GEN_INTERRUPT.GPIO_intr_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Not_Dual.GEN_INTERRUPT.GPIO_intr_i_6 
       (.I0(\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[31] ),
        .I1(p_29_in),
        .O(\Not_Dual.GEN_INTERRUPT.GPIO_intr_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Not_Dual.GEN_INTERRUPT.GPIO_intr_i_7 
       (.I0(p_24_in),
        .I1(p_23_in),
        .I2(p_26_in),
        .I3(p_25_in),
        .I4(p_27_in),
        .I5(p_28_in),
        .O(\Not_Dual.GEN_INTERRUPT.GPIO_intr_i_7_n_0 ));
  FDRE \Not_Dual.GEN_INTERRUPT.GPIO_intr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(or_reduce),
        .Q(GPIO_intr),
        .R(bus2ip_reset));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[0]_i_1 
       (.I0(gpio_io_i_d2[0]),
        .I1(gpio_Data_In[0]),
        .O(gpio_data_in_xor[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[10]_i_1 
       (.I0(gpio_io_i_d2[10]),
        .I1(gpio_Data_In[10]),
        .O(gpio_data_in_xor[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[11]_i_1 
       (.I0(gpio_io_i_d2[11]),
        .I1(gpio_Data_In[11]),
        .O(gpio_data_in_xor[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[12]_i_1 
       (.I0(gpio_io_i_d2[12]),
        .I1(gpio_Data_In[12]),
        .O(gpio_data_in_xor[12]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[13]_i_1 
       (.I0(gpio_io_i_d2[13]),
        .I1(gpio_Data_In[13]),
        .O(gpio_data_in_xor[13]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[14]_i_1 
       (.I0(gpio_io_i_d2[14]),
        .I1(gpio_Data_In[14]),
        .O(gpio_data_in_xor[14]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[15]_i_1 
       (.I0(gpio_io_i_d2[15]),
        .I1(gpio_Data_In[15]),
        .O(gpio_data_in_xor[15]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[16]_i_1 
       (.I0(gpio_io_i_d2[16]),
        .I1(gpio_Data_In[16]),
        .O(gpio_data_in_xor[16]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[17]_i_1 
       (.I0(gpio_io_i_d2[17]),
        .I1(gpio_Data_In[17]),
        .O(gpio_data_in_xor[17]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[18]_i_1 
       (.I0(gpio_io_i_d2[18]),
        .I1(gpio_Data_In[18]),
        .O(gpio_data_in_xor[18]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[19]_i_1 
       (.I0(gpio_io_i_d2[19]),
        .I1(gpio_Data_In[19]),
        .O(gpio_data_in_xor[19]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[1]_i_1 
       (.I0(gpio_io_i_d2[1]),
        .I1(gpio_Data_In[1]),
        .O(gpio_data_in_xor[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[20]_i_1 
       (.I0(gpio_io_i_d2[20]),
        .I1(gpio_Data_In[20]),
        .O(gpio_data_in_xor[20]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[21]_i_1 
       (.I0(gpio_io_i_d2[21]),
        .I1(gpio_Data_In[21]),
        .O(gpio_data_in_xor[21]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[22]_i_1 
       (.I0(gpio_io_i_d2[22]),
        .I1(gpio_Data_In[22]),
        .O(gpio_data_in_xor[22]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[23]_i_1 
       (.I0(gpio_io_i_d2[23]),
        .I1(gpio_Data_In[23]),
        .O(gpio_data_in_xor[23]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[24]_i_1 
       (.I0(gpio_io_i_d2[24]),
        .I1(gpio_Data_In[24]),
        .O(gpio_data_in_xor[24]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[25]_i_1 
       (.I0(gpio_io_i_d2[25]),
        .I1(gpio_Data_In[25]),
        .O(gpio_data_in_xor[25]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[26]_i_1 
       (.I0(gpio_io_i_d2[26]),
        .I1(gpio_Data_In[26]),
        .O(gpio_data_in_xor[26]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[27]_i_1 
       (.I0(gpio_io_i_d2[27]),
        .I1(gpio_Data_In[27]),
        .O(gpio_data_in_xor[27]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[28]_i_1 
       (.I0(gpio_io_i_d2[28]),
        .I1(gpio_Data_In[28]),
        .O(gpio_data_in_xor[28]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[29]_i_1 
       (.I0(gpio_io_i_d2[29]),
        .I1(gpio_Data_In[29]),
        .O(gpio_data_in_xor[29]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[2]_i_1 
       (.I0(gpio_io_i_d2[2]),
        .I1(gpio_Data_In[2]),
        .O(gpio_data_in_xor[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[30]_i_1 
       (.I0(gpio_io_i_d2[30]),
        .I1(gpio_Data_In[30]),
        .O(gpio_data_in_xor[30]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[31]_i_1 
       (.I0(gpio_io_i_d2[31]),
        .I1(gpio_Data_In[31]),
        .O(gpio_data_in_xor[31]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[3]_i_1 
       (.I0(gpio_io_i_d2[3]),
        .I1(gpio_Data_In[3]),
        .O(gpio_data_in_xor[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[4]_i_1 
       (.I0(gpio_io_i_d2[4]),
        .I1(gpio_Data_In[4]),
        .O(gpio_data_in_xor[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[5]_i_1 
       (.I0(gpio_io_i_d2[5]),
        .I1(gpio_Data_In[5]),
        .O(gpio_data_in_xor[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[6]_i_1 
       (.I0(gpio_io_i_d2[6]),
        .I1(gpio_Data_In[6]),
        .O(gpio_data_in_xor[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[7]_i_1 
       (.I0(gpio_io_i_d2[7]),
        .I1(gpio_Data_In[7]),
        .O(gpio_data_in_xor[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[8]_i_1 
       (.I0(gpio_io_i_d2[8]),
        .I1(gpio_Data_In[8]),
        .O(gpio_data_in_xor[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg[9]_i_1 
       (.I0(gpio_io_i_d2[9]),
        .I1(gpio_Data_In[9]),
        .O(gpio_data_in_xor[9]));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[0]),
        .Q(\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[0] ),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[10]),
        .Q(p_9_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[11]),
        .Q(p_10_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[12]),
        .Q(p_11_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[13]),
        .Q(p_12_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[14]),
        .Q(p_13_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[15]),
        .Q(p_14_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[16]),
        .Q(p_15_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[17]),
        .Q(p_16_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[18]),
        .Q(p_17_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[19]),
        .Q(p_18_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[1]),
        .Q(p_0_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[20]),
        .Q(p_19_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[21]),
        .Q(p_20_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[22]),
        .Q(p_21_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[23]),
        .Q(p_22_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[24]),
        .Q(p_23_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[25]),
        .Q(p_24_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[26]),
        .Q(p_25_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[27]),
        .Q(p_26_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[28]),
        .Q(p_27_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[29]),
        .Q(p_28_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[2]),
        .Q(p_1_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[30]),
        .Q(p_29_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[31]),
        .Q(\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[31] ),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[3]),
        .Q(p_2_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[4]),
        .Q(p_3_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[5]),
        .Q(p_4_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[6]),
        .Q(\Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg_n_0_[6] ),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[7]),
        .Q(p_6_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[8]),
        .Q(p_7_in),
        .R(bus2ip_reset));
  FDRE \Not_Dual.GEN_INTERRUPT.gpio_data_in_xor_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_data_in_xor[9]),
        .Q(p_8_in),
        .R(bus2ip_reset));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "32" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single \Not_Dual.INPUT_DOUBLE_REGS3 
       (.dest_clk(s_axi_aclk),
        .dest_out({gpio_io_i_d2[0],gpio_io_i_d2[1],gpio_io_i_d2[2],gpio_io_i_d2[3],gpio_io_i_d2[4],gpio_io_i_d2[5],gpio_io_i_d2[6],gpio_io_i_d2[7],gpio_io_i_d2[8],gpio_io_i_d2[9],gpio_io_i_d2[10],gpio_io_i_d2[11],gpio_io_i_d2[12],gpio_io_i_d2[13],gpio_io_i_d2[14],gpio_io_i_d2[15],gpio_io_i_d2[16],gpio_io_i_d2[17],gpio_io_i_d2[18],gpio_io_i_d2[19],gpio_io_i_d2[20],gpio_io_i_d2[21],gpio_io_i_d2[22],gpio_io_i_d2[23],gpio_io_i_d2[24],gpio_io_i_d2[25],gpio_io_i_d2[26],gpio_io_i_d2[27],gpio_io_i_d2[28],gpio_io_i_d2[29],gpio_io_i_d2[30],gpio_io_i_d2[31]}),
        .src_clk(1'b0),
        .src_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  FDRE \Not_Dual.gpio_Data_In_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[0]),
        .Q(gpio_Data_In[0]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[10]),
        .Q(gpio_Data_In[10]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[11]),
        .Q(gpio_Data_In[11]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[12]),
        .Q(gpio_Data_In[12]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[13]),
        .Q(gpio_Data_In[13]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[14]),
        .Q(gpio_Data_In[14]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[15]),
        .Q(gpio_Data_In[15]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[16]),
        .Q(gpio_Data_In[16]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[17]),
        .Q(gpio_Data_In[17]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[18]),
        .Q(gpio_Data_In[18]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[19]),
        .Q(gpio_Data_In[19]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[1]),
        .Q(gpio_Data_In[1]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[20]),
        .Q(gpio_Data_In[20]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[21]),
        .Q(gpio_Data_In[21]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[22]),
        .Q(gpio_Data_In[22]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[23]),
        .Q(gpio_Data_In[23]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[24]),
        .Q(gpio_Data_In[24]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[25]),
        .Q(gpio_Data_In[25]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[26]),
        .Q(gpio_Data_In[26]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[27]),
        .Q(gpio_Data_In[27]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[28]),
        .Q(gpio_Data_In[28]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[29]),
        .Q(gpio_Data_In[29]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[2]),
        .Q(gpio_Data_In[2]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[30]),
        .Q(gpio_Data_In[30]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[31]),
        .Q(gpio_Data_In[31]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[3]),
        .Q(gpio_Data_In[3]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[4]),
        .Q(gpio_Data_In[4]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[5]),
        .Q(gpio_Data_In[5]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[6]),
        .Q(gpio_Data_In[6]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[7]),
        .Q(gpio_Data_In[7]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[8]),
        .Q(gpio_Data_In[8]),
        .R(1'b0));
  FDRE \Not_Dual.gpio_Data_In_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gpio_io_i_d2[9]),
        .Q(gpio_Data_In[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[31]),
        .Q(gpio_io_o[31]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[21]),
        .Q(gpio_io_o[21]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[20]),
        .Q(gpio_io_o[20]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[19]),
        .Q(gpio_io_o[19]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[18]),
        .Q(gpio_io_o[18]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[17]),
        .Q(gpio_io_o[17]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[16]),
        .Q(gpio_io_o[16]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[16] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[15]),
        .Q(gpio_io_o[15]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[17] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[14]),
        .Q(gpio_io_o[14]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[18] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[13]),
        .Q(gpio_io_o[13]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[19] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[12]),
        .Q(gpio_io_o[12]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[30]),
        .Q(gpio_io_o[30]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[20] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[11]),
        .Q(gpio_io_o[11]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[21] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[10]),
        .Q(gpio_io_o[10]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[22] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[9]),
        .Q(gpio_io_o[9]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[23] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[8]),
        .Q(gpio_io_o[8]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[24] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[7]),
        .Q(gpio_io_o[7]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[25] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[6]),
        .Q(gpio_io_o[6]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[26] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[5]),
        .Q(gpio_io_o[5]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[27] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[4]),
        .Q(gpio_io_o[4]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[28] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[3]),
        .Q(gpio_io_o[3]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[29] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[2]),
        .Q(gpio_io_o[2]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[29]),
        .Q(gpio_io_o[29]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[30] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[1]),
        .Q(gpio_io_o[1]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[31] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[0]),
        .Q(gpio_io_o[0]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[28]),
        .Q(gpio_io_o[28]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[27]),
        .Q(gpio_io_o[27]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[26]),
        .Q(gpio_io_o[26]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[25]),
        .Q(gpio_io_o[25]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[24]),
        .Q(gpio_io_o[24]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[23]),
        .Q(gpio_io_o[23]),
        .R(bus2ip_reset));
  FDRE #(
    .INIT(1'b0)) 
    \Not_Dual.gpio_Data_Out_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_wdata[22]),
        .Q(gpio_io_o[22]),
        .R(bus2ip_reset));
  FDRE gpio_xferAck_Reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(GPIO_xferAck_i),
        .Q(gpio_xferAck_Reg),
        .R(bus2ip_reset));
  LUT3 #(
    .INIT(8'h02)) 
    iGPIO_xferAck_i_1
       (.I0(bus2ip_cs),
        .I1(GPIO_xferAck_i),
        .I2(gpio_xferAck_Reg),
        .O(iGPIO_xferAck));
  FDRE iGPIO_xferAck_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(iGPIO_xferAck),
        .Q(GPIO_xferAck_i),
        .R(bus2ip_reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
   (bus2ip_cs,
    Read_Reg_Rst,
    E,
    interrupt_wrce_strb,
    irpt_wrack,
    D,
    intr2bus_rdack0,
    irpt_rdack,
    ip2Bus_RdAck_intr_reg_hole0,
    intr_rd_ce_or_reduce,
    ip2Bus_WrAck_intr_reg_hole0,
    intr_wr_ce_or_reduce,
    irpt_wrack_d1_reg,
    s_axi_wdata_0_sp_1,
    \s_axi_wdata[31] ,
    ip2bus_wrack_i_D1_reg,
    ip2bus_rdack_i_D1_reg,
    Q,
    s_axi_aclk,
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg[31] ,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    irpt_wrack_d1,
    p_3_in,
    p_1_in,
    p_0_in,
    irpt_rdack_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ip2Bus_WrAck_intr_reg_hole_d1,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg ,
    s_axi_wdata,
    s_axi_aresetn,
    ip2bus_rdack_i_D1,
    s_axi_arready,
    s_axi_arready_0,
    ip2bus_wrack_i_D1,
    s_axi_awready);
  output [0:0]bus2ip_cs;
  output Read_Reg_Rst;
  output [0:0]E;
  output interrupt_wrce_strb;
  output irpt_wrack;
  output [31:0]D;
  output intr2bus_rdack0;
  output irpt_rdack;
  output ip2Bus_RdAck_intr_reg_hole0;
  output intr_rd_ce_or_reduce;
  output ip2Bus_WrAck_intr_reg_hole0;
  output intr_wr_ce_or_reduce;
  output irpt_wrack_d1_reg;
  output s_axi_wdata_0_sp_1;
  output \s_axi_wdata[31] ;
  output ip2bus_wrack_i_D1_reg;
  output ip2bus_rdack_i_D1_reg;
  input Q;
  input s_axi_aclk;
  input [6:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg[31] ;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input irpt_wrack_d1;
  input [0:0]p_3_in;
  input [0:0]p_1_in;
  input [0:0]p_0_in;
  input irpt_rdack_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg ;
  input [1:0]s_axi_wdata;
  input s_axi_aresetn;
  input ip2bus_rdack_i_D1;
  input s_axi_arready;
  input [3:0]s_axi_arready_0;
  input ip2bus_wrack_i_D1;
  input s_axi_awready;

  wire Bus_RNW_reg;
  wire Bus_RNW_reg_i_1_n_0;
  wire [31:0]D;
  wire [0:0]E;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ;
  wire \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1_n_0 ;
  wire GPIO_xferAck_i;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ;
  wire \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_2_n_0 ;
  wire [6:0]\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg[31] ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg ;
  wire Q;
  wire Read_Reg_Rst;
  wire [0:0]bus2ip_cs;
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
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire \ip2bus_data_i_D1[0]_i_2_n_0 ;
  wire \ip2bus_data_i_D1[31]_i_2_n_0 ;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire irpt_wrack_d1_reg;
  wire [0:0]p_0_in;
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
  wire [0:0]p_1_in;
  wire p_1_in_0;
  wire p_2_in;
  wire [0:0]p_3_in;
  wire p_3_in_1;
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
  wire [1:0]s_axi_wdata;
  wire \s_axi_wdata[31] ;
  wire s_axi_wdata_0_sn_1;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(\Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg[31] ),
        .I1(Q),
        .I2(Bus_RNW_reg),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(Bus_RNW_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(pselect_hit_i_1),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ),
        .Q(p_19_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [3]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [2]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [6]),
        .O(ce_expnd_i_9));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_9),
        .Q(p_9_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [6]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [2]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [3]),
        .O(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1_n_0 ),
        .Q(p_8_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [6]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [3]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .O(ce_expnd_i_7));
  FDRE \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_7),
        .Q(p_7_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [2]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [6]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [3]),
        .O(ce_expnd_i_6));
  FDRE \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_6),
        .Q(p_6_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [2]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [6]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [3]),
        .O(ce_expnd_i_5));
  FDRE \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_5),
        .Q(p_5_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [2]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [3]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [6]),
        .O(ce_expnd_i_4));
  FDRE \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_4),
        .Q(p_4_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [6]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [3]),
        .O(ce_expnd_i_3));
  FDRE \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_3),
        .Q(p_3_in_1),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [6]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [3]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [2]),
        .O(ce_expnd_i_2));
  FDRE \GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_2),
        .Q(p_2_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [6]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [3]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [2]),
        .O(ce_expnd_i_1));
  FDRE \GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_1),
        .Q(p_1_in_0),
        .R(cs_ce_clr));
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1 
       (.I0(ip2bus_wrack_i_D1_reg),
        .I1(ip2bus_rdack_i_D1_reg),
        .I2(s_axi_aresetn),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_2 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [3]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [6]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [2]),
        .O(ce_expnd_i_0));
  FDRE \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .I1(pselect_hit_i_1),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .O(\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1_n_0 ),
        .Q(p_18_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .I1(pselect_hit_i_1),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .O(ce_expnd_i_17));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_17),
        .Q(p_17_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .I2(pselect_hit_i_1),
        .O(ce_expnd_i_16));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_16),
        .Q(p_16_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [6]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [3]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .O(ce_expnd_i_15));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_15),
        .Q(p_15_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [6]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [3]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .O(ce_expnd_i_14));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_14),
        .Q(p_14_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [6]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [3]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .O(ce_expnd_i_13));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_13),
        .Q(p_13_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [3]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [2]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [6]),
        .O(ce_expnd_i_12));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_12),
        .Q(p_12_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [2]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [6]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [3]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .O(ce_expnd_i_11));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_11),
        .Q(p_11_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [3]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [2]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .I3(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [6]),
        .O(ce_expnd_i_10));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(ce_expnd_i_10),
        .Q(p_10_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2 
       (.I0(irpt_wrack_d1),
        .I1(Bus_RNW_reg),
        .I2(p_7_in),
        .O(irpt_wrack_d1_reg));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_d1_i_1 
       (.I0(Bus_RNW_reg),
        .I1(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ),
        .I2(p_15_in),
        .I3(p_2_in),
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
        .I1(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ),
        .I2(p_15_in),
        .I3(p_2_in),
        .I4(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ),
        .I5(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0 ),
        .O(intr_wr_ce_or_reduce));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2 
       (.I0(p_12_in),
        .I1(p_6_in),
        .I2(p_4_in),
        .I3(p_1_in_0),
        .O(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3 
       (.I0(p_14_in),
        .I1(p_9_in),
        .I2(p_3_in_1),
        .I3(p_11_in),
        .I4(p_10_in),
        .I5(p_13_in),
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
       (.I0(p_2_in),
        .I1(p_15_in),
        .I2(\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19] ),
        .O(\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \MEM_DECODE_GEN[0].cs_out_i[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [2]),
        .I1(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [6]),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [3]),
        .I3(Q),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [5]),
        .I5(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [4]),
        .O(pselect_hit_i_1));
  FDRE \MEM_DECODE_GEN[0].cs_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(pselect_hit_i_1),
        .Q(bus2ip_cs),
        .R(cs_ce_clr));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1[31]_i_1 
       (.I0(\Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg[31] ),
        .I1(GPIO_xferAck_i),
        .I2(bus2ip_cs),
        .I3(gpio_xferAck_Reg),
        .O(Read_Reg_Rst));
  LUT5 #(
    .INIT(32'h00000004)) 
    \Not_Dual.gpio_Data_Out[0]_i_1 
       (.I0(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [6]),
        .I1(bus2ip_cs),
        .I2(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [0]),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg[31] ),
        .I4(\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 [1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0000F0E0)) 
    intr2bus_rdack_i_1
       (.I0(p_7_in),
        .I1(p_5_in),
        .I2(Bus_RNW_reg),
        .I3(p_8_in),
        .I4(irpt_rdack_d1),
        .O(intr2bus_rdack0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000F0E)) 
    intr2bus_wrack_i_1
       (.I0(p_8_in),
        .I1(p_7_in),
        .I2(Bus_RNW_reg),
        .I3(p_5_in),
        .I4(irpt_wrack_d1),
        .O(interrupt_wrce_strb));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEAAA)) 
    \ip2bus_data_i_D1[0]_i_1 
       (.I0(\ip2bus_data_i_D1[0]_i_2_n_0 ),
        .I1(p_8_in),
        .I2(Bus_RNW_reg),
        .I3(p_0_in),
        .I4(p_7_in),
        .I5(p_5_in),
        .O(D[31]));
  LUT6 #(
    .INIT(64'h0000050004005000)) 
    \ip2bus_data_i_D1[0]_i_2 
       (.I0(p_17_in),
        .I1(\Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg ),
        .I2(p_18_in),
        .I3(Bus_RNW_reg),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(\ip2bus_data_i_D1[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[10]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[11]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[12]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[19]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[13]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[14]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[17]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[15]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[16]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[17]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[18]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[19]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[1]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[30]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[20]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[21]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[22]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[23]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[24]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[25]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[26]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[27]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[28]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[29]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[2]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[29]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[30]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hEFAAEAAAEAAAEAAA)) 
    \ip2bus_data_i_D1[31]_i_1 
       (.I0(\ip2bus_data_i_D1[31]_i_2_n_0 ),
        .I1(p_3_in),
        .I2(p_7_in),
        .I3(Bus_RNW_reg),
        .I4(p_5_in),
        .I5(p_1_in),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[31]_i_2 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(\ip2bus_data_i_D1[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[3]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[4]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[5]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[6]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[7]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[8]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h0000040404004040)) 
    \ip2bus_data_i_D1[9]_i_1 
       (.I0(p_17_in),
        .I1(Bus_RNW_reg),
        .I2(p_18_in),
        .I3(\Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg ),
        .I4(p_19_in),
        .I5(p_16_in),
        .O(D[22]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ip_irpt_enable_reg[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(p_5_in),
        .I2(Bus_RNW_reg),
        .I3(p_1_in),
        .O(s_axi_wdata_0_sn_1));
  LUT4 #(
    .INIT(16'hFB08)) 
    ipif_glbl_irpt_enable_reg_i_1
       (.I0(s_axi_wdata[1]),
        .I1(p_8_in),
        .I2(Bus_RNW_reg),
        .I3(p_0_in),
        .O(\s_axi_wdata[31] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hCCC8)) 
    irpt_rdack_d1_i_1
       (.I0(p_8_in),
        .I1(Bus_RNW_reg),
        .I2(p_5_in),
        .I3(p_7_in),
        .O(irpt_rdack));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h3332)) 
    irpt_wrack_d1_i_1
       (.I0(p_5_in),
        .I1(Bus_RNW_reg),
        .I2(p_7_in),
        .I3(p_8_in),
        .O(irpt_wrack));
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

(* C_ALL_INPUTS = "0" *) (* C_ALL_INPUTS_2 = "0" *) (* C_ALL_OUTPUTS = "1" *) 
(* C_ALL_OUTPUTS_2 = "0" *) (* C_DOUT_DEFAULT = "32'b00000000000000000000000000000000" *) (* C_DOUT_DEFAULT_2 = "32'b00000000000000000000000000000000" *) 
(* C_FAMILY = "zynquplus" *) (* C_GPIO2_WIDTH = "32" *) (* C_GPIO_WIDTH = "32" *) 
(* C_INTERRUPT_PRESENT = "1" *) (* C_IS_DUAL = "0" *) (* C_S_AXI_ADDR_WIDTH = "9" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_TRI_DEFAULT = "32'b11111111111111111111111111111111" *) (* C_TRI_DEFAULT_2 = "32'b11111111111111111111111111111111" *) 
(* downgradeipidentifiedwarnings = "yes" *) (* ip_group = "LOGICORE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio
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
  input [31:0]gpio_io_i;
  output [31:0]gpio_io_o;
  output [31:0]gpio_io_t;
  input [31:0]gpio2_io_i;
  output [31:0]gpio2_io_o;
  output [31:0]gpio2_io_t;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_47;
  wire AXI_LITE_IPIF_I_n_50;
  wire AXI_LITE_IPIF_I_n_51;
  wire AXI_LITE_IPIF_I_n_6;
  wire GPIO_intr;
  wire GPIO_xferAck_i;
  wire IP2INTC_Irpt_i;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg ;
  wire Read_Reg_Rst;
  wire [1:1]bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire [31:0]gpio_io_o;
  wire gpio_xferAck_Reg;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_rd_ce_or_reduce;
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire [1:30]ip2bus_data;
  wire [0:31]ip2bus_data_i;
  wire [0:31]ip2bus_data_i_D1;
  wire ip2bus_rdack_i;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_wrack_i;
  wire ip2bus_wrack_i_D1;
  wire ip2intc_irpt;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire [31:31]p_0_in;
  wire [0:0]p_1_in;
  wire [0:0]p_3_in;
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
  wire s_axi_wvalid;

  assign gpio2_io_o[31] = \<const0> ;
  assign gpio2_io_o[30] = \<const0> ;
  assign gpio2_io_o[29] = \<const0> ;
  assign gpio2_io_o[28] = \<const0> ;
  assign gpio2_io_o[27] = \<const0> ;
  assign gpio2_io_o[26] = \<const0> ;
  assign gpio2_io_o[25] = \<const0> ;
  assign gpio2_io_o[24] = \<const0> ;
  assign gpio2_io_o[23] = \<const0> ;
  assign gpio2_io_o[22] = \<const0> ;
  assign gpio2_io_o[21] = \<const0> ;
  assign gpio2_io_o[20] = \<const0> ;
  assign gpio2_io_o[19] = \<const0> ;
  assign gpio2_io_o[18] = \<const0> ;
  assign gpio2_io_o[17] = \<const0> ;
  assign gpio2_io_o[16] = \<const0> ;
  assign gpio2_io_o[15] = \<const0> ;
  assign gpio2_io_o[14] = \<const0> ;
  assign gpio2_io_o[13] = \<const0> ;
  assign gpio2_io_o[12] = \<const0> ;
  assign gpio2_io_o[11] = \<const0> ;
  assign gpio2_io_o[10] = \<const0> ;
  assign gpio2_io_o[9] = \<const0> ;
  assign gpio2_io_o[8] = \<const0> ;
  assign gpio2_io_o[7] = \<const0> ;
  assign gpio2_io_o[6] = \<const0> ;
  assign gpio2_io_o[5] = \<const0> ;
  assign gpio2_io_o[4] = \<const0> ;
  assign gpio2_io_o[3] = \<const0> ;
  assign gpio2_io_o[2] = \<const0> ;
  assign gpio2_io_o[1] = \<const0> ;
  assign gpio2_io_o[0] = \<const0> ;
  assign gpio2_io_t[31] = \<const0> ;
  assign gpio2_io_t[30] = \<const0> ;
  assign gpio2_io_t[29] = \<const0> ;
  assign gpio2_io_t[28] = \<const0> ;
  assign gpio2_io_t[27] = \<const0> ;
  assign gpio2_io_t[26] = \<const0> ;
  assign gpio2_io_t[25] = \<const0> ;
  assign gpio2_io_t[24] = \<const0> ;
  assign gpio2_io_t[23] = \<const0> ;
  assign gpio2_io_t[22] = \<const0> ;
  assign gpio2_io_t[21] = \<const0> ;
  assign gpio2_io_t[20] = \<const0> ;
  assign gpio2_io_t[19] = \<const0> ;
  assign gpio2_io_t[18] = \<const0> ;
  assign gpio2_io_t[17] = \<const0> ;
  assign gpio2_io_t[16] = \<const0> ;
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
  assign gpio_io_t[31] = \<const0> ;
  assign gpio_io_t[30] = \<const0> ;
  assign gpio_io_t[29] = \<const0> ;
  assign gpio_io_t[28] = \<const0> ;
  assign gpio_io_t[27] = \<const0> ;
  assign gpio_io_t[26] = \<const0> ;
  assign gpio_io_t[25] = \<const0> ;
  assign gpio_io_t[24] = \<const0> ;
  assign gpio_io_t[23] = \<const0> ;
  assign gpio_io_t[22] = \<const0> ;
  assign gpio_io_t[21] = \<const0> ;
  assign gpio_io_t[20] = \<const0> ;
  assign gpio_io_t[19] = \<const0> ;
  assign gpio_io_t[18] = \<const0> ;
  assign gpio_io_t[17] = \<const0> ;
  assign gpio_io_t[16] = \<const0> ;
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
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif AXI_LITE_IPIF_I
       (.D({ip2bus_data_i[0],ip2bus_data[1],ip2bus_data[2],ip2bus_data[3],ip2bus_data[4],ip2bus_data[5],ip2bus_data[6],ip2bus_data[7],ip2bus_data[8],ip2bus_data[9],ip2bus_data[10],ip2bus_data[11],ip2bus_data[12],ip2bus_data[13],ip2bus_data[14],ip2bus_data[15],ip2bus_data[16],ip2bus_data[17],ip2bus_data[18],ip2bus_data[19],ip2bus_data[20],ip2bus_data[21],ip2bus_data[22],ip2bus_data[23],ip2bus_data[24],ip2bus_data[25],ip2bus_data[26],ip2bus_data[27],ip2bus_data[28],ip2bus_data[29],ip2bus_data[30],ip2bus_data_i[31]}),
        .E(AXI_LITE_IPIF_I_n_6),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg ),
        .Q({ip2bus_data_i_D1[0],ip2bus_data_i_D1[1],ip2bus_data_i_D1[2],ip2bus_data_i_D1[3],ip2bus_data_i_D1[4],ip2bus_data_i_D1[5],ip2bus_data_i_D1[6],ip2bus_data_i_D1[7],ip2bus_data_i_D1[8],ip2bus_data_i_D1[9],ip2bus_data_i_D1[10],ip2bus_data_i_D1[11],ip2bus_data_i_D1[12],ip2bus_data_i_D1[13],ip2bus_data_i_D1[14],ip2bus_data_i_D1[15],ip2bus_data_i_D1[16],ip2bus_data_i_D1[17],ip2bus_data_i_D1[18],ip2bus_data_i_D1[19],ip2bus_data_i_D1[20],ip2bus_data_i_D1[21],ip2bus_data_i_D1[22],ip2bus_data_i_D1[23],ip2bus_data_i_D1[24],ip2bus_data_i_D1[25],ip2bus_data_i_D1[26],ip2bus_data_i_D1[27],ip2bus_data_i_D1[28],ip2bus_data_i_D1[29],ip2bus_data_i_D1[30],ip2bus_data_i_D1[31]}),
        .Read_Reg_Rst(Read_Reg_Rst),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_rd_ce_or_reduce(intr_rd_ce_or_reduce),
        .intr_wr_ce_or_reduce(intr_wr_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(s_axi_arready),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(s_axi_awready),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .irpt_wrack_d1_reg(AXI_LITE_IPIF_I_n_47),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .p_3_in(p_3_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[8:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[8:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg(s_axi_rvalid),
        .s_axi_wdata({s_axi_wdata[31],s_axi_wdata[0]}),
        .\s_axi_wdata[31] (AXI_LITE_IPIF_I_n_51),
        .s_axi_wdata_0_sp_1(AXI_LITE_IPIF_I_n_50),
        .s_axi_wvalid(s_axi_wvalid));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interrupt_control \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I 
       (.\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 (AXI_LITE_IPIF_I_n_47),
        .GPIO_intr(GPIO_intr),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .IP2INTC_Irpt_i(IP2INTC_Irpt_i),
        .bus2ip_reset(bus2ip_reset),
        .bus2ip_rnw(bus2ip_rnw),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .ip2Bus_RdAck_intr_reg_hole(ip2Bus_RdAck_intr_reg_hole),
        .ip2Bus_WrAck_intr_reg_hole(ip2Bus_WrAck_intr_reg_hole),
        .ip2bus_rdack_i(ip2bus_rdack_i),
        .ip2bus_wrack_i(ip2bus_wrack_i),
        .\ip_irpt_enable_reg_reg[0]_0 (AXI_LITE_IPIF_I_n_50),
        .ipif_glbl_irpt_enable_reg_reg_0(AXI_LITE_IPIF_I_n_51),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .p_3_in(p_3_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata[0]));
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
        .D(intr_wr_ce_or_reduce),
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GPIO_Core gpio_core_1
       (.E(AXI_LITE_IPIF_I_n_6),
        .GPIO_intr(GPIO_intr),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg ),
        .Read_Reg_Rst(Read_Reg_Rst),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_reset(bus2ip_reset),
        .gpio_io_o(gpio_io_o),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_wdata(s_axi_wdata));
  FDRE \ip2bus_data_i_D1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_i[0]),
        .Q(ip2bus_data_i_D1[0]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[10]),
        .Q(ip2bus_data_i_D1[10]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[11]),
        .Q(ip2bus_data_i_D1[11]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[12]),
        .Q(ip2bus_data_i_D1[12]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[13]),
        .Q(ip2bus_data_i_D1[13]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[14]),
        .Q(ip2bus_data_i_D1[14]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[15]),
        .Q(ip2bus_data_i_D1[15]),
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
        .D(ip2bus_data[1]),
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
  FDRE \ip2bus_data_i_D1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[2]),
        .Q(ip2bus_data_i_D1[2]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[30]),
        .Q(ip2bus_data_i_D1[30]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data_i[31]),
        .Q(ip2bus_data_i_D1[31]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[3]),
        .Q(ip2bus_data_i_D1[3]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[4]),
        .Q(ip2bus_data_i_D1[4]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[5]),
        .Q(ip2bus_data_i_D1[5]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[6]),
        .Q(ip2bus_data_i_D1[6]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[7]),
        .Q(ip2bus_data_i_D1[7]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[8]),
        .Q(ip2bus_data_i_D1[8]),
        .R(bus2ip_reset));
  FDRE \ip2bus_data_i_D1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_data[9]),
        .Q(ip2bus_data_i_D1[9]),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
   (bus2ip_reset,
    bus2ip_rnw,
    bus2ip_cs,
    s_axi_rvalid_i_reg,
    s_axi_bvalid_i_reg,
    Read_Reg_Rst,
    E,
    interrupt_wrce_strb,
    irpt_wrack,
    D,
    intr2bus_rdack0,
    irpt_rdack,
    ip2Bus_RdAck_intr_reg_hole0,
    intr_rd_ce_or_reduce,
    ip2Bus_WrAck_intr_reg_hole0,
    intr_wr_ce_or_reduce,
    irpt_wrack_d1_reg,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    s_axi_wdata_0_sp_1,
    \s_axi_wdata[31] ,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_arvalid,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    irpt_wrack_d1,
    p_3_in,
    p_1_in,
    p_0_in,
    irpt_rdack_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ip2Bus_WrAck_intr_reg_hole_d1,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg ,
    s_axi_rready,
    s_axi_bready,
    s_axi_wdata,
    s_axi_awvalid,
    s_axi_wvalid,
    Q,
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
  output Read_Reg_Rst;
  output [0:0]E;
  output interrupt_wrce_strb;
  output irpt_wrack;
  output [31:0]D;
  output intr2bus_rdack0;
  output irpt_rdack;
  output ip2Bus_RdAck_intr_reg_hole0;
  output intr_rd_ce_or_reduce;
  output ip2Bus_WrAck_intr_reg_hole0;
  output intr_wr_ce_or_reduce;
  output irpt_wrack_d1_reg;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output s_axi_wdata_0_sp_1;
  output \s_axi_wdata[31] ;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_arvalid;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input irpt_wrack_d1;
  input [0:0]p_3_in;
  input [0:0]p_1_in;
  input [0:0]p_0_in;
  input irpt_rdack_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg ;
  input s_axi_rready;
  input s_axi_bready;
  input [1:0]s_axi_wdata;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [31:0]Q;
  input s_axi_aresetn;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;

  wire [31:0]D;
  wire [0:0]E;
  wire GPIO_xferAck_i;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg ;
  wire [31:0]Q;
  wire Read_Reg_Rst;
  wire [0:0]bus2ip_cs;
  wire bus2ip_reset;
  wire bus2ip_rnw;
  wire gpio_xferAck_Reg;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_rd_ce_or_reduce;
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire irpt_wrack_d1_reg;
  wire [0:0]p_0_in;
  wire [0:0]p_1_in;
  wire [0:0]p_3_in;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid_i_reg;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid_i_reg;
  wire [1:0]s_axi_wdata;
  wire \s_axi_wdata[31] ;
  wire s_axi_wdata_0_sn_1;
  wire s_axi_wvalid;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment I_SLAVE_ATTACHMENT
       (.D(D),
        .E(E),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg ),
        .Q(Q),
        .Read_Reg_Rst(Read_Reg_Rst),
        .SR(bus2ip_reset),
        .bus2ip_cs(bus2ip_cs),
        .bus2ip_rnw_i_reg_0(bus2ip_rnw),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_rd_ce_or_reduce(intr_rd_ce_or_reduce),
        .intr_wr_ce_or_reduce(intr_wr_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .irpt_wrack_d1_reg(irpt_wrack_d1_reg),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .p_3_in(p_3_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_i_reg_0(s_axi_bvalid_i_reg),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_i_reg_0(s_axi_rvalid_i_reg),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[31] (\s_axi_wdata[31] ),
        .s_axi_wdata_0_sp_1(s_axi_wdata_0_sn_1),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axi_gpio_0_1,axi_gpio,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_gpio,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
    gpio_io_o);
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
  (* x_interface_info = "xilinx.com:interface:gpio:1.0 GPIO TRI_O" *) (* x_interface_mode = "master GPIO" *) (* x_interface_parameter = "XIL_INTERFACENAME GPIO, BOARD.ASSOCIATED_PARAM GPIO_BOARD_INTERFACE" *) output [31:0]gpio_io_o;

  wire \<const0> ;
  wire [31:0]gpio_io_o;
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
  wire [31:0]NLW_U0_gpio2_io_o_UNCONNECTED;
  wire [31:0]NLW_U0_gpio2_io_t_UNCONNECTED;
  wire [31:0]NLW_U0_gpio_io_t_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ALL_INPUTS = "0" *) 
  (* C_ALL_INPUTS_2 = "0" *) 
  (* C_ALL_OUTPUTS = "1" *) 
  (* C_ALL_OUTPUTS_2 = "0" *) 
  (* C_DOUT_DEFAULT = "32'b00000000000000000000000000000000" *) 
  (* C_DOUT_DEFAULT_2 = "32'b00000000000000000000000000000000" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_GPIO2_WIDTH = "32" *) 
  (* C_GPIO_WIDTH = "32" *) 
  (* C_INTERRUPT_PRESENT = "1" *) 
  (* C_IS_DUAL = "0" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TRI_DEFAULT = "32'b11111111111111111111111111111111" *) 
  (* C_TRI_DEFAULT_2 = "32'b11111111111111111111111111111111" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_group = "LOGICORE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_gpio U0
       (.gpio2_io_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gpio2_io_o(NLW_U0_gpio2_io_o_UNCONNECTED[31:0]),
        .gpio2_io_t(NLW_U0_gpio2_io_t_UNCONNECTED[31:0]),
        .gpio_io_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gpio_io_o(gpio_io_o),
        .gpio_io_t(NLW_U0_gpio_io_t_UNCONNECTED[31:0]),
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
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interrupt_control
   (irpt_wrack_d1,
    p_3_in,
    irpt_rdack_d1,
    p_1_in,
    p_0_in,
    ip2bus_wrack_i,
    ip2bus_rdack_i,
    IP2INTC_Irpt_i,
    bus2ip_reset,
    irpt_wrack,
    s_axi_aclk,
    GPIO_intr,
    interrupt_wrce_strb,
    irpt_rdack,
    intr2bus_rdack0,
    \ip_irpt_enable_reg_reg[0]_0 ,
    ipif_glbl_irpt_enable_reg_reg_0,
    GPIO_xferAck_i,
    bus2ip_rnw,
    ip2Bus_WrAck_intr_reg_hole,
    ip2Bus_RdAck_intr_reg_hole,
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ,
    s_axi_wdata);
  output irpt_wrack_d1;
  output [0:0]p_3_in;
  output irpt_rdack_d1;
  output [0:0]p_1_in;
  output [0:0]p_0_in;
  output ip2bus_wrack_i;
  output ip2bus_rdack_i;
  output IP2INTC_Irpt_i;
  input bus2ip_reset;
  input irpt_wrack;
  input s_axi_aclk;
  input GPIO_intr;
  input interrupt_wrce_strb;
  input irpt_rdack;
  input intr2bus_rdack0;
  input \ip_irpt_enable_reg_reg[0]_0 ;
  input ipif_glbl_irpt_enable_reg_reg_0;
  input GPIO_xferAck_i;
  input bus2ip_rnw;
  input ip2Bus_WrAck_intr_reg_hole;
  input ip2Bus_RdAck_intr_reg_hole;
  input \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  input [0:0]s_axi_wdata;

  wire \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1 ;
  wire \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ;
  wire \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ;
  wire GPIO_intr;
  wire GPIO_xferAck_i;
  wire IP2INTC_Irpt_i;
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
  wire \ip_irpt_enable_reg_reg[0]_0 ;
  wire ipif_glbl_irpt_enable_reg_reg_0;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire [0:0]p_0_in;
  wire [0:0]p_1_in;
  wire [0:0]p_3_in;
  wire s_axi_aclk;
  wire [0:0]s_axi_wdata;

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
  LUT5 #(
    .INIT(32'hBAFF7530)) 
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1 
       (.I0(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0 ),
        .I1(\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2 ),
        .I2(\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1 ),
        .I3(s_axi_wdata),
        .I4(p_3_in),
        .O(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ));
  FDRE \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0 ),
        .Q(p_3_in),
        .R(bus2ip_reset));
  LUT3 #(
    .INIT(8'h80)) 
    \INTR_CTRLR_GEN.ip2intc_irpt_i_1 
       (.I0(p_0_in),
        .I1(p_1_in),
        .I2(p_3_in),
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
        .CE(1'b1),
        .D(\ip_irpt_enable_reg_reg[0]_0 ),
        .Q(p_1_in),
        .R(bus2ip_reset));
  FDRE ipif_glbl_irpt_enable_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ipif_glbl_irpt_enable_reg_reg_0),
        .Q(p_0_in),
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
        .D(irpt_wrack),
        .Q(irpt_wrack_d1),
        .R(bus2ip_reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
   (SR,
    bus2ip_rnw_i_reg_0,
    bus2ip_cs,
    s_axi_rvalid_i_reg_0,
    s_axi_bvalid_i_reg_0,
    Read_Reg_Rst,
    E,
    interrupt_wrce_strb,
    irpt_wrack,
    D,
    intr2bus_rdack0,
    irpt_rdack,
    ip2Bus_RdAck_intr_reg_hole0,
    intr_rd_ce_or_reduce,
    ip2Bus_WrAck_intr_reg_hole0,
    intr_wr_ce_or_reduce,
    irpt_wrack_d1_reg,
    ip2bus_rdack_i_D1_reg,
    ip2bus_wrack_i_D1_reg,
    s_axi_wdata_0_sp_1,
    \s_axi_wdata[31] ,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_arvalid,
    GPIO_xferAck_i,
    gpio_xferAck_Reg,
    irpt_wrack_d1,
    p_3_in,
    p_1_in,
    p_0_in,
    irpt_rdack_d1,
    ip2Bus_RdAck_intr_reg_hole_d1,
    ip2Bus_WrAck_intr_reg_hole_d1,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg ,
    \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg ,
    s_axi_rready,
    s_axi_bready,
    s_axi_wdata,
    s_axi_awvalid,
    s_axi_wvalid,
    Q,
    s_axi_aresetn,
    ip2bus_rdack_i_D1,
    ip2bus_wrack_i_D1,
    s_axi_araddr,
    s_axi_awaddr);
  output [0:0]SR;
  output bus2ip_rnw_i_reg_0;
  output [0:0]bus2ip_cs;
  output s_axi_rvalid_i_reg_0;
  output s_axi_bvalid_i_reg_0;
  output Read_Reg_Rst;
  output [0:0]E;
  output interrupt_wrce_strb;
  output irpt_wrack;
  output [31:0]D;
  output intr2bus_rdack0;
  output irpt_rdack;
  output ip2Bus_RdAck_intr_reg_hole0;
  output intr_rd_ce_or_reduce;
  output ip2Bus_WrAck_intr_reg_hole0;
  output intr_wr_ce_or_reduce;
  output irpt_wrack_d1_reg;
  output ip2bus_rdack_i_D1_reg;
  output ip2bus_wrack_i_D1_reg;
  output s_axi_wdata_0_sp_1;
  output \s_axi_wdata[31] ;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_arvalid;
  input GPIO_xferAck_i;
  input gpio_xferAck_Reg;
  input irpt_wrack_d1;
  input [0:0]p_3_in;
  input [0:0]p_1_in;
  input [0:0]p_0_in;
  input irpt_rdack_d1;
  input ip2Bus_RdAck_intr_reg_hole_d1;
  input ip2Bus_WrAck_intr_reg_hole_d1;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg ;
  input \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg ;
  input s_axi_rready;
  input s_axi_bready;
  input [1:0]s_axi_wdata;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [31:0]Q;
  input s_axi_aresetn;
  input ip2bus_rdack_i_D1;
  input ip2bus_wrack_i_D1;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;

  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire GPIO_xferAck_i;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg ;
  wire \Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg ;
  wire [31:0]Q;
  wire Read_Reg_Rst;
  wire [0:0]SR;
  wire [0:6]bus2ip_addr;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire [0:0]bus2ip_cs;
  wire bus2ip_rnw_i_reg_0;
  wire clear;
  wire gpio_xferAck_Reg;
  wire interrupt_wrce_strb;
  wire intr2bus_rdack0;
  wire intr_rd_ce_or_reduce;
  wire intr_wr_ce_or_reduce;
  wire ip2Bus_RdAck_intr_reg_hole0;
  wire ip2Bus_RdAck_intr_reg_hole_d1;
  wire ip2Bus_WrAck_intr_reg_hole0;
  wire ip2Bus_WrAck_intr_reg_hole_d1;
  wire ip2bus_rdack_i_D1;
  wire ip2bus_rdack_i_D1_reg;
  wire ip2bus_wrack_i_D1;
  wire ip2bus_wrack_i_D1_reg;
  wire irpt_rdack;
  wire irpt_rdack_d1;
  wire irpt_wrack;
  wire irpt_wrack_d1;
  wire irpt_wrack_d1_reg;
  wire is_read;
  wire is_read_i_1_n_0;
  wire is_read_reg_n_0;
  wire is_write;
  wire is_write_reg_n_0;
  wire [0:0]p_0_in;
  wire [0:0]p_1_in;
  wire [8:2]p_1_in__0;
  wire [0:0]p_3_in;
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
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp_i;
  wire s_axi_rvalid_i_i_1_n_0;
  wire s_axi_rvalid_i_reg_0;
  wire [1:0]s_axi_wdata;
  wire \s_axi_wdata[31] ;
  wire s_axi_wdata_0_sn_1;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire state1__2;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;

  assign s_axi_wdata_0_sp_1 = s_axi_wdata_0_sn_1;
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
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder I_DECODER
       (.D(D),
        .E(E),
        .GPIO_xferAck_i(GPIO_xferAck_i),
        .\MEM_DECODE_GEN[0].cs_out_i_reg[0]_0 ({bus2ip_addr[0],bus2ip_addr[1],bus2ip_addr[2],bus2ip_addr[3],bus2ip_addr[4],bus2ip_addr[5],bus2ip_addr[6]}),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[0].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[10].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[11].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[12].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[13].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[14].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[15].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[16].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[17].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[18].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[19].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[1].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[20].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[21].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[22].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[23].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[24].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[25].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[26].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[27].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[28].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[29].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[2].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[30].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[31].reg1_reg[31] (bus2ip_rnw_i_reg_0),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[3].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[4].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[5].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[6].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[7].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[8].reg1_reg ),
        .\Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg (\Not_Dual.ALLOUT_ND.READ_REG_GEN[9].reg1_reg ),
        .Q(start2),
        .Read_Reg_Rst(Read_Reg_Rst),
        .bus2ip_cs(bus2ip_cs),
        .gpio_xferAck_Reg(gpio_xferAck_Reg),
        .interrupt_wrce_strb(interrupt_wrce_strb),
        .intr2bus_rdack0(intr2bus_rdack0),
        .intr_rd_ce_or_reduce(intr_rd_ce_or_reduce),
        .intr_wr_ce_or_reduce(intr_wr_ce_or_reduce),
        .ip2Bus_RdAck_intr_reg_hole0(ip2Bus_RdAck_intr_reg_hole0),
        .ip2Bus_RdAck_intr_reg_hole_d1(ip2Bus_RdAck_intr_reg_hole_d1),
        .ip2Bus_WrAck_intr_reg_hole0(ip2Bus_WrAck_intr_reg_hole0),
        .ip2Bus_WrAck_intr_reg_hole_d1(ip2Bus_WrAck_intr_reg_hole_d1),
        .ip2bus_rdack_i_D1(ip2bus_rdack_i_D1),
        .ip2bus_rdack_i_D1_reg(ip2bus_rdack_i_D1_reg),
        .ip2bus_wrack_i_D1(ip2bus_wrack_i_D1),
        .ip2bus_wrack_i_D1_reg(ip2bus_wrack_i_D1_reg),
        .irpt_rdack(irpt_rdack),
        .irpt_rdack_d1(irpt_rdack_d1),
        .irpt_wrack(irpt_wrack),
        .irpt_wrack_d1(irpt_wrack_d1),
        .irpt_wrack_d1_reg(irpt_wrack_d1_reg),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .p_3_in(p_3_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(is_read_reg_n_0),
        .s_axi_arready_0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg ),
        .s_axi_awready(is_write_reg_n_0),
        .s_axi_wdata(s_axi_wdata),
        .\s_axi_wdata[31] (\s_axi_wdata[31] ),
        .s_axi_wdata_0_sp_1(s_axi_wdata_0_sn_1));
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_awaddr[1]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_awaddr[3]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_awaddr[4]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[7]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_awaddr[5]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[7]));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_awaddr[6]),
        .I2(s_axi_arvalid),
        .O(p_1_in__0[8]));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[2]),
        .Q(bus2ip_addr[6]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[3]),
        .Q(bus2ip_addr[5]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[4]),
        .Q(bus2ip_addr[4]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[5]),
        .Q(bus2ip_addr[3]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[6]),
        .Q(bus2ip_addr[2]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[7]),
        .Q(bus2ip_addr[1]),
        .R(SR));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(p_1_in__0[8]),
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
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
        .D(Q[0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[10]),
        .Q(s_axi_rdata[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[11]),
        .Q(s_axi_rdata[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[12]),
        .Q(s_axi_rdata[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[13]),
        .Q(s_axi_rdata[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[14]),
        .Q(s_axi_rdata[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[15]),
        .Q(s_axi_rdata[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[16]),
        .Q(s_axi_rdata[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[17]),
        .Q(s_axi_rdata[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[18]),
        .Q(s_axi_rdata[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[19]),
        .Q(s_axi_rdata[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[20]),
        .Q(s_axi_rdata[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[21]),
        .Q(s_axi_rdata[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[22]),
        .Q(s_axi_rdata[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[23]),
        .Q(s_axi_rdata[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[24]),
        .Q(s_axi_rdata[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[25]),
        .Q(s_axi_rdata[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[26]),
        .Q(s_axi_rdata[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[27]),
        .Q(s_axi_rdata[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[28]),
        .Q(s_axi_rdata[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[29]),
        .Q(s_axi_rdata[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[30]),
        .Q(s_axi_rdata[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[31]),
        .Q(s_axi_rdata[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[8]),
        .Q(s_axi_rdata[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rresp_i),
        .D(Q[9]),
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
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* WIDTH = "32" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* xpm_cdc = "ARRAY_SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input [31:0]src_in;
  input dest_clk;
  output [31:0]dest_out;

  wire [31:0]async_path_bit;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [31:0]\syncstages_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [31:0]\syncstages_ff[1] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [31:0]\syncstages_ff[2] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ARRAY_SINGLE" *) wire [31:0]\syncstages_ff[3] ;

  assign dest_out[31:0] = \syncstages_ff[3] ;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(async_path_bit[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(async_path_bit[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(async_path_bit[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(async_path_bit[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(async_path_bit[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(async_path_bit[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(async_path_bit[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(async_path_bit[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(async_path_bit[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(async_path_bit[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(async_path_bit[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(async_path_bit[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(async_path_bit[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(async_path_bit[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(async_path_bit[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(async_path_bit[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(async_path_bit[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(async_path_bit[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(async_path_bit[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(async_path_bit[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(async_path_bit[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(async_path_bit[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(async_path_bit[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(async_path_bit[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(async_path_bit[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(async_path_bit[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(async_path_bit[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(async_path_bit[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(async_path_bit[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(async_path_bit[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(async_path_bit[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(async_path_bit[22]));
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
  FDRE \syncstages_ff_reg[0][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[16]),
        .Q(\syncstages_ff[0] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[17]),
        .Q(\syncstages_ff[0] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[18]),
        .Q(\syncstages_ff[0] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[19]),
        .Q(\syncstages_ff[0] [19]),
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
  FDRE \syncstages_ff_reg[0][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[20]),
        .Q(\syncstages_ff[0] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[21]),
        .Q(\syncstages_ff[0] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[22]),
        .Q(\syncstages_ff[0] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[23]),
        .Q(\syncstages_ff[0] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[24]),
        .Q(\syncstages_ff[0] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[25]),
        .Q(\syncstages_ff[0] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[26]),
        .Q(\syncstages_ff[0] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[27]),
        .Q(\syncstages_ff[0] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[28]),
        .Q(\syncstages_ff[0] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[29]),
        .Q(\syncstages_ff[0] [29]),
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
  FDRE \syncstages_ff_reg[0][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[30]),
        .Q(\syncstages_ff[0] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[0][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path_bit[31]),
        .Q(\syncstages_ff[0] [31]),
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
  FDRE \syncstages_ff_reg[1][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [16]),
        .Q(\syncstages_ff[1] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [17]),
        .Q(\syncstages_ff[1] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [18]),
        .Q(\syncstages_ff[1] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [19]),
        .Q(\syncstages_ff[1] [19]),
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
  FDRE \syncstages_ff_reg[1][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [20]),
        .Q(\syncstages_ff[1] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [21]),
        .Q(\syncstages_ff[1] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [22]),
        .Q(\syncstages_ff[1] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [23]),
        .Q(\syncstages_ff[1] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [24]),
        .Q(\syncstages_ff[1] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [25]),
        .Q(\syncstages_ff[1] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [26]),
        .Q(\syncstages_ff[1] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [27]),
        .Q(\syncstages_ff[1] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [28]),
        .Q(\syncstages_ff[1] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [29]),
        .Q(\syncstages_ff[1] [29]),
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
  FDRE \syncstages_ff_reg[1][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [30]),
        .Q(\syncstages_ff[1] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[1][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[0] [31]),
        .Q(\syncstages_ff[1] [31]),
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
  FDRE \syncstages_ff_reg[2][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [16]),
        .Q(\syncstages_ff[2] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [17]),
        .Q(\syncstages_ff[2] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [18]),
        .Q(\syncstages_ff[2] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [19]),
        .Q(\syncstages_ff[2] [19]),
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
  FDRE \syncstages_ff_reg[2][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [20]),
        .Q(\syncstages_ff[2] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [21]),
        .Q(\syncstages_ff[2] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [22]),
        .Q(\syncstages_ff[2] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [23]),
        .Q(\syncstages_ff[2] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [24]),
        .Q(\syncstages_ff[2] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [25]),
        .Q(\syncstages_ff[2] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [26]),
        .Q(\syncstages_ff[2] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [27]),
        .Q(\syncstages_ff[2] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [28]),
        .Q(\syncstages_ff[2] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [29]),
        .Q(\syncstages_ff[2] [29]),
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
  FDRE \syncstages_ff_reg[2][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [30]),
        .Q(\syncstages_ff[2] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[2][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[1] [31]),
        .Q(\syncstages_ff[2] [31]),
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
  FDRE \syncstages_ff_reg[3][16] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [16]),
        .Q(\syncstages_ff[3] [16]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][17] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [17]),
        .Q(\syncstages_ff[3] [17]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][18] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [18]),
        .Q(\syncstages_ff[3] [18]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][19] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [19]),
        .Q(\syncstages_ff[3] [19]),
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
  FDRE \syncstages_ff_reg[3][20] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [20]),
        .Q(\syncstages_ff[3] [20]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][21] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [21]),
        .Q(\syncstages_ff[3] [21]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][22] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [22]),
        .Q(\syncstages_ff[3] [22]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][23] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [23]),
        .Q(\syncstages_ff[3] [23]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][24] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [24]),
        .Q(\syncstages_ff[3] [24]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][25] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [25]),
        .Q(\syncstages_ff[3] [25]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][26] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [26]),
        .Q(\syncstages_ff[3] [26]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][27] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [27]),
        .Q(\syncstages_ff[3] [27]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][28] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [28]),
        .Q(\syncstages_ff[3] [28]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][29] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [29]),
        .Q(\syncstages_ff[3] [29]),
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
  FDRE \syncstages_ff_reg[3][30] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [30]),
        .Q(\syncstages_ff[3] [30]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ARRAY_SINGLE" *) 
  FDRE \syncstages_ff_reg[3][31] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\syncstages_ff[2] [31]),
        .Q(\syncstages_ff[3] [31]),
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
