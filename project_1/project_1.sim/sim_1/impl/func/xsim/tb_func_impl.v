// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Wed Nov  5 18:23:20 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/xmen/Desktop/compara/analise/SystolicMatrixMultiplication/project_1/project_1.sim/sim_1/impl/func/xsim/tb_func_impl.v
// Design      : Arty7_top_sim
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* BAUDRATE = "115200" *) (* BYTESIZES = "8" *) (* CLOCK_REF = "10000000" *) 
(* CLOCK_TRANFER_PC = "5000" *) (* COUNTER_CLOCK_INPUT = "100000000" *) (* ECO_CHECKSUM = "734f9bc7" *) 
(* OVERSAMPLING = "16" *) (* SIZE = "8" *) (* WIDTH = "8" *) 
(* WIDTHx = "1" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module Arty7_top_sim
   (clock,
    sw,
    btn,
    uart_txd_in,
    uart_rxd_out,
    led,
    led0RGB,
    led1RGB,
    led2RGB,
    led3RGB);
  input clock;
  input [3:0]sw;
  input [3:0]btn;
  input uart_txd_in;
  output uart_rxd_out;
  output [3:0]led;
  output [2:0]led0RGB;
  output [2:0]led1RGB;
  output [2:0]led2RGB;
  output [2:0]led3RGB;

  wire DUT_MatrixMultiplyM0_n_0;
  wire DUT_MatrixMultiplyM0_n_2;
  wire DUT_MatrixMultiplyM0_n_3;
  wire [3:0]btn;
  wire [0:0]btn_IBUF;
  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [1:0]fsm_unit_control;
  wire [3:0]fsm_unit_control_next;
  wire fsm_unit_control_next2;
  wire [3:1]fsm_unit_control_next__0;
  wire [2:0]i_counter;
  wire [2:0]j_counter;
  wire [3:0]led;
  wire [2:0]led0RGB;
  wire [2:0]led1RGB;
  wire [2:0]led2RGB;
  wire [2:0]led3RGB;
  wire mem2serial_clock;
  wire mem2serial_rvalid_o;
  wire mem2serial_valid_i;
  wire [1:0]mem_fsm;
  wire mem_input_opA_n_2;
  wire mem_input_opA_n_3;
  wire [7:0]mem_opa_out_data;
  wire mem_opa_rready_i;
  wire mem_opa_rw;
  wire mem_opa_valid_i;
  wire mem_opa_valid_i__0;
  wire mem_opb_clock;
  wire mem_opb_clock_BUFG;
  wire [7:0]mem_opb_out_data;
  wire mem_opb_rw;
  wire mem_opb_valid_i;
  wire mem_opb_valid_i__0;
  wire p_0_in;
  wire syst_nreset;
  wire syst_rready_i;
  wire [7:0]uart_data_rx_out;
  wire [0:0]uart_data_tx_in;
  wire uart_rxd_out;
  wire uart_rxd_out_OBUF;
  wire [1:0]\uart_transmitter/px_bit_reg ;
  wire uart_txd_in;
  wire uart_txd_in_IBUF;
  wire uart_valid_tx_in;
  wire uart_valid_tx_in_reg_i_1_n_0;

  systolicMatrixMultiply DUT_MatrixMultiplyM0
       (.D(fsm_unit_control_next__0[3:2]),
        .\FSM_onehot_fsm_unit_control_reg[3] ({uart_valid_tx_in,mem_opa_rready_i,fsm_unit_control[1]}),
        .Q(\uart_transmitter/px_bit_reg ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .fsm_unit_control_next2(fsm_unit_control_next2),
        .\j_counter_reg[2] (uart_data_tx_in),
        .mem2serial_rvalid_o(mem2serial_rvalid_o),
        .mem2serial_valid_i(mem2serial_valid_i),
        .mem_opa_out_data(mem_opa_out_data),
        .mem_opb_out_data(mem_opb_out_data),
        .mem_opb_rw(mem_opb_rw),
        .\px_bit_reg[0] (DUT_MatrixMultiplyM0_n_0),
        .\px_bit_reg[0]_0 (DUT_MatrixMultiplyM0_n_2),
        .\px_bit_reg[1] (DUT_MatrixMultiplyM0_n_3),
        .sdata_tx_out_i_3_0(j_counter),
        .sdata_tx_out_reg_i_18_0(i_counter),
        .syst_rready_i(syst_rready_i));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_fsm_unit_control_next_reg[0] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(uart_valid_tx_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(fsm_unit_control_next[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_unit_control_next_reg[1] 
       (.CLR(1'b0),
        .D(fsm_unit_control_next__0[1]),
        .G(uart_valid_tx_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(fsm_unit_control_next[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_unit_control_next_reg[2] 
       (.CLR(1'b0),
        .D(fsm_unit_control_next__0[2]),
        .G(uart_valid_tx_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(fsm_unit_control_next[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_unit_control_next_reg[3] 
       (.CLR(1'b0),
        .D(fsm_unit_control_next__0[3]),
        .G(uart_valid_tx_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(fsm_unit_control_next[3]));
  (* FSM_ENCODED_STATES = "IDLE:00001,WRITE_MEM:00010,SYSTOLIC_READ_MEM:00100,WRITE_MEM_OUT:01000,DONE:10000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_fsm_unit_control_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(fsm_unit_control_next[0]),
        .PRE(btn_IBUF),
        .Q(fsm_unit_control[0]));
  (* FSM_ENCODED_STATES = "IDLE:00001,WRITE_MEM:00010,SYSTOLIC_READ_MEM:00100,WRITE_MEM_OUT:01000,DONE:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_unit_control_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(fsm_unit_control_next[1]),
        .Q(fsm_unit_control[1]));
  (* FSM_ENCODED_STATES = "IDLE:00001,WRITE_MEM:00010,SYSTOLIC_READ_MEM:00100,WRITE_MEM_OUT:01000,DONE:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_unit_control_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(fsm_unit_control_next[2]),
        .Q(mem_opa_rready_i));
  (* FSM_ENCODED_STATES = "IDLE:00001,WRITE_MEM:00010,SYSTOLIC_READ_MEM:00100,WRITE_MEM_OUT:01000,DONE:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_unit_control_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(fsm_unit_control_next[3]),
        .Q(uart_valid_tx_in));
  IBUF \btn_IBUF[0]_inst 
       (.I(btn[0]),
        .O(btn_IBUF));
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  ref_clock__parameterized0 clock_hate_pc
       (.CLK(mem2serial_clock),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG));
  OBUFT \led0RGB_OBUF[0]_inst 
       (.I(1'b0),
        .O(led0RGB[0]),
        .T(1'b1));
  OBUFT \led0RGB_OBUF[1]_inst 
       (.I(1'b0),
        .O(led0RGB[1]),
        .T(1'b1));
  OBUFT \led0RGB_OBUF[2]_inst 
       (.I(1'b0),
        .O(led0RGB[2]),
        .T(1'b1));
  OBUFT \led1RGB_OBUF[0]_inst 
       (.I(1'b0),
        .O(led1RGB[0]),
        .T(1'b1));
  OBUFT \led1RGB_OBUF[1]_inst 
       (.I(1'b0),
        .O(led1RGB[1]),
        .T(1'b1));
  OBUFT \led1RGB_OBUF[2]_inst 
       (.I(1'b0),
        .O(led1RGB[2]),
        .T(1'b1));
  OBUFT \led2RGB_OBUF[0]_inst 
       (.I(1'b0),
        .O(led2RGB[0]),
        .T(1'b1));
  OBUFT \led2RGB_OBUF[1]_inst 
       (.I(1'b0),
        .O(led2RGB[1]),
        .T(1'b1));
  OBUFT \led2RGB_OBUF[2]_inst 
       (.I(1'b0),
        .O(led2RGB[2]),
        .T(1'b1));
  OBUFT \led3RGB_OBUF[0]_inst 
       (.I(1'b0),
        .O(led3RGB[0]),
        .T(1'b1));
  OBUFT \led3RGB_OBUF[1]_inst 
       (.I(1'b0),
        .O(led3RGB[1]),
        .T(1'b1));
  OBUFT \led3RGB_OBUF[2]_inst 
       (.I(1'b0),
        .O(led3RGB[2]),
        .T(1'b1));
  OBUFT \led_OBUF[0]_inst 
       (.I(1'b0),
        .O(led[0]),
        .T(1'b1));
  OBUFT \led_OBUF[1]_inst 
       (.I(1'b0),
        .O(led[1]),
        .T(1'b1));
  OBUFT \led_OBUF[2]_inst 
       (.I(1'b0),
        .O(led[2]),
        .T(1'b1));
  OBUFT \led_OBUF[3]_inst 
       (.I(1'b0),
        .O(led[3]),
        .T(1'b1));
  mem2seriala mem2serial_transfer_pc
       (.CLK(mem2serial_clock),
        .Q(j_counter),
        .btn_IBUF(btn_IBUF),
        .\i_counter_reg[2]_0 (i_counter),
        .mem2serial_rvalid_o(mem2serial_rvalid_o),
        .mem2serial_valid_i(mem2serial_valid_i));
  mem mem_input_opA
       (.E(syst_nreset),
        .Q(mem_fsm),
        .\btn[0] (mem_input_opA_n_3),
        .btn_IBUF(btn_IBUF),
        .fsm_unit_control_next2(fsm_unit_control_next2),
        .\mem_fsm_reg[1]_0 (mem_input_opA_n_2),
        .mem_opa_out_data(mem_opa_out_data),
        .mem_opa_valid_i(mem_opa_valid_i),
        .mem_opb_clock_BUFG(mem_opb_clock_BUFG),
        .mem_opb_rw(mem_opb_rw),
        .mem_opb_valid_i__0(mem_opb_valid_i__0),
        .mem_opb_valid_i_reg({mem_opa_rready_i,fsm_unit_control[1]}),
        .\mem_reg[0][7]_0 (uart_data_rx_out),
        .p_0_in(p_0_in),
        .syst_rready_i(syst_rready_i));
  mem_0 mem_input_opB
       (.D(fsm_unit_control_next__0[1]),
        .E(syst_nreset),
        .\FSM_onehot_fsm_unit_control_reg[1] (mem_input_opA_n_2),
        .Q(fsm_unit_control),
        .btn_IBUF(btn_IBUF),
        .\mem_fsm_reg[1]_0 (mem_fsm),
        .mem_opb_clock_BUFG(mem_opb_clock_BUFG),
        .mem_opb_out_data(mem_opb_out_data),
        .mem_opb_rw(mem_opb_rw),
        .mem_opb_valid_i(mem_opb_valid_i),
        .\mem_reg[0][7]_0 (uart_data_rx_out),
        .\out_data_reg[0]_0 (mem_input_opA_n_3),
        .p_0_in(p_0_in),
        .syst_rready_i(syst_rready_i));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    mem_opa_rready_i_reg
       (.CLR(1'b0),
        .D(mem_opa_rready_i),
        .G(uart_valid_tx_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(syst_rready_i));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    mem_opa_rw_reg
       (.CLR(1'b0),
        .D(mem_opa_rw),
        .G(uart_valid_tx_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(mem_opb_rw));
  LUT2 #(
    .INIT(4'hE)) 
    mem_opa_rw_reg_i_1
       (.I0(mem_opa_rready_i),
        .I1(uart_valid_tx_in),
        .O(mem_opa_rw));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    mem_opa_valid_i_reg
       (.CLR(1'b0),
        .D(mem_opa_valid_i__0),
        .G(uart_valid_tx_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(mem_opa_valid_i));
  LUT2 #(
    .INIT(4'hE)) 
    mem_opa_valid_i_reg_i_1
       (.I0(fsm_unit_control[1]),
        .I1(mem_opa_rready_i),
        .O(mem_opa_valid_i__0));
  BUFG mem_opb_clock_BUFG_inst
       (.I(mem_opb_clock),
        .O(mem_opb_clock_BUFG));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    mem_opb_valid_i_reg
       (.CLR(1'b0),
        .D(mem_opb_valid_i__0),
        .G(uart_valid_tx_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(mem_opb_valid_i));
  uart_top uart1
       (.Q(\uart_transmitter/px_bit_reg ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF(clock_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\data_rx_out_reg[7] (uart_data_rx_out),
        .mem2serial_valid_i(mem2serial_valid_i),
        .mem_opb_clock(mem_opb_clock),
        .mem_opb_rw(mem_opb_rw),
        .sdata_tx_out_i_2(uart_data_tx_in),
        .sdata_tx_out_reg(DUT_MatrixMultiplyM0_n_3),
        .sdata_tx_out_reg_0(DUT_MatrixMultiplyM0_n_2),
        .sdata_tx_out_reg_1(DUT_MatrixMultiplyM0_n_0),
        .uart_rxd_out_OBUF(uart_rxd_out_OBUF),
        .uart_txd_in_IBUF(uart_txd_in_IBUF));
  OBUF uart_rxd_out_OBUF_inst
       (.I(uart_rxd_out_OBUF),
        .O(uart_rxd_out));
  IBUF uart_txd_in_IBUF_inst
       (.I(uart_txd_in),
        .O(uart_txd_in_IBUF));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    uart_valid_tx_in_reg
       (.CLR(1'b0),
        .D(uart_valid_tx_in),
        .G(uart_valid_tx_in_reg_i_1_n_0),
        .GE(1'b1),
        .Q(mem2serial_valid_i));
  LUT4 #(
    .INIT(16'hFFFE)) 
    uart_valid_tx_in_reg_i_1
       (.I0(uart_valid_tx_in),
        .I1(mem_opa_rready_i),
        .I2(fsm_unit_control[0]),
        .I3(fsm_unit_control[1]),
        .O(uart_valid_tx_in_reg_i_1_n_0));
endmodule

module accumulator_cells
   (y,
    \x_reg[0]_0 ,
    \accumulator_reg[7]_0 ,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output y;
  output \x_reg[0]_0 ;
  output [7:0]\accumulator_reg[7]_0 ;
  input [0:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]\x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [0:0]Q;
  wire \accumulator[6]_i_2_n_0 ;
  wire \accumulator[7]_i_2_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [7:0]\accumulator_reg[7]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire y;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1 
       (.I0(\accumulator_reg[7]_0 [0]),
        .I1(Q),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1 
       (.I0(\accumulator_reg[7]_0 [1]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(\x_reg[0]_1 ),
        .I3(Q),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [1]),
        .I2(Q),
        .I3(\x_reg[0]_1 ),
        .I4(\accumulator_reg[7]_0 [0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1 
       (.I0(\accumulator_reg[7]_0 [3]),
        .I1(\accumulator[6]_i_2_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1 
       (.I0(\accumulator_reg[7]_0 [4]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [4]),
        .I2(\accumulator[6]_i_2_n_0 ),
        .I3(\accumulator_reg[7]_0 [3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1 
       (.I0(\accumulator_reg[7]_0 [6]),
        .I1(\accumulator_reg[7]_0 [5]),
        .I2(\accumulator_reg[7]_0 [3]),
        .I3(\accumulator[6]_i_2_n_0 ),
        .I4(\accumulator_reg[7]_0 [4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(\x_reg[0]_1 ),
        .I3(Q),
        .I4(\accumulator_reg[0]_0 ),
        .I5(\accumulator_reg[7]_0 [1]),
        .O(\accumulator[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1 
       (.I0(\accumulator_reg[7]_0 [7]),
        .I1(\accumulator_reg[7]_0 [6]),
        .I2(\accumulator[7]_i_2_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2_n_0 ),
        .I3(\accumulator_reg[7]_0 [4]),
        .O(\accumulator[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product[0]),
        .Q(\accumulator_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product[1]),
        .Q(\accumulator_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product[2]),
        .Q(\accumulator_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product[3]),
        .Q(\accumulator_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product[4]),
        .Q(\accumulator_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product[5]),
        .Q(\accumulator_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product[6]),
        .Q(\accumulator_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product[7]),
        .Q(\accumulator_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q),
        .Q(y));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_10
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    \accumulator_reg[7]_0 ,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]\accumulator_reg[7]_0 ;
  input [0:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [0:0]Q;
  wire \accumulator[6]_i_2__0_n_0 ;
  wire \accumulator[7]_i_2__0_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [7:0]\accumulator_reg[7]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__0;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__0 
       (.I0(\accumulator_reg[7]_0 [0]),
        .I1(Q),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__0 
       (.I0(\accumulator_reg[7]_0 [1]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(\x_reg[0]_1 ),
        .I3(Q),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__0[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__0 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [1]),
        .I2(Q),
        .I3(\x_reg[0]_1 ),
        .I4(\accumulator_reg[7]_0 [0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__0 
       (.I0(\accumulator_reg[7]_0 [3]),
        .I1(\accumulator[6]_i_2__0_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__0 
       (.I0(\accumulator_reg[7]_0 [4]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__0_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__0[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__0 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [4]),
        .I2(\accumulator[6]_i_2__0_n_0 ),
        .I3(\accumulator_reg[7]_0 [3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__0[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__0 
       (.I0(\accumulator_reg[7]_0 [6]),
        .I1(\accumulator_reg[7]_0 [5]),
        .I2(\accumulator_reg[7]_0 [3]),
        .I3(\accumulator[6]_i_2__0_n_0 ),
        .I4(\accumulator_reg[7]_0 [4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__0[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__0 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(\x_reg[0]_1 ),
        .I3(Q),
        .I4(\accumulator_reg[0]_0 ),
        .I5(\accumulator_reg[7]_0 [1]),
        .O(\accumulator[6]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__0 
       (.I0(\accumulator_reg[7]_0 [7]),
        .I1(\accumulator_reg[7]_0 [6]),
        .I2(\accumulator[7]_i_2__0_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__0[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__0 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__0_n_0 ),
        .I3(\accumulator_reg[7]_0 [4]),
        .O(\accumulator[7]_i_2__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__0[0]),
        .Q(\accumulator_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__0[1]),
        .Q(\accumulator_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__0[2]),
        .Q(\accumulator_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__0[3]),
        .Q(\accumulator_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__0[4]),
        .Q(\accumulator_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__0[5]),
        .Q(\accumulator_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__0[6]),
        .Q(\accumulator_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__0[7]),
        .Q(\accumulator_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_11
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__8_n_0 ;
  wire \accumulator[7]_i_2__8_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__8;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__8 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__8[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__8 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__8[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__8 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__8[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__8 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__8_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__8[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__8 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__8_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__8[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__8 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__8_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__8[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__8 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__8_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__8[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__8 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__8_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__8 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__8_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__8[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__8 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__8_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__8[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__8[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__8[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__8[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__8[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__8[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__8[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__8[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_12
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__16_n_0 ;
  wire \accumulator[7]_i_2__16_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__16;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__16 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__16[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__16 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__16[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__16 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__16[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__16 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__16_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__16[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__16 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__16_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__16[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__16 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__16_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__16[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__16 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__16_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__16[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__16 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__16_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__16 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__16_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__16[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__16 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__16_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__16_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__16[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__16[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__16[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__16[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__16[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__16[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__16[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__16[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_13
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__24_n_0 ;
  wire \accumulator[7]_i_2__24_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__24;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__24 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__24[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__24 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__24[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__24 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__24[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__24 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__24_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__24[3]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__24 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__24_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__24[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__24 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__24_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__24[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__24 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__24_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__24[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__24 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__24_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__24 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__24_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__24[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__24 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__24_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__24_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__24[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__24[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__24[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__24[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__24[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__24[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__24[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__24[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_14
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__32_n_0 ;
  wire \accumulator[7]_i_2__32_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__32;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__32 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__32[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__32 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__32[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__32 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__32[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__32 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__32_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__32[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__32 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__32_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__32[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__32 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__32_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__32[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__32 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__32_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__32[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__32 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__32_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__32 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__32_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__32[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__32 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__32_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__32_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__32[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__32[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__32[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__32[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__32[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__32[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__32[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__32[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_15
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__40_n_0 ;
  wire \accumulator[7]_i_2__40_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__40;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__40 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__40[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__40 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__40[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__40 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__40[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__40 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__40_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__40[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__40 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__40_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__40[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__40 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__40_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__40[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__40 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__40_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__40[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__40 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__40_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__40 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__40_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__40[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__40 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__40_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__40_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__40[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__40[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__40[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__40[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__40[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__40[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__40[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__40[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_16
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__48_n_0 ;
  wire \accumulator[7]_i_2__48_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__48;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__48 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__48[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__48 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__48[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__48 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__48[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__48 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__48_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__48[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__48 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__48_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__48[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__48 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__48_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__48[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__48 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__48_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__48[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__48 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__48_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__48 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__48_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__48[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__48 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__48_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__48_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__48[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__48[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__48[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__48[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__48[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__48[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__48[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__48[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_17
   (\x_reg[0]_0 ,
    Q,
    \x_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \accumulator_reg[0]_0 ,
    \accumulator_reg[0]_1 );
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \x_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \accumulator_reg[0]_0 ;
  input \accumulator_reg[0]_1 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__56_n_0 ;
  wire \accumulator[7]_i_2__56_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire \accumulator_reg[0]_1 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__56;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__56 
       (.I0(Q[0]),
        .I1(\accumulator_reg[0]_0 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_1 ),
        .O(sum_product__56[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__56 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(\accumulator_reg[0]_1 ),
        .O(sum_product__56[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__56 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_1 ),
        .O(sum_product__56[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__56 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__56_n_0 ),
        .I2(\accumulator_reg[0]_1 ),
        .O(sum_product__56[3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__56 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__56_n_0 ),
        .I3(\accumulator_reg[0]_1 ),
        .O(sum_product__56[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__56 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__56_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_1 ),
        .O(sum_product__56[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__56 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__56_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_1 ),
        .O(sum_product__56[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__56 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(\accumulator_reg[0]_1 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__56_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__56 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__56_n_0 ),
        .I3(\accumulator_reg[0]_1 ),
        .O(sum_product__56[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__56 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__56_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__56_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__56[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__56[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__56[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__56[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__56[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__56[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__56[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__56[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_18
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    \accumulator_reg[7]_0 ,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]\accumulator_reg[7]_0 ;
  input [0:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [0:0]Q;
  wire \accumulator[6]_i_2__1_n_0 ;
  wire \accumulator[7]_i_2__1_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [7:0]\accumulator_reg[7]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__1;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__1 
       (.I0(\accumulator_reg[7]_0 [0]),
        .I1(Q),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__1 
       (.I0(\accumulator_reg[7]_0 [1]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(\x_reg[0]_1 ),
        .I3(Q),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__1[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__1 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [1]),
        .I2(Q),
        .I3(\x_reg[0]_1 ),
        .I4(\accumulator_reg[7]_0 [0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__1 
       (.I0(\accumulator_reg[7]_0 [3]),
        .I1(\accumulator[6]_i_2__1_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__1 
       (.I0(\accumulator_reg[7]_0 [4]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__1_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__1[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__1 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [4]),
        .I2(\accumulator[6]_i_2__1_n_0 ),
        .I3(\accumulator_reg[7]_0 [3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__1[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__1 
       (.I0(\accumulator_reg[7]_0 [6]),
        .I1(\accumulator_reg[7]_0 [5]),
        .I2(\accumulator_reg[7]_0 [3]),
        .I3(\accumulator[6]_i_2__1_n_0 ),
        .I4(\accumulator_reg[7]_0 [4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__1[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__1 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(\x_reg[0]_1 ),
        .I3(Q),
        .I4(\accumulator_reg[0]_0 ),
        .I5(\accumulator_reg[7]_0 [1]),
        .O(\accumulator[6]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__1 
       (.I0(\accumulator_reg[7]_0 [7]),
        .I1(\accumulator_reg[7]_0 [6]),
        .I2(\accumulator[7]_i_2__1_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__1[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__1 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__1_n_0 ),
        .I3(\accumulator_reg[7]_0 [4]),
        .O(\accumulator[7]_i_2__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__1[0]),
        .Q(\accumulator_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__1[1]),
        .Q(\accumulator_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__1[2]),
        .Q(\accumulator_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__1[3]),
        .Q(\accumulator_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__1[4]),
        .Q(\accumulator_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__1[5]),
        .Q(\accumulator_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__1[6]),
        .Q(\accumulator_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__1[7]),
        .Q(\accumulator_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_19
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__9_n_0 ;
  wire \accumulator[7]_i_2__9_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__9;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__9 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__9[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__9 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__9[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__9 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__9[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__9 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__9_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__9[3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__9 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__9_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__9[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__9 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__9_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__9[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__9 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__9_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__9[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__9 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__9_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__9 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__9_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__9[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__9 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__9_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__9[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__9[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__9[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__9[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__9[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__9[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__9[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__9[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_20
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__17_n_0 ;
  wire \accumulator[7]_i_2__17_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__17;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__17 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__17[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__17 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__17[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__17 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__17[2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__17 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__17_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__17[3]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__17 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__17_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__17[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__17 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__17_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__17[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__17 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__17_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__17[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__17 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__17_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__17 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__17_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__17[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__17 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__17_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__17_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__17[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__17[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__17[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__17[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__17[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__17[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__17[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__17[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_21
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__25_n_0 ;
  wire \accumulator[7]_i_2__25_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__25;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__25 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__25[0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__25 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__25[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__25 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__25[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__25 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__25_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__25[3]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__25 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__25_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__25[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__25 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__25_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__25[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__25 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__25_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__25[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__25 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__25_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__25 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__25_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__25[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__25 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__25_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__25_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__25[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__25[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__25[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__25[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__25[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__25[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__25[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__25[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_22
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__33_n_0 ;
  wire \accumulator[7]_i_2__33_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__33;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__33 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__33[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__33 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__33[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__33 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__33[2]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__33 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__33_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__33[3]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__33 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__33_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__33[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__33 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__33_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__33[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__33 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__33_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__33[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__33 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__33_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__33 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__33_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__33[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__33 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__33_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__33_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__33[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__33[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__33[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__33[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__33[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__33[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__33[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__33[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_23
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__41_n_0 ;
  wire \accumulator[7]_i_2__41_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__41;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__41 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__41[0]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__41 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__41[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__41 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__41[2]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__41 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__41_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__41[3]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__41 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__41_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__41[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__41 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__41_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__41[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__41 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__41_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__41[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__41 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__41_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__41 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__41_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__41[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__41 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__41_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__41_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__41[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__41[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__41[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__41[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__41[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__41[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__41[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__41[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_24
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__49_n_0 ;
  wire \accumulator[7]_i_2__49_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__49;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__49 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__49[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__49 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__49[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__49 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__49[2]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__49 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__49_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__49[3]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__49 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__49_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__49[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__49 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__49_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__49[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__49 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__49_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__49[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__49 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__49_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__49 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__49_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__49[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__49 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__49_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__49_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__49[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__49[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__49[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__49[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__49[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__49[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__49[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__49[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_25
   (\x_reg[0]_0 ,
    Q,
    \x_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \accumulator_reg[0]_0 ,
    \accumulator_reg[0]_1 );
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \x_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \accumulator_reg[0]_0 ;
  input \accumulator_reg[0]_1 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__57_n_0 ;
  wire \accumulator[7]_i_2__57_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire \accumulator_reg[0]_1 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__57;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__57 
       (.I0(Q[0]),
        .I1(\accumulator_reg[0]_0 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_1 ),
        .O(sum_product__57[0]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__57 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(\accumulator_reg[0]_1 ),
        .O(sum_product__57[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__57 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_1 ),
        .O(sum_product__57[2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__57 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__57_n_0 ),
        .I2(\accumulator_reg[0]_1 ),
        .O(sum_product__57[3]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__57 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__57_n_0 ),
        .I3(\accumulator_reg[0]_1 ),
        .O(sum_product__57[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__57 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__57_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_1 ),
        .O(sum_product__57[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__57 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__57_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_1 ),
        .O(sum_product__57[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__57 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(\accumulator_reg[0]_1 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__57_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__57 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__57_n_0 ),
        .I3(\accumulator_reg[0]_1 ),
        .O(sum_product__57[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__57 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__57_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__57_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__57[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__57[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__57[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__57[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__57[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__57[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__57[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__57[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_26
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    \accumulator_reg[7]_0 ,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]\accumulator_reg[7]_0 ;
  input [0:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [0:0]Q;
  wire \accumulator[6]_i_2__2_n_0 ;
  wire \accumulator[7]_i_2__2_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [7:0]\accumulator_reg[7]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__2;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__2 
       (.I0(\accumulator_reg[7]_0 [0]),
        .I1(Q),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__2 
       (.I0(\accumulator_reg[7]_0 [1]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(\x_reg[0]_1 ),
        .I3(Q),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__2[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__2 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [1]),
        .I2(Q),
        .I3(\x_reg[0]_1 ),
        .I4(\accumulator_reg[7]_0 [0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__2 
       (.I0(\accumulator_reg[7]_0 [3]),
        .I1(\accumulator[6]_i_2__2_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__2 
       (.I0(\accumulator_reg[7]_0 [4]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__2_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__2[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__2 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [4]),
        .I2(\accumulator[6]_i_2__2_n_0 ),
        .I3(\accumulator_reg[7]_0 [3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__2[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__2 
       (.I0(\accumulator_reg[7]_0 [6]),
        .I1(\accumulator_reg[7]_0 [5]),
        .I2(\accumulator_reg[7]_0 [3]),
        .I3(\accumulator[6]_i_2__2_n_0 ),
        .I4(\accumulator_reg[7]_0 [4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__2[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__2 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(\x_reg[0]_1 ),
        .I3(Q),
        .I4(\accumulator_reg[0]_0 ),
        .I5(\accumulator_reg[7]_0 [1]),
        .O(\accumulator[6]_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__2 
       (.I0(\accumulator_reg[7]_0 [7]),
        .I1(\accumulator_reg[7]_0 [6]),
        .I2(\accumulator[7]_i_2__2_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__2[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__2 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__2_n_0 ),
        .I3(\accumulator_reg[7]_0 [4]),
        .O(\accumulator[7]_i_2__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__2[0]),
        .Q(\accumulator_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__2[1]),
        .Q(\accumulator_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__2[2]),
        .Q(\accumulator_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__2[3]),
        .Q(\accumulator_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__2[4]),
        .Q(\accumulator_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__2[5]),
        .Q(\accumulator_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__2[6]),
        .Q(\accumulator_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__2[7]),
        .Q(\accumulator_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_27
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__10_n_0 ;
  wire \accumulator[7]_i_2__10_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__10;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__10 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__10[0]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__10 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__10[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__10 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__10[2]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__10 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__10_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__10[3]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__10 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__10_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__10[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__10 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__10_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__10[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__10 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__10_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__10[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__10 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__10_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__10 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__10_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__10[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__10 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__10_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__10_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__10[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__10[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__10[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__10[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__10[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__10[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__10[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__10[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_28
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__18_n_0 ;
  wire \accumulator[7]_i_2__18_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__18;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__18 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__18[0]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__18 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__18[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__18 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__18[2]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__18 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__18_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__18[3]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__18 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__18_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__18[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__18 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__18_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__18[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__18 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__18_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__18[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__18 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__18_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__18 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__18_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__18[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__18 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__18_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__18_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__18[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__18[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__18[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__18[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__18[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__18[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__18[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__18[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_29
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__26_n_0 ;
  wire \accumulator[7]_i_2__26_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__26;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__26 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__26[0]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__26 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__26[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__26 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__26[2]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__26 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__26_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__26[3]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__26 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__26_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__26[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__26 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__26_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__26[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__26 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__26_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__26[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__26 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__26_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__26 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__26_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__26[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__26 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__26_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__26_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__26[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__26[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__26[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__26[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__26[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__26[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__26[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__26[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_3
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    \accumulator_reg[7]_0 ,
    y,
    clock_IBUF_BUFG,
    btn_IBUF,
    Q,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]\accumulator_reg[7]_0 ;
  input y;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]Q;
  input \accumulator_reg[0]_0 ;

  wire [0:0]Q;
  wire \accumulator[6]_i_2__7_n_0 ;
  wire \accumulator[7]_i_2__7_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [7:0]\accumulator_reg[7]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__7;
  wire \x_reg[0]_0 ;
  wire y;
  wire \y_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__7 
       (.I0(\accumulator_reg[7]_0 [0]),
        .I1(y),
        .I2(Q),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__7[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__7 
       (.I0(\accumulator_reg[7]_0 [1]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(Q),
        .I3(y),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__7[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__7 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [1]),
        .I2(y),
        .I3(Q),
        .I4(\accumulator_reg[7]_0 [0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__7[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__7 
       (.I0(\accumulator_reg[7]_0 [3]),
        .I1(\accumulator[6]_i_2__7_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__7[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__7 
       (.I0(\accumulator_reg[7]_0 [4]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__7_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__7[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__7 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [4]),
        .I2(\accumulator[6]_i_2__7_n_0 ),
        .I3(\accumulator_reg[7]_0 [3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__7[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__7 
       (.I0(\accumulator_reg[7]_0 [6]),
        .I1(\accumulator_reg[7]_0 [5]),
        .I2(\accumulator_reg[7]_0 [3]),
        .I3(\accumulator[6]_i_2__7_n_0 ),
        .I4(\accumulator_reg[7]_0 [4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__7[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__7 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(Q),
        .I3(y),
        .I4(\accumulator_reg[0]_0 ),
        .I5(\accumulator_reg[7]_0 [1]),
        .O(\accumulator[6]_i_2__7_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__7 
       (.I0(\accumulator_reg[7]_0 [7]),
        .I1(\accumulator_reg[7]_0 [6]),
        .I2(\accumulator[7]_i_2__7_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__7[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__7 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__7_n_0 ),
        .I3(\accumulator_reg[7]_0 [4]),
        .O(\accumulator[7]_i_2__7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__7[0]),
        .Q(\accumulator_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__7[1]),
        .Q(\accumulator_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__7[2]),
        .Q(\accumulator_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__7[3]),
        .Q(\accumulator_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__7[4]),
        .Q(\accumulator_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__7[5]),
        .Q(\accumulator_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__7[6]),
        .Q(\accumulator_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__7[7]),
        .Q(\accumulator_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(y),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_30
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__34_n_0 ;
  wire \accumulator[7]_i_2__34_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__34;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__34 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__34[0]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__34 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__34[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__34 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__34[2]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__34 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__34_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__34[3]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__34 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__34_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__34[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__34 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__34_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__34[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__34 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__34_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__34[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__34 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__34_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__34 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__34_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__34[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__34 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__34_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__34_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__34[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__34[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__34[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__34[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__34[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__34[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__34[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__34[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_31
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__42_n_0 ;
  wire \accumulator[7]_i_2__42_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__42;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__42 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__42[0]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__42 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__42[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__42 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__42[2]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__42 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__42_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__42[3]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__42 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__42_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__42[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__42 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__42_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__42[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__42 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__42_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__42[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__42 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__42_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__42 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__42_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__42[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__42 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__42_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__42_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__42[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__42[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__42[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__42[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__42[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__42[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__42[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__42[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_32
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__50_n_0 ;
  wire \accumulator[7]_i_2__50_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__50;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__50 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__50[0]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__50 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__50[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__50 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__50[2]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__50 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__50_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__50[3]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__50 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__50_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__50[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__50 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__50_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__50[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__50 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__50_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__50[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__50 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__50_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__50 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__50_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__50[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__50 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__50_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__50_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__50[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__50[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__50[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__50[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__50[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__50[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__50[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__50[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_33
   (\x_reg[0]_0 ,
    Q,
    \x_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \accumulator_reg[0]_0 ,
    \accumulator_reg[0]_1 );
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \x_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \accumulator_reg[0]_0 ;
  input \accumulator_reg[0]_1 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__58_n_0 ;
  wire \accumulator[7]_i_2__58_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire \accumulator_reg[0]_1 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__58;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__58 
       (.I0(Q[0]),
        .I1(\accumulator_reg[0]_0 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_1 ),
        .O(sum_product__58[0]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__58 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(\accumulator_reg[0]_1 ),
        .O(sum_product__58[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__58 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_1 ),
        .O(sum_product__58[2]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__58 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__58_n_0 ),
        .I2(\accumulator_reg[0]_1 ),
        .O(sum_product__58[3]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__58 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__58_n_0 ),
        .I3(\accumulator_reg[0]_1 ),
        .O(sum_product__58[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__58 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__58_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_1 ),
        .O(sum_product__58[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__58 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__58_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_1 ),
        .O(sum_product__58[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__58 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(\accumulator_reg[0]_1 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__58_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__58 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__58_n_0 ),
        .I3(\accumulator_reg[0]_1 ),
        .O(sum_product__58[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__58 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__58_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__58_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__58[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__58[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__58[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__58[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__58[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__58[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__58[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__58[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_34
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    \accumulator_reg[7]_0 ,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]\accumulator_reg[7]_0 ;
  input [0:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [0:0]Q;
  wire \accumulator[6]_i_2__3_n_0 ;
  wire \accumulator[7]_i_2__3_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [7:0]\accumulator_reg[7]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__3;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__3 
       (.I0(\accumulator_reg[7]_0 [0]),
        .I1(Q),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__3 
       (.I0(\accumulator_reg[7]_0 [1]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(\x_reg[0]_1 ),
        .I3(Q),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__3[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__3 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [1]),
        .I2(Q),
        .I3(\x_reg[0]_1 ),
        .I4(\accumulator_reg[7]_0 [0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__3 
       (.I0(\accumulator_reg[7]_0 [3]),
        .I1(\accumulator[6]_i_2__3_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__3 
       (.I0(\accumulator_reg[7]_0 [4]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__3_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__3[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__3 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [4]),
        .I2(\accumulator[6]_i_2__3_n_0 ),
        .I3(\accumulator_reg[7]_0 [3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__3[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__3 
       (.I0(\accumulator_reg[7]_0 [6]),
        .I1(\accumulator_reg[7]_0 [5]),
        .I2(\accumulator_reg[7]_0 [3]),
        .I3(\accumulator[6]_i_2__3_n_0 ),
        .I4(\accumulator_reg[7]_0 [4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__3[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__3 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(\x_reg[0]_1 ),
        .I3(Q),
        .I4(\accumulator_reg[0]_0 ),
        .I5(\accumulator_reg[7]_0 [1]),
        .O(\accumulator[6]_i_2__3_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__3 
       (.I0(\accumulator_reg[7]_0 [7]),
        .I1(\accumulator_reg[7]_0 [6]),
        .I2(\accumulator[7]_i_2__3_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__3[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__3 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__3_n_0 ),
        .I3(\accumulator_reg[7]_0 [4]),
        .O(\accumulator[7]_i_2__3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__3[0]),
        .Q(\accumulator_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__3[1]),
        .Q(\accumulator_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__3[2]),
        .Q(\accumulator_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__3[3]),
        .Q(\accumulator_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__3[4]),
        .Q(\accumulator_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__3[5]),
        .Q(\accumulator_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__3[6]),
        .Q(\accumulator_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__3[7]),
        .Q(\accumulator_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_35
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__11_n_0 ;
  wire \accumulator[7]_i_2__11_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__11;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__11 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__11[0]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__11 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__11[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__11 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__11[2]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__11 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__11_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__11[3]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__11 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__11_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__11[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__11 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__11_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__11[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__11 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__11_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__11[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__11 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__11_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__11 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__11_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__11[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__11 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__11_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__11_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__11[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__11[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__11[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__11[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__11[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__11[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__11[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__11[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_36
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__19_n_0 ;
  wire \accumulator[7]_i_2__19_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__19;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__19 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__19[0]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__19 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__19[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__19 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__19[2]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__19 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__19_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__19[3]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__19 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__19_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__19[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__19 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__19_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__19[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__19 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__19_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__19[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__19 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__19_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__19 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__19_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__19[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__19 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__19_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__19_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__19[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__19[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__19[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__19[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__19[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__19[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__19[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__19[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_37
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__27_n_0 ;
  wire \accumulator[7]_i_2__27_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__27;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__27 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__27[0]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__27 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__27[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__27 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__27[2]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__27 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__27_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__27[3]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__27 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__27_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__27[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__27 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__27_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__27[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__27 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__27_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__27[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__27 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__27_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__27 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__27_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__27[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__27 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__27_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__27_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__27[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__27[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__27[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__27[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__27[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__27[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__27[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__27[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_38
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__35_n_0 ;
  wire \accumulator[7]_i_2__35_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__35;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__35 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__35[0]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__35 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__35[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__35 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__35[2]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__35 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__35_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__35[3]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__35 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__35_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__35[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__35 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__35_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__35[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__35 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__35_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__35[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__35 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__35_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__35 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__35_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__35[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__35 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__35_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__35_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__35[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__35[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__35[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__35[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__35[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__35[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__35[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__35[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_39
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__43_n_0 ;
  wire \accumulator[7]_i_2__43_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__43;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__43 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__43[0]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__43 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__43[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__43 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__43[2]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__43 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__43_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__43[3]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__43 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__43_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__43[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__43 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__43_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__43[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__43 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__43_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__43[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__43 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__43_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__43 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__43_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__43[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__43 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__43_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__43_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__43[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__43[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__43[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__43[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__43[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__43[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__43[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__43[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_4
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    \accumulator_reg[7]_0 ,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    Q,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]\accumulator_reg[7]_0 ;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]Q;
  input \accumulator_reg[0]_0 ;

  wire [0:0]Q;
  wire \accumulator[6]_i_2__15_n_0 ;
  wire \accumulator[7]_i_2__15_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [7:0]\accumulator_reg[7]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__15;
  wire \x_reg[0]_0 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__15 
       (.I0(\accumulator_reg[7]_0 [0]),
        .I1(\y_reg[0]_1 ),
        .I2(Q),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__15[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__15 
       (.I0(\accumulator_reg[7]_0 [1]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(Q),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__15[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__15 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [1]),
        .I2(\y_reg[0]_1 ),
        .I3(Q),
        .I4(\accumulator_reg[7]_0 [0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__15[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__15 
       (.I0(\accumulator_reg[7]_0 [3]),
        .I1(\accumulator[6]_i_2__15_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__15[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__15 
       (.I0(\accumulator_reg[7]_0 [4]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__15_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__15[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__15 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [4]),
        .I2(\accumulator[6]_i_2__15_n_0 ),
        .I3(\accumulator_reg[7]_0 [3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__15[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__15 
       (.I0(\accumulator_reg[7]_0 [6]),
        .I1(\accumulator_reg[7]_0 [5]),
        .I2(\accumulator_reg[7]_0 [3]),
        .I3(\accumulator[6]_i_2__15_n_0 ),
        .I4(\accumulator_reg[7]_0 [4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__15[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__15 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(Q),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(\accumulator_reg[7]_0 [1]),
        .O(\accumulator[6]_i_2__15_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__15 
       (.I0(\accumulator_reg[7]_0 [7]),
        .I1(\accumulator_reg[7]_0 [6]),
        .I2(\accumulator[7]_i_2__15_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__15[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__15 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__15_n_0 ),
        .I3(\accumulator_reg[7]_0 [4]),
        .O(\accumulator[7]_i_2__15_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__15[0]),
        .Q(\accumulator_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__15[1]),
        .Q(\accumulator_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__15[2]),
        .Q(\accumulator_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__15[3]),
        .Q(\accumulator_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__15[4]),
        .Q(\accumulator_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__15[5]),
        .Q(\accumulator_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__15[6]),
        .Q(\accumulator_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__15[7]),
        .Q(\accumulator_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_40
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__51_n_0 ;
  wire \accumulator[7]_i_2__51_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__51;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__51 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__51[0]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__51 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__51[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__51 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__51[2]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__51 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__51_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__51[3]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__51 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__51_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__51[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__51 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__51_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__51[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__51 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__51_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__51[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__51 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__51_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__51 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__51_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__51[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__51 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__51_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__51_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__51[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__51[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__51[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__51[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__51[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__51[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__51[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__51[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_41
   (\x_reg[0]_0 ,
    Q,
    \x_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \accumulator_reg[0]_0 ,
    \accumulator_reg[0]_1 );
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \x_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \accumulator_reg[0]_0 ;
  input \accumulator_reg[0]_1 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__59_n_0 ;
  wire \accumulator[7]_i_2__59_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire \accumulator_reg[0]_1 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__59;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__59 
       (.I0(Q[0]),
        .I1(\accumulator_reg[0]_0 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_1 ),
        .O(sum_product__59[0]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__59 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(\accumulator_reg[0]_1 ),
        .O(sum_product__59[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__59 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_1 ),
        .O(sum_product__59[2]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__59 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__59_n_0 ),
        .I2(\accumulator_reg[0]_1 ),
        .O(sum_product__59[3]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__59 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__59_n_0 ),
        .I3(\accumulator_reg[0]_1 ),
        .O(sum_product__59[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__59 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__59_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_1 ),
        .O(sum_product__59[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__59 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__59_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_1 ),
        .O(sum_product__59[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__59 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(\accumulator_reg[0]_1 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__59_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__59 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__59_n_0 ),
        .I3(\accumulator_reg[0]_1 ),
        .O(sum_product__59[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__59 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__59_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__59_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__59[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__59[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__59[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__59[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__59[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__59[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__59[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__59[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_42
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    \accumulator_reg[7]_0 ,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]\accumulator_reg[7]_0 ;
  input [0:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [0:0]Q;
  wire \accumulator[6]_i_2__4_n_0 ;
  wire \accumulator[7]_i_2__4_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [7:0]\accumulator_reg[7]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__4;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__4 
       (.I0(\accumulator_reg[7]_0 [0]),
        .I1(Q),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__4 
       (.I0(\accumulator_reg[7]_0 [1]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(\x_reg[0]_1 ),
        .I3(Q),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__4[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__4 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [1]),
        .I2(Q),
        .I3(\x_reg[0]_1 ),
        .I4(\accumulator_reg[7]_0 [0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__4[2]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__4 
       (.I0(\accumulator_reg[7]_0 [3]),
        .I1(\accumulator[6]_i_2__4_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__4[3]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__4 
       (.I0(\accumulator_reg[7]_0 [4]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__4_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__4[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__4 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [4]),
        .I2(\accumulator[6]_i_2__4_n_0 ),
        .I3(\accumulator_reg[7]_0 [3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__4[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__4 
       (.I0(\accumulator_reg[7]_0 [6]),
        .I1(\accumulator_reg[7]_0 [5]),
        .I2(\accumulator_reg[7]_0 [3]),
        .I3(\accumulator[6]_i_2__4_n_0 ),
        .I4(\accumulator_reg[7]_0 [4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__4[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__4 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(\x_reg[0]_1 ),
        .I3(Q),
        .I4(\accumulator_reg[0]_0 ),
        .I5(\accumulator_reg[7]_0 [1]),
        .O(\accumulator[6]_i_2__4_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__4 
       (.I0(\accumulator_reg[7]_0 [7]),
        .I1(\accumulator_reg[7]_0 [6]),
        .I2(\accumulator[7]_i_2__4_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__4[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__4 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__4_n_0 ),
        .I3(\accumulator_reg[7]_0 [4]),
        .O(\accumulator[7]_i_2__4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__4[0]),
        .Q(\accumulator_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__4[1]),
        .Q(\accumulator_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__4[2]),
        .Q(\accumulator_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__4[3]),
        .Q(\accumulator_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__4[4]),
        .Q(\accumulator_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__4[5]),
        .Q(\accumulator_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__4[6]),
        .Q(\accumulator_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__4[7]),
        .Q(\accumulator_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_43
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__12_n_0 ;
  wire \accumulator[7]_i_2__12_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__12;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__12 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__12[0]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__12 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__12[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__12 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__12[2]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__12 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__12_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__12[3]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__12 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__12_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__12[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__12 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__12_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__12[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__12 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__12_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__12[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__12 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__12_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__12 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__12_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__12[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__12 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__12_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__12_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__12[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__12[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__12[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__12[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__12[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__12[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__12[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__12[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_44
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__20_n_0 ;
  wire \accumulator[7]_i_2__20_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__20;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__20 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__20[0]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__20 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__20[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__20 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__20[2]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__20 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__20_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__20[3]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__20 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__20_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__20[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__20 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__20_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__20[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__20 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__20_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__20[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__20 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__20_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__20 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__20_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__20[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__20 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__20_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__20_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__20[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__20[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__20[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__20[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__20[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__20[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__20[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__20[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_45
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__28_n_0 ;
  wire \accumulator[7]_i_2__28_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__28;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__28 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__28[0]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__28 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__28[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__28 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__28[2]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__28 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__28_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__28[3]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__28 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__28_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__28[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__28 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__28_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__28[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__28 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__28_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__28[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__28 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__28_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__28 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__28_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__28[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__28 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__28_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__28_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__28[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__28[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__28[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__28[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__28[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__28[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__28[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__28[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_46
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__36_n_0 ;
  wire \accumulator[7]_i_2__36_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__36;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__36 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__36[0]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__36 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__36[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__36 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__36[2]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__36 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__36_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__36[3]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__36 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__36_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__36[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__36 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__36_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__36[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__36 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__36_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__36[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__36 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__36_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__36 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__36_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__36[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__36 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__36_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__36_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__36[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__36[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__36[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__36[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__36[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__36[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__36[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__36[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_47
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__44_n_0 ;
  wire \accumulator[7]_i_2__44_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__44;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__44 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__44[0]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__44 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__44[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__44 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__44[2]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__44 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__44_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__44[3]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__44 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__44_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__44[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__44 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__44_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__44[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__44 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__44_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__44[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__44 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__44_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__44 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__44_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__44[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__44 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__44_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__44_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__44[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__44[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__44[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__44[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__44[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__44[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__44[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__44[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_48
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input \accumulator_reg[0]_0 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__52_n_0 ;
  wire \accumulator[7]_i_2__52_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__52;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__52 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__52[0]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__52 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__52[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__52 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__52[2]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__52 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__52_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__52[3]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__52 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__52_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__52[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__52 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__52_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__52[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__52 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__52_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__52[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__52 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__52_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__52 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__52_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__52[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__52 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__52_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__52_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__52[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__52[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__52[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__52[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__52[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__52[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__52[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__52[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_49
   (\x_reg[0]_0 ,
    Q,
    \x_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \accumulator_reg[0]_0 ,
    \accumulator_reg[0]_1 );
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \x_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \accumulator_reg[0]_0 ;
  input \accumulator_reg[0]_1 ;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__60_n_0 ;
  wire \accumulator[7]_i_2__60_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire \accumulator_reg[0]_1 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__60;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__60 
       (.I0(Q[0]),
        .I1(\accumulator_reg[0]_0 ),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_1 ),
        .O(sum_product__60[0]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__60 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(\accumulator_reg[0]_1 ),
        .O(sum_product__60[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__60 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(\accumulator_reg[0]_1 ),
        .O(sum_product__60[2]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__60 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__60_n_0 ),
        .I2(\accumulator_reg[0]_1 ),
        .O(sum_product__60[3]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__60 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__60_n_0 ),
        .I3(\accumulator_reg[0]_1 ),
        .O(sum_product__60[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__60 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__60_n_0 ),
        .I3(Q[3]),
        .I4(\accumulator_reg[0]_1 ),
        .O(sum_product__60[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__60 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__60_n_0 ),
        .I4(Q[4]),
        .I5(\accumulator_reg[0]_1 ),
        .O(sum_product__60[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__60 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(\accumulator_reg[0]_1 ),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__60_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__60 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__60_n_0 ),
        .I3(\accumulator_reg[0]_1 ),
        .O(sum_product__60[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__60 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__60_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__60_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__60[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__60[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__60[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__60[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__60[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__60[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__60[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__60[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_5
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    \accumulator_reg[7]_0 ,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    Q,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]\accumulator_reg[7]_0 ;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]Q;
  input \accumulator_reg[0]_0 ;

  wire [0:0]Q;
  wire \accumulator[6]_i_2__23_n_0 ;
  wire \accumulator[7]_i_2__23_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [7:0]\accumulator_reg[7]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__23;
  wire \x_reg[0]_0 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__23 
       (.I0(\accumulator_reg[7]_0 [0]),
        .I1(\y_reg[0]_1 ),
        .I2(Q),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__23[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__23 
       (.I0(\accumulator_reg[7]_0 [1]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(Q),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__23[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__23 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [1]),
        .I2(\y_reg[0]_1 ),
        .I3(Q),
        .I4(\accumulator_reg[7]_0 [0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__23[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__23 
       (.I0(\accumulator_reg[7]_0 [3]),
        .I1(\accumulator[6]_i_2__23_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__23[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__23 
       (.I0(\accumulator_reg[7]_0 [4]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__23_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__23[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__23 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [4]),
        .I2(\accumulator[6]_i_2__23_n_0 ),
        .I3(\accumulator_reg[7]_0 [3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__23[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__23 
       (.I0(\accumulator_reg[7]_0 [6]),
        .I1(\accumulator_reg[7]_0 [5]),
        .I2(\accumulator_reg[7]_0 [3]),
        .I3(\accumulator[6]_i_2__23_n_0 ),
        .I4(\accumulator_reg[7]_0 [4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__23[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__23 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(Q),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(\accumulator_reg[7]_0 [1]),
        .O(\accumulator[6]_i_2__23_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__23 
       (.I0(\accumulator_reg[7]_0 [7]),
        .I1(\accumulator_reg[7]_0 [6]),
        .I2(\accumulator[7]_i_2__23_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__23[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__23 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__23_n_0 ),
        .I3(\accumulator_reg[7]_0 [4]),
        .O(\accumulator[7]_i_2__23_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__23[0]),
        .Q(\accumulator_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__23[1]),
        .Q(\accumulator_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__23[2]),
        .Q(\accumulator_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__23[3]),
        .Q(\accumulator_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__23[4]),
        .Q(\accumulator_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__23[5]),
        .Q(\accumulator_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__23[6]),
        .Q(\accumulator_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__23[7]),
        .Q(\accumulator_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_50
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    \accumulator_reg[7]_0 ,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]\accumulator_reg[7]_0 ;
  input [0:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input ena_mac;

  wire [0:0]Q;
  wire \accumulator[6]_i_2__5_n_0 ;
  wire \accumulator[7]_i_2__5_n_0 ;
  wire [7:0]\accumulator_reg[7]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire [7:0]sum_product__5;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__5 
       (.I0(\accumulator_reg[7]_0 [0]),
        .I1(Q),
        .I2(\x_reg[0]_1 ),
        .I3(ena_mac),
        .O(sum_product__5[0]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__5 
       (.I0(\accumulator_reg[7]_0 [1]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(\x_reg[0]_1 ),
        .I3(Q),
        .I4(ena_mac),
        .O(sum_product__5[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__5 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [1]),
        .I2(Q),
        .I3(\x_reg[0]_1 ),
        .I4(\accumulator_reg[7]_0 [0]),
        .I5(ena_mac),
        .O(sum_product__5[2]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__5 
       (.I0(\accumulator_reg[7]_0 [3]),
        .I1(\accumulator[6]_i_2__5_n_0 ),
        .I2(ena_mac),
        .O(sum_product__5[3]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__5 
       (.I0(\accumulator_reg[7]_0 [4]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__5_n_0 ),
        .I3(ena_mac),
        .O(sum_product__5[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__5 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [4]),
        .I2(\accumulator[6]_i_2__5_n_0 ),
        .I3(\accumulator_reg[7]_0 [3]),
        .I4(ena_mac),
        .O(sum_product__5[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__5 
       (.I0(\accumulator_reg[7]_0 [6]),
        .I1(\accumulator_reg[7]_0 [5]),
        .I2(\accumulator_reg[7]_0 [3]),
        .I3(\accumulator[6]_i_2__5_n_0 ),
        .I4(\accumulator_reg[7]_0 [4]),
        .I5(ena_mac),
        .O(sum_product__5[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__5 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(\x_reg[0]_1 ),
        .I3(Q),
        .I4(ena_mac),
        .I5(\accumulator_reg[7]_0 [1]),
        .O(\accumulator[6]_i_2__5_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__5 
       (.I0(\accumulator_reg[7]_0 [7]),
        .I1(\accumulator_reg[7]_0 [6]),
        .I2(\accumulator[7]_i_2__5_n_0 ),
        .I3(ena_mac),
        .O(sum_product__5[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__5 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__5_n_0 ),
        .I3(\accumulator_reg[7]_0 [4]),
        .O(\accumulator[7]_i_2__5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__5[0]),
        .Q(\accumulator_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__5[1]),
        .Q(\accumulator_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__5[2]),
        .Q(\accumulator_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__5[3]),
        .Q(\accumulator_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__5[4]),
        .Q(\accumulator_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__5[5]),
        .Q(\accumulator_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__5[6]),
        .Q(\accumulator_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__5[7]),
        .Q(\accumulator_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_51
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input ena_mac;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__13_n_0 ;
  wire \accumulator[7]_i_2__13_n_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire [7:0]sum_product__13;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__13 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(ena_mac),
        .O(sum_product__13[0]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__13 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .O(sum_product__13[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__13 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(ena_mac),
        .O(sum_product__13[2]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__13 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__13_n_0 ),
        .I2(ena_mac),
        .O(sum_product__13[3]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__13 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__13_n_0 ),
        .I3(ena_mac),
        .O(sum_product__13[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__13 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__13_n_0 ),
        .I3(Q[3]),
        .I4(ena_mac),
        .O(sum_product__13[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__13 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__13_n_0 ),
        .I4(Q[4]),
        .I5(ena_mac),
        .O(sum_product__13[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__13 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__13_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__13 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__13_n_0 ),
        .I3(ena_mac),
        .O(sum_product__13[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__13 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__13_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__13_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__13[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__13[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__13[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__13[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__13[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__13[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__13[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__13[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_52
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input ena_mac;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__21_n_0 ;
  wire \accumulator[7]_i_2__21_n_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire [7:0]sum_product__21;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__21 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(ena_mac),
        .O(sum_product__21[0]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__21 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .O(sum_product__21[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__21 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(ena_mac),
        .O(sum_product__21[2]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__21 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__21_n_0 ),
        .I2(ena_mac),
        .O(sum_product__21[3]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__21 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__21_n_0 ),
        .I3(ena_mac),
        .O(sum_product__21[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__21 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__21_n_0 ),
        .I3(Q[3]),
        .I4(ena_mac),
        .O(sum_product__21[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__21 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__21_n_0 ),
        .I4(Q[4]),
        .I5(ena_mac),
        .O(sum_product__21[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__21 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__21_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__21 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__21_n_0 ),
        .I3(ena_mac),
        .O(sum_product__21[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__21 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__21_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__21_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__21[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__21[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__21[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__21[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__21[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__21[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__21[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__21[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_53
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input ena_mac;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__29_n_0 ;
  wire \accumulator[7]_i_2__29_n_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire [7:0]sum_product__29;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__29 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(ena_mac),
        .O(sum_product__29[0]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__29 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .O(sum_product__29[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__29 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(ena_mac),
        .O(sum_product__29[2]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__29 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__29_n_0 ),
        .I2(ena_mac),
        .O(sum_product__29[3]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__29 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__29_n_0 ),
        .I3(ena_mac),
        .O(sum_product__29[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__29 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__29_n_0 ),
        .I3(Q[3]),
        .I4(ena_mac),
        .O(sum_product__29[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__29 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__29_n_0 ),
        .I4(Q[4]),
        .I5(ena_mac),
        .O(sum_product__29[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__29 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__29_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__29 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__29_n_0 ),
        .I3(ena_mac),
        .O(sum_product__29[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__29 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__29_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__29_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__29[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__29[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__29[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__29[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__29[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__29[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__29[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__29[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_54
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input ena_mac;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__37_n_0 ;
  wire \accumulator[7]_i_2__37_n_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire [7:0]sum_product__37;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__37 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(ena_mac),
        .O(sum_product__37[0]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__37 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .O(sum_product__37[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__37 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(ena_mac),
        .O(sum_product__37[2]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__37 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__37_n_0 ),
        .I2(ena_mac),
        .O(sum_product__37[3]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__37 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__37_n_0 ),
        .I3(ena_mac),
        .O(sum_product__37[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__37 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__37_n_0 ),
        .I3(Q[3]),
        .I4(ena_mac),
        .O(sum_product__37[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__37 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__37_n_0 ),
        .I4(Q[4]),
        .I5(ena_mac),
        .O(sum_product__37[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__37 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__37_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__37 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__37_n_0 ),
        .I3(ena_mac),
        .O(sum_product__37[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__37 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__37_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__37_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__37[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__37[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__37[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__37[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__37[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__37[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__37[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__37[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_55
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input ena_mac;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__45_n_0 ;
  wire \accumulator[7]_i_2__45_n_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire [7:0]sum_product__45;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__45 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(ena_mac),
        .O(sum_product__45[0]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__45 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .O(sum_product__45[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__45 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(ena_mac),
        .O(sum_product__45[2]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__45 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__45_n_0 ),
        .I2(ena_mac),
        .O(sum_product__45[3]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__45 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__45_n_0 ),
        .I3(ena_mac),
        .O(sum_product__45[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__45 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__45_n_0 ),
        .I3(Q[3]),
        .I4(ena_mac),
        .O(sum_product__45[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__45 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__45_n_0 ),
        .I4(Q[4]),
        .I5(ena_mac),
        .O(sum_product__45[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__45 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__45_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__45 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__45_n_0 ),
        .I3(ena_mac),
        .O(sum_product__45[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__45 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__45_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__45_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__45[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__45[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__45[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__45[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__45[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__45[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__45[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__45[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_56
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input ena_mac;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__53_n_0 ;
  wire \accumulator[7]_i_2__53_n_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire [7:0]sum_product__53;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__53 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\x_reg[0]_1 ),
        .I3(ena_mac),
        .O(sum_product__53[0]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__53 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .O(sum_product__53[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__53 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(ena_mac),
        .O(sum_product__53[2]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__53 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__53_n_0 ),
        .I2(ena_mac),
        .O(sum_product__53[3]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__53 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__53_n_0 ),
        .I3(ena_mac),
        .O(sum_product__53[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__53 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__53_n_0 ),
        .I3(Q[3]),
        .I4(ena_mac),
        .O(sum_product__53[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__53 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__53_n_0 ),
        .I4(Q[4]),
        .I5(ena_mac),
        .O(sum_product__53[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__53 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__53_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__53 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__53_n_0 ),
        .I3(ena_mac),
        .O(sum_product__53[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__53 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__53_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__53_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__53[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__53[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__53[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__53[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__53[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__53[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__53[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__53[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_57
   (\x_reg[0]_0 ,
    Q,
    \x_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \accumulator_reg[0]_0 ,
    ena_mac);
  output \x_reg[0]_0 ;
  output [7:0]Q;
  input \x_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \accumulator_reg[0]_0 ;
  input ena_mac;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__61_n_0 ;
  wire \accumulator[7]_i_2__61_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire [7:0]sum_product__61;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__61 
       (.I0(Q[0]),
        .I1(\accumulator_reg[0]_0 ),
        .I2(\x_reg[0]_1 ),
        .I3(ena_mac),
        .O(sum_product__61[0]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__61 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(ena_mac),
        .O(sum_product__61[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__61 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(\x_reg[0]_1 ),
        .I4(Q[0]),
        .I5(ena_mac),
        .O(sum_product__61[2]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__61 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__61_n_0 ),
        .I2(ena_mac),
        .O(sum_product__61[3]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__61 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__61_n_0 ),
        .I3(ena_mac),
        .O(sum_product__61[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__61 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__61_n_0 ),
        .I3(Q[3]),
        .I4(ena_mac),
        .O(sum_product__61[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__61 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__61_n_0 ),
        .I4(Q[4]),
        .I5(ena_mac),
        .O(sum_product__61[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__61 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\x_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(ena_mac),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__61_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__61 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__61_n_0 ),
        .I3(ena_mac),
        .O(sum_product__61[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__61 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__61_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__61_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__61[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__61[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__61[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__61[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__61[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__61[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__61[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__61[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_1 ),
        .Q(\x_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_58
   (\y_reg[0]_0 ,
    \accumulator_reg[7]_0 ,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    \accumulator_reg[0]_0 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output [7:0]\accumulator_reg[7]_0 ;
  input [0:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \accumulator_reg[0]_0 ;
  input ena_mac;

  wire [0:0]Q;
  wire \accumulator[6]_i_2__6_n_0 ;
  wire \accumulator[7]_i_2__6_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [7:0]\accumulator_reg[7]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire [7:0]sum_product__6;
  wire \y_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__6 
       (.I0(\accumulator_reg[7]_0 [0]),
        .I1(Q),
        .I2(\accumulator_reg[0]_0 ),
        .I3(ena_mac),
        .O(sum_product__6[0]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__6 
       (.I0(\accumulator_reg[7]_0 [1]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(Q),
        .I4(ena_mac),
        .O(sum_product__6[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__6 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [1]),
        .I2(Q),
        .I3(\accumulator_reg[0]_0 ),
        .I4(\accumulator_reg[7]_0 [0]),
        .I5(ena_mac),
        .O(sum_product__6[2]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__6 
       (.I0(\accumulator_reg[7]_0 [3]),
        .I1(\accumulator[6]_i_2__6_n_0 ),
        .I2(ena_mac),
        .O(sum_product__6[3]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__6 
       (.I0(\accumulator_reg[7]_0 [4]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__6_n_0 ),
        .I3(ena_mac),
        .O(sum_product__6[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__6 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [4]),
        .I2(\accumulator[6]_i_2__6_n_0 ),
        .I3(\accumulator_reg[7]_0 [3]),
        .I4(ena_mac),
        .O(sum_product__6[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__6 
       (.I0(\accumulator_reg[7]_0 [6]),
        .I1(\accumulator_reg[7]_0 [5]),
        .I2(\accumulator_reg[7]_0 [3]),
        .I3(\accumulator[6]_i_2__6_n_0 ),
        .I4(\accumulator_reg[7]_0 [4]),
        .I5(ena_mac),
        .O(sum_product__6[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__6 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(Q),
        .I4(ena_mac),
        .I5(\accumulator_reg[7]_0 [1]),
        .O(\accumulator[6]_i_2__6_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__6 
       (.I0(\accumulator_reg[7]_0 [7]),
        .I1(\accumulator_reg[7]_0 [6]),
        .I2(\accumulator[7]_i_2__6_n_0 ),
        .I3(ena_mac),
        .O(sum_product__6[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__6 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__6_n_0 ),
        .I3(\accumulator_reg[7]_0 [4]),
        .O(\accumulator[7]_i_2__6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__6[0]),
        .Q(\accumulator_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__6[1]),
        .Q(\accumulator_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__6[2]),
        .Q(\accumulator_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__6[3]),
        .Q(\accumulator_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__6[4]),
        .Q(\accumulator_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__6[5]),
        .Q(\accumulator_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__6[6]),
        .Q(\accumulator_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__6[7]),
        .Q(\accumulator_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_59
   (\y_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \accumulator_reg[0]_0 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \accumulator_reg[0]_0 ;
  input ena_mac;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__14_n_0 ;
  wire \accumulator[7]_i_2__14_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire [7:0]sum_product__14;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__14 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\accumulator_reg[0]_0 ),
        .I3(ena_mac),
        .O(sum_product__14[0]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__14 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .O(sum_product__14[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__14 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(Q[0]),
        .I5(ena_mac),
        .O(sum_product__14[2]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__14 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__14_n_0 ),
        .I2(ena_mac),
        .O(sum_product__14[3]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__14 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__14_n_0 ),
        .I3(ena_mac),
        .O(sum_product__14[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__14 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__14_n_0 ),
        .I3(Q[3]),
        .I4(ena_mac),
        .O(sum_product__14[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__14 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__14_n_0 ),
        .I4(Q[4]),
        .I5(ena_mac),
        .O(sum_product__14[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__14 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__14_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__14 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__14_n_0 ),
        .I3(ena_mac),
        .O(sum_product__14[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__14 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__14_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__14_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__14[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__14[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__14[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__14[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__14[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__14[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__14[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__14[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_6
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    \accumulator_reg[7]_0 ,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    Q,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]\accumulator_reg[7]_0 ;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]Q;
  input \accumulator_reg[0]_0 ;

  wire [0:0]Q;
  wire \accumulator[6]_i_2__31_n_0 ;
  wire \accumulator[7]_i_2__31_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [7:0]\accumulator_reg[7]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__31;
  wire \x_reg[0]_0 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__31 
       (.I0(\accumulator_reg[7]_0 [0]),
        .I1(\y_reg[0]_1 ),
        .I2(Q),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__31[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__31 
       (.I0(\accumulator_reg[7]_0 [1]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(Q),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__31[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__31 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [1]),
        .I2(\y_reg[0]_1 ),
        .I3(Q),
        .I4(\accumulator_reg[7]_0 [0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__31[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__31 
       (.I0(\accumulator_reg[7]_0 [3]),
        .I1(\accumulator[6]_i_2__31_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__31[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__31 
       (.I0(\accumulator_reg[7]_0 [4]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__31_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__31[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__31 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [4]),
        .I2(\accumulator[6]_i_2__31_n_0 ),
        .I3(\accumulator_reg[7]_0 [3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__31[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__31 
       (.I0(\accumulator_reg[7]_0 [6]),
        .I1(\accumulator_reg[7]_0 [5]),
        .I2(\accumulator_reg[7]_0 [3]),
        .I3(\accumulator[6]_i_2__31_n_0 ),
        .I4(\accumulator_reg[7]_0 [4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__31[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__31 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(Q),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(\accumulator_reg[7]_0 [1]),
        .O(\accumulator[6]_i_2__31_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__31 
       (.I0(\accumulator_reg[7]_0 [7]),
        .I1(\accumulator_reg[7]_0 [6]),
        .I2(\accumulator[7]_i_2__31_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__31[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__31 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__31_n_0 ),
        .I3(\accumulator_reg[7]_0 [4]),
        .O(\accumulator[7]_i_2__31_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__31[0]),
        .Q(\accumulator_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__31[1]),
        .Q(\accumulator_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__31[2]),
        .Q(\accumulator_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__31[3]),
        .Q(\accumulator_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__31[4]),
        .Q(\accumulator_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__31[5]),
        .Q(\accumulator_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__31[6]),
        .Q(\accumulator_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__31[7]),
        .Q(\accumulator_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_60
   (\y_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \accumulator_reg[0]_0 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \accumulator_reg[0]_0 ;
  input ena_mac;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__22_n_0 ;
  wire \accumulator[7]_i_2__22_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire [7:0]sum_product__22;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__22 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\accumulator_reg[0]_0 ),
        .I3(ena_mac),
        .O(sum_product__22[0]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__22 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .O(sum_product__22[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__22 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(Q[0]),
        .I5(ena_mac),
        .O(sum_product__22[2]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__22 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__22_n_0 ),
        .I2(ena_mac),
        .O(sum_product__22[3]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__22 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__22_n_0 ),
        .I3(ena_mac),
        .O(sum_product__22[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__22 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__22_n_0 ),
        .I3(Q[3]),
        .I4(ena_mac),
        .O(sum_product__22[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__22 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__22_n_0 ),
        .I4(Q[4]),
        .I5(ena_mac),
        .O(sum_product__22[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__22 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__22_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__22 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__22_n_0 ),
        .I3(ena_mac),
        .O(sum_product__22[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__22 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__22_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__22_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__22[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__22[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__22[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__22[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__22[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__22[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__22[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__22[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_61
   (\y_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \accumulator_reg[0]_0 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \accumulator_reg[0]_0 ;
  input ena_mac;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__30_n_0 ;
  wire \accumulator[7]_i_2__30_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire [7:0]sum_product__30;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__30 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\accumulator_reg[0]_0 ),
        .I3(ena_mac),
        .O(sum_product__30[0]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__30 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .O(sum_product__30[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__30 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(Q[0]),
        .I5(ena_mac),
        .O(sum_product__30[2]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__30 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__30_n_0 ),
        .I2(ena_mac),
        .O(sum_product__30[3]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__30 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__30_n_0 ),
        .I3(ena_mac),
        .O(sum_product__30[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__30 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__30_n_0 ),
        .I3(Q[3]),
        .I4(ena_mac),
        .O(sum_product__30[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__30 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__30_n_0 ),
        .I4(Q[4]),
        .I5(ena_mac),
        .O(sum_product__30[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__30 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__30_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__30 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__30_n_0 ),
        .I3(ena_mac),
        .O(sum_product__30[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__30 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__30_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__30_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__30[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__30[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__30[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__30[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__30[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__30[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__30[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__30[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_62
   (\y_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \accumulator_reg[0]_0 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \accumulator_reg[0]_0 ;
  input ena_mac;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__38_n_0 ;
  wire \accumulator[7]_i_2__38_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire [7:0]sum_product__38;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__38 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\accumulator_reg[0]_0 ),
        .I3(ena_mac),
        .O(sum_product__38[0]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__38 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .O(sum_product__38[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__38 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(Q[0]),
        .I5(ena_mac),
        .O(sum_product__38[2]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__38 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__38_n_0 ),
        .I2(ena_mac),
        .O(sum_product__38[3]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__38 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__38_n_0 ),
        .I3(ena_mac),
        .O(sum_product__38[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__38 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__38_n_0 ),
        .I3(Q[3]),
        .I4(ena_mac),
        .O(sum_product__38[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__38 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__38_n_0 ),
        .I4(Q[4]),
        .I5(ena_mac),
        .O(sum_product__38[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__38 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__38_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__38 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__38_n_0 ),
        .I3(ena_mac),
        .O(sum_product__38[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__38 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__38_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__38_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__38[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__38[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__38[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__38[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__38[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__38[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__38[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__38[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_63
   (\y_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \accumulator_reg[0]_0 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \accumulator_reg[0]_0 ;
  input ena_mac;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__46_n_0 ;
  wire \accumulator[7]_i_2__46_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire [7:0]sum_product__46;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__46 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\accumulator_reg[0]_0 ),
        .I3(ena_mac),
        .O(sum_product__46[0]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__46 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .O(sum_product__46[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__46 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(Q[0]),
        .I5(ena_mac),
        .O(sum_product__46[2]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__46 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__46_n_0 ),
        .I2(ena_mac),
        .O(sum_product__46[3]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__46 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__46_n_0 ),
        .I3(ena_mac),
        .O(sum_product__46[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__46 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__46_n_0 ),
        .I3(Q[3]),
        .I4(ena_mac),
        .O(sum_product__46[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__46 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__46_n_0 ),
        .I4(Q[4]),
        .I5(ena_mac),
        .O(sum_product__46[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__46 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__46_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__46 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__46_n_0 ),
        .I3(ena_mac),
        .O(sum_product__46[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__46 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__46_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__46_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__46[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__46[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__46[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__46[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__46[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__46[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__46[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__46[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_64
   (\y_reg[0]_0 ,
    Q,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \accumulator_reg[0]_0 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output [7:0]Q;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \accumulator_reg[0]_0 ;
  input ena_mac;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__54_n_0 ;
  wire \accumulator[7]_i_2__54_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire [7:0]sum_product__54;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__54 
       (.I0(Q[0]),
        .I1(\y_reg[0]_1 ),
        .I2(\accumulator_reg[0]_0 ),
        .I3(ena_mac),
        .O(sum_product__54[0]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__54 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .O(sum_product__54[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__54 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\y_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(Q[0]),
        .I5(ena_mac),
        .O(sum_product__54[2]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__54 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__54_n_0 ),
        .I2(ena_mac),
        .O(sum_product__54[3]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__54 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__54_n_0 ),
        .I3(ena_mac),
        .O(sum_product__54[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__54 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__54_n_0 ),
        .I3(Q[3]),
        .I4(ena_mac),
        .O(sum_product__54[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__54 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__54_n_0 ),
        .I4(Q[4]),
        .I5(ena_mac),
        .O(sum_product__54[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__54 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(\y_reg[0]_1 ),
        .I4(ena_mac),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__54_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__54 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__54_n_0 ),
        .I3(ena_mac),
        .O(sum_product__54[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__54 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__54_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__54_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__54[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__54[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__54[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__54[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__54[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__54[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__54[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__54[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_65
   (Q,
    \accumulator_reg[0]_0 ,
    \accumulator_reg[0]_1 ,
    ena_mac,
    clock_IBUF_BUFG,
    btn_IBUF);
  output [7:0]Q;
  input \accumulator_reg[0]_0 ;
  input \accumulator_reg[0]_1 ;
  input ena_mac;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;

  wire [7:0]Q;
  wire \accumulator[6]_i_2__62_n_0 ;
  wire \accumulator[7]_i_2__62_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire \accumulator_reg[0]_1 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire [7:0]sum_product__62;

  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__62 
       (.I0(Q[0]),
        .I1(\accumulator_reg[0]_0 ),
        .I2(\accumulator_reg[0]_1 ),
        .I3(ena_mac),
        .O(sum_product__62[0]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__62 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\accumulator_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(ena_mac),
        .O(sum_product__62[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__62 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(\accumulator_reg[0]_1 ),
        .I4(Q[0]),
        .I5(ena_mac),
        .O(sum_product__62[2]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__62 
       (.I0(Q[3]),
        .I1(\accumulator[6]_i_2__62_n_0 ),
        .I2(ena_mac),
        .O(sum_product__62[3]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__62 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__62_n_0 ),
        .I3(ena_mac),
        .O(sum_product__62[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__62 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\accumulator[6]_i_2__62_n_0 ),
        .I3(Q[3]),
        .I4(ena_mac),
        .O(sum_product__62[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__62 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\accumulator[6]_i_2__62_n_0 ),
        .I4(Q[4]),
        .I5(ena_mac),
        .O(sum_product__62[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__62 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\accumulator_reg[0]_1 ),
        .I3(\accumulator_reg[0]_0 ),
        .I4(ena_mac),
        .I5(Q[1]),
        .O(\accumulator[6]_i_2__62_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__62 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\accumulator[7]_i_2__62_n_0 ),
        .I3(ena_mac),
        .O(sum_product__62[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__62 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\accumulator[6]_i_2__62_n_0 ),
        .I3(Q[4]),
        .O(\accumulator[7]_i_2__62_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__62[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__62[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__62[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__62[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__62[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__62[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__62[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__62[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_7
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    \accumulator_reg[7]_0 ,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    Q,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]\accumulator_reg[7]_0 ;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]Q;
  input \accumulator_reg[0]_0 ;

  wire [0:0]Q;
  wire \accumulator[6]_i_2__39_n_0 ;
  wire \accumulator[7]_i_2__39_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [7:0]\accumulator_reg[7]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__39;
  wire \x_reg[0]_0 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__39 
       (.I0(\accumulator_reg[7]_0 [0]),
        .I1(\y_reg[0]_1 ),
        .I2(Q),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__39[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__39 
       (.I0(\accumulator_reg[7]_0 [1]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(Q),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__39[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__39 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [1]),
        .I2(\y_reg[0]_1 ),
        .I3(Q),
        .I4(\accumulator_reg[7]_0 [0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__39[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__39 
       (.I0(\accumulator_reg[7]_0 [3]),
        .I1(\accumulator[6]_i_2__39_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__39[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__39 
       (.I0(\accumulator_reg[7]_0 [4]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__39_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__39[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__39 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [4]),
        .I2(\accumulator[6]_i_2__39_n_0 ),
        .I3(\accumulator_reg[7]_0 [3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__39[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__39 
       (.I0(\accumulator_reg[7]_0 [6]),
        .I1(\accumulator_reg[7]_0 [5]),
        .I2(\accumulator_reg[7]_0 [3]),
        .I3(\accumulator[6]_i_2__39_n_0 ),
        .I4(\accumulator_reg[7]_0 [4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__39[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__39 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(Q),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(\accumulator_reg[7]_0 [1]),
        .O(\accumulator[6]_i_2__39_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__39 
       (.I0(\accumulator_reg[7]_0 [7]),
        .I1(\accumulator_reg[7]_0 [6]),
        .I2(\accumulator[7]_i_2__39_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__39[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__39 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__39_n_0 ),
        .I3(\accumulator_reg[7]_0 [4]),
        .O(\accumulator[7]_i_2__39_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__39[0]),
        .Q(\accumulator_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__39[1]),
        .Q(\accumulator_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__39[2]),
        .Q(\accumulator_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__39[3]),
        .Q(\accumulator_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__39[4]),
        .Q(\accumulator_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__39[5]),
        .Q(\accumulator_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__39[6]),
        .Q(\accumulator_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__39[7]),
        .Q(\accumulator_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_8
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    \accumulator_reg[7]_0 ,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    Q,
    \accumulator_reg[0]_0 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]\accumulator_reg[7]_0 ;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]Q;
  input \accumulator_reg[0]_0 ;

  wire [0:0]Q;
  wire \accumulator[6]_i_2__47_n_0 ;
  wire \accumulator[7]_i_2__47_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire [7:0]\accumulator_reg[7]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__47;
  wire \x_reg[0]_0 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__47 
       (.I0(\accumulator_reg[7]_0 [0]),
        .I1(\y_reg[0]_1 ),
        .I2(Q),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__47[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__47 
       (.I0(\accumulator_reg[7]_0 [1]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(Q),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__47[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__47 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [1]),
        .I2(\y_reg[0]_1 ),
        .I3(Q),
        .I4(\accumulator_reg[7]_0 [0]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__47[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__47 
       (.I0(\accumulator_reg[7]_0 [3]),
        .I1(\accumulator[6]_i_2__47_n_0 ),
        .I2(\accumulator_reg[0]_0 ),
        .O(sum_product__47[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__47 
       (.I0(\accumulator_reg[7]_0 [4]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__47_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__47[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__47 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [4]),
        .I2(\accumulator[6]_i_2__47_n_0 ),
        .I3(\accumulator_reg[7]_0 [3]),
        .I4(\accumulator_reg[0]_0 ),
        .O(sum_product__47[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__47 
       (.I0(\accumulator_reg[7]_0 [6]),
        .I1(\accumulator_reg[7]_0 [5]),
        .I2(\accumulator_reg[7]_0 [3]),
        .I3(\accumulator[6]_i_2__47_n_0 ),
        .I4(\accumulator_reg[7]_0 [4]),
        .I5(\accumulator_reg[0]_0 ),
        .O(sum_product__47[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__47 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(Q),
        .I3(\y_reg[0]_1 ),
        .I4(\accumulator_reg[0]_0 ),
        .I5(\accumulator_reg[7]_0 [1]),
        .O(\accumulator[6]_i_2__47_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__47 
       (.I0(\accumulator_reg[7]_0 [7]),
        .I1(\accumulator_reg[7]_0 [6]),
        .I2(\accumulator[7]_i_2__47_n_0 ),
        .I3(\accumulator_reg[0]_0 ),
        .O(sum_product__47[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__47 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__47_n_0 ),
        .I3(\accumulator_reg[7]_0 [4]),
        .O(\accumulator[7]_i_2__47_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__47[0]),
        .Q(\accumulator_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__47[1]),
        .Q(\accumulator_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__47[2]),
        .Q(\accumulator_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__47[3]),
        .Q(\accumulator_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__47[4]),
        .Q(\accumulator_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__47[5]),
        .Q(\accumulator_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__47[6]),
        .Q(\accumulator_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__47[7]),
        .Q(\accumulator_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_9
   (\x_reg[0]_0 ,
    \accumulator_reg[7]_0 ,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    \accumulator_reg[0]_0 ,
    \accumulator_reg[0]_1 );
  output \x_reg[0]_0 ;
  output [7:0]\accumulator_reg[7]_0 ;
  input [0:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \accumulator_reg[0]_0 ;
  input \accumulator_reg[0]_1 ;

  wire [0:0]Q;
  wire \accumulator[6]_i_2__55_n_0 ;
  wire \accumulator[7]_i_2__55_n_0 ;
  wire \accumulator_reg[0]_0 ;
  wire \accumulator_reg[0]_1 ;
  wire [7:0]\accumulator_reg[7]_0 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]sum_product__55;
  wire \x_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[0]_i_1__55 
       (.I0(\accumulator_reg[7]_0 [0]),
        .I1(\accumulator_reg[0]_0 ),
        .I2(Q),
        .I3(\accumulator_reg[0]_1 ),
        .O(sum_product__55[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[1]_i_1__55 
       (.I0(\accumulator_reg[7]_0 [1]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(Q),
        .I3(\accumulator_reg[0]_0 ),
        .I4(\accumulator_reg[0]_1 ),
        .O(sum_product__55[1]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[2]_i_1__55 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [1]),
        .I2(\accumulator_reg[0]_0 ),
        .I3(Q),
        .I4(\accumulator_reg[7]_0 [0]),
        .I5(\accumulator_reg[0]_1 ),
        .O(sum_product__55[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \accumulator[3]_i_1__55 
       (.I0(\accumulator_reg[7]_0 [3]),
        .I1(\accumulator[6]_i_2__55_n_0 ),
        .I2(\accumulator_reg[0]_1 ),
        .O(sum_product__55[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[4]_i_1__55 
       (.I0(\accumulator_reg[7]_0 [4]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__55_n_0 ),
        .I3(\accumulator_reg[0]_1 ),
        .O(sum_product__55[4]));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \accumulator[5]_i_1__55 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [4]),
        .I2(\accumulator[6]_i_2__55_n_0 ),
        .I3(\accumulator_reg[7]_0 [3]),
        .I4(\accumulator_reg[0]_1 ),
        .O(sum_product__55[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \accumulator[6]_i_1__55 
       (.I0(\accumulator_reg[7]_0 [6]),
        .I1(\accumulator_reg[7]_0 [5]),
        .I2(\accumulator_reg[7]_0 [3]),
        .I3(\accumulator[6]_i_2__55_n_0 ),
        .I4(\accumulator_reg[7]_0 [4]),
        .I5(\accumulator_reg[0]_1 ),
        .O(sum_product__55[6]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \accumulator[6]_i_2__55 
       (.I0(\accumulator_reg[7]_0 [2]),
        .I1(\accumulator_reg[7]_0 [0]),
        .I2(Q),
        .I3(\accumulator_reg[0]_0 ),
        .I4(\accumulator_reg[0]_1 ),
        .I5(\accumulator_reg[7]_0 [1]),
        .O(\accumulator[6]_i_2__55_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \accumulator[7]_i_1__55 
       (.I0(\accumulator_reg[7]_0 [7]),
        .I1(\accumulator_reg[7]_0 [6]),
        .I2(\accumulator[7]_i_2__55_n_0 ),
        .I3(\accumulator_reg[0]_1 ),
        .O(sum_product__55[7]));
  LUT4 #(
    .INIT(16'h8000)) 
    \accumulator[7]_i_2__55 
       (.I0(\accumulator_reg[7]_0 [5]),
        .I1(\accumulator_reg[7]_0 [3]),
        .I2(\accumulator[6]_i_2__55_n_0 ),
        .I3(\accumulator_reg[7]_0 [4]),
        .O(\accumulator[7]_i_2__55_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__55[0]),
        .Q(\accumulator_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__55[1]),
        .Q(\accumulator_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__55[2]),
        .Q(\accumulator_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__55[3]),
        .Q(\accumulator_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__55[4]),
        .Q(\accumulator_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__55[5]),
        .Q(\accumulator_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__55[6]),
        .Q(\accumulator_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(sum_product__55[7]),
        .Q(\accumulator_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q),
        .Q(\x_reg[0]_0 ));
endmodule

module baudRateGenerator
   (CLK,
    pdata_rx_out1,
    D,
    E,
    clock_IBUF_BUFG,
    btn_IBUF,
    ena,
    tmp_sdata_rx_in,
    Q,
    \pdata_rx_out_reg[0] ,
    \FSM_sequential_current_fsm_reg[0] ,
    bit_start,
    \px_bit_reg[0] );
  output CLK;
  output pdata_rx_out1;
  output [1:0]D;
  output [0:0]E;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input ena;
  input tmp_sdata_rx_in;
  input [1:0]Q;
  input \pdata_rx_out_reg[0] ;
  input \FSM_sequential_current_fsm_reg[0] ;
  input bit_start;
  input [0:0]\px_bit_reg[0] ;

  wire \^CLK ;
  wire CLK_BUFG;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_fsm_reg[0] ;
  wire [1:0]Q;
  wire base_clock;
  wire bit_start;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire clock_base_ref_n_0;
  wire clock_out_i_1_n_0;
  wire ena;
  wire pdata_rx_out1;
  wire \pdata_rx_out_reg[0] ;
  wire [0:0]\px_bit_reg[0] ;
  wire tmp_sdata_rx_in;

  assign CLK = CLK_BUFG;
  (* LOPT_BUFG_CLOCK *) 
  (* OPT_MODIFIED = "BUFG_OPT" *) 
  BUFG CLK_BUFG_inst
       (.I(\^CLK ),
        .O(CLK_BUFG));
  counter__parameterized0 base_clock_counter
       (.base_clock(base_clock),
        .btn_IBUF(btn_IBUF),
        .\counter_reg[1]_0 (clock_base_ref_n_0));
  ref_clock_1 clock_base_ref
       (.btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .out_clock_ref_reg_0(clock_base_ref_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_out_i_1
       (.I0(CLK_BUFG),
        .O(clock_out_i_1_n_0));
  (* OPT_MODIFIED = "BUFG_OPT" *) 
  FDCE #(
    .INIT(1'b0)) 
    clock_out_reg
       (.C(base_clock),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(clock_out_i_1_n_0),
        .Q(\^CLK ));
  counter__parameterized1 sampling_counter
       (.D(D),
        .E(E),
        .\FSM_sequential_current_fsm_reg[0] (\FSM_sequential_current_fsm_reg[0] ),
        .Q(Q),
        .bit_start(bit_start),
        .btn_IBUF(btn_IBUF),
        .\counter_reg[3]_0 (CLK_BUFG),
        .ena(ena),
        .pdata_rx_out1(pdata_rx_out1),
        .\pdata_rx_out_reg[0] (\pdata_rx_out_reg[0] ),
        .\px_bit_reg[0] (\px_bit_reg[0] ),
        .tmp_sdata_rx_in(tmp_sdata_rx_in));
endmodule

(* ORIG_REF_NAME = "baudRateGenerator" *) 
module baudRateGenerator__parameterized0
   (CLK,
    clock_IBUF_BUFG,
    btn_IBUF);
  output CLK;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;

  wire CLK;
  wire base_clock_counter_n_0;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire clock_base_ref_n_0;
  wire clock_out_i_1__0_n_0;

  counter__parameterized2 base_clock_counter
       (.btn_IBUF(btn_IBUF),
        .\counter_reg[5]_0 (clock_base_ref_n_0),
        .counting_done_reg_0(base_clock_counter_n_0));
  ref_clock clock_base_ref
       (.btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .out_clock_ref_reg_0(clock_base_ref_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_out_i_1__0
       (.I0(CLK),
        .O(clock_out_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clock_out_reg
       (.C(base_clock_counter_n_0),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(clock_out_i_1__0_n_0),
        .Q(CLK));
endmodule

module counter
   (counting_done_reg_0,
    clock_IBUF_BUFG,
    btn_IBUF);
  output counting_done_reg_0;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;

  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire counter3_n_0;
  wire \counter[0]_i_1__1_n_0 ;
  wire \counter[1]_i_1__1_n_0 ;
  wire \counter[2]_i_1__1_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire counting_done_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'h04)) 
    counter3
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[1] ),
        .O(counter3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \counter[0]_i_1__1 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__1 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .O(\counter[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'h68)) 
    \counter[2]_i_1__1 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[0] ),
        .O(\counter[2]_i_1__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[0]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[1]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[2]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    counting_done_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(counter3_n_0),
        .Q(counting_done_reg_0));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module counter_2
   (done,
    clock_IBUF_BUFG,
    btn_IBUF);
  output done;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;

  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [2:0]counter;
  wire counter3_n_0;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1__3_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire done;

  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'h04)) 
    counter3
       (.I0(counter[0]),
        .I1(counter[2]),
        .I2(counter[1]),
        .O(counter3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \counter[0]_i_1 
       (.I0(counter[1]),
        .I1(counter[2]),
        .I2(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__3 
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(\counter[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'h68)) 
    \counter[2]_i_1 
       (.I0(counter[1]),
        .I1(counter[2]),
        .I2(counter[0]),
        .O(\counter[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[1]_i_1__3_n_0 ),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    counting_done_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(counter3_n_0),
        .Q(done));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module counter__parameterized0
   (base_clock,
    \counter_reg[1]_0 ,
    btn_IBUF);
  output base_clock;
  input \counter_reg[1]_0 ;
  input [0:0]btn_IBUF;

  wire base_clock;
  wire [0:0]btn_IBUF;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter_reg[1]_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire counting_done_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_1__0 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[1]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .O(\counter[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(\counter_reg[1]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(\counter_reg[1]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[1]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT2 #(
    .INIT(4'h2)) 
    counting_done_i_1
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .O(counting_done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    counting_done_reg
       (.C(\counter_reg[1]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(counting_done_i_1_n_0),
        .Q(base_clock));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module counter__parameterized1
   (pdata_rx_out1,
    D,
    E,
    \counter_reg[3]_0 ,
    btn_IBUF,
    ena,
    tmp_sdata_rx_in,
    Q,
    \pdata_rx_out_reg[0] ,
    \FSM_sequential_current_fsm_reg[0] ,
    bit_start,
    \px_bit_reg[0] );
  output pdata_rx_out1;
  output [1:0]D;
  output [0:0]E;
  input \counter_reg[3]_0 ;
  input [0:0]btn_IBUF;
  input ena;
  input tmp_sdata_rx_in;
  input [1:0]Q;
  input \pdata_rx_out_reg[0] ;
  input \FSM_sequential_current_fsm_reg[0] ;
  input bit_start;
  input [0:0]\px_bit_reg[0] ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_fsm_reg[0] ;
  wire [1:0]Q;
  wire bit_start;
  wire [0:0]btn_IBUF;
  wire \counter[0]_i_1__3_n_0 ;
  wire \counter[1]_i_1__2_n_0 ;
  wire \counter[2]_i_1__2_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire [3:0]counter_reg;
  wire \counter_reg[3]_0 ;
  wire counting_done_i_1__0_n_0;
  wire ena;
  wire pdata_rx_out1;
  wire \pdata_rx_out_reg[0] ;
  wire [0:0]\px_bit_reg[0] ;
  wire sample_center_bit;
  wire tmp_sdata_rx_in;

  LUT5 #(
    .INIT(32'h26DD2688)) 
    \FSM_sequential_current_fsm[0]_i_1 
       (.I0(Q[0]),
        .I1(sample_center_bit),
        .I2(\FSM_sequential_current_fsm_reg[0] ),
        .I3(Q[1]),
        .I4(bit_start),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h2E)) 
    \FSM_sequential_current_fsm[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(sample_center_bit),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_1__3 
       (.I0(ena),
        .I1(counter_reg[0]),
        .O(\counter[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \counter[1]_i_1__2 
       (.I0(ena),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .O(\counter[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \counter[2]_i_1__2 
       (.I0(ena),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .I3(counter_reg[2]),
        .O(\counter[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \counter[3]_i_1 
       (.I0(ena),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .I3(counter_reg[2]),
        .I4(counter_reg[3]),
        .O(\counter[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(\counter_reg[3]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[0]_i_1__3_n_0 ),
        .Q(counter_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(\counter_reg[3]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[1]_i_1__2_n_0 ),
        .Q(counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(\counter_reg[3]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[2]_i_1__2_n_0 ),
        .Q(counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(\counter_reg[3]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    counting_done_i_1__0
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .I2(counter_reg[0]),
        .I3(counter_reg[1]),
        .I4(ena),
        .O(counting_done_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    counting_done_reg
       (.C(\counter_reg[3]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(counting_done_i_1__0_n_0),
        .Q(sample_center_bit));
  LUT5 #(
    .INIT(32'hFF8F0080)) 
    \pdata_rx_out[7]_i_2 
       (.I0(sample_center_bit),
        .I1(tmp_sdata_rx_in),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\pdata_rx_out_reg[0] ),
        .O(pdata_rx_out1));
  LUT4 #(
    .INIT(16'h555D)) 
    \px_bit[3]_i_1 
       (.I0(Q[1]),
        .I1(sample_center_bit),
        .I2(\px_bit_reg[0] ),
        .I3(Q[0]),
        .O(E));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module counter__parameterized2
   (counting_done_reg_0,
    \counter_reg[5]_0 ,
    btn_IBUF);
  output counting_done_reg_0;
  input \counter_reg[5]_0 ;
  input [0:0]btn_IBUF;

  wire [0:0]btn_IBUF;
  wire \counter[0]_i_1__2_n_0 ;
  wire \counter[1]_i_1__0_n_0 ;
  wire \counter[2]_i_1__0_n_0 ;
  wire \counter[3]_i_1__0_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire [5:0]counter_reg;
  wire \counter_reg[5]_0 ;
  wire counting_done_i_1__1_n_0;
  wire counting_done_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__2 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__0 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .O(\counter[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7788778877087788)) 
    \counter[2]_i_1__0 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[3]),
        .I3(counter_reg[2]),
        .I4(counter_reg[5]),
        .I5(counter_reg[4]),
        .O(\counter[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h78F078F0787078F0)) 
    \counter[3]_i_1__0 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[3]),
        .I3(counter_reg[2]),
        .I4(counter_reg[5]),
        .I5(counter_reg[4]),
        .O(\counter[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[3]),
        .I3(counter_reg[2]),
        .I4(counter_reg[4]),
        .O(\counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FF7F0000)) 
    \counter[5]_i_1 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[3]),
        .I3(counter_reg[2]),
        .I4(counter_reg[5]),
        .I5(counter_reg[4]),
        .O(\counter[5]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(\counter_reg[5]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[0]_i_1__2_n_0 ),
        .Q(counter_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(\counter_reg[5]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[1]_i_1__0_n_0 ),
        .Q(counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(\counter_reg[5]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[2]_i_1__0_n_0 ),
        .Q(counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(\counter_reg[5]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[3]_i_1__0_n_0 ),
        .Q(counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(\counter_reg[5]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[4]_i_1_n_0 ),
        .Q(counter_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(\counter_reg[5]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[5]_i_1_n_0 ),
        .Q(counter_reg[5]));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    counting_done_i_1__1
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .I2(counter_reg[2]),
        .I3(counter_reg[3]),
        .I4(counter_reg[0]),
        .I5(counter_reg[1]),
        .O(counting_done_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    counting_done_reg
       (.C(\counter_reg[5]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(counting_done_i_1__1_n_0),
        .Q(counting_done_reg_0));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module counter__parameterized4
   (done,
    clock_IBUF_BUFG,
    btn_IBUF);
  output done;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;

  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [13:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire counting_done_i_1__2_n_0;
  wire counting_done_i_2_n_0;
  wire counting_done_i_3_n_0;
  wire counting_done_i_4_n_0;
  wire done;
  wire [2:0]\NLW_counter_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[12]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .I1(counting_done_i_1__2_n_0),
        .O(\counter[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_3 
       (.I0(counter_reg[3]),
        .I1(counting_done_i_1__2_n_0),
        .O(\counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_4 
       (.I0(counter_reg[2]),
        .I1(counting_done_i_1__2_n_0),
        .O(\counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_5 
       (.I0(counter_reg[1]),
        .I1(counting_done_i_1__2_n_0),
        .O(\counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_6 
       (.I0(counter_reg[0]),
        .I1(counting_done_i_1__2_n_0),
        .O(\counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_2 
       (.I0(counter_reg[13]),
        .I1(counting_done_i_1__2_n_0),
        .O(\counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_3 
       (.I0(counter_reg[12]),
        .I1(counting_done_i_1__2_n_0),
        .O(\counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_2 
       (.I0(counter_reg[7]),
        .I1(counting_done_i_1__2_n_0),
        .O(\counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_3 
       (.I0(counter_reg[6]),
        .I1(counting_done_i_1__2_n_0),
        .O(\counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_4 
       (.I0(counter_reg[5]),
        .I1(counting_done_i_1__2_n_0),
        .O(\counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_5 
       (.I0(counter_reg[4]),
        .I1(counting_done_i_1__2_n_0),
        .O(\counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_2 
       (.I0(counter_reg[11]),
        .I1(counting_done_i_1__2_n_0),
        .O(\counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_3 
       (.I0(counter_reg[10]),
        .I1(counting_done_i_1__2_n_0),
        .O(\counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_4 
       (.I0(counter_reg[9]),
        .I1(counting_done_i_1__2_n_0),
        .O(\counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_5 
       (.I0(counter_reg[8]),
        .I1(counting_done_i_1__2_n_0),
        .O(\counter[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\NLW_counter_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter[0]_i_2_n_0 }),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({\counter[0]_i_3_n_0 ,\counter[0]_i_4_n_0 ,\counter[0]_i_5_n_0 ,\counter[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO(\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[12]_i_1_O_UNCONNECTED [3:2],\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4_n_0 ,\counter[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    counting_done_i_1__2
       (.I0(counting_done_i_2_n_0),
        .I1(counter_reg[11]),
        .I2(counter_reg[7]),
        .I3(counter_reg[12]),
        .I4(counting_done_i_3_n_0),
        .I5(counting_done_i_4_n_0),
        .O(counting_done_i_1__2_n_0));
  LUT4 #(
    .INIT(16'hFFFB)) 
    counting_done_i_2
       (.I0(counter_reg[4]),
        .I1(counter_reg[13]),
        .I2(counter_reg[6]),
        .I3(counter_reg[5]),
        .O(counting_done_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    counting_done_i_3
       (.I0(counter_reg[10]),
        .I1(counter_reg[9]),
        .I2(counter_reg[8]),
        .O(counting_done_i_3_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    counting_done_i_4
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[3]),
        .I3(counter_reg[2]),
        .O(counting_done_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    counting_done_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(counting_done_i_1__2_n_0),
        .Q(done));
endmodule

module mem
   (fsm_unit_control_next2,
    mem_opb_valid_i__0,
    \mem_fsm_reg[1]_0 ,
    \btn[0] ,
    mem_opa_out_data,
    Q,
    p_0_in,
    mem_opb_valid_i_reg,
    syst_rready_i,
    mem_opa_valid_i,
    mem_opb_rw,
    \mem_reg[0][7]_0 ,
    btn_IBUF,
    E,
    mem_opb_clock_BUFG);
  output fsm_unit_control_next2;
  output mem_opb_valid_i__0;
  output \mem_fsm_reg[1]_0 ;
  output \btn[0] ;
  output [7:0]mem_opa_out_data;
  input [1:0]Q;
  input p_0_in;
  input [1:0]mem_opb_valid_i_reg;
  input syst_rready_i;
  input mem_opa_valid_i;
  input mem_opb_rw;
  input [7:0]\mem_reg[0][7]_0 ;
  input [0:0]btn_IBUF;
  input [0:0]E;
  input mem_opb_clock_BUFG;

  wire [0:0]E;
  wire [1:0]Q;
  wire \btn[0] ;
  wire [0:0]btn_IBUF;
  wire [3:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire fsm_unit_control_next2;
  wire \mem[0][7]_i_1_n_0 ;
  wire \mem[10][7]_i_1_n_0 ;
  wire \mem[11][7]_i_1__0_n_0 ;
  wire \mem[12][7]_i_1__0_n_0 ;
  wire \mem[13][7]_i_1__0_n_0 ;
  wire \mem[14][7]_i_1_n_0 ;
  wire \mem[15][0]_i_5_n_0 ;
  wire \mem[15][0]_i_6_n_0 ;
  wire \mem[15][0]_i_7_n_0 ;
  wire \mem[15][0]_i_8_n_0 ;
  wire \mem[15][1]_i_5_n_0 ;
  wire \mem[15][1]_i_6_n_0 ;
  wire \mem[15][1]_i_7_n_0 ;
  wire \mem[15][1]_i_8_n_0 ;
  wire \mem[15][2]_i_5_n_0 ;
  wire \mem[15][2]_i_6_n_0 ;
  wire \mem[15][2]_i_7_n_0 ;
  wire \mem[15][2]_i_8_n_0 ;
  wire \mem[15][3]_i_5_n_0 ;
  wire \mem[15][3]_i_6_n_0 ;
  wire \mem[15][3]_i_7_n_0 ;
  wire \mem[15][3]_i_8_n_0 ;
  wire \mem[15][4]_i_5_n_0 ;
  wire \mem[15][4]_i_6_n_0 ;
  wire \mem[15][4]_i_7_n_0 ;
  wire \mem[15][4]_i_8_n_0 ;
  wire \mem[15][5]_i_5_n_0 ;
  wire \mem[15][5]_i_6_n_0 ;
  wire \mem[15][5]_i_7_n_0 ;
  wire \mem[15][5]_i_8_n_0 ;
  wire \mem[15][6]_i_5_n_0 ;
  wire \mem[15][6]_i_6_n_0 ;
  wire \mem[15][6]_i_7_n_0 ;
  wire \mem[15][6]_i_8_n_0 ;
  wire \mem[15][7]_i_1__0_n_0 ;
  wire \mem[15][7]_i_6_n_0 ;
  wire \mem[15][7]_i_7_n_0 ;
  wire \mem[15][7]_i_8_n_0 ;
  wire \mem[15][7]_i_9_n_0 ;
  wire \mem[1][7]_i_1_n_0 ;
  wire \mem[2][7]_i_1_n_0 ;
  wire \mem[3][7]_i_1__0_n_0 ;
  wire \mem[4][7]_i_1_n_0 ;
  wire \mem[5][7]_i_1_n_0 ;
  wire \mem[6][7]_i_1_n_0 ;
  wire \mem[7][7]_i_1__0_n_0 ;
  wire \mem[8][7]_i_1_n_0 ;
  wire \mem[9][7]_i_1__0_n_0 ;
  wire [7:0]mem__119;
  wire [1:0]mem_fsm;
  wire \mem_fsm[0]_i_1_n_0 ;
  wire \mem_fsm[1]_i_2_n_0 ;
  wire \mem_fsm_reg[1]_0 ;
  wire [7:0]mem_opa_out_data;
  wire mem_opa_valid_i;
  wire mem_opb_clock_BUFG;
  wire mem_opb_rw;
  wire mem_opb_valid_i__0;
  wire [1:0]mem_opb_valid_i_reg;
  wire [7:0]\mem_reg[0][7]_0 ;
  wire [7:0]\mem_reg[0]_16 ;
  wire [7:0]\mem_reg[10]_6 ;
  wire [7:0]\mem_reg[11]_5 ;
  wire [7:0]\mem_reg[12]_4 ;
  wire [7:0]\mem_reg[13]_3 ;
  wire [7:0]\mem_reg[14]_2 ;
  wire \mem_reg[15][0]_i_3_n_0 ;
  wire \mem_reg[15][0]_i_4_n_0 ;
  wire \mem_reg[15][1]_i_3_n_0 ;
  wire \mem_reg[15][1]_i_4_n_0 ;
  wire \mem_reg[15][2]_i_3_n_0 ;
  wire \mem_reg[15][2]_i_4_n_0 ;
  wire \mem_reg[15][3]_i_3_n_0 ;
  wire \mem_reg[15][3]_i_4_n_0 ;
  wire \mem_reg[15][4]_i_3_n_0 ;
  wire \mem_reg[15][4]_i_4_n_0 ;
  wire \mem_reg[15][5]_i_3_n_0 ;
  wire \mem_reg[15][5]_i_4_n_0 ;
  wire \mem_reg[15][6]_i_3_n_0 ;
  wire \mem_reg[15][6]_i_4_n_0 ;
  wire \mem_reg[15][7]_i_4_n_0 ;
  wire \mem_reg[15][7]_i_5_n_0 ;
  wire [7:0]\mem_reg[15]_1 ;
  wire [7:0]\mem_reg[1]_15 ;
  wire [7:0]\mem_reg[2]_14 ;
  wire [7:0]\mem_reg[3]_13 ;
  wire [7:0]\mem_reg[4]_12 ;
  wire [7:0]\mem_reg[5]_11 ;
  wire [7:0]\mem_reg[6]_10 ;
  wire [7:0]\mem_reg[7]_9 ;
  wire [7:0]\mem_reg[8]_8 ;
  wire [7:0]\mem_reg[9]_7 ;
  wire \out_data[0]_i_1_n_0 ;
  wire \out_data[1]_i_1_n_0 ;
  wire \out_data[2]_i_1_n_0 ;
  wire \out_data[3]_i_1_n_0 ;
  wire \out_data[4]_i_1_n_0 ;
  wire \out_data[5]_i_1_n_0 ;
  wire \out_data[6]_i_1_n_0 ;
  wire \out_data[7]_i_1_n_0 ;
  wire \out_data[7]_i_3_n_0 ;
  wire p_0_in;
  wire p_0_in_0;
  wire [7:0]p_0_out;
  wire syst_rready_i;

  LUT6 #(
    .INIT(64'hAAAAAAAA80000000)) 
    \FSM_onehot_fsm_unit_control_next_reg[1]_i_2 
       (.I0(mem_fsm[1]),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .I3(cnt[2]),
        .I4(cnt[3]),
        .I5(mem_fsm[0]),
        .O(\mem_fsm_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hB000B0B000000000)) 
    \FSM_onehot_fsm_unit_control_next_reg[2]_i_2 
       (.I0(mem_fsm[0]),
        .I1(p_0_in_0),
        .I2(mem_fsm[1]),
        .I3(Q[0]),
        .I4(p_0_in),
        .I5(Q[1]),
        .O(fsm_unit_control_next2));
  LUT3 #(
    .INIT(8'h06)) 
    \cnt[0]_i_1 
       (.I0(mem_fsm[1]),
        .I1(mem_fsm[0]),
        .I2(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    \cnt[1]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(mem_fsm[1]),
        .I3(mem_fsm[0]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT5 #(
    .INIT(32'h006A6A00)) 
    \cnt[2]_i_1 
       (.I0(cnt[2]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(mem_fsm[1]),
        .I4(mem_fsm[0]),
        .O(\cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00006AAA6AAA0000)) 
    \cnt[3]_i_1 
       (.I0(cnt[3]),
        .I1(cnt[2]),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(mem_fsm[1]),
        .I5(mem_fsm[0]),
        .O(\cnt[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(mem_opb_clock_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(mem_opb_clock_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(mem_opb_clock_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(mem_opb_clock_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(cnt[3]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \mem[0][7]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(mem_opb_rw),
        .O(\mem[0][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem[10][7]_i_1 
       (.I0(cnt[3]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[0]),
        .I4(mem_opb_rw),
        .O(\mem[10][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \mem[11][7]_i_1__0 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(mem_opb_rw),
        .O(\mem[11][7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem[12][7]_i_1__0 
       (.I0(cnt[2]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(mem_opb_rw),
        .O(\mem[12][7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \mem[13][7]_i_1__0 
       (.I0(cnt[3]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(mem_opb_rw),
        .O(\mem[13][7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \mem[14][7]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[3]),
        .I2(cnt[0]),
        .I3(cnt[2]),
        .I4(mem_opb_rw),
        .O(\mem[14][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FFFF00400000)) 
    \mem[15][0]_i_1 
       (.I0(mem_opb_rw),
        .I1(mem_opa_valid_i),
        .I2(\mem_reg[0][7]_0 [0]),
        .I3(mem_fsm[1]),
        .I4(mem_fsm[0]),
        .I5(mem__119[0]),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][0]_i_5 
       (.I0(\mem_reg[3]_13 [0]),
        .I1(\mem_reg[2]_14 [0]),
        .I2(cnt[1]),
        .I3(\mem_reg[1]_15 [0]),
        .I4(cnt[0]),
        .I5(\mem_reg[0]_16 [0]),
        .O(\mem[15][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][0]_i_6 
       (.I0(\mem_reg[7]_9 [0]),
        .I1(\mem_reg[6]_10 [0]),
        .I2(cnt[1]),
        .I3(\mem_reg[5]_11 [0]),
        .I4(cnt[0]),
        .I5(\mem_reg[4]_12 [0]),
        .O(\mem[15][0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][0]_i_7 
       (.I0(\mem_reg[11]_5 [0]),
        .I1(\mem_reg[10]_6 [0]),
        .I2(cnt[1]),
        .I3(\mem_reg[9]_7 [0]),
        .I4(cnt[0]),
        .I5(\mem_reg[8]_8 [0]),
        .O(\mem[15][0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][0]_i_8 
       (.I0(\mem_reg[15]_1 [0]),
        .I1(\mem_reg[14]_2 [0]),
        .I2(cnt[1]),
        .I3(\mem_reg[13]_3 [0]),
        .I4(cnt[0]),
        .I5(\mem_reg[12]_4 [0]),
        .O(\mem[15][0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FFFF00400000)) 
    \mem[15][1]_i_1 
       (.I0(mem_opb_rw),
        .I1(mem_opa_valid_i),
        .I2(\mem_reg[0][7]_0 [1]),
        .I3(mem_fsm[1]),
        .I4(mem_fsm[0]),
        .I5(mem__119[1]),
        .O(p_0_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][1]_i_5 
       (.I0(\mem_reg[3]_13 [1]),
        .I1(\mem_reg[2]_14 [1]),
        .I2(cnt[1]),
        .I3(\mem_reg[1]_15 [1]),
        .I4(cnt[0]),
        .I5(\mem_reg[0]_16 [1]),
        .O(\mem[15][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][1]_i_6 
       (.I0(\mem_reg[7]_9 [1]),
        .I1(\mem_reg[6]_10 [1]),
        .I2(cnt[1]),
        .I3(\mem_reg[5]_11 [1]),
        .I4(cnt[0]),
        .I5(\mem_reg[4]_12 [1]),
        .O(\mem[15][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][1]_i_7 
       (.I0(\mem_reg[11]_5 [1]),
        .I1(\mem_reg[10]_6 [1]),
        .I2(cnt[1]),
        .I3(\mem_reg[9]_7 [1]),
        .I4(cnt[0]),
        .I5(\mem_reg[8]_8 [1]),
        .O(\mem[15][1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][1]_i_8 
       (.I0(\mem_reg[15]_1 [1]),
        .I1(\mem_reg[14]_2 [1]),
        .I2(cnt[1]),
        .I3(\mem_reg[13]_3 [1]),
        .I4(cnt[0]),
        .I5(\mem_reg[12]_4 [1]),
        .O(\mem[15][1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FFFF00400000)) 
    \mem[15][2]_i_1 
       (.I0(mem_opb_rw),
        .I1(mem_opa_valid_i),
        .I2(\mem_reg[0][7]_0 [2]),
        .I3(mem_fsm[1]),
        .I4(mem_fsm[0]),
        .I5(mem__119[2]),
        .O(p_0_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][2]_i_5 
       (.I0(\mem_reg[3]_13 [2]),
        .I1(\mem_reg[2]_14 [2]),
        .I2(cnt[1]),
        .I3(\mem_reg[1]_15 [2]),
        .I4(cnt[0]),
        .I5(\mem_reg[0]_16 [2]),
        .O(\mem[15][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][2]_i_6 
       (.I0(\mem_reg[7]_9 [2]),
        .I1(\mem_reg[6]_10 [2]),
        .I2(cnt[1]),
        .I3(\mem_reg[5]_11 [2]),
        .I4(cnt[0]),
        .I5(\mem_reg[4]_12 [2]),
        .O(\mem[15][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][2]_i_7 
       (.I0(\mem_reg[11]_5 [2]),
        .I1(\mem_reg[10]_6 [2]),
        .I2(cnt[1]),
        .I3(\mem_reg[9]_7 [2]),
        .I4(cnt[0]),
        .I5(\mem_reg[8]_8 [2]),
        .O(\mem[15][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][2]_i_8 
       (.I0(\mem_reg[15]_1 [2]),
        .I1(\mem_reg[14]_2 [2]),
        .I2(cnt[1]),
        .I3(\mem_reg[13]_3 [2]),
        .I4(cnt[0]),
        .I5(\mem_reg[12]_4 [2]),
        .O(\mem[15][2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FFFF00400000)) 
    \mem[15][3]_i_1 
       (.I0(mem_opb_rw),
        .I1(mem_opa_valid_i),
        .I2(\mem_reg[0][7]_0 [3]),
        .I3(mem_fsm[1]),
        .I4(mem_fsm[0]),
        .I5(mem__119[3]),
        .O(p_0_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][3]_i_5 
       (.I0(\mem_reg[3]_13 [3]),
        .I1(\mem_reg[2]_14 [3]),
        .I2(cnt[1]),
        .I3(\mem_reg[1]_15 [3]),
        .I4(cnt[0]),
        .I5(\mem_reg[0]_16 [3]),
        .O(\mem[15][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][3]_i_6 
       (.I0(\mem_reg[7]_9 [3]),
        .I1(\mem_reg[6]_10 [3]),
        .I2(cnt[1]),
        .I3(\mem_reg[5]_11 [3]),
        .I4(cnt[0]),
        .I5(\mem_reg[4]_12 [3]),
        .O(\mem[15][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][3]_i_7 
       (.I0(\mem_reg[11]_5 [3]),
        .I1(\mem_reg[10]_6 [3]),
        .I2(cnt[1]),
        .I3(\mem_reg[9]_7 [3]),
        .I4(cnt[0]),
        .I5(\mem_reg[8]_8 [3]),
        .O(\mem[15][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][3]_i_8 
       (.I0(\mem_reg[15]_1 [3]),
        .I1(\mem_reg[14]_2 [3]),
        .I2(cnt[1]),
        .I3(\mem_reg[13]_3 [3]),
        .I4(cnt[0]),
        .I5(\mem_reg[12]_4 [3]),
        .O(\mem[15][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FFFF00400000)) 
    \mem[15][4]_i_1 
       (.I0(mem_opb_rw),
        .I1(mem_opa_valid_i),
        .I2(\mem_reg[0][7]_0 [4]),
        .I3(mem_fsm[1]),
        .I4(mem_fsm[0]),
        .I5(mem__119[4]),
        .O(p_0_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][4]_i_5 
       (.I0(\mem_reg[3]_13 [4]),
        .I1(\mem_reg[2]_14 [4]),
        .I2(cnt[1]),
        .I3(\mem_reg[1]_15 [4]),
        .I4(cnt[0]),
        .I5(\mem_reg[0]_16 [4]),
        .O(\mem[15][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][4]_i_6 
       (.I0(\mem_reg[7]_9 [4]),
        .I1(\mem_reg[6]_10 [4]),
        .I2(cnt[1]),
        .I3(\mem_reg[5]_11 [4]),
        .I4(cnt[0]),
        .I5(\mem_reg[4]_12 [4]),
        .O(\mem[15][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][4]_i_7 
       (.I0(\mem_reg[11]_5 [4]),
        .I1(\mem_reg[10]_6 [4]),
        .I2(cnt[1]),
        .I3(\mem_reg[9]_7 [4]),
        .I4(cnt[0]),
        .I5(\mem_reg[8]_8 [4]),
        .O(\mem[15][4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][4]_i_8 
       (.I0(\mem_reg[15]_1 [4]),
        .I1(\mem_reg[14]_2 [4]),
        .I2(cnt[1]),
        .I3(\mem_reg[13]_3 [4]),
        .I4(cnt[0]),
        .I5(\mem_reg[12]_4 [4]),
        .O(\mem[15][4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FFFF00400000)) 
    \mem[15][5]_i_1 
       (.I0(mem_opb_rw),
        .I1(mem_opa_valid_i),
        .I2(\mem_reg[0][7]_0 [5]),
        .I3(mem_fsm[1]),
        .I4(mem_fsm[0]),
        .I5(mem__119[5]),
        .O(p_0_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][5]_i_5 
       (.I0(\mem_reg[3]_13 [5]),
        .I1(\mem_reg[2]_14 [5]),
        .I2(cnt[1]),
        .I3(\mem_reg[1]_15 [5]),
        .I4(cnt[0]),
        .I5(\mem_reg[0]_16 [5]),
        .O(\mem[15][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][5]_i_6 
       (.I0(\mem_reg[7]_9 [5]),
        .I1(\mem_reg[6]_10 [5]),
        .I2(cnt[1]),
        .I3(\mem_reg[5]_11 [5]),
        .I4(cnt[0]),
        .I5(\mem_reg[4]_12 [5]),
        .O(\mem[15][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][5]_i_7 
       (.I0(\mem_reg[11]_5 [5]),
        .I1(\mem_reg[10]_6 [5]),
        .I2(cnt[1]),
        .I3(\mem_reg[9]_7 [5]),
        .I4(cnt[0]),
        .I5(\mem_reg[8]_8 [5]),
        .O(\mem[15][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][5]_i_8 
       (.I0(\mem_reg[15]_1 [5]),
        .I1(\mem_reg[14]_2 [5]),
        .I2(cnt[1]),
        .I3(\mem_reg[13]_3 [5]),
        .I4(cnt[0]),
        .I5(\mem_reg[12]_4 [5]),
        .O(\mem[15][5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FFFF00400000)) 
    \mem[15][6]_i_1 
       (.I0(mem_opb_rw),
        .I1(mem_opa_valid_i),
        .I2(\mem_reg[0][7]_0 [6]),
        .I3(mem_fsm[1]),
        .I4(mem_fsm[0]),
        .I5(mem__119[6]),
        .O(p_0_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][6]_i_5 
       (.I0(\mem_reg[3]_13 [6]),
        .I1(\mem_reg[2]_14 [6]),
        .I2(cnt[1]),
        .I3(\mem_reg[1]_15 [6]),
        .I4(cnt[0]),
        .I5(\mem_reg[0]_16 [6]),
        .O(\mem[15][6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][6]_i_6 
       (.I0(\mem_reg[7]_9 [6]),
        .I1(\mem_reg[6]_10 [6]),
        .I2(cnt[1]),
        .I3(\mem_reg[5]_11 [6]),
        .I4(cnt[0]),
        .I5(\mem_reg[4]_12 [6]),
        .O(\mem[15][6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][6]_i_7 
       (.I0(\mem_reg[11]_5 [6]),
        .I1(\mem_reg[10]_6 [6]),
        .I2(cnt[1]),
        .I3(\mem_reg[9]_7 [6]),
        .I4(cnt[0]),
        .I5(\mem_reg[8]_8 [6]),
        .O(\mem[15][6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][6]_i_8 
       (.I0(\mem_reg[15]_1 [6]),
        .I1(\mem_reg[14]_2 [6]),
        .I2(cnt[1]),
        .I3(\mem_reg[13]_3 [6]),
        .I4(cnt[0]),
        .I5(\mem_reg[12]_4 [6]),
        .O(\mem[15][6]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \mem[15][7]_i_1__0 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(mem_opb_rw),
        .O(\mem[15][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FFFF00400000)) 
    \mem[15][7]_i_2 
       (.I0(mem_opb_rw),
        .I1(mem_opa_valid_i),
        .I2(\mem_reg[0][7]_0 [7]),
        .I3(mem_fsm[1]),
        .I4(mem_fsm[0]),
        .I5(mem__119[7]),
        .O(p_0_out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][7]_i_6 
       (.I0(\mem_reg[3]_13 [7]),
        .I1(\mem_reg[2]_14 [7]),
        .I2(cnt[1]),
        .I3(\mem_reg[1]_15 [7]),
        .I4(cnt[0]),
        .I5(\mem_reg[0]_16 [7]),
        .O(\mem[15][7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][7]_i_7 
       (.I0(\mem_reg[7]_9 [7]),
        .I1(\mem_reg[6]_10 [7]),
        .I2(cnt[1]),
        .I3(\mem_reg[5]_11 [7]),
        .I4(cnt[0]),
        .I5(\mem_reg[4]_12 [7]),
        .O(\mem[15][7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][7]_i_8 
       (.I0(\mem_reg[11]_5 [7]),
        .I1(\mem_reg[10]_6 [7]),
        .I2(cnt[1]),
        .I3(\mem_reg[9]_7 [7]),
        .I4(cnt[0]),
        .I5(\mem_reg[8]_8 [7]),
        .O(\mem[15][7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][7]_i_9 
       (.I0(\mem_reg[15]_1 [7]),
        .I1(\mem_reg[14]_2 [7]),
        .I2(cnt[1]),
        .I3(\mem_reg[13]_3 [7]),
        .I4(cnt[0]),
        .I5(\mem_reg[12]_4 [7]),
        .O(\mem[15][7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \mem[1][7]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(mem_opb_rw),
        .O(\mem[1][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \mem[2][7]_i_1 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(mem_opb_rw),
        .O(\mem[2][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem[3][7]_i_1__0 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(mem_opb_rw),
        .O(\mem[3][7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \mem[4][7]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[2]),
        .I2(cnt[0]),
        .I3(cnt[3]),
        .I4(mem_opb_rw),
        .O(\mem[4][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem[5][7]_i_1 
       (.I0(cnt[2]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[3]),
        .I4(mem_opb_rw),
        .O(\mem[5][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem[6][7]_i_1 
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .I3(cnt[3]),
        .I4(mem_opb_rw),
        .O(\mem[6][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \mem[7][7]_i_1__0 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .I4(mem_opb_rw),
        .O(\mem[7][7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \mem[8][7]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[3]),
        .I2(cnt[2]),
        .I3(cnt[0]),
        .I4(mem_opb_rw),
        .O(\mem[8][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem[9][7]_i_1__0 
       (.I0(cnt[3]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[1]),
        .I4(mem_opb_rw),
        .O(\mem[9][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00FF0F22FFFF0F22)) 
    \mem_fsm[0]_i_1 
       (.I0(mem_opa_valid_i),
        .I1(mem_opb_rw),
        .I2(p_0_in_0),
        .I3(mem_fsm[1]),
        .I4(mem_fsm[0]),
        .I5(syst_rready_i),
        .O(\mem_fsm[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5500FFC055FFFFC0)) 
    \mem_fsm[1]_i_2 
       (.I0(syst_rready_i),
        .I1(mem_opa_valid_i),
        .I2(mem_opb_rw),
        .I3(mem_fsm[1]),
        .I4(mem_fsm[0]),
        .I5(p_0_in_0),
        .O(\mem_fsm[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \mem_fsm[1]_i_3 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .O(p_0_in_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_fsm_reg[0] 
       (.C(mem_opb_clock_BUFG),
        .CE(E),
        .D(\mem_fsm[0]_i_1_n_0 ),
        .Q(mem_fsm[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_fsm_reg[1] 
       (.C(mem_opb_clock_BUFG),
        .CE(E),
        .D(\mem_fsm[1]_i_2_n_0 ),
        .Q(mem_fsm[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEEAEAAAA)) 
    mem_opb_valid_i_reg_i_1
       (.I0(mem_opb_valid_i_reg[1]),
        .I1(mem_fsm[1]),
        .I2(p_0_in_0),
        .I3(mem_fsm[0]),
        .I4(mem_opb_valid_i_reg[0]),
        .O(mem_opb_valid_i__0));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[0][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[0]_16 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[0][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[0]_16 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[0][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[0]_16 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[0][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[0]_16 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[0][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[0]_16 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[0][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[0]_16 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[0][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[0]_16 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[0][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[0]_16 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[10][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[10]_6 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[10][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[10]_6 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[10][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[10]_6 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[10][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[10]_6 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[10][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[10]_6 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[10][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[10]_6 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[10][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[10]_6 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[10][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[10]_6 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[11][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[11]_5 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[11][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[11]_5 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[11][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[11]_5 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[11][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[11]_5 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[11][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[11]_5 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[11][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[11]_5 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[11][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[11]_5 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[11][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[11]_5 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[12][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[12]_4 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[12][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[12]_4 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[12][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[12]_4 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[12][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[12]_4 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[12][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[12]_4 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[12][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[12]_4 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[12][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[12]_4 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[12][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[12]_4 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[13][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[13]_3 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[13][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[13]_3 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[13][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[13]_3 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[13][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[13]_3 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[13][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[13]_3 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[13][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[13]_3 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[13][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[13]_3 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[13][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[13]_3 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[14][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[14]_2 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[14][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[14]_2 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[14][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[14]_2 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[14][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[14]_2 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[14][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[14]_2 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[14][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[14]_2 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[14][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[14]_2 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[14][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[14]_2 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[15][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[15]_1 [0]));
  MUXF8 \mem_reg[15][0]_i_2 
       (.I0(\mem_reg[15][0]_i_3_n_0 ),
        .I1(\mem_reg[15][0]_i_4_n_0 ),
        .O(mem__119[0]),
        .S(cnt[3]));
  MUXF7 \mem_reg[15][0]_i_3 
       (.I0(\mem[15][0]_i_5_n_0 ),
        .I1(\mem[15][0]_i_6_n_0 ),
        .O(\mem_reg[15][0]_i_3_n_0 ),
        .S(cnt[2]));
  MUXF7 \mem_reg[15][0]_i_4 
       (.I0(\mem[15][0]_i_7_n_0 ),
        .I1(\mem[15][0]_i_8_n_0 ),
        .O(\mem_reg[15][0]_i_4_n_0 ),
        .S(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[15][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[15]_1 [1]));
  MUXF8 \mem_reg[15][1]_i_2 
       (.I0(\mem_reg[15][1]_i_3_n_0 ),
        .I1(\mem_reg[15][1]_i_4_n_0 ),
        .O(mem__119[1]),
        .S(cnt[3]));
  MUXF7 \mem_reg[15][1]_i_3 
       (.I0(\mem[15][1]_i_5_n_0 ),
        .I1(\mem[15][1]_i_6_n_0 ),
        .O(\mem_reg[15][1]_i_3_n_0 ),
        .S(cnt[2]));
  MUXF7 \mem_reg[15][1]_i_4 
       (.I0(\mem[15][1]_i_7_n_0 ),
        .I1(\mem[15][1]_i_8_n_0 ),
        .O(\mem_reg[15][1]_i_4_n_0 ),
        .S(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[15][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[15]_1 [2]));
  MUXF8 \mem_reg[15][2]_i_2 
       (.I0(\mem_reg[15][2]_i_3_n_0 ),
        .I1(\mem_reg[15][2]_i_4_n_0 ),
        .O(mem__119[2]),
        .S(cnt[3]));
  MUXF7 \mem_reg[15][2]_i_3 
       (.I0(\mem[15][2]_i_5_n_0 ),
        .I1(\mem[15][2]_i_6_n_0 ),
        .O(\mem_reg[15][2]_i_3_n_0 ),
        .S(cnt[2]));
  MUXF7 \mem_reg[15][2]_i_4 
       (.I0(\mem[15][2]_i_7_n_0 ),
        .I1(\mem[15][2]_i_8_n_0 ),
        .O(\mem_reg[15][2]_i_4_n_0 ),
        .S(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[15][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[15]_1 [3]));
  MUXF8 \mem_reg[15][3]_i_2 
       (.I0(\mem_reg[15][3]_i_3_n_0 ),
        .I1(\mem_reg[15][3]_i_4_n_0 ),
        .O(mem__119[3]),
        .S(cnt[3]));
  MUXF7 \mem_reg[15][3]_i_3 
       (.I0(\mem[15][3]_i_5_n_0 ),
        .I1(\mem[15][3]_i_6_n_0 ),
        .O(\mem_reg[15][3]_i_3_n_0 ),
        .S(cnt[2]));
  MUXF7 \mem_reg[15][3]_i_4 
       (.I0(\mem[15][3]_i_7_n_0 ),
        .I1(\mem[15][3]_i_8_n_0 ),
        .O(\mem_reg[15][3]_i_4_n_0 ),
        .S(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[15][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[15]_1 [4]));
  MUXF8 \mem_reg[15][4]_i_2 
       (.I0(\mem_reg[15][4]_i_3_n_0 ),
        .I1(\mem_reg[15][4]_i_4_n_0 ),
        .O(mem__119[4]),
        .S(cnt[3]));
  MUXF7 \mem_reg[15][4]_i_3 
       (.I0(\mem[15][4]_i_5_n_0 ),
        .I1(\mem[15][4]_i_6_n_0 ),
        .O(\mem_reg[15][4]_i_3_n_0 ),
        .S(cnt[2]));
  MUXF7 \mem_reg[15][4]_i_4 
       (.I0(\mem[15][4]_i_7_n_0 ),
        .I1(\mem[15][4]_i_8_n_0 ),
        .O(\mem_reg[15][4]_i_4_n_0 ),
        .S(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[15][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[15]_1 [5]));
  MUXF8 \mem_reg[15][5]_i_2 
       (.I0(\mem_reg[15][5]_i_3_n_0 ),
        .I1(\mem_reg[15][5]_i_4_n_0 ),
        .O(mem__119[5]),
        .S(cnt[3]));
  MUXF7 \mem_reg[15][5]_i_3 
       (.I0(\mem[15][5]_i_5_n_0 ),
        .I1(\mem[15][5]_i_6_n_0 ),
        .O(\mem_reg[15][5]_i_3_n_0 ),
        .S(cnt[2]));
  MUXF7 \mem_reg[15][5]_i_4 
       (.I0(\mem[15][5]_i_7_n_0 ),
        .I1(\mem[15][5]_i_8_n_0 ),
        .O(\mem_reg[15][5]_i_4_n_0 ),
        .S(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[15][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[15]_1 [6]));
  MUXF8 \mem_reg[15][6]_i_2 
       (.I0(\mem_reg[15][6]_i_3_n_0 ),
        .I1(\mem_reg[15][6]_i_4_n_0 ),
        .O(mem__119[6]),
        .S(cnt[3]));
  MUXF7 \mem_reg[15][6]_i_3 
       (.I0(\mem[15][6]_i_5_n_0 ),
        .I1(\mem[15][6]_i_6_n_0 ),
        .O(\mem_reg[15][6]_i_3_n_0 ),
        .S(cnt[2]));
  MUXF7 \mem_reg[15][6]_i_4 
       (.I0(\mem[15][6]_i_7_n_0 ),
        .I1(\mem[15][6]_i_8_n_0 ),
        .O(\mem_reg[15][6]_i_4_n_0 ),
        .S(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[15][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[15]_1 [7]));
  MUXF8 \mem_reg[15][7]_i_3 
       (.I0(\mem_reg[15][7]_i_4_n_0 ),
        .I1(\mem_reg[15][7]_i_5_n_0 ),
        .O(mem__119[7]),
        .S(cnt[3]));
  MUXF7 \mem_reg[15][7]_i_4 
       (.I0(\mem[15][7]_i_6_n_0 ),
        .I1(\mem[15][7]_i_7_n_0 ),
        .O(\mem_reg[15][7]_i_4_n_0 ),
        .S(cnt[2]));
  MUXF7 \mem_reg[15][7]_i_5 
       (.I0(\mem[15][7]_i_8_n_0 ),
        .I1(\mem[15][7]_i_9_n_0 ),
        .O(\mem_reg[15][7]_i_5_n_0 ),
        .S(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[1][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[1]_15 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[1][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[1]_15 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[1][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[1]_15 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[1][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[1]_15 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[1][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[1]_15 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[1][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[1]_15 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[1][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[1]_15 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[1][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[1]_15 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[2][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[2]_14 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[2][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[2]_14 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[2][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[2]_14 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[2][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[2]_14 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[2][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[2]_14 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[2][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[2]_14 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[2][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[2]_14 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[2][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[2]_14 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[3][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[3]_13 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[3][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[3]_13 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[3][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[3]_13 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[3][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[3]_13 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[3][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[3]_13 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[3][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[3]_13 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[3][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[3]_13 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[3][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[3]_13 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[4][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[4]_12 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[4][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[4]_12 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[4][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[4]_12 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[4][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[4]_12 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[4][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[4]_12 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[4][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[4]_12 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[4][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[4]_12 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[4][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[4]_12 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[5][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[5]_11 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[5][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[5]_11 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[5][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[5]_11 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[5][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[5]_11 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[5][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[5]_11 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[5][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[5]_11 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[5][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[5]_11 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[5][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[5]_11 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[6][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[6]_10 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[6][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[6]_10 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[6][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[6]_10 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[6][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[6]_10 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[6][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[6]_10 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[6][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[6]_10 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[6][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[6]_10 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[6][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[6]_10 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[7][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[7]_9 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[7][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[7]_9 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[7][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[7]_9 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[7][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[7]_9 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[7][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[7]_9 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[7][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[7]_9 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[7][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[7]_9 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[7][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[7]_9 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[8][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[8]_8 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[8][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[8]_8 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[8][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[8]_8 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[8][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[8]_8 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[8][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[8]_8 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[8][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[8]_8 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[8][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[8]_8 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[8][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[8]_8 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[9][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[9]_7 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[9][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[9]_7 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[9][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[9]_7 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[9][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[9]_7 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[9][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[9]_7 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[9][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[9]_7 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[9][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[9]_7 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[9][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[9]_7 [7]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_data[0]_i_1 
       (.I0(mem__119[0]),
        .I1(mem_fsm[0]),
        .O(\out_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_data[1]_i_1 
       (.I0(mem__119[1]),
        .I1(mem_fsm[0]),
        .O(\out_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_data[2]_i_1 
       (.I0(mem__119[2]),
        .I1(mem_fsm[0]),
        .O(\out_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_data[3]_i_1 
       (.I0(mem__119[3]),
        .I1(mem_fsm[0]),
        .O(\out_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_data[4]_i_1 
       (.I0(mem__119[4]),
        .I1(mem_fsm[0]),
        .O(\out_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_data[5]_i_1 
       (.I0(mem__119[5]),
        .I1(mem_fsm[0]),
        .O(\out_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_data[6]_i_1 
       (.I0(mem__119[6]),
        .I1(mem_fsm[0]),
        .O(\out_data[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \out_data[7]_i_1 
       (.I0(btn_IBUF),
        .I1(mem_opb_rw),
        .I2(mem_fsm[1]),
        .O(\out_data[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \out_data[7]_i_2__0 
       (.I0(mem_opb_rw),
        .I1(btn_IBUF),
        .O(\btn[0] ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_data[7]_i_3 
       (.I0(mem__119[7]),
        .I1(mem_fsm[0]),
        .O(\out_data[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\btn[0] ),
        .D(\out_data[0]_i_1_n_0 ),
        .Q(mem_opa_out_data[0]),
        .R(\out_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\btn[0] ),
        .D(\out_data[1]_i_1_n_0 ),
        .Q(mem_opa_out_data[1]),
        .R(\out_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\btn[0] ),
        .D(\out_data[2]_i_1_n_0 ),
        .Q(mem_opa_out_data[2]),
        .R(\out_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\btn[0] ),
        .D(\out_data[3]_i_1_n_0 ),
        .Q(mem_opa_out_data[3]),
        .R(\out_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\btn[0] ),
        .D(\out_data[4]_i_1_n_0 ),
        .Q(mem_opa_out_data[4]),
        .R(\out_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\btn[0] ),
        .D(\out_data[5]_i_1_n_0 ),
        .Q(mem_opa_out_data[5]),
        .R(\out_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\btn[0] ),
        .D(\out_data[6]_i_1_n_0 ),
        .Q(mem_opa_out_data[6]),
        .R(\out_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\btn[0] ),
        .D(\out_data[7]_i_3_n_0 ),
        .Q(mem_opa_out_data[7]),
        .R(\out_data[7]_i_1_n_0 ));
endmodule

module mem2seriala
   (mem2serial_rvalid_o,
    Q,
    \i_counter_reg[2]_0 ,
    mem2serial_valid_i,
    btn_IBUF,
    CLK);
  output mem2serial_rvalid_o;
  output [2:0]Q;
  output [2:0]\i_counter_reg[2]_0 ;
  input mem2serial_valid_i;
  input [0:0]btn_IBUF;
  input CLK;

  wire CLK;
  wire [2:0]Q;
  wire [0:0]btn_IBUF;
  wire [2:0]\i_counter_reg[2]_0 ;
  wire mem2serial_rvalid_o;
  wire mem2serial_valid_i;
  wire [1:0]mem2seriala_fsm;
  wire \mem2seriala_fsm[0]_i_1_n_0 ;
  wire \mem2seriala_fsm[1]_i_1_n_0 ;
  wire [2:0]next_i_counter;
  wire \next_i_counter_reg[0]_i_1_n_0 ;
  wire \next_i_counter_reg[1]_i_1_n_0 ;
  wire \next_i_counter_reg[2]_i_1_n_0 ;
  wire \next_i_counter_reg[2]_i_3_n_0 ;
  wire [2:0]next_j_counter;
  wire \next_j_counter_reg[0]_i_1_n_0 ;
  wire \next_j_counter_reg[1]_i_1_n_0 ;
  wire \next_j_counter_reg[2]_i_1_n_0 ;
  wire [1:0]next_mem2seriala_fsm;
  wire \next_mem2seriala_fsm_reg[0]_i_1_n_0 ;
  wire \next_mem2seriala_fsm_reg[0]_i_2_n_0 ;
  wire \next_mem2seriala_fsm_reg[1]_i_1_n_0 ;
  wire rvalid_o_reg_i_1_n_0;

  FDCE #(
    .INIT(1'b0)) 
    \i_counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_i_counter[0]),
        .Q(\i_counter_reg[2]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_i_counter[1]),
        .Q(\i_counter_reg[2]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \i_counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_i_counter[2]),
        .Q(\i_counter_reg[2]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \j_counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_j_counter[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \j_counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_j_counter[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \j_counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_j_counter[2]),
        .Q(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem2seriala_fsm[0]_i_1 
       (.I0(next_mem2seriala_fsm[0]),
        .I1(btn_IBUF),
        .I2(mem2seriala_fsm[0]),
        .O(\mem2seriala_fsm[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem2seriala_fsm[1]_i_1 
       (.I0(next_mem2seriala_fsm[1]),
        .I1(btn_IBUF),
        .I2(mem2seriala_fsm[1]),
        .O(\mem2seriala_fsm[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem2seriala_fsm_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mem2seriala_fsm[0]_i_1_n_0 ),
        .Q(mem2seriala_fsm[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem2seriala_fsm_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\mem2seriala_fsm[1]_i_1_n_0 ),
        .Q(mem2seriala_fsm[1]),
        .R(1'b0));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \next_i_counter_reg[0] 
       (.CLR(1'b0),
        .D(\next_i_counter_reg[0]_i_1_n_0 ),
        .G(mem2seriala_fsm[1]),
        .GE(1'b1),
        .Q(next_i_counter[0]));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \next_i_counter_reg[0]_i_1 
       (.I0(mem2seriala_fsm[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\i_counter_reg[2]_0 [0]),
        .O(\next_i_counter_reg[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \next_i_counter_reg[1] 
       (.CLR(1'b0),
        .D(\next_i_counter_reg[1]_i_1_n_0 ),
        .G(mem2seriala_fsm[1]),
        .GE(1'b1),
        .Q(next_i_counter[1]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \next_i_counter_reg[1]_i_1 
       (.I0(mem2seriala_fsm[0]),
        .I1(\i_counter_reg[2]_0 [1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\i_counter_reg[2]_0 [0]),
        .O(\next_i_counter_reg[1]_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \next_i_counter_reg[2] 
       (.CLR(1'b0),
        .D(\next_i_counter_reg[2]_i_1_n_0 ),
        .G(mem2seriala_fsm[1]),
        .GE(1'b1),
        .Q(next_i_counter[2]));
  LUT5 #(
    .INIT(32'h28888888)) 
    \next_i_counter_reg[2]_i_1 
       (.I0(mem2seriala_fsm[0]),
        .I1(\i_counter_reg[2]_0 [2]),
        .I2(\i_counter_reg[2]_0 [1]),
        .I3(\i_counter_reg[2]_0 [0]),
        .I4(\next_i_counter_reg[2]_i_3_n_0 ),
        .O(\next_i_counter_reg[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \next_i_counter_reg[2]_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\next_i_counter_reg[2]_i_3_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \next_j_counter_reg[0] 
       (.CLR(1'b0),
        .D(\next_j_counter_reg[0]_i_1_n_0 ),
        .G(mem2seriala_fsm[1]),
        .GE(1'b1),
        .Q(next_j_counter[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \next_j_counter_reg[0]_i_1 
       (.I0(mem2seriala_fsm[0]),
        .I1(Q[0]),
        .O(\next_j_counter_reg[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \next_j_counter_reg[1] 
       (.CLR(1'b0),
        .D(\next_j_counter_reg[1]_i_1_n_0 ),
        .G(mem2seriala_fsm[1]),
        .GE(1'b1),
        .Q(next_j_counter[1]));
  LUT3 #(
    .INIT(8'h28)) 
    \next_j_counter_reg[1]_i_1 
       (.I0(mem2seriala_fsm[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\next_j_counter_reg[1]_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \next_j_counter_reg[2] 
       (.CLR(1'b0),
        .D(\next_j_counter_reg[2]_i_1_n_0 ),
        .G(mem2seriala_fsm[1]),
        .GE(1'b1),
        .Q(next_j_counter[2]));
  LUT4 #(
    .INIT(16'h2888)) 
    \next_j_counter_reg[2]_i_1 
       (.I0(mem2seriala_fsm[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\next_j_counter_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_mem2seriala_fsm_reg[0] 
       (.CLR(1'b0),
        .D(\next_mem2seriala_fsm_reg[0]_i_1_n_0 ),
        .G(rvalid_o_reg_i_1_n_0),
        .GE(1'b1),
        .Q(next_mem2seriala_fsm[0]));
  LUT4 #(
    .INIT(16'h002E)) 
    \next_mem2seriala_fsm_reg[0]_i_1 
       (.I0(mem2serial_valid_i),
        .I1(mem2seriala_fsm[0]),
        .I2(\next_mem2seriala_fsm_reg[0]_i_2_n_0 ),
        .I3(mem2seriala_fsm[1]),
        .O(\next_mem2seriala_fsm_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \next_mem2seriala_fsm_reg[0]_i_2 
       (.I0(\i_counter_reg[2]_0 [2]),
        .I1(\i_counter_reg[2]_0 [0]),
        .I2(\i_counter_reg[2]_0 [1]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\next_mem2seriala_fsm_reg[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_mem2seriala_fsm_reg[1] 
       (.CLR(1'b0),
        .D(\next_mem2seriala_fsm_reg[1]_i_1_n_0 ),
        .G(rvalid_o_reg_i_1_n_0),
        .GE(1'b1),
        .Q(next_mem2seriala_fsm[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \next_mem2seriala_fsm_reg[1]_i_1 
       (.I0(\i_counter_reg[2]_0 [2]),
        .I1(\i_counter_reg[2]_0 [0]),
        .I2(\i_counter_reg[2]_0 [1]),
        .I3(\next_i_counter_reg[2]_i_3_n_0 ),
        .I4(mem2seriala_fsm[0]),
        .I5(mem2seriala_fsm[1]),
        .O(\next_mem2seriala_fsm_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    rvalid_o_reg
       (.CLR(1'b0),
        .D(mem2seriala_fsm[1]),
        .G(rvalid_o_reg_i_1_n_0),
        .GE(1'b1),
        .Q(mem2serial_rvalid_o));
  LUT2 #(
    .INIT(4'h7)) 
    rvalid_o_reg_i_1
       (.I0(mem2seriala_fsm[0]),
        .I1(mem2seriala_fsm[1]),
        .O(rvalid_o_reg_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "mem" *) 
module mem_0
   (D,
    \mem_fsm_reg[1]_0 ,
    p_0_in,
    E,
    mem_opb_out_data,
    Q,
    \FSM_onehot_fsm_unit_control_reg[1] ,
    syst_rready_i,
    mem_opb_valid_i,
    mem_opb_rw,
    \mem_reg[0][7]_0 ,
    btn_IBUF,
    mem_opb_clock_BUFG,
    \out_data_reg[0]_0 );
  output [0:0]D;
  output [1:0]\mem_fsm_reg[1]_0 ;
  output p_0_in;
  output [0:0]E;
  output [7:0]mem_opb_out_data;
  input [1:0]Q;
  input \FSM_onehot_fsm_unit_control_reg[1] ;
  input syst_rready_i;
  input mem_opb_valid_i;
  input mem_opb_rw;
  input [7:0]\mem_reg[0][7]_0 ;
  input [0:0]btn_IBUF;
  input mem_opb_clock_BUFG;
  input \out_data_reg[0]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_fsm_unit_control_reg[1] ;
  wire [1:0]Q;
  wire [0:0]btn_IBUF;
  wire [3:0]cnt;
  wire \cnt[0]_i_1__0_n_0 ;
  wire \cnt[1]_i_1__0_n_0 ;
  wire \cnt[2]_i_1__0_n_0 ;
  wire \cnt[3]_i_1__0_n_0 ;
  wire \mem[0][7]_i_1__0_n_0 ;
  wire \mem[10][7]_i_1__0_n_0 ;
  wire \mem[11][7]_i_1_n_0 ;
  wire \mem[12][7]_i_1_n_0 ;
  wire \mem[13][7]_i_1_n_0 ;
  wire \mem[14][7]_i_1__0_n_0 ;
  wire \mem[15][0]_i_5__0_n_0 ;
  wire \mem[15][0]_i_6__0_n_0 ;
  wire \mem[15][0]_i_7__0_n_0 ;
  wire \mem[15][0]_i_8__0_n_0 ;
  wire \mem[15][1]_i_5__0_n_0 ;
  wire \mem[15][1]_i_6__0_n_0 ;
  wire \mem[15][1]_i_7__0_n_0 ;
  wire \mem[15][1]_i_8__0_n_0 ;
  wire \mem[15][2]_i_5__0_n_0 ;
  wire \mem[15][2]_i_6__0_n_0 ;
  wire \mem[15][2]_i_7__0_n_0 ;
  wire \mem[15][2]_i_8__0_n_0 ;
  wire \mem[15][3]_i_5__0_n_0 ;
  wire \mem[15][3]_i_6__0_n_0 ;
  wire \mem[15][3]_i_7__0_n_0 ;
  wire \mem[15][3]_i_8__0_n_0 ;
  wire \mem[15][4]_i_5__0_n_0 ;
  wire \mem[15][4]_i_6__0_n_0 ;
  wire \mem[15][4]_i_7__0_n_0 ;
  wire \mem[15][4]_i_8__0_n_0 ;
  wire \mem[15][5]_i_5__0_n_0 ;
  wire \mem[15][5]_i_6__0_n_0 ;
  wire \mem[15][5]_i_7__0_n_0 ;
  wire \mem[15][5]_i_8__0_n_0 ;
  wire \mem[15][6]_i_5__0_n_0 ;
  wire \mem[15][6]_i_6__0_n_0 ;
  wire \mem[15][6]_i_7__0_n_0 ;
  wire \mem[15][6]_i_8__0_n_0 ;
  wire \mem[15][7]_i_1_n_0 ;
  wire \mem[15][7]_i_6__0_n_0 ;
  wire \mem[15][7]_i_7__0_n_0 ;
  wire \mem[15][7]_i_8__0_n_0 ;
  wire \mem[15][7]_i_9__0_n_0 ;
  wire \mem[1][7]_i_1__0_n_0 ;
  wire \mem[2][7]_i_1__0_n_0 ;
  wire \mem[3][7]_i_1_n_0 ;
  wire \mem[4][7]_i_1__0_n_0 ;
  wire \mem[5][7]_i_1__0_n_0 ;
  wire \mem[6][7]_i_1__0_n_0 ;
  wire \mem[7][7]_i_1_n_0 ;
  wire \mem[8][7]_i_1__0_n_0 ;
  wire \mem[9][7]_i_1_n_0 ;
  wire [7:0]mem__119;
  wire \mem_fsm[0]_i_1__0_n_0 ;
  wire \mem_fsm[1]_i_1_n_0 ;
  wire [1:0]\mem_fsm_reg[1]_0 ;
  wire mem_opb_clock_BUFG;
  wire [7:0]mem_opb_out_data;
  wire mem_opb_rw;
  wire mem_opb_valid_i;
  wire [7:0]\mem_reg[0][7]_0 ;
  wire [7:0]\mem_reg[0]_15 ;
  wire [7:0]\mem_reg[10]_5 ;
  wire [7:0]\mem_reg[11]_4 ;
  wire [7:0]\mem_reg[12]_3 ;
  wire [7:0]\mem_reg[13]_2 ;
  wire [7:0]\mem_reg[14]_1 ;
  wire \mem_reg[15][0]_i_3__0_n_0 ;
  wire \mem_reg[15][0]_i_4__0_n_0 ;
  wire \mem_reg[15][1]_i_3__0_n_0 ;
  wire \mem_reg[15][1]_i_4__0_n_0 ;
  wire \mem_reg[15][2]_i_3__0_n_0 ;
  wire \mem_reg[15][2]_i_4__0_n_0 ;
  wire \mem_reg[15][3]_i_3__0_n_0 ;
  wire \mem_reg[15][3]_i_4__0_n_0 ;
  wire \mem_reg[15][4]_i_3__0_n_0 ;
  wire \mem_reg[15][4]_i_4__0_n_0 ;
  wire \mem_reg[15][5]_i_3__0_n_0 ;
  wire \mem_reg[15][5]_i_4__0_n_0 ;
  wire \mem_reg[15][6]_i_3__0_n_0 ;
  wire \mem_reg[15][6]_i_4__0_n_0 ;
  wire \mem_reg[15][7]_i_4__0_n_0 ;
  wire \mem_reg[15][7]_i_5__0_n_0 ;
  wire [7:0]\mem_reg[15]_0 ;
  wire [7:0]\mem_reg[1]_14 ;
  wire [7:0]\mem_reg[2]_13 ;
  wire [7:0]\mem_reg[3]_12 ;
  wire [7:0]\mem_reg[4]_11 ;
  wire [7:0]\mem_reg[5]_10 ;
  wire [7:0]\mem_reg[6]_9 ;
  wire [7:0]\mem_reg[7]_8 ;
  wire [7:0]\mem_reg[8]_7 ;
  wire [7:0]\mem_reg[9]_6 ;
  wire \out_data[0]_i_1__0_n_0 ;
  wire \out_data[1]_i_1__0_n_0 ;
  wire \out_data[2]_i_1__0_n_0 ;
  wire \out_data[3]_i_1__0_n_0 ;
  wire \out_data[4]_i_1__0_n_0 ;
  wire \out_data[5]_i_1__0_n_0 ;
  wire \out_data[6]_i_1__0_n_0 ;
  wire \out_data[7]_i_1__0_n_0 ;
  wire \out_data[7]_i_2_n_0 ;
  wire \out_data_reg[0]_0 ;
  wire p_0_in;
  wire [7:0]p_0_out;
  wire syst_rready_i;

  LUT6 #(
    .INIT(64'hBFBBFFFFAAAAAAAA)) 
    \FSM_onehot_fsm_unit_control_next_reg[1]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_fsm_unit_control_reg[1] ),
        .I2(\mem_fsm_reg[1]_0 [0]),
        .I3(p_0_in),
        .I4(\mem_fsm_reg[1]_0 [1]),
        .I5(Q[1]),
        .O(D));
  LUT3 #(
    .INIT(8'h06)) 
    \cnt[0]_i_1__0 
       (.I0(\mem_fsm_reg[1]_0 [1]),
        .I1(\mem_fsm_reg[1]_0 [0]),
        .I2(cnt[0]),
        .O(\cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    \cnt[1]_i_1__0 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(\mem_fsm_reg[1]_0 [1]),
        .I3(\mem_fsm_reg[1]_0 [0]),
        .O(\cnt[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT5 #(
    .INIT(32'h006A6A00)) 
    \cnt[2]_i_1__0 
       (.I0(cnt[2]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(\mem_fsm_reg[1]_0 [1]),
        .I4(\mem_fsm_reg[1]_0 [0]),
        .O(\cnt[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00006AAA6AAA0000)) 
    \cnt[3]_i_1__0 
       (.I0(cnt[3]),
        .I1(cnt[2]),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(\mem_fsm_reg[1]_0 [1]),
        .I5(\mem_fsm_reg[1]_0 [0]),
        .O(\cnt[3]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(mem_opb_clock_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[0]_i_1__0_n_0 ),
        .Q(cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(mem_opb_clock_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[1]_i_1__0_n_0 ),
        .Q(cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(mem_opb_clock_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[2]_i_1__0_n_0 ),
        .Q(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(mem_opb_clock_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[3]_i_1__0_n_0 ),
        .Q(cnt[3]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \mem[0][7]_i_1__0 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(mem_opb_rw),
        .O(\mem[0][7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem[10][7]_i_1__0 
       (.I0(cnt[3]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[0]),
        .I4(mem_opb_rw),
        .O(\mem[10][7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \mem[11][7]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(mem_opb_rw),
        .O(\mem[11][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem[12][7]_i_1 
       (.I0(cnt[2]),
        .I1(cnt[3]),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(mem_opb_rw),
        .O(\mem[12][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \mem[13][7]_i_1 
       (.I0(cnt[3]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[2]),
        .I4(mem_opb_rw),
        .O(\mem[13][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \mem[14][7]_i_1__0 
       (.I0(cnt[1]),
        .I1(cnt[3]),
        .I2(cnt[0]),
        .I3(cnt[2]),
        .I4(mem_opb_rw),
        .O(\mem[14][7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FFFF00400000)) 
    \mem[15][0]_i_1__0 
       (.I0(mem_opb_rw),
        .I1(mem_opb_valid_i),
        .I2(\mem_reg[0][7]_0 [0]),
        .I3(\mem_fsm_reg[1]_0 [1]),
        .I4(\mem_fsm_reg[1]_0 [0]),
        .I5(mem__119[0]),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][0]_i_5__0 
       (.I0(\mem_reg[3]_12 [0]),
        .I1(\mem_reg[2]_13 [0]),
        .I2(cnt[1]),
        .I3(\mem_reg[1]_14 [0]),
        .I4(cnt[0]),
        .I5(\mem_reg[0]_15 [0]),
        .O(\mem[15][0]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][0]_i_6__0 
       (.I0(\mem_reg[7]_8 [0]),
        .I1(\mem_reg[6]_9 [0]),
        .I2(cnt[1]),
        .I3(\mem_reg[5]_10 [0]),
        .I4(cnt[0]),
        .I5(\mem_reg[4]_11 [0]),
        .O(\mem[15][0]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][0]_i_7__0 
       (.I0(\mem_reg[11]_4 [0]),
        .I1(\mem_reg[10]_5 [0]),
        .I2(cnt[1]),
        .I3(\mem_reg[9]_6 [0]),
        .I4(cnt[0]),
        .I5(\mem_reg[8]_7 [0]),
        .O(\mem[15][0]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][0]_i_8__0 
       (.I0(\mem_reg[15]_0 [0]),
        .I1(\mem_reg[14]_1 [0]),
        .I2(cnt[1]),
        .I3(\mem_reg[13]_2 [0]),
        .I4(cnt[0]),
        .I5(\mem_reg[12]_3 [0]),
        .O(\mem[15][0]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FFFF00400000)) 
    \mem[15][1]_i_1__0 
       (.I0(mem_opb_rw),
        .I1(mem_opb_valid_i),
        .I2(\mem_reg[0][7]_0 [1]),
        .I3(\mem_fsm_reg[1]_0 [1]),
        .I4(\mem_fsm_reg[1]_0 [0]),
        .I5(mem__119[1]),
        .O(p_0_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][1]_i_5__0 
       (.I0(\mem_reg[3]_12 [1]),
        .I1(\mem_reg[2]_13 [1]),
        .I2(cnt[1]),
        .I3(\mem_reg[1]_14 [1]),
        .I4(cnt[0]),
        .I5(\mem_reg[0]_15 [1]),
        .O(\mem[15][1]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][1]_i_6__0 
       (.I0(\mem_reg[7]_8 [1]),
        .I1(\mem_reg[6]_9 [1]),
        .I2(cnt[1]),
        .I3(\mem_reg[5]_10 [1]),
        .I4(cnt[0]),
        .I5(\mem_reg[4]_11 [1]),
        .O(\mem[15][1]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][1]_i_7__0 
       (.I0(\mem_reg[11]_4 [1]),
        .I1(\mem_reg[10]_5 [1]),
        .I2(cnt[1]),
        .I3(\mem_reg[9]_6 [1]),
        .I4(cnt[0]),
        .I5(\mem_reg[8]_7 [1]),
        .O(\mem[15][1]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][1]_i_8__0 
       (.I0(\mem_reg[15]_0 [1]),
        .I1(\mem_reg[14]_1 [1]),
        .I2(cnt[1]),
        .I3(\mem_reg[13]_2 [1]),
        .I4(cnt[0]),
        .I5(\mem_reg[12]_3 [1]),
        .O(\mem[15][1]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FFFF00400000)) 
    \mem[15][2]_i_1__0 
       (.I0(mem_opb_rw),
        .I1(mem_opb_valid_i),
        .I2(\mem_reg[0][7]_0 [2]),
        .I3(\mem_fsm_reg[1]_0 [1]),
        .I4(\mem_fsm_reg[1]_0 [0]),
        .I5(mem__119[2]),
        .O(p_0_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][2]_i_5__0 
       (.I0(\mem_reg[3]_12 [2]),
        .I1(\mem_reg[2]_13 [2]),
        .I2(cnt[1]),
        .I3(\mem_reg[1]_14 [2]),
        .I4(cnt[0]),
        .I5(\mem_reg[0]_15 [2]),
        .O(\mem[15][2]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][2]_i_6__0 
       (.I0(\mem_reg[7]_8 [2]),
        .I1(\mem_reg[6]_9 [2]),
        .I2(cnt[1]),
        .I3(\mem_reg[5]_10 [2]),
        .I4(cnt[0]),
        .I5(\mem_reg[4]_11 [2]),
        .O(\mem[15][2]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][2]_i_7__0 
       (.I0(\mem_reg[11]_4 [2]),
        .I1(\mem_reg[10]_5 [2]),
        .I2(cnt[1]),
        .I3(\mem_reg[9]_6 [2]),
        .I4(cnt[0]),
        .I5(\mem_reg[8]_7 [2]),
        .O(\mem[15][2]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][2]_i_8__0 
       (.I0(\mem_reg[15]_0 [2]),
        .I1(\mem_reg[14]_1 [2]),
        .I2(cnt[1]),
        .I3(\mem_reg[13]_2 [2]),
        .I4(cnt[0]),
        .I5(\mem_reg[12]_3 [2]),
        .O(\mem[15][2]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FFFF00400000)) 
    \mem[15][3]_i_1__0 
       (.I0(mem_opb_rw),
        .I1(mem_opb_valid_i),
        .I2(\mem_reg[0][7]_0 [3]),
        .I3(\mem_fsm_reg[1]_0 [1]),
        .I4(\mem_fsm_reg[1]_0 [0]),
        .I5(mem__119[3]),
        .O(p_0_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][3]_i_5__0 
       (.I0(\mem_reg[3]_12 [3]),
        .I1(\mem_reg[2]_13 [3]),
        .I2(cnt[1]),
        .I3(\mem_reg[1]_14 [3]),
        .I4(cnt[0]),
        .I5(\mem_reg[0]_15 [3]),
        .O(\mem[15][3]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][3]_i_6__0 
       (.I0(\mem_reg[7]_8 [3]),
        .I1(\mem_reg[6]_9 [3]),
        .I2(cnt[1]),
        .I3(\mem_reg[5]_10 [3]),
        .I4(cnt[0]),
        .I5(\mem_reg[4]_11 [3]),
        .O(\mem[15][3]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][3]_i_7__0 
       (.I0(\mem_reg[11]_4 [3]),
        .I1(\mem_reg[10]_5 [3]),
        .I2(cnt[1]),
        .I3(\mem_reg[9]_6 [3]),
        .I4(cnt[0]),
        .I5(\mem_reg[8]_7 [3]),
        .O(\mem[15][3]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][3]_i_8__0 
       (.I0(\mem_reg[15]_0 [3]),
        .I1(\mem_reg[14]_1 [3]),
        .I2(cnt[1]),
        .I3(\mem_reg[13]_2 [3]),
        .I4(cnt[0]),
        .I5(\mem_reg[12]_3 [3]),
        .O(\mem[15][3]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FFFF00400000)) 
    \mem[15][4]_i_1__0 
       (.I0(mem_opb_rw),
        .I1(mem_opb_valid_i),
        .I2(\mem_reg[0][7]_0 [4]),
        .I3(\mem_fsm_reg[1]_0 [1]),
        .I4(\mem_fsm_reg[1]_0 [0]),
        .I5(mem__119[4]),
        .O(p_0_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][4]_i_5__0 
       (.I0(\mem_reg[3]_12 [4]),
        .I1(\mem_reg[2]_13 [4]),
        .I2(cnt[1]),
        .I3(\mem_reg[1]_14 [4]),
        .I4(cnt[0]),
        .I5(\mem_reg[0]_15 [4]),
        .O(\mem[15][4]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][4]_i_6__0 
       (.I0(\mem_reg[7]_8 [4]),
        .I1(\mem_reg[6]_9 [4]),
        .I2(cnt[1]),
        .I3(\mem_reg[5]_10 [4]),
        .I4(cnt[0]),
        .I5(\mem_reg[4]_11 [4]),
        .O(\mem[15][4]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][4]_i_7__0 
       (.I0(\mem_reg[11]_4 [4]),
        .I1(\mem_reg[10]_5 [4]),
        .I2(cnt[1]),
        .I3(\mem_reg[9]_6 [4]),
        .I4(cnt[0]),
        .I5(\mem_reg[8]_7 [4]),
        .O(\mem[15][4]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][4]_i_8__0 
       (.I0(\mem_reg[15]_0 [4]),
        .I1(\mem_reg[14]_1 [4]),
        .I2(cnt[1]),
        .I3(\mem_reg[13]_2 [4]),
        .I4(cnt[0]),
        .I5(\mem_reg[12]_3 [4]),
        .O(\mem[15][4]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FFFF00400000)) 
    \mem[15][5]_i_1__0 
       (.I0(mem_opb_rw),
        .I1(mem_opb_valid_i),
        .I2(\mem_reg[0][7]_0 [5]),
        .I3(\mem_fsm_reg[1]_0 [1]),
        .I4(\mem_fsm_reg[1]_0 [0]),
        .I5(mem__119[5]),
        .O(p_0_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][5]_i_5__0 
       (.I0(\mem_reg[3]_12 [5]),
        .I1(\mem_reg[2]_13 [5]),
        .I2(cnt[1]),
        .I3(\mem_reg[1]_14 [5]),
        .I4(cnt[0]),
        .I5(\mem_reg[0]_15 [5]),
        .O(\mem[15][5]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][5]_i_6__0 
       (.I0(\mem_reg[7]_8 [5]),
        .I1(\mem_reg[6]_9 [5]),
        .I2(cnt[1]),
        .I3(\mem_reg[5]_10 [5]),
        .I4(cnt[0]),
        .I5(\mem_reg[4]_11 [5]),
        .O(\mem[15][5]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][5]_i_7__0 
       (.I0(\mem_reg[11]_4 [5]),
        .I1(\mem_reg[10]_5 [5]),
        .I2(cnt[1]),
        .I3(\mem_reg[9]_6 [5]),
        .I4(cnt[0]),
        .I5(\mem_reg[8]_7 [5]),
        .O(\mem[15][5]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][5]_i_8__0 
       (.I0(\mem_reg[15]_0 [5]),
        .I1(\mem_reg[14]_1 [5]),
        .I2(cnt[1]),
        .I3(\mem_reg[13]_2 [5]),
        .I4(cnt[0]),
        .I5(\mem_reg[12]_3 [5]),
        .O(\mem[15][5]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FFFF00400000)) 
    \mem[15][6]_i_1__0 
       (.I0(mem_opb_rw),
        .I1(mem_opb_valid_i),
        .I2(\mem_reg[0][7]_0 [6]),
        .I3(\mem_fsm_reg[1]_0 [1]),
        .I4(\mem_fsm_reg[1]_0 [0]),
        .I5(mem__119[6]),
        .O(p_0_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][6]_i_5__0 
       (.I0(\mem_reg[3]_12 [6]),
        .I1(\mem_reg[2]_13 [6]),
        .I2(cnt[1]),
        .I3(\mem_reg[1]_14 [6]),
        .I4(cnt[0]),
        .I5(\mem_reg[0]_15 [6]),
        .O(\mem[15][6]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][6]_i_6__0 
       (.I0(\mem_reg[7]_8 [6]),
        .I1(\mem_reg[6]_9 [6]),
        .I2(cnt[1]),
        .I3(\mem_reg[5]_10 [6]),
        .I4(cnt[0]),
        .I5(\mem_reg[4]_11 [6]),
        .O(\mem[15][6]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][6]_i_7__0 
       (.I0(\mem_reg[11]_4 [6]),
        .I1(\mem_reg[10]_5 [6]),
        .I2(cnt[1]),
        .I3(\mem_reg[9]_6 [6]),
        .I4(cnt[0]),
        .I5(\mem_reg[8]_7 [6]),
        .O(\mem[15][6]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][6]_i_8__0 
       (.I0(\mem_reg[15]_0 [6]),
        .I1(\mem_reg[14]_1 [6]),
        .I2(cnt[1]),
        .I3(\mem_reg[13]_2 [6]),
        .I4(cnt[0]),
        .I5(\mem_reg[12]_3 [6]),
        .O(\mem[15][6]_i_8__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \mem[15][7]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(mem_opb_rw),
        .O(\mem[15][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FFFF00400000)) 
    \mem[15][7]_i_2__0 
       (.I0(mem_opb_rw),
        .I1(mem_opb_valid_i),
        .I2(\mem_reg[0][7]_0 [7]),
        .I3(\mem_fsm_reg[1]_0 [1]),
        .I4(\mem_fsm_reg[1]_0 [0]),
        .I5(mem__119[7]),
        .O(p_0_out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][7]_i_6__0 
       (.I0(\mem_reg[3]_12 [7]),
        .I1(\mem_reg[2]_13 [7]),
        .I2(cnt[1]),
        .I3(\mem_reg[1]_14 [7]),
        .I4(cnt[0]),
        .I5(\mem_reg[0]_15 [7]),
        .O(\mem[15][7]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][7]_i_7__0 
       (.I0(\mem_reg[7]_8 [7]),
        .I1(\mem_reg[6]_9 [7]),
        .I2(cnt[1]),
        .I3(\mem_reg[5]_10 [7]),
        .I4(cnt[0]),
        .I5(\mem_reg[4]_11 [7]),
        .O(\mem[15][7]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][7]_i_8__0 
       (.I0(\mem_reg[11]_4 [7]),
        .I1(\mem_reg[10]_5 [7]),
        .I2(cnt[1]),
        .I3(\mem_reg[9]_6 [7]),
        .I4(cnt[0]),
        .I5(\mem_reg[8]_7 [7]),
        .O(\mem[15][7]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem[15][7]_i_9__0 
       (.I0(\mem_reg[15]_0 [7]),
        .I1(\mem_reg[14]_1 [7]),
        .I2(cnt[1]),
        .I3(\mem_reg[13]_2 [7]),
        .I4(cnt[0]),
        .I5(\mem_reg[12]_3 [7]),
        .O(\mem[15][7]_i_9__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \mem[1][7]_i_1__0 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(mem_opb_rw),
        .O(\mem[1][7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \mem[2][7]_i_1__0 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(mem_opb_rw),
        .O(\mem[2][7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem[3][7]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .I4(mem_opb_rw),
        .O(\mem[3][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \mem[4][7]_i_1__0 
       (.I0(cnt[1]),
        .I1(cnt[2]),
        .I2(cnt[0]),
        .I3(cnt[3]),
        .I4(mem_opb_rw),
        .O(\mem[4][7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem[5][7]_i_1__0 
       (.I0(cnt[2]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[3]),
        .I4(mem_opb_rw),
        .O(\mem[5][7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem[6][7]_i_1__0 
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .I3(cnt[3]),
        .I4(mem_opb_rw),
        .O(\mem[6][7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \mem[7][7]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .I4(mem_opb_rw),
        .O(\mem[7][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \mem[8][7]_i_1__0 
       (.I0(cnt[1]),
        .I1(cnt[3]),
        .I2(cnt[2]),
        .I3(cnt[0]),
        .I4(mem_opb_rw),
        .O(\mem[8][7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \mem[9][7]_i_1 
       (.I0(cnt[3]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[1]),
        .I4(mem_opb_rw),
        .O(\mem[9][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF0F22FFFF0F22)) 
    \mem_fsm[0]_i_1__0 
       (.I0(mem_opb_valid_i),
        .I1(mem_opb_rw),
        .I2(p_0_in),
        .I3(\mem_fsm_reg[1]_0 [1]),
        .I4(\mem_fsm_reg[1]_0 [0]),
        .I5(syst_rready_i),
        .O(\mem_fsm[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5500FFC055FFFFC0)) 
    \mem_fsm[1]_i_1 
       (.I0(syst_rready_i),
        .I1(mem_opb_valid_i),
        .I2(mem_opb_rw),
        .I3(\mem_fsm_reg[1]_0 [1]),
        .I4(\mem_fsm_reg[1]_0 [0]),
        .I5(p_0_in),
        .O(\mem_fsm[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem_fsm[1]_i_1__0 
       (.I0(btn_IBUF),
        .O(E));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \mem_fsm[1]_i_2__0 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \mem_fsm_reg[0] 
       (.C(mem_opb_clock_BUFG),
        .CE(E),
        .D(\mem_fsm[0]_i_1__0_n_0 ),
        .Q(\mem_fsm_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_fsm_reg[1] 
       (.C(mem_opb_clock_BUFG),
        .CE(E),
        .D(\mem_fsm[1]_i_1_n_0 ),
        .Q(\mem_fsm_reg[1]_0 [1]),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[0][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[0]_15 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[0][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[0]_15 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[0][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[0]_15 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[0][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[0]_15 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[0][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[0]_15 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[0][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[0]_15 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[0][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[0]_15 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[0][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[0][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[0]_15 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[10][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[10]_5 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[10][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[10]_5 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[10][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[10]_5 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[10][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[10]_5 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[10][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[10]_5 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[10][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[10]_5 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[10][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[10]_5 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[10][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[10][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[10]_5 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[11][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[11]_4 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[11][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[11]_4 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[11][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[11]_4 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[11][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[11]_4 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[11][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[11]_4 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[11][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[11]_4 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[11][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[11]_4 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[11][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[11][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[11]_4 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[12][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[12]_3 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[12][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[12]_3 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[12][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[12]_3 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[12][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[12]_3 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[12][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[12]_3 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[12][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[12]_3 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[12][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[12]_3 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[12][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[12][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[12]_3 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[13][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[13]_2 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[13][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[13]_2 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[13][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[13]_2 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[13][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[13]_2 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[13][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[13]_2 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[13][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[13]_2 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[13][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[13]_2 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[13][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[13][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[13]_2 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[14][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[14]_1 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[14][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[14]_1 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[14][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[14]_1 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[14][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[14]_1 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[14][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[14]_1 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[14][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[14]_1 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[14][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[14]_1 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[14][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[14][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[14]_1 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[15][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[15]_0 [0]));
  MUXF8 \mem_reg[15][0]_i_2__0 
       (.I0(\mem_reg[15][0]_i_3__0_n_0 ),
        .I1(\mem_reg[15][0]_i_4__0_n_0 ),
        .O(mem__119[0]),
        .S(cnt[3]));
  MUXF7 \mem_reg[15][0]_i_3__0 
       (.I0(\mem[15][0]_i_5__0_n_0 ),
        .I1(\mem[15][0]_i_6__0_n_0 ),
        .O(\mem_reg[15][0]_i_3__0_n_0 ),
        .S(cnt[2]));
  MUXF7 \mem_reg[15][0]_i_4__0 
       (.I0(\mem[15][0]_i_7__0_n_0 ),
        .I1(\mem[15][0]_i_8__0_n_0 ),
        .O(\mem_reg[15][0]_i_4__0_n_0 ),
        .S(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[15][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[15]_0 [1]));
  MUXF8 \mem_reg[15][1]_i_2__0 
       (.I0(\mem_reg[15][1]_i_3__0_n_0 ),
        .I1(\mem_reg[15][1]_i_4__0_n_0 ),
        .O(mem__119[1]),
        .S(cnt[3]));
  MUXF7 \mem_reg[15][1]_i_3__0 
       (.I0(\mem[15][1]_i_5__0_n_0 ),
        .I1(\mem[15][1]_i_6__0_n_0 ),
        .O(\mem_reg[15][1]_i_3__0_n_0 ),
        .S(cnt[2]));
  MUXF7 \mem_reg[15][1]_i_4__0 
       (.I0(\mem[15][1]_i_7__0_n_0 ),
        .I1(\mem[15][1]_i_8__0_n_0 ),
        .O(\mem_reg[15][1]_i_4__0_n_0 ),
        .S(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[15][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[15]_0 [2]));
  MUXF8 \mem_reg[15][2]_i_2__0 
       (.I0(\mem_reg[15][2]_i_3__0_n_0 ),
        .I1(\mem_reg[15][2]_i_4__0_n_0 ),
        .O(mem__119[2]),
        .S(cnt[3]));
  MUXF7 \mem_reg[15][2]_i_3__0 
       (.I0(\mem[15][2]_i_5__0_n_0 ),
        .I1(\mem[15][2]_i_6__0_n_0 ),
        .O(\mem_reg[15][2]_i_3__0_n_0 ),
        .S(cnt[2]));
  MUXF7 \mem_reg[15][2]_i_4__0 
       (.I0(\mem[15][2]_i_7__0_n_0 ),
        .I1(\mem[15][2]_i_8__0_n_0 ),
        .O(\mem_reg[15][2]_i_4__0_n_0 ),
        .S(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[15][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[15]_0 [3]));
  MUXF8 \mem_reg[15][3]_i_2__0 
       (.I0(\mem_reg[15][3]_i_3__0_n_0 ),
        .I1(\mem_reg[15][3]_i_4__0_n_0 ),
        .O(mem__119[3]),
        .S(cnt[3]));
  MUXF7 \mem_reg[15][3]_i_3__0 
       (.I0(\mem[15][3]_i_5__0_n_0 ),
        .I1(\mem[15][3]_i_6__0_n_0 ),
        .O(\mem_reg[15][3]_i_3__0_n_0 ),
        .S(cnt[2]));
  MUXF7 \mem_reg[15][3]_i_4__0 
       (.I0(\mem[15][3]_i_7__0_n_0 ),
        .I1(\mem[15][3]_i_8__0_n_0 ),
        .O(\mem_reg[15][3]_i_4__0_n_0 ),
        .S(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[15][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[15]_0 [4]));
  MUXF8 \mem_reg[15][4]_i_2__0 
       (.I0(\mem_reg[15][4]_i_3__0_n_0 ),
        .I1(\mem_reg[15][4]_i_4__0_n_0 ),
        .O(mem__119[4]),
        .S(cnt[3]));
  MUXF7 \mem_reg[15][4]_i_3__0 
       (.I0(\mem[15][4]_i_5__0_n_0 ),
        .I1(\mem[15][4]_i_6__0_n_0 ),
        .O(\mem_reg[15][4]_i_3__0_n_0 ),
        .S(cnt[2]));
  MUXF7 \mem_reg[15][4]_i_4__0 
       (.I0(\mem[15][4]_i_7__0_n_0 ),
        .I1(\mem[15][4]_i_8__0_n_0 ),
        .O(\mem_reg[15][4]_i_4__0_n_0 ),
        .S(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[15][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[15]_0 [5]));
  MUXF8 \mem_reg[15][5]_i_2__0 
       (.I0(\mem_reg[15][5]_i_3__0_n_0 ),
        .I1(\mem_reg[15][5]_i_4__0_n_0 ),
        .O(mem__119[5]),
        .S(cnt[3]));
  MUXF7 \mem_reg[15][5]_i_3__0 
       (.I0(\mem[15][5]_i_5__0_n_0 ),
        .I1(\mem[15][5]_i_6__0_n_0 ),
        .O(\mem_reg[15][5]_i_3__0_n_0 ),
        .S(cnt[2]));
  MUXF7 \mem_reg[15][5]_i_4__0 
       (.I0(\mem[15][5]_i_7__0_n_0 ),
        .I1(\mem[15][5]_i_8__0_n_0 ),
        .O(\mem_reg[15][5]_i_4__0_n_0 ),
        .S(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[15][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[15]_0 [6]));
  MUXF8 \mem_reg[15][6]_i_2__0 
       (.I0(\mem_reg[15][6]_i_3__0_n_0 ),
        .I1(\mem_reg[15][6]_i_4__0_n_0 ),
        .O(mem__119[6]),
        .S(cnt[3]));
  MUXF7 \mem_reg[15][6]_i_3__0 
       (.I0(\mem[15][6]_i_5__0_n_0 ),
        .I1(\mem[15][6]_i_6__0_n_0 ),
        .O(\mem_reg[15][6]_i_3__0_n_0 ),
        .S(cnt[2]));
  MUXF7 \mem_reg[15][6]_i_4__0 
       (.I0(\mem[15][6]_i_7__0_n_0 ),
        .I1(\mem[15][6]_i_8__0_n_0 ),
        .O(\mem_reg[15][6]_i_4__0_n_0 ),
        .S(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[15][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[15][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[15]_0 [7]));
  MUXF8 \mem_reg[15][7]_i_3__0 
       (.I0(\mem_reg[15][7]_i_4__0_n_0 ),
        .I1(\mem_reg[15][7]_i_5__0_n_0 ),
        .O(mem__119[7]),
        .S(cnt[3]));
  MUXF7 \mem_reg[15][7]_i_4__0 
       (.I0(\mem[15][7]_i_6__0_n_0 ),
        .I1(\mem[15][7]_i_7__0_n_0 ),
        .O(\mem_reg[15][7]_i_4__0_n_0 ),
        .S(cnt[2]));
  MUXF7 \mem_reg[15][7]_i_5__0 
       (.I0(\mem[15][7]_i_8__0_n_0 ),
        .I1(\mem[15][7]_i_9__0_n_0 ),
        .O(\mem_reg[15][7]_i_5__0_n_0 ),
        .S(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[1][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[1]_14 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[1][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[1]_14 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[1][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[1]_14 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[1][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[1]_14 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[1][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[1]_14 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[1][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[1]_14 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[1][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[1]_14 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[1][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[1][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[1]_14 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[2][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[2]_13 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[2][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[2]_13 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[2][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[2]_13 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[2][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[2]_13 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[2][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[2]_13 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[2][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[2]_13 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[2][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[2]_13 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[2][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[2][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[2]_13 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[3][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[3]_12 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[3][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[3]_12 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[3][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[3]_12 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[3][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[3]_12 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[3][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[3]_12 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[3][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[3]_12 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[3][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[3]_12 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[3][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[3][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[3]_12 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[4][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[4]_11 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[4][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[4]_11 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[4][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[4]_11 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[4][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[4]_11 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[4][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[4]_11 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[4][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[4]_11 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[4][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[4]_11 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[4][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[4][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[4]_11 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[5][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[5]_10 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[5][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[5]_10 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[5][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[5]_10 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[5][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[5]_10 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[5][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[5]_10 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[5][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[5]_10 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[5][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[5]_10 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[5][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[5][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[5]_10 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[6][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[6]_9 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[6][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[6]_9 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[6][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[6]_9 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[6][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[6]_9 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[6][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[6]_9 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[6][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[6]_9 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[6][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[6]_9 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[6][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[6][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[6]_9 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[7]_8 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[7]_8 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[7]_8 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[7]_8 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[7]_8 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[7]_8 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[7]_8 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[7][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[7]_8 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[8][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[8]_7 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[8][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[8]_7 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[8][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[8]_7 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[8][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[8]_7 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[8][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[8]_7 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[8][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[8]_7 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[8][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[8]_7 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[8][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[8][7]_i_1__0_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[8]_7 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[9][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[0]),
        .Q(\mem_reg[9]_6 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[9][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[1]),
        .Q(\mem_reg[9]_6 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[9][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[2]),
        .Q(\mem_reg[9]_6 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[9][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[3]),
        .Q(\mem_reg[9]_6 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[9][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[4]),
        .Q(\mem_reg[9]_6 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[9][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[5]),
        .Q(\mem_reg[9]_6 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[9][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[6]),
        .Q(\mem_reg[9]_6 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \mem_reg[9][7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\mem[9][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(p_0_out[7]),
        .Q(\mem_reg[9]_6 [7]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_data[0]_i_1__0 
       (.I0(mem__119[0]),
        .I1(\mem_fsm_reg[1]_0 [0]),
        .O(\out_data[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_data[1]_i_1__0 
       (.I0(mem__119[1]),
        .I1(\mem_fsm_reg[1]_0 [0]),
        .O(\out_data[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_data[2]_i_1__0 
       (.I0(mem__119[2]),
        .I1(\mem_fsm_reg[1]_0 [0]),
        .O(\out_data[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_data[3]_i_1__0 
       (.I0(mem__119[3]),
        .I1(\mem_fsm_reg[1]_0 [0]),
        .O(\out_data[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_data[4]_i_1__0 
       (.I0(mem__119[4]),
        .I1(\mem_fsm_reg[1]_0 [0]),
        .O(\out_data[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_data[5]_i_1__0 
       (.I0(mem__119[5]),
        .I1(\mem_fsm_reg[1]_0 [0]),
        .O(\out_data[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_data[6]_i_1__0 
       (.I0(mem__119[6]),
        .I1(\mem_fsm_reg[1]_0 [0]),
        .O(\out_data[6]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \out_data[7]_i_1__0 
       (.I0(btn_IBUF),
        .I1(mem_opb_rw),
        .I2(\mem_fsm_reg[1]_0 [1]),
        .O(\out_data[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_data[7]_i_2 
       (.I0(mem__119[7]),
        .I1(\mem_fsm_reg[1]_0 [0]),
        .O(\out_data[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[0] 
       (.C(mem_opb_clock_BUFG),
        .CE(\out_data_reg[0]_0 ),
        .D(\out_data[0]_i_1__0_n_0 ),
        .Q(mem_opb_out_data[0]),
        .R(\out_data[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[1] 
       (.C(mem_opb_clock_BUFG),
        .CE(\out_data_reg[0]_0 ),
        .D(\out_data[1]_i_1__0_n_0 ),
        .Q(mem_opb_out_data[1]),
        .R(\out_data[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[2] 
       (.C(mem_opb_clock_BUFG),
        .CE(\out_data_reg[0]_0 ),
        .D(\out_data[2]_i_1__0_n_0 ),
        .Q(mem_opb_out_data[2]),
        .R(\out_data[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[3] 
       (.C(mem_opb_clock_BUFG),
        .CE(\out_data_reg[0]_0 ),
        .D(\out_data[3]_i_1__0_n_0 ),
        .Q(mem_opb_out_data[3]),
        .R(\out_data[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[4] 
       (.C(mem_opb_clock_BUFG),
        .CE(\out_data_reg[0]_0 ),
        .D(\out_data[4]_i_1__0_n_0 ),
        .Q(mem_opb_out_data[4]),
        .R(\out_data[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[5] 
       (.C(mem_opb_clock_BUFG),
        .CE(\out_data_reg[0]_0 ),
        .D(\out_data[5]_i_1__0_n_0 ),
        .Q(mem_opb_out_data[5]),
        .R(\out_data[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[6] 
       (.C(mem_opb_clock_BUFG),
        .CE(\out_data_reg[0]_0 ),
        .D(\out_data[6]_i_1__0_n_0 ),
        .Q(mem_opb_out_data[6]),
        .R(\out_data[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_reg[7] 
       (.C(mem_opb_clock_BUFG),
        .CE(\out_data_reg[0]_0 ),
        .D(\out_data[7]_i_2_n_0 ),
        .Q(mem_opb_out_data[7]),
        .R(\out_data[7]_i_1__0_n_0 ));
endmodule

module ref_clock
   (out_clock_ref_reg_0,
    clock_IBUF_BUFG,
    btn_IBUF);
  output out_clock_ref_reg_0;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;

  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire counter_base_n_0;
  wire out_clock_ref_i_1_n_0;
  wire out_clock_ref_reg_0;

  counter counter_base
       (.btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .counting_done_reg_0(counter_base_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out_clock_ref_i_1
       (.I0(out_clock_ref_reg_0),
        .O(out_clock_ref_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    out_clock_ref_reg
       (.C(counter_base_n_0),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(out_clock_ref_i_1_n_0),
        .Q(out_clock_ref_reg_0));
endmodule

(* ORIG_REF_NAME = "ref_clock" *) 
module ref_clock_1
   (out_clock_ref_reg_0,
    clock_IBUF_BUFG,
    btn_IBUF);
  output out_clock_ref_reg_0;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;

  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire done;
  wire out_clock_ref_reg_0;
  wire p_0_in;

  counter_2 counter_base
       (.btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .done(done));
  LUT1 #(
    .INIT(2'h1)) 
    out_clock_ref_i_1__0
       (.I0(out_clock_ref_reg_0),
        .O(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    out_clock_ref_reg
       (.C(done),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(p_0_in),
        .Q(out_clock_ref_reg_0));
endmodule

(* ORIG_REF_NAME = "ref_clock" *) 
module ref_clock__parameterized0
   (CLK,
    clock_IBUF_BUFG,
    btn_IBUF);
  output CLK;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;

  wire CLK;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire done;
  wire p_0_in;

  counter__parameterized4 counter_base
       (.btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .done(done));
  LUT1 #(
    .INIT(2'h1)) 
    out_clock_ref_i_1__1
       (.I0(CLK),
        .O(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    out_clock_ref_reg
       (.C(done),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(p_0_in),
        .Q(CLK));
endmodule

module systolicMatrixMultiply
   (\px_bit_reg[0] ,
    \j_counter_reg[2] ,
    \px_bit_reg[0]_0 ,
    \px_bit_reg[1] ,
    D,
    clock_IBUF_BUFG,
    btn_IBUF,
    mem_opb_rw,
    syst_rready_i,
    mem_opb_out_data,
    mem_opa_out_data,
    Q,
    mem2serial_valid_i,
    sdata_tx_out_i_3_0,
    sdata_tx_out_reg_i_18_0,
    \FSM_onehot_fsm_unit_control_reg[3] ,
    mem2serial_rvalid_o,
    fsm_unit_control_next2);
  output \px_bit_reg[0] ;
  output [0:0]\j_counter_reg[2] ;
  output \px_bit_reg[0]_0 ;
  output \px_bit_reg[1] ;
  output [1:0]D;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input mem_opb_rw;
  input syst_rready_i;
  input [7:0]mem_opb_out_data;
  input [7:0]mem_opa_out_data;
  input [1:0]Q;
  input mem2serial_valid_i;
  input [2:0]sdata_tx_out_i_3_0;
  input [2:0]sdata_tx_out_reg_i_18_0;
  input [2:0]\FSM_onehot_fsm_unit_control_reg[3] ;
  input mem2serial_rvalid_o;
  input fsm_unit_control_next2;

  wire A;
  wire B;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[0].MAC_n_1 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_0 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_1 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_0 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_1 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_0 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_1 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_0 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_1 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_0 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_1 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[6].MAC_n_0 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[6].MAC_n_1 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[7].MAC_n_0 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_0 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_1 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_0 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_1 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_0 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_1 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_0 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_1 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_0 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_1 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_0 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_1 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[6].MAC_n_0 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[6].MAC_n_1 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[7].MAC_n_0 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_0 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_1 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_0 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_1 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_0 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_1 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_0 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_1 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_0 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_1 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_0 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_1 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[6].MAC_n_0 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[6].MAC_n_1 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[7].MAC_n_0 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_0 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_1 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_0 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_1 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_0 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_1 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_0 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_1 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_0 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_1 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_0 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_1 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[6].MAC_n_0 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[6].MAC_n_1 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[7].MAC_n_0 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_0 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_1 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_0 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_1 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_0 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_1 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_0 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_1 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_0 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_1 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_0 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_1 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[6].MAC_n_0 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[6].MAC_n_1 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[7].MAC_n_0 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_0 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_1 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_0 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_1 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_0 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_1 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_0 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_1 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_0 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_1 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_0 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_1 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[6].MAC_n_0 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[6].MAC_n_1 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[7].MAC_n_0 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[0].MAC_n_0 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[0].MAC_n_1 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[1].MAC_n_0 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[1].MAC_n_1 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[2].MAC_n_0 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[2].MAC_n_1 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[3].MAC_n_0 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[3].MAC_n_1 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[4].MAC_n_0 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[4].MAC_n_1 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[5].MAC_n_0 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[5].MAC_n_1 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[6].MAC_n_0 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[6].MAC_n_1 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[7].MAC_n_0 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[0].MAC_n_0 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[1].MAC_n_0 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[2].MAC_n_0 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[3].MAC_n_0 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[4].MAC_n_0 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[5].MAC_n_0 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[6].MAC_n_0 ;
  wire [1:0]D;
  wire [2:0]\FSM_onehot_fsm_unit_control_reg[3] ;
  wire \FSM_sequential_currentStateSystolicControlUnit[0]_i_2_n_0 ;
  wire \FSM_sequential_currentStateSystolicControlUnit[1]_i_2_n_0 ;
  wire \FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ;
  wire \FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ;
  wire [1:0]Q;
  wire [7:0]a_load0;
  wire \a_load_reg_n_0_[0] ;
  wire \a_load_reg_n_0_[2] ;
  wire \a_load_reg_n_0_[3] ;
  wire \a_load_reg_n_0_[4] ;
  wire \a_load_reg_n_0_[5] ;
  wire \a_load_reg_n_0_[6] ;
  wire \a_load_reg_n_0_[7] ;
  wire [7:0]accumulator_reg;
  wire [7:0]accumulator_reg_0;
  wire [7:0]accumulator_reg_1;
  wire [7:0]accumulator_reg_10;
  wire [7:0]accumulator_reg_11;
  wire [7:0]accumulator_reg_12;
  wire [7:0]accumulator_reg_13;
  wire [7:0]accumulator_reg_14;
  wire [7:0]accumulator_reg_15;
  wire [7:0]accumulator_reg_16;
  wire [7:0]accumulator_reg_17;
  wire [7:0]accumulator_reg_18;
  wire [7:0]accumulator_reg_19;
  wire [7:0]accumulator_reg_2;
  wire [7:0]accumulator_reg_20;
  wire [7:0]accumulator_reg_21;
  wire [7:0]accumulator_reg_22;
  wire [7:0]accumulator_reg_23;
  wire [7:0]accumulator_reg_24;
  wire [7:0]accumulator_reg_25;
  wire [7:0]accumulator_reg_26;
  wire [7:0]accumulator_reg_27;
  wire [7:0]accumulator_reg_28;
  wire [7:0]accumulator_reg_29;
  wire [7:0]accumulator_reg_3;
  wire [7:0]accumulator_reg_30;
  wire [7:0]accumulator_reg_31;
  wire [7:0]accumulator_reg_32;
  wire [7:0]accumulator_reg_33;
  wire [7:0]accumulator_reg_34;
  wire [7:0]accumulator_reg_35;
  wire [7:0]accumulator_reg_36;
  wire [7:0]accumulator_reg_37;
  wire [7:0]accumulator_reg_38;
  wire [7:0]accumulator_reg_39;
  wire [7:0]accumulator_reg_4;
  wire [7:0]accumulator_reg_40;
  wire [7:0]accumulator_reg_41;
  wire [7:0]accumulator_reg_42;
  wire [7:0]accumulator_reg_43;
  wire [7:0]accumulator_reg_44;
  wire [7:0]accumulator_reg_45;
  wire [7:0]accumulator_reg_46;
  wire [7:0]accumulator_reg_47;
  wire [7:0]accumulator_reg_48;
  wire [7:0]accumulator_reg_49;
  wire [7:0]accumulator_reg_5;
  wire [7:0]accumulator_reg_50;
  wire [7:0]accumulator_reg_51;
  wire [7:0]accumulator_reg_52;
  wire [7:0]accumulator_reg_53;
  wire [7:0]accumulator_reg_54;
  wire [7:0]accumulator_reg_55;
  wire [7:0]accumulator_reg_56;
  wire [7:0]accumulator_reg_57;
  wire [7:0]accumulator_reg_58;
  wire [7:0]accumulator_reg_59;
  wire [7:0]accumulator_reg_6;
  wire [7:0]accumulator_reg_60;
  wire [7:0]accumulator_reg_61;
  wire [7:0]accumulator_reg_62;
  wire [7:0]accumulator_reg_7;
  wire [7:0]accumulator_reg_8;
  wire [7:0]accumulator_reg_9;
  wire [7:0]b_load0;
  wire \b_load_reg_n_0_[0] ;
  wire \b_load_reg_n_0_[2] ;
  wire \b_load_reg_n_0_[3] ;
  wire \b_load_reg_n_0_[4] ;
  wire \b_load_reg_n_0_[5] ;
  wire \b_load_reg_n_0_[6] ;
  wire \b_load_reg_n_0_[7] ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [4:0]counter_mult;
  wire \counter_mult[4]_i_2_n_0 ;
  wire [4:0]counter_transfer_m;
  wire \counter_transfer_m[4]_i_2_n_0 ;
  wire ena_mac;
  wire ena_mac_reg_rep__0_n_0;
  wire ena_mac_reg_rep__1_n_0;
  wire ena_mac_reg_rep_n_0;
  wire ena_mac_rep__0_i_1_n_0;
  wire ena_mac_rep__1_i_1_n_0;
  wire ena_mac_rep_i_1_n_0;
  wire fsm_unit_control_next2;
  wire [0:0]\j_counter_reg[2] ;
  wire mem2serial_rvalid_o;
  wire [7:0]\mem2serial_transfer_pc/pmatrix_in__55 ;
  wire mem2serial_valid_i;
  wire [7:0]mem_opa_out_data;
  wire [7:0]mem_opb_out_data;
  wire mem_opb_rw;
  wire [1:0]nextStateSystolicControlUnit__0;
  wire [4:0]next_counter_mult__0;
  wire [4:0]next_counter_transfer_m__0;
  wire next_ena_mac__0;
  wire \output_produc_a_b[7][7][7]_i_1_n_0 ;
  wire \px_bit_reg[0] ;
  wire \px_bit_reg[0]_0 ;
  wire \px_bit_reg[1] ;
  wire sdata_tx_out_i_111_n_0;
  wire sdata_tx_out_i_112_n_0;
  wire sdata_tx_out_i_113_n_0;
  wire sdata_tx_out_i_114_n_0;
  wire sdata_tx_out_i_115_n_0;
  wire sdata_tx_out_i_116_n_0;
  wire sdata_tx_out_i_117_n_0;
  wire sdata_tx_out_i_118_n_0;
  wire sdata_tx_out_i_119_n_0;
  wire sdata_tx_out_i_120_n_0;
  wire sdata_tx_out_i_121_n_0;
  wire sdata_tx_out_i_122_n_0;
  wire sdata_tx_out_i_123_n_0;
  wire sdata_tx_out_i_124_n_0;
  wire sdata_tx_out_i_125_n_0;
  wire sdata_tx_out_i_126_n_0;
  wire sdata_tx_out_i_127_n_0;
  wire sdata_tx_out_i_128_n_0;
  wire sdata_tx_out_i_129_n_0;
  wire sdata_tx_out_i_130_n_0;
  wire sdata_tx_out_i_131_n_0;
  wire sdata_tx_out_i_132_n_0;
  wire sdata_tx_out_i_133_n_0;
  wire sdata_tx_out_i_134_n_0;
  wire sdata_tx_out_i_135_n_0;
  wire sdata_tx_out_i_136_n_0;
  wire sdata_tx_out_i_137_n_0;
  wire sdata_tx_out_i_138_n_0;
  wire sdata_tx_out_i_139_n_0;
  wire sdata_tx_out_i_140_n_0;
  wire sdata_tx_out_i_141_n_0;
  wire sdata_tx_out_i_142_n_0;
  wire sdata_tx_out_i_143_n_0;
  wire sdata_tx_out_i_144_n_0;
  wire sdata_tx_out_i_145_n_0;
  wire sdata_tx_out_i_146_n_0;
  wire sdata_tx_out_i_147_n_0;
  wire sdata_tx_out_i_148_n_0;
  wire sdata_tx_out_i_149_n_0;
  wire sdata_tx_out_i_150_n_0;
  wire sdata_tx_out_i_151_n_0;
  wire sdata_tx_out_i_152_n_0;
  wire sdata_tx_out_i_153_n_0;
  wire sdata_tx_out_i_154_n_0;
  wire sdata_tx_out_i_155_n_0;
  wire sdata_tx_out_i_156_n_0;
  wire sdata_tx_out_i_157_n_0;
  wire sdata_tx_out_i_158_n_0;
  wire sdata_tx_out_i_159_n_0;
  wire sdata_tx_out_i_160_n_0;
  wire sdata_tx_out_i_161_n_0;
  wire sdata_tx_out_i_162_n_0;
  wire sdata_tx_out_i_163_n_0;
  wire sdata_tx_out_i_164_n_0;
  wire sdata_tx_out_i_165_n_0;
  wire sdata_tx_out_i_166_n_0;
  wire sdata_tx_out_i_167_n_0;
  wire sdata_tx_out_i_168_n_0;
  wire sdata_tx_out_i_169_n_0;
  wire sdata_tx_out_i_170_n_0;
  wire sdata_tx_out_i_171_n_0;
  wire sdata_tx_out_i_172_n_0;
  wire sdata_tx_out_i_173_n_0;
  wire sdata_tx_out_i_174_n_0;
  wire sdata_tx_out_i_175_n_0;
  wire sdata_tx_out_i_176_n_0;
  wire sdata_tx_out_i_177_n_0;
  wire sdata_tx_out_i_178_n_0;
  wire sdata_tx_out_i_179_n_0;
  wire sdata_tx_out_i_180_n_0;
  wire sdata_tx_out_i_181_n_0;
  wire sdata_tx_out_i_182_n_0;
  wire sdata_tx_out_i_183_n_0;
  wire sdata_tx_out_i_184_n_0;
  wire sdata_tx_out_i_185_n_0;
  wire sdata_tx_out_i_186_n_0;
  wire sdata_tx_out_i_187_n_0;
  wire sdata_tx_out_i_188_n_0;
  wire sdata_tx_out_i_189_n_0;
  wire sdata_tx_out_i_190_n_0;
  wire sdata_tx_out_i_191_n_0;
  wire sdata_tx_out_i_192_n_0;
  wire sdata_tx_out_i_193_n_0;
  wire sdata_tx_out_i_194_n_0;
  wire sdata_tx_out_i_195_n_0;
  wire sdata_tx_out_i_196_n_0;
  wire sdata_tx_out_i_197_n_0;
  wire sdata_tx_out_i_198_n_0;
  wire sdata_tx_out_i_199_n_0;
  wire sdata_tx_out_i_200_n_0;
  wire sdata_tx_out_i_201_n_0;
  wire sdata_tx_out_i_202_n_0;
  wire sdata_tx_out_i_203_n_0;
  wire sdata_tx_out_i_204_n_0;
  wire sdata_tx_out_i_205_n_0;
  wire sdata_tx_out_i_206_n_0;
  wire sdata_tx_out_i_207_n_0;
  wire sdata_tx_out_i_208_n_0;
  wire sdata_tx_out_i_209_n_0;
  wire sdata_tx_out_i_210_n_0;
  wire sdata_tx_out_i_211_n_0;
  wire sdata_tx_out_i_212_n_0;
  wire sdata_tx_out_i_213_n_0;
  wire sdata_tx_out_i_214_n_0;
  wire sdata_tx_out_i_215_n_0;
  wire sdata_tx_out_i_216_n_0;
  wire sdata_tx_out_i_217_n_0;
  wire sdata_tx_out_i_218_n_0;
  wire sdata_tx_out_i_219_n_0;
  wire sdata_tx_out_i_220_n_0;
  wire sdata_tx_out_i_221_n_0;
  wire sdata_tx_out_i_222_n_0;
  wire sdata_tx_out_i_223_n_0;
  wire sdata_tx_out_i_224_n_0;
  wire sdata_tx_out_i_225_n_0;
  wire sdata_tx_out_i_226_n_0;
  wire sdata_tx_out_i_227_n_0;
  wire sdata_tx_out_i_228_n_0;
  wire sdata_tx_out_i_229_n_0;
  wire sdata_tx_out_i_230_n_0;
  wire sdata_tx_out_i_231_n_0;
  wire sdata_tx_out_i_232_n_0;
  wire sdata_tx_out_i_233_n_0;
  wire sdata_tx_out_i_234_n_0;
  wire sdata_tx_out_i_235_n_0;
  wire sdata_tx_out_i_236_n_0;
  wire sdata_tx_out_i_237_n_0;
  wire sdata_tx_out_i_238_n_0;
  wire [2:0]sdata_tx_out_i_3_0;
  wire sdata_tx_out_reg_i_100_n_0;
  wire sdata_tx_out_reg_i_101_n_0;
  wire sdata_tx_out_reg_i_102_n_0;
  wire sdata_tx_out_reg_i_103_n_0;
  wire sdata_tx_out_reg_i_105_n_0;
  wire sdata_tx_out_reg_i_106_n_0;
  wire sdata_tx_out_reg_i_107_n_0;
  wire sdata_tx_out_reg_i_108_n_0;
  wire sdata_tx_out_reg_i_109_n_0;
  wire sdata_tx_out_reg_i_110_n_0;
  wire sdata_tx_out_reg_i_15_n_0;
  wire sdata_tx_out_reg_i_16_n_0;
  wire sdata_tx_out_reg_i_17_n_0;
  wire [2:0]sdata_tx_out_reg_i_18_0;
  wire sdata_tx_out_reg_i_18_n_0;
  wire sdata_tx_out_reg_i_19_n_0;
  wire sdata_tx_out_reg_i_20_n_0;
  wire sdata_tx_out_reg_i_21_n_0;
  wire sdata_tx_out_reg_i_22_n_0;
  wire sdata_tx_out_reg_i_23_n_0;
  wire sdata_tx_out_reg_i_24_n_0;
  wire sdata_tx_out_reg_i_25_n_0;
  wire sdata_tx_out_reg_i_26_n_0;
  wire sdata_tx_out_reg_i_27_n_0;
  wire sdata_tx_out_reg_i_28_n_0;
  wire sdata_tx_out_reg_i_29_n_0;
  wire sdata_tx_out_reg_i_30_n_0;
  wire sdata_tx_out_reg_i_31_n_0;
  wire sdata_tx_out_reg_i_32_n_0;
  wire sdata_tx_out_reg_i_33_n_0;
  wire sdata_tx_out_reg_i_34_n_0;
  wire sdata_tx_out_reg_i_35_n_0;
  wire sdata_tx_out_reg_i_36_n_0;
  wire sdata_tx_out_reg_i_37_n_0;
  wire sdata_tx_out_reg_i_38_n_0;
  wire sdata_tx_out_reg_i_39_n_0;
  wire sdata_tx_out_reg_i_40_n_0;
  wire sdata_tx_out_reg_i_41_n_0;
  wire sdata_tx_out_reg_i_42_n_0;
  wire sdata_tx_out_reg_i_43_n_0;
  wire sdata_tx_out_reg_i_44_n_0;
  wire sdata_tx_out_reg_i_45_n_0;
  wire sdata_tx_out_reg_i_46_n_0;
  wire sdata_tx_out_reg_i_47_n_0;
  wire sdata_tx_out_reg_i_49_n_0;
  wire sdata_tx_out_reg_i_50_n_0;
  wire sdata_tx_out_reg_i_51_n_0;
  wire sdata_tx_out_reg_i_52_n_0;
  wire sdata_tx_out_reg_i_53_n_0;
  wire sdata_tx_out_reg_i_54_n_0;
  wire sdata_tx_out_reg_i_55_n_0;
  wire sdata_tx_out_reg_i_57_n_0;
  wire sdata_tx_out_reg_i_58_n_0;
  wire sdata_tx_out_reg_i_59_n_0;
  wire sdata_tx_out_reg_i_60_n_0;
  wire sdata_tx_out_reg_i_61_n_0;
  wire sdata_tx_out_reg_i_62_n_0;
  wire sdata_tx_out_reg_i_63_n_0;
  wire sdata_tx_out_reg_i_65_n_0;
  wire sdata_tx_out_reg_i_66_n_0;
  wire sdata_tx_out_reg_i_67_n_0;
  wire sdata_tx_out_reg_i_68_n_0;
  wire sdata_tx_out_reg_i_69_n_0;
  wire sdata_tx_out_reg_i_70_n_0;
  wire sdata_tx_out_reg_i_71_n_0;
  wire sdata_tx_out_reg_i_73_n_0;
  wire sdata_tx_out_reg_i_74_n_0;
  wire sdata_tx_out_reg_i_75_n_0;
  wire sdata_tx_out_reg_i_76_n_0;
  wire sdata_tx_out_reg_i_77_n_0;
  wire sdata_tx_out_reg_i_78_n_0;
  wire sdata_tx_out_reg_i_79_n_0;
  wire sdata_tx_out_reg_i_81_n_0;
  wire sdata_tx_out_reg_i_82_n_0;
  wire sdata_tx_out_reg_i_83_n_0;
  wire sdata_tx_out_reg_i_84_n_0;
  wire sdata_tx_out_reg_i_85_n_0;
  wire sdata_tx_out_reg_i_86_n_0;
  wire sdata_tx_out_reg_i_87_n_0;
  wire sdata_tx_out_reg_i_89_n_0;
  wire sdata_tx_out_reg_i_90_n_0;
  wire sdata_tx_out_reg_i_91_n_0;
  wire sdata_tx_out_reg_i_92_n_0;
  wire sdata_tx_out_reg_i_93_n_0;
  wire sdata_tx_out_reg_i_94_n_0;
  wire sdata_tx_out_reg_i_95_n_0;
  wire sdata_tx_out_reg_i_97_n_0;
  wire sdata_tx_out_reg_i_98_n_0;
  wire sdata_tx_out_reg_i_99_n_0;
  wire [7:0]\syst_output_produc_a_b[0][0] ;
  wire [7:0]\syst_output_produc_a_b[0][1] ;
  wire [7:0]\syst_output_produc_a_b[0][2] ;
  wire [7:0]\syst_output_produc_a_b[0][3] ;
  wire [7:0]\syst_output_produc_a_b[0][4] ;
  wire [7:0]\syst_output_produc_a_b[0][5] ;
  wire [7:0]\syst_output_produc_a_b[0][6] ;
  wire [7:0]\syst_output_produc_a_b[0][7] ;
  wire [7:0]\syst_output_produc_a_b[1][0] ;
  wire [7:0]\syst_output_produc_a_b[1][1] ;
  wire [7:0]\syst_output_produc_a_b[1][2] ;
  wire [7:0]\syst_output_produc_a_b[1][3] ;
  wire [7:0]\syst_output_produc_a_b[1][4] ;
  wire [7:0]\syst_output_produc_a_b[1][5] ;
  wire [7:0]\syst_output_produc_a_b[1][6] ;
  wire [7:0]\syst_output_produc_a_b[1][7] ;
  wire [7:0]\syst_output_produc_a_b[2][0] ;
  wire [7:0]\syst_output_produc_a_b[2][1] ;
  wire [7:0]\syst_output_produc_a_b[2][2] ;
  wire [7:0]\syst_output_produc_a_b[2][3] ;
  wire [7:0]\syst_output_produc_a_b[2][4] ;
  wire [7:0]\syst_output_produc_a_b[2][5] ;
  wire [7:0]\syst_output_produc_a_b[2][6] ;
  wire [7:0]\syst_output_produc_a_b[2][7] ;
  wire [7:0]\syst_output_produc_a_b[3][0] ;
  wire [7:0]\syst_output_produc_a_b[3][1] ;
  wire [7:0]\syst_output_produc_a_b[3][2] ;
  wire [7:0]\syst_output_produc_a_b[3][3] ;
  wire [7:0]\syst_output_produc_a_b[3][4] ;
  wire [7:0]\syst_output_produc_a_b[3][5] ;
  wire [7:0]\syst_output_produc_a_b[3][6] ;
  wire [7:0]\syst_output_produc_a_b[3][7] ;
  wire [7:0]\syst_output_produc_a_b[4][0] ;
  wire [7:0]\syst_output_produc_a_b[4][1] ;
  wire [7:0]\syst_output_produc_a_b[4][2] ;
  wire [7:0]\syst_output_produc_a_b[4][3] ;
  wire [7:0]\syst_output_produc_a_b[4][4] ;
  wire [7:0]\syst_output_produc_a_b[4][5] ;
  wire [7:0]\syst_output_produc_a_b[4][6] ;
  wire [7:0]\syst_output_produc_a_b[4][7] ;
  wire [7:0]\syst_output_produc_a_b[5][0] ;
  wire [7:0]\syst_output_produc_a_b[5][1] ;
  wire [7:0]\syst_output_produc_a_b[5][2] ;
  wire [7:0]\syst_output_produc_a_b[5][3] ;
  wire [7:0]\syst_output_produc_a_b[5][4] ;
  wire [7:0]\syst_output_produc_a_b[5][5] ;
  wire [7:0]\syst_output_produc_a_b[5][6] ;
  wire [7:0]\syst_output_produc_a_b[5][7] ;
  wire [7:0]\syst_output_produc_a_b[6][0] ;
  wire [7:0]\syst_output_produc_a_b[6][1] ;
  wire [7:0]\syst_output_produc_a_b[6][2] ;
  wire [7:0]\syst_output_produc_a_b[6][3] ;
  wire [7:0]\syst_output_produc_a_b[6][4] ;
  wire [7:0]\syst_output_produc_a_b[6][5] ;
  wire [7:0]\syst_output_produc_a_b[6][6] ;
  wire [7:0]\syst_output_produc_a_b[6][7] ;
  wire [7:0]\syst_output_produc_a_b[7][0] ;
  wire [7:0]\syst_output_produc_a_b[7][1] ;
  wire [7:0]\syst_output_produc_a_b[7][2] ;
  wire [7:0]\syst_output_produc_a_b[7][3] ;
  wire [7:0]\syst_output_produc_a_b[7][4] ;
  wire [7:0]\syst_output_produc_a_b[7][5] ;
  wire [7:0]\syst_output_produc_a_b[7][6] ;
  wire [7:0]\syst_output_produc_a_b[7][7] ;
  wire syst_rready_i;
  wire [7:1]uart_data_tx_in;
  wire y;

  accumulator_cells \CELULA_ROWS[0].CELULA_COLUMNS[0].MAC 
       (.Q(\b_load_reg_n_0_[0] ),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[7]_0 (accumulator_reg),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[0].MAC_n_1 ),
        .\x_reg[0]_1 (\a_load_reg_n_0_[0] ),
        .y(y));
  accumulator_cells_3 \CELULA_ROWS[0].CELULA_COLUMNS[1].MAC 
       (.Q(A),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[7]_0 (accumulator_reg_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_1 ),
        .y(y),
        .\y_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_0 ));
  accumulator_cells_4 \CELULA_ROWS[0].CELULA_COLUMNS[2].MAC 
       (.Q(\a_load_reg_n_0_[2] ),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[7]_0 (accumulator_reg_1),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_0 ));
  accumulator_cells_5 \CELULA_ROWS[0].CELULA_COLUMNS[3].MAC 
       (.Q(\a_load_reg_n_0_[3] ),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[7]_0 (accumulator_reg_2),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_0 ));
  accumulator_cells_6 \CELULA_ROWS[0].CELULA_COLUMNS[4].MAC 
       (.Q(\a_load_reg_n_0_[4] ),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[7]_0 (accumulator_reg_3),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_0 ));
  accumulator_cells_7 \CELULA_ROWS[0].CELULA_COLUMNS[5].MAC 
       (.Q(\a_load_reg_n_0_[5] ),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[7]_0 (accumulator_reg_4),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_0 ));
  accumulator_cells_8 \CELULA_ROWS[0].CELULA_COLUMNS[6].MAC 
       (.Q(\a_load_reg_n_0_[6] ),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[7]_0 (accumulator_reg_5),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[6].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[6].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_0 ));
  accumulator_cells_9 \CELULA_ROWS[0].CELULA_COLUMNS[7].MAC 
       (.Q(\a_load_reg_n_0_[7] ),
        .\accumulator_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[6].MAC_n_0 ),
        .\accumulator_reg[0]_1 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[7]_0 (accumulator_reg_6),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[7].MAC_n_0 ));
  accumulator_cells_10 \CELULA_ROWS[1].CELULA_COLUMNS[0].MAC 
       (.Q(B),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[7]_0 (accumulator_reg_7),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[0].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_11 \CELULA_ROWS[1].CELULA_COLUMNS[1].MAC 
       (.Q(accumulator_reg_8),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__1_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_12 \CELULA_ROWS[1].CELULA_COLUMNS[2].MAC 
       (.Q(accumulator_reg_9),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__1_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_0 ));
  accumulator_cells_13 \CELULA_ROWS[1].CELULA_COLUMNS[3].MAC 
       (.Q(accumulator_reg_10),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__1_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_0 ));
  accumulator_cells_14 \CELULA_ROWS[1].CELULA_COLUMNS[4].MAC 
       (.Q(accumulator_reg_11),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__1_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_0 ));
  accumulator_cells_15 \CELULA_ROWS[1].CELULA_COLUMNS[5].MAC 
       (.Q(accumulator_reg_12),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__1_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_0 ));
  accumulator_cells_16 \CELULA_ROWS[1].CELULA_COLUMNS[6].MAC 
       (.Q(accumulator_reg_13),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__1_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[6].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[6].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[6].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_0 ));
  accumulator_cells_17 \CELULA_ROWS[1].CELULA_COLUMNS[7].MAC 
       (.Q(accumulator_reg_14),
        .\accumulator_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[6].MAC_n_0 ),
        .\accumulator_reg[0]_1 (ena_mac_reg_rep__1_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[7].MAC_n_0 ),
        .\x_reg[0]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[7].MAC_n_0 ));
  accumulator_cells_18 \CELULA_ROWS[2].CELULA_COLUMNS[0].MAC 
       (.Q(\b_load_reg_n_0_[2] ),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__0_n_0),
        .\accumulator_reg[7]_0 (accumulator_reg_15),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_19 \CELULA_ROWS[2].CELULA_COLUMNS[1].MAC 
       (.Q(accumulator_reg_16),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_20 \CELULA_ROWS[2].CELULA_COLUMNS[2].MAC 
       (.Q(accumulator_reg_17),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_0 ));
  accumulator_cells_21 \CELULA_ROWS[2].CELULA_COLUMNS[3].MAC 
       (.Q(accumulator_reg_18),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_0 ));
  accumulator_cells_22 \CELULA_ROWS[2].CELULA_COLUMNS[4].MAC 
       (.Q(accumulator_reg_19),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_0 ));
  accumulator_cells_23 \CELULA_ROWS[2].CELULA_COLUMNS[5].MAC 
       (.Q(accumulator_reg_20),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_0 ));
  accumulator_cells_24 \CELULA_ROWS[2].CELULA_COLUMNS[6].MAC 
       (.Q(accumulator_reg_21),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[6].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[6].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[6].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_0 ));
  accumulator_cells_25 \CELULA_ROWS[2].CELULA_COLUMNS[7].MAC 
       (.Q(accumulator_reg_22),
        .\accumulator_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[6].MAC_n_0 ),
        .\accumulator_reg[0]_1 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[7].MAC_n_0 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[7].MAC_n_0 ));
  accumulator_cells_26 \CELULA_ROWS[3].CELULA_COLUMNS[0].MAC 
       (.Q(\b_load_reg_n_0_[3] ),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__0_n_0),
        .\accumulator_reg[7]_0 (accumulator_reg_23),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_27 \CELULA_ROWS[3].CELULA_COLUMNS[1].MAC 
       (.Q(accumulator_reg_24),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_28 \CELULA_ROWS[3].CELULA_COLUMNS[2].MAC 
       (.Q(accumulator_reg_25),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_0 ));
  accumulator_cells_29 \CELULA_ROWS[3].CELULA_COLUMNS[3].MAC 
       (.Q(accumulator_reg_26),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_0 ));
  accumulator_cells_30 \CELULA_ROWS[3].CELULA_COLUMNS[4].MAC 
       (.Q(accumulator_reg_27),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_0 ));
  accumulator_cells_31 \CELULA_ROWS[3].CELULA_COLUMNS[5].MAC 
       (.Q(accumulator_reg_28),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_0 ));
  accumulator_cells_32 \CELULA_ROWS[3].CELULA_COLUMNS[6].MAC 
       (.Q(accumulator_reg_29),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[6].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[6].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[6].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_0 ));
  accumulator_cells_33 \CELULA_ROWS[3].CELULA_COLUMNS[7].MAC 
       (.Q(accumulator_reg_30),
        .\accumulator_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[6].MAC_n_0 ),
        .\accumulator_reg[0]_1 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[7].MAC_n_0 ),
        .\x_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[7].MAC_n_0 ));
  accumulator_cells_34 \CELULA_ROWS[4].CELULA_COLUMNS[0].MAC 
       (.Q(\b_load_reg_n_0_[4] ),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep_n_0),
        .\accumulator_reg[7]_0 (accumulator_reg_31),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_35 \CELULA_ROWS[4].CELULA_COLUMNS[1].MAC 
       (.Q(accumulator_reg_32),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_36 \CELULA_ROWS[4].CELULA_COLUMNS[2].MAC 
       (.Q(accumulator_reg_33),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_0 ));
  accumulator_cells_37 \CELULA_ROWS[4].CELULA_COLUMNS[3].MAC 
       (.Q(accumulator_reg_34),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_0 ));
  accumulator_cells_38 \CELULA_ROWS[4].CELULA_COLUMNS[4].MAC 
       (.Q(accumulator_reg_35),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_0 ));
  accumulator_cells_39 \CELULA_ROWS[4].CELULA_COLUMNS[5].MAC 
       (.Q(accumulator_reg_36),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_0 ));
  accumulator_cells_40 \CELULA_ROWS[4].CELULA_COLUMNS[6].MAC 
       (.Q(accumulator_reg_37),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[6].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[6].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[6].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_0 ));
  accumulator_cells_41 \CELULA_ROWS[4].CELULA_COLUMNS[7].MAC 
       (.Q(accumulator_reg_38),
        .\accumulator_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[6].MAC_n_0 ),
        .\accumulator_reg[0]_1 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[7].MAC_n_0 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[7].MAC_n_0 ));
  accumulator_cells_42 \CELULA_ROWS[5].CELULA_COLUMNS[0].MAC 
       (.Q(\b_load_reg_n_0_[5] ),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep_n_0),
        .\accumulator_reg[7]_0 (accumulator_reg_39),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_43 \CELULA_ROWS[5].CELULA_COLUMNS[1].MAC 
       (.Q(accumulator_reg_40),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_44 \CELULA_ROWS[5].CELULA_COLUMNS[2].MAC 
       (.Q(accumulator_reg_41),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_0 ));
  accumulator_cells_45 \CELULA_ROWS[5].CELULA_COLUMNS[3].MAC 
       (.Q(accumulator_reg_42),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_0 ));
  accumulator_cells_46 \CELULA_ROWS[5].CELULA_COLUMNS[4].MAC 
       (.Q(accumulator_reg_43),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_0 ));
  accumulator_cells_47 \CELULA_ROWS[5].CELULA_COLUMNS[5].MAC 
       (.Q(accumulator_reg_44),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_0 ));
  accumulator_cells_48 \CELULA_ROWS[5].CELULA_COLUMNS[6].MAC 
       (.Q(accumulator_reg_45),
        .\accumulator_reg[0]_0 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[6].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[6].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[6].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_0 ));
  accumulator_cells_49 \CELULA_ROWS[5].CELULA_COLUMNS[7].MAC 
       (.Q(accumulator_reg_46),
        .\accumulator_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[6].MAC_n_0 ),
        .\accumulator_reg[0]_1 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[7].MAC_n_0 ),
        .\x_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[7].MAC_n_0 ));
  accumulator_cells_50 \CELULA_ROWS[6].CELULA_COLUMNS[0].MAC 
       (.Q(\b_load_reg_n_0_[6] ),
        .\accumulator_reg[7]_0 (accumulator_reg_47),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[0].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_51 \CELULA_ROWS[6].CELULA_COLUMNS[1].MAC 
       (.Q(accumulator_reg_48),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[1].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[1].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_52 \CELULA_ROWS[6].CELULA_COLUMNS[2].MAC 
       (.Q(accumulator_reg_49),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[2].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[2].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[1].MAC_n_0 ));
  accumulator_cells_53 \CELULA_ROWS[6].CELULA_COLUMNS[3].MAC 
       (.Q(accumulator_reg_50),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[3].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[3].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[2].MAC_n_0 ));
  accumulator_cells_54 \CELULA_ROWS[6].CELULA_COLUMNS[4].MAC 
       (.Q(accumulator_reg_51),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[4].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[4].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[3].MAC_n_0 ));
  accumulator_cells_55 \CELULA_ROWS[6].CELULA_COLUMNS[5].MAC 
       (.Q(accumulator_reg_52),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[5].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[5].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[4].MAC_n_0 ));
  accumulator_cells_56 \CELULA_ROWS[6].CELULA_COLUMNS[6].MAC 
       (.Q(accumulator_reg_53),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[6].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[6].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[6].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[5].MAC_n_0 ));
  accumulator_cells_57 \CELULA_ROWS[6].CELULA_COLUMNS[7].MAC 
       (.Q(accumulator_reg_54),
        .\accumulator_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[6].MAC_n_0 ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[7].MAC_n_0 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[7].MAC_n_0 ));
  accumulator_cells_58 \CELULA_ROWS[7].CELULA_COLUMNS[0].MAC 
       (.Q(\b_load_reg_n_0_[7] ),
        .\accumulator_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[0].MAC_n_1 ),
        .\accumulator_reg[7]_0 (accumulator_reg_55),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\y_reg[0]_0 (\CELULA_ROWS[7].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_59 \CELULA_ROWS[7].CELULA_COLUMNS[1].MAC 
       (.Q(accumulator_reg_56),
        .\accumulator_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[1].MAC_n_1 ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\y_reg[0]_0 (\CELULA_ROWS[7].CELULA_COLUMNS[1].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[7].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_60 \CELULA_ROWS[7].CELULA_COLUMNS[2].MAC 
       (.Q(accumulator_reg_57),
        .\accumulator_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[2].MAC_n_1 ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\y_reg[0]_0 (\CELULA_ROWS[7].CELULA_COLUMNS[2].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[7].CELULA_COLUMNS[1].MAC_n_0 ));
  accumulator_cells_61 \CELULA_ROWS[7].CELULA_COLUMNS[3].MAC 
       (.Q(accumulator_reg_58),
        .\accumulator_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[3].MAC_n_1 ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\y_reg[0]_0 (\CELULA_ROWS[7].CELULA_COLUMNS[3].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[7].CELULA_COLUMNS[2].MAC_n_0 ));
  accumulator_cells_62 \CELULA_ROWS[7].CELULA_COLUMNS[4].MAC 
       (.Q(accumulator_reg_59),
        .\accumulator_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[4].MAC_n_1 ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\y_reg[0]_0 (\CELULA_ROWS[7].CELULA_COLUMNS[4].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[7].CELULA_COLUMNS[3].MAC_n_0 ));
  accumulator_cells_63 \CELULA_ROWS[7].CELULA_COLUMNS[5].MAC 
       (.Q(accumulator_reg_60),
        .\accumulator_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[5].MAC_n_1 ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\y_reg[0]_0 (\CELULA_ROWS[7].CELULA_COLUMNS[5].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[7].CELULA_COLUMNS[4].MAC_n_0 ));
  accumulator_cells_64 \CELULA_ROWS[7].CELULA_COLUMNS[6].MAC 
       (.Q(accumulator_reg_61),
        .\accumulator_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[6].MAC_n_1 ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\y_reg[0]_0 (\CELULA_ROWS[7].CELULA_COLUMNS[6].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[7].CELULA_COLUMNS[5].MAC_n_0 ));
  accumulator_cells_65 \CELULA_ROWS[7].CELULA_COLUMNS[7].MAC 
       (.Q(accumulator_reg_62),
        .\accumulator_reg[0]_0 (\CELULA_ROWS[7].CELULA_COLUMNS[6].MAC_n_0 ),
        .\accumulator_reg[0]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[7].MAC_n_0 ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac));
  LUT5 #(
    .INIT(32'hF777F000)) 
    \FSM_onehot_fsm_unit_control_next_reg[2]_i_1 
       (.I0(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I1(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .I2(fsm_unit_control_next2),
        .I3(\FSM_onehot_fsm_unit_control_reg[3] [0]),
        .I4(\FSM_onehot_fsm_unit_control_reg[3] [1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \FSM_onehot_fsm_unit_control_next_reg[3]_i_1 
       (.I0(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I1(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .I2(\FSM_onehot_fsm_unit_control_reg[3] [1]),
        .I3(mem2serial_rvalid_o),
        .I4(\FSM_onehot_fsm_unit_control_reg[3] [2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT5 #(
    .INIT(32'h03BBCF88)) 
    \FSM_sequential_currentStateSystolicControlUnit[0]_i_1 
       (.I0(\FSM_sequential_currentStateSystolicControlUnit[1]_i_2_n_0 ),
        .I1(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I2(\FSM_sequential_currentStateSystolicControlUnit[0]_i_2_n_0 ),
        .I3(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .I4(syst_rready_i),
        .O(nextStateSystolicControlUnit__0[0]));
  LUT5 #(
    .INIT(32'h0000007F)) 
    \FSM_sequential_currentStateSystolicControlUnit[0]_i_2 
       (.I0(counter_mult[0]),
        .I1(counter_mult[1]),
        .I2(counter_mult[2]),
        .I3(counter_mult[4]),
        .I4(counter_mult[3]),
        .O(\FSM_sequential_currentStateSystolicControlUnit[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT4 #(
    .INIT(16'h4C7C)) 
    \FSM_sequential_currentStateSystolicControlUnit[1]_i_1 
       (.I0(syst_rready_i),
        .I1(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .I2(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I3(\FSM_sequential_currentStateSystolicControlUnit[1]_i_2_n_0 ),
        .O(nextStateSystolicControlUnit__0[1]));
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \FSM_sequential_currentStateSystolicControlUnit[1]_i_2 
       (.I0(counter_transfer_m[0]),
        .I1(counter_transfer_m[1]),
        .I2(counter_transfer_m[3]),
        .I3(counter_transfer_m[2]),
        .I4(counter_transfer_m[4]),
        .O(\FSM_sequential_currentStateSystolicControlUnit[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "LOAD_MULTI_MATRIX:01,MULTI_MATRIX:10,DONE:11,IDLE:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_currentStateSystolicControlUnit_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(nextStateSystolicControlUnit__0[0]),
        .Q(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "LOAD_MULTI_MATRIX:01,MULTI_MATRIX:10,DONE:11,IDLE:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_currentStateSystolicControlUnit_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(nextStateSystolicControlUnit__0[1]),
        .Q(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \a_load[0]_i_1 
       (.I0(mem_opb_rw),
        .I1(syst_rready_i),
        .I2(mem_opa_out_data[0]),
        .I3(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I4(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(a_load0[0]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \a_load[1]_i_1 
       (.I0(mem_opb_rw),
        .I1(syst_rready_i),
        .I2(mem_opa_out_data[1]),
        .I3(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I4(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(a_load0[1]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \a_load[2]_i_1 
       (.I0(mem_opb_rw),
        .I1(syst_rready_i),
        .I2(mem_opa_out_data[2]),
        .I3(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I4(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(a_load0[2]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \a_load[3]_i_1 
       (.I0(mem_opb_rw),
        .I1(syst_rready_i),
        .I2(mem_opa_out_data[3]),
        .I3(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I4(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(a_load0[3]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \a_load[4]_i_1 
       (.I0(mem_opb_rw),
        .I1(syst_rready_i),
        .I2(mem_opa_out_data[4]),
        .I3(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I4(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(a_load0[4]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \a_load[5]_i_1 
       (.I0(mem_opb_rw),
        .I1(syst_rready_i),
        .I2(mem_opa_out_data[5]),
        .I3(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I4(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(a_load0[5]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \a_load[6]_i_1 
       (.I0(mem_opb_rw),
        .I1(syst_rready_i),
        .I2(mem_opa_out_data[6]),
        .I3(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I4(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(a_load0[6]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \a_load[7]_i_1 
       (.I0(mem_opb_rw),
        .I1(syst_rready_i),
        .I2(mem_opa_out_data[7]),
        .I3(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I4(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(a_load0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \a_load_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(a_load0[0]),
        .Q(\a_load_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_load_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(a_load0[1]),
        .Q(A));
  FDCE #(
    .INIT(1'b0)) 
    \a_load_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(a_load0[2]),
        .Q(\a_load_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_load_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(a_load0[3]),
        .Q(\a_load_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_load_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(a_load0[4]),
        .Q(\a_load_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_load_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(a_load0[5]),
        .Q(\a_load_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_load_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(a_load0[6]),
        .Q(\a_load_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_load_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(a_load0[7]),
        .Q(\a_load_reg_n_0_[7] ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \b_load[0]_i_1 
       (.I0(mem_opb_rw),
        .I1(syst_rready_i),
        .I2(mem_opb_out_data[0]),
        .I3(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I4(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(b_load0[0]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \b_load[1]_i_1 
       (.I0(mem_opb_rw),
        .I1(syst_rready_i),
        .I2(mem_opb_out_data[1]),
        .I3(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I4(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(b_load0[1]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \b_load[2]_i_1 
       (.I0(mem_opb_rw),
        .I1(syst_rready_i),
        .I2(mem_opb_out_data[2]),
        .I3(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I4(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(b_load0[2]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \b_load[3]_i_1 
       (.I0(mem_opb_rw),
        .I1(syst_rready_i),
        .I2(mem_opb_out_data[3]),
        .I3(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I4(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(b_load0[3]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \b_load[4]_i_1 
       (.I0(mem_opb_rw),
        .I1(syst_rready_i),
        .I2(mem_opb_out_data[4]),
        .I3(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I4(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(b_load0[4]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \b_load[5]_i_1 
       (.I0(mem_opb_rw),
        .I1(syst_rready_i),
        .I2(mem_opb_out_data[5]),
        .I3(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I4(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(b_load0[5]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \b_load[6]_i_1 
       (.I0(mem_opb_rw),
        .I1(syst_rready_i),
        .I2(mem_opb_out_data[6]),
        .I3(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I4(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(b_load0[6]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \b_load[7]_i_1 
       (.I0(mem_opb_rw),
        .I1(syst_rready_i),
        .I2(mem_opb_out_data[7]),
        .I3(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I4(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(b_load0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \b_load_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(b_load0[0]),
        .Q(\b_load_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_load_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(b_load0[1]),
        .Q(B));
  FDCE #(
    .INIT(1'b0)) 
    \b_load_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(b_load0[2]),
        .Q(\b_load_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_load_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(b_load0[3]),
        .Q(\b_load_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_load_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(b_load0[4]),
        .Q(\b_load_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_load_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(b_load0[5]),
        .Q(\b_load_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_load_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(b_load0[6]),
        .Q(\b_load_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_load_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(b_load0[7]),
        .Q(\b_load_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter_mult[0]_i_1 
       (.I0(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I1(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .I2(counter_mult[0]),
        .O(next_counter_mult__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT4 #(
    .INIT(16'h1400)) 
    \counter_mult[1]_i_1 
       (.I0(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I1(counter_mult[0]),
        .I2(counter_mult[1]),
        .I3(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(next_counter_mult__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT5 #(
    .INIT(32'h15400000)) 
    \counter_mult[2]_i_1 
       (.I0(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I1(counter_mult[0]),
        .I2(counter_mult[1]),
        .I3(counter_mult[2]),
        .I4(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(next_counter_mult__0[2]));
  LUT6 #(
    .INIT(64'h1555400000000000)) 
    \counter_mult[3]_i_1 
       (.I0(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I1(counter_mult[1]),
        .I2(counter_mult[0]),
        .I3(counter_mult[2]),
        .I4(counter_mult[3]),
        .I5(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(next_counter_mult__0[3]));
  LUT5 #(
    .INIT(32'h15400000)) 
    \counter_mult[4]_i_1 
       (.I0(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I1(\counter_mult[4]_i_2_n_0 ),
        .I2(counter_mult[3]),
        .I3(counter_mult[4]),
        .I4(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(next_counter_mult__0[4]));
  LUT3 #(
    .INIT(8'h80)) 
    \counter_mult[4]_i_2 
       (.I0(counter_mult[2]),
        .I1(counter_mult[0]),
        .I2(counter_mult[1]),
        .O(\counter_mult[4]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_mult_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_mult__0[0]),
        .Q(counter_mult[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_mult_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_mult__0[1]),
        .Q(counter_mult[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_mult_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_mult__0[2]),
        .Q(counter_mult[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_mult_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_mult__0[3]),
        .Q(counter_mult[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_mult_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_mult__0[4]),
        .Q(counter_mult[4]));
  LUT3 #(
    .INIT(8'h04)) 
    \counter_transfer_m[0]_i_1 
       (.I0(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .I1(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I2(counter_transfer_m[0]),
        .O(next_counter_transfer_m__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \counter_transfer_m[1]_i_1 
       (.I0(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .I1(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I2(counter_transfer_m[0]),
        .I3(counter_transfer_m[1]),
        .O(next_counter_transfer_m__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT5 #(
    .INIT(32'h04444000)) 
    \counter_transfer_m[2]_i_1 
       (.I0(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .I1(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I2(counter_transfer_m[0]),
        .I3(counter_transfer_m[1]),
        .I4(counter_transfer_m[2]),
        .O(next_counter_transfer_m__0[2]));
  LUT6 #(
    .INIT(64'h0444444440000000)) 
    \counter_transfer_m[3]_i_1 
       (.I0(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .I1(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I2(counter_transfer_m[1]),
        .I3(counter_transfer_m[0]),
        .I4(counter_transfer_m[2]),
        .I5(counter_transfer_m[3]),
        .O(next_counter_transfer_m__0[3]));
  LUT5 #(
    .INIT(32'h04444000)) 
    \counter_transfer_m[4]_i_1 
       (.I0(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .I1(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I2(\counter_transfer_m[4]_i_2_n_0 ),
        .I3(counter_transfer_m[3]),
        .I4(counter_transfer_m[4]),
        .O(next_counter_transfer_m__0[4]));
  LUT3 #(
    .INIT(8'h80)) 
    \counter_transfer_m[4]_i_2 
       (.I0(counter_transfer_m[2]),
        .I1(counter_transfer_m[0]),
        .I2(counter_transfer_m[1]),
        .O(\counter_transfer_m[4]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_transfer_m_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_transfer_m__0[0]),
        .Q(counter_transfer_m[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_transfer_m_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_transfer_m__0[1]),
        .Q(counter_transfer_m[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_transfer_m_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_transfer_m__0[2]),
        .Q(counter_transfer_m[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_transfer_m_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_transfer_m__0[3]),
        .Q(counter_transfer_m[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_transfer_m_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_transfer_m__0[4]),
        .Q(counter_transfer_m[4]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'h62)) 
    ena_mac_i_1
       (.I0(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I1(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .I2(\FSM_sequential_currentStateSystolicControlUnit[0]_i_2_n_0 ),
        .O(next_ena_mac__0));
  (* ORIG_CELL_NAME = "ena_mac_reg" *) 
  FDCE #(
    .INIT(1'b0)) 
    ena_mac_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_ena_mac__0),
        .Q(ena_mac));
  (* ORIG_CELL_NAME = "ena_mac_reg" *) 
  FDCE #(
    .INIT(1'b0)) 
    ena_mac_reg_rep
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(ena_mac_rep_i_1_n_0),
        .Q(ena_mac_reg_rep_n_0));
  (* ORIG_CELL_NAME = "ena_mac_reg" *) 
  FDCE #(
    .INIT(1'b0)) 
    ena_mac_reg_rep__0
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(ena_mac_rep__0_i_1_n_0),
        .Q(ena_mac_reg_rep__0_n_0));
  (* ORIG_CELL_NAME = "ena_mac_reg" *) 
  FDCE #(
    .INIT(1'b0)) 
    ena_mac_reg_rep__1
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(ena_mac_rep__1_i_1_n_0),
        .Q(ena_mac_reg_rep__1_n_0));
  LUT3 #(
    .INIT(8'h62)) 
    ena_mac_rep__0_i_1
       (.I0(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I1(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .I2(\FSM_sequential_currentStateSystolicControlUnit[0]_i_2_n_0 ),
        .O(ena_mac_rep__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h62)) 
    ena_mac_rep__1_i_1
       (.I0(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I1(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .I2(\FSM_sequential_currentStateSystolicControlUnit[0]_i_2_n_0 ),
        .O(ena_mac_rep__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h62)) 
    ena_mac_rep_i_1
       (.I0(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I1(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .I2(\FSM_sequential_currentStateSystolicControlUnit[0]_i_2_n_0 ),
        .O(ena_mac_rep_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \output_produc_a_b[7][7][7]_i_1 
       (.I0(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[0] ),
        .I1(\FSM_sequential_currentStateSystolicControlUnit_reg_n_0_[1] ),
        .O(\output_produc_a_b[7][7][7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][0][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_62[0]),
        .Q(\syst_output_produc_a_b[0][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][0][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_62[1]),
        .Q(\syst_output_produc_a_b[0][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][0][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_62[2]),
        .Q(\syst_output_produc_a_b[0][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][0][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_62[3]),
        .Q(\syst_output_produc_a_b[0][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][0][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_62[4]),
        .Q(\syst_output_produc_a_b[0][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][0][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_62[5]),
        .Q(\syst_output_produc_a_b[0][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][0][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_62[6]),
        .Q(\syst_output_produc_a_b[0][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][0][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_62[7]),
        .Q(\syst_output_produc_a_b[0][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][1][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_54[0]),
        .Q(\syst_output_produc_a_b[0][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][1][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_54[1]),
        .Q(\syst_output_produc_a_b[0][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][1][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_54[2]),
        .Q(\syst_output_produc_a_b[0][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][1][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_54[3]),
        .Q(\syst_output_produc_a_b[0][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][1][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_54[4]),
        .Q(\syst_output_produc_a_b[0][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][1][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_54[5]),
        .Q(\syst_output_produc_a_b[0][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][1][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_54[6]),
        .Q(\syst_output_produc_a_b[0][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][1][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_54[7]),
        .Q(\syst_output_produc_a_b[0][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][2][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_46[0]),
        .Q(\syst_output_produc_a_b[0][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][2][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_46[1]),
        .Q(\syst_output_produc_a_b[0][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][2][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_46[2]),
        .Q(\syst_output_produc_a_b[0][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][2][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_46[3]),
        .Q(\syst_output_produc_a_b[0][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][2][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_46[4]),
        .Q(\syst_output_produc_a_b[0][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][2][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_46[5]),
        .Q(\syst_output_produc_a_b[0][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][2][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_46[6]),
        .Q(\syst_output_produc_a_b[0][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][2][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_46[7]),
        .Q(\syst_output_produc_a_b[0][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][3][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_38[0]),
        .Q(\syst_output_produc_a_b[0][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][3][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_38[1]),
        .Q(\syst_output_produc_a_b[0][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][3][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_38[2]),
        .Q(\syst_output_produc_a_b[0][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][3][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_38[3]),
        .Q(\syst_output_produc_a_b[0][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][3][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_38[4]),
        .Q(\syst_output_produc_a_b[0][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][3][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_38[5]),
        .Q(\syst_output_produc_a_b[0][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][3][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_38[6]),
        .Q(\syst_output_produc_a_b[0][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][3][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_38[7]),
        .Q(\syst_output_produc_a_b[0][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][4][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_30[0]),
        .Q(\syst_output_produc_a_b[0][4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][4][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_30[1]),
        .Q(\syst_output_produc_a_b[0][4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][4][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_30[2]),
        .Q(\syst_output_produc_a_b[0][4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][4][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_30[3]),
        .Q(\syst_output_produc_a_b[0][4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][4][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_30[4]),
        .Q(\syst_output_produc_a_b[0][4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][4][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_30[5]),
        .Q(\syst_output_produc_a_b[0][4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][4][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_30[6]),
        .Q(\syst_output_produc_a_b[0][4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][4][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_30[7]),
        .Q(\syst_output_produc_a_b[0][4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][5][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_22[0]),
        .Q(\syst_output_produc_a_b[0][5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][5][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_22[1]),
        .Q(\syst_output_produc_a_b[0][5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][5][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_22[2]),
        .Q(\syst_output_produc_a_b[0][5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][5][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_22[3]),
        .Q(\syst_output_produc_a_b[0][5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][5][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_22[4]),
        .Q(\syst_output_produc_a_b[0][5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][5][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_22[5]),
        .Q(\syst_output_produc_a_b[0][5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][5][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_22[6]),
        .Q(\syst_output_produc_a_b[0][5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][5][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_22[7]),
        .Q(\syst_output_produc_a_b[0][5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][6][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_14[0]),
        .Q(\syst_output_produc_a_b[0][6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][6][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_14[1]),
        .Q(\syst_output_produc_a_b[0][6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][6][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_14[2]),
        .Q(\syst_output_produc_a_b[0][6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][6][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_14[3]),
        .Q(\syst_output_produc_a_b[0][6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][6][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_14[4]),
        .Q(\syst_output_produc_a_b[0][6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][6][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_14[5]),
        .Q(\syst_output_produc_a_b[0][6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][6][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_14[6]),
        .Q(\syst_output_produc_a_b[0][6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][6][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_14[7]),
        .Q(\syst_output_produc_a_b[0][6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][7][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_6[0]),
        .Q(\syst_output_produc_a_b[0][7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][7][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_6[1]),
        .Q(\syst_output_produc_a_b[0][7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][7][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_6[2]),
        .Q(\syst_output_produc_a_b[0][7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][7][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_6[3]),
        .Q(\syst_output_produc_a_b[0][7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][7][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_6[4]),
        .Q(\syst_output_produc_a_b[0][7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][7][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_6[5]),
        .Q(\syst_output_produc_a_b[0][7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][7][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_6[6]),
        .Q(\syst_output_produc_a_b[0][7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][7][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_6[7]),
        .Q(\syst_output_produc_a_b[0][7] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][0][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_61[0]),
        .Q(\syst_output_produc_a_b[1][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][0][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_61[1]),
        .Q(\syst_output_produc_a_b[1][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][0][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_61[2]),
        .Q(\syst_output_produc_a_b[1][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][0][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_61[3]),
        .Q(\syst_output_produc_a_b[1][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][0][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_61[4]),
        .Q(\syst_output_produc_a_b[1][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][0][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_61[5]),
        .Q(\syst_output_produc_a_b[1][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][0][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_61[6]),
        .Q(\syst_output_produc_a_b[1][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][0][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_61[7]),
        .Q(\syst_output_produc_a_b[1][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][1][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_53[0]),
        .Q(\syst_output_produc_a_b[1][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][1][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_53[1]),
        .Q(\syst_output_produc_a_b[1][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][1][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_53[2]),
        .Q(\syst_output_produc_a_b[1][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][1][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_53[3]),
        .Q(\syst_output_produc_a_b[1][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][1][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_53[4]),
        .Q(\syst_output_produc_a_b[1][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][1][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_53[5]),
        .Q(\syst_output_produc_a_b[1][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][1][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_53[6]),
        .Q(\syst_output_produc_a_b[1][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][1][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_53[7]),
        .Q(\syst_output_produc_a_b[1][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][2][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_45[0]),
        .Q(\syst_output_produc_a_b[1][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][2][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_45[1]),
        .Q(\syst_output_produc_a_b[1][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][2][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_45[2]),
        .Q(\syst_output_produc_a_b[1][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][2][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_45[3]),
        .Q(\syst_output_produc_a_b[1][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][2][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_45[4]),
        .Q(\syst_output_produc_a_b[1][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][2][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_45[5]),
        .Q(\syst_output_produc_a_b[1][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][2][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_45[6]),
        .Q(\syst_output_produc_a_b[1][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][2][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_45[7]),
        .Q(\syst_output_produc_a_b[1][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][3][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_37[0]),
        .Q(\syst_output_produc_a_b[1][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][3][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_37[1]),
        .Q(\syst_output_produc_a_b[1][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][3][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_37[2]),
        .Q(\syst_output_produc_a_b[1][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][3][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_37[3]),
        .Q(\syst_output_produc_a_b[1][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][3][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_37[4]),
        .Q(\syst_output_produc_a_b[1][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][3][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_37[5]),
        .Q(\syst_output_produc_a_b[1][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][3][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_37[6]),
        .Q(\syst_output_produc_a_b[1][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][3][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_37[7]),
        .Q(\syst_output_produc_a_b[1][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][4][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_29[0]),
        .Q(\syst_output_produc_a_b[1][4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][4][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_29[1]),
        .Q(\syst_output_produc_a_b[1][4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][4][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_29[2]),
        .Q(\syst_output_produc_a_b[1][4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][4][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_29[3]),
        .Q(\syst_output_produc_a_b[1][4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][4][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_29[4]),
        .Q(\syst_output_produc_a_b[1][4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][4][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_29[5]),
        .Q(\syst_output_produc_a_b[1][4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][4][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_29[6]),
        .Q(\syst_output_produc_a_b[1][4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][4][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_29[7]),
        .Q(\syst_output_produc_a_b[1][4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][5][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_21[0]),
        .Q(\syst_output_produc_a_b[1][5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][5][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_21[1]),
        .Q(\syst_output_produc_a_b[1][5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][5][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_21[2]),
        .Q(\syst_output_produc_a_b[1][5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][5][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_21[3]),
        .Q(\syst_output_produc_a_b[1][5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][5][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_21[4]),
        .Q(\syst_output_produc_a_b[1][5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][5][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_21[5]),
        .Q(\syst_output_produc_a_b[1][5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][5][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_21[6]),
        .Q(\syst_output_produc_a_b[1][5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][5][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_21[7]),
        .Q(\syst_output_produc_a_b[1][5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][6][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_13[0]),
        .Q(\syst_output_produc_a_b[1][6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][6][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_13[1]),
        .Q(\syst_output_produc_a_b[1][6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][6][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_13[2]),
        .Q(\syst_output_produc_a_b[1][6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][6][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_13[3]),
        .Q(\syst_output_produc_a_b[1][6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][6][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_13[4]),
        .Q(\syst_output_produc_a_b[1][6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][6][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_13[5]),
        .Q(\syst_output_produc_a_b[1][6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][6][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_13[6]),
        .Q(\syst_output_produc_a_b[1][6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][6][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_13[7]),
        .Q(\syst_output_produc_a_b[1][6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][7][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_5[0]),
        .Q(\syst_output_produc_a_b[1][7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][7][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_5[1]),
        .Q(\syst_output_produc_a_b[1][7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][7][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_5[2]),
        .Q(\syst_output_produc_a_b[1][7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][7][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_5[3]),
        .Q(\syst_output_produc_a_b[1][7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][7][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_5[4]),
        .Q(\syst_output_produc_a_b[1][7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][7][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_5[5]),
        .Q(\syst_output_produc_a_b[1][7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][7][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_5[6]),
        .Q(\syst_output_produc_a_b[1][7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][7][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_5[7]),
        .Q(\syst_output_produc_a_b[1][7] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][0][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_60[0]),
        .Q(\syst_output_produc_a_b[2][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][0][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_60[1]),
        .Q(\syst_output_produc_a_b[2][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][0][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_60[2]),
        .Q(\syst_output_produc_a_b[2][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][0][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_60[3]),
        .Q(\syst_output_produc_a_b[2][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][0][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_60[4]),
        .Q(\syst_output_produc_a_b[2][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][0][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_60[5]),
        .Q(\syst_output_produc_a_b[2][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][0][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_60[6]),
        .Q(\syst_output_produc_a_b[2][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][0][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_60[7]),
        .Q(\syst_output_produc_a_b[2][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][1][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_52[0]),
        .Q(\syst_output_produc_a_b[2][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][1][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_52[1]),
        .Q(\syst_output_produc_a_b[2][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][1][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_52[2]),
        .Q(\syst_output_produc_a_b[2][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][1][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_52[3]),
        .Q(\syst_output_produc_a_b[2][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][1][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_52[4]),
        .Q(\syst_output_produc_a_b[2][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][1][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_52[5]),
        .Q(\syst_output_produc_a_b[2][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][1][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_52[6]),
        .Q(\syst_output_produc_a_b[2][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][1][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_52[7]),
        .Q(\syst_output_produc_a_b[2][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][2][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_44[0]),
        .Q(\syst_output_produc_a_b[2][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][2][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_44[1]),
        .Q(\syst_output_produc_a_b[2][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][2][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_44[2]),
        .Q(\syst_output_produc_a_b[2][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][2][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_44[3]),
        .Q(\syst_output_produc_a_b[2][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][2][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_44[4]),
        .Q(\syst_output_produc_a_b[2][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][2][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_44[5]),
        .Q(\syst_output_produc_a_b[2][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][2][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_44[6]),
        .Q(\syst_output_produc_a_b[2][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][2][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_44[7]),
        .Q(\syst_output_produc_a_b[2][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][3][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_36[0]),
        .Q(\syst_output_produc_a_b[2][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][3][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_36[1]),
        .Q(\syst_output_produc_a_b[2][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][3][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_36[2]),
        .Q(\syst_output_produc_a_b[2][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][3][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_36[3]),
        .Q(\syst_output_produc_a_b[2][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][3][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_36[4]),
        .Q(\syst_output_produc_a_b[2][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][3][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_36[5]),
        .Q(\syst_output_produc_a_b[2][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][3][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_36[6]),
        .Q(\syst_output_produc_a_b[2][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][3][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_36[7]),
        .Q(\syst_output_produc_a_b[2][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][4][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_28[0]),
        .Q(\syst_output_produc_a_b[2][4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][4][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_28[1]),
        .Q(\syst_output_produc_a_b[2][4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][4][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_28[2]),
        .Q(\syst_output_produc_a_b[2][4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][4][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_28[3]),
        .Q(\syst_output_produc_a_b[2][4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][4][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_28[4]),
        .Q(\syst_output_produc_a_b[2][4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][4][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_28[5]),
        .Q(\syst_output_produc_a_b[2][4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][4][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_28[6]),
        .Q(\syst_output_produc_a_b[2][4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][4][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_28[7]),
        .Q(\syst_output_produc_a_b[2][4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][5][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_20[0]),
        .Q(\syst_output_produc_a_b[2][5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][5][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_20[1]),
        .Q(\syst_output_produc_a_b[2][5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][5][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_20[2]),
        .Q(\syst_output_produc_a_b[2][5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][5][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_20[3]),
        .Q(\syst_output_produc_a_b[2][5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][5][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_20[4]),
        .Q(\syst_output_produc_a_b[2][5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][5][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_20[5]),
        .Q(\syst_output_produc_a_b[2][5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][5][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_20[6]),
        .Q(\syst_output_produc_a_b[2][5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][5][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_20[7]),
        .Q(\syst_output_produc_a_b[2][5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][6][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_12[0]),
        .Q(\syst_output_produc_a_b[2][6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][6][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_12[1]),
        .Q(\syst_output_produc_a_b[2][6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][6][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_12[2]),
        .Q(\syst_output_produc_a_b[2][6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][6][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_12[3]),
        .Q(\syst_output_produc_a_b[2][6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][6][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_12[4]),
        .Q(\syst_output_produc_a_b[2][6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][6][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_12[5]),
        .Q(\syst_output_produc_a_b[2][6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][6][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_12[6]),
        .Q(\syst_output_produc_a_b[2][6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][6][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_12[7]),
        .Q(\syst_output_produc_a_b[2][6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][7][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_4[0]),
        .Q(\syst_output_produc_a_b[2][7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][7][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_4[1]),
        .Q(\syst_output_produc_a_b[2][7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][7][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_4[2]),
        .Q(\syst_output_produc_a_b[2][7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][7][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_4[3]),
        .Q(\syst_output_produc_a_b[2][7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][7][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_4[4]),
        .Q(\syst_output_produc_a_b[2][7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][7][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_4[5]),
        .Q(\syst_output_produc_a_b[2][7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][7][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_4[6]),
        .Q(\syst_output_produc_a_b[2][7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][7][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_4[7]),
        .Q(\syst_output_produc_a_b[2][7] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][0][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_59[0]),
        .Q(\syst_output_produc_a_b[3][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][0][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_59[1]),
        .Q(\syst_output_produc_a_b[3][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][0][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_59[2]),
        .Q(\syst_output_produc_a_b[3][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][0][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_59[3]),
        .Q(\syst_output_produc_a_b[3][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][0][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_59[4]),
        .Q(\syst_output_produc_a_b[3][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][0][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_59[5]),
        .Q(\syst_output_produc_a_b[3][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][0][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_59[6]),
        .Q(\syst_output_produc_a_b[3][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][0][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_59[7]),
        .Q(\syst_output_produc_a_b[3][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][1][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_51[0]),
        .Q(\syst_output_produc_a_b[3][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][1][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_51[1]),
        .Q(\syst_output_produc_a_b[3][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][1][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_51[2]),
        .Q(\syst_output_produc_a_b[3][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][1][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_51[3]),
        .Q(\syst_output_produc_a_b[3][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][1][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_51[4]),
        .Q(\syst_output_produc_a_b[3][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][1][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_51[5]),
        .Q(\syst_output_produc_a_b[3][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][1][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_51[6]),
        .Q(\syst_output_produc_a_b[3][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][1][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_51[7]),
        .Q(\syst_output_produc_a_b[3][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][2][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_43[0]),
        .Q(\syst_output_produc_a_b[3][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][2][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_43[1]),
        .Q(\syst_output_produc_a_b[3][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][2][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_43[2]),
        .Q(\syst_output_produc_a_b[3][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][2][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_43[3]),
        .Q(\syst_output_produc_a_b[3][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][2][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_43[4]),
        .Q(\syst_output_produc_a_b[3][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][2][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_43[5]),
        .Q(\syst_output_produc_a_b[3][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][2][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_43[6]),
        .Q(\syst_output_produc_a_b[3][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][2][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_43[7]),
        .Q(\syst_output_produc_a_b[3][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][3][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_35[0]),
        .Q(\syst_output_produc_a_b[3][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][3][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_35[1]),
        .Q(\syst_output_produc_a_b[3][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][3][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_35[2]),
        .Q(\syst_output_produc_a_b[3][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][3][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_35[3]),
        .Q(\syst_output_produc_a_b[3][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][3][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_35[4]),
        .Q(\syst_output_produc_a_b[3][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][3][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_35[5]),
        .Q(\syst_output_produc_a_b[3][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][3][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_35[6]),
        .Q(\syst_output_produc_a_b[3][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][3][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_35[7]),
        .Q(\syst_output_produc_a_b[3][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][4][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_27[0]),
        .Q(\syst_output_produc_a_b[3][4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][4][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_27[1]),
        .Q(\syst_output_produc_a_b[3][4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][4][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_27[2]),
        .Q(\syst_output_produc_a_b[3][4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][4][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_27[3]),
        .Q(\syst_output_produc_a_b[3][4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][4][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_27[4]),
        .Q(\syst_output_produc_a_b[3][4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][4][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_27[5]),
        .Q(\syst_output_produc_a_b[3][4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][4][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_27[6]),
        .Q(\syst_output_produc_a_b[3][4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][4][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_27[7]),
        .Q(\syst_output_produc_a_b[3][4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][5][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_19[0]),
        .Q(\syst_output_produc_a_b[3][5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][5][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_19[1]),
        .Q(\syst_output_produc_a_b[3][5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][5][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_19[2]),
        .Q(\syst_output_produc_a_b[3][5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][5][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_19[3]),
        .Q(\syst_output_produc_a_b[3][5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][5][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_19[4]),
        .Q(\syst_output_produc_a_b[3][5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][5][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_19[5]),
        .Q(\syst_output_produc_a_b[3][5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][5][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_19[6]),
        .Q(\syst_output_produc_a_b[3][5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][5][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_19[7]),
        .Q(\syst_output_produc_a_b[3][5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][6][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_11[0]),
        .Q(\syst_output_produc_a_b[3][6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][6][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_11[1]),
        .Q(\syst_output_produc_a_b[3][6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][6][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_11[2]),
        .Q(\syst_output_produc_a_b[3][6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][6][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_11[3]),
        .Q(\syst_output_produc_a_b[3][6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][6][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_11[4]),
        .Q(\syst_output_produc_a_b[3][6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][6][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_11[5]),
        .Q(\syst_output_produc_a_b[3][6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][6][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_11[6]),
        .Q(\syst_output_produc_a_b[3][6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][6][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_11[7]),
        .Q(\syst_output_produc_a_b[3][6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][7][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_3[0]),
        .Q(\syst_output_produc_a_b[3][7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][7][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_3[1]),
        .Q(\syst_output_produc_a_b[3][7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][7][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_3[2]),
        .Q(\syst_output_produc_a_b[3][7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][7][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_3[3]),
        .Q(\syst_output_produc_a_b[3][7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][7][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_3[4]),
        .Q(\syst_output_produc_a_b[3][7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][7][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_3[5]),
        .Q(\syst_output_produc_a_b[3][7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][7][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_3[6]),
        .Q(\syst_output_produc_a_b[3][7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][7][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_3[7]),
        .Q(\syst_output_produc_a_b[3][7] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][0][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_58[0]),
        .Q(\syst_output_produc_a_b[4][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][0][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_58[1]),
        .Q(\syst_output_produc_a_b[4][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][0][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_58[2]),
        .Q(\syst_output_produc_a_b[4][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][0][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_58[3]),
        .Q(\syst_output_produc_a_b[4][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][0][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_58[4]),
        .Q(\syst_output_produc_a_b[4][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][0][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_58[5]),
        .Q(\syst_output_produc_a_b[4][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][0][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_58[6]),
        .Q(\syst_output_produc_a_b[4][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][0][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_58[7]),
        .Q(\syst_output_produc_a_b[4][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][1][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_50[0]),
        .Q(\syst_output_produc_a_b[4][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][1][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_50[1]),
        .Q(\syst_output_produc_a_b[4][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][1][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_50[2]),
        .Q(\syst_output_produc_a_b[4][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][1][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_50[3]),
        .Q(\syst_output_produc_a_b[4][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][1][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_50[4]),
        .Q(\syst_output_produc_a_b[4][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][1][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_50[5]),
        .Q(\syst_output_produc_a_b[4][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][1][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_50[6]),
        .Q(\syst_output_produc_a_b[4][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][1][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_50[7]),
        .Q(\syst_output_produc_a_b[4][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][2][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_42[0]),
        .Q(\syst_output_produc_a_b[4][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][2][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_42[1]),
        .Q(\syst_output_produc_a_b[4][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][2][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_42[2]),
        .Q(\syst_output_produc_a_b[4][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][2][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_42[3]),
        .Q(\syst_output_produc_a_b[4][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][2][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_42[4]),
        .Q(\syst_output_produc_a_b[4][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][2][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_42[5]),
        .Q(\syst_output_produc_a_b[4][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][2][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_42[6]),
        .Q(\syst_output_produc_a_b[4][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][2][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_42[7]),
        .Q(\syst_output_produc_a_b[4][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][3][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_34[0]),
        .Q(\syst_output_produc_a_b[4][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][3][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_34[1]),
        .Q(\syst_output_produc_a_b[4][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][3][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_34[2]),
        .Q(\syst_output_produc_a_b[4][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][3][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_34[3]),
        .Q(\syst_output_produc_a_b[4][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][3][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_34[4]),
        .Q(\syst_output_produc_a_b[4][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][3][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_34[5]),
        .Q(\syst_output_produc_a_b[4][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][3][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_34[6]),
        .Q(\syst_output_produc_a_b[4][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][3][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_34[7]),
        .Q(\syst_output_produc_a_b[4][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][4][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_26[0]),
        .Q(\syst_output_produc_a_b[4][4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][4][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_26[1]),
        .Q(\syst_output_produc_a_b[4][4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][4][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_26[2]),
        .Q(\syst_output_produc_a_b[4][4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][4][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_26[3]),
        .Q(\syst_output_produc_a_b[4][4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][4][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_26[4]),
        .Q(\syst_output_produc_a_b[4][4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][4][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_26[5]),
        .Q(\syst_output_produc_a_b[4][4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][4][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_26[6]),
        .Q(\syst_output_produc_a_b[4][4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][4][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_26[7]),
        .Q(\syst_output_produc_a_b[4][4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][5][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_18[0]),
        .Q(\syst_output_produc_a_b[4][5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][5][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_18[1]),
        .Q(\syst_output_produc_a_b[4][5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][5][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_18[2]),
        .Q(\syst_output_produc_a_b[4][5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][5][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_18[3]),
        .Q(\syst_output_produc_a_b[4][5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][5][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_18[4]),
        .Q(\syst_output_produc_a_b[4][5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][5][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_18[5]),
        .Q(\syst_output_produc_a_b[4][5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][5][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_18[6]),
        .Q(\syst_output_produc_a_b[4][5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][5][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_18[7]),
        .Q(\syst_output_produc_a_b[4][5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][6][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_10[0]),
        .Q(\syst_output_produc_a_b[4][6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][6][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_10[1]),
        .Q(\syst_output_produc_a_b[4][6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][6][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_10[2]),
        .Q(\syst_output_produc_a_b[4][6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][6][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_10[3]),
        .Q(\syst_output_produc_a_b[4][6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][6][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_10[4]),
        .Q(\syst_output_produc_a_b[4][6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][6][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_10[5]),
        .Q(\syst_output_produc_a_b[4][6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][6][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_10[6]),
        .Q(\syst_output_produc_a_b[4][6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][6][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_10[7]),
        .Q(\syst_output_produc_a_b[4][6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][7][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_2[0]),
        .Q(\syst_output_produc_a_b[4][7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][7][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_2[1]),
        .Q(\syst_output_produc_a_b[4][7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][7][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_2[2]),
        .Q(\syst_output_produc_a_b[4][7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][7][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_2[3]),
        .Q(\syst_output_produc_a_b[4][7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][7][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_2[4]),
        .Q(\syst_output_produc_a_b[4][7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][7][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_2[5]),
        .Q(\syst_output_produc_a_b[4][7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][7][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_2[6]),
        .Q(\syst_output_produc_a_b[4][7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][7][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_2[7]),
        .Q(\syst_output_produc_a_b[4][7] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][0][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_57[0]),
        .Q(\syst_output_produc_a_b[5][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][0][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_57[1]),
        .Q(\syst_output_produc_a_b[5][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][0][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_57[2]),
        .Q(\syst_output_produc_a_b[5][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][0][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_57[3]),
        .Q(\syst_output_produc_a_b[5][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][0][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_57[4]),
        .Q(\syst_output_produc_a_b[5][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][0][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_57[5]),
        .Q(\syst_output_produc_a_b[5][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][0][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_57[6]),
        .Q(\syst_output_produc_a_b[5][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][0][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_57[7]),
        .Q(\syst_output_produc_a_b[5][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][1][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_49[0]),
        .Q(\syst_output_produc_a_b[5][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][1][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_49[1]),
        .Q(\syst_output_produc_a_b[5][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][1][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_49[2]),
        .Q(\syst_output_produc_a_b[5][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][1][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_49[3]),
        .Q(\syst_output_produc_a_b[5][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][1][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_49[4]),
        .Q(\syst_output_produc_a_b[5][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][1][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_49[5]),
        .Q(\syst_output_produc_a_b[5][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][1][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_49[6]),
        .Q(\syst_output_produc_a_b[5][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][1][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_49[7]),
        .Q(\syst_output_produc_a_b[5][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][2][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_41[0]),
        .Q(\syst_output_produc_a_b[5][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][2][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_41[1]),
        .Q(\syst_output_produc_a_b[5][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][2][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_41[2]),
        .Q(\syst_output_produc_a_b[5][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][2][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_41[3]),
        .Q(\syst_output_produc_a_b[5][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][2][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_41[4]),
        .Q(\syst_output_produc_a_b[5][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][2][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_41[5]),
        .Q(\syst_output_produc_a_b[5][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][2][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_41[6]),
        .Q(\syst_output_produc_a_b[5][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][2][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_41[7]),
        .Q(\syst_output_produc_a_b[5][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][3][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_33[0]),
        .Q(\syst_output_produc_a_b[5][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][3][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_33[1]),
        .Q(\syst_output_produc_a_b[5][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][3][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_33[2]),
        .Q(\syst_output_produc_a_b[5][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][3][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_33[3]),
        .Q(\syst_output_produc_a_b[5][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][3][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_33[4]),
        .Q(\syst_output_produc_a_b[5][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][3][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_33[5]),
        .Q(\syst_output_produc_a_b[5][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][3][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_33[6]),
        .Q(\syst_output_produc_a_b[5][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][3][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_33[7]),
        .Q(\syst_output_produc_a_b[5][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][4][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_25[0]),
        .Q(\syst_output_produc_a_b[5][4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][4][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_25[1]),
        .Q(\syst_output_produc_a_b[5][4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][4][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_25[2]),
        .Q(\syst_output_produc_a_b[5][4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][4][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_25[3]),
        .Q(\syst_output_produc_a_b[5][4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][4][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_25[4]),
        .Q(\syst_output_produc_a_b[5][4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][4][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_25[5]),
        .Q(\syst_output_produc_a_b[5][4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][4][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_25[6]),
        .Q(\syst_output_produc_a_b[5][4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][4][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_25[7]),
        .Q(\syst_output_produc_a_b[5][4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][5][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_17[0]),
        .Q(\syst_output_produc_a_b[5][5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][5][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_17[1]),
        .Q(\syst_output_produc_a_b[5][5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][5][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_17[2]),
        .Q(\syst_output_produc_a_b[5][5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][5][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_17[3]),
        .Q(\syst_output_produc_a_b[5][5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][5][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_17[4]),
        .Q(\syst_output_produc_a_b[5][5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][5][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_17[5]),
        .Q(\syst_output_produc_a_b[5][5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][5][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_17[6]),
        .Q(\syst_output_produc_a_b[5][5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][5][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_17[7]),
        .Q(\syst_output_produc_a_b[5][5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][6][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_9[0]),
        .Q(\syst_output_produc_a_b[5][6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][6][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_9[1]),
        .Q(\syst_output_produc_a_b[5][6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][6][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_9[2]),
        .Q(\syst_output_produc_a_b[5][6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][6][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_9[3]),
        .Q(\syst_output_produc_a_b[5][6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][6][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_9[4]),
        .Q(\syst_output_produc_a_b[5][6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][6][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_9[5]),
        .Q(\syst_output_produc_a_b[5][6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][6][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_9[6]),
        .Q(\syst_output_produc_a_b[5][6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][6][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_9[7]),
        .Q(\syst_output_produc_a_b[5][6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][7][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_1[0]),
        .Q(\syst_output_produc_a_b[5][7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][7][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_1[1]),
        .Q(\syst_output_produc_a_b[5][7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][7][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_1[2]),
        .Q(\syst_output_produc_a_b[5][7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][7][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_1[3]),
        .Q(\syst_output_produc_a_b[5][7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][7][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_1[4]),
        .Q(\syst_output_produc_a_b[5][7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][7][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_1[5]),
        .Q(\syst_output_produc_a_b[5][7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][7][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_1[6]),
        .Q(\syst_output_produc_a_b[5][7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][7][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_1[7]),
        .Q(\syst_output_produc_a_b[5][7] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][0][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_56[0]),
        .Q(\syst_output_produc_a_b[6][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][0][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_56[1]),
        .Q(\syst_output_produc_a_b[6][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][0][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_56[2]),
        .Q(\syst_output_produc_a_b[6][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][0][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_56[3]),
        .Q(\syst_output_produc_a_b[6][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][0][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_56[4]),
        .Q(\syst_output_produc_a_b[6][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][0][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_56[5]),
        .Q(\syst_output_produc_a_b[6][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][0][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_56[6]),
        .Q(\syst_output_produc_a_b[6][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][0][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_56[7]),
        .Q(\syst_output_produc_a_b[6][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][1][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_48[0]),
        .Q(\syst_output_produc_a_b[6][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][1][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_48[1]),
        .Q(\syst_output_produc_a_b[6][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][1][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_48[2]),
        .Q(\syst_output_produc_a_b[6][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][1][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_48[3]),
        .Q(\syst_output_produc_a_b[6][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][1][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_48[4]),
        .Q(\syst_output_produc_a_b[6][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][1][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_48[5]),
        .Q(\syst_output_produc_a_b[6][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][1][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_48[6]),
        .Q(\syst_output_produc_a_b[6][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][1][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_48[7]),
        .Q(\syst_output_produc_a_b[6][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][2][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_40[0]),
        .Q(\syst_output_produc_a_b[6][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][2][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_40[1]),
        .Q(\syst_output_produc_a_b[6][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][2][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_40[2]),
        .Q(\syst_output_produc_a_b[6][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][2][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_40[3]),
        .Q(\syst_output_produc_a_b[6][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][2][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_40[4]),
        .Q(\syst_output_produc_a_b[6][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][2][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_40[5]),
        .Q(\syst_output_produc_a_b[6][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][2][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_40[6]),
        .Q(\syst_output_produc_a_b[6][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][2][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_40[7]),
        .Q(\syst_output_produc_a_b[6][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][3][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_32[0]),
        .Q(\syst_output_produc_a_b[6][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][3][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_32[1]),
        .Q(\syst_output_produc_a_b[6][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][3][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_32[2]),
        .Q(\syst_output_produc_a_b[6][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][3][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_32[3]),
        .Q(\syst_output_produc_a_b[6][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][3][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_32[4]),
        .Q(\syst_output_produc_a_b[6][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][3][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_32[5]),
        .Q(\syst_output_produc_a_b[6][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][3][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_32[6]),
        .Q(\syst_output_produc_a_b[6][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][3][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_32[7]),
        .Q(\syst_output_produc_a_b[6][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][4][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_24[0]),
        .Q(\syst_output_produc_a_b[6][4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][4][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_24[1]),
        .Q(\syst_output_produc_a_b[6][4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][4][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_24[2]),
        .Q(\syst_output_produc_a_b[6][4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][4][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_24[3]),
        .Q(\syst_output_produc_a_b[6][4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][4][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_24[4]),
        .Q(\syst_output_produc_a_b[6][4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][4][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_24[5]),
        .Q(\syst_output_produc_a_b[6][4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][4][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_24[6]),
        .Q(\syst_output_produc_a_b[6][4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][4][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_24[7]),
        .Q(\syst_output_produc_a_b[6][4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][5][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_16[0]),
        .Q(\syst_output_produc_a_b[6][5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][5][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_16[1]),
        .Q(\syst_output_produc_a_b[6][5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][5][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_16[2]),
        .Q(\syst_output_produc_a_b[6][5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][5][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_16[3]),
        .Q(\syst_output_produc_a_b[6][5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][5][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_16[4]),
        .Q(\syst_output_produc_a_b[6][5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][5][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_16[5]),
        .Q(\syst_output_produc_a_b[6][5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][5][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_16[6]),
        .Q(\syst_output_produc_a_b[6][5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][5][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_16[7]),
        .Q(\syst_output_produc_a_b[6][5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][6][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_8[0]),
        .Q(\syst_output_produc_a_b[6][6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][6][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_8[1]),
        .Q(\syst_output_produc_a_b[6][6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][6][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_8[2]),
        .Q(\syst_output_produc_a_b[6][6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][6][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_8[3]),
        .Q(\syst_output_produc_a_b[6][6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][6][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_8[4]),
        .Q(\syst_output_produc_a_b[6][6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][6][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_8[5]),
        .Q(\syst_output_produc_a_b[6][6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][6][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_8[6]),
        .Q(\syst_output_produc_a_b[6][6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][6][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_8[7]),
        .Q(\syst_output_produc_a_b[6][6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][7][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_0[0]),
        .Q(\syst_output_produc_a_b[6][7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][7][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_0[1]),
        .Q(\syst_output_produc_a_b[6][7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][7][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_0[2]),
        .Q(\syst_output_produc_a_b[6][7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][7][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_0[3]),
        .Q(\syst_output_produc_a_b[6][7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][7][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_0[4]),
        .Q(\syst_output_produc_a_b[6][7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][7][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_0[5]),
        .Q(\syst_output_produc_a_b[6][7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][7][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_0[6]),
        .Q(\syst_output_produc_a_b[6][7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][7][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_0[7]),
        .Q(\syst_output_produc_a_b[6][7] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][0][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_55[0]),
        .Q(\syst_output_produc_a_b[7][0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][0][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_55[1]),
        .Q(\syst_output_produc_a_b[7][0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][0][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_55[2]),
        .Q(\syst_output_produc_a_b[7][0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][0][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_55[3]),
        .Q(\syst_output_produc_a_b[7][0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][0][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_55[4]),
        .Q(\syst_output_produc_a_b[7][0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][0][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_55[5]),
        .Q(\syst_output_produc_a_b[7][0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][0][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_55[6]),
        .Q(\syst_output_produc_a_b[7][0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][0][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_55[7]),
        .Q(\syst_output_produc_a_b[7][0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][1][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_47[0]),
        .Q(\syst_output_produc_a_b[7][1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][1][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_47[1]),
        .Q(\syst_output_produc_a_b[7][1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][1][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_47[2]),
        .Q(\syst_output_produc_a_b[7][1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][1][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_47[3]),
        .Q(\syst_output_produc_a_b[7][1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][1][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_47[4]),
        .Q(\syst_output_produc_a_b[7][1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][1][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_47[5]),
        .Q(\syst_output_produc_a_b[7][1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][1][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_47[6]),
        .Q(\syst_output_produc_a_b[7][1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][1][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_47[7]),
        .Q(\syst_output_produc_a_b[7][1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][2][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_39[0]),
        .Q(\syst_output_produc_a_b[7][2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][2][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_39[1]),
        .Q(\syst_output_produc_a_b[7][2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][2][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_39[2]),
        .Q(\syst_output_produc_a_b[7][2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][2][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_39[3]),
        .Q(\syst_output_produc_a_b[7][2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][2][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_39[4]),
        .Q(\syst_output_produc_a_b[7][2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][2][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_39[5]),
        .Q(\syst_output_produc_a_b[7][2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][2][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_39[6]),
        .Q(\syst_output_produc_a_b[7][2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][2][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_39[7]),
        .Q(\syst_output_produc_a_b[7][2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][3][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_31[0]),
        .Q(\syst_output_produc_a_b[7][3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][3][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_31[1]),
        .Q(\syst_output_produc_a_b[7][3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][3][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_31[2]),
        .Q(\syst_output_produc_a_b[7][3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][3][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_31[3]),
        .Q(\syst_output_produc_a_b[7][3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][3][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_31[4]),
        .Q(\syst_output_produc_a_b[7][3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][3][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_31[5]),
        .Q(\syst_output_produc_a_b[7][3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][3][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_31[6]),
        .Q(\syst_output_produc_a_b[7][3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][3][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_31[7]),
        .Q(\syst_output_produc_a_b[7][3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][4][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_23[0]),
        .Q(\syst_output_produc_a_b[7][4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][4][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_23[1]),
        .Q(\syst_output_produc_a_b[7][4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][4][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_23[2]),
        .Q(\syst_output_produc_a_b[7][4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][4][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_23[3]),
        .Q(\syst_output_produc_a_b[7][4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][4][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_23[4]),
        .Q(\syst_output_produc_a_b[7][4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][4][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_23[5]),
        .Q(\syst_output_produc_a_b[7][4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][4][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_23[6]),
        .Q(\syst_output_produc_a_b[7][4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][4][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_23[7]),
        .Q(\syst_output_produc_a_b[7][4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][5][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_15[0]),
        .Q(\syst_output_produc_a_b[7][5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][5][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_15[1]),
        .Q(\syst_output_produc_a_b[7][5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][5][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_15[2]),
        .Q(\syst_output_produc_a_b[7][5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][5][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_15[3]),
        .Q(\syst_output_produc_a_b[7][5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][5][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_15[4]),
        .Q(\syst_output_produc_a_b[7][5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][5][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_15[5]),
        .Q(\syst_output_produc_a_b[7][5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][5][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_15[6]),
        .Q(\syst_output_produc_a_b[7][5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][5][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_15[7]),
        .Q(\syst_output_produc_a_b[7][5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][6][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_7[0]),
        .Q(\syst_output_produc_a_b[7][6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][6][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_7[1]),
        .Q(\syst_output_produc_a_b[7][6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][6][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_7[2]),
        .Q(\syst_output_produc_a_b[7][6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][6][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_7[3]),
        .Q(\syst_output_produc_a_b[7][6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][6][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_7[4]),
        .Q(\syst_output_produc_a_b[7][6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][6][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_7[5]),
        .Q(\syst_output_produc_a_b[7][6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][6][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_7[6]),
        .Q(\syst_output_produc_a_b[7][6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][6][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_7[7]),
        .Q(\syst_output_produc_a_b[7][6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][7][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg[0]),
        .Q(\syst_output_produc_a_b[7][7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][7][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg[1]),
        .Q(\syst_output_produc_a_b[7][7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][7][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg[2]),
        .Q(\syst_output_produc_a_b[7][7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][7][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg[3]),
        .Q(\syst_output_produc_a_b[7][7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][7][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg[4]),
        .Q(\syst_output_produc_a_b[7][7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][7][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg[5]),
        .Q(\syst_output_produc_a_b[7][7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][7][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg[6]),
        .Q(\syst_output_produc_a_b[7][7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][7][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg[7]),
        .Q(\syst_output_produc_a_b[7][7] [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_10
       (.I0(sdata_tx_out_reg_i_27_n_0),
        .I1(sdata_tx_out_reg_i_28_n_0),
        .I2(sdata_tx_out_i_3_0[2]),
        .I3(sdata_tx_out_reg_i_29_n_0),
        .I4(sdata_tx_out_i_3_0[1]),
        .I5(sdata_tx_out_reg_i_30_n_0),
        .O(uart_data_tx_in[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_11
       (.I0(sdata_tx_out_reg_i_31_n_0),
        .I1(sdata_tx_out_reg_i_32_n_0),
        .I2(sdata_tx_out_i_3_0[2]),
        .I3(sdata_tx_out_reg_i_33_n_0),
        .I4(sdata_tx_out_i_3_0[1]),
        .I5(sdata_tx_out_reg_i_34_n_0),
        .O(uart_data_tx_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_111
       (.I0(\syst_output_produc_a_b[3][6] [7]),
        .I1(\syst_output_produc_a_b[2][6] [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][6] [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][6] [7]),
        .O(sdata_tx_out_i_111_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_112
       (.I0(\syst_output_produc_a_b[7][6] [7]),
        .I1(\syst_output_produc_a_b[6][6] [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][6] [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][6] [7]),
        .O(sdata_tx_out_i_112_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_113
       (.I0(\syst_output_produc_a_b[3][7] [7]),
        .I1(\syst_output_produc_a_b[2][7] [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][7] [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][7] [7]),
        .O(sdata_tx_out_i_113_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_114
       (.I0(\syst_output_produc_a_b[7][7] [7]),
        .I1(\syst_output_produc_a_b[6][7] [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][7] [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][7] [7]),
        .O(sdata_tx_out_i_114_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_115
       (.I0(\syst_output_produc_a_b[3][4] [7]),
        .I1(\syst_output_produc_a_b[2][4] [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][4] [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][4] [7]),
        .O(sdata_tx_out_i_115_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_116
       (.I0(\syst_output_produc_a_b[7][4] [7]),
        .I1(\syst_output_produc_a_b[6][4] [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][4] [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][4] [7]),
        .O(sdata_tx_out_i_116_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_117
       (.I0(\syst_output_produc_a_b[3][5] [7]),
        .I1(\syst_output_produc_a_b[2][5] [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][5] [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][5] [7]),
        .O(sdata_tx_out_i_117_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_118
       (.I0(\syst_output_produc_a_b[7][5] [7]),
        .I1(\syst_output_produc_a_b[6][5] [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][5] [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][5] [7]),
        .O(sdata_tx_out_i_118_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_119
       (.I0(\syst_output_produc_a_b[3][2] [7]),
        .I1(\syst_output_produc_a_b[2][2] [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][2] [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][2] [7]),
        .O(sdata_tx_out_i_119_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_12
       (.I0(sdata_tx_out_reg_i_35_n_0),
        .I1(sdata_tx_out_reg_i_36_n_0),
        .I2(sdata_tx_out_i_3_0[2]),
        .I3(sdata_tx_out_reg_i_37_n_0),
        .I4(sdata_tx_out_i_3_0[1]),
        .I5(sdata_tx_out_reg_i_38_n_0),
        .O(uart_data_tx_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_120
       (.I0(\syst_output_produc_a_b[7][2] [7]),
        .I1(\syst_output_produc_a_b[6][2] [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][2] [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][2] [7]),
        .O(sdata_tx_out_i_120_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_121
       (.I0(\syst_output_produc_a_b[3][3] [7]),
        .I1(\syst_output_produc_a_b[2][3] [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][3] [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][3] [7]),
        .O(sdata_tx_out_i_121_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_122
       (.I0(\syst_output_produc_a_b[7][3] [7]),
        .I1(\syst_output_produc_a_b[6][3] [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][3] [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][3] [7]),
        .O(sdata_tx_out_i_122_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_123
       (.I0(\syst_output_produc_a_b[3][0] [7]),
        .I1(\syst_output_produc_a_b[2][0] [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][0] [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][0] [7]),
        .O(sdata_tx_out_i_123_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_124
       (.I0(\syst_output_produc_a_b[7][0] [7]),
        .I1(\syst_output_produc_a_b[6][0] [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][0] [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][0] [7]),
        .O(sdata_tx_out_i_124_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_125
       (.I0(\syst_output_produc_a_b[3][1] [7]),
        .I1(\syst_output_produc_a_b[2][1] [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][1] [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][1] [7]),
        .O(sdata_tx_out_i_125_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_126
       (.I0(\syst_output_produc_a_b[7][1] [7]),
        .I1(\syst_output_produc_a_b[6][1] [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][1] [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][1] [7]),
        .O(sdata_tx_out_i_126_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_127
       (.I0(\syst_output_produc_a_b[3][6] [6]),
        .I1(\syst_output_produc_a_b[2][6] [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][6] [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][6] [6]),
        .O(sdata_tx_out_i_127_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_128
       (.I0(\syst_output_produc_a_b[7][6] [6]),
        .I1(\syst_output_produc_a_b[6][6] [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][6] [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][6] [6]),
        .O(sdata_tx_out_i_128_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_129
       (.I0(\syst_output_produc_a_b[3][7] [6]),
        .I1(\syst_output_produc_a_b[2][7] [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][7] [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][7] [6]),
        .O(sdata_tx_out_i_129_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_13
       (.I0(sdata_tx_out_reg_i_39_n_0),
        .I1(sdata_tx_out_reg_i_40_n_0),
        .I2(sdata_tx_out_i_3_0[2]),
        .I3(sdata_tx_out_reg_i_41_n_0),
        .I4(sdata_tx_out_i_3_0[1]),
        .I5(sdata_tx_out_reg_i_42_n_0),
        .O(uart_data_tx_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_130
       (.I0(\syst_output_produc_a_b[7][7] [6]),
        .I1(\syst_output_produc_a_b[6][7] [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][7] [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][7] [6]),
        .O(sdata_tx_out_i_130_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_131
       (.I0(\syst_output_produc_a_b[3][4] [6]),
        .I1(\syst_output_produc_a_b[2][4] [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][4] [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][4] [6]),
        .O(sdata_tx_out_i_131_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_132
       (.I0(\syst_output_produc_a_b[7][4] [6]),
        .I1(\syst_output_produc_a_b[6][4] [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][4] [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][4] [6]),
        .O(sdata_tx_out_i_132_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_133
       (.I0(\syst_output_produc_a_b[3][5] [6]),
        .I1(\syst_output_produc_a_b[2][5] [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][5] [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][5] [6]),
        .O(sdata_tx_out_i_133_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_134
       (.I0(\syst_output_produc_a_b[7][5] [6]),
        .I1(\syst_output_produc_a_b[6][5] [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][5] [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][5] [6]),
        .O(sdata_tx_out_i_134_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_135
       (.I0(\syst_output_produc_a_b[3][2] [6]),
        .I1(\syst_output_produc_a_b[2][2] [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][2] [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][2] [6]),
        .O(sdata_tx_out_i_135_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_136
       (.I0(\syst_output_produc_a_b[7][2] [6]),
        .I1(\syst_output_produc_a_b[6][2] [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][2] [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][2] [6]),
        .O(sdata_tx_out_i_136_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_137
       (.I0(\syst_output_produc_a_b[3][3] [6]),
        .I1(\syst_output_produc_a_b[2][3] [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][3] [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][3] [6]),
        .O(sdata_tx_out_i_137_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_138
       (.I0(\syst_output_produc_a_b[7][3] [6]),
        .I1(\syst_output_produc_a_b[6][3] [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][3] [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][3] [6]),
        .O(sdata_tx_out_i_138_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_139
       (.I0(\syst_output_produc_a_b[3][0] [6]),
        .I1(\syst_output_produc_a_b[2][0] [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][0] [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][0] [6]),
        .O(sdata_tx_out_i_139_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_14
       (.I0(sdata_tx_out_reg_i_43_n_0),
        .I1(sdata_tx_out_reg_i_44_n_0),
        .I2(sdata_tx_out_i_3_0[2]),
        .I3(sdata_tx_out_reg_i_45_n_0),
        .I4(sdata_tx_out_i_3_0[1]),
        .I5(sdata_tx_out_reg_i_46_n_0),
        .O(\j_counter_reg[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_140
       (.I0(\syst_output_produc_a_b[7][0] [6]),
        .I1(\syst_output_produc_a_b[6][0] [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][0] [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][0] [6]),
        .O(sdata_tx_out_i_140_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_141
       (.I0(\syst_output_produc_a_b[3][1] [6]),
        .I1(\syst_output_produc_a_b[2][1] [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][1] [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][1] [6]),
        .O(sdata_tx_out_i_141_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_142
       (.I0(\syst_output_produc_a_b[7][1] [6]),
        .I1(\syst_output_produc_a_b[6][1] [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][1] [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][1] [6]),
        .O(sdata_tx_out_i_142_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_143
       (.I0(\syst_output_produc_a_b[3][6] [5]),
        .I1(\syst_output_produc_a_b[2][6] [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][6] [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][6] [5]),
        .O(sdata_tx_out_i_143_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_144
       (.I0(\syst_output_produc_a_b[7][6] [5]),
        .I1(\syst_output_produc_a_b[6][6] [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][6] [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][6] [5]),
        .O(sdata_tx_out_i_144_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_145
       (.I0(\syst_output_produc_a_b[3][7] [5]),
        .I1(\syst_output_produc_a_b[2][7] [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][7] [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][7] [5]),
        .O(sdata_tx_out_i_145_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_146
       (.I0(\syst_output_produc_a_b[7][7] [5]),
        .I1(\syst_output_produc_a_b[6][7] [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][7] [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][7] [5]),
        .O(sdata_tx_out_i_146_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_147
       (.I0(\syst_output_produc_a_b[3][4] [5]),
        .I1(\syst_output_produc_a_b[2][4] [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][4] [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][4] [5]),
        .O(sdata_tx_out_i_147_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_148
       (.I0(\syst_output_produc_a_b[7][4] [5]),
        .I1(\syst_output_produc_a_b[6][4] [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][4] [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][4] [5]),
        .O(sdata_tx_out_i_148_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_149
       (.I0(\syst_output_produc_a_b[3][5] [5]),
        .I1(\syst_output_produc_a_b[2][5] [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][5] [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][5] [5]),
        .O(sdata_tx_out_i_149_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_150
       (.I0(\syst_output_produc_a_b[7][5] [5]),
        .I1(\syst_output_produc_a_b[6][5] [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][5] [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][5] [5]),
        .O(sdata_tx_out_i_150_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_151
       (.I0(\syst_output_produc_a_b[3][2] [5]),
        .I1(\syst_output_produc_a_b[2][2] [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][2] [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][2] [5]),
        .O(sdata_tx_out_i_151_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_152
       (.I0(\syst_output_produc_a_b[7][2] [5]),
        .I1(\syst_output_produc_a_b[6][2] [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][2] [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][2] [5]),
        .O(sdata_tx_out_i_152_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_153
       (.I0(\syst_output_produc_a_b[3][3] [5]),
        .I1(\syst_output_produc_a_b[2][3] [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][3] [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][3] [5]),
        .O(sdata_tx_out_i_153_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_154
       (.I0(\syst_output_produc_a_b[7][3] [5]),
        .I1(\syst_output_produc_a_b[6][3] [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][3] [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][3] [5]),
        .O(sdata_tx_out_i_154_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_155
       (.I0(\syst_output_produc_a_b[3][0] [5]),
        .I1(\syst_output_produc_a_b[2][0] [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][0] [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][0] [5]),
        .O(sdata_tx_out_i_155_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_156
       (.I0(\syst_output_produc_a_b[7][0] [5]),
        .I1(\syst_output_produc_a_b[6][0] [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][0] [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][0] [5]),
        .O(sdata_tx_out_i_156_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_157
       (.I0(\syst_output_produc_a_b[3][1] [5]),
        .I1(\syst_output_produc_a_b[2][1] [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][1] [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][1] [5]),
        .O(sdata_tx_out_i_157_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_158
       (.I0(\syst_output_produc_a_b[7][1] [5]),
        .I1(\syst_output_produc_a_b[6][1] [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][1] [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][1] [5]),
        .O(sdata_tx_out_i_158_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_159
       (.I0(\syst_output_produc_a_b[3][6] [4]),
        .I1(\syst_output_produc_a_b[2][6] [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][6] [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][6] [4]),
        .O(sdata_tx_out_i_159_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_160
       (.I0(\syst_output_produc_a_b[7][6] [4]),
        .I1(\syst_output_produc_a_b[6][6] [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][6] [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][6] [4]),
        .O(sdata_tx_out_i_160_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_161
       (.I0(\syst_output_produc_a_b[3][7] [4]),
        .I1(\syst_output_produc_a_b[2][7] [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][7] [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][7] [4]),
        .O(sdata_tx_out_i_161_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_162
       (.I0(\syst_output_produc_a_b[7][7] [4]),
        .I1(\syst_output_produc_a_b[6][7] [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][7] [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][7] [4]),
        .O(sdata_tx_out_i_162_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_163
       (.I0(\syst_output_produc_a_b[3][4] [4]),
        .I1(\syst_output_produc_a_b[2][4] [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][4] [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][4] [4]),
        .O(sdata_tx_out_i_163_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_164
       (.I0(\syst_output_produc_a_b[7][4] [4]),
        .I1(\syst_output_produc_a_b[6][4] [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][4] [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][4] [4]),
        .O(sdata_tx_out_i_164_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_165
       (.I0(\syst_output_produc_a_b[3][5] [4]),
        .I1(\syst_output_produc_a_b[2][5] [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][5] [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][5] [4]),
        .O(sdata_tx_out_i_165_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_166
       (.I0(\syst_output_produc_a_b[7][5] [4]),
        .I1(\syst_output_produc_a_b[6][5] [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][5] [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][5] [4]),
        .O(sdata_tx_out_i_166_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_167
       (.I0(\syst_output_produc_a_b[3][2] [4]),
        .I1(\syst_output_produc_a_b[2][2] [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][2] [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][2] [4]),
        .O(sdata_tx_out_i_167_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_168
       (.I0(\syst_output_produc_a_b[7][2] [4]),
        .I1(\syst_output_produc_a_b[6][2] [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][2] [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][2] [4]),
        .O(sdata_tx_out_i_168_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_169
       (.I0(\syst_output_produc_a_b[3][3] [4]),
        .I1(\syst_output_produc_a_b[2][3] [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][3] [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][3] [4]),
        .O(sdata_tx_out_i_169_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_170
       (.I0(\syst_output_produc_a_b[7][3] [4]),
        .I1(\syst_output_produc_a_b[6][3] [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][3] [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][3] [4]),
        .O(sdata_tx_out_i_170_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_171
       (.I0(\syst_output_produc_a_b[3][0] [4]),
        .I1(\syst_output_produc_a_b[2][0] [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][0] [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][0] [4]),
        .O(sdata_tx_out_i_171_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_172
       (.I0(\syst_output_produc_a_b[7][0] [4]),
        .I1(\syst_output_produc_a_b[6][0] [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][0] [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][0] [4]),
        .O(sdata_tx_out_i_172_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_173
       (.I0(\syst_output_produc_a_b[3][1] [4]),
        .I1(\syst_output_produc_a_b[2][1] [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][1] [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][1] [4]),
        .O(sdata_tx_out_i_173_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_174
       (.I0(\syst_output_produc_a_b[7][1] [4]),
        .I1(\syst_output_produc_a_b[6][1] [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][1] [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][1] [4]),
        .O(sdata_tx_out_i_174_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_175
       (.I0(\syst_output_produc_a_b[3][6] [3]),
        .I1(\syst_output_produc_a_b[2][6] [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][6] [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][6] [3]),
        .O(sdata_tx_out_i_175_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_176
       (.I0(\syst_output_produc_a_b[7][6] [3]),
        .I1(\syst_output_produc_a_b[6][6] [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][6] [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][6] [3]),
        .O(sdata_tx_out_i_176_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_177
       (.I0(\syst_output_produc_a_b[3][7] [3]),
        .I1(\syst_output_produc_a_b[2][7] [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][7] [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][7] [3]),
        .O(sdata_tx_out_i_177_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_178
       (.I0(\syst_output_produc_a_b[7][7] [3]),
        .I1(\syst_output_produc_a_b[6][7] [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][7] [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][7] [3]),
        .O(sdata_tx_out_i_178_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_179
       (.I0(\syst_output_produc_a_b[3][4] [3]),
        .I1(\syst_output_produc_a_b[2][4] [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][4] [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][4] [3]),
        .O(sdata_tx_out_i_179_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_180
       (.I0(\syst_output_produc_a_b[7][4] [3]),
        .I1(\syst_output_produc_a_b[6][4] [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][4] [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][4] [3]),
        .O(sdata_tx_out_i_180_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_181
       (.I0(\syst_output_produc_a_b[3][5] [3]),
        .I1(\syst_output_produc_a_b[2][5] [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][5] [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][5] [3]),
        .O(sdata_tx_out_i_181_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_182
       (.I0(\syst_output_produc_a_b[7][5] [3]),
        .I1(\syst_output_produc_a_b[6][5] [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][5] [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][5] [3]),
        .O(sdata_tx_out_i_182_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_183
       (.I0(\syst_output_produc_a_b[3][2] [3]),
        .I1(\syst_output_produc_a_b[2][2] [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][2] [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][2] [3]),
        .O(sdata_tx_out_i_183_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_184
       (.I0(\syst_output_produc_a_b[7][2] [3]),
        .I1(\syst_output_produc_a_b[6][2] [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][2] [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][2] [3]),
        .O(sdata_tx_out_i_184_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_185
       (.I0(\syst_output_produc_a_b[3][3] [3]),
        .I1(\syst_output_produc_a_b[2][3] [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][3] [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][3] [3]),
        .O(sdata_tx_out_i_185_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_186
       (.I0(\syst_output_produc_a_b[7][3] [3]),
        .I1(\syst_output_produc_a_b[6][3] [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][3] [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][3] [3]),
        .O(sdata_tx_out_i_186_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_187
       (.I0(\syst_output_produc_a_b[3][0] [3]),
        .I1(\syst_output_produc_a_b[2][0] [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][0] [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][0] [3]),
        .O(sdata_tx_out_i_187_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_188
       (.I0(\syst_output_produc_a_b[7][0] [3]),
        .I1(\syst_output_produc_a_b[6][0] [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][0] [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][0] [3]),
        .O(sdata_tx_out_i_188_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_189
       (.I0(\syst_output_produc_a_b[3][1] [3]),
        .I1(\syst_output_produc_a_b[2][1] [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][1] [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][1] [3]),
        .O(sdata_tx_out_i_189_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_190
       (.I0(\syst_output_produc_a_b[7][1] [3]),
        .I1(\syst_output_produc_a_b[6][1] [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][1] [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][1] [3]),
        .O(sdata_tx_out_i_190_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_191
       (.I0(\syst_output_produc_a_b[3][6] [2]),
        .I1(\syst_output_produc_a_b[2][6] [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][6] [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][6] [2]),
        .O(sdata_tx_out_i_191_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_192
       (.I0(\syst_output_produc_a_b[7][6] [2]),
        .I1(\syst_output_produc_a_b[6][6] [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][6] [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][6] [2]),
        .O(sdata_tx_out_i_192_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_193
       (.I0(\syst_output_produc_a_b[3][7] [2]),
        .I1(\syst_output_produc_a_b[2][7] [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][7] [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][7] [2]),
        .O(sdata_tx_out_i_193_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_194
       (.I0(\syst_output_produc_a_b[7][7] [2]),
        .I1(\syst_output_produc_a_b[6][7] [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][7] [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][7] [2]),
        .O(sdata_tx_out_i_194_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_195
       (.I0(\syst_output_produc_a_b[3][4] [2]),
        .I1(\syst_output_produc_a_b[2][4] [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][4] [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][4] [2]),
        .O(sdata_tx_out_i_195_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_196
       (.I0(\syst_output_produc_a_b[7][4] [2]),
        .I1(\syst_output_produc_a_b[6][4] [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][4] [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][4] [2]),
        .O(sdata_tx_out_i_196_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_197
       (.I0(\syst_output_produc_a_b[3][5] [2]),
        .I1(\syst_output_produc_a_b[2][5] [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][5] [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][5] [2]),
        .O(sdata_tx_out_i_197_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_198
       (.I0(\syst_output_produc_a_b[7][5] [2]),
        .I1(\syst_output_produc_a_b[6][5] [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][5] [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][5] [2]),
        .O(sdata_tx_out_i_198_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_199
       (.I0(\syst_output_produc_a_b[3][2] [2]),
        .I1(\syst_output_produc_a_b[2][2] [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][2] [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][2] [2]),
        .O(sdata_tx_out_i_199_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_200
       (.I0(\syst_output_produc_a_b[7][2] [2]),
        .I1(\syst_output_produc_a_b[6][2] [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][2] [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][2] [2]),
        .O(sdata_tx_out_i_200_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_201
       (.I0(\syst_output_produc_a_b[3][3] [2]),
        .I1(\syst_output_produc_a_b[2][3] [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][3] [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][3] [2]),
        .O(sdata_tx_out_i_201_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_202
       (.I0(\syst_output_produc_a_b[7][3] [2]),
        .I1(\syst_output_produc_a_b[6][3] [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][3] [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][3] [2]),
        .O(sdata_tx_out_i_202_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_203
       (.I0(\syst_output_produc_a_b[3][0] [2]),
        .I1(\syst_output_produc_a_b[2][0] [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][0] [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][0] [2]),
        .O(sdata_tx_out_i_203_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_204
       (.I0(\syst_output_produc_a_b[7][0] [2]),
        .I1(\syst_output_produc_a_b[6][0] [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][0] [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][0] [2]),
        .O(sdata_tx_out_i_204_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_205
       (.I0(\syst_output_produc_a_b[3][1] [2]),
        .I1(\syst_output_produc_a_b[2][1] [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][1] [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][1] [2]),
        .O(sdata_tx_out_i_205_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_206
       (.I0(\syst_output_produc_a_b[7][1] [2]),
        .I1(\syst_output_produc_a_b[6][1] [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][1] [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][1] [2]),
        .O(sdata_tx_out_i_206_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_207
       (.I0(\syst_output_produc_a_b[3][6] [1]),
        .I1(\syst_output_produc_a_b[2][6] [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][6] [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][6] [1]),
        .O(sdata_tx_out_i_207_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_208
       (.I0(\syst_output_produc_a_b[7][6] [1]),
        .I1(\syst_output_produc_a_b[6][6] [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][6] [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][6] [1]),
        .O(sdata_tx_out_i_208_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_209
       (.I0(\syst_output_produc_a_b[3][7] [1]),
        .I1(\syst_output_produc_a_b[2][7] [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][7] [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][7] [1]),
        .O(sdata_tx_out_i_209_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_210
       (.I0(\syst_output_produc_a_b[7][7] [1]),
        .I1(\syst_output_produc_a_b[6][7] [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][7] [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][7] [1]),
        .O(sdata_tx_out_i_210_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_211
       (.I0(\syst_output_produc_a_b[3][4] [1]),
        .I1(\syst_output_produc_a_b[2][4] [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][4] [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][4] [1]),
        .O(sdata_tx_out_i_211_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_212
       (.I0(\syst_output_produc_a_b[7][4] [1]),
        .I1(\syst_output_produc_a_b[6][4] [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][4] [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][4] [1]),
        .O(sdata_tx_out_i_212_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_213
       (.I0(\syst_output_produc_a_b[3][5] [1]),
        .I1(\syst_output_produc_a_b[2][5] [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][5] [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][5] [1]),
        .O(sdata_tx_out_i_213_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_214
       (.I0(\syst_output_produc_a_b[7][5] [1]),
        .I1(\syst_output_produc_a_b[6][5] [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][5] [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][5] [1]),
        .O(sdata_tx_out_i_214_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_215
       (.I0(\syst_output_produc_a_b[3][2] [1]),
        .I1(\syst_output_produc_a_b[2][2] [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][2] [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][2] [1]),
        .O(sdata_tx_out_i_215_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_216
       (.I0(\syst_output_produc_a_b[7][2] [1]),
        .I1(\syst_output_produc_a_b[6][2] [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][2] [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][2] [1]),
        .O(sdata_tx_out_i_216_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_217
       (.I0(\syst_output_produc_a_b[3][3] [1]),
        .I1(\syst_output_produc_a_b[2][3] [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][3] [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][3] [1]),
        .O(sdata_tx_out_i_217_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_218
       (.I0(\syst_output_produc_a_b[7][3] [1]),
        .I1(\syst_output_produc_a_b[6][3] [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][3] [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][3] [1]),
        .O(sdata_tx_out_i_218_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_219
       (.I0(\syst_output_produc_a_b[3][0] [1]),
        .I1(\syst_output_produc_a_b[2][0] [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][0] [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][0] [1]),
        .O(sdata_tx_out_i_219_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_220
       (.I0(\syst_output_produc_a_b[7][0] [1]),
        .I1(\syst_output_produc_a_b[6][0] [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][0] [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][0] [1]),
        .O(sdata_tx_out_i_220_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_221
       (.I0(\syst_output_produc_a_b[3][1] [1]),
        .I1(\syst_output_produc_a_b[2][1] [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][1] [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][1] [1]),
        .O(sdata_tx_out_i_221_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_222
       (.I0(\syst_output_produc_a_b[7][1] [1]),
        .I1(\syst_output_produc_a_b[6][1] [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][1] [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][1] [1]),
        .O(sdata_tx_out_i_222_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_223
       (.I0(\syst_output_produc_a_b[3][6] [0]),
        .I1(\syst_output_produc_a_b[2][6] [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][6] [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][6] [0]),
        .O(sdata_tx_out_i_223_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_224
       (.I0(\syst_output_produc_a_b[7][6] [0]),
        .I1(\syst_output_produc_a_b[6][6] [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][6] [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][6] [0]),
        .O(sdata_tx_out_i_224_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_225
       (.I0(\syst_output_produc_a_b[3][7] [0]),
        .I1(\syst_output_produc_a_b[2][7] [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][7] [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][7] [0]),
        .O(sdata_tx_out_i_225_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_226
       (.I0(\syst_output_produc_a_b[7][7] [0]),
        .I1(\syst_output_produc_a_b[6][7] [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][7] [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][7] [0]),
        .O(sdata_tx_out_i_226_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_227
       (.I0(\syst_output_produc_a_b[3][4] [0]),
        .I1(\syst_output_produc_a_b[2][4] [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][4] [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][4] [0]),
        .O(sdata_tx_out_i_227_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_228
       (.I0(\syst_output_produc_a_b[7][4] [0]),
        .I1(\syst_output_produc_a_b[6][4] [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][4] [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][4] [0]),
        .O(sdata_tx_out_i_228_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_229
       (.I0(\syst_output_produc_a_b[3][5] [0]),
        .I1(\syst_output_produc_a_b[2][5] [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][5] [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][5] [0]),
        .O(sdata_tx_out_i_229_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_230
       (.I0(\syst_output_produc_a_b[7][5] [0]),
        .I1(\syst_output_produc_a_b[6][5] [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][5] [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][5] [0]),
        .O(sdata_tx_out_i_230_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_231
       (.I0(\syst_output_produc_a_b[3][2] [0]),
        .I1(\syst_output_produc_a_b[2][2] [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][2] [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][2] [0]),
        .O(sdata_tx_out_i_231_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_232
       (.I0(\syst_output_produc_a_b[7][2] [0]),
        .I1(\syst_output_produc_a_b[6][2] [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][2] [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][2] [0]),
        .O(sdata_tx_out_i_232_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_233
       (.I0(\syst_output_produc_a_b[3][3] [0]),
        .I1(\syst_output_produc_a_b[2][3] [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][3] [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][3] [0]),
        .O(sdata_tx_out_i_233_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_234
       (.I0(\syst_output_produc_a_b[7][3] [0]),
        .I1(\syst_output_produc_a_b[6][3] [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][3] [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][3] [0]),
        .O(sdata_tx_out_i_234_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_235
       (.I0(\syst_output_produc_a_b[3][0] [0]),
        .I1(\syst_output_produc_a_b[2][0] [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][0] [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][0] [0]),
        .O(sdata_tx_out_i_235_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_236
       (.I0(\syst_output_produc_a_b[7][0] [0]),
        .I1(\syst_output_produc_a_b[6][0] [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][0] [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][0] [0]),
        .O(sdata_tx_out_i_236_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_237
       (.I0(\syst_output_produc_a_b[3][1] [0]),
        .I1(\syst_output_produc_a_b[2][1] [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][1] [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][1] [0]),
        .O(sdata_tx_out_i_237_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_238
       (.I0(\syst_output_produc_a_b[7][1] [0]),
        .I1(\syst_output_produc_a_b[6][1] [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][1] [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][1] [0]),
        .O(sdata_tx_out_i_238_n_0));
  LUT6 #(
    .INIT(64'hB8BB0000B8880000)) 
    sdata_tx_out_i_3
       (.I0(uart_data_tx_in[7]),
        .I1(Q[1]),
        .I2(uart_data_tx_in[6]),
        .I3(Q[0]),
        .I4(mem2serial_valid_i),
        .I5(uart_data_tx_in[5]),
        .O(\px_bit_reg[1] ));
  LUT4 #(
    .INIT(16'hB080)) 
    sdata_tx_out_i_4
       (.I0(uart_data_tx_in[4]),
        .I1(Q[0]),
        .I2(mem2serial_valid_i),
        .I3(uart_data_tx_in[3]),
        .O(\px_bit_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    sdata_tx_out_i_5
       (.I0(uart_data_tx_in[2]),
        .I1(Q[0]),
        .I2(mem2serial_valid_i),
        .I3(uart_data_tx_in[1]),
        .O(\px_bit_reg[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_7
       (.I0(sdata_tx_out_reg_i_15_n_0),
        .I1(sdata_tx_out_reg_i_16_n_0),
        .I2(sdata_tx_out_i_3_0[2]),
        .I3(sdata_tx_out_reg_i_17_n_0),
        .I4(sdata_tx_out_i_3_0[1]),
        .I5(sdata_tx_out_reg_i_18_n_0),
        .O(uart_data_tx_in[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_8
       (.I0(sdata_tx_out_reg_i_19_n_0),
        .I1(sdata_tx_out_reg_i_20_n_0),
        .I2(sdata_tx_out_i_3_0[2]),
        .I3(sdata_tx_out_reg_i_21_n_0),
        .I4(sdata_tx_out_i_3_0[1]),
        .I5(sdata_tx_out_reg_i_22_n_0),
        .O(uart_data_tx_in[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_9
       (.I0(sdata_tx_out_reg_i_23_n_0),
        .I1(sdata_tx_out_reg_i_24_n_0),
        .I2(sdata_tx_out_i_3_0[2]),
        .I3(sdata_tx_out_reg_i_25_n_0),
        .I4(sdata_tx_out_i_3_0[1]),
        .I5(sdata_tx_out_reg_i_26_n_0),
        .O(uart_data_tx_in[5]));
  MUXF7 sdata_tx_out_reg_i_100
       (.I0(sdata_tx_out_i_217_n_0),
        .I1(sdata_tx_out_i_218_n_0),
        .O(sdata_tx_out_reg_i_100_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_101
       (.I0(sdata_tx_out_i_219_n_0),
        .I1(sdata_tx_out_i_220_n_0),
        .O(sdata_tx_out_reg_i_101_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_102
       (.I0(sdata_tx_out_i_221_n_0),
        .I1(sdata_tx_out_i_222_n_0),
        .O(sdata_tx_out_reg_i_102_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_103
       (.I0(sdata_tx_out_i_223_n_0),
        .I1(sdata_tx_out_i_224_n_0),
        .O(sdata_tx_out_reg_i_103_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_104
       (.I0(sdata_tx_out_i_225_n_0),
        .I1(sdata_tx_out_i_226_n_0),
        .O(\mem2serial_transfer_pc/pmatrix_in__55 [0]),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_105
       (.I0(sdata_tx_out_i_227_n_0),
        .I1(sdata_tx_out_i_228_n_0),
        .O(sdata_tx_out_reg_i_105_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_106
       (.I0(sdata_tx_out_i_229_n_0),
        .I1(sdata_tx_out_i_230_n_0),
        .O(sdata_tx_out_reg_i_106_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_107
       (.I0(sdata_tx_out_i_231_n_0),
        .I1(sdata_tx_out_i_232_n_0),
        .O(sdata_tx_out_reg_i_107_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_108
       (.I0(sdata_tx_out_i_233_n_0),
        .I1(sdata_tx_out_i_234_n_0),
        .O(sdata_tx_out_reg_i_108_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_109
       (.I0(sdata_tx_out_i_235_n_0),
        .I1(sdata_tx_out_i_236_n_0),
        .O(sdata_tx_out_reg_i_109_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_110
       (.I0(sdata_tx_out_i_237_n_0),
        .I1(sdata_tx_out_i_238_n_0),
        .O(sdata_tx_out_reg_i_110_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF8 sdata_tx_out_reg_i_15
       (.I0(sdata_tx_out_reg_i_47_n_0),
        .I1(\mem2serial_transfer_pc/pmatrix_in__55 [7]),
        .O(sdata_tx_out_reg_i_15_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_16
       (.I0(sdata_tx_out_reg_i_49_n_0),
        .I1(sdata_tx_out_reg_i_50_n_0),
        .O(sdata_tx_out_reg_i_16_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_17
       (.I0(sdata_tx_out_reg_i_51_n_0),
        .I1(sdata_tx_out_reg_i_52_n_0),
        .O(sdata_tx_out_reg_i_17_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_18
       (.I0(sdata_tx_out_reg_i_53_n_0),
        .I1(sdata_tx_out_reg_i_54_n_0),
        .O(sdata_tx_out_reg_i_18_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_19
       (.I0(sdata_tx_out_reg_i_55_n_0),
        .I1(\mem2serial_transfer_pc/pmatrix_in__55 [6]),
        .O(sdata_tx_out_reg_i_19_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_20
       (.I0(sdata_tx_out_reg_i_57_n_0),
        .I1(sdata_tx_out_reg_i_58_n_0),
        .O(sdata_tx_out_reg_i_20_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_21
       (.I0(sdata_tx_out_reg_i_59_n_0),
        .I1(sdata_tx_out_reg_i_60_n_0),
        .O(sdata_tx_out_reg_i_21_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_22
       (.I0(sdata_tx_out_reg_i_61_n_0),
        .I1(sdata_tx_out_reg_i_62_n_0),
        .O(sdata_tx_out_reg_i_22_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_23
       (.I0(sdata_tx_out_reg_i_63_n_0),
        .I1(\mem2serial_transfer_pc/pmatrix_in__55 [5]),
        .O(sdata_tx_out_reg_i_23_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_24
       (.I0(sdata_tx_out_reg_i_65_n_0),
        .I1(sdata_tx_out_reg_i_66_n_0),
        .O(sdata_tx_out_reg_i_24_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_25
       (.I0(sdata_tx_out_reg_i_67_n_0),
        .I1(sdata_tx_out_reg_i_68_n_0),
        .O(sdata_tx_out_reg_i_25_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_26
       (.I0(sdata_tx_out_reg_i_69_n_0),
        .I1(sdata_tx_out_reg_i_70_n_0),
        .O(sdata_tx_out_reg_i_26_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_27
       (.I0(sdata_tx_out_reg_i_71_n_0),
        .I1(\mem2serial_transfer_pc/pmatrix_in__55 [4]),
        .O(sdata_tx_out_reg_i_27_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_28
       (.I0(sdata_tx_out_reg_i_73_n_0),
        .I1(sdata_tx_out_reg_i_74_n_0),
        .O(sdata_tx_out_reg_i_28_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_29
       (.I0(sdata_tx_out_reg_i_75_n_0),
        .I1(sdata_tx_out_reg_i_76_n_0),
        .O(sdata_tx_out_reg_i_29_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_30
       (.I0(sdata_tx_out_reg_i_77_n_0),
        .I1(sdata_tx_out_reg_i_78_n_0),
        .O(sdata_tx_out_reg_i_30_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_31
       (.I0(sdata_tx_out_reg_i_79_n_0),
        .I1(\mem2serial_transfer_pc/pmatrix_in__55 [3]),
        .O(sdata_tx_out_reg_i_31_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_32
       (.I0(sdata_tx_out_reg_i_81_n_0),
        .I1(sdata_tx_out_reg_i_82_n_0),
        .O(sdata_tx_out_reg_i_32_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_33
       (.I0(sdata_tx_out_reg_i_83_n_0),
        .I1(sdata_tx_out_reg_i_84_n_0),
        .O(sdata_tx_out_reg_i_33_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_34
       (.I0(sdata_tx_out_reg_i_85_n_0),
        .I1(sdata_tx_out_reg_i_86_n_0),
        .O(sdata_tx_out_reg_i_34_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_35
       (.I0(sdata_tx_out_reg_i_87_n_0),
        .I1(\mem2serial_transfer_pc/pmatrix_in__55 [2]),
        .O(sdata_tx_out_reg_i_35_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_36
       (.I0(sdata_tx_out_reg_i_89_n_0),
        .I1(sdata_tx_out_reg_i_90_n_0),
        .O(sdata_tx_out_reg_i_36_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_37
       (.I0(sdata_tx_out_reg_i_91_n_0),
        .I1(sdata_tx_out_reg_i_92_n_0),
        .O(sdata_tx_out_reg_i_37_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_38
       (.I0(sdata_tx_out_reg_i_93_n_0),
        .I1(sdata_tx_out_reg_i_94_n_0),
        .O(sdata_tx_out_reg_i_38_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_39
       (.I0(sdata_tx_out_reg_i_95_n_0),
        .I1(\mem2serial_transfer_pc/pmatrix_in__55 [1]),
        .O(sdata_tx_out_reg_i_39_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_40
       (.I0(sdata_tx_out_reg_i_97_n_0),
        .I1(sdata_tx_out_reg_i_98_n_0),
        .O(sdata_tx_out_reg_i_40_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_41
       (.I0(sdata_tx_out_reg_i_99_n_0),
        .I1(sdata_tx_out_reg_i_100_n_0),
        .O(sdata_tx_out_reg_i_41_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_42
       (.I0(sdata_tx_out_reg_i_101_n_0),
        .I1(sdata_tx_out_reg_i_102_n_0),
        .O(sdata_tx_out_reg_i_42_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_43
       (.I0(sdata_tx_out_reg_i_103_n_0),
        .I1(\mem2serial_transfer_pc/pmatrix_in__55 [0]),
        .O(sdata_tx_out_reg_i_43_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_44
       (.I0(sdata_tx_out_reg_i_105_n_0),
        .I1(sdata_tx_out_reg_i_106_n_0),
        .O(sdata_tx_out_reg_i_44_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_45
       (.I0(sdata_tx_out_reg_i_107_n_0),
        .I1(sdata_tx_out_reg_i_108_n_0),
        .O(sdata_tx_out_reg_i_45_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF8 sdata_tx_out_reg_i_46
       (.I0(sdata_tx_out_reg_i_109_n_0),
        .I1(sdata_tx_out_reg_i_110_n_0),
        .O(sdata_tx_out_reg_i_46_n_0),
        .S(sdata_tx_out_i_3_0[0]));
  MUXF7 sdata_tx_out_reg_i_47
       (.I0(sdata_tx_out_i_111_n_0),
        .I1(sdata_tx_out_i_112_n_0),
        .O(sdata_tx_out_reg_i_47_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_48
       (.I0(sdata_tx_out_i_113_n_0),
        .I1(sdata_tx_out_i_114_n_0),
        .O(\mem2serial_transfer_pc/pmatrix_in__55 [7]),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_49
       (.I0(sdata_tx_out_i_115_n_0),
        .I1(sdata_tx_out_i_116_n_0),
        .O(sdata_tx_out_reg_i_49_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_50
       (.I0(sdata_tx_out_i_117_n_0),
        .I1(sdata_tx_out_i_118_n_0),
        .O(sdata_tx_out_reg_i_50_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_51
       (.I0(sdata_tx_out_i_119_n_0),
        .I1(sdata_tx_out_i_120_n_0),
        .O(sdata_tx_out_reg_i_51_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_52
       (.I0(sdata_tx_out_i_121_n_0),
        .I1(sdata_tx_out_i_122_n_0),
        .O(sdata_tx_out_reg_i_52_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_53
       (.I0(sdata_tx_out_i_123_n_0),
        .I1(sdata_tx_out_i_124_n_0),
        .O(sdata_tx_out_reg_i_53_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_54
       (.I0(sdata_tx_out_i_125_n_0),
        .I1(sdata_tx_out_i_126_n_0),
        .O(sdata_tx_out_reg_i_54_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_55
       (.I0(sdata_tx_out_i_127_n_0),
        .I1(sdata_tx_out_i_128_n_0),
        .O(sdata_tx_out_reg_i_55_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_56
       (.I0(sdata_tx_out_i_129_n_0),
        .I1(sdata_tx_out_i_130_n_0),
        .O(\mem2serial_transfer_pc/pmatrix_in__55 [6]),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_57
       (.I0(sdata_tx_out_i_131_n_0),
        .I1(sdata_tx_out_i_132_n_0),
        .O(sdata_tx_out_reg_i_57_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_58
       (.I0(sdata_tx_out_i_133_n_0),
        .I1(sdata_tx_out_i_134_n_0),
        .O(sdata_tx_out_reg_i_58_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_59
       (.I0(sdata_tx_out_i_135_n_0),
        .I1(sdata_tx_out_i_136_n_0),
        .O(sdata_tx_out_reg_i_59_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_60
       (.I0(sdata_tx_out_i_137_n_0),
        .I1(sdata_tx_out_i_138_n_0),
        .O(sdata_tx_out_reg_i_60_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_61
       (.I0(sdata_tx_out_i_139_n_0),
        .I1(sdata_tx_out_i_140_n_0),
        .O(sdata_tx_out_reg_i_61_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_62
       (.I0(sdata_tx_out_i_141_n_0),
        .I1(sdata_tx_out_i_142_n_0),
        .O(sdata_tx_out_reg_i_62_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_63
       (.I0(sdata_tx_out_i_143_n_0),
        .I1(sdata_tx_out_i_144_n_0),
        .O(sdata_tx_out_reg_i_63_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_64
       (.I0(sdata_tx_out_i_145_n_0),
        .I1(sdata_tx_out_i_146_n_0),
        .O(\mem2serial_transfer_pc/pmatrix_in__55 [5]),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_65
       (.I0(sdata_tx_out_i_147_n_0),
        .I1(sdata_tx_out_i_148_n_0),
        .O(sdata_tx_out_reg_i_65_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_66
       (.I0(sdata_tx_out_i_149_n_0),
        .I1(sdata_tx_out_i_150_n_0),
        .O(sdata_tx_out_reg_i_66_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_67
       (.I0(sdata_tx_out_i_151_n_0),
        .I1(sdata_tx_out_i_152_n_0),
        .O(sdata_tx_out_reg_i_67_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_68
       (.I0(sdata_tx_out_i_153_n_0),
        .I1(sdata_tx_out_i_154_n_0),
        .O(sdata_tx_out_reg_i_68_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_69
       (.I0(sdata_tx_out_i_155_n_0),
        .I1(sdata_tx_out_i_156_n_0),
        .O(sdata_tx_out_reg_i_69_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_70
       (.I0(sdata_tx_out_i_157_n_0),
        .I1(sdata_tx_out_i_158_n_0),
        .O(sdata_tx_out_reg_i_70_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_71
       (.I0(sdata_tx_out_i_159_n_0),
        .I1(sdata_tx_out_i_160_n_0),
        .O(sdata_tx_out_reg_i_71_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_72
       (.I0(sdata_tx_out_i_161_n_0),
        .I1(sdata_tx_out_i_162_n_0),
        .O(\mem2serial_transfer_pc/pmatrix_in__55 [4]),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_73
       (.I0(sdata_tx_out_i_163_n_0),
        .I1(sdata_tx_out_i_164_n_0),
        .O(sdata_tx_out_reg_i_73_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_74
       (.I0(sdata_tx_out_i_165_n_0),
        .I1(sdata_tx_out_i_166_n_0),
        .O(sdata_tx_out_reg_i_74_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_75
       (.I0(sdata_tx_out_i_167_n_0),
        .I1(sdata_tx_out_i_168_n_0),
        .O(sdata_tx_out_reg_i_75_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_76
       (.I0(sdata_tx_out_i_169_n_0),
        .I1(sdata_tx_out_i_170_n_0),
        .O(sdata_tx_out_reg_i_76_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_77
       (.I0(sdata_tx_out_i_171_n_0),
        .I1(sdata_tx_out_i_172_n_0),
        .O(sdata_tx_out_reg_i_77_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_78
       (.I0(sdata_tx_out_i_173_n_0),
        .I1(sdata_tx_out_i_174_n_0),
        .O(sdata_tx_out_reg_i_78_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_79
       (.I0(sdata_tx_out_i_175_n_0),
        .I1(sdata_tx_out_i_176_n_0),
        .O(sdata_tx_out_reg_i_79_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_80
       (.I0(sdata_tx_out_i_177_n_0),
        .I1(sdata_tx_out_i_178_n_0),
        .O(\mem2serial_transfer_pc/pmatrix_in__55 [3]),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_81
       (.I0(sdata_tx_out_i_179_n_0),
        .I1(sdata_tx_out_i_180_n_0),
        .O(sdata_tx_out_reg_i_81_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_82
       (.I0(sdata_tx_out_i_181_n_0),
        .I1(sdata_tx_out_i_182_n_0),
        .O(sdata_tx_out_reg_i_82_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_83
       (.I0(sdata_tx_out_i_183_n_0),
        .I1(sdata_tx_out_i_184_n_0),
        .O(sdata_tx_out_reg_i_83_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_84
       (.I0(sdata_tx_out_i_185_n_0),
        .I1(sdata_tx_out_i_186_n_0),
        .O(sdata_tx_out_reg_i_84_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_85
       (.I0(sdata_tx_out_i_187_n_0),
        .I1(sdata_tx_out_i_188_n_0),
        .O(sdata_tx_out_reg_i_85_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_86
       (.I0(sdata_tx_out_i_189_n_0),
        .I1(sdata_tx_out_i_190_n_0),
        .O(sdata_tx_out_reg_i_86_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_87
       (.I0(sdata_tx_out_i_191_n_0),
        .I1(sdata_tx_out_i_192_n_0),
        .O(sdata_tx_out_reg_i_87_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_88
       (.I0(sdata_tx_out_i_193_n_0),
        .I1(sdata_tx_out_i_194_n_0),
        .O(\mem2serial_transfer_pc/pmatrix_in__55 [2]),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_89
       (.I0(sdata_tx_out_i_195_n_0),
        .I1(sdata_tx_out_i_196_n_0),
        .O(sdata_tx_out_reg_i_89_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_90
       (.I0(sdata_tx_out_i_197_n_0),
        .I1(sdata_tx_out_i_198_n_0),
        .O(sdata_tx_out_reg_i_90_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_91
       (.I0(sdata_tx_out_i_199_n_0),
        .I1(sdata_tx_out_i_200_n_0),
        .O(sdata_tx_out_reg_i_91_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_92
       (.I0(sdata_tx_out_i_201_n_0),
        .I1(sdata_tx_out_i_202_n_0),
        .O(sdata_tx_out_reg_i_92_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_93
       (.I0(sdata_tx_out_i_203_n_0),
        .I1(sdata_tx_out_i_204_n_0),
        .O(sdata_tx_out_reg_i_93_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_94
       (.I0(sdata_tx_out_i_205_n_0),
        .I1(sdata_tx_out_i_206_n_0),
        .O(sdata_tx_out_reg_i_94_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_95
       (.I0(sdata_tx_out_i_207_n_0),
        .I1(sdata_tx_out_i_208_n_0),
        .O(sdata_tx_out_reg_i_95_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_96
       (.I0(sdata_tx_out_i_209_n_0),
        .I1(sdata_tx_out_i_210_n_0),
        .O(\mem2serial_transfer_pc/pmatrix_in__55 [1]),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_97
       (.I0(sdata_tx_out_i_211_n_0),
        .I1(sdata_tx_out_i_212_n_0),
        .O(sdata_tx_out_reg_i_97_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_98
       (.I0(sdata_tx_out_i_213_n_0),
        .I1(sdata_tx_out_i_214_n_0),
        .O(sdata_tx_out_reg_i_98_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
  MUXF7 sdata_tx_out_reg_i_99
       (.I0(sdata_tx_out_i_215_n_0),
        .I1(sdata_tx_out_i_216_n_0),
        .O(sdata_tx_out_reg_i_99_n_0),
        .S(sdata_tx_out_reg_i_18_0[2]));
endmodule

module uart_rx
   (mem_opb_clock,
    \data_rx_out_reg[7]_0 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    uart_txd_in_IBUF,
    clock_IBUF,
    mem_opb_rw);
  output mem_opb_clock;
  output [7:0]\data_rx_out_reg[7]_0 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input uart_txd_in_IBUF;
  input clock_IBUF;
  input mem_opb_rw;

  wire \FSM_sequential_current_fsm[0]_i_2_n_0 ;
  wire bit_start;
  wire bit_start0;
  wire [0:0]btn_IBUF;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire clock_out;
  wire [1:0]current_fsm;
  wire [7:0]\data_rx_out_reg[7]_0 ;
  wire ena;
  wire ena_next;
  wire mem_opb_clock;
  wire mem_opb_rw;
  wire [1:0]next_fsm;
  wire [0:0]next_px_bit;
  wire next_px_bit_0;
  wire [7:0]pdata_rx_out;
  wire pdata_rx_out1;
  wire \pdata_rx_out[0]_i_1_n_0 ;
  wire \pdata_rx_out[1]_i_1_n_0 ;
  wire \pdata_rx_out[2]_i_1_n_0 ;
  wire \pdata_rx_out[3]_i_1_n_0 ;
  wire \pdata_rx_out[4]_i_1_n_0 ;
  wire \pdata_rx_out[5]_i_1_n_0 ;
  wire \pdata_rx_out[6]_i_1_n_0 ;
  wire \pdata_rx_out[7]_i_1_n_0 ;
  wire \pdata_rx_out[7]_i_4_n_0 ;
  wire \pdata_rx_out[7]_i_5_n_0 ;
  wire \pdata_rx_out_reg[7]_i_3_n_0 ;
  wire [3:0]px_bit;
  wire \px_bit[1]_i_1__0_n_0 ;
  wire \px_bit[2]_i_1__0_n_0 ;
  wire \px_bit[3]_i_2_n_0 ;
  wire ready_rx_out_i_1_n_0;
  wire tmp_sdata_rx_in;
  wire uart_ready_rx_out;
  wire uart_txd_in_IBUF;

  LUT4 #(
    .INIT(16'hDFFF)) 
    \FSM_sequential_current_fsm[0]_i_2 
       (.I0(px_bit[2]),
        .I1(px_bit[3]),
        .I2(px_bit[0]),
        .I3(px_bit[1]),
        .O(\FSM_sequential_current_fsm[0]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "START:01,R_DATA:10,STOPBIT:11,IDLE:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_fsm_reg[0] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_fsm[0]),
        .Q(current_fsm[0]));
  (* FSM_ENCODED_STATES = "START:01,R_DATA:10,STOPBIT:11,IDLE:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_fsm_reg[1] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_fsm[1]),
        .Q(current_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    bit_start_i_1
       (.I0(tmp_sdata_rx_in),
        .I1(current_fsm[0]),
        .I2(current_fsm[1]),
        .I3(uart_txd_in_IBUF),
        .O(bit_start0));
  FDCE #(
    .INIT(1'b0)) 
    bit_start_reg
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(bit_start0),
        .Q(bit_start));
  baudRateGenerator boudrategenerator_inst
       (.CLK(clock_out),
        .D(next_fsm),
        .E(next_px_bit_0),
        .\FSM_sequential_current_fsm_reg[0] (\FSM_sequential_current_fsm[0]_i_2_n_0 ),
        .Q(current_fsm),
        .bit_start(bit_start),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena(ena),
        .pdata_rx_out1(pdata_rx_out1),
        .\pdata_rx_out_reg[0] (\pdata_rx_out_reg[7]_i_3_n_0 ),
        .\px_bit_reg[0] (px_bit[3]),
        .tmp_sdata_rx_in(tmp_sdata_rx_in));
  FDCE #(
    .INIT(1'b0)) 
    \data_rx_out_reg[0] 
       (.C(clock_out),
        .CE(uart_ready_rx_out),
        .CLR(btn_IBUF),
        .D(pdata_rx_out[0]),
        .Q(\data_rx_out_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_rx_out_reg[1] 
       (.C(clock_out),
        .CE(uart_ready_rx_out),
        .CLR(btn_IBUF),
        .D(pdata_rx_out[1]),
        .Q(\data_rx_out_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_rx_out_reg[2] 
       (.C(clock_out),
        .CE(uart_ready_rx_out),
        .CLR(btn_IBUF),
        .D(pdata_rx_out[2]),
        .Q(\data_rx_out_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_rx_out_reg[3] 
       (.C(clock_out),
        .CE(uart_ready_rx_out),
        .CLR(btn_IBUF),
        .D(pdata_rx_out[3]),
        .Q(\data_rx_out_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_rx_out_reg[4] 
       (.C(clock_out),
        .CE(uart_ready_rx_out),
        .CLR(btn_IBUF),
        .D(pdata_rx_out[4]),
        .Q(\data_rx_out_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_rx_out_reg[5] 
       (.C(clock_out),
        .CE(uart_ready_rx_out),
        .CLR(btn_IBUF),
        .D(pdata_rx_out[5]),
        .Q(\data_rx_out_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_rx_out_reg[6] 
       (.C(clock_out),
        .CE(uart_ready_rx_out),
        .CLR(btn_IBUF),
        .D(pdata_rx_out[6]),
        .Q(\data_rx_out_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_rx_out_reg[7] 
       (.C(clock_out),
        .CE(uart_ready_rx_out),
        .CLR(btn_IBUF),
        .D(pdata_rx_out[7]),
        .Q(\data_rx_out_reg[7]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    ena_i_1
       (.I0(current_fsm[1]),
        .I1(current_fsm[0]),
        .I2(bit_start),
        .O(ena_next));
  FDCE #(
    .INIT(1'b0)) 
    ena_reg
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(ena_next),
        .Q(ena));
  LUT3 #(
    .INIT(8'hAC)) 
    mem_opb_clock_BUFG_inst_i_1
       (.I0(clock_IBUF),
        .I1(uart_ready_rx_out),
        .I2(mem_opb_rw),
        .O(mem_opb_clock));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \pdata_rx_out[0]_i_1 
       (.I0(pdata_rx_out1),
        .I1(px_bit[3]),
        .I2(px_bit[2]),
        .I3(px_bit[0]),
        .I4(px_bit[1]),
        .I5(pdata_rx_out[0]),
        .O(\pdata_rx_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \pdata_rx_out[1]_i_1 
       (.I0(pdata_rx_out1),
        .I1(px_bit[3]),
        .I2(px_bit[2]),
        .I3(px_bit[0]),
        .I4(px_bit[1]),
        .I5(pdata_rx_out[1]),
        .O(\pdata_rx_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \pdata_rx_out[2]_i_1 
       (.I0(pdata_rx_out1),
        .I1(px_bit[3]),
        .I2(px_bit[2]),
        .I3(px_bit[1]),
        .I4(px_bit[0]),
        .I5(pdata_rx_out[2]),
        .O(\pdata_rx_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \pdata_rx_out[3]_i_1 
       (.I0(pdata_rx_out1),
        .I1(px_bit[3]),
        .I2(px_bit[2]),
        .I3(px_bit[0]),
        .I4(px_bit[1]),
        .I5(pdata_rx_out[3]),
        .O(\pdata_rx_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \pdata_rx_out[4]_i_1 
       (.I0(pdata_rx_out1),
        .I1(px_bit[2]),
        .I2(px_bit[3]),
        .I3(px_bit[0]),
        .I4(px_bit[1]),
        .I5(pdata_rx_out[4]),
        .O(\pdata_rx_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \pdata_rx_out[5]_i_1 
       (.I0(pdata_rx_out1),
        .I1(px_bit[2]),
        .I2(px_bit[3]),
        .I3(px_bit[0]),
        .I4(px_bit[1]),
        .I5(pdata_rx_out[5]),
        .O(\pdata_rx_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \pdata_rx_out[6]_i_1 
       (.I0(pdata_rx_out1),
        .I1(px_bit[2]),
        .I2(px_bit[3]),
        .I3(px_bit[1]),
        .I4(px_bit[0]),
        .I5(pdata_rx_out[6]),
        .O(\pdata_rx_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \pdata_rx_out[7]_i_1 
       (.I0(pdata_rx_out1),
        .I1(px_bit[1]),
        .I2(px_bit[0]),
        .I3(px_bit[3]),
        .I4(px_bit[2]),
        .I5(pdata_rx_out[7]),
        .O(\pdata_rx_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pdata_rx_out[7]_i_4 
       (.I0(pdata_rx_out[3]),
        .I1(pdata_rx_out[2]),
        .I2(px_bit[1]),
        .I3(pdata_rx_out[1]),
        .I4(px_bit[0]),
        .I5(pdata_rx_out[0]),
        .O(\pdata_rx_out[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pdata_rx_out[7]_i_5 
       (.I0(pdata_rx_out[7]),
        .I1(pdata_rx_out[6]),
        .I2(px_bit[1]),
        .I3(pdata_rx_out[5]),
        .I4(px_bit[0]),
        .I5(pdata_rx_out[4]),
        .O(\pdata_rx_out[7]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pdata_rx_out_reg[0] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\pdata_rx_out[0]_i_1_n_0 ),
        .Q(pdata_rx_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pdata_rx_out_reg[1] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\pdata_rx_out[1]_i_1_n_0 ),
        .Q(pdata_rx_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \pdata_rx_out_reg[2] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\pdata_rx_out[2]_i_1_n_0 ),
        .Q(pdata_rx_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \pdata_rx_out_reg[3] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\pdata_rx_out[3]_i_1_n_0 ),
        .Q(pdata_rx_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \pdata_rx_out_reg[4] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\pdata_rx_out[4]_i_1_n_0 ),
        .Q(pdata_rx_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \pdata_rx_out_reg[5] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\pdata_rx_out[5]_i_1_n_0 ),
        .Q(pdata_rx_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \pdata_rx_out_reg[6] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\pdata_rx_out[6]_i_1_n_0 ),
        .Q(pdata_rx_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \pdata_rx_out_reg[7] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\pdata_rx_out[7]_i_1_n_0 ),
        .Q(pdata_rx_out[7]));
  MUXF7 \pdata_rx_out_reg[7]_i_3 
       (.I0(\pdata_rx_out[7]_i_4_n_0 ),
        .I1(\pdata_rx_out[7]_i_5_n_0 ),
        .O(\pdata_rx_out_reg[7]_i_3_n_0 ),
        .S(px_bit[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \px_bit[0]_i_1 
       (.I0(current_fsm[1]),
        .I1(px_bit[0]),
        .O(next_px_bit));
  LUT3 #(
    .INIT(8'h28)) 
    \px_bit[1]_i_1__0 
       (.I0(current_fsm[1]),
        .I1(px_bit[1]),
        .I2(px_bit[0]),
        .O(\px_bit[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \px_bit[2]_i_1__0 
       (.I0(current_fsm[1]),
        .I1(px_bit[2]),
        .I2(px_bit[1]),
        .I3(px_bit[0]),
        .O(\px_bit[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \px_bit[3]_i_2 
       (.I0(current_fsm[1]),
        .I1(px_bit[3]),
        .I2(px_bit[2]),
        .I3(px_bit[0]),
        .I4(px_bit[1]),
        .O(\px_bit[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[0] 
       (.C(clock_out),
        .CE(next_px_bit_0),
        .CLR(btn_IBUF),
        .D(next_px_bit),
        .Q(px_bit[0]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[1] 
       (.C(clock_out),
        .CE(next_px_bit_0),
        .CLR(btn_IBUF),
        .D(\px_bit[1]_i_1__0_n_0 ),
        .Q(px_bit[1]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[2] 
       (.C(clock_out),
        .CE(next_px_bit_0),
        .CLR(btn_IBUF),
        .D(\px_bit[2]_i_1__0_n_0 ),
        .Q(px_bit[2]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[3] 
       (.C(clock_out),
        .CE(next_px_bit_0),
        .CLR(btn_IBUF),
        .D(\px_bit[3]_i_2_n_0 ),
        .Q(px_bit[3]));
  LUT2 #(
    .INIT(4'h8)) 
    ready_rx_out_i_1
       (.I0(current_fsm[0]),
        .I1(current_fsm[1]),
        .O(ready_rx_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ready_rx_out_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(ready_rx_out_i_1_n_0),
        .Q(uart_ready_rx_out),
        .R(1'b0));
  FDPE #(
    .INIT(1'b1)) 
    tmp_sdata_rx_in_reg
       (.C(clock_out),
        .CE(1'b1),
        .D(uart_txd_in_IBUF),
        .PRE(btn_IBUF),
        .Q(tmp_sdata_rx_in));
endmodule

module uart_top
   (uart_rxd_out_OBUF,
    Q,
    mem_opb_clock,
    \data_rx_out_reg[7] ,
    clock_IBUF_BUFG,
    btn_IBUF,
    uart_txd_in_IBUF,
    mem2serial_valid_i,
    sdata_tx_out_reg,
    sdata_tx_out_reg_0,
    sdata_tx_out_reg_1,
    sdata_tx_out_i_2,
    clock_IBUF,
    mem_opb_rw);
  output uart_rxd_out_OBUF;
  output [1:0]Q;
  output mem_opb_clock;
  output [7:0]\data_rx_out_reg[7] ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input uart_txd_in_IBUF;
  input mem2serial_valid_i;
  input sdata_tx_out_reg;
  input sdata_tx_out_reg_0;
  input sdata_tx_out_reg_1;
  input [0:0]sdata_tx_out_i_2;
  input clock_IBUF;
  input mem_opb_rw;

  wire [1:0]Q;
  wire [0:0]btn_IBUF;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [7:0]\data_rx_out_reg[7] ;
  wire mem2serial_valid_i;
  wire mem_opb_clock;
  wire mem_opb_rw;
  wire [0:0]sdata_tx_out_i_2;
  wire sdata_tx_out_reg;
  wire sdata_tx_out_reg_0;
  wire sdata_tx_out_reg_1;
  wire uart_rxd_out_OBUF;
  wire uart_txd_in_IBUF;

  uart_rx uart_receiver
       (.btn_IBUF(btn_IBUF),
        .clock_IBUF(clock_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\data_rx_out_reg[7]_0 (\data_rx_out_reg[7] ),
        .mem_opb_clock(mem_opb_clock),
        .mem_opb_rw(mem_opb_rw),
        .uart_txd_in_IBUF(uart_txd_in_IBUF));
  uart_tx uart_transmitter
       (.Q(Q),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .mem2serial_valid_i(mem2serial_valid_i),
        .sdata_tx_out_i_2_0(sdata_tx_out_i_2),
        .sdata_tx_out_reg_0(sdata_tx_out_reg),
        .sdata_tx_out_reg_1(sdata_tx_out_reg_0),
        .sdata_tx_out_reg_2(sdata_tx_out_reg_1),
        .uart_rxd_out_OBUF(uart_rxd_out_OBUF));
endmodule

module uart_tx
   (uart_rxd_out_OBUF,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    mem2serial_valid_i,
    sdata_tx_out_reg_0,
    sdata_tx_out_reg_1,
    sdata_tx_out_reg_2,
    sdata_tx_out_i_2_0);
  output uart_rxd_out_OBUF;
  output [1:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input mem2serial_valid_i;
  input sdata_tx_out_reg_0;
  input sdata_tx_out_reg_1;
  input sdata_tx_out_reg_2;
  input [0:0]sdata_tx_out_i_2_0;

  wire [1:0]Q;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire clock_out;
  wire mem2serial_valid_i;
  wire \px_bit[0]_i_1__0_n_0 ;
  wire \px_bit[1]_i_1_n_0 ;
  wire \px_bit[2]_i_1_n_0 ;
  wire \px_bit[3]_i_1__0_n_0 ;
  wire \px_bit[4]_i_1_n_0 ;
  wire \px_bit[5]_i_1_n_0 ;
  wire \px_bit[5]_i_2_n_0 ;
  wire \px_bit[6]_i_1_n_0 ;
  wire \px_bit[7]_i_1_n_0 ;
  wire \px_bit[7]_i_2_n_0 ;
  wire \px_bit[7]_i_3_n_0 ;
  wire \px_bit[7]_i_4_n_0 ;
  wire [7:2]px_bit_reg;
  wire [0:0]sdata_tx_out_i_2_0;
  wire sdata_tx_out_i_2_n_0;
  wire sdata_tx_out_i_6_n_0;
  wire sdata_tx_out_reg_0;
  wire sdata_tx_out_reg_1;
  wire sdata_tx_out_reg_2;
  wire sdata_tx_out_reg_i_1_n_0;
  wire uart_rxd_out_OBUF;

  baudRateGenerator__parameterized0 boudrategenerator_inst
       (.CLK(clock_out),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG));
  LUT2 #(
    .INIT(4'h1)) 
    \px_bit[0]_i_1__0 
       (.I0(Q[0]),
        .I1(\px_bit[7]_i_3_n_0 ),
        .O(\px_bit[0]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \px_bit[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\px_bit[7]_i_3_n_0 ),
        .O(\px_bit[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \px_bit[2]_i_1 
       (.I0(px_bit_reg[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\px_bit[7]_i_3_n_0 ),
        .O(\px_bit[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \px_bit[3]_i_1__0 
       (.I0(px_bit_reg[3]),
        .I1(px_bit_reg[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\px_bit[7]_i_3_n_0 ),
        .O(\px_bit[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \px_bit[4]_i_1 
       (.I0(px_bit_reg[4]),
        .I1(px_bit_reg[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(px_bit_reg[2]),
        .I5(\px_bit[7]_i_3_n_0 ),
        .O(\px_bit[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \px_bit[5]_i_1 
       (.I0(px_bit_reg[5]),
        .I1(\px_bit[5]_i_2_n_0 ),
        .I2(\px_bit[7]_i_3_n_0 ),
        .O(\px_bit[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \px_bit[5]_i_2 
       (.I0(px_bit_reg[4]),
        .I1(px_bit_reg[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(px_bit_reg[3]),
        .O(\px_bit[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \px_bit[6]_i_1 
       (.I0(px_bit_reg[6]),
        .I1(\px_bit[7]_i_2_n_0 ),
        .I2(\px_bit[7]_i_3_n_0 ),
        .O(\px_bit[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \px_bit[7]_i_1 
       (.I0(px_bit_reg[7]),
        .I1(px_bit_reg[6]),
        .I2(\px_bit[7]_i_2_n_0 ),
        .I3(\px_bit[7]_i_3_n_0 ),
        .O(\px_bit[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \px_bit[7]_i_2 
       (.I0(px_bit_reg[5]),
        .I1(px_bit_reg[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(px_bit_reg[2]),
        .I5(px_bit_reg[4]),
        .O(\px_bit[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555557555)) 
    \px_bit[7]_i_3 
       (.I0(mem2serial_valid_i),
        .I1(\px_bit[7]_i_4_n_0 ),
        .I2(Q[1]),
        .I3(px_bit_reg[3]),
        .I4(px_bit_reg[4]),
        .I5(px_bit_reg[6]),
        .O(\px_bit[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \px_bit[7]_i_4 
       (.I0(px_bit_reg[2]),
        .I1(px_bit_reg[5]),
        .I2(Q[0]),
        .I3(px_bit_reg[7]),
        .O(\px_bit[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[0] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\px_bit[0]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[1] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\px_bit[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[2] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\px_bit[2]_i_1_n_0 ),
        .Q(px_bit_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[3] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\px_bit[3]_i_1__0_n_0 ),
        .Q(px_bit_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[4] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\px_bit[4]_i_1_n_0 ),
        .Q(px_bit_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[5] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\px_bit[5]_i_1_n_0 ),
        .Q(px_bit_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[6] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\px_bit[6]_i_1_n_0 ),
        .Q(px_bit_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[7] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\px_bit[7]_i_1_n_0 ),
        .Q(px_bit_reg[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    sdata_tx_out_i_2
       (.I0(sdata_tx_out_reg_1),
        .I1(Q[1]),
        .I2(sdata_tx_out_reg_2),
        .I3(px_bit_reg[2]),
        .I4(sdata_tx_out_i_6_n_0),
        .O(sdata_tx_out_i_2_n_0));
  LUT4 #(
    .INIT(16'h8F00)) 
    sdata_tx_out_i_6
       (.I0(Q[0]),
        .I1(sdata_tx_out_i_2_0),
        .I2(Q[1]),
        .I3(mem2serial_valid_i),
        .O(sdata_tx_out_i_6_n_0));
  FDPE #(
    .INIT(1'b1)) 
    sdata_tx_out_reg
       (.C(clock_out),
        .CE(1'b1),
        .D(sdata_tx_out_reg_i_1_n_0),
        .PRE(btn_IBUF),
        .Q(uart_rxd_out_OBUF));
  MUXF7 sdata_tx_out_reg_i_1
       (.I0(sdata_tx_out_i_2_n_0),
        .I1(sdata_tx_out_reg_0),
        .O(sdata_tx_out_reg_i_1_n_0),
        .S(px_bit_reg[3]));
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
